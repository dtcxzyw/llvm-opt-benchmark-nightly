inline.NumInlined: 215
inline.NumDeleted: 124
begin_hunk_0_@i915_gem_object_runtime_pm_release_mmap_offset:drm_mm_node_allocated.exit.i
  br i1 %.in.i.i, label %bb.a, label %drm_vma_node_unmap.exit

bb.a:                                             ; preds = %drm_mm_node_allocated.exit.i
  %i.g = getelementptr i8, ptr %0, i64 40
  %.val.i = load i64, ptr %i.g, align 8
  %i.h = shl i64 %.val.i, 12
  %i.i = getelementptr i8, ptr %0, i64 48
  %.val4.i = load i64, ptr %i.i, align 8
  %i.j = shl i64 %.val4.i, 12
  tail call void @unmap_mapping_range(ptr noundef %i.d, i64 noundef %i.h, i64 noundef %i.j, i32 noundef 1) #10
  br label %drm_vma_node_unmap.exit

drm_vma_node_unmap.exit:                          ; preds = %drm_mm_node_allocated.exit.i, %bb.a
  %i.k = getelementptr i8, ptr %0, i64 616        ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 624        ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %i.o, align 8
  store volatile ptr %i.n, ptr %i.m, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %i.k, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.l, align 8
  %i.p = getelementptr i8, ptr %0, i64 608
  store i32 0, ptr %i.p, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @i915_gem_object_release_mmap_offset(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 480
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.d(ptr noundef %0) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr i8, ptr %0, i64 632        ; 4 uses
  tail call void @_raw_spin_lock(ptr noundef %i.e) #10
  %i.f = getelementptr i8, ptr %0, i64 640
  %i.g = tail call ptr @rb_first_postorder(ptr noundef %i.f) #10 ; 2 uses
  %.not27 = icmp eq ptr %i.g, null
  %i.h = getelementptr i8, ptr %i.g, i64 -208     ; 2 uses
  %.not283133 = icmp eq ptr %i.h, null
  %.not2831 = or i1 %.not27, %.not283133
  br i1 %.not2831, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %select.unfold
  %.032 = phi ptr [ %i.h, %.lr.ph ], [ %i.l, %select.unfold ] ; 5 uses
  %i.j = getelementptr i8, ptr %.032, i64 208
  %i.k = tail call ptr @rb_next_postorder(ptr noundef %i.j) #10 ; 2 uses
  %.not29 = icmp eq ptr %i.k, null
  %i.l = getelementptr i8, ptr %i.k, i64 -208     ; 2 uses
  %i.m = getelementptr i8, ptr %.032, i64 200
  %i.n = load i32, ptr %i.m, align 8
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %select.unfold, label %drm_mm_node_allocated.exit.i

drm_mm_node_allocated.exit.i:                     ; preds = %bb.d
  tail call void @_raw_spin_unlock(ptr noundef %i.e) #10
  %i.p = load ptr, ptr %i.i, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 120
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %.032, i64 168
  %i.v = load volatile i64, ptr %i.u, align 8
  %.in.i.i = trunc i64 %i.v to i1
  br i1 %.in.i.i, label %bb.e, label %drm_vma_node_unmap.exit

bb.e:                                             ; preds = %drm_mm_node_allocated.exit.i
  %i.w = getelementptr i8, ptr %.032, i64 16
  %.val.i = load i64, ptr %i.w, align 8
  %i.x = shl i64 %.val.i, 12
  %i.y = getelementptr i8, ptr %.032, i64 24
  %.val4.i = load i64, ptr %i.y, align 8
  %i.z = shl i64 %.val4.i, 12
  tail call void @unmap_mapping_range(ptr noundef %i.t, i64 noundef %i.x, i64 noundef %i.z, i32 noundef 1) #10
  br label %drm_vma_node_unmap.exit

drm_vma_node_unmap.exit:                          ; preds = %drm_mm_node_allocated.exit.i, %bb.e
  tail call void @_raw_spin_lock(ptr noundef %i.e) #10
  br label %select.unfold

select.unfold:                                    ; preds = %bb.d, %drm_vma_node_unmap.exit
  %.not2836 = icmp eq ptr %i.l, null
  %.not28 = or i1 %.not29, %.not2836
  br i1 %.not28, label %.critedge, label %bb.d, !llvm.loop !29

.critedge:                                        ; preds = %select.unfold, %bb.c
  tail call void @_raw_spin_unlock(ptr noundef %i.e) #10
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @i915_gem_dumb_mmap_offset(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 1648
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 2
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = tail call zeroext i1 @pat_enabled() #10
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %1, i64 3528
  %.val = load ptr, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %.val, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 776
  %.val8 = load i64, ptr %i.j, align 8
  %.not9 = icmp eq i64 %.val8, 0
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.b ], [ 4, %bb.a ], [ 0, %bb.c ]
  %i.k = tail call fastcc i32 @__assign_mmap_offset_handle(ptr noundef %0, i32 noundef %2, i32 noundef %.0, ptr noundef %3) #13, !srcloc !30
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.07 = phi i32 [ %i.k, %bb.d ], [ -19, %bb.c ]
  ret i32 %.07
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @__assign_mmap_offset_handle(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 5) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @__rcu_read_lock() #10
  %i.a = getelementptr i8, ptr %0, i64 80
  %i.b = zext i32 %1 to i64
  %i.c = tail call ptr @idr_find(ptr noundef %i.a, i64 noundef %i.b) #10 ; 20 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %i915_gem_object_lookup.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load volatile i32, ptr %i.c, align 4     ; 2 uses
  %.old1.not.i.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.old1.not.i.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.b, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.j, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.e = add i32 %.0.i.i.i.i.i.i, 1
  %i.f = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.c, i32 %i.e, ptr nonnull elementtype(i32) %i.c, i32 %.0.i.i.i.i.i.i) #11, !srcloc !10 ; 2 uses
  %i.g = extractvalue { i8, i32 } %i.f, 0         ; 2 uses
  %i.h = icmp ult i8 %i.g, 2
  tail call void @llvm.assume(i1 %i.h)
  %i.i = trunc nuw i8 %i.g to i1
  br i1 %i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i, !prof !11

arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i:         ; preds = %.preheader.i.i.i.i.i.i
  %i.j = extractvalue { i8, i32 } %i.f, 1         ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, !llvm.loop !12

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i:  ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i, %bb.b
  %.2.i.i.i.i.i.i = phi i32 [ 0, %bb.b ], [ %.0.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i ] ; 3 uses
  %i.l = add i32 %.2.i.i.i.i.i.i, 1
  %i.m = or i32 %i.l, %.2.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i.i.i.i.i.i, label %kref_get_unless_zero.exit.i.i, label %bb.c, !prof !11

bb.c:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.c, i32 noundef 0) #10
  br label %kref_get_unless_zero.exit.i.i

kref_get_unless_zero.exit.i.i:                    ; preds = %bb.c, %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i
  %.not5.i.i = icmp eq i32 %.2.i.i.i.i.i.i, 0
  br i1 %.not5.i.i, label %i915_gem_object_lookup.exit.thread, label %i915_gem_object_lookup.exit

i915_gem_object_lookup.exit.thread:               ; preds = %bb.a, %kref_get_unless_zero.exit.i.i
  tail call void @__rcu_read_unlock() #10
  br label %i915_gem_object_put.exit

i915_gem_object_lookup.exit:                      ; preds = %kref_get_unless_zero.exit.i.i
  tail call void @__rcu_read_unlock() #10
  %i.n = getelementptr i8, ptr %i.c, i64 248      ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %i.o, ptr noundef null) #10 ; 3 uses
  %i.q = icmp eq i32 %i.p, -114
  %spec.store.select.i.i = select i1 %i.q, i32 0, i32 %i.p
  switch i32 %spec.store.select.i.i, label %bb.q [
    i32 -35, label %bb.d
    i32 0, label %bb.f
  ]

bb.d:                                             ; preds = %i915_gem_object_lookup.exit
  %i.r = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.c, i32 1, ptr nonnull elementtype(i32) %i.c) #11, !srcloc !19 ; 3 uses
  %.not.i.i.i.i.i.i19.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i.i.i19.i.i, label %.sink.split.i.i.i.i.i.i21.i.i, label %bb.e, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.s = add i32 %i.r, 1
  %i.t = or i32 %i.s, %i.r
  %.not10.i.i.i.i.i.i20.i.i = icmp sgt i32 %i.t, -1
  br i1 %.not10.i.i.i.i.i.i20.i.i, label %i915_gem_object_lock_interruptible.exit.thread, label %.sink.split.i.i.i.i.i.i21.i.i, !prof !11

.sink.split.i.i.i.i.i.i21.i.i:                    ; preds = %bb.e, %bb.d
  %.sink.i.i.i.i.i.i22.i.i = phi i32 [ 2, %bb.d ], [ 1, %bb.e ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.c, i32 noundef %.sink.i.i.i.i.i.i22.i.i) #10
  br label %i915_gem_object_lock_interruptible.exit.thread

i915_gem_object_lock_interruptible.exit.thread:   ; preds = %bb.e, %.sink.split.i.i.i.i.i.i21.i.i
  store ptr %i.c, ptr inttoptr (i64 40 to ptr), align 8
  br label %bb.q

bb.f:                                             ; preds = %i915_gem_object_lookup.exit
  %i.u = getelementptr i8, ptr %i.c, i64 480      ; 2 uses
  %.val21.i = load ptr, ptr %i.u, align 8         ; 2 uses
  %.val21.val.i = load i32, ptr %.val21.i, align 8
  %i.v = and i32 %.val21.val.i, 16
  %.not22.i = icmp eq i32 %i.v, 0
  br i1 %.not22.i, label %bb.g, label %__assign_mmap_offset.exit

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %.val21.i, i64 56
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not20.i = icmp eq i32 %2, 4
  br i1 %.not20.i, label %bb.i, label %__assign_mmap_offset.exit

bb.i:                                             ; preds = %bb.h
  %i.y = tail call i64 %i.x(ptr noundef nonnull %i.c) #10, !inline_history !31
  store i64 %i.y, ptr %3, align 8
  br label %__assign_mmap_offset.exit

bb.j:                                             ; preds = %bb.g
  switch i32 %2, label %bb.k [
    i32 4, label %__assign_mmap_offset.exit
    i32 0, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.z = tail call zeroext i1 @i915_gem_object_has_struct_page(ptr noundef nonnull %i.c) #10
  br i1 %i.z, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = tail call zeroext i1 @i915_gem_object_has_iomem(ptr noundef nonnull %i.c) #10
  br i1 %i.aa, label %bb.m, label %__assign_mmap_offset.exit

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ab = tail call fastcc ptr @mmap_offset_attach(ptr noundef nonnull %i.c, i32 noundef range(i32 0, 5) %2, ptr noundef %0) #13, !srcloc !32 ; 3 uses
  %i.ac = icmp ugt ptr %i.ab, inttoptr (i64 -4096 to ptr)
  br i1 %i.ac, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = trunc i64 %i.ad to i32
  br label %__assign_mmap_offset.exit

bb.o:                                             ; preds = %bb.m
  %i.af = getelementptr i8, ptr %i.ab, i64 16
  %.val.i = load i64, ptr %i.af, align 8
  %i.ag = shl i64 %.val.i, 12
  store i64 %i.ag, ptr %3, align 8
  br label %__assign_mmap_offset.exit

__assign_mmap_offset.exit:                        ; preds = %bb.f, %bb.h, %bb.i, %bb.j, %bb.l, %bb.n, %bb.o
  %.0.i = phi i32 [ -19, %bb.j ], [ -19, %bb.f ], [ 0, %bb.i ], [ -19, %bb.h ], [ %i.ae, %bb.n ], [ 0, %bb.o ], [ -19, %bb.l ]
  %i.ah = load ptr, ptr %i.u, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not.i16 = icmp eq ptr %i.aj, null
  br i1 %.not.i16, label %i915_gem_object_unlock.exit, label %bb.p

bb.p:                                             ; preds = %__assign_mmap_offset.exit
  tail call void %i.aj(ptr noundef nonnull %i.c) #10, !inline_history !33
  br label %i915_gem_object_unlock.exit

i915_gem_object_unlock.exit:                      ; preds = %__assign_mmap_offset.exit, %bb.p
  %i.ak = load ptr, ptr %i.n, align 8
  tail call void @ww_mutex_unlock(ptr noundef %i.ak) #10
  br label %bb.q

bb.q:                                             ; preds = %i915_gem_object_lookup.exit, %i915_gem_object_lock_interruptible.exit.thread, %i915_gem_object_unlock.exit
  %.0 = phi i32 [ %i.p, %i915_gem_object_lookup.exit ], [ %.0.i, %i915_gem_object_unlock.exit ], [ -35, %i915_gem_object_lock_interruptible.exit.thread ] ; 3 uses
  %i.al = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.c, i32 -1, ptr nonnull elementtype(i32) %i.c) #11, !srcloc !19 ; 2 uses
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = icmp slt i32 %i.al, 1
  br i1 %i.an, label %bb.s, label %i915_gem_object_put.exit, !prof !14

bb.s:                                             ; preds = %bb.r
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.c, i32 noundef 3) #10
  br label %i915_gem_object_put.exit

bb.t:                                             ; preds = %bb.q
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !20
  tail call void @drm_gem_object_free(ptr noundef nonnull %i.c) #10
  br label %i915_gem_object_put.exit

i915_gem_object_put.exit:                         ; preds = %bb.t, %bb.s, %bb.r, %i915_gem_object_lookup.exit.thread
  %.012 = phi i32 [ -2, %i915_gem_object_lookup.exit.thread ], [ %.0, %bb.t ], [ %.0, %bb.r ], [ %.0, %bb.s ]
  ret i32 %.012
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @i915_gem_mmap_offset_ioctl(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call i32 @i915_user_extensions(ptr noundef %i.c, ptr noundef null, i32 noundef 0, ptr noundef null) #10 ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8
  switch i64 %i.f, label %bb.h [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.g
    i64 3, label %bb.e
    i64 4, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 3528
  %.val = load ptr, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %.val, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 776
  %.val14 = load i64, ptr %i.j, align 8
  %.not15 = icmp eq i64 %.val14, 0
  br i1 %.not15, label %bb.h, label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.k = tail call zeroext i1 @pat_enabled() #10
  br i1 %i.k, label %bb.g, label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.l = tail call zeroext i1 @pat_enabled() #10
  br i1 %i.l, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.b
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.b, %bb.d, %bb.c, %bb.f
  %.012 = phi i32 [ 4, %bb.f ], [ 0, %bb.c ], [ 1, %bb.d ], [ 2, %bb.b ], [ 3, %bb.e ]
  %i.m = load i32, ptr %1, align 8
  %i.n = getelementptr i8, ptr %1, i64 8
  %i.o = tail call fastcc i32 @__assign_mmap_offset_handle(ptr noundef %2, i32 noundef %i.m, i32 noundef %.012, ptr noundef %i.n) #13, !srcloc !34
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.c, %bb.a, %bb.g
  %.0 = phi i32 [ -19, %bb.d ], [ -19, %bb.e ], [ %i.o, %bb.g ], [ %i.d, %bb.a ], [ -19, %bb.c ], [ -22, %bb.b ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_user_extensions(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @i915_gem_mmap(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !annotation !35
  %i.h = call zeroext i1 @drm_dev_enter(ptr noundef %i.g, ptr noundef nonnull %i.a) #10
  br i1 %i.h, label %bb.b, label %drm_dev_is_unplugged.exit.thread

drm_dev_is_unplugged.exit.thread:                 ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.a, align 4
  call void @drm_dev_exit(i32 noundef %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @__rcu_read_lock() #10
  %i.j = getelementptr i8, ptr %i.g, i64 1488     ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8
  call void @_raw_read_lock(ptr noundef %i.k) #10
  %i.l = load ptr, ptr %i.j, align 8
  %i.m = getelementptr i8, ptr %1, i64 80
  %i.n = load i64, ptr %i.m, align 16
  %.val = load i64, ptr %1, align 64
  %i.o = getelementptr i8, ptr %1, i64 8
  %.val29 = load i64, ptr %i.o, align 8
  %i.p = sub i64 %.val29, %.val
  %i.q = lshr i64 %i.p, 12
  %i.r = call ptr @drm_vma_offset_lookup_locked(ptr noundef %i.l, i64 noundef %i.n, i64 noundef %i.q) #10 ; 7 uses
  %.not = icmp eq ptr %i.r, null                  ; 2 uses
  br i1 %.not, label %i915_gem_object_get_rcu.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = call zeroext i1 @drm_vma_node_is_allowed(ptr noundef nonnull %i.r, ptr noundef %i.c) #10
  br i1 %i.s, label %bb.d, label %i915_gem_object_get_rcu.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr i8, ptr %i.r, i64 184
  %i.u = load ptr, ptr %i.t, align 8
  %.not27 = icmp eq ptr %i.u, null
  br i1 %.not27, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %i.r, i64 192
  %i.w = load ptr, ptr %i.v, align 8              ; 6 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %i915_gem_object_get_rcu.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load volatile i32, ptr %i.w, align 4     ; 2 uses
  %.old1.not.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.old1.not.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.f, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ad, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i ], [ %i.x, %bb.f ] ; 3 uses
  %i.y = add i32 %.0.i.i.i.i.i, 1
  %i.z = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.w, i32 %i.y, ptr nonnull elementtype(i32) %i.w, i32 %.0.i.i.i.i.i) #11, !srcloc !10 ; 2 uses
  %i.aa = extractvalue { i8, i32 } %i.z, 0        ; 2 uses
  %i.ab = icmp ult i8 %i.aa, 2
  call void @llvm.assume(i1 %i.ab)
  %i.ac = trunc nuw i8 %i.aa to i1
  br i1 %i.ac, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i.i, !prof !11

arch_atomic_try_cmpxchg.exit.i.i.i.i.i:           ; preds = %.preheader.i.i.i.i.i
  %i.ad = extractvalue { i8, i32 } %i.z, 1        ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i, label %.preheader.i.i.i.i.i, !llvm.loop !12

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i:    ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i.i, %.preheader.i.i.i.i.i, %bb.f
  %.2.i.i.i.i.i = phi i32 [ 0, %bb.f ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i ], [ %.0.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.af = add i32 %.2.i.i.i.i.i, 1
  %i.ag = or i32 %i.af, %.2.i.i.i.i.i
  %.not.i.i.i.i.i = icmp sgt i32 %i.ag, -1
  br i1 %.not.i.i.i.i.i, label %kref_get_unless_zero.exit.i, label %bb.g, !prof !11

bb.g:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i
  call void @refcount_warn_saturate(ptr noundef nonnull %i.w, i32 noundef 0) #10
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %bb.g, %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i
  %.not5.i = icmp eq i32 %.2.i.i.i.i.i, 0
  %spec.select = select i1 %.not5.i, ptr null, ptr %i.w
  br label %i915_gem_object_get_rcu.exit

bb.h:                                             ; preds = %bb.d
  %i.ah = getelementptr i8, ptr %i.r, i64 -24     ; 6 uses
  %.not.i31 = icmp eq ptr %i.ah, null
  br i1 %.not.i31, label %i915_gem_object_get_rcu.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load volatile i32, ptr %i.ah, align 8   ; 2 uses
  %.old1.not.i.i.i.i.i32 = icmp eq i32 %i.ai, 0
  br i1 %.old1.not.i.i.i.i.i32, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i36, label %.preheader.i.i.i.i.i33

.preheader.i.i.i.i.i33:                           ; preds = %bb.i, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i35
  %.0.i.i.i.i.i34 = phi i32 [ %i.ao, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i35 ], [ %i.ai, %bb.i ] ; 3 uses
  %i.aj = add i32 %.0.i.i.i.i.i34, 1
  %i.ak = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.ah, i32 %i.aj, ptr nonnull elementtype(i32) %i.ah, i32 %.0.i.i.i.i.i34) #11, !srcloc !10 ; 2 uses
  %i.al = extractvalue { i8, i32 } %i.ak, 0       ; 2 uses
  %i.am = icmp ult i8 %i.al, 2
  call void @llvm.assume(i1 %i.am)
  %i.an = trunc nuw i8 %i.al to i1
  br i1 %i.an, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i36, label %arch_atomic_try_cmpxchg.exit.i.i.i.i.i35, !prof !11

arch_atomic_try_cmpxchg.exit.i.i.i.i.i35:         ; preds = %.preheader.i.i.i.i.i33
  %i.ao = extractvalue { i8, i32 } %i.ak, 1       ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i36, label %.preheader.i.i.i.i.i33, !llvm.loop !12

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i36:  ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i.i35, %.preheader.i.i.i.i.i33, %bb.i
  %.2.i.i.i.i.i37 = phi i32 [ 0, %bb.i ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i35 ], [ %.0.i.i.i.i.i34, %.preheader.i.i.i.i.i33 ] ; 3 uses
  %i.aq = add i32 %.2.i.i.i.i.i37, 1
  %i.ar = or i32 %i.aq, %.2.i.i.i.i.i37
  %.not.i.i.i.i.i38 = icmp sgt i32 %i.ar, -1
end_hunk_0
begin_hunk_1_@mmap_offset_attach:bb.a
  %i.aq = tail call i32 @drm_vma_node_allow_once(ptr noundef %.035, ptr noundef nonnull %2) #10 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.f, %bb.e
  %.037 = phi i32 [ %i.v, %bb.e ], [ %i.ab, %bb.f ]
  tail call void @kfree(ptr noundef nonnull %i.j) #10
  %i.ar = sext i32 %.037 to i64
  %i.as = inttoptr i64 %i.ar to ptr
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %insert_mmo.exit, %bb.k, %bb.l
  %.0 = phi ptr [ %.035, %insert_mmo.exit ], [ %i.as, %bb.l ], [ %.035, %bb.k ], [ inttoptr (i64 -12 to ptr), %bb.c ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_runtime_pm_put_unchecked(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @unmap_mapping_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @i915_gem_object_has_struct_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @i915_gem_object_has_iomem(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @vma_set_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @cachemode2protval(i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__vma_start_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @get_file_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @anon_inode_getfile(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_dev_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @singleton_release(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 3584     ; 2 uses
  %i.d = tail call ptr asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgq $2, $1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.c, ptr null, ptr %1, ptr elementtype(i64) %i.c) #11, !srcloc !40 ; 0 uses
  tail call void @drm_dev_put(ptr noundef %i.b) #10
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vm_open(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 32
  %i.c = getelementptr i8, ptr %i.b, i64 192
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.d, i32 1, ptr elementtype(i32) %i.d) #11, !srcloc !19 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = add i32 %i.e, 1
  %i.g = or i32 %i.f, %i.e
  %.not10.i.i.i.i.i.i = icmp sgt i32 %i.g, -1
  br i1 %.not10.i.i.i.i.i.i, label %i915_gem_object_get.exit, label %.sink.split.i.i.i.i.i.i, !prof !11

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.b, %bb.a
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %bb.a ], [ 1, %bb.b ]
  tail call void @refcount_warn_saturate(ptr noundef %i.d, i32 noundef %.sink.i.i.i.i.i.i) #10
  br label %i915_gem_object_get.exit

i915_gem_object_get.exit:                         ; preds = %bb.b, %.sink.split.i.i.i.i.i.i
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vm_close(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 32
  %i.c = getelementptr i8, ptr %i.b, i64 192
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.d, i32 -1, ptr elementtype(i32) %i.d) #11, !srcloc !19 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i32 %i.e, 1
  br i1 %i.g, label %bb.c, label %i915_gem_object_put.exit, !prof !14

bb.c:                                             ; preds = %bb.b
  tail call void @refcount_warn_saturate(ptr noundef %i.d, i32 noundef 3) #10
  br label %i915_gem_object_put.exit

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !20
  tail call void @drm_gem_object_free(ptr noundef %i.d) #10
  br label %i915_gem_object_put.exit

i915_gem_object_put.exit:                         ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 1, 257) i32 @vm_fault_cpu(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %i.b = getelementptr i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 32             ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 192
  %i.e = load ptr, ptr %i.d, align 8              ; 14 uses
  %i.f = getelementptr i8, ptr %i.e, i64 648
  %.val = load i64, ptr %i.f, align 8
  %i.g = and i64 %.val, 1024
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.a, i64 32
  %i.i = load i64, ptr %i.h, align 32
  %i.j = and i64 %i.i, 2
  %.not36 = icmp eq i64 %i.j, 0
  br i1 %.not36, label %.critedge, label %i915_error_to_vmf_fault.exit, !prof !11

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.k = getelementptr i8, ptr %i.e, i64 248      ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %i.l, ptr noundef null) #10 ; 2 uses
  %1 = icmp eq i32 %i.m, -114
  %spec.store.select.i.i = select i1 %1, i32 0, i32 %i.m
  switch i32 %spec.store.select.i.i, label %i915_error_to_vmf_fault.exit [
    i32 -35, label %bb.c
    i32 0, label %bb.e
  ]

bb.c:                                             ; preds = %.critedge
  %i.n = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e, i32 1, ptr elementtype(i32) %i.e) #11, !srcloc !19 ; 3 uses
  %.not.i.i.i.i.i.i19.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i.i19.i.i, label %.sink.split.i.i.i.i.i.i21.i.i, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.o = add i32 %i.n, 1
  %i.p = or i32 %i.o, %i.n
  %.not10.i.i.i.i.i.i20.i.i = icmp sgt i32 %i.p, -1
  br i1 %.not10.i.i.i.i.i.i20.i.i, label %i915_gem_object_lock_interruptible.exit.thread, label %.sink.split.i.i.i.i.i.i21.i.i, !prof !11

.sink.split.i.i.i.i.i.i21.i.i:                    ; preds = %bb.d, %bb.c
  %.sink.i.i.i.i.i.i22.i.i = phi i32 [ 2, %bb.c ], [ 1, %bb.d ]
  tail call void @refcount_warn_saturate(ptr noundef %i.e, i32 noundef %.sink.i.i.i.i.i.i22.i.i) #10
  br label %i915_gem_object_lock_interruptible.exit.thread

i915_gem_object_lock_interruptible.exit.thread:   ; preds = %bb.d, %.sink.split.i.i.i.i.i.i21.i.i
  store ptr %i.e, ptr inttoptr (i64 40 to ptr), align 8
  br label %i915_error_to_vmf_fault.exit

bb.e:                                             ; preds = %.critedge
  %i.q = getelementptr i8, ptr %i.e, i64 688      ; 5 uses
  %i.r = load volatile i32, ptr %i.q, align 8     ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %i915_gem_object_pin_pages.exit, label %.lr.ph.i, !prof !41

.lr.ph.i:                                         ; preds = %bb.e, %raw_atomic_try_cmpxchg.exit.i
  %.047.i = phi i32 [ %i.y, %raw_atomic_try_cmpxchg.exit.i ], [ %i.r, %bb.e ] ; 2 uses
  %i.t = add i32 %.047.i, 1
  %i.u = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.q, i32 range(i32 2, 1) %i.t, ptr elementtype(i32) %i.q, i32 %.047.i) #11, !srcloc !10 ; 2 uses
  %i.v = extractvalue { i8, i32 } %i.u, 0         ; 2 uses
  %i.w = icmp ult i8 %i.v, 2
  tail call void @llvm.assume(i1 %i.w)
  %i.x = trunc nuw i8 %i.v to i1
  br i1 %i.x, label %i915_gem_object_pin_pages.exit.thread, label %raw_atomic_try_cmpxchg.exit.i, !prof !11

raw_atomic_try_cmpxchg.exit.i:                    ; preds = %.lr.ph.i
  %i.y = extractvalue { i8, i32 } %i.u, 1         ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %i915_gem_object_pin_pages.exit, label %.lr.ph.i, !prof !42

i915_gem_object_pin_pages.exit:                   ; preds = %raw_atomic_try_cmpxchg.exit.i, %bb.e
  %i.aa = tail call i32 @__i915_gem_object_get_pages(ptr noundef %i.e) #10 ; 2 uses
  %.not29 = icmp eq i32 %i.aa, 0
  br i1 %.not29, label %i915_gem_object_pin_pages.exit.thread, label %bb.j

i915_gem_object_pin_pages.exit.thread:            ; preds = %.lr.ph.i, %i915_gem_object_pin_pages.exit
  %i.ab = tail call zeroext i1 @i915_gem_object_has_struct_page(ptr noundef %i.e) #10
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %i915_gem_object_pin_pages.exit.thread
  %i.ac = getelementptr i8, ptr %i.e, i64 720
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr i8, ptr %i.ad, i64 48
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = sub i64 %i.af, %i.ah
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %i915_gem_object_pin_pages.exit.thread
  %.026 = phi i64 [ -1, %i915_gem_object_pin_pages.exit.thread ], [ %i.ai, %bb.f ]
  %i.aj = getelementptr i8, ptr %i.a, i64 80
  %i.ak = load i64, ptr %i.aj, align 16
  %i.al = getelementptr i8, ptr %i.c, i64 16
  %.val31 = load i64, ptr %i.al, align 8
  %i.am = sub i64 %i.ak, %.val31
  %i.an = load i64, ptr %i.a, align 64            ; 2 uses
  %i.ao = getelementptr i8, ptr %i.a, i64 8
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = sub i64 %i.ap, %i.an
  %i.ar = getelementptr i8, ptr %i.e, i64 760
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call i32 @remap_io_sg(ptr noundef %i.a, i64 noundef %i.an, i64 noundef %i.aq, ptr noundef %i.at, i64 noundef %i.am, i64 noundef %.026) #10
  %i.av = getelementptr i8, ptr %i.a, i64 32
  %i.aw = load i64, ptr %i.av, align 32
  %i.ax = and i64 %i.aw, 2
  %.not30 = icmp eq i64 %i.ax, 0
  br i1 %.not30, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr i8, ptr %i.e, i64 912     ; 2 uses
  %i.az = load i8, ptr %i.ay, align 8
  %i.ba = or i8 %i.az, 4
  store i8 %i.ba, ptr %i.ay, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.q, ptr elementtype(i32) %i.q) #11, !srcloc !43
  br label %bb.j

bb.j:                                             ; preds = %i915_gem_object_pin_pages.exit, %bb.i
  %.0 = phi i32 [ %i.aa, %i915_gem_object_pin_pages.exit ], [ %i.au, %bb.i ] ; 2 uses
  %i.bb = getelementptr i8, ptr %i.e, i64 480
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr i8, ptr %i.bc, i64 80
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.be, null
  br i1 %.not.i, label %i915_gem_object_unlock.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void %i.be(ptr noundef %i.e) #10, !inline_history !33
  br label %i915_gem_object_unlock.exit

i915_gem_object_unlock.exit:                      ; preds = %bb.j, %bb.k
  %i.bf = load ptr, ptr %i.k, align 8
  tail call void @ww_mutex_unlock(ptr noundef %i.bf) #10
  switch i32 %.0, label %bb.l [
    i32 -5, label %i915_error_to_vmf_fault.exit
    i32 -14, label %i915_error_to_vmf_fault.exit
    i32 -19, label %i915_error_to_vmf_fault.exit
    i32 -6, label %i915_error_to_vmf_fault.exit
    i32 -12, label %bb.m
    i32 0, label %bb.n
    i32 -11, label %bb.n
    i32 -28, label %bb.n
    i32 -105, label %bb.n
    i32 -512, label %bb.n
    i32 -4, label %bb.n
    i32 -16, label %bb.n
  ]

bb.l:                                             ; preds = %i915_gem_object_unlock.exit
  %i.bg = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.5, ptr nonnull @.str.6, i32 226, i32 2323, i64 16) #11, !srcloc !44
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.bg, ptr noundef nonnull @__func__.i915_error_to_vmf_fault, i32 noundef %.0) #10
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !45
  br label %i915_error_to_vmf_fault.exit

bb.m:                                             ; preds = %i915_gem_object_unlock.exit
  br label %i915_error_to_vmf_fault.exit

bb.n:                                             ; preds = %i915_gem_object_unlock.exit, %i915_gem_object_unlock.exit, %i915_gem_object_unlock.exit, %i915_gem_object_unlock.exit, %i915_gem_object_unlock.exit, %i915_gem_object_unlock.exit, %i915_gem_object_unlock.exit
  br label %i915_error_to_vmf_fault.exit

i915_error_to_vmf_fault.exit:                     ; preds = %.critedge, %bb.n, %bb.m, %bb.l, %i915_gem_object_unlock.exit, %i915_gem_object_unlock.exit, %i915_gem_object_unlock.exit, %i915_gem_object_unlock.exit, %i915_gem_object_lock_interruptible.exit.thread, %bb.b
  %.027 = phi i32 [ 256, %i915_gem_object_lock_interruptible.exit.thread ], [ 2, %bb.b ], [ 256, %.critedge ], [ 256, %bb.n ], [ 1, %bb.m ], [ 2, %bb.l ], [ 2, %i915_gem_object_unlock.exit ], [ 2, %i915_gem_object_unlock.exit ], [ 2, %i915_gem_object_unlock.exit ], [ 2, %i915_gem_object_unlock.exit ]
  ret i32 %.027
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vm_access(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4) #0 align 16 prefalign(16) {
bb.a:
  %5 = alloca %struct.i915_gem_ww_ctx, align 8    ; 14 uses
  %i.a = getelementptr i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 32
  %i.c = getelementptr i8, ptr %i.b, i64 192
  %i.d = load ptr, ptr %i.c, align 8              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !annotation !35
  %i.e = getelementptr i8, ptr %i.d, i64 648
  %.val = load i64, ptr %i.e, align 8
  %i.f = and i64 %.val, 1024
  %i.g = icmp ne i64 %i.f, 0
  %i.h = icmp ne i32 %4, 0                        ; 2 uses
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %0, align 64
  %i.j = sub i64 %1, %i.i                         ; 4 uses
  %i.k = sext i32 %3 to i64                       ; 4 uses
  %i.l = getelementptr i8, ptr %i.d, i64 216
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %.not = icmp uge i64 %i.j, %i.m
  %i.n = sub nuw i64 %i.m, %i.j
  %i.o = icmp ult i64 %i.n, %i.k
  %i.p = select i1 %.not, i1 true, i1 %i.o
  br i1 %i.p, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @i915_gem_ww_ctx_init(ptr noundef nonnull %5, i1 noundef zeroext true) #10
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.r = getelementptr i8, ptr %i.d, i64 248
  %i.s = getelementptr i8, ptr %i.d, i64 544      ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.v = getelementptr i8, ptr %i.d, i64 552
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 40
  br label %bb.d

bb.d:                                             ; preds = %bb.q, %bb.c
  %i.x = load i8, ptr %i.q, align 8, !range !46, !noundef !47
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = load ptr, ptr %i.r, align 8              ; 2 uses
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = call i32 @ww_mutex_lock_interruptible(ptr noundef %i.z, ptr noundef nonnull %5) #10
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ab = call i32 @ww_mutex_lock(ptr noundef %i.z, ptr noundef nonnull %5) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.aa, %bb.e ], [ %i.ab, %bb.f ] ; 4 uses
  %6 = icmp eq i32 %.0.i.i, 0
  br i1 %6, label %bb.h, label %7

bb.h:                                             ; preds = %bb.g
  %i.ac = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.d, i32 1, ptr elementtype(i32) %i.d) #11, !srcloc !19 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %bb.i, !prof !14

bb.i:                                             ; preds = %bb.h
  %i.ad = add i32 %i.ac, 1
  %i.ae = or i32 %i.ad, %i.ac
  %.not10.i.i.i.i.i.i.i.i = icmp sgt i32 %i.ae, -1
  br i1 %.not10.i.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i.i, label %.sink.split.i.i.i.i.i.i.i.i, !prof !11

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.i, %bb.h
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.h ], [ 1, %bb.i ]
  call void @refcount_warn_saturate(ptr noundef %i.d, i32 noundef %.sink.i.i.i.i.i.i.i.i) #10
  br label %i915_gem_object_get.exit.i.i

i915_gem_object_get.exit.i.i:                     ; preds = %.sink.split.i.i.i.i.i.i.i.i, %bb.i
  %i.af = load ptr, ptr %i.u, align 8             ; 2 uses
  store ptr %i.s, ptr %i.u, align 8
  store ptr %i.t, ptr %i.s, align 8
  store ptr %i.af, ptr %i.v, align 8
  store volatile ptr %i.s, ptr %i.af, align 8
  br label %7

7:                                                ; preds = %i915_gem_object_get.exit.i.i, %bb.g
  %8 = icmp eq i32 %.0.i.i, -114
  %spec.store.select.i6.i = select i1 %8, i32 0, i32 %.0.i.i
  switch i32 %spec.store.select.i6.i, label %.thread [
    i32 -35, label %bb.j
    i32 0, label %bb.l
  ]

bb.j:                                             ; preds = %7
  %i.ag = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.d, i32 1, ptr elementtype(i32) %i.d) #11, !srcloc !19 ; 3 uses
  %.not.i.i.i.i.i.i19.i7.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i19.i7.i, label %.sink.split.i.i.i.i.i.i21.i9.i, label %bb.k, !prof !14

bb.k:                                             ; preds = %bb.j
  %i.ah = add i32 %i.ag, 1
  %i.ai = or i32 %i.ah, %i.ag
  %.not10.i.i.i.i.i.i20.i8.i = icmp sgt i32 %i.ai, -1
  br i1 %.not10.i.i.i.i.i.i20.i8.i, label %.thread51, label %.sink.split.i.i.i.i.i.i21.i9.i, !prof !11

.sink.split.i.i.i.i.i.i21.i9.i:                   ; preds = %bb.k, %bb.j
  %.sink.i.i.i.i.i.i22.i10.i = phi i32 [ 2, %bb.j ], [ 1, %bb.k ]
  call void @refcount_warn_saturate(ptr noundef %i.d, i32 noundef %.sink.i.i.i.i.i.i22.i10.i) #10
  br label %.thread51

.thread51:                                        ; preds = %.sink.split.i.i.i.i.i.i21.i9.i, %bb.k
  store ptr %i.d, ptr %i.w, align 8
  br label %bb.q

bb.l:                                             ; preds = %7
  %i.aj = call ptr @i915_gem_object_pin_map(ptr noundef %i.d, i32 noundef -2147483647) #10 ; 3 uses
  %i.ak = icmp ugt ptr %i.aj, inttoptr (i64 -4096 to ptr)
  br i1 %i.ak, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr i8, ptr %i.aj, i64 %i.j   ; 2 uses
  br i1 %i.h, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %2, i64 %i.k, i1 false)
  call void @__i915_gem_object_flush_map(ptr noundef %i.d, i64 noundef %i.j, i64 noundef %i.k) #10
  br label %.thread.thread

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %i.al, i64 %i.k, i1 false)
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.n, %bb.o
  %i.am = getelementptr i8, ptr %i.d, i64 688     ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.am, ptr elementtype(i32) %i.am) #11, !srcloc !43
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %5) #10
  br label %bb.r

bb.p:                                             ; preds = %bb.l
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = trunc i64 %i.an to i32                  ; 2 uses
  %i.ap = icmp eq i32 %i.ao, -35
  br i1 %i.ap, label %bb.q, label %.thread

bb.q:                                             ; preds = %.thread51, %bb.p
  %i.aq = call i32 @i915_gem_ww_ctx_backoff(ptr noundef nonnull %5) #10 ; 2 uses
  %.not46 = icmp eq i32 %i.aq, 0
  br i1 %.not46, label %bb.d, label %.thread.thread56

.thread.thread56:                                 ; preds = %bb.q
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %5) #10
  br label %bb.s

.thread:                                          ; preds = %7, %bb.p
  %.1 = phi i32 [ %.0.i.i, %7 ], [ %i.ao, %bb.p ]
  %.1.fr = freeze i32 %.1                         ; 2 uses
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %5) #10
  %.not47 = icmp eq i32 %.1.fr, 0
  br i1 %.not47, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.thread.thread, %.thread
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread, %.thread.thread56, %bb.b, %bb.a
  %.0 = phi i32 [ -22, %bb.b ], [ -13, %bb.a ], [ %3, %bb.r ], [ %.1.fr, %.thread ], [ %i.aq, %.thread.thread56 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @remap_io_sg(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__i915_gem_object_get_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_ww_ctx_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_gem_object_pin_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__i915_gem_object_flush_map(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_ww_ctx_backoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_ww_ctx_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 1, 257) i32 @vm_fault_gtt(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.i915_gem_ww_ctx, align 8    ; 18 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %struct.i915_gtt_view, align 4      ; 12 uses
  %i.b = load ptr, ptr %0, align 8                ; 7 uses
  %i.c = getelementptr i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 32             ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 192
  %i.f = load ptr, ptr %i.e, align 8              ; 26 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 3176     ; 4 uses
  %i.j = getelementptr i8, ptr %i.h, i64 3528     ; 4 uses
  %.val113 = load ptr, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %.val113, i64 32
  %i.l = load ptr, ptr %i.k, align 8              ; 5 uses
  %i.m = getelementptr i8, ptr %i.b, i64 32
  %i.n = load i64, ptr %i.m, align 32
  %i.o = and i64 %i.n, 2
  %i.p = icmp ne i64 %i.o, 0                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false), !annotation !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !annotation !35
  %i.q = getelementptr i8, ptr %i.b, i64 80
  %i.r = load i64, ptr %i.q, align 16
  %i.s = getelementptr i8, ptr %i.d, i64 16
  %.val115 = load i64, ptr %i.s, align 8
  %i.t = sub i64 %i.r, %.val115                   ; 3 uses
  %i.u = getelementptr i8, ptr %0, i64 24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = load i64, ptr %i.b, align 64
  %i.x = sub i64 %i.v, %i.w
  %i.y = lshr i64 %i.x, 12
  %i.z = add i64 %i.y, %i.t                       ; 3 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_gem_object_fault, i64 8), i1 false) #11
          to label %trace_i915_gem_object_fault.exit [label %cpumask_test_cpu.exit.i.i], !srcloc !21

cpumask_test_cpu.exit.i.i:                        ; preds = %bb.a
  %i.aa = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #11, !srcloc !48
  %i.ab = zext i32 %i.aa to i64
  %i.ac = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ab) #11, !srcloc !49 ; 2 uses
  %i.ad = icmp ult i8 %i.ac, 2
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = trunc nuw i8 %i.ac to i1
  br i1 %i.ae, label %bb.b, label %trace_i915_gem_object_fault.exit

bb.b:                                             ; preds = %cpumask_test_cpu.exit.i.i
  %i.af = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.af, ptr elementtype(i64) %i.af) #11, !srcloc !50
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !51
  %i.ag = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_gem_object_fault, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call i32 @__SCT__tp_func_i915_gem_object_fault(ptr noundef %i.ai, ptr noundef %i.f, i64 noundef %i.z, i1 noundef zeroext true, i1 noundef zeroext %i.p) #10 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !52
  %i.ak = getelementptr i8, ptr %i.af, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ak, ptr elementtype(i64) %i.ak) #11, !srcloc !53
  br label %trace_i915_gem_object_fault.exit

trace_i915_gem_object_fault.exit:                 ; preds = %bb.a, %cpumask_test_cpu.exit.i.i, %bb.d
  %i.al = tail call ptr @intel_runtime_pm_get(ptr noundef %i.i) #10 ; 0 uses
  call void @i915_gem_ww_ctx_init(ptr noundef nonnull %1, i1 noundef zeroext true) #10
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.an = getelementptr i8, ptr %i.f, i64 248
  %i.ao = getelementptr i8, ptr %i.f, i64 544     ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.f, i64 552
  %i.as = getelementptr i8, ptr %i.f, i64 648
  %i.at = getelementptr i8, ptr %i.f, i64 688     ; 5 uses
  %i.au = getelementptr i8, ptr %i.l, i64 296     ; 2 uses
  %i.av = getelementptr i8, ptr %i.f, i64 680
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ax = getelementptr i8, ptr %i.f, i64 216
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.az = getelementptr i8, ptr %i.l, i64 384     ; 2 uses
  %i.ba = getelementptr i8, ptr %i.h, i64 1648
  %i.bb = getelementptr i8, ptr %i.l, i64 712
  %i.bc = getelementptr i8, ptr %i.b, i64 8
  %i.bd = getelementptr i8, ptr %i.l, i64 680
  %i.be = getelementptr i8, ptr %i.f, i64 608     ; 2 uses
  %i.bf = getelementptr i8, ptr %i.f, i64 616     ; 3 uses
  %i.bg = getelementptr i8, ptr %i.f, i64 624
  %i.bh = getelementptr i8, ptr %i.h, i64 3216
  %i.bi = getelementptr i8, ptr %i.f, i64 912     ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.ap, %trace_i915_gem_object_fault.exit
  %i.bl = load i8, ptr %i.am, align 8, !range !46, !noundef !47
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = load ptr, ptr %i.an, align 8            ; 2 uses
  br i1 %i.bm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bo = call i32 @ww_mutex_lock_interruptible(ptr noundef %i.bn, ptr noundef nonnull %1) #10
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bp = call i32 @ww_mutex_lock(ptr noundef %i.bn, ptr noundef nonnull %1) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i.i = phi i32 [ %i.bo, %bb.f ], [ %i.bp, %bb.g ] ; 4 uses
  %3 = icmp eq i32 %.0.i.i, 0
  br i1 %3, label %bb.i, label %4

bb.i:                                             ; preds = %bb.h
  %i.bq = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.f, i32 1, ptr elementtype(i32) %i.f) #11, !srcloc !19 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %bb.j, !prof !14

bb.j:                                             ; preds = %bb.i
  %i.br = add i32 %i.bq, 1
  %i.bs = or i32 %i.br, %i.bq
  %.not10.i.i.i.i.i.i.i.i = icmp sgt i32 %i.bs, -1
  br i1 %.not10.i.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i.i, label %.sink.split.i.i.i.i.i.i.i.i, !prof !11

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.j, %bb.i
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.i ], [ 1, %bb.j ]
  call void @refcount_warn_saturate(ptr noundef %i.f, i32 noundef %.sink.i.i.i.i.i.i.i.i) #10
  br label %i915_gem_object_get.exit.i.i

i915_gem_object_get.exit.i.i:                     ; preds = %.sink.split.i.i.i.i.i.i.i.i, %bb.j
  %i.bt = load ptr, ptr %i.aq, align 8            ; 2 uses
  store ptr %i.ao, ptr %i.aq, align 8
  store ptr %i.ap, ptr %i.ao, align 8
  store ptr %i.bt, ptr %i.ar, align 8
  store volatile ptr %i.ao, ptr %i.bt, align 8
  br label %4

4:                                                ; preds = %i915_gem_object_get.exit.i.i, %bb.h
  %5 = icmp eq i32 %.0.i.i, -114
  %spec.store.select.i6.i = select i1 %5, i32 0, i32 %.0.i.i
  switch i32 %spec.store.select.i6.i, label %.thread140 [
    i32 -35, label %bb.k
    i32 0, label %bb.m
  ]

bb.k:                                             ; preds = %4
  %i.bu = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.f, i32 1, ptr elementtype(i32) %i.f) #11, !srcloc !19 ; 3 uses
  %.not.i.i.i.i.i.i19.i7.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i.i.i.i.i19.i7.i, label %.sink.split.i.i.i.i.i.i21.i9.i, label %bb.l, !prof !14

bb.l:                                             ; preds = %bb.k
  %i.bv = add i32 %i.bu, 1
  %i.bw = or i32 %i.bv, %i.bu
  %.not10.i.i.i.i.i.i20.i8.i = icmp sgt i32 %i.bw, -1
  br i1 %.not10.i.i.i.i.i.i20.i8.i, label %.thread142, label %.sink.split.i.i.i.i.i.i21.i9.i, !prof !11

.sink.split.i.i.i.i.i.i21.i9.i:                   ; preds = %bb.l, %bb.k
  %.sink.i.i.i.i.i.i22.i10.i = phi i32 [ 2, %bb.k ], [ 1, %bb.l ]
  call void @refcount_warn_saturate(ptr noundef %i.f, i32 noundef %.sink.i.i.i.i.i.i22.i10.i) #10
  br label %.thread142

.thread142:                                       ; preds = %.sink.split.i.i.i.i.i.i21.i9.i, %bb.l
  store ptr %i.f, ptr %i.bj, align 8
  br label %bb.ap

bb.m:                                             ; preds = %4
  %.val114 = load i64, ptr %i.as, align 8
  %i.bx = and i64 %.val114, 1024
  %i.by = icmp ne i64 %i.bx, 0
  %or.cond = select i1 %i.by, i1 %i.p, i1 false
  br i1 %or.cond, label %.thread140.thread, label %bb.n

.thread140.thread:                                ; preds = %bb.m
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %1) #10
  call void @intel_runtime_pm_put_unchecked(ptr noundef %i.i) #10
  br label %i915_error_to_vmf_fault.exit

bb.n:                                             ; preds = %bb.m
  %i.bz = load volatile i32, ptr %i.at, align 8   ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %i915_gem_object_pin_pages.exit, label %.lr.ph.i, !prof !41

.lr.ph.i:                                         ; preds = %bb.n, %raw_atomic_try_cmpxchg.exit.i
  %.047.i = phi i32 [ %i.cg, %raw_atomic_try_cmpxchg.exit.i ], [ %i.bz, %bb.n ] ; 2 uses
  %i.cb = add i32 %.047.i, 1
  %i.cc = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.at, i32 range(i32 2, 1) %i.cb, ptr elementtype(i32) %i.at, i32 %.047.i) #11, !srcloc !10 ; 2 uses
  %i.cd = extractvalue { i8, i32 } %i.cc, 0       ; 2 uses
  %i.ce = icmp ult i8 %i.cd, 2
  call void @llvm.assume(i1 %i.ce)
  %i.cf = trunc nuw i8 %i.cd to i1
  br i1 %i.cf, label %i915_gem_object_pin_pages.exit.thread, label %raw_atomic_try_cmpxchg.exit.i, !prof !11

raw_atomic_try_cmpxchg.exit.i:                    ; preds = %.lr.ph.i
  %i.cg = extractvalue { i8, i32 } %i.cc, 1       ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %i915_gem_object_pin_pages.exit, label %.lr.ph.i, !prof !42

i915_gem_object_pin_pages.exit:                   ; preds = %raw_atomic_try_cmpxchg.exit.i, %bb.n
  %i.ci = call i32 @__i915_gem_object_get_pages(ptr noundef %i.f) #10 ; 2 uses
  %.not100 = icmp eq i32 %i.ci, 0
  br i1 %.not100, label %i915_gem_object_pin_pages.exit.thread, label %bb.ao

i915_gem_object_pin_pages.exit.thread:            ; preds = %.lr.ph.i, %i915_gem_object_pin_pages.exit
  %i.cj = load ptr, ptr %i.au, align 8
  %i.ck = call i32 @intel_gt_reset_lock_interruptible(ptr noundef %i.cj, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not101 = icmp eq i32 %i.ck, 0
  br i1 %.not101, label %bb.o, label %bb.an

bb.o:                                             ; preds = %i915_gem_object_pin_pages.exit.thread
  %i.cl = call ptr @i915_gem_object_ggtt_pin_ww(ptr noundef %i.f, ptr noundef nonnull %1, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 13) #10 ; 3 uses
  %i.cm = icmp ugt ptr %i.cl, inttoptr (i64 -4096 to ptr)
  br i1 %i.cm, label %bb.p, label %bb.aa

bb.p:                                             ; preds = %bb.o
  %.not102 = icmp eq ptr %i.cl, inttoptr (i64 -35 to ptr)
  br i1 %.not102, label %.thread136, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.bk, i8 0, i64 40, i1 false)
  %.val.i = load i32, ptr %i.av, align 8, !noalias !54 ; 2 uses
  %i.cn = and i32 %.val.i, 127                    ; 2 uses
  %.not21.i = icmp eq i32 %i.cn, 0
  br i1 %.not21.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.co = and i32 %.val.i, -128
  %i.cp = icmp eq i32 %i.cn, 2
  %i.cq = select i1 %i.cp, i32 5, i32 3
  %i.cr = shl i32 %i.co, %i.cq
  %.fr22.i = freeze i32 %i.cr
  %i.cs = lshr i32 %.fr22.i, 12
  %..i = call i32 @llvm.umax.i32(i32 %i.cs, i32 1) ; 2 uses
  %i.ct = add nuw nsw i32 %..i, 255               ; 2 uses
  %i.cu = urem i32 %i.ct, %..i
  %i.cv = sub nuw nsw i32 %i.ct, %i.cu
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i116 = phi i32 [ %i.cv, %bb.r ], [ 256, %bb.q ] ; 2 uses
  store i32 12, ptr %2, align 4, !alias.scope !54
  %i.cw = zext nneg i32 %.0.i116 to i64           ; 2 uses
  %i.cx = urem i64 %i.z, %i.cw
  %i.cy = sub nuw i64 %i.z, %i.cx                 ; 2 uses
  store i64 %i.cy, ptr %i.aw, align 4, !alias.scope !54
  %i.cz = load i64, ptr %i.ax, align 8, !noalias !54
  %i.da = lshr i64 %i.cz, 12                      ; 2 uses
  %i.db = sub i64 %i.da, %i.cy
  %i.dc = trunc i64 %i.db to i32
  %i.dd = call i32 @llvm.umin.i32(i32 %.0.i116, i32 %i.dc)
  store i32 %i.dd, ptr %i.ay, align 4, !alias.scope !54
  %.not.i.not = icmp samesign ugt i64 %i.da, %i.cw
  br i1 %.not.i.not, label %compute_partial_view.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %2, align 4, !alias.scope !54
  br label %compute_partial_view.exit

compute_partial_view.exit:                        ; preds = %bb.s, %bb.t
  %spec.select = phi i32 [ 10, %bb.s ], [ 14, %bb.t ] ; 2 uses
  %i.de = zext nneg i32 %spec.select to i64
  %i.df = call ptr @i915_gem_object_ggtt_pin_ww(ptr noundef %i.f, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef 0, i64 noundef 0, i64 noundef %i.de) #10 ; 3 uses
  %i.dg = icmp ugt ptr %i.df, inttoptr (i64 -4096 to ptr)
  br i1 %i.dg, label %bb.u, label %bb.w

bb.u:                                             ; preds = %compute_partial_view.exit
  %.not103 = icmp eq ptr %i.df, inttoptr (i64 -35 to ptr)
  br i1 %.not103, label %.thread132, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 12, ptr %2, align 4
  %i.dh = call ptr @i915_gem_object_ggtt_pin_ww(ptr noundef %i.f, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef 0, i64 noundef 0, i64 noundef 8) #10
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %compute_partial_view.exit
  %.086 = phi ptr [ %i.dh, %bb.v ], [ %i.df, %compute_partial_view.exit ] ; 2 uses
  %.1 = phi i32 [ 8, %bb.v ], [ %spec.select, %compute_partial_view.exit ]
  %i.di = icmp eq ptr %.086, inttoptr (i64 -28 to ptr)
  br i1 %i.di, label %bb.x, label %.thread132

bb.x:                                             ; preds = %bb.w
  %i.dj = call i32 @mutex_lock_interruptible(ptr noundef %i.az) #10 ; 2 uses
  %.not104 = icmp eq i32 %i.dj, 0
  br i1 %.not104, label %bb.y, label %.thread129

bb.y:                                             ; preds = %bb.x
  %i.dk = call i32 @i915_gem_evict_vm(ptr noundef %i.l, ptr noundef nonnull %1, ptr noundef null) #10 ; 2 uses
  call void @mutex_unlock(ptr noundef %i.az) #10
  %.not105 = icmp eq i32 %i.dk, 0
  br i1 %.not105, label %bb.z, label %.thread129

bb.z:                                             ; preds = %bb.y
  %i.dl = zext nneg i32 %.1 to i64
  %i.dm = call ptr @i915_gem_object_ggtt_pin_ww(ptr noundef %i.f, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef 0, i64 noundef 0, i64 noundef %i.dl) #10
  br label %.thread132

.thread132:                                       ; preds = %bb.z, %bb.w, %bb.u
  %.288.ph = phi ptr [ %i.dm, %bb.z ], [ %.086, %bb.w ], [ inttoptr (i64 -35 to ptr), %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.aa

.thread129:                                       ; preds = %bb.x, %bb.y
  %.2 = phi i32 [ %i.dk, %bb.y ], [ %i.dj, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.am

bb.aa:                                            ; preds = %.thread132, %bb.o
  %.389 = phi ptr [ %.288.ph, %.thread132 ], [ %i.cl, %bb.o ] ; 12 uses
  %i.dn = icmp ugt ptr %.389, inttoptr (i64 -4096 to ptr)
  br i1 %i.dn, label %.thread136, label %bb.ab

.thread136:                                       ; preds = %bb.p, %bb.aa
  %.389138 = phi ptr [ %.389, %bb.aa ], [ inttoptr (i64 -35 to ptr), %bb.p ]
  %i.do = ptrtoint ptr %.389138 to i64
  %i.dp = trunc i64 %i.do to i32
  br label %bb.am

bb.ab:                                            ; preds = %bb.aa
  %i.dq = call zeroext i1 @i915_gem_object_has_cache_level(ptr noundef %i.f, i32 noundef 0) #10
  br i1 %i.dq, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dr = load ptr, ptr %i.ba, align 8
  %i.ds = getelementptr i8, ptr %i.dr, i64 28
  %i.dt = load i64, ptr %i.ds, align 4
  %i.du = and i64 %i.dt, 262144
  %.not106 = icmp eq i64 %i.du, 0
  br i1 %.not106, label %i915_vma_unpin_fence.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dv = call i32 @i915_vma_pin_fence(ptr noundef %.389) #10 ; 2 uses
  %.not107 = icmp eq i32 %i.dv, 0
  br i1 %.not107, label %bb.ae, label %i915_vma_unpin_fence.exit

bb.ae:                                            ; preds = %bb.ad
  %i.dw = load i64, ptr %i.bb, align 8
  %i.dx = load i64, ptr %i.b, align 64            ; 2 uses
  %i.dy = lshr i64 %i.dx, 12                      ; 2 uses
  %i.dz = load i64, ptr %i.bc, align 8
  %i.ea = lshr i64 %i.dz, 12
  %i.eb = getelementptr i8, ptr %.389, i64 224
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = lshr i64 %i.ec, 12
  %i.ee = sub i64 %i.dy, %i.t
  %i.ef = getelementptr i8, ptr %.389, i64 436
  %i.eg = load i64, ptr %i.ef, align 4            ; 2 uses
  %i.eh = add i64 %i.eg, %i.ee                    ; 2 uses
  %i.ei = add i64 %i.eh, %i.ed
  %i.ej = call i64 @llvm.smax.i64(i64 %i.eh, i64 %i.dy) ; 2 uses
  %i.ek = call i64 @llvm.smin.i64(i64 %i.ei, i64 %i.ea)
  %i.el = shl i64 %i.ej, 12                       ; 2 uses
  %i.em = getelementptr i8, ptr %.389, i64 8
  %.val.i117 = load i64, ptr %i.em, align 8
  %i.en = getelementptr i8, ptr %.389, i64 248
  %.val36.i = load i32, ptr %i.en, align 8
  %i.eo = trunc i64 %.val.i117 to i32
  %i.ep = add i32 %.val36.i, %i.eo
  %i.eq = zext i32 %i.ep to i64
  %i.er = add i64 %i.dw, %i.eq
  %i.es = lshr i64 %i.er, 12
  %i.et = sub i64 %i.el, %i.dx
  %i.eu = lshr i64 %i.et, 12
  %i.ev = sub i64 %i.t, %i.eg
  %i.ew = add i64 %i.ev, %i.eu
  %i.ex = add i64 %i.ew, %i.es
  %i.ey = sub i64 %i.ek, %i.ej
  %i.ez = shl i64 %i.ey, 12
  %i.fa = call i32 @remap_io_mapping(ptr noundef %i.b, i64 noundef %i.el, i64 noundef %i.ex, i64 noundef %i.ez, ptr noundef %i.bd) #10 ; 3 uses
  %.not108 = icmp eq i32 %i.fa, 0
  br i1 %.not108, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  call fastcc void @assert_rpm_wakelock_held(ptr noundef %i.i) #13, !srcloc !57
  %.val112 = load ptr, ptr %i.j, align 8
  %i.fb = getelementptr i8, ptr %.val112, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = getelementptr i8, ptr %i.fc, i64 384
  call void @mutex_lock(ptr noundef %i.fd) #10
  %i.fe = getelementptr i8, ptr %.389, i64 268    ; 2 uses
  %i.ff = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fe, i64 15, ptr elementtype(i64) %i.fe) #11, !srcloc !58 ; 2 uses
  %i.fg = icmp ult i8 %i.ff, 2
  call void @llvm.assume(i1 %i.fg)
  %i.fh = trunc nuw i8 %i.ff to i1
  br i1 %i.fh, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fi = load i32, ptr %i.be, align 8            ; 2 uses
  %i.fj = add i32 %i.fi, 1
  store i32 %i.fj, ptr %i.be, align 8
  %.not109 = icmp eq i32 %i.fi, 0
  br i1 %.not109, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %.val111 = load ptr, ptr %i.j, align 8
  %i.fk = getelementptr i8, ptr %.val111, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = getelementptr i8, ptr %i.fl, i64 856    ; 3 uses
  %i.fn = load ptr, ptr %i.fm, align 8            ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 8
  store ptr %i.bf, ptr %i.fo, align 8
  store ptr %i.fn, ptr %i.bf, align 8
  store ptr %i.fm, ptr %i.bg, align 8
  store volatile ptr %i.bf, ptr %i.fm, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %.val = load ptr, ptr %i.j, align 8
  %i.fp = getelementptr i8, ptr %.val, i64 32
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = getelementptr i8, ptr %i.fq, i64 384
  call void @mutex_unlock(ptr noundef %i.fr) #10
  %i.fs = getelementptr i8, ptr %.389, i64 240
  store ptr %i.d, ptr %i.fs, align 8
  call void @intel_wakeref_auto(ptr noundef %i.bh, i64 noundef 251) #10
  br i1 %i.p, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ft = getelementptr i8, ptr %.389, i64 270    ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ft, i32 1, ptr elementtype(i8) %i.ft) #11, !srcloc !59
  %i.fu = load i8, ptr %i.bi, align 8
  %i.fv = or i8 %i.fu, 4
  store i8 %i.fv, ptr %i.bi, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.ae
  %i.fw = getelementptr i8, ptr %.389, i64 216
  %.389.val = load ptr, ptr %i.fw, align 8        ; 2 uses
  %.not.i118 = icmp eq ptr %.389.val, null
  br i1 %.not.i118, label %i915_vma_unpin_fence.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fx = getelementptr i8, ptr %.389.val, i64 32 ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.fx, ptr elementtype(i32) %i.fx) #11, !srcloc !43
  br label %i915_vma_unpin_fence.exit

i915_vma_unpin_fence.exit:                        ; preds = %bb.al, %bb.ak, %bb.ac, %bb.ad
  %.3 = phi i32 [ %i.dv, %bb.ad ], [ -14, %bb.ac ], [ %i.fa, %bb.ak ], [ %i.fa, %bb.al ]
  %i.fy = getelementptr i8, ptr %.389, i64 268    ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.fy, ptr elementtype(i32) %i.fy) #11, !srcloc !43
  br label %bb.am

bb.am:                                            ; preds = %.thread129, %i915_vma_unpin_fence.exit, %.thread136
  %.4 = phi i32 [ %i.dp, %.thread136 ], [ %.3, %i915_vma_unpin_fence.exit ], [ %.2, %.thread129 ]
  %i.fz = load ptr, ptr %i.au, align 8
  %i.ga = load i32, ptr %i.a, align 4
  call void @intel_gt_reset_unlock(ptr noundef %i.fz, i32 noundef %i.ga) #10
  br label %bb.an

bb.an:                                            ; preds = %i915_gem_object_pin_pages.exit.thread, %bb.am
  %.5 = phi i32 [ %i.ck, %i915_gem_object_pin_pages.exit.thread ], [ %.4, %bb.am ]
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.at, ptr elementtype(i32) %i.at) #11, !srcloc !43
  br label %bb.ao

bb.ao:                                            ; preds = %i915_gem_object_pin_pages.exit, %bb.an
  %.6 = phi i32 [ %i.ci, %i915_gem_object_pin_pages.exit ], [ %.5, %bb.an ] ; 2 uses
  %i.gb = icmp eq i32 %.6, -35
  br i1 %i.gb, label %bb.ap, label %.thread140

bb.ap:                                            ; preds = %.thread142, %bb.ao
  %i.gc = call i32 @i915_gem_ww_ctx_backoff(ptr noundef nonnull %1) #10 ; 2 uses
  %.not110 = icmp eq i32 %i.gc, 0
  br i1 %.not110, label %bb.e, label %.thread140

.thread140:                                       ; preds = %4, %bb.ap, %bb.ao
  %.7 = phi i32 [ %i.gc, %bb.ap ], [ %.6, %bb.ao ], [ %.0.i.i, %4 ] ; 2 uses
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %1) #10
  call void @intel_runtime_pm_put_unchecked(ptr noundef %i.i) #10
  switch i32 %.7, label %bb.aq [
    i32 -5, label %i915_error_to_vmf_fault.exit
    i32 -14, label %i915_error_to_vmf_fault.exit
    i32 -19, label %i915_error_to_vmf_fault.exit
    i32 -6, label %i915_error_to_vmf_fault.exit
    i32 -12, label %bb.ar
    i32 0, label %bb.as
    i32 -11, label %bb.as
    i32 -28, label %bb.as
    i32 -105, label %bb.as
    i32 -512, label %bb.as
    i32 -4, label %bb.as
    i32 -16, label %bb.as
  ]

bb.aq:                                            ; preds = %.thread140
  %i.gd = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.5, ptr nonnull @.str.6, i32 226, i32 2323, i64 16) #11, !srcloc !44
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.gd, ptr noundef nonnull @__func__.i915_error_to_vmf_fault, i32 noundef %.7) #10
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !45
  br label %i915_error_to_vmf_fault.exit

bb.ar:                                            ; preds = %.thread140
  br label %i915_error_to_vmf_fault.exit

bb.as:                                            ; preds = %.thread140, %.thread140, %.thread140, %.thread140, %.thread140, %.thread140, %.thread140
  br label %i915_error_to_vmf_fault.exit

i915_error_to_vmf_fault.exit:                     ; preds = %.thread140.thread, %.thread140, %.thread140, %.thread140, %.thread140, %bb.aq, %bb.ar, %bb.as
  %.0.i119 = phi i32 [ 256, %bb.as ], [ 1, %bb.ar ], [ 2, %bb.aq ], [ 2, %.thread140 ], [ 2, %.thread140 ], [ 2, %.thread140 ], [ 2, %.thread140 ], [ 2, %.thread140.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret i32 %.0.i119
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_gt_reset_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_gem_object_ggtt_pin_ww(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_evict_vm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @i915_gem_object_has_cache_level(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_vma_pin_fence(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @remap_io_mapping(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @assert_rpm_wakelock_held(ptr nofree noundef captures(address) %0) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = load volatile i32, ptr %0, align 4       ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %.val, i64 476
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 2
  br i1 %i.e, label %intel_runtime_pm_suspended.exit.i.i.i, label %assert_rpm_device_not_suspended.exit.i.i

intel_runtime_pm_suspended.exit.i.i.i:            ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val, i64 464
  %i.g = load i16, ptr %i.f, align 8
  %i.h = and i16 %i.g, 7
  %.not.i.i.i.i.i = icmp eq i16 %i.h, 0
  br i1 %.not.i.i.i.i.i, label %bb.b, label %assert_rpm_device_not_suspended.exit.i.i, !prof !60

bb.b:                                             ; preds = %intel_runtime_pm_suspended.exit.i.i.i
  %i.i = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.10, ptr nonnull @.str.8, i32 110, i32 2323, i64 16) #11, !srcloc !61
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.i) #10
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !62
  br label %assert_rpm_device_not_suspended.exit.i.i

assert_rpm_device_not_suspended.exit.i.i:         ; preds = %bb.b, %intel_runtime_pm_suspended.exit.i.i.i, %bb.a
  %i.j = and i32 %i.a, 65535
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %__assert_rpm_raw_wakeref_held.exit.i, !prof !14

bb.c:                                             ; preds = %assert_rpm_device_not_suspended.exit.i.i
  %i.k = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.9, ptr nonnull @.str.8, i32 118, i32 2323, i64 16) #11, !srcloc !63
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.k) #10
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !64
  br label %__assert_rpm_raw_wakeref_held.exit.i

__assert_rpm_raw_wakeref_held.exit.i:             ; preds = %bb.c, %assert_rpm_device_not_suspended.exit.i.i
  %.not.i = icmp ult i32 %i.a, 65536
  br i1 %.not.i, label %bb.d, label %__assert_rpm_wakelock_held.exit, !prof !14

bb.d:                                             ; preds = %__assert_rpm_raw_wakeref_held.exit.i
  %i.l = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.7, ptr nonnull @.str.8, i32 126, i32 2323, i64 16) #11, !srcloc !65
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.l) #10
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !66
  br label %__assert_rpm_wakelock_held.exit

__assert_rpm_wakelock_held.exit:                  ; preds = %__assert_rpm_raw_wakeref_held.exit.i, %bb.d
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_wakeref_auto(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_gt_reset_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_i915_gem_object_fault(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_vma_offset_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @intel_gt_retire_requests_timeout(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_drain_freed_objects(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_vma_node_allow_once(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_vma_offset_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { noredzone nounwind "no-builtin-wcslen" }
attributes #11 = { nounwind }
attributes #12 = { nounwind memory(none) }
attributes #13 = { noredzone "no-builtin-wcslen" }
attributes #14 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }

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
!10 = !{i64 2148988594, i64 2148988633, i64 2148988654, i64 2148988691, i64 2148988714, i64 2148988723}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{i64 2148354829}
!16 = !{i64 2817}
!17 = !{i64 3088}
!18 = !{i64 3154}
!19 = !{i64 2148982845, i64 2148982884, i64 2148982905, i64 2148982942, i64 2148982965, i64 2148982974}
!20 = !{i64 2150821420}
!21 = !{i64 2148793961, i64 2148794001, i64 2148794118, i64 2148794139, i64 2148794182, i64 2148794197, i64 2148794230, i64 2148794264, i64 2148794288}
!22 = !{i64 2151218522}
!23 = !{i64 2151511304, i64 2151511179}
!24 = !{i64 2151511827, i64 2151512919, i64 2151512952, i64 2151512987, i64 2151513003, i64 2151513930, i64 2151513988, i64 2151514037, i64 2151513847, i64 2151513062, i64 2151513094, i64 2151513177}
!25 = !{i64 2151514337, i64 2151514213}
!26 = !{i64 2151218795}
end_hunk_1

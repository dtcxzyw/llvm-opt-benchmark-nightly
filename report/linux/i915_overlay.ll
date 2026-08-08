inline.NumInlined: 138
inline.NumDeleted: 56
begin_hunk_0_@i915_overlay_off:bb.a
  %i.aa = tail call ptr @i915_request_create(ptr noundef %i.z) #8 ; 5 uses
  %i.ab = icmp ugt ptr %i.aa, inttoptr (i64 -4096 to ptr)
  br i1 %i.ab, label %alloc_request.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr i8, ptr %i.b, i64 64
  %i.ad = tail call i32 @i915_active_add_request(ptr noundef %i.ac, ptr noundef %i.aa) #8 ; 2 uses
  %.not.i46 = icmp eq i32 %i.ad, 0
  br i1 %.not.i46, label %alloc_request.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @i915_request_add(ptr noundef %i.aa) #8
  %i.ae = sext i32 %i.ad to i64
  %i.af = inttoptr i64 %i.ae to ptr
  br label %alloc_request.exit

alloc_request.exit:                               ; preds = %bb.e, %bb.f, %bb.g
  %.0.i47 = phi ptr [ %i.aa, %bb.e ], [ %i.af, %bb.g ], [ %i.aa, %bb.f ] ; 5 uses
  %i.ag = icmp ugt ptr %.0.i47, inttoptr (i64 -4096 to ptr)
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %alloc_request.exit
  %i.ah = ptrtoint ptr %.0.i47 to i64
  %i.ai = trunc i64 %i.ah to i32
  br label %bb.l

bb.i:                                             ; preds = %alloc_request.exit
  %i.aj = tail call ptr @intel_ring_begin(ptr noundef %.0.i47, i32 noundef 6) #8 ; 8 uses
  %i.ak = icmp ugt ptr %i.aj, inttoptr (i64 -4096 to ptr)
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @i915_request_add(ptr noundef %.0.i47) #8
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = trunc i64 %i.al to i32
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.an = getelementptr i8, ptr %i.aj, i64 4
  store i32 142606336, ptr %i.aj, align 4
  %i.ao = getelementptr i8, ptr %i.aj, i64 8
  store i32 %i.w, ptr %i.an, align 4
  %i.ap = getelementptr i8, ptr %i.aj, i64 12
  store i32 25231360, ptr %i.ao, align 4
  %i.aq = getelementptr i8, ptr %i.aj, i64 16
  store i32 146800640, ptr %i.ap, align 4
  %i.ar = getelementptr i8, ptr %i.aj, i64 20
  store i32 %i.w, ptr %i.aq, align 4
  store i32 25231360, ptr %i.ar, align 4
  tail call fastcc void @i915_overlay_flip_prepare(ptr noundef %i.b, ptr noundef null) #10, !srcloc !21
  tail call void @i915_request_add(ptr noundef %.0.i47) #8
  %i.as = getelementptr i8, ptr %i.b, i64 64
  %i.at = tail call i32 @__i915_active_wait(ptr noundef %i.as, i32 noundef 1) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %.0 = phi i32 [ %i.ai, %bb.h ], [ %i.am, %bb.j ], [ %i.at, %bb.k ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @i915_overlay_recover_from_interrupt(ptr nofree noundef readonly captures(none) %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 3608
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 64
  %i.d = tail call i32 @__i915_active_wait(ptr noundef %i.c, i32 noundef 1) #8
  ret i32 %i.d
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @i915_overlay_release_old_vid(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 3608
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 1840
  %i.f = getelementptr i8, ptr %0, i64 1984
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 %i.g(ptr noundef %i.e, i32 8364, i1 noundef zeroext true) #8, !inline_history !22
  %i.i = and i32 %i.h, 512
  %.not18 = icmp eq i32 %i.i, 0
  br i1 %.not18, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @i915_overlay_release_old_vma(ptr noundef %i.b) #10, !srcloc !23
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.b, i64 216
  store ptr @i915_overlay_release_old_vid_tail, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call ptr @i915_request_create(ptr noundef %i.l) #8 ; 5 uses
  %i.n = icmp ugt ptr %i.m, inttoptr (i64 -4096 to ptr)
  br i1 %i.n, label %alloc_request.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.b, i64 64
  %i.p = tail call i32 @i915_active_add_request(ptr noundef %i.o, ptr noundef %i.m) #8 ; 2 uses
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %alloc_request.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @i915_request_add(ptr noundef %i.m) #8
  %i.q = sext i32 %i.p to i64
  %i.r = inttoptr i64 %i.q to ptr
  br label %alloc_request.exit

alloc_request.exit:                               ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi ptr [ %i.m, %bb.d ], [ %i.r, %bb.f ], [ %i.m, %bb.e ] ; 5 uses
  %i.s = icmp ugt ptr %.0.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %alloc_request.exit
  %i.t = ptrtoint ptr %.0.i to i64
  %i.u = trunc i64 %i.t to i32
  br label %bb.k

bb.h:                                             ; preds = %alloc_request.exit
  %i.v = tail call ptr @intel_ring_begin(ptr noundef %.0.i, i32 noundef 2) #8 ; 4 uses
  %i.w = icmp ugt ptr %i.v, inttoptr (i64 -4096 to ptr)
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @i915_request_add(ptr noundef %.0.i) #8
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = trunc i64 %i.x to i32
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %i.v, i64 4
  store i32 25231360, ptr %i.v, align 4
  store i32 0, ptr %i.z, align 4
  tail call void @i915_request_add(ptr noundef %.0.i) #8
  %i.aa = getelementptr i8, ptr %i.b, i64 64
  %i.ab = tail call i32 @__i915_active_wait(ptr noundef %i.aa, i32 noundef 1) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j, %bb.i, %bb.g, %bb.c
  %.0 = phi i32 [ %i.u, %bb.g ], [ %i.y, %bb.i ], [ %i.ab, %bb.j ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal void @i915_overlay_reset(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 3608
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 60
  store i32 0, ptr %i.c, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @i915_overlay_pin_fb(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) #1 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.i915_gem_ww_ctx, align 8    ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !annotation !14
  %i.a = getelementptr i8, ptr %0, i64 5920       ; 4 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.a, ptr elementtype(i32) %i.a) #9, !srcloc !24
  call void @i915_gem_ww_ctx_init(ptr noundef nonnull %3, i1 noundef zeroext true) #8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.c = getelementptr i8, ptr %1, i64 248
  %i.d = getelementptr i8, ptr %1, i64 544        ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 552
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %bb.a
  %.015 = phi ptr [ null, %bb.a ], [ %.11631, %bb.k ] ; 2 uses
  %i.i = load i8, ptr %i.b, align 8, !range !25, !noundef !26
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = load ptr, ptr %i.c, align 8              ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = call i32 @ww_mutex_lock_interruptible(ptr noundef %i.k, ptr noundef nonnull %3) #8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = call i32 @ww_mutex_lock(ptr noundef %i.k, ptr noundef nonnull %3) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i32 [ %i.l, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  switch i32 %.0.i.i, label %PTR_ERR_OR_ZERO.exit.thread [
    i32 0, label %bb.f
    i32 -35, label %bb.h
    i32 -114, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %1, i32 1, ptr elementtype(i32) %1) #9, !srcloc !27 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %bb.g, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.o = add i32 %i.n, 1
  %i.p = or i32 %i.o, %i.n
  %.not10.i.i.i.i.i.i.i.i = icmp sgt i32 %i.p, -1
  br i1 %.not10.i.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i.i, label %.sink.split.i.i.i.i.i.i.i.i, !prof !10

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.f
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.f ], [ 1, %bb.g ]
  call void @refcount_warn_saturate(ptr noundef %1, i32 noundef %.sink.i.i.i.i.i.i.i.i) #8
  br label %i915_gem_object_get.exit.i.i

i915_gem_object_get.exit.i.i:                     ; preds = %.sink.split.i.i.i.i.i.i.i.i, %bb.g
  %i.q = load ptr, ptr %i.f, align 8              ; 2 uses
  store ptr %i.d, ptr %i.f, align 8
  store ptr %i.e, ptr %i.d, align 8
  store ptr %i.q, ptr %i.g, align 8
  store volatile ptr %i.d, ptr %i.q, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.r = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %1, i32 1, ptr elementtype(i32) %1) #9, !srcloc !27 ; 3 uses
  %.not.i.i.i.i.i.i19.i7.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i.i.i19.i7.i, label %.sink.split.i.i.i.i.i.i21.i9.i, label %bb.i, !prof !15

bb.i:                                             ; preds = %bb.h
  %i.s = add i32 %i.r, 1
  %i.t = or i32 %i.s, %i.r
  %.not10.i.i.i.i.i.i20.i8.i = icmp sgt i32 %i.t, -1
  br i1 %.not10.i.i.i.i.i.i20.i8.i, label %PTR_ERR_OR_ZERO.exit.thread28, label %.sink.split.i.i.i.i.i.i21.i9.i, !prof !10

.sink.split.i.i.i.i.i.i21.i9.i:                   ; preds = %bb.i, %bb.h
  %.sink.i.i.i.i.i.i22.i10.i = phi i32 [ 2, %bb.h ], [ 1, %bb.i ]
  call void @refcount_warn_saturate(ptr noundef %1, i32 noundef %.sink.i.i.i.i.i.i22.i10.i) #8
  br label %PTR_ERR_OR_ZERO.exit.thread28

PTR_ERR_OR_ZERO.exit.thread28:                    ; preds = %.sink.split.i.i.i.i.i.i21.i9.i, %bb.i
  store ptr %1, ptr %i.h, align 8
  br label %bb.k

bb.j:                                             ; preds = %i915_gem_object_get.exit.i.i, %bb.e
  %i.u = call ptr @i915_gem_object_pin_to_display_plane(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 8) #8 ; 5 uses
  %i.v = icmp ugt ptr %i.u, inttoptr (i64 -4096 to ptr)
  br i1 %i.v, label %PTR_ERR_OR_ZERO.exit, label %PTR_ERR_OR_ZERO.exit.thread

PTR_ERR_OR_ZERO.exit:                             ; preds = %bb.j
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = trunc i64 %i.w to i32                    ; 2 uses
  %i.y = icmp eq i32 %i.x, -35
  br i1 %i.y, label %bb.k, label %PTR_ERR_OR_ZERO.exit.thread

bb.k:                                             ; preds = %PTR_ERR_OR_ZERO.exit.thread28, %PTR_ERR_OR_ZERO.exit
  %.11631 = phi ptr [ %.015, %PTR_ERR_OR_ZERO.exit.thread28 ], [ %i.u, %PTR_ERR_OR_ZERO.exit ] ; 2 uses
  %i.z = call i32 @i915_gem_ww_ctx_backoff(ptr noundef nonnull %3) #8 ; 2 uses
  %.not20 = icmp eq i32 %i.z, 0
  br i1 %.not20, label %bb.b, label %PTR_ERR_OR_ZERO.exit.thread

PTR_ERR_OR_ZERO.exit.thread:                      ; preds = %bb.e, %PTR_ERR_OR_ZERO.exit, %bb.k, %bb.j
  %.11627 = phi ptr [ %.015, %bb.e ], [ %i.u, %PTR_ERR_OR_ZERO.exit ], [ %i.u, %bb.j ], [ %.11631, %bb.k ] ; 3 uses
  %.1 = phi i32 [ %.0.i.i, %bb.e ], [ %i.x, %PTR_ERR_OR_ZERO.exit ], [ 0, %bb.j ], [ %i.z, %bb.k ] ; 2 uses
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %3) #8
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.a, ptr elementtype(i32) %i.a) #9, !srcloc !28
  %.not21 = icmp eq i32 %.1, 0
  br i1 %.not21, label %bb.m, label %bb.l

bb.l:                                             ; preds = %PTR_ERR_OR_ZERO.exit.thread
  %i.aa = sext i32 %.1 to i64
  %i.ab = inttoptr i64 %i.aa to ptr
  br label %bb.n

bb.m:                                             ; preds = %PTR_ERR_OR_ZERO.exit.thread
  %i.ac = getelementptr i8, ptr %.11627, i64 8
  %.116.val = load i64, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %.11627, i64 248
  %.116.val22 = load i32, ptr %i.ad, align 8
  %i.ae = trunc i64 %.116.val to i32
  %i.af = add i32 %.116.val22, %i.ae
  store i32 %i.af, ptr %2, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.017 = phi ptr [ %i.ab, %bb.l ], [ %.11627, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret ptr %.017
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i915_overlay_unpin_fb(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 268        ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.a, ptr elementtype(i32) %i.a) #9, !srcloc !28
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @i915_overlay_obj_lookup(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) #1 align 16 prefalign(16) {
bb.a:
  tail call void @__rcu_read_lock() #8
  %i.a = getelementptr i8, ptr %1, i64 80
  %i.b = zext i32 %2 to i64
  %i.c = tail call ptr @idr_find(ptr noundef %i.a, i64 noundef %i.b) #8 ; 11 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %i915_gem_object_lookup.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load volatile i32, ptr %i.c, align 4     ; 2 uses
  %.old1.not.i.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.old1.not.i.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.b, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.j, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.e = add i32 %.0.i.i.i.i.i.i, 1
  %i.f = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.c, i32 %i.e, ptr nonnull elementtype(i32) %i.c, i32 %.0.i.i.i.i.i.i) #9, !srcloc !29 ; 2 uses
  %i.g = extractvalue { i8, i32 } %i.f, 0         ; 2 uses
  %i.h = icmp ult i8 %i.g, 2
  tail call void @llvm.assume(i1 %i.h)
  %i.i = trunc nuw i8 %i.g to i1
  br i1 %i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i, !prof !10

arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i:         ; preds = %.preheader.i.i.i.i.i.i
  %i.j = extractvalue { i8, i32 } %i.f, 1         ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, !llvm.loop !30

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i:  ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i, %bb.b
  %.2.i.i.i.i.i.i = phi i32 [ 0, %bb.b ], [ %.0.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i ] ; 3 uses
  %i.l = add i32 %.2.i.i.i.i.i.i, 1
  %i.m = or i32 %i.l, %.2.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i.i.i.i.i.i, label %kref_get_unless_zero.exit.i.i, label %bb.c, !prof !10

bb.c:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.c, i32 noundef 0) #8
  br label %kref_get_unless_zero.exit.i.i

kref_get_unless_zero.exit.i.i:                    ; preds = %bb.c, %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i
  %.not5.i.i = icmp eq i32 %.2.i.i.i.i.i.i, 0
  br i1 %.not5.i.i, label %i915_gem_object_lookup.exit.thread, label %i915_gem_object_lookup.exit

i915_gem_object_lookup.exit.thread:               ; preds = %bb.a, %kref_get_unless_zero.exit.i.i
  tail call void @__rcu_read_unlock() #8
  br label %i915_gem_object_put.exit

i915_gem_object_lookup.exit:                      ; preds = %kref_get_unless_zero.exit.i.i
  tail call void @__rcu_read_unlock() #8
  %i.n = getelementptr i8, ptr %i.c, i64 680
  %.val = load i32, ptr %i.n, align 8
  %i.o = and i32 %.val, 127
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %i915_gem_object_put.exit, label %bb.d

bb.d:                                             ; preds = %i915_gem_object_lookup.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.d, %bb.e
  %i.r = phi ptr [ %i.q, %bb.e ], [ null, %bb.d ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.r, i32 noundef 1, ptr noundef nonnull @.str.6) #8
  %i.s = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.c, i32 -1, ptr nonnull elementtype(i32) %i.c) #9, !srcloc !27 ; 2 uses
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.h, label %bb.f

bb.f:                                             ; preds = %__drm_to_dev.exit
  %i.u = icmp slt i32 %i.s, 1
  br i1 %i.u, label %bb.g, label %i915_gem_object_put.exit, !prof !15

bb.g:                                             ; preds = %bb.f
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.c, i32 noundef 3) #8
  br label %i915_gem_object_put.exit

bb.h:                                             ; preds = %__drm_to_dev.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !32
  tail call void @drm_gem_object_free(ptr noundef nonnull %i.c) #8
  br label %i915_gem_object_put.exit

i915_gem_object_put.exit:                         ; preds = %bb.h, %bb.g, %bb.f, %i915_gem_object_lookup.exit.thread, %i915_gem_object_lookup.exit
  %.0 = phi ptr [ inttoptr (i64 -22 to ptr), %bb.h ], [ %i.c, %i915_gem_object_lookup.exit ], [ inttoptr (i64 -2 to ptr), %i915_gem_object_lookup.exit.thread ], [ inttoptr (i64 -22 to ptr), %bb.f ], [ inttoptr (i64 -22 to ptr), %bb.g ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @i915_overlay_setup(ptr noundef %0, i1 noundef zeroext %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 3528
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val, i64 4024
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 176      ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not27 = icmp eq ptr %i.e, null
  br i1 %.not27, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 64), align 16
  %i.g = tail call noalias noundef align 8 dereferenceable_or_null(224) ptr @__kmalloc_cache_noprof(ptr noundef %i.f, i32 noundef 3520, i64 noundef 224) #11 ; 11 uses
  %.not28 = icmp eq ptr %i.g, null
  br i1 %.not28, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.g, align 8
  %i.h = load ptr, ptr %i.d, align 8
  %i.i = getelementptr i8, ptr %i.g, i64 8
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %i.g, i64 64
  tail call void @__i915_active_init(ptr noundef %i.j, ptr noundef null, ptr noundef nonnull @i915_overlay_last_flip_retire, i64 noundef 0, ptr noundef nonnull @i915_overlay_setup.__mkey, ptr noundef nonnull @i915_overlay_setup.__wkey) #8
  %i.k = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.l = tail call ptr @i915_gem_object_create_stolen(ptr noundef %i.k, i64 noundef 4096) #8 ; 2 uses
  %i.m = icmp ugt ptr %i.l, inttoptr (i64 -4096 to ptr)
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @i915_gem_object_create_internal(ptr noundef %i.k, i64 noundef 4096) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.023.i = phi ptr [ %i.n, %bb.e ], [ %i.l, %bb.d ] ; 9 uses
  %i.o = icmp ugt ptr %.023.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.o, label %get_registers.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @i915_gem_object_ggtt_pin(ptr noundef %.023.i, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 8) #8 ; 6 uses
  %i.q = icmp ugt ptr %i.p, inttoptr (i64 -4096 to ptr)
  br i1 %i.q, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %1, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr i8, ptr %.023.i, i64 760
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8
  %i.w = trunc i64 %i.v to i32
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr i8, ptr %i.p, i64 8
  %.val.i = load i64, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %i.p, i64 248
  %.val25.i = load i32, ptr %i.y, align 8
  %i.z = trunc i64 %.val.i to i32
  %i.aa = add i32 %.val25.i, %i.z
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink.i = phi i32 [ %i.w, %bb.i ], [ %i.aa, %bb.j ]
  %i.ab = getelementptr i8, ptr %i.g, i64 56
  store i32 %.sink.i, ptr %i.ab, align 8
  %i.ac = tail call ptr @i915_vma_pin_iomap(ptr noundef %i.p) #8
  %i.ad = getelementptr i8, ptr %i.g, i64 48      ; 2 uses
end_hunk_0

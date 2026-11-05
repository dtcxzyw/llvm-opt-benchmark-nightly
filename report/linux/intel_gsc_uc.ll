Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_gsc_uc?download=true
inline.NumInlined: 65
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@intel_uc_fw_init_early
; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @gsc_work(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -472       ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 -520       ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 -496       ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call ptr @intel_runtime_pm_get(ptr noundef %i.f) #3 ; 0 uses
  %i.h = getelementptr i8, ptr %0, i64 3456       ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %i.i) #3
  %i.j = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.k = load i32, ptr %i.j, align 8              ; 4 uses
  store i32 0, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.h, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.l) #3
  %i.m = and i32 %i.k, 1
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i32 @intel_gsc_uc_fw_upload(ptr noundef %i.a) #3
  switch i32 %i.n, label %bb.u [
    i32 0, label %bb.c
    i32 -17, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = or i32 %i.k, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.k, %bb.b ], [ %i.o, %bb.c ]  ; 3 uses
  %i.p = getelementptr i8, ptr %0, i64 1876
  %.val = load i32, ptr %i.p, align 4
  %i.q = icmp sgt i32 %.val, 4
  br i1 %i.q, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %0, i64 1872       ; 2 uses
  %i.s = tail call zeroext i1 @intel_huc_is_authenticated(ptr noundef %i.r, i32 noundef 0) #3
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = tail call i32 @intel_huc_auth(ptr noundef %i.r, i32 noundef 1) #3 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.a
  %.1 = phi i32 [ %.0, %bb.f ], [ %.0, %bb.e ], [ %.0, %bb.d ], [ %i.k, %bb.a ]
  %i.u = zext i32 %.1 to i64                      ; 2 uses
  %i.v = and i64 %i.u, 2
  %.not39 = icmp eq i64 %i.v, 0
  br i1 %.not39, label %bb.u, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = tail call zeroext i1 @intel_gsc_uc_fw_init_done(ptr noundef %i.a) #3
  br i1 %i.w, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.i, %bb.j
  %i.aa = phi ptr [ %i.z, %bb.j ], [ null, %bb.i ]
  %i.ab = getelementptr i8, ptr %0, i64 4416
  %i.ac = load i32, ptr %i.ab, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.aa, ptr noundef @.str.14, i32 noundef %i.ac) #4
  br label %bb.u

bb.k:                                             ; preds = %bb.h
  %i.ad = tail call i32 @intel_gsc_proxy_request_handler(ptr noundef %i.a) #3
  %.not40 = icmp eq i32 %i.ad, 0
  %i.ae = and i64 %i.u, 1
  %.not41 = icmp eq i64 %i.ae, 0                  ; 2 uses
  br i1 %.not40, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not41, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not.i43 = icmp eq ptr %i.af, null
  br i1 %.not.i43, label %__drm_to_dev.exit44, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  br label %__drm_to_dev.exit44

__drm_to_dev.exit44:                              ; preds = %bb.m, %bb.n
  %i.ai = phi ptr [ %i.ah, %bb.n ], [ null, %bb.m ]
  %i.aj = getelementptr i8, ptr %0, i64 4416
  %i.ak = load i32, ptr %i.aj, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ai, ptr noundef @.str.15, i32 noundef %i.ak) #4
  %i.al = getelementptr i8, ptr %0, i64 -468
  store i32 8, ptr %i.al, align 4
  br label %bb.u

bb.o:                                             ; preds = %bb.k
  br i1 %.not41, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = tail call zeroext i1 @intel_gsc_uc_fw_proxy_init_done(ptr noundef %i.a, i1 noundef zeroext false) #3
  %i.an = load ptr, ptr %i.b, align 8             ; 3 uses
  %.not.i45 = icmp eq ptr %i.an, null             ; 2 uses
  br i1 %i.am, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  br i1 %.not.i45, label %__drm_to_dev.exit46, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  br label %__drm_to_dev.exit46

__drm_to_dev.exit46:                              ; preds = %bb.q, %bb.r
  %i.aq = phi ptr [ %i.ap, %bb.r ], [ null, %bb.q ]
  %i.ar = getelementptr i8, ptr %0, i64 4416
  %i.as = load i32, ptr %i.ar, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.aq, i32 noundef 1, ptr noundef @.str.16, i32 noundef %i.as) #3
  %i.at = getelementptr i8, ptr %0, i64 -468
  store i32 10, ptr %i.at, align 4
  br label %bb.u

bb.s:                                             ; preds = %bb.p
  br i1 %.not.i45, label %__drm_to_dev.exit48, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = getelementptr i8, ptr %i.an, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  br label %__drm_to_dev.exit48

__drm_to_dev.exit48:                              ; preds = %bb.s, %bb.t
  %i.aw = phi ptr [ %i.av, %bb.t ], [ null, %bb.s ]
  %i.ax = getelementptr i8, ptr %0, i64 4416
  %i.ay = load i32, ptr %i.ax, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.aw, ptr noundef @.str.17, i32 noundef %i.ay) #4
  %i.az = getelementptr i8, ptr %0, i64 -468
  store i32 8, ptr %i.az, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.b, %bb.g, %__drm_to_dev.exit46, %__drm_to_dev.exit48, %bb.o, %bb.l, %__drm_to_dev.exit44, %__drm_to_dev.exit
  %i.ba = load ptr, ptr %i.c, align 8
  %i.bb = getelementptr i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void @intel_runtime_pm_put_unchecked(ptr noundef %i.bc) #3
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @alloc_workqueue_noprof(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @intel_gsc_uc_init(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -48        ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 4184
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = tail call i32 @intel_uc_fw_init(ptr noundef %0) #3 ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = tail call ptr @i915_gem_object_create_stolen(ptr noundef %i.e, i64 noundef 4194304) #3 ; 7 uses
  %i.g = icmp ugt ptr %i.f, inttoptr (i64 -4096 to ptr)
  br i1 %i.g, label %gsc_allocate_and_map_vma.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @i915_gem_object_ggtt_pin(ptr noundef %i.f, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 0) #3 ; 6 uses
  %i.i = icmp ugt ptr %i.h, inttoptr (i64 -4096 to ptr)
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @i915_vma_pin_iomap(ptr noundef %i.h) #3 ; 3 uses
  %i.k = getelementptr i8, ptr %i.h, i64 268      ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.k, ptr elementtype(i32) %i.k) #5, !srcloc !13
  %i.l = icmp ugt ptr %i.j, inttoptr (i64 -4096 to ptr)
  br i1 %i.l, label %bb.e, label %gsc_allocate_and_map_vma.exit.thread

gsc_allocate_and_map_vma.exit.thread:             ; preds = %bb.d
  %i.m = tail call ptr @i915_vma_make_unshrinkable(ptr noundef %i.h) #3 ; 0 uses
  %i.n = getelementptr i8, ptr %0, i64 440
  store ptr %i.h, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %0, i64 448
  store ptr %i.j, ptr %i.o, align 8
  br label %bb.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.in.in.i = phi ptr [ %i.h, %bb.c ], [ %i.j, %bb.d ] ; 3 uses
  %i.p = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.f, i32 -1, ptr elementtype(i32) %i.f) #5, !srcloc !10 ; 2 uses
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = icmp slt i32 %i.p, 1
  br i1 %i.r, label %bb.g, label %gsc_allocate_and_map_vma.exit, !prof !11

bb.g:                                             ; preds = %bb.f
  tail call void @refcount_warn_saturate(ptr noundef %i.f, i32 noundef 3) #3
  br label %gsc_allocate_and_map_vma.exit

bb.h:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !12
  tail call void @drm_gem_object_free(ptr noundef %i.f) #3
  br label %gsc_allocate_and_map_vma.exit

gsc_allocate_and_map_vma.exit:                    ; preds = %bb.b, %bb.f, %bb.g, %bb.h
  %.019.i.in.in = phi ptr [ %.0.in.in.i, %bb.g ], [ %.0.in.in.i, %bb.h ], [ %.0.in.in.i, %bb.f ], [ %i.f, %bb.b ]
  %.019.i.in = ptrtoint ptr %.019.i.in.in to i64
  %.019.i = trunc i64 %.019.i.in to i32           ; 2 uses
  %.not25 = icmp eq i32 %.019.i, 0
  br i1 %.not25, label %bb.i, label %gsc_unmap_and_free_vma.exit

bb.i:                                             ; preds = %gsc_allocate_and_map_vma.exit.thread, %gsc_allocate_and_map_vma.exit
  %i.s = getelementptr i8, ptr %i.c, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 4680
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call ptr @intel_engine_create_pinned_context(ptr noundef %i.c, ptr noundef %i.v, i32 noundef 4096, i32 noundef 392, ptr noundef @intel_gsc_uc_init.gsc_lock, ptr noundef @.str.2) #3 ; 3 uses
  %i.x = icmp ugt ptr %i.w, inttoptr (i64 -4096 to ptr)
  br i1 %i.x, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.j, %bb.k
  %i.ab = phi ptr [ %i.aa, %bb.k ], [ null, %bb.j ]
  %i.ac = getelementptr i8, ptr %0, i64 4888
  %i.ad = load i32, ptr %i.ac, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ab, ptr noundef @.str.3, i32 noundef %i.ad) #4
  %i.ae = ptrtoint ptr %i.w to i64
  %i.af = trunc i64 %i.ae to i32                  ; 4 uses
  %i.ag = getelementptr i8, ptr %0, i64 440       ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  store ptr null, ptr %i.ag, align 8
  %.not.i26 = icmp eq ptr %i.ah, null
  br i1 %.not.i26, label %gsc_unmap_and_free_vma.exit, label %bb.l

bb.l:                                             ; preds = %__drm_to_dev.exit
  %i.ai = getelementptr i8, ptr %0, i64 448
  store ptr null, ptr %i.ai, align 8
  tail call void @i915_vma_unpin_iomap(ptr noundef nonnull %i.ah) #3
  %i.aj = getelementptr i8, ptr %i.ah, i64 184
  %i.ak = load ptr, ptr %i.aj, align 8            ; 4 uses
  %i.al = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ak, i32 -1, ptr elementtype(i32) %i.ak) #5, !srcloc !10 ; 2 uses
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = icmp slt i32 %i.al, 1
  br i1 %i.an, label %bb.n, label %gsc_unmap_and_free_vma.exit, !prof !11

bb.n:                                             ; preds = %bb.m
  tail call void @refcount_warn_saturate(ptr noundef %i.ak, i32 noundef 3) #3
  br label %gsc_unmap_and_free_vma.exit

bb.o:                                             ; preds = %bb.l
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !12
  tail call void @drm_gem_object_free(ptr noundef %i.ak) #3
  br label %gsc_unmap_and_free_vma.exit

bb.p:                                             ; preds = %bb.i
  %i.ao = getelementptr i8, ptr %0, i64 456
  store ptr %i.w, ptr %i.ao, align 8
  %i.ap = tail call i32 @intel_gsc_proxy_init(ptr noundef %0) #3 ; 0 uses
  %i.aq = getelementptr i8, ptr %0, i64 4
  store i32 7, ptr %i.aq, align 4
  br label %bb.s

gsc_unmap_and_free_vma.exit:                      ; preds = %bb.o, %bb.n, %bb.m, %__drm_to_dev.exit, %gsc_allocate_and_map_vma.exit
  %.0 = phi i32 [ %.019.i, %gsc_allocate_and_map_vma.exit ], [ %i.af, %__drm_to_dev.exit ], [ %i.af, %bb.m ], [ %i.af, %bb.n ], [ %i.af, %bb.o ]
  tail call void @intel_uc_fw_fini(ptr noundef %0) #3
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %gsc_unmap_and_free_vma.exit
  %.1 = phi i32 [ %i.d, %bb.a ], [ %.0, %gsc_unmap_and_free_vma.exit ] ; 2 uses
  %i.ar = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i27 = icmp eq ptr %i.ar, null
  br i1 %.not.i27, label %__drm_to_dev.exit28, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  br label %__drm_to_dev.exit28

__drm_to_dev.exit28:                              ; preds = %bb.q, %bb.r
  %i.au = phi ptr [ %i.at, %bb.r ], [ null, %bb.q ]
  %i.av = getelementptr i8, ptr %0, i64 4888
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = sext i32 %.1 to i64
  %i.ay = inttoptr i64 %i.ax to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.au, ptr noundef @.str.4, i32 noundef %i.aw, ptr noundef %i.ay) #4
  br label %bb.s

bb.s:                                             ; preds = %__drm_to_dev.exit28, %bb.p
  %.022 = phi i32 [ %.1, %__drm_to_dev.exit28 ], [ 0, %bb.p ]
  ret i32 %.022
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_uc_fw_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_engine_create_pinned_context(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_gsc_proxy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_uc_fw_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_gsc_uc_fini(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val = load i32, ptr %i.a, align 4
  %i.b = icmp sgt i32 %.val, 6
  br i1 %i.b, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 472
  %i.d = tail call zeroext i1 @flush_work(ptr noundef %i.c) #3 ; 0 uses
  %i.e = getelementptr i8, ptr %0, i64 464        ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @destroy_workqueue(ptr noundef nonnull %i.f) #3
  store ptr null, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @intel_gsc_proxy_fini(ptr noundef %0) #3
  %i.g = getelementptr i8, ptr %0, i64 456        ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not14 = icmp eq ptr %i.h, null
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.g, align 8
  tail call void @intel_engine_destroy_pinned_context(ptr noundef nonnull %i.h) #3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = getelementptr i8, ptr %0, i64 440        ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  store ptr null, ptr %i.i, align 8
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %gsc_unmap_and_free_vma.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr i8, ptr %0, i64 448
  store ptr null, ptr %i.k, align 8
  tail call void @i915_vma_unpin_iomap(ptr noundef nonnull %i.j) #3
  %i.l = getelementptr i8, ptr %i.j, i64 184
  %i.m = load ptr, ptr %i.l, align 8              ; 4 uses
  %i.n = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.m, i32 -1, ptr elementtype(i32) %i.m) #5, !srcloc !10 ; 2 uses
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = icmp slt i32 %i.n, 1
  br i1 %i.p, label %bb.i, label %gsc_unmap_and_free_vma.exit, !prof !11

bb.i:                                             ; preds = %bb.h
  tail call void @refcount_warn_saturate(ptr noundef %i.m, i32 noundef 3) #3
  br label %gsc_unmap_and_free_vma.exit

bb.j:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !12
  tail call void @drm_gem_object_free(ptr noundef %i.m) #3
  br label %gsc_unmap_and_free_vma.exit

gsc_unmap_and_free_vma.exit:                      ; preds = %bb.f, %bb.h, %bb.i, %bb.j
  tail call void @intel_uc_fw_fini(ptr noundef %0) #3
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %gsc_unmap_and_free_vma.exit
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_gsc_proxy_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_engine_destroy_pinned_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_gsc_uc_flush_work(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val = load i32, ptr %i.a, align 4
  %i.b = icmp sgt i32 %.val, 6
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 472
  %i.d = tail call zeroext i1 @flush_work(ptr noundef %i.c) #3 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_gsc_uc_resume(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val = load i32, ptr %i.a, align 4             ; 2 uses
  %i.b = icmp sgt i32 %.val, 6
  br i1 %i.b, label %bb.b, label %intel_gsc_uc_load_start.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 4184
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 496
  %i.f = load ptr, ptr %i.e, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %intel_gsc_uc_load_start.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %.val, label %intel_gsc_uc_load_start.exit [
    i32 7, label %intel_uc_fw_is_in_error.exit.i
    i32 10, label %intel_uc_fw_is_in_error.exit.i
    i32 9, label %intel_uc_fw_is_in_error.exit.i
  ]

intel_uc_fw_is_in_error.exit.i:                   ; preds = %bb.c, %bb.c, %bb.c
  %i.g = tail call zeroext i1 @intel_gsc_uc_fw_init_done(ptr noundef %0) #3
  br i1 %i.g, label %intel_gsc_uc_load_start.exit, label %bb.d

bb.d:                                             ; preds = %intel_uc_fw_is_in_error.exit.i
  %i.h = getelementptr i8, ptr %0, i64 3928       ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %i.i) #3
  %i.j = getelementptr i8, ptr %0, i64 504        ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = or i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8
  %i.m = load ptr, ptr %i.h, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.m) #3
  %i.n = getelementptr i8, ptr %0, i64 464
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %0, i64 472
  %i.q = tail call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.o, ptr noundef %i.p) #3 ; 0 uses
  br label %intel_gsc_uc_load_start.exit

intel_gsc_uc_load_start.exit:                     ; preds = %bb.d, %intel_uc_fw_is_in_error.exit.i, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_gsc_uc_load_start(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val = load i32, ptr %i.a, align 4             ; 2 uses
  %i.b = icmp sgt i32 %.val, 6
  br i1 %i.b, label %bb.b, label %intel_uc_fw_is_in_error.exit.thread

bb.b:                                             ; preds = %bb.a
  switch i32 %.val, label %intel_uc_fw_is_in_error.exit.thread [
    i32 7, label %intel_uc_fw_is_in_error.exit
    i32 10, label %intel_uc_fw_is_in_error.exit
    i32 9, label %intel_uc_fw_is_in_error.exit
end_hunk_0

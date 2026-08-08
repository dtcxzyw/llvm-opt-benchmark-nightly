inline.NumInlined: 66
inline.NumDeleted: 38
begin_hunk_0_@i915_gem_prime_export:bb.a
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i32 %i.m(ptr noundef %0) #7    ; 2 uses
  %.not15 = icmp eq i32 %i.n, 0
  br i1 %.not15, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = sext i32 %i.n to i64
  %i.p = inttoptr i64 %i.o to ptr
  br label %bb.d

.thread:                                          ; preds = %bb.b, %bb.a
  %i.q = getelementptr i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call ptr @drm_gem_dmabuf_export(ptr noundef %i.r, ptr noundef nonnull %2) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %.1 = phi ptr [ %i.s, %.thread ], [ %i.p, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @drm_gem_dmabuf_export(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @i915_gem_prime_import(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, @i915_dmabuf_ops
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 112
  %.val = load ptr, ptr %i.d, align 8             ; 6 uses
  %i.e = getelementptr i8, ptr %.val, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.f, %0
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val, i32 1, ptr elementtype(i32) %.val) #6, !srcloc !10 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.i = add i32 %i.h, 1
  %i.j = or i32 %i.i, %i.h
  %.not10.i.i.i.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %.not10.i.i.i.i.i.i, label %i915_gem_object_get.exit, label %.sink.split.i.i.i.i.i.i, !prof !12

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.d, %bb.c
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %bb.c ], [ 1, %bb.d ]
  tail call void @refcount_warn_saturate(ptr noundef %.val, i32 noundef %.sink.i.i.i.i.i.i) #7
  br label %i915_gem_object_get.exit

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call ptr @dma_buf_attach(ptr noundef %1, ptr noundef %i.l) #7 ; 4 uses
  %i.n = icmp ugt ptr %i.m, inttoptr (i64 -4096 to ptr)
  br i1 %i.n, label %i915_gem_object_get.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %1, i64 8
  %.val28 = load ptr, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %.val28, i64 168   ; 2 uses
  %i.q = tail call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddq ${0:q}, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.p, i64 1, ptr elementtype(i64) %i.p) #6, !srcloc !13
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %get_dma_buf.exit, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.s = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.4, ptr nonnull @.str.5, i32 121, i32 2323, i64 16) #6, !srcloc !14
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.s) #7
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !15
  br label %get_dma_buf.exit

get_dma_buf.exit:                                 ; preds = %bb.f, %bb.g
  %i.t = tail call ptr @i915_gem_object_alloc() #7 ; 8 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %get_dma_buf.exit
  tail call void @dma_buf_detach(ptr noundef %1, ptr noundef %i.m) #7
  tail call void @dma_buf_put(ptr noundef %1) #7
  br label %i915_gem_object_get.exit

bb.i:                                             ; preds = %get_dma_buf.exit
  %i.u = load i64, ptr %1, align 8
  tail call void @drm_gem_private_object_init(ptr noundef %0, ptr noundef nonnull %i.t, i64 noundef %i.u) #7
  tail call void @i915_gem_object_init(ptr noundef nonnull %i.t, ptr noundef nonnull @i915_gem_object_dmabuf_ops, ptr noundef nonnull @i915_gem_prime_import.lock_class, i32 noundef 8) #7
  %i.v = getelementptr i8, ptr %i.t, i64 240
  store ptr %i.m, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %1, i64 120
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %i.t, i64 248
  store ptr %i.x, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %i.t, i64 662
  store i16 64, ptr %i.z, align 2
  %i.aa = getelementptr i8, ptr %i.t, i64 664
  store i16 0, ptr %i.aa, align 8
  br label %i915_gem_object_get.exit

i915_gem_object_get.exit:                         ; preds = %bb.e, %.sink.split.i.i.i.i.i.i, %bb.d, %bb.h, %bb.i
  %.0 = phi ptr [ %i.t, %bb.i ], [ inttoptr (i64 -12 to ptr), %bb.h ], [ %.val, %.sink.split.i.i.i.i.i.i ], [ %.val, %bb.d ], [ %i.m, %bb.e ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @dma_buf_attach(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_gem_object_alloc() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_gem_private_object_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_object_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dma_buf_detach(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dma_buf_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -34, -35) i32 @i915_gem_dmabuf_attach(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.i915_gem_ww_ctx, align 8    ; 13 uses
  %i.a = getelementptr i8, ptr %0, i64 112
  %.val = load ptr, ptr %i.a, align 8             ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.b = tail call zeroext i1 @i915_gem_object_can_migrate(ptr noundef %.val, i32 noundef 0) #7
  br i1 %i.b, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false), !annotation !16
  call void @i915_gem_ww_ctx_init(ptr noundef nonnull %2, i1 noundef zeroext true) #7
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = getelementptr i8, ptr %.val, i64 248
  %i.e = getelementptr i8, ptr %.val, i64 544     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.h = getelementptr i8, ptr %.val, i64 552
  %i.i = getelementptr i8, ptr %.val, i64 688     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %__i915_gem_ww_fini.exit
  %i.k = load i8, ptr %i.c, align 8, !range !17, !noundef !18
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = load ptr, ptr %i.d, align 8              ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = call i32 @ww_mutex_lock_interruptible(ptr noundef %i.m, ptr noundef nonnull %2) #7
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = call i32 @ww_mutex_lock(ptr noundef %i.m, ptr noundef nonnull %2) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i.i = phi i32 [ %i.n, %bb.d ], [ %i.o, %bb.e ] ; 4 uses
  %i.p = icmp eq i32 %.0.i.i, 0
  br i1 %i.p, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.q = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val, i32 1, ptr elementtype(i32) %.val) #6, !srcloc !10 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %bb.h, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.r = add i32 %i.q, 1
  %i.s = or i32 %i.r, %i.q
  %.not10.i.i.i.i.i.i.i.i = icmp sgt i32 %i.s, -1
  br i1 %.not10.i.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i.i, label %.sink.split.i.i.i.i.i.i.i.i, !prof !12

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.h, %bb.g
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.g ], [ 1, %bb.h ]
  call void @refcount_warn_saturate(ptr noundef %.val, i32 noundef %.sink.i.i.i.i.i.i.i.i) #7
  br label %i915_gem_object_get.exit.i.i

i915_gem_object_get.exit.i.i:                     ; preds = %bb.h, %.sink.split.i.i.i.i.i.i.i.i
  %i.t = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr %i.e, ptr %i.g, align 8
  store ptr %i.f, ptr %i.e, align 8
  store ptr %i.t, ptr %i.h, align 8
  store volatile ptr %i.e, ptr %i.t, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  %i.u = icmp eq i32 %.0.i.i, -114
  %spec.store.select.i6.i = select i1 %i.u, i32 0, i32 %.0.i.i
  switch i32 %.0.i.i, label %.thread10.i [
    i32 -35, label %bb.j
    i32 -114, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.v = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val, i32 1, ptr elementtype(i32) %.val) #6, !srcloc !10 ; 3 uses
  %.not.i.i.i.i.i.i19.i7.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i.i.i19.i7.i, label %.sink.split.i.i.i.i.i.i21.i9.i, label %bb.k, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.w = add i32 %i.v, 1
  %i.x = or i32 %i.w, %i.v
  %.not10.i.i.i.i.i.i20.i8.i = icmp sgt i32 %i.x, -1
  br i1 %.not10.i.i.i.i.i.i20.i8.i, label %i915_gem_object_pin_pages.exit.thread21, label %.sink.split.i.i.i.i.i.i21.i9.i, !prof !12

.sink.split.i.i.i.i.i.i21.i9.i:                   ; preds = %bb.k, %bb.j
  %.sink.i.i.i.i.i.i22.i10.i = phi i32 [ 2, %bb.j ], [ 1, %bb.k ]
  call void @refcount_warn_saturate(ptr noundef %.val, i32 noundef %.sink.i.i.i.i.i.i22.i10.i) #7
  br label %i915_gem_object_pin_pages.exit.thread21

i915_gem_object_pin_pages.exit.thread21:          ; preds = %.sink.split.i.i.i.i.i.i21.i9.i, %bb.k
  store ptr %.val, ptr %i.j, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.i, %i915_gem_object_get.exit.i.i
  %i.y = call i32 @i915_gem_object_migrate(ptr noundef %.val, ptr noundef nonnull %2, i32 noundef 0) #7 ; 2 uses
  %.not16 = icmp eq i32 %i.y, 0
  br i1 %.not16, label %bb.m, label %i915_gem_object_pin_pages.exit

bb.m:                                             ; preds = %bb.l
  %i.z = call i32 @i915_gem_object_wait_migration(ptr noundef %.val, i32 noundef 0) #7 ; 2 uses
  %.not17 = icmp eq i32 %i.z, 0
  br i1 %.not17, label %bb.n, label %i915_gem_object_pin_pages.exit

bb.n:                                             ; preds = %bb.m
  %i.aa = load volatile i32, ptr %i.i, align 8    ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %raw_atomic_fetch_add_unless.exit.i, label %.lr.ph.i, !prof !19

.lr.ph.i:                                         ; preds = %bb.n, %arch_atomic_try_cmpxchg.exit.i
  %.047.i = phi i32 [ %i.ah, %arch_atomic_try_cmpxchg.exit.i ], [ %i.aa, %bb.n ] ; 2 uses
  %i.ac = add i32 %.047.i, 1
  %i.ad = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.i, i32 range(i32 2, 1) %i.ac, ptr elementtype(i32) %i.i, i32 %.047.i) #6, !srcloc !20 ; 2 uses
  %i.ae = extractvalue { i8, i32 } %i.ad, 0       ; 2 uses
  %i.af = icmp ult i8 %i.ae, 2
  call void @llvm.assume(i1 %i.af)
  %i.ag = trunc nuw i8 %i.ae to i1
  br i1 %i.ag, label %.thread10.i, label %arch_atomic_try_cmpxchg.exit.i, !prof !12

arch_atomic_try_cmpxchg.exit.i:                   ; preds = %.lr.ph.i
  %i.ah = extractvalue { i8, i32 } %i.ad, 1       ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %raw_atomic_fetch_add_unless.exit.i, label %.lr.ph.i, !prof !21

raw_atomic_fetch_add_unless.exit.i:               ; preds = %arch_atomic_try_cmpxchg.exit.i, %bb.n
  %i.aj = call i32 @__i915_gem_object_get_pages(ptr noundef %.val) #7
  br label %i915_gem_object_pin_pages.exit

i915_gem_object_pin_pages.exit:                   ; preds = %raw_atomic_fetch_add_unless.exit.i, %bb.m, %bb.l
  %.1 = phi i32 [ %i.aj, %raw_atomic_fetch_add_unless.exit.i ], [ %i.y, %bb.l ], [ %i.z, %bb.m ] ; 2 uses
  %i.ak = icmp eq i32 %.1, -35
  br i1 %i.ak, label %bb.o, label %.thread10.i

bb.o:                                             ; preds = %i915_gem_object_pin_pages.exit.thread21, %i915_gem_object_pin_pages.exit
  %i.al = call i32 @i915_gem_ww_ctx_backoff(ptr noundef nonnull %2) #7 ; 2 uses
  switch i32 %i.al, label %.thread10.i [
    i32 0, label %__i915_gem_ww_fini.exit
    i32 -35, label %__i915_gem_ww_fini.exit
  ]

.thread10.i:                                      ; preds = %.lr.ph.i, %bb.i, %bb.o, %i915_gem_object_pin_pages.exit
  %.013.i = phi i32 [ %i.al, %bb.o ], [ %.1, %i915_gem_object_pin_pages.exit ], [ %spec.store.select.i6.i, %bb.i ], [ 0, %.lr.ph.i ]
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %2) #7
  br label %__i915_gem_ww_fini.exit

__i915_gem_ww_fini.exit:                          ; preds = %bb.o, %bb.o, %.thread10.i
  %.09.i = phi i32 [ -35, %bb.o ], [ %.013.i, %.thread10.i ], [ -35, %bb.o ] ; 2 uses
  %i.am = icmp eq i32 %.09.i, -35
  br i1 %i.am, label %bb.c, label %.loopexit, !llvm.loop !22

.loopexit:                                        ; preds = %__i915_gem_ww_fini.exit, %bb.a
  %.012 = phi i32 [ -95, %bb.a ], [ %.09.i, %__i915_gem_ww_fini.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret i32 %.012
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i915_gem_dmabuf_detach(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val, i64 688     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.b, ptr elementtype(i32) %i.b) #6, !srcloc !24
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @i915_gem_map_dma_buf(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 112
  %.val = load ptr, ptr %i.b, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 32), align 16
  %i.d = tail call noalias align 8 dereferenceable_or_null(16) ptr @__kmalloc_cache_noprof(ptr noundef %i.c, i32 noundef 3264, i64 noundef 16) #8 ; 7 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.val, i64 760     ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 12
  %i.h = load i32, ptr %i.g, align 4
  %i.i = tail call i32 @sg_alloc_table(ptr noundef nonnull %i.d, i32 noundef %i.h, i32 noundef 3264) #7 ; 2 uses
  %.not36 = icmp eq i32 %i.i, 0
  br i1 %.not36, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %.not46 = icmp eq i32 %i.l, 0
  br i1 %.not46, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.m = load ptr, ptr %i.j, align 8
  %i.n = load ptr, ptr %i.d, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %sg_next.exit42
  %.03045 = phi ptr [ %.06.i40, %sg_next.exit42 ], [ %i.m, %.lr.ph.preheader ] ; 4 uses
  %.03144 = phi ptr [ %.06.i, %sg_next.exit42 ], [ %i.n, %.lr.ph.preheader ] ; 5 uses
  %.03343 = phi i32 [ %i.ab, %sg_next.exit42 ], [ 0, %.lr.ph.preheader ]
  %.030.val = load i64, ptr %.03045, align 8
  %i.o = and i64 %.030.val, -4
  %i.p = getelementptr i8, ptr %.03045, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %i.r = load i64, ptr %.03144, align 8           ; 2 uses
  %i.s = and i64 %i.r, 3
  %i.t = or disjoint i64 %i.s, %i.o
  store i64 %i.t, ptr %.03144, align 8
  %i.u = getelementptr i8, ptr %.03144, i64 8
  store i32 0, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %.03144, i64 12
  store i32 %i.q, ptr %i.v, align 4
  %i.w = and i64 %i.r, 2
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %bb.d, label %sg_next.exit

bb.d:                                             ; preds = %.lr.ph
  %i.x = getelementptr i8, ptr %.03144, i64 32    ; 2 uses
  %.val7.i = load i64, ptr %i.x, align 8          ; 2 uses
  %i.y = trunc i64 %.val7.i to i1
  br i1 %i.y, label %bb.e, label %sg_next.exit, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.z = and i64 %.val7.i, -4
  %i.aa = inttoptr i64 %i.z to ptr
  br label %sg_next.exit

sg_next.exit:                                     ; preds = %.lr.ph, %bb.d, %bb.e
  %.06.i = phi ptr [ null, %.lr.ph ], [ %i.aa, %bb.e ], [ %i.x, %bb.d ]
  %i.ab = add nuw i32 %.03343, 1                  ; 2 uses
  %.val.i38 = load i64, ptr %.03045, align 8
  %i.ac = and i64 %.val.i38, 2
  %.not.i39 = icmp eq i64 %i.ac, 0
  br i1 %.not.i39, label %bb.f, label %sg_next.exit42

bb.f:                                             ; preds = %sg_next.exit
  %i.ad = getelementptr i8, ptr %.03045, i64 32   ; 2 uses
  %.val7.i41 = load i64, ptr %i.ad, align 8       ; 2 uses
  %i.ae = trunc i64 %.val7.i41 to i1
  br i1 %i.ae, label %bb.g, label %sg_next.exit42, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.af = and i64 %.val7.i41, -4
  %i.ag = inttoptr i64 %i.af to ptr
  br label %sg_next.exit42

sg_next.exit42:                                   ; preds = %sg_next.exit, %bb.f, %bb.g
  %.06.i40 = phi ptr [ null, %sg_next.exit ], [ %i.ag, %bb.g ], [ %i.ad, %bb.f ]
  %i.ah = load ptr, ptr %i.e, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 12
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp ult i32 %i.ab, %i.aj
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !25

._crit_edge:                                      ; preds = %sg_next.exit42, %bb.c
  %i.al = getelementptr i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call i32 @dma_map_sgtable(ptr noundef %i.am, ptr noundef nonnull %i.d, i32 noundef %1, i64 noundef 32) #7 ; 2 uses
  %.not37 = icmp eq i32 %i.an, 0
  br i1 %.not37, label %bb.k, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  tail call void @sg_free_table(ptr noundef nonnull %i.d) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %.032 = phi i32 [ %i.i, %bb.b ], [ %i.an, %bb.h ]
  tail call void @kfree(ptr noundef nonnull %i.d) #7
  %i.ao = sext i32 %.032 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.1 = phi i64 [ %i.ao, %bb.i ], [ -12, %bb.a ]
  %i.ap = inttoptr i64 %.1 to ptr
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j
  %.0 = phi ptr [ %i.ap, %bb.j ], [ %i.d, %._crit_edge ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_gem_unmap_dma_buf(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_gem_dmabuf_release(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @i915_gem_begin_cpu_access(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.i915_gem_ww_ctx, align 8    ; 12 uses
  %i.a = getelementptr i8, ptr %0, i64 112
  %.val = load ptr, ptr %i.a, align 8             ; 13 uses
  %i.b = icmp ult i32 %1, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false), !annotation !16
  call void @i915_gem_ww_ctx_init(ptr noundef nonnull %2, i1 noundef zeroext true) #7
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = getelementptr i8, ptr %.val, i64 248
  %i.e = getelementptr i8, ptr %.val, i64 544     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.h = getelementptr i8, ptr %.val, i64 552
  %i.i = getelementptr i8, ptr %.val, i64 688     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %bb.a
  %i.k = load i8, ptr %i.c, align 8, !range !17, !noundef !18
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = load ptr, ptr %i.d, align 8              ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = call i32 @ww_mutex_lock_interruptible(ptr noundef %i.m, ptr noundef nonnull %2) #7
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = call i32 @ww_mutex_lock(ptr noundef %i.m, ptr noundef nonnull %2) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i32 [ %i.n, %bb.c ], [ %i.o, %bb.d ] ; 4 uses
  %i.p = icmp eq i32 %.0.i.i, 0
  br i1 %i.p, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.q = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val, i32 1, ptr elementtype(i32) %.val) #6, !srcloc !10 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.r = add i32 %i.q, 1
  %i.s = or i32 %i.r, %i.q
  %.not10.i.i.i.i.i.i.i.i = icmp sgt i32 %i.s, -1
  br i1 %.not10.i.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i.i, label %.sink.split.i.i.i.i.i.i.i.i, !prof !12

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.f
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.f ], [ 1, %bb.g ]
  call void @refcount_warn_saturate(ptr noundef %.val, i32 noundef %.sink.i.i.i.i.i.i.i.i) #7
  br label %i915_gem_object_get.exit.i.i

i915_gem_object_get.exit.i.i:                     ; preds = %bb.g, %.sink.split.i.i.i.i.i.i.i.i
  %i.t = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr %i.e, ptr %i.g, align 8
  store ptr %i.f, ptr %i.e, align 8
  store ptr %i.t, ptr %i.h, align 8
  store volatile ptr %i.e, ptr %i.t, align 8
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.u = icmp eq i32 %.0.i.i, -114
  %spec.store.select.i6.i = select i1 %i.u, i32 0, i32 %.0.i.i
  switch i32 %.0.i.i, label %i915_gem_object_pin_pages.exit [
    i32 -35, label %bb.i
    i32 -114, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.v = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val, i32 1, ptr elementtype(i32) %.val) #6, !srcloc !10 ; 3 uses
  %.not.i.i.i.i.i.i19.i7.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i.i.i19.i7.i, label %.sink.split.i.i.i.i.i.i21.i9.i, label %bb.j, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.w = add i32 %i.v, 1
  %i.x = or i32 %i.w, %i.v
  %.not10.i.i.i.i.i.i20.i8.i = icmp sgt i32 %i.x, -1
  br i1 %.not10.i.i.i.i.i.i20.i8.i, label %.thread, label %.sink.split.i.i.i.i.i.i21.i9.i, !prof !12

.sink.split.i.i.i.i.i.i21.i9.i:                   ; preds = %bb.j, %bb.i
  %.sink.i.i.i.i.i.i22.i10.i = phi i32 [ 2, %bb.i ], [ 1, %bb.j ]
  call void @refcount_warn_saturate(ptr noundef %.val, i32 noundef %.sink.i.i.i.i.i.i22.i10.i) #7
  br label %.thread

.thread:                                          ; preds = %bb.j, %.sink.split.i.i.i.i.i.i21.i9.i
  store ptr %.val, ptr %i.j, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.h, %i915_gem_object_get.exit.i.i
  %i.y = load volatile i32, ptr %i.i, align 8     ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %raw_atomic_fetch_add_unless.exit.i, label %.lr.ph.i, !prof !19

.lr.ph.i:                                         ; preds = %bb.k, %arch_atomic_try_cmpxchg.exit.i
  %.047.i = phi i32 [ %i.af, %arch_atomic_try_cmpxchg.exit.i ], [ %i.y, %bb.k ] ; 2 uses
  %i.aa = add i32 %.047.i, 1
  %i.ab = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.i, i32 range(i32 2, 1) %i.aa, ptr elementtype(i32) %i.i, i32 %.047.i) #6, !srcloc !20 ; 2 uses
  %i.ac = extractvalue { i8, i32 } %i.ab, 0       ; 2 uses
  %i.ad = icmp ult i8 %i.ac, 2
  call void @llvm.assume(i1 %i.ad)
  %i.ae = trunc nuw i8 %i.ac to i1
  br i1 %i.ae, label %i915_gem_object_pin_pages.exit.thread, label %arch_atomic_try_cmpxchg.exit.i, !prof !12

arch_atomic_try_cmpxchg.exit.i:                   ; preds = %.lr.ph.i
  %i.af = extractvalue { i8, i32 } %i.ab, 1       ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %raw_atomic_fetch_add_unless.exit.i, label %.lr.ph.i, !prof !21

raw_atomic_fetch_add_unless.exit.i:               ; preds = %arch_atomic_try_cmpxchg.exit.i, %bb.k
  %3 = call i32 @__i915_gem_object_get_pages(ptr noundef %.val) #7
  br label %i915_gem_object_pin_pages.exit

i915_gem_object_pin_pages.exit:                   ; preds = %bb.h, %raw_atomic_fetch_add_unless.exit.i
  %.0 = phi i32 [ %spec.store.select.i6.i, %bb.h ], [ %3, %raw_atomic_fetch_add_unless.exit.i ] ; 2 uses
  %.not14 = icmp eq i32 %.0, 0
  br i1 %.not14, label %i915_gem_object_pin_pages.exit.thread, label %i915_gem_object_pin_pages.exit.thread29

i915_gem_object_pin_pages.exit.thread:            ; preds = %.lr.ph.i, %i915_gem_object_pin_pages.exit
  %i.ah = call i32 @i915_gem_object_set_to_cpu_domain(ptr noundef %.val, i1 noundef zeroext %i.b) #7
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.i, ptr elementtype(i32) %i.i) #6, !srcloc !24
  br label %i915_gem_object_pin_pages.exit.thread29

i915_gem_object_pin_pages.exit.thread29:          ; preds = %i915_gem_object_pin_pages.exit.thread, %i915_gem_object_pin_pages.exit
  %.1 = phi i32 [ %.0, %i915_gem_object_pin_pages.exit ], [ %i.ah, %i915_gem_object_pin_pages.exit.thread ] ; 2 uses
  %i.ai = icmp eq i32 %.1, -35
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread, %i915_gem_object_pin_pages.exit.thread29
  %i.aj = call i32 @i915_gem_ww_ctx_backoff(ptr noundef nonnull %2) #7 ; 2 uses
  %.not15 = icmp eq i32 %i.aj, 0
  br i1 %.not15, label %bb.b, label %bb.m

bb.m:                                             ; preds = %bb.l, %i915_gem_object_pin_pages.exit.thread29
  %.2 = phi i32 [ %i.aj, %bb.l ], [ %.1, %i915_gem_object_pin_pages.exit.thread29 ]
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret i32 %.2
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @i915_gem_end_cpu_access(ptr nofree noundef readonly captures(none) %0, i32 %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.i915_gem_ww_ctx, align 8    ; 12 uses
  %i.a = getelementptr i8, ptr %0, i64 112
  %.val = load ptr, ptr %i.a, align 8             ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false), !annotation !16
  call void @i915_gem_ww_ctx_init(ptr noundef nonnull %2, i1 noundef zeroext true) #7
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.c = getelementptr i8, ptr %.val, i64 248
  %i.d = getelementptr i8, ptr %.val, i64 544     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.g = getelementptr i8, ptr %.val, i64 552
  %i.h = getelementptr i8, ptr %.val, i64 688     ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %bb.a
  %i.j = load i8, ptr %i.b, align 8, !range !17, !noundef !18
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = load ptr, ptr %i.c, align 8              ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = call i32 @ww_mutex_lock_interruptible(ptr noundef %i.l, ptr noundef nonnull %2) #7
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = call i32 @ww_mutex_lock(ptr noundef %i.l, ptr noundef nonnull %2) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i32 [ %i.m, %bb.c ], [ %i.n, %bb.d ] ; 4 uses
  %i.o = icmp eq i32 %.0.i.i, 0
  br i1 %i.o, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val, i32 1, ptr elementtype(i32) %.val) #6, !srcloc !10 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.q = add i32 %i.p, 1
  %i.r = or i32 %i.q, %i.p
  %.not10.i.i.i.i.i.i.i.i = icmp sgt i32 %i.r, -1
  br i1 %.not10.i.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i.i, label %.sink.split.i.i.i.i.i.i.i.i, !prof !12

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.f
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.f ], [ 1, %bb.g ]
  call void @refcount_warn_saturate(ptr noundef %.val, i32 noundef %.sink.i.i.i.i.i.i.i.i) #7
  br label %i915_gem_object_get.exit.i.i

i915_gem_object_get.exit.i.i:                     ; preds = %bb.g, %.sink.split.i.i.i.i.i.i.i.i
  %i.s = load ptr, ptr %i.f, align 8              ; 2 uses
  store ptr %i.d, ptr %i.f, align 8
  store ptr %i.e, ptr %i.d, align 8
  store ptr %i.s, ptr %i.g, align 8
  store volatile ptr %i.d, ptr %i.s, align 8
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.t = icmp eq i32 %.0.i.i, -114
  %spec.store.select.i6.i = select i1 %i.t, i32 0, i32 %.0.i.i
  switch i32 %.0.i.i, label %i915_gem_object_pin_pages.exit [
    i32 -35, label %bb.i
    i32 -114, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.u = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val, i32 1, ptr elementtype(i32) %.val) #6, !srcloc !10 ; 3 uses
  %.not.i.i.i.i.i.i19.i7.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i.i19.i7.i, label %.sink.split.i.i.i.i.i.i21.i9.i, label %bb.j, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.v = add i32 %i.u, 1
  %i.w = or i32 %i.v, %i.u
  %.not10.i.i.i.i.i.i20.i8.i = icmp sgt i32 %i.w, -1
  br i1 %.not10.i.i.i.i.i.i20.i8.i, label %.thread, label %.sink.split.i.i.i.i.i.i21.i9.i, !prof !12

.sink.split.i.i.i.i.i.i21.i9.i:                   ; preds = %bb.j, %bb.i
  %.sink.i.i.i.i.i.i22.i10.i = phi i32 [ 2, %bb.i ], [ 1, %bb.j ]
  call void @refcount_warn_saturate(ptr noundef %.val, i32 noundef %.sink.i.i.i.i.i.i22.i10.i) #7
  br label %.thread

.thread:                                          ; preds = %bb.j, %.sink.split.i.i.i.i.i.i21.i9.i
  store ptr %.val, ptr %i.i, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.h, %i915_gem_object_get.exit.i.i
  %i.x = load volatile i32, ptr %i.h, align 8     ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %raw_atomic_fetch_add_unless.exit.i, label %.lr.ph.i, !prof !19

.lr.ph.i:                                         ; preds = %bb.k, %arch_atomic_try_cmpxchg.exit.i
  %.047.i = phi i32 [ %i.ae, %arch_atomic_try_cmpxchg.exit.i ], [ %i.x, %bb.k ] ; 2 uses
  %i.z = add i32 %.047.i, 1
  %i.aa = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.h, i32 range(i32 2, 1) %i.z, ptr elementtype(i32) %i.h, i32 %.047.i) #6, !srcloc !20 ; 2 uses
  %i.ab = extractvalue { i8, i32 } %i.aa, 0       ; 2 uses
  %i.ac = icmp ult i8 %i.ab, 2
  call void @llvm.assume(i1 %i.ac)
  %i.ad = trunc nuw i8 %i.ab to i1
  br i1 %i.ad, label %i915_gem_object_pin_pages.exit.thread, label %arch_atomic_try_cmpxchg.exit.i, !prof !12

arch_atomic_try_cmpxchg.exit.i:                   ; preds = %.lr.ph.i
  %i.ae = extractvalue { i8, i32 } %i.aa, 1       ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %raw_atomic_fetch_add_unless.exit.i, label %.lr.ph.i, !prof !21

raw_atomic_fetch_add_unless.exit.i:               ; preds = %arch_atomic_try_cmpxchg.exit.i, %bb.k
  %3 = call i32 @__i915_gem_object_get_pages(ptr noundef %.val) #7
  br label %i915_gem_object_pin_pages.exit

i915_gem_object_pin_pages.exit:                   ; preds = %bb.h, %raw_atomic_fetch_add_unless.exit.i
  %.0 = phi i32 [ %spec.store.select.i6.i, %bb.h ], [ %3, %raw_atomic_fetch_add_unless.exit.i ] ; 2 uses
  %.not11 = icmp eq i32 %.0, 0
  br i1 %.not11, label %i915_gem_object_pin_pages.exit.thread, label %i915_gem_object_pin_pages.exit.thread26

i915_gem_object_pin_pages.exit.thread:            ; preds = %.lr.ph.i, %i915_gem_object_pin_pages.exit
  %i.ag = call i32 @i915_gem_object_set_to_gtt_domain(ptr noundef %.val, i1 noundef zeroext false) #7
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.h, ptr elementtype(i32) %i.h) #6, !srcloc !24
  br label %i915_gem_object_pin_pages.exit.thread26

i915_gem_object_pin_pages.exit.thread26:          ; preds = %i915_gem_object_pin_pages.exit.thread, %i915_gem_object_pin_pages.exit
  %.1 = phi i32 [ %.0, %i915_gem_object_pin_pages.exit ], [ %i.ag, %i915_gem_object_pin_pages.exit.thread ] ; 2 uses
  %i.ah = icmp eq i32 %.1, -35
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread, %i915_gem_object_pin_pages.exit.thread26
  %i.ai = call i32 @i915_gem_ww_ctx_backoff(ptr noundef nonnull %2) #7 ; 2 uses
  %.not12 = icmp eq i32 %i.ai, 0
  br i1 %.not12, label %bb.b, label %bb.m

bb.m:                                             ; preds = %bb.l, %i915_gem_object_pin_pages.exit.thread26
  %.2 = phi i32 [ %i.ai, %bb.l ], [ %.1, %i915_gem_object_pin_pages.exit.thread26 ]
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret i32 %.2
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @i915_gem_dmabuf_mmap(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %.val = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.b = getelementptr i8, ptr %.val, i64 216
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = load i64, ptr %1, align 64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ult i64 %i.c, %i.g
  br i1 %i.h, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %.val, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 1648
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 24
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, 2
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i32 @drm_gem_prime_mmap(ptr noundef %.val, ptr noundef %1) #7
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %.val, i64 16      ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 4 uses
  %.not17 = icmp eq ptr %i.r, null
  br i1 %.not17, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 264
  %i.v = load ptr, ptr %i.u, align 8
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = tail call i32 @compat_vma_mmap(ptr noundef nonnull %i.r, ptr noundef %1) #7
  br label %vfs_mmap.exit

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.t, i64 96
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call i32 %i.y(ptr noundef nonnull %i.r, ptr noundef %1) #7, !inline_history !26
  br label %vfs_mmap.exit

vfs_mmap.exit:                                    ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %i.w, %bb.f ], [ %i.z, %bb.g ] ; 2 uses
  %.not18 = icmp eq i32 %.0.i, 0
  br i1 %.not18, label %bb.h, label %bb.i

bb.h:                                             ; preds = %vfs_mmap.exit
  %i.aa = load ptr, ptr %i.q, align 8
  tail call void @vma_set_file(ptr noundef %1, ptr noundef %i.aa) #7
  br label %bb.i

bb.i:                                             ; preds = %vfs_mmap.exit, %bb.d, %bb.a, %bb.h, %bb.c
  %.0 = phi i32 [ -22, %bb.a ], [ %i.p, %bb.c ], [ -19, %bb.d ], [ 0, %bb.h ], [ %.0.i, %vfs_mmap.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @i915_gem_dmabuf_vmap(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %.val = load ptr, ptr %i.a, align 8
  %i.b = tail call ptr @i915_gem_object_pin_map(ptr noundef %.val, i32 noundef 0) #7 ; 3 uses
  %i.c = icmp ugt ptr %i.b, inttoptr (i64 -4096 to ptr)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = trunc i64 %i.d to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr %i.b, ptr %1, align 8
  %i.f = getelementptr i8, ptr %1, i64 8
  store i8 0, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i915_gem_dmabuf_vunmap(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %.val = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.b = getelementptr i8, ptr %.val, i64 216
  %i.c = load i64, ptr %i.b, align 8
  tail call void @__i915_gem_object_flush_map(ptr noundef %.val, i64 noundef 0, i64 noundef %i.c) #7
  %i.d = getelementptr i8, ptr %.val, i64 688     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.d, ptr elementtype(i32) %i.d) #6, !srcloc !24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @i915_gem_object_can_migrate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_ww_ctx_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_object_migrate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_object_wait_migration(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__i915_gem_object_get_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_ww_ctx_backoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_ww_ctx_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_object_set_to_cpu_domain(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_object_set_to_gtt_domain(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @vma_set_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @compat_vma_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_gem_object_pin_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__i915_gem_object_flush_map(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @i915_gem_object_get_pages_dmabuf(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
end_hunk_0

inline.NumInlined: 130
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@__i915_gem_object_set_pages:bb.a
bb.n:                                             ; preds = %find_next_bit.exit
  %i.ay = lshr i32 %.0.lcssa.i, %i.aw
  %.not56 = icmp eq i32 %i.ay, 0
  br i1 %.not56, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = and i64 %i.av, 4294967295
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = or i32 %i.ar, %i.bb                     ; 2 uses
  store i32 %i.bc, ptr %i.ao, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.bd = phi i32 [ %i.ar, %bb.n ], [ %i.bc, %bb.o ]
  %i.be = shl i64 %i.av, 32
  %sext = add i64 %i.be, 4294967296
  %i.bf = ashr exact i64 %sext, 32                ; 2 uses
  %i.bg = icmp ugt i64 %i.bf, 21
  br i1 %i.bg, label %find_next_bit.exit.thread, label %bb.m, !prof !18, !llvm.loop !19

find_next_bit.exit.thread:                        ; preds = %bb.m, %bb.p, %find_next_bit.exit
  %i.bh = getelementptr i8, ptr %0, i64 480
  %.val57 = load ptr, ptr %i.bh, align 8
  %.val57.val = load i32, ptr %.val57, align 8
  %i.bi = getelementptr i8, ptr %0, i64 680
  %.val58 = load i32, ptr %i.bi, align 8
  %i.bj = and i32 %.val58, 127
  %.not64 = icmp eq i32 %i.bj, 0
  br i1 %.not64, label %bb.r, label %bb.q

bb.q:                                             ; preds = %find_next_bit.exit.thread
  %i.bk = getelementptr i8, ptr %i.b, i64 2560
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = and i64 %i.bl, 1
  %.not54 = icmp eq i64 %i.bm, 0
  br i1 %.not54, label %bb.r, label %.critedge

.critedge:                                        ; preds = %bb.q
  %i.bn = getelementptr i8, ptr %0, i64 649       ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.bn, i32 8, ptr elementtype(i8) %i.bn) #7, !srcloc !20
  %i.bo = getelementptr i8, ptr %0, i64 692       ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bo, ptr elementtype(i32) %i.bo) #7, !srcloc !21
  br label %bb.t

bb.r:                                             ; preds = %bb.q, %find_next_bit.exit.thread
  %i.bp = and i32 %.val57.val, 6
  %or.cond.not = icmp eq i32 %i.bp, 2
  br i1 %or.cond.not, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bq = getelementptr i8, ptr %i.b, i64 2840    ; 2 uses
  %i.br = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.bq) #8
  %i.bs = getelementptr i8, ptr %i.b, i64 3048    ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 8
  %i.bv = getelementptr i8, ptr %0, i64 216
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = getelementptr i8, ptr %i.b, i64 3040    ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = add i64 %i.by, %i.bw
  store i64 %i.bz, ptr %i.bx, align 8
  %i.ca = getelementptr i8, ptr %0, i64 912
  %i.cb = load i8, ptr %i.ca, align 8
  %i.cc = and i8 %i.cb, 3
  %.not55 = icmp eq i8 %i.cc, 0
  %.051.v = select i1 %.not55, i64 2864, i64 2848
  %.051 = getelementptr i8, ptr %i.b, i64 %.051.v ; 2 uses
  %i.cd = getelementptr i8, ptr %0, i64 896       ; 3 uses
  %i.ce = getelementptr i8, ptr %.051, i64 8      ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  store ptr %i.cd, ptr %i.ce, align 8
  store ptr %.051, ptr %i.cd, align 8
  %i.cg = getelementptr i8, ptr %0, i64 904
  store ptr %i.cf, ptr %i.cg, align 8
  store volatile ptr %i.cd, ptr %i.cf, align 8
  %i.ch = getelementptr i8, ptr %0, i64 692
  store volatile i32 0, ptr %i.ch, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.bq, i64 noundef %i.br) #8
  br label %bb.t

bb.t:                                             ; preds = %.critedge, %bb.s, %bb.r
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @i915_gem_object_has_struct_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_clflush_sg(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @____i915_gem_object_get_pages(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 912
  %i.d = load i8, ptr %i.c, align 8
  %i.e = and i8 %i.d, 3
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.c ], [ null, %bb.b ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.h, i32 noundef 1, ptr noundef nonnull @.str.2) #8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 480
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call i32 %i.l(ptr noundef %0) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %__drm_to_dev.exit
  %.0 = phi i32 [ -14, %__drm_to_dev.exit ], [ %i.m, %bb.d ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @__i915_gem_object_get_pages(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 760
  %i.b = load volatile ptr, ptr %i.a, align 8     ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = icmp ule ptr %i.b, inttoptr (i64 -4096 to ptr)
  %spec.select.i.not.i = and i1 %.not.i.i, %i.c
  br i1 %spec.select.i.not.i, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @____i915_gem_object_get_pages(ptr noundef %0) #10 ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr i8, ptr %0, i64 688        ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e, ptr elementtype(i32) %i.e) #7, !srcloc !21
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @i915_gem_object_pin_pages_unlocked(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.i915_gem_ww_ctx, align 8    ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false), !annotation !22
  call void @i915_gem_ww_ctx_init(ptr noundef nonnull %1, i1 noundef zeroext true) #8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = getelementptr i8, ptr %0, i64 248
  %i.c = getelementptr i8, ptr %0, i64 544        ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 552
  %i.g = getelementptr i8, ptr %0, i64 688        ; 5 uses
  %i.h = getelementptr i8, ptr %0, i64 760
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.b

bb.b:                                             ; preds = %bb.m, %bb.a
  %i.j = load i8, ptr %i.a, align 8, !range !23, !noundef !24
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = load ptr, ptr %i.b, align 8              ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = call i32 @ww_mutex_lock_interruptible(ptr noundef %i.l, ptr noundef nonnull %1) #8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = call i32 @ww_mutex_lock(ptr noundef %i.l, ptr noundef nonnull %1) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i32 [ %i.m, %bb.c ], [ %i.n, %bb.d ] ; 4 uses
  %2 = icmp eq i32 %.0.i.i, 0
  br i1 %2, label %bb.f, label %3

bb.f:                                             ; preds = %bb.e
  %i.o = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 1, ptr elementtype(i32) %0) #7, !srcloc !25 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %bb.g, !prof !14

bb.g:                                             ; preds = %bb.f
  %i.p = add i32 %i.o, 1
  %i.q = or i32 %i.p, %i.o
  %.not10.i.i.i.i.i.i.i.i = icmp sgt i32 %i.q, -1
  br i1 %.not10.i.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i.i, label %.sink.split.i.i.i.i.i.i.i.i, !prof !10

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.f
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.f ], [ 1, %bb.g ]
  call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %.sink.i.i.i.i.i.i.i.i) #8
  br label %i915_gem_object_get.exit.i.i

i915_gem_object_get.exit.i.i:                     ; preds = %.sink.split.i.i.i.i.i.i.i.i, %bb.g
  %i.r = load ptr, ptr %i.e, align 8              ; 2 uses
  store ptr %i.c, ptr %i.e, align 8
  store ptr %i.d, ptr %i.c, align 8
  store ptr %i.r, ptr %i.f, align 8
  store volatile ptr %i.c, ptr %i.r, align 8
  br label %3

3:                                                ; preds = %i915_gem_object_get.exit.i.i, %bb.e
  %4 = icmp eq i32 %.0.i.i, -114
  %spec.store.select.i6.i = select i1 %4, i32 0, i32 %.0.i.i
  switch i32 %spec.store.select.i6.i, label %i915_gem_object_pin_pages.exit.thread [
    i32 -35, label %bb.h
    i32 0, label %bb.j
  ]

bb.h:                                             ; preds = %3
  %i.s = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 1, ptr elementtype(i32) %0) #7, !srcloc !25 ; 3 uses
  %.not.i.i.i.i.i.i19.i7.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i.i.i19.i7.i, label %.sink.split.i.i.i.i.i.i21.i9.i, label %bb.i, !prof !14

bb.i:                                             ; preds = %bb.h
  %i.t = add i32 %i.s, 1
  %i.u = or i32 %i.t, %i.s
  %.not10.i.i.i.i.i.i20.i8.i = icmp sgt i32 %i.u, -1
  br i1 %.not10.i.i.i.i.i.i20.i8.i, label %i915_gem_object_pin_pages.exit.thread11, label %.sink.split.i.i.i.i.i.i21.i9.i, !prof !10

.sink.split.i.i.i.i.i.i21.i9.i:                   ; preds = %bb.i, %bb.h
  %.sink.i.i.i.i.i.i22.i10.i = phi i32 [ 2, %bb.h ], [ 1, %bb.i ]
  call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %.sink.i.i.i.i.i.i22.i10.i) #8
  br label %i915_gem_object_pin_pages.exit.thread11

i915_gem_object_pin_pages.exit.thread11:          ; preds = %.sink.split.i.i.i.i.i.i21.i9.i, %bb.i
  store ptr %0, ptr %i.i, align 8
  br label %bb.m

bb.j:                                             ; preds = %3
  %i.v = load volatile i32, ptr %i.g, align 8     ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %raw_atomic_fetch_add_unless.exit.i, label %.lr.ph.i, !prof !26

.lr.ph.i:                                         ; preds = %bb.j, %arch_atomic_try_cmpxchg.exit.i
  %.047.i = phi i32 [ %i.ac, %arch_atomic_try_cmpxchg.exit.i ], [ %i.v, %bb.j ] ; 2 uses
  %i.x = add i32 %.047.i, 1
  %i.y = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.g, i32 range(i32 2, 1) %i.x, ptr elementtype(i32) %i.g, i32 %.047.i) #7, !srcloc !27 ; 2 uses
  %i.z = extractvalue { i8, i32 } %i.y, 0         ; 2 uses
  %i.aa = icmp ult i8 %i.z, 2
  call void @llvm.assume(i1 %i.aa)
  %i.ab = trunc nuw i8 %i.z to i1
  br i1 %i.ab, label %i915_gem_object_pin_pages.exit.thread, label %arch_atomic_try_cmpxchg.exit.i, !prof !10

arch_atomic_try_cmpxchg.exit.i:                   ; preds = %.lr.ph.i
  %i.ac = extractvalue { i8, i32 } %i.y, 1        ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %raw_atomic_fetch_add_unless.exit.i, label %.lr.ph.i, !prof !28

raw_atomic_fetch_add_unless.exit.i:               ; preds = %arch_atomic_try_cmpxchg.exit.i, %bb.j
  %i.ae = load volatile ptr, ptr %i.h, align 8    ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.ae, null
  %i.af = icmp ule ptr %i.ae, inttoptr (i64 -4096 to ptr)
  %spec.select.i.not.i.i.i = and i1 %.not.i.i.i.i, %i.af
  br i1 %spec.select.i.not.i.i.i, label %bb.l, label %bb.k, !prof !10

bb.k:                                             ; preds = %raw_atomic_fetch_add_unless.exit.i
  %i.ag = call i32 @____i915_gem_object_get_pages(ptr noundef %0) #10 ; 2 uses
  switch i32 %i.ag, label %i915_gem_object_pin_pages.exit.thread [
    i32 0, label %bb.l
    i32 -35, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k, %raw_atomic_fetch_add_unless.exit.i
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.g, ptr elementtype(i32) %i.g) #7, !srcloc !21
  br label %i915_gem_object_pin_pages.exit.thread

bb.m:                                             ; preds = %bb.k, %i915_gem_object_pin_pages.exit.thread11
  %i.ah = call i32 @i915_gem_ww_ctx_backoff(ptr noundef nonnull %1) #8 ; 2 uses
  %.not7 = icmp eq i32 %i.ah, 0
  br i1 %.not7, label %bb.b, label %i915_gem_object_pin_pages.exit.thread

i915_gem_object_pin_pages.exit.thread:            ; preds = %bb.k, %3, %bb.m, %.lr.ph.i, %bb.l
  %.1 = phi i32 [ 0, %.lr.ph.i ], [ 0, %bb.l ], [ %.0.i.i, %3 ], [ %i.ag, %bb.k ], [ %i.ah, %bb.m ]
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_ww_ctx_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_ww_ctx_backoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_ww_ctx_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @i915_gem_object_truncate(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 480
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 %i.d(ptr noundef %0) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @__i915_gem_object_unset_pages(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.radix_tree_iter, align 8    ; 14 uses
  %i.a = getelementptr i8, ptr %0, i64 760        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  store ptr null, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.b, null
  %i.c = icmp ugt ptr %i.b, inttoptr (i64 -4096 to ptr)
  %spec.select.i = or i1 %.not.i, %i.c
  br i1 %spec.select.i, label %flush_tlb_invalidate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 648
  %.val = load i64, ptr %i.d, align 8
  %i.e = and i64 %.val, 2
  %.not26 = icmp eq i64 %i.e, 0
  br i1 %.not26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 912        ; 2 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = and i8 %i.g, -4
  store i8 %i.h, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr i8, ptr %0, i64 480
  %.val22 = load ptr, ptr %i.i, align 8
  %.val22.val = load i32, ptr %.val22, align 8
  %i.j = and i32 %.val22.val, 4
  %.not27 = icmp eq i32 %i.j, 0
  br i1 %.not27, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @i915_gem_object_make_unshrinkable(ptr noundef %0) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr i8, ptr %0, i64 768        ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = and i64 %i.m, -4096
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %i.o) #8
  br i1 %i.p, label %bb.h, label %unmap_object.exit

bb.h:                                             ; preds = %bb.g
  tail call void @vunmap(ptr noundef %i.o) #8
  br label %unmap_object.exit

unmap_object.exit:                                ; preds = %bb.g, %bb.h
  store ptr null, ptr %i.k, align 8
  br label %bb.i

bb.i:                                             ; preds = %unmap_object.exit, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false), !annotation !22
  tail call void @__rcu_read_lock() #8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 800        ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %select.unfold.i

select.unfold.i.backedge:                         ; preds = %.lr.ph, %bb.k, %.critedge.i
  %.be53 = phi i64 [ %i.y, %.critedge.i ], [ %i.ag, %bb.k ], [ %i.ag, %.lr.ph ]
  %.0.i.be = phi ptr [ null, %.critedge.i ], [ null, %bb.k ], [ %i.af, %.lr.ph ]
  br label %select.unfold.i, !llvm.loop !29

select.unfold.i:                                  ; preds = %select.unfold.i.backedge, %bb.i
  %i.t = phi i64 [ 0, %bb.i ], [ %.be53, %select.unfold.i.backedge ]
  %.0.i = phi ptr [ null, %bb.i ], [ %.0.i.be, %select.unfold.i.backedge ] ; 2 uses
  %.not.i23 = icmp eq ptr %.0.i, null
  br i1 %.not.i23, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %select.unfold.i
  %i.u = call ptr @radix_tree_next_chunk(ptr noundef %i.s, ptr noundef nonnull %1, i32 noundef 0) #8 ; 2 uses
  %.not12.i = icmp eq ptr %i.u, null
  br i1 %.not12.i, label %bb.l, label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %bb.j
  %.pre.i = load i64, ptr %1, align 8
  br label %.critedge.i

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %select.unfold.i
  %i.v = phi i64 [ %i.t, %select.unfold.i ], [ %.pre.i, %..critedge_crit_edge.i ]
  %.1.i = phi ptr [ %.0.i, %select.unfold.i ], [ %i.u, %..critedge_crit_edge.i ]
  %i.w = call ptr @radix_tree_delete(ptr noundef %i.s, i64 noundef %i.v) #8 ; 0 uses
  %i.x = load i64, ptr %i.r, align 8
  %i.y = load i64, ptr %1, align 8                ; 3 uses
  %i.z = xor i64 %i.y, -1
  %i.aa = add i64 %i.x, %i.z                      ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph, label %select.unfold.i.backedge, !llvm.loop !29

bb.k:                                             ; preds = %.lr.ph
  %i.ac = add nsw i64 %i.ae, -1
  %i.ad = icmp sgt i64 %i.ae, 1
  br i1 %i.ad, label %.lr.ph, label %select.unfold.i.backedge, !llvm.loop !29

.lr.ph:                                           ; preds = %.critedge.i, %bb.k
  %i.ae = phi i64 [ %i.ac, %bb.k ], [ %i.aa, %.critedge.i ] ; 2 uses
  %.030.i15.i37 = phi ptr [ %i.af, %bb.k ], [ %.1.i, %.critedge.i ]
  %.val28.i36 = phi i64 [ %i.ag, %bb.k ], [ %i.y, %.critedge.i ]
  %i.af = getelementptr i8, ptr %.030.i15.i37, i64 8 ; 3 uses
  %i.ag = add i64 %.val28.i36, 1                  ; 4 uses
  store i64 %i.ag, ptr %1, align 8
  %i.ah = load ptr, ptr %i.af, align 8
  %.not.i20.i = icmp eq ptr %i.ah, null
  br i1 %.not.i20.i, label %bb.k, label %select.unfold.i.backedge, !prof !14

bb.l:                                             ; preds = %bb.j
  %i.ai = getelementptr i8, ptr %0, i64 856       ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %select.unfold25.i

select.unfold25.i.backedge:                       ; preds = %.lr.ph44, %bb.n, %.critedge2.i
  %.be = phi i64 [ %i.ao, %.critedge2.i ], [ %i.aw, %bb.n ], [ %i.aw, %.lr.ph44 ]
  %.2.i.be = phi ptr [ null, %.critedge2.i ], [ null, %bb.n ], [ %i.av, %.lr.ph44 ]
  br label %select.unfold25.i, !llvm.loop !30

select.unfold25.i:                                ; preds = %select.unfold25.i.backedge, %bb.l
  %i.aj = phi i64 [ 0, %bb.l ], [ %.be, %select.unfold25.i.backedge ]
  %.2.i = phi ptr [ null, %bb.l ], [ %.2.i.be, %select.unfold25.i.backedge ] ; 2 uses
  %.not13.i = icmp eq ptr %.2.i, null
  br i1 %.not13.i, label %bb.m, label %.critedge2.i

bb.m:                                             ; preds = %select.unfold25.i
  %i.ak = call ptr @radix_tree_next_chunk(ptr noundef %i.ai, ptr noundef nonnull %1, i32 noundef 0) #8 ; 2 uses
  %.not14.i = icmp eq ptr %i.ak, null
  br i1 %.not14.i, label %__i915_gem_object_reset_page_iter.exit, label %..critedge2_crit_edge.i

..critedge2_crit_edge.i:                          ; preds = %bb.m
  %.pre31.i = load i64, ptr %1, align 8
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %..critedge2_crit_edge.i, %select.unfold25.i
  %i.al = phi i64 [ %i.aj, %select.unfold25.i ], [ %.pre31.i, %..critedge2_crit_edge.i ]
  %.3.i = phi ptr [ %.2.i, %select.unfold25.i ], [ %i.ak, %..critedge2_crit_edge.i ]
  %i.am = call ptr @radix_tree_delete(ptr noundef %i.ai, i64 noundef %i.al) #8 ; 0 uses
  %i.an = load i64, ptr %i.r, align 8
  %i.ao = load i64, ptr %1, align 8               ; 3 uses
  %i.ap = xor i64 %i.ao, -1
  %i.aq = add i64 %i.an, %i.ap                    ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph44, label %select.unfold25.i.backedge, !llvm.loop !30

bb.n:                                             ; preds = %.lr.ph44
  %i.as = add nsw i64 %i.au, -1
  %i.at = icmp sgt i64 %i.au, 1
  br i1 %i.at, label %.lr.ph44, label %select.unfold25.i.backedge, !llvm.loop !30

.lr.ph44:                                         ; preds = %.critedge2.i, %bb.n
  %i.au = phi i64 [ %i.as, %bb.n ], [ %i.aq, %.critedge2.i ] ; 2 uses
  %.030.i.i43 = phi ptr [ %i.av, %bb.n ], [ %.3.i, %.critedge2.i ]
  %.val2230.i42 = phi i64 [ %i.aw, %bb.n ], [ %i.ao, %.critedge2.i ]
  %i.av = getelementptr i8, ptr %.030.i.i43, i64 8 ; 3 uses
  %i.aw = add i64 %.val2230.i42, 1                ; 4 uses
  store i64 %i.aw, ptr %1, align 8
end_hunk_0

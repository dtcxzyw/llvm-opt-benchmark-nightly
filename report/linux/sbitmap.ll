Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/sbitmap?download=true
inline.NumInlined: 114
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@sbitmap_bitmap_show:bb.a
emit_byte.exit55:                                 ; preds = %bb.n, %bb.o
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef @.str.22, i32 noundef %i.as) #11
  %i.ax = add i32 %.146.lcssa, 1
  br label %bb.p

bb.p:                                             ; preds = %emit_byte.exit55, %._crit_edge70
  %.3 = phi i32 [ %i.ax, %emit_byte.exit55 ], [ %.146.lcssa, %._crit_edge70 ]
  %.not52 = icmp eq i32 %.3, 0
  br i1 %.not52, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @seq_putc(ptr noundef %1, i8 noundef zeroext 10) #11
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.q, %bb.p
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @sbitmap_queue_init_node(ptr nofree noundef captures(address) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @sbitmap_init_node(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %3, i1 noundef zeroext true) #13 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 52
  store i32 -1, ptr %i.b, align 4
  %i.c = icmp ugt i32 %1, 63
  %i.d = tail call i32 @llvm.umax.i32(i32 %1, i32 15)
  %i.e = lshr i32 %i.d, 3
  %i.f = select i1 %i.c, i32 8, i32 %i.e
  %i.g = getelementptr i8, ptr %0, i64 32
  store i32 %i.f, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %0, i64 36
  store volatile i32 0, ptr %i.h, align 4
  %i.i = getelementptr i8, ptr %0, i64 48
  store volatile i32 0, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %0, i64 56
  store volatile i32 0, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %0, i64 60
  store volatile i32 0, ptr %i.k, align 4
  %i.l = or i32 %4, 256
  %i.m = and i32 %4, 17
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %kmalloc_type.exit, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.o = and i32 %4, 1
  %..i = add nuw nsw i32 %i.o, 1
  %i.p = zext nneg i32 %..i to i64
  br label %kmalloc_type.exit

kmalloc_type.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ 0, %bb.b ], [ %i.p, %bb.c ]
  %i.q = getelementptr [112 x i8], ptr @kmalloc_caches, i64 %.0.i
  %i.r = getelementptr i8, ptr %i.q, i64 72
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noalias align 8 dereferenceable_or_null(512) ptr @__kmalloc_cache_node_noprof(ptr noundef %i.s, i32 noundef range(i32 256, 0) %i.l, i32 noundef %5, i64 noundef 512) #14 ; 3 uses
  %i.u = getelementptr i8, ptr %0, i64 40         ; 8 uses
  store ptr %i.t, ptr %i.u, align 8
  %.not33 = icmp eq ptr %i.t, null
  br i1 %.not33, label %bb.d, label %.preheader.preheader

.preheader.preheader:                             ; preds = %kmalloc_type.exit
  tail call void @__init_waitqueue_head(ptr noundef nonnull %i.t, ptr noundef @.str.7, ptr noundef @sbitmap_queue_init_node.__key) #11
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 64
  tail call void @__init_waitqueue_head(ptr noundef %i.w, ptr noundef @.str.7, ptr noundef @sbitmap_queue_init_node.__key) #11
  %i.x = load ptr, ptr %i.u, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 128
  tail call void @__init_waitqueue_head(ptr noundef %i.y, ptr noundef @.str.7, ptr noundef @sbitmap_queue_init_node.__key) #11
  %i.z = load ptr, ptr %i.u, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 192
  tail call void @__init_waitqueue_head(ptr noundef %i.aa, ptr noundef @.str.7, ptr noundef @sbitmap_queue_init_node.__key) #11
  %i.ab = load ptr, ptr %i.u, align 8
  %i.ac = getelementptr i8, ptr %i.ab, i64 256
  tail call void @__init_waitqueue_head(ptr noundef %i.ac, ptr noundef @.str.7, ptr noundef @sbitmap_queue_init_node.__key) #11
  %i.ad = load ptr, ptr %i.u, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 320
  tail call void @__init_waitqueue_head(ptr noundef %i.ae, ptr noundef @.str.7, ptr noundef @sbitmap_queue_init_node.__key) #11
  %i.af = load ptr, ptr %i.u, align 8
  %i.ag = getelementptr i8, ptr %i.af, i64 384
  tail call void @__init_waitqueue_head(ptr noundef %i.ag, ptr noundef @.str.7, ptr noundef @sbitmap_queue_init_node.__key) #11
  %i.ah = load ptr, ptr %i.u, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 448
  tail call void @__init_waitqueue_head(ptr noundef %i.ai, ptr noundef @.str.7, ptr noundef @sbitmap_queue_init_node.__key) #11
  br label %.loopexit

bb.d:                                             ; preds = %kmalloc_type.exit
  %i.aj = getelementptr i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void @free_percpu(ptr noundef %i.ak) #11
  %i.al = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  tail call void @kvfree(ptr noundef %i.am) #11
  store ptr null, ptr %i.al, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.a, %bb.d
  %.0 = phi i32 [ -12, %bb.d ], [ %i.a, %bb.a ], [ 0, %.preheader.preheader ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local void @sbitmap_queue_recalculate_wake_batch(ptr nofree noundef captures(address) %0, i32 noundef %1) #5 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = add i32 %1, -1
  %i.c = add i32 %i.b, %i.a
  %i.d = udiv i32 %i.c, %1                        ; 2 uses
  %i.e = icmp ugt i32 %i.d, 63
  %i.f = tail call i32 @llvm.umax.i32(i32 %i.d, i32 15)
  %i.g = lshr i32 %i.f, 3
  %i.h = select i1 %i.e, i32 8, i32 %i.g
  %i.i = getelementptr i8, ptr %0, i64 32
  store volatile i32 %i.h, ptr %i.i, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @sbitmap_queue_resize(ptr nofree noundef captures(address) %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 52
  %.val.i = load i32, ptr %i.a, align 4
  %i.b = tail call i32 @llvm.umin.i32(i32 %1, i32 %.val.i) ; 2 uses
  %i.c = icmp ugt i32 %i.b, 63
  %i.d = tail call i32 @llvm.umax.i32(i32 %i.b, i32 15)
  %i.e = lshr i32 %i.d, 3
  %i.f = select i1 %i.c, i32 8, i32 %i.e          ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %.not.i = icmp eq i32 %i.h, %i.f
  br i1 %.not.i, label %sbitmap_queue_update_wake_batch.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store volatile i32 %i.f, ptr %i.g, align 8
  br label %sbitmap_queue_update_wake_batch.exit

sbitmap_queue_update_wake_batch.exit:             ; preds = %bb.a, %bb.b
  %i.i = getelementptr i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.l = load i32, ptr %i.k, align 8
  %.not.i3 = icmp eq i32 %i.l, 0
  br i1 %.not.i3, label %sbitmap_resize.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %sbitmap_queue_update_wake_batch.exit
  %i.m = getelementptr i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %sbitmap_deferred_clear.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %sbitmap_deferred_clear.exit.i ] ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr [128 x i8], ptr %i.n, i64 %indvars.iv.i ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 72       ; 2 uses
  %i.q = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.p) #11
  %i.r = getelementptr i8, ptr %i.o, i64 64       ; 3 uses
  %i.s = load i64, ptr %i.r, align 64
  %.not26.i.i = icmp eq i64 %i.s, 0
  br i1 %.not26.i.i, label %sbitmap_deferred_clear.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = tail call i64 asm sideeffect "xchgq ${0:q}, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.r, i64 0, ptr elementtype(i64) %i.r) #12, !srcloc !18
  %i.u = xor i64 %i.t, -1
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andq $1, $0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.o, i64 %i.u, ptr elementtype(i64) %i.o) #12, !srcloc !19
  br label %sbitmap_deferred_clear.exit.i

sbitmap_deferred_clear.exit.i:                    ; preds = %bb.d, %bb.c
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.p, i64 noundef %i.q) #11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.v = load i32, ptr %i.k, align 8
  %i.w = zext i32 %i.v to i64
  %i.x = icmp samesign ult i64 %indvars.iv.next.i, %i.w
  br i1 %i.x, label %bb.c, label %sbitmap_resize.exit, !llvm.loop !0

sbitmap_resize.exit:                              ; preds = %sbitmap_deferred_clear.exit.i, %sbitmap_queue_update_wake_batch.exit
  %i.y = shl nuw i32 1, %i.j
  store i32 %1, ptr %0, align 8
  %i.z = add i32 %1, -1
  %i.aa = add i32 %i.z, %i.y
  %i.ab = lshr i32 %i.aa, %i.j
  store i32 %i.ab, ptr %i.k, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @__sbitmap_queue_get(ptr nofree noundef captures(address) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @sbitmap_get(ptr noundef %0) #13
  ret i32 %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @__sbitmap_queue_get_batch(ptr nofree noundef captures(address) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = getelementptr i8, ptr %0, i64 12         ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !range !14, !noundef !15
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %.loopexit, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.e = load volatile i32, ptr %0, align 8       ; 4 uses
  %i.f = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.g) #12, !srcloc !21 ; 2 uses
  %.not.i = icmp ult i32 %i.h, %i.e
  br i1 %.not.i, label %update_alloc_hint_before_get.exit, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %.not14.i = icmp eq i32 %i.e, 0
  br i1 %.not14.i, label %get_random_u32_below.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @__get_random_u32_below(i32 noundef range(i32 1, 0) %i.e) #11
  br label %get_random_u32_below.exit.i

get_random_u32_below.exit.i:                      ; preds = %bb.d, %bb.c
  %i.j = phi i32 [ 0, %bb.c ], [ %i.i, %bb.d ]    ; 2 uses
  %i.k = load ptr, ptr %i.f, align 8
  tail call void asm sideeffect "movl $1, %gs:$0", "=*m,ri,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.k, i32 %i.j) #12, !srcloc !23
  br label %update_alloc_hint_before_get.exit

update_alloc_hint_before_get.exit:                ; preds = %bb.b, %get_random_u32_below.exit.i
  %.0.i55 = phi i32 [ %i.j, %get_random_u32_below.exit.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 4          ; 4 uses
  %i.m = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.n = load i32, ptr %i.m, align 8              ; 2 uses
  %.not71 = icmp eq i32 %i.n, 0
  br i1 %.not71, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %update_alloc_hint_before_get.exit
  %i.o = load i32, ptr %i.l, align 4
  %i.p = lshr i32 %.0.i55, %i.o
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr i8, ptr %0, i64 16
  %i.s = sext i32 %1 to i64
  %i.t = zext nneg i32 %1 to i64
  %notmask52 = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask52, -1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.p
  %i.v = phi i32 [ %i.n, %.lr.ph ], [ %i.ca, %bb.p ]
  %.04870 = phi i32 [ 0, %.lr.ph ], [ %i.cc, %bb.p ]
  %.04969 = phi i64 [ %i.q, %.lr.ph ], [ %spec.store.select, %bb.p ] ; 4 uses
  %i.w = load ptr, ptr %i.r, align 8
  %i.x = getelementptr [128 x i8], ptr %i.w, i64 %.04969 ; 9 uses
  %i.y = trunc i64 %.04969 to i32                 ; 2 uses
  %i.z = add i32 %i.v, -1
  %i.aa = icmp eq i32 %i.z, %i.y
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load i32, ptr %0, align 8
  %i.ac = load i32, ptr %i.l, align 4
  %i.ad = shl i32 %i.y, %i.ac
  %i.ae = sub i32 %i.ab, %i.ad
  br label %__map_depth.exit

bb.g:                                             ; preds = %bb.e
  %i.af = load i32, ptr %i.l, align 4
  %i.ag = shl nuw i32 1, %i.af
  br label %__map_depth.exit

__map_depth.exit:                                 ; preds = %bb.f, %bb.g
  %.0.i56 = phi i32 [ %i.ae, %bb.f ], [ %i.ag, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 0, ptr %i.a, align 8, !annotation !39
  %i.ah = getelementptr i8, ptr %i.x, i64 72      ; 2 uses
  %i.ai = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.ah) #11
  %i.aj = getelementptr i8, ptr %i.x, i64 64      ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 64
  %.not26.i = icmp eq i64 %i.ak, 0
  br i1 %.not26.i, label %sbitmap_deferred_clear.exit, label %bb.h

bb.h:                                             ; preds = %__map_depth.exit
  %i.al = call i64 asm sideeffect "xchgq ${0:q}, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aj, i64 0, ptr elementtype(i64) %i.aj) #12, !srcloc !18
  %i.am = xor i64 %i.al, -1
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andq $1, $0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.x, i64 %i.am, ptr elementtype(i64) %i.x) #12, !srcloc !19
  br label %sbitmap_deferred_clear.exit

sbitmap_deferred_clear.exit:                      ; preds = %__map_depth.exit, %bb.h
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.ah, i64 noundef %i.ai) #11
  %i.an = load volatile i64, ptr %i.x, align 64   ; 2 uses
  store i64 %i.an, ptr %i.a, align 8
  %i.ao = add i32 %.0.i56, -1
  %i.ap = zext nneg i32 %i.ao to i64
  %notmask = shl nsw i64 -1, %i.ap
  %i.aq = xor i64 %i.an, %notmask
  %i.ar = icmp eq i64 %i.aq, -1
  br i1 %i.ar, label %bb.p, label %find_first_zero_bit.exit

find_first_zero_bit.exit:                         ; preds = %sbitmap_deferred_clear.exit
  %i.as = zext i32 %.0.i56 to i64                 ; 2 uses
  %i.at = call i64 @_find_first_zero_bit(ptr noundef nonnull %i.a, i64 noundef range(i64 0, 4294967296) %i.as) #11 ; 4 uses
  %i.au = add i64 %i.at, %i.s
  %.not = icmp ugt i64 %i.au, %i.as
  br i1 %.not, label %bb.p, label %bb.i

bb.i:                                             ; preds = %find_first_zero_bit.exit
  %i.av = shl i64 %i.u, %i.at                     ; 3 uses
  %i.aw = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ax = or i64 %i.aw, %i.av
  %i.ay = call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgq $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.x, i64 %i.ax, ptr elementtype(i64) %i.x, i64 %i.aw) #12, !srcloc !40 ; 2 uses
  %i.az = extractvalue { i8, i64 } %i.ay, 0       ; 2 uses
  %i.ba = icmp ult i8 %i.az, 2
  call void @llvm.assume(i1 %i.ba)
  %i.bb = trunc nuw i8 %i.az to i1
  br i1 %i.bb, label %._crit_edge, label %arch_atomic64_try_cmpxchg.exit, !prof !41

arch_atomic64_try_cmpxchg.exit:                   ; preds = %bb.i, %arch_atomic64_try_cmpxchg.exit
  %i.bc = phi { i8, i64 } [ %i.bf, %arch_atomic64_try_cmpxchg.exit ], [ %i.ay, %bb.i ]
  %i.bd = extractvalue { i8, i64 } %i.bc, 1       ; 3 uses
  store i64 %i.bd, ptr %i.a, align 8
  %i.be = or i64 %i.bd, %i.av
  %i.bf = call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgq $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.x, i64 %i.be, ptr elementtype(i64) %i.x, i64 %i.bd) #12, !srcloc !40 ; 2 uses
  %i.bg = extractvalue { i8, i64 } %i.bf, 0       ; 2 uses
  %i.bh = icmp ult i8 %i.bg, 2
  call void @llvm.assume(i1 %i.bh)
  %i.bi = trunc nuw i8 %i.bg to i1
  br i1 %i.bi, label %._crit_edge, label %arch_atomic64_try_cmpxchg.exit, !prof !42

._crit_edge:                                      ; preds = %arch_atomic64_try_cmpxchg.exit, %bb.i
  %i.bj = load i64, ptr %i.a, align 8
  %i.bk = xor i64 %i.bj, -1
  %3 = and i64 %i.av, %i.bk
  %4 = lshr i64 %3, %i.at                         ; 2 uses
  %.not53 = icmp eq i64 %4, 0
  br i1 %.not53, label %bb.p, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.bl = load i32, ptr %i.l, align 4
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = shl i64 %.04969, %i.bm
  %i.bo = add i64 %i.bn, %i.at
  %i.bp = trunc i64 %i.bo to i32                  ; 2 uses
  store i32 %i.bp, ptr %2, align 4
  %i.bq = add i32 %1, %i.bp                       ; 4 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %i.f, align 8
  call void asm sideeffect "movl $1, %gs:$0", "=*m,ri,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bs, i32 0) #12, !srcloc !24
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bt = add i32 %i.bq, -1
  %i.bu = icmp eq i32 %i.bt, %.0.i55
  br i1 %i.bu, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = load i8, ptr %i.b, align 4, !range !14, !noundef !15
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.n, label %bb.o, !prof !20

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bx = add i32 %i.e, -1
  %.not.i58 = icmp ult i32 %i.bq, %i.bx
  %spec.store.select.i = select i1 %.not.i58, i32 %i.bq, i32 0
  %i.by = load ptr, ptr %i.f, align 8
  call void asm sideeffect "movl $1, %gs:$0", "=*m,ri,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.by, i32 %spec.store.select.i) #12, !srcloc !25
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit

bb.p:                                             ; preds = %sbitmap_deferred_clear.exit, %find_first_zero_bit.exit, %._crit_edge
  %i.bz = add i64 %.04969, 1                      ; 2 uses
  %i.ca = load i32, ptr %i.m, align 8             ; 3 uses
  %i.cb = zext i32 %i.ca to i64
  %.not54 = icmp ult i64 %i.bz, %i.cb
  %spec.store.select = select i1 %.not54, i64 %i.bz, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.cc = add nuw i32 %.04870, 1                  ; 2 uses
  %i.cd = icmp ult i32 %i.cc, %i.ca
  br i1 %i.cd, label %bb.e, label %.loopexit, !llvm.loop !38

.loopexit:                                        ; preds = %bb.p, %update_alloc_hint_before_get.exit, %bb.o, %bb.a
  %.4 = phi i64 [ 0, %bb.a ], [ %4, %bb.o ], [ 0, %update_alloc_hint_before_get.exit ], [ 0, %bb.p ]
  ret i64 %.4
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @sbitmap_queue_get_shallow(ptr nofree noundef captures(address) %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp ult i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "459: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 459b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 459) #12, !srcloc !43
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 570, i32 2307, i64 16) #12, !srcloc !44
  tail call void asm sideeffect "460: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 460b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 460) #12, !srcloc !45
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.d, label %.critedge.i, !prof !20

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "426: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 426b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 426) #12, !srcloc !46
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 330, i32 2307, i64 16) #12, !srcloc !47
  tail call void asm sideeffect "427: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 427b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 427) #12, !srcloc !48
  br label %sbitmap_get_shallow.exit

.critedge.i:                                      ; preds = %bb.c
  %i.f = load volatile i32, ptr %0, align 8       ; 4 uses
  %i.g = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.e) #12, !srcloc !21 ; 2 uses
  %.not.i.i = icmp ult i32 %i.g, %i.f
  br i1 %.not.i.i, label %update_alloc_hint_before_get.exit.i, label %bb.e, !prof !22

bb.e:                                             ; preds = %.critedge.i
  %.not14.i.i = icmp eq i32 %i.f, 0
  br i1 %.not14.i.i, label %get_random_u32_below.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call i32 @__get_random_u32_below(i32 noundef range(i32 1, 0) %i.f) #11
  br label %get_random_u32_below.exit.i.i

get_random_u32_below.exit.i.i:                    ; preds = %bb.f, %bb.e
  %i.i = phi i32 [ 0, %bb.e ], [ %i.h, %bb.f ]    ; 2 uses
  %i.j = load ptr, ptr %i.d, align 8
  tail call void asm sideeffect "movl $1, %gs:$0", "=*m,ri,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.j, i32 %i.i) #12, !srcloc !23
  br label %update_alloc_hint_before_get.exit.i

update_alloc_hint_before_get.exit.i:              ; preds = %get_random_u32_below.exit.i.i, %.critedge.i
  %.0.i.i = phi i32 [ %i.i, %get_random_u32_below.exit.i.i ], [ %i.g, %.critedge.i ] ; 3 uses
  %i.k = getelementptr i8, ptr %0, i64 4
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = lshr i32 %.0.i.i, %i.l
  %notmask.i.i = shl nsw i32 -1, %i.l
  %i.n = xor i32 %notmask.i.i, -1
  %i.o = and i32 %.0.i.i, %i.n
  %i.p = tail call fastcc i32 @sbitmap_find_bit(ptr noundef readonly %0, i32 noundef %1, i32 noundef %i.m, i32 noundef %i.o, i1 noundef zeroext true) #13, !srcloc !49 ; 5 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %update_alloc_hint_before_get.exit.i
  %i.r = load ptr, ptr %i.d, align 8
  tail call void asm sideeffect "movl $1, %gs:$0", "=*m,ri,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.r, i32 0) #12, !srcloc !24
  br label %sbitmap_get_shallow.exit

bb.h:                                             ; preds = %update_alloc_hint_before_get.exit.i
  %i.s = icmp eq i32 %i.p, %.0.i.i
  br i1 %i.s, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr i8, ptr %0, i64 12
  %i.u = load i8, ptr %i.t, align 4, !range !14, !noundef !15
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.j, label %sbitmap_get_shallow.exit, !prof !20

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = add nuw i32 %i.p, 1                      ; 2 uses
  %i.x = add i32 %i.f, -1
  %.not.i17.i = icmp ult i32 %i.w, %i.x
  %spec.store.select.i.i = select i1 %.not.i17.i, i32 %i.w, i32 0
  %i.y = load ptr, ptr %i.d, align 8
  tail call void asm sideeffect "movl $1, %gs:$0", "=*m,ri,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.y, i32 %spec.store.select.i.i) #12, !srcloc !25
  br label %sbitmap_get_shallow.exit

sbitmap_get_shallow.exit:                         ; preds = %bb.d, %bb.g, %bb.i, %bb.j
  %.0.i = phi i32 [ -1, %bb.d ], [ -1, %bb.g ], [ %i.p, %bb.i ], [ %i.p, %bb.j ]
  ret i32 %.0.i
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local void @sbitmap_queue_min_shallow_depth(ptr nofree noundef captures(address) initializes((52, 56)) %0, i32 noundef %1) #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 52
  store i32 %1, ptr %i.a, align 4
  %i.b = load i32, ptr %0, align 8
  %i.c = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %1) ; 2 uses
  %i.d = icmp ugt i32 %i.c, 63
  %i.e = tail call i32 @llvm.umax.i32(i32 %i.c, i32 15)
  %i.f = lshr i32 %i.e, 3
  %i.g = select i1 %i.d, i32 8, i32 %i.f          ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %.not.i = icmp eq i32 %i.i, %i.g
  br i1 %.not.i, label %sbitmap_queue_update_wake_batch.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store volatile i32 %i.g, ptr %i.h, align 8
  br label %sbitmap_queue_update_wake_batch.exit

sbitmap_queue_update_wake_batch.exit:             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @sbitmap_queue_wake_up(ptr noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load volatile i32, ptr %i.a, align 8     ; 7 uses
  %i.c = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.d = load volatile i32, ptr %i.c, align 8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %__sbitmap_queue_wake_up.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 56         ; 4 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addl $1, $0", "=*m,ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e, i32 %1, ptr elementtype(i32) %i.e) #12, !srcloc !50
  %i.f = getelementptr i8, ptr %0, i64 60         ; 3 uses
  %i.g = load volatile i32, ptr %i.f, align 4     ; 2 uses
  %i.h = load volatile i32, ptr %i.e, align 8
  %i.i = sub i32 %i.h, %i.g
  %i.j = icmp ult i32 %i.i, %i.b
  br i1 %i.j, label %__sbitmap_queue_wake_up.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %arch_atomic_try_cmpxchg.exit
  %.013 = phi i32 [ %i.p, %arch_atomic_try_cmpxchg.exit ], [ %i.g, %bb.b ] ; 2 uses
  %i.k = add i32 %.013, %i.b
  %i.l = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.f, i32 %i.k, ptr elementtype(i32) %i.f, i32 %.013) #12, !srcloc !51 ; 2 uses
  %i.m = extractvalue { i8, i32 } %i.l, 0         ; 2 uses
  %i.n = icmp ult i8 %i.m, 2
  tail call void @llvm.assume(i1 %i.n)
  %i.o = trunc nuw i8 %i.m to i1
  br i1 %i.o, label %bb.c, label %arch_atomic_try_cmpxchg.exit, !prof !22

arch_atomic_try_cmpxchg.exit:                     ; preds = %.lr.ph
  %i.p = extractvalue { i8, i32 } %i.l, 1         ; 2 uses
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/cistpl?download=true
inline.NumInlined: 81
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 25
begin_hunk_0_@pcmcia_write_cis_mem:bb.a
  tail call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 %i.m, ptr elementtype(i8) %i.n) #13, !srcloc !11
  %i.o = lshr i32 %spec.select, 24
  %i.p = trunc nuw i32 %i.o to i8
  %i.q = getelementptr i8, ptr %i.d, i64 7
  tail call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 %i.p, ptr elementtype(i8) %i.q) #13, !srcloc !11
  %.not7782 = icmp eq i32 %3, 0
  br i1 %.not7782, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.d, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.05584 = phi ptr [ %4, %.lr.ph ], [ %i.u, %bb.d ] ; 2 uses
  %.06183 = phi i32 [ %3, %.lr.ph ], [ %i.t, %bb.d ]
  %i.s = load i8, ptr %.05584, align 1
  tail call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 %i.s, ptr elementtype(i8) %i.r) #13, !srcloc !11
  %i.t = add i32 %.06183, -1                      ; 2 uses
  %i.u = getelementptr i8, ptr %.05584, i64 1
  %.not77 = icmp eq i32 %i.t, 0
  br i1 %.not77, label %.critedge, label %bb.d, !llvm.loop !20

bb.e:                                             ; preds = %bb.a
  %i.v = and i32 %1, 1                            ; 3 uses
  %.not70 = icmp eq i32 %i.v, 0
  %.052 = select i1 %.not70, i64 1, i64 2
  %i.w = shl nuw nsw i32 %i.v, 5
  %.0 = or disjoint i32 %i.c, %i.w
  %i.x = getelementptr i8, ptr %0, i64 324        ; 3 uses
  %.not7190 = icmp eq i32 %3, 0
  br i1 %.not7190, label %.critedge, label %.lr.ph96.preheader

.lr.ph96.preheader:                               ; preds = %bb.e
  %.165 = shl i32 %2, %i.v                        ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = sub i32 0, %i.y
  %i.aa = and i32 %.165, %i.z
  br label %.lr.ph96

.lr.ph96:                                         ; preds = %.lr.ph96.preheader, %._crit_edge
  %.05194 = phi i32 [ %i.aq, %._crit_edge ], [ %i.aa, %.lr.ph96.preheader ] ; 2 uses
  %.15693 = phi ptr [ %.2.lcssa, %._crit_edge ], [ %4, %.lr.ph96.preheader ] ; 2 uses
  %.16292 = phi i32 [ %.263.lcssa, %._crit_edge ], [ %3, %.lr.ph96.preheader ] ; 2 uses
  %.26691 = phi i32 [ 0, %._crit_edge ], [ %.165, %.lr.ph96.preheader ]
  %i.ab = tail call fastcc ptr @set_cis_map(ptr noundef %0, i32 noundef %.05194, i32 noundef %.0) #12, !srcloc !24 ; 3 uses
  %.not72 = icmp eq ptr %i.ab, null
  br i1 %.not72, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.lr.ph96
  %i.ac = load i32, ptr %i.x, align 4             ; 4 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr i8, ptr %i.ab, i64 %i.ad
  %i.af = add i32 %i.ac, -1
  %i.ag = and i32 %i.af, %.26691                  ; 2 uses
  %i.ah = icmp eq i32 %i.ag, %i.ac
  br i1 %i.ah, label %._crit_edge, label %.lr.ph88.preheader

.lr.ph88.preheader:                               ; preds = %bb.f
  %i.ai = zext i32 %i.ag to i64
  %i.aj = getelementptr i8, ptr %i.ab, i64 %i.ai
  br label %.lr.ph88

.lr.ph88:                                         ; preds = %.lr.ph88.preheader, %.lr.ph88
  %.287 = phi ptr [ %i.am, %.lr.ph88 ], [ %.15693, %.lr.ph88.preheader ] ; 2 uses
  %.05786 = phi ptr [ %i.an, %.lr.ph88 ], [ %i.aj, %.lr.ph88.preheader ] ; 2 uses
  %.26385 = phi i32 [ %i.al, %.lr.ph88 ], [ %.16292, %.lr.ph88.preheader ]
  %i.ak = load i8, ptr %.287, align 1
  tail call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 %i.ak, ptr elementtype(i8) %.05786) #13, !srcloc !11
  %i.al = add i32 %.26385, -1                     ; 3 uses
  %i.am = getelementptr i8, ptr %.287, i64 1      ; 2 uses
  %i.an = getelementptr i8, ptr %.05786, i64 %.052 ; 2 uses
  %.not73 = icmp eq i32 %i.al, 0
  %i.ao = icmp eq ptr %i.an, %i.ae
  %or.cond = select i1 %.not73, i1 true, i1 %i.ao
  br i1 %or.cond, label %._crit_edge.loopexit, label %.lr.ph88, !llvm.loop !21

._crit_edge.loopexit:                             ; preds = %.lr.ph88
  %.pre = load i32, ptr %i.x, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %i.ap = phi i32 [ %i.ac, %bb.f ], [ %.pre, %._crit_edge.loopexit ]
  %.263.lcssa = phi i32 [ %.16292, %bb.f ], [ %i.al, %._crit_edge.loopexit ] ; 2 uses
  %.2.lcssa = phi ptr [ %.15693, %bb.f ], [ %i.am, %._crit_edge.loopexit ]
  %i.aq = add i32 %i.ap, %.05194
  %.not71 = icmp eq i32 %.263.lcssa, 0
  br i1 %.not71, label %.critedge, label %.lr.ph96, !llvm.loop !22

.critedge:                                        ; preds = %bb.d, %.lr.ph96, %._crit_edge, %bb.c, %bb.e, %bb.b
  %.260 = phi i32 [ 0, %._crit_edge ], [ -22, %bb.b ], [ 0, %bb.c ], [ 0, %bb.e ], [ -22, %.lr.ph96 ], [ 0, %bb.d ]
  ret i32 %.260
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @destroy_cis_cache(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 232        ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not12 = icmp eq ptr %i.b, %i.a
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.013 = phi ptr [ %.011, %.lr.ph ], [ %i.b, %bb.a ] ; 4 uses
  %.011 = load ptr, ptr %.013, align 8            ; 4 uses
  %i.c = getelementptr i8, ptr %.013, i64 8       ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %.011, i64 8
  store ptr %i.d, ptr %i.e, align 8
  store volatile ptr %.011, ptr %i.d, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.013, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.c, align 8
  tail call void @kfree(ptr noundef %.013) #11
  %.not = icmp eq ptr %.011, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @verify_cis_cache(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 32768
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 64), align 16
  %i.e = tail call noalias align 8 dereferenceable_or_null(256) ptr @__kmalloc_cache_noprof(ptr noundef %i.d, i32 noundef 3264, i64 noundef 256) #15 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 544
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.g, ptr noundef @.str) #14
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 472        ; 3 uses
  tail call void @mutex_lock(ptr noundef %i.h) #11
  %i.i = getelementptr i8, ptr %0, i64 232        ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.031.in = phi ptr [ %i.i, %bb.d ], [ %.031, %bb.g ]
  %.031 = load ptr, ptr %.031.in, align 8         ; 6 uses
  %.not37 = icmp eq ptr %.031, %i.i
  br i1 %.not37, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %.031, i64 20
  %i.k = load i32, ptr %i.j, align 4
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.k, i32 256) ; 2 uses
  %i.l = getelementptr i8, ptr %.031, i64 24
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %.031, i64 16
  %i.o = load i32, ptr %i.n, align 8
  %i.p = tail call i32 @pcmcia_read_cis_mem(ptr noundef %0, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %spec.store.select, ptr noundef nonnull %i.e) #12
  %.not35 = icmp eq i32 %i.p, 0
  br i1 %.not35, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %.031, i64 28
  %i.r = sext i32 %spec.store.select to i64
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.e, ptr %i.q, i64 %i.r)
  %.not36 = icmp eq i32 %bcmp, 0
  br i1 %.not36, label %bb.e, label %.critedge, !llvm.loop !25

.critedge:                                        ; preds = %bb.g, %bb.f
  tail call void @kfree(ptr noundef nonnull %i.e) #11
  tail call void @mutex_unlock(ptr noundef %i.h) #11
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  tail call void @kfree(ptr noundef nonnull %i.e) #11
  tail call void @mutex_unlock(ptr noundef %i.h) #11
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %bb.a, %bb.h, %bb.c
  %.2 = phi i32 [ 0, %bb.h ], [ -12, %bb.c ], [ -1, %.critedge ], [ -22, %bb.a ]
  ret i32 %.2
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @pcmcia_replace_cis(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ugt i64 %2, 512
  br i1 %i.a, label %bb.b, label %_kmalloc_noprof.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 544
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.b, ptr noundef @.str.1) #14
  br label %bb.e

_kmalloc_noprof.exit:                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 472        ; 3 uses
  tail call void @mutex_lock(ptr noundef %i.c) #11
  %i.d = getelementptr i8, ptr %0, i64 256        ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @kfree(ptr noundef %i.e) #11
  %i.f = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967328) %2, i32 noundef 3264) #16 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_kmalloc_noprof.exit
  %i.h = getelementptr i8, ptr %0, i64 544
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.h, ptr noundef @.str.2) #14
  tail call void @mutex_unlock(ptr noundef %i.c) #11
  br label %bb.e

bb.d:                                             ; preds = %_kmalloc_noprof.exit
  %i.i = getelementptr i8, ptr %0, i64 248
  store i64 %2, ptr %i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 1 %1, i64 %2, i1 false)
  %i.j = getelementptr i8, ptr %0, i64 544
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.j, ptr noundef @.str.3) #14
  tail call void @mutex_unlock(ptr noundef %i.c) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ -22, %bb.b ], [ -12, %bb.c ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -28, 1) i32 @pccard_get_first_tuple(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 32776
  %or.cond = icmp eq i32 %i.c, 8
  br i1 %or.cond, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %2, i64 8
  store i32 272, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %2, i64 21         ; 2 uses
  store i8 0, ptr %i.e, align 1
  %i.f = getelementptr i8, ptr %2, i64 12
  store i32 0, ptr %i.f, align 4
  %i.g = getelementptr i8, ptr %2, i64 16         ; 2 uses
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %0, i64 28
  %i.i = load i16, ptr %i.h, align 4
  %i.j = icmp ugt i16 %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %2, align 8
  %i.l = and i32 %i.k, 2
  %.not32 = icmp eq i32 %i.l, 0
  br i1 %.not32, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %2, i64 4          ; 4 uses
  %i.n = load i8, ptr %i.m, align 4
  store i8 6, ptr %i.m, align 4
  %i.o = tail call i32 @pccard_get_next_tuple(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #12
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 19, ptr %i.m, align 4
  %i.q = tail call i32 @pccard_get_next_tuple(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #12
  %.not33 = icmp eq i32 %i.q, 0
  br i1 %.not33, label %.thread, label %bb.i

bb.g:                                             ; preds = %bb.e
  store i8 0, ptr %i.e, align 1
  store i32 0, ptr %i.g, align 8
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.f
  store i8 %i.n, ptr %i.m, align 4
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.d, %bb.c
  %i.r = tail call i32 @pccard_get_next_tuple(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.b, %bb.a, %bb.h
  %.1 = phi i32 [ -22, %bb.a ], [ %i.r, %bb.h ], [ -19, %bb.b ], [ -28, %bb.f ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -28, 1) i32 @pccard_get_next_tuple(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 12 uses
  %i.b = alloca [2 x i8], align 2                 ; 9 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i8 0, ptr %i.c, align 1, !annotation !28
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 32776
  %or.cond = icmp eq i32 %i.f, 8
  br i1 %or.cond, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  store i16 0, ptr %i.b, align 2, !annotation !28
  %i.g = getelementptr i8, ptr %2, i64 21         ; 2 uses
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  store i8 %i.h, ptr %i.i, align 1
  %i.j = getelementptr i8, ptr %2, i64 16         ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = zext i8 %i.h to i32
  %i.m = add i32 %i.k, %i.l
  %i.n = getelementptr i8, ptr %2, i64 8          ; 21 uses
  %i.o = load i16, ptr %i.n, align 8
  %i.p = lshr i16 %i.o, 8
  %i.q = and i16 %i.p, 15
  %i.r = zext nneg i16 %i.q to i32
  %i.s = getelementptr i8, ptr %2, i64 12         ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 4 uses
  %i.v = getelementptr i8, ptr %0, i64 472        ; 4 uses
  %i.w = getelementptr i8, ptr %0, i64 232        ; 6 uses
  %i.x = icmp eq i32 %1, 255
  %i.y = mul i32 %1, 5
  %i.z = getelementptr i8, ptr %2, i64 4          ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.ar
  %.0108 = phi i32 [ %i.r, %bb.c ], [ %.2, %bb.ar ] ; 3 uses
  %.084107 = phi i32 [ 0, %bb.c ], [ %i.fu, %bb.ar ] ; 2 uses
  %.085106 = phi i32 [ %i.m, %bb.c ], [ %.287, %bb.ar ] ; 3 uses
  %i.aa = load i8, ptr %i.i, align 1
  %i.ab = icmp eq i8 %i.aa, -1
  br i1 %i.ab, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  store i8 -1, ptr %i.b, align 2
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ac = call fastcc i32 @read_cis_cache(ptr noundef %0, i32 noundef %.0108, i32 noundef %.085106, i64 noundef 2, ptr noundef nonnull %i.b) #12, !srcloc !29
  %.not94 = icmp eq i32 %i.ac, 0
  br i1 %.not94, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ad = load i8, ptr %i.b, align 2              ; 2 uses
  switch i8 %i.ad, label %bb.ae [
    i8 0, label %bb.g
    i8 -1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ae = add i32 %.085106, 1
  br label %bb.ar

bb.h:                                             ; preds = %bb.f, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.a, i8 0, i64 5, i1 false), !annotation !28
  %i.af = load i16, ptr %i.n, align 8             ; 5 uses
  %i.ag = and i16 %i.af, 224
  %.not.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = and i16 %i.af, 15
  %i.ai = zext nneg i16 %i.ah to i32
  %i.aj = load i32, ptr %i.s, align 4
  %i.ak = call fastcc i32 @read_cis_cache(ptr noundef nonnull %0, i32 noundef %i.ai, i32 noundef %i.aj, i64 noundef 5, ptr noundef nonnull %i.a) #12, !srcloc !30
  %.not41.i = icmp eq i32 %i.ak, 0
  br i1 %.not41.i, label %bb.j, label %follow_link.exit.thread

bb.j:                                             ; preds = %bb.i
  %.val.i = load i32, ptr %i.t, align 1
  %i.al = load i8, ptr %i.a, align 1
  %i.am = icmp eq i8 %i.al, 0
  %i.an = load i16, ptr %i.n, align 8             ; 2 uses
  %i.ao = select i1 %i.am, i16 256, i16 0
  %i.ap = and i16 %i.an, -4065
  %i.aq = or disjoint i16 %i.ap, %i.ao
  %i.ar = load i32, ptr %i.s, align 4
  %i.as = add i32 %i.ar, 5
  store i32 %i.as, ptr %i.s, align 4
  %i.at = add i16 %i.an, 224
  %i.au = and i16 %i.at, 224
  %i.av = or disjoint i16 %i.aq, %i.au
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.aw = and i16 %i.af, 16
  %.not40.i = icmp eq i16 %i.aw, 0
  br i1 %.not40.i, label %follow_link.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = load i32, ptr %i.s, align 4
  %i.ay = shl i16 %i.af, 8
  %i.az = and i16 %i.ay, 3840
  %i.ba = and i16 %i.af, -4081
  %i.bb = or disjoint i16 %i.az, %i.ba
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %storemerge.i = phi i16 [ %i.bb, %bb.l ], [ %i.av, %bb.j ] ; 2 uses
  %.0.i = phi i32 [ %i.ax, %bb.l ], [ %.val.i, %bb.j ] ; 5 uses
  store i16 %storemerge.i, ptr %i.n, align 8
  %i.bc = lshr i16 %storemerge.i, 8
  %i.bd = and i16 %i.bc, 15                       ; 2 uses
  %.not42.i = icmp eq i16 %i.bd, 0
  br i1 %.not42.i, label %bb.v, label %bb.n

end_hunk_0

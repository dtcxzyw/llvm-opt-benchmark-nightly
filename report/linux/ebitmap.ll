inline.NumInlined: 56
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@ebitmap_contains:bb.a
  br i1 %.not50, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph
  br i1 %i.aa, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %bb.j
  %i.aq = add nsw i32 %.04158.lcssa, -1
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = getelementptr [8 x i8], ptr %i.aj, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr [8 x i8], ptr %i.n, i64 %i.ar
  %i.av = load i64, ptr %i.au, align 8            ; 2 uses
  %i.aw = and i64 %i.av, %i.at
  %.not50.1 = icmp eq i64 %i.aw, %i.av
  br i1 %.not50.1, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  br i1 %i.ab, label %bb.m, label %._crit_edge

bb.m:                                             ; preds = %bb.l
  %i.ax = add nsw i32 %.04158.lcssa, -2
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %i.aj, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr [8 x i8], ptr %i.n, i64 %i.ay
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.bd = and i64 %i.bc, %i.ba
  %.not50.2 = icmp eq i64 %i.bd, %i.bc
  br i1 %.not50.2, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  br i1 %i.ac, label %bb.o, label %._crit_edge

bb.o:                                             ; preds = %bb.n
  %i.be = add nsw i32 %.04158.lcssa, -3
  %i.bf = zext nneg i32 %i.be to i64              ; 2 uses
  %i.bg = getelementptr [8 x i8], ptr %i.aj, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr [8 x i8], ptr %i.n, i64 %i.bf
  %i.bj = load i64, ptr %i.bi, align 8            ; 2 uses
  %i.bk = and i64 %i.bj, %i.bh
  %.not50.3 = icmp eq i64 %i.bk, %i.bj
  br i1 %.not50.3, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  br i1 %i.ad, label %bb.q, label %._crit_edge

bb.q:                                             ; preds = %bb.p
  %i.bl = add nsw i32 %.04158.lcssa, -4
  %i.bm = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bn = getelementptr [8 x i8], ptr %i.aj, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr [8 x i8], ptr %i.n, i64 %i.bm
  %i.bq = load i64, ptr %i.bp, align 8            ; 2 uses
  %i.br = and i64 %i.bq, %i.bo
  %.not50.4 = icmp eq i64 %i.br, %i.bq
  br i1 %.not50.4, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  br i1 %.not48.not, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = add nsw i32 %.04158.lcssa, -5
  %i.bt = zext nneg i32 %i.bs to i64              ; 2 uses
  %i.bu = getelementptr [8 x i8], ptr %i.aj, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr [8 x i8], ptr %i.n, i64 %i.bt
  %i.bx = load i64, ptr %i.bw, align 8            ; 2 uses
  %i.by = and i64 %i.bx, %i.bv
  %.not50.5 = icmp eq i64 %i.by, %i.bx
  br i1 %.not50.5, label %._crit_edge, label %.loopexit

._crit_edge:                                      ; preds = %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %bb.s, %bb.i
  %i.bz = load ptr, ptr %.04362, align 8
  br label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.d
  %.043.be = phi ptr [ %i.bz, %._crit_edge ], [ %.04362, %bb.d ] ; 2 uses
  %.044 = load ptr, ptr %.04463, align 8          ; 2 uses
  %i.ca = icmp ne ptr %.044, null
  %i.cb = icmp ne ptr %.043.be, null              ; 2 uses
  %or.cond = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond, label %bb.c, label %.critedge, !llvm.loop !23

.critedge:                                        ; preds = %bb.c, %.backedge, %bb.b
  %.lcssa = phi i1 [ %i.h, %bb.b ], [ %i.cb, %.backedge ], [ true, %bb.c ]
  %not. = xor i1 %.lcssa, true
  %. = zext i1 %not. to i32
  br label %.loopexit

.loopexit:                                        ; preds = %__fls.exit, %.lr.ph, %bb.k, %bb.m, %bb.o, %bb.q, %bb.s, %.critedge, %bb.a
  %.3 = phi i32 [ %., %.critedge ], [ 0, %bb.a ], [ 0, %.lr.ph ], [ 0, %bb.s ], [ 0, %bb.q ], [ 0, %bb.o ], [ 0, %bb.m ], [ 0, %bb.k ], [ 0, %__fls.exit ]
  ret i32 %.3
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none)
define dso_local i32 @ebitmap_get_highest_set_bit(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %.preheader26

.preheader26:                                     ; preds = %bb.a, %.preheader26
  %.016 = phi ptr [ %i.b, %.preheader26 ], [ %i.a, %bb.a ] ; 8 uses
  %i.b = load ptr, ptr %.016, align 8             ; 2 uses
  %.not22 = icmp eq ptr %i.b, null
  br i1 %.not22, label %.preheader, label %.preheader26, !llvm.loop !24

.preheader:                                       ; preds = %.preheader26
  %i.c = getelementptr i8, ptr %.016, i64 8
  %i.d = getelementptr i8, ptr %.016, i64 48
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %.loopexit.loopexit

bb.b:                                             ; preds = %.preheader
  %i.g = getelementptr i8, ptr %.016, i64 40
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %.loopexit.loopexit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %.016, i64 32
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %.loopexit.loopexit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %.016, i64 24
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.e, label %.loopexit.loopexit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %.016, i64 16
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %.loopexit.loopexit

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %i.c, align 8              ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.preheader
  %.lcssa29.wide = phi i32 [ 320, %.preheader ], [ 256, %bb.b ], [ 192, %bb.c ], [ 128, %bb.d ], [ 64, %bb.e ], [ 0, %bb.f ]
  %.lcssa = phi i64 [ %i.e, %.preheader ], [ %i.h, %bb.b ], [ %i.k, %bb.c ], [ %i.n, %bb.d ], [ %i.q, %bb.e ], [ %i.s, %bb.f ]
  %i.u = lshr i64 %.lcssa, 1
  %i.v = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.u, i1 false)
  %i.w = trunc nuw nsw i64 %i.v to i32
  %reass.sub = sub nsw i32 %.lcssa29.wide, %i.w
  %i.x = add nsw i32 %reass.sub, 64
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.loopexit.loopexit
  %.1 = phi i32 [ %i.x, %.loopexit.loopexit ], [ 0, %bb.f ]
  %i.y = getelementptr i8, ptr %.016, i64 56
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = add i32 %i.z, %.1
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %.loopexit
  %.017 = phi i32 [ %i.aa, %.loopexit ], [ 0, %bb.a ]
  ret i32 %.017
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @ebitmap_read(ptr nofree noundef captures(address_is_null) initializes((0, 16)) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr i8, ptr %1, i64 8          ; 6 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp ult i64 %i.b, 12
  br i1 %i.c, label %ebitmap_destroy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8                ; 4 uses
  %.sroa.0.0.copyload = load i32, ptr %i.d, align 1 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 1 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 1 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 12
  store ptr %i.e, ptr %1, align 8
  %i.f = add i64 %i.b, -12
  store i64 %i.f, ptr %i.a, align 8
  %i.g = getelementptr i8, ptr %0, i64 8          ; 5 uses
  store i32 %.sroa.5.0.copyload, ptr %i.g, align 8
  %.not = icmp eq i32 %.sroa.0.0.copyload, 64
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %.sroa.0.0.copyload, i32 noundef 64, i32 noundef %.sroa.5.0.copyload) #14 ; 0 uses
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.i = add i32 %.sroa.5.0.copyload, 383         ; 3 uses
  %i.j = urem i32 %i.i, 384
  %i.k = sub i32 %i.i, %i.j
  store i32 %i.k, ptr %i.g, align 8
  %.not93 = icmp ult i32 %i.i, 384
  br i1 %.not93, label %ebitmap_destroy.exit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not94 = icmp eq i32 %.sroa.6.0.copyload, 0
  br i1 %.not94, label %bb.v, label %.preheader.split

.preheader.split:                                 ; preds = %bb.e, %.split.us
  %.069156 = phi ptr [ %.2, %.split.us ], [ null, %bb.e ] ; 4 uses
  %.072155 = phi i32 [ %i.ax, %.split.us ], [ 0, %bb.e ]
  %i.l = load i64, ptr %i.a, align 8              ; 2 uses
  %i.m = icmp ult i64 %i.l, 4
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader.split
  %i.n = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14 ; 0 uses
  br label %bb.v

bb.g:                                             ; preds = %.preheader.split
  %i.o = load ptr, ptr %1, align 8                ; 2 uses
  %.0.copyload110 = load i32, ptr %i.o, align 1   ; 10 uses
  %i.p = getelementptr i8, ptr %i.o, i64 4
  store ptr %i.p, ptr %1, align 8
  %i.q = add i64 %i.l, -4
  store i64 %i.q, ptr %i.a, align 8
  %i.r = and i32 %.0.copyload110, 63
  %.not97 = icmp eq i32 %i.r, 0
  br i1 %.not97, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %.0.copyload110, i32 noundef 64) #14 ; 0 uses
  br label %bb.v

bb.i:                                             ; preds = %bb.g
  %i.t = load i32, ptr %i.g, align 8
  %i.u = add i32 %i.t, -64                        ; 2 uses
  %i.v = icmp ugt i32 %.0.copyload110, %i.u
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %.0.copyload110, i32 noundef %i.u) #14 ; 0 uses
  br label %bb.v

bb.k:                                             ; preds = %bb.i
  %.not98 = icmp eq ptr %.069156, null            ; 2 uses
  br i1 %.not98, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = zext i32 %.0.copyload110 to i64
  %i.y = getelementptr i8, ptr %.069156, i64 56
  %i.z = load i32, ptr %i.y, align 8              ; 3 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = add nuw nsw i64 %i.aa, 384
  %.not99 = icmp samesign ugt i64 %i.ab, %i.x
  br i1 %.not99, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ac = load ptr, ptr @ebitmap_node_cachep, align 8
  %i.ad = tail call noalias align 8 ptr @kmem_cache_alloc_noprof(ptr noundef %i.ac, i32 noundef 3520) #11 ; 4 uses
  %.not101 = icmp eq ptr %i.ad, null
  br i1 %.not101, label %bb.n, label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.m
  %i.ae = urem i32 %.0.copyload110, 384
  %i.af = sub i32 %.0.copyload110, %i.ae
  %i.ag = getelementptr i8, ptr %i.ad, i64 56
  store i32 %i.af, ptr %i.ag, align 8
  %..069156 = select i1 %.not98, ptr %0, ptr %.069156
  store ptr %i.ad, ptr %..069156, align 8
  br label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ah = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #14 ; 0 uses
  br label %bb.v

bb.o:                                             ; preds = %bb.l
  %.not100 = icmp ugt i32 %.0.copyload110, %i.z
  br i1 %.not100, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %.0.copyload110, i32 noundef %i.z) #14 ; 0 uses
  br label %bb.v

.thread:                                          ; preds = %.thread.sink.split, %bb.o
  %.2 = phi ptr [ %.069156, %bb.o ], [ %i.ad, %.thread.sink.split ] ; 4 uses
  %i.aj = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ak = icmp ult i64 %i.aj, 8
  br i1 %i.ak, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.thread
  %i.al = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14 ; 0 uses
  br label %bb.v

bb.r:                                             ; preds = %.thread
  %i.am = load ptr, ptr %1, align 8               ; 2 uses
  %.0.copyload = load i64, ptr %i.am, align 1     ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 8
  store ptr %i.an, ptr %1, align 8
  %i.ao = add i64 %i.aj, -8
  store i64 %i.ao, ptr %i.a, align 8
  %.not102 = icmp eq i64 %.0.copyload, 0
  br i1 %.not102, label %bb.s, label %.split.us

bb.s:                                             ; preds = %bb.r
  %i.ap = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #14 ; 0 uses
  br label %bb.v

.split.us:                                        ; preds = %bb.r
  %i.aq = getelementptr i8, ptr %.2, i64 56
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = sub i32 %.0.copyload110, %i.ar
  %i.at = lshr i32 %i.as, 6
  %i.au = getelementptr i8, ptr %.2, i64 8
  %i.av = zext nneg i32 %i.at to i64
  %i.aw = getelementptr [8 x i8], ptr %i.au, i64 %i.av
  store i64 %.0.copyload, ptr %i.aw, align 8
  %i.ax = add nuw i32 %.072155, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ax, %.sroa.6.0.copyload
  br i1 %exitcond.not, label %bb.t, label %.preheader.split, !llvm.loop !25

bb.t:                                             ; preds = %.split.us
  %i.ay = getelementptr i8, ptr %.2, i64 56
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = zext i32 %i.az to i64
  %i.bb = add nuw nsw i64 %i.ba, 384              ; 2 uses
  %i.bc = load i32, ptr %i.g, align 8             ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %.not96 = icmp eq i64 %i.bb, %i.bd
  br i1 %.not96, label %ebitmap_destroy.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %i.bc, i64 noundef %i.bb) #14 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.e, %bb.u, %bb.p, %bb.s, %bb.j, %bb.h, %bb.c, %bb.f, %bb.q, %bb.n
  %i.bf = phi i32 [ -22, %bb.q ], [ -12, %bb.n ], [ -22, %bb.f ], [ -22, %bb.c ], [ -22, %bb.h ], [ -22, %bb.j ], [ -22, %bb.s ], [ -22, %bb.p ], [ -22, %bb.u ], [ -22, %bb.e ] ; 2 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %ebitmap_destroy.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = load ptr, ptr %0, align 8               ; 2 uses
  %.not910.i = icmp eq ptr %i.bg, null
  br i1 %.not910.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w, %.lr.ph.i
  %.011.i = phi ptr [ %i.bh, %.lr.ph.i ], [ %i.bg, %bb.w ] ; 2 uses
  %i.bh = load ptr, ptr %.011.i, align 8          ; 2 uses
  %i.bi = load ptr, ptr @ebitmap_node_cachep, align 8
  tail call void @kmem_cache_free(ptr noundef %i.bi, ptr noundef nonnull %.011.i) #11
  %.not9.i = icmp eq ptr %i.bh, null
  br i1 %.not9.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !12

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.w
  store i32 0, ptr %i.g, align 8
  br label %ebitmap_destroy.exit.sink.split

ebitmap_destroy.exit.sink.split:                  ; preds = %bb.d, %._crit_edge.i
  %.277.ph = phi i32 [ %i.bf, %._crit_edge.i ], [ 0, %bb.d ]
  store ptr null, ptr %0, align 8
  br label %ebitmap_destroy.exit

ebitmap_destroy.exit:                             ; preds = %ebitmap_destroy.exit.sink.split, %bb.a, %bb.v, %bb.t
  %.277 = phi i32 [ 0, %bb.t ], [ %i.bf, %bb.v ], [ -22, %bb.a ], [ %.277.ph, %ebitmap_destroy.exit.sink.split ]
  ret i32 %.277
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @ebitmap_write(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %storemerge11.i = load ptr, ptr %0, align 8     ; 2 uses
  %.not12.i = icmp eq ptr %storemerge11.i, null
  br i1 %.not12.i, label %ebitmap_start_positive.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.2146 = phi ptr [ %storemerge.i, %bb.b ], [ %storemerge11.i, %bb.a ] ; 4 uses
  %i.a = getelementptr i8, ptr %.2146, i64 8
  %i.b = tail call i64 @_find_first_bit(ptr noundef %i.a, i64 noundef 384) #11 ; 2 uses
  %i.c = and i64 %i.b, 4294967168
  %i.d = icmp samesign ult i64 %i.c, 384
  br i1 %i.d, label %ebitmap_start_positive.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %storemerge.i = load ptr, ptr %.2146, align 8   ; 2 uses
  %.not.i = icmp eq ptr %storemerge.i, null
  br i1 %.not.i, label %ebitmap_start_positive.exit.thread, label %.lr.ph.i, !llvm.loop !14

ebitmap_start_positive.exit.thread:               ; preds = %bb.b, %bb.a
  %i.e = getelementptr i8, ptr %0, i64 8
  br label %bb.g

ebitmap_start_positive.exit:                      ; preds = %.lr.ph.i
  %i.f = trunc i64 %i.b to i32
  %i.g = getelementptr i8, ptr %.2146, i64 56
  %i.h = load i32, ptr %i.g, align 8
  %i.i = add i32 %i.h, %i.f                       ; 2 uses
end_hunk_0

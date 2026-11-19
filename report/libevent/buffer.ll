Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/buffer?download=true
inline.NumInlined: 79
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@evbuffer_search_range:bb.a
  %.not56.i = icmp eq ptr %.03349.i67, null
  br i1 %.not56.i, label %evbuffer_ptr_memcmp.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.m
  %i.al = add i64 %i.ag, %3
  %i.am = getelementptr inbounds nuw i8, ptr %.03349.i67, i64 24
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = icmp ugt i64 %i.al, %i.an
  %i.ap = sub i64 %i.an, %i.ag
  %.0.peel.i = select i1 %i.ao, i64 %i.ap, i64 %3 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.03349.i67, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %.03349.i67, i64 16
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ag
  %bcmp = tail call i32 @bcmp(ptr %i.av, ptr nonnull %2, i64 %.0.peel.i)
  %.not.peel.i = icmp eq i32 %bcmp, 0
  br i1 %.not.peel.i, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.lr.ph.preheader.i
  %i.aw = sub i64 %3, %.0.peel.i                  ; 2 uses
  %.033.peel.i = load ptr, ptr %.03349.i67, align 8 ; 2 uses
  %i.ax = icmp ne i64 %i.aw, 0
  %i.ay = icmp ne ptr %.033.peel.i, null
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %i.az, label %.lr.ph.peel.next.i, label %evbuffer_ptr_memcmp.exit

.lr.ph.peel.next.i:                               ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 %.0.peel.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.peel.next.i
  %.03353.i = phi ptr [ %.033.i, %bb.o ], [ %.033.peel.i, %.lr.ph.peel.next.i ] ; 4 uses
  %.03551.i = phi i64 [ %i.bj, %bb.o ], [ %i.aw, %.lr.ph.peel.next.i ] ; 2 uses
  %.03750.i = phi ptr [ %i.bi, %bb.o ], [ %i.ba, %.lr.ph.peel.next.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.03353.i, i64 24
  %i.bc = load i64, ptr %i.bb, align 8
  %.0.i = tail call i64 @llvm.umin.i64(i64 %.03551.i, i64 %i.bc) ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.03353.i, i64 40
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.03353.i, i64 16
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds i8, ptr %i.be, i64 %i.bg
  %bcmp58 = tail call i32 @bcmp(ptr %i.bh, ptr %.03750.i, i64 %.0.i)
  %.not.i = icmp eq i32 %bcmp58, 0
  br i1 %.not.i, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %.lr.ph.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.03750.i, i64 %.0.i
  %i.bj = sub i64 %.03551.i, %.0.i                ; 2 uses
  %.033.i = load ptr, ptr %.03353.i, align 8      ; 2 uses
  %i.bk = icmp ne i64 %i.bj, 0
  %i.bl = icmp ne ptr %.033.i, null
  %i.bm = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %i.bm, label %.lr.ph.i, label %evbuffer_ptr_memcmp.exit, !llvm.loop !41

evbuffer_ptr_memcmp.exit:                         ; preds = %bb.n, %bb.m, %bb.o
  br i1 %.not46, label %.thread55, label %bb.p

bb.p:                                             ; preds = %evbuffer_ptr_memcmp.exit
  %i.bn = load i64, ptr %5, align 8
  %i.bo = icmp sgt i64 %i.ai, %i.bn
  br i1 %i.bo, label %.thread, label %.thread55

.loopexit:                                        ; preds = %.lr.ph.i, %bb.k, %bb.l, %.lr.ph.preheader.i
  %i.bp = add nsw i64 %i.af, 1                    ; 3 uses
  store i64 %i.bp, ptr %0, align 8
  %i.bq = add i64 %i.ag, 1                        ; 3 uses
  store i64 %i.bq, ptr %i.n, align 8
  %i.br = load i64, ptr %i.y, align 8
  %i.bs = icmp eq i64 %i.bq, %i.br
  br i1 %i.bs, label %.sink.split, label %bb.s

bb.q:                                             ; preds = %bb.j
  %i.bt = icmp eq ptr %.162, %.036
  br i1 %i.bt, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = add i64 %i.r, %i.aa                     ; 2 uses
  store i64 %i.bu, ptr %0, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %.loopexit, %bb.r
  %.ph = phi i64 [ %i.bu, %bb.r ], [ %i.bp, %.loopexit ]
  %i.bv = load ptr, ptr %.162, align 8            ; 3 uses
  store ptr %i.bv, ptr %i.m, align 8
  store i64 0, ptr %i.n, align 8
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %.loopexit
  %.03349.i66 = phi ptr [ %.03349.i67, %.loopexit ], [ %i.bv, %.sink.split ]
  %i.bw = phi i64 [ %i.bq, %.loopexit ], [ 0, %.sink.split ]
  %i.bx = phi i64 [ %i.bp, %.loopexit ], [ %.ph, %.sink.split ]
  %.3 = phi ptr [ %.162, %.loopexit ], [ %i.bv, %.sink.split ] ; 2 uses
  %.not47 = icmp eq ptr %.3, null
  br i1 %.not47, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.s, %bb.q, %bb.i, %bb.p
  store i64 -1, ptr %0, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 0, i64 16, i1 false)
  br label %.thread55

.thread55:                                        ; preds = %bb.p, %evbuffer_ptr_memcmp.exit, %bb.h, %.thread
  %i.bz = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not50 = icmp eq ptr %i.bz, null
  br i1 %.not50, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.thread55
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.cb = tail call i32 %i.ca(i32 noundef 0, ptr noundef nonnull %i.bz) #16 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %.thread55, %bb.t
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i32 @evbuffer_peek(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not55 = icmp eq ptr %i.e, null
  br i1 %.not55, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.g = tail call i32 %i.f(i32 noundef 0, ptr noundef nonnull %i.e) #16 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = sub i64 %i.k, %i.m                       ; 4 uses
  %i.o = icmp sgt i32 %4, 0
  br i1 %i.o, label %.thread, label %.thread68

.thread:                                          ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.m
  store ptr %i.u, ptr %3, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.n, ptr %i.v, align 8
  %.04763 = load ptr, ptr %i.i, align 8
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %.047 = load ptr, ptr %0, align 8               ; 2 uses
  %i.w = icmp eq i32 %4, 0
  %i.x = icmp slt i64 %1, 0
  %or.cond = and i1 %i.x, %i.w
  br i1 %or.cond, label %bb.h, label %bb.j

.thread68:                                        ; preds = %bb.f
  %.04772 = load ptr, ptr %i.i, align 8           ; 2 uses
  %i.y = icmp eq i32 %4, 0
  %i.z = icmp slt i64 %1, 0
  %or.cond73 = and i1 %i.z, %i.y
  br i1 %or.cond73, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8
  br label %bb.j

bb.i:                                             ; preds = %.thread68
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = load i64, ptr %2, align 8
  %i.af = sub nsw i64 %i.ad, %i.ae
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %.thread68, %.thread, %bb.i, %bb.g
  %.04767 = phi ptr [ %.04772, %bb.i ], [ %.047, %bb.h ], [ %.047, %bb.g ], [ %.04763, %.thread ], [ %.04772, %.thread68 ] ; 3 uses
  %.066 = phi i64 [ %i.n, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ %i.n, %.thread ], [ %i.n, %.thread68 ]
  %.04565 = phi i32 [ 1, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 1, %.thread ], [ 1, %.thread68 ] ; 5 uses
  %.050 = phi i64 [ %i.af, %bb.i ], [ %i.ab, %bb.h ], [ %1, %bb.g ], [ %1, %.thread ], [ %1, %.thread68 ]
  %.050.fr = freeze i64 %.050                     ; 2 uses
  %.not5684 = icmp eq ptr %.04767, null
  br i1 %.not5684, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.ag = icmp slt i64 %.050.fr, 0
  br i1 %i.ag, label %.lr.ph.split.us.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph
  %smax = tail call i32 @llvm.smax.i32(i32 %.04565, i32 %4) ; 3 uses
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not138.not = icmp slt i32 %.04565, %4
  br i1 %exitcond.not138.not, label %.lr.ph140, label %._crit_edge

.lr.ph140:                                        ; preds = %.lr.ph.split.us.split.us.preheader
  %5 = zext nneg i32 %.04565 to i64
  br label %.lr.ph141

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph141
  %exitcond.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph141, !llvm.loop !42

.lr.ph141:                                        ; preds = %.lr.ph140, %.lr.ph.split.us.split.us
  %.14885.us.us140 = phi ptr [ %.04767, %.lr.ph140 ], [ %i.aq, %.lr.ph.split.us.split.us ] ; 4 uses
  %indvars.iv124139 = phi i64 [ %5, %.lr.ph140 ], [ %indvars.iv.next125, %.lr.ph.split.us.split.us ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.14885.us.us140, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.14885.us.us140, i64 16
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %i.ak
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv124139 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %.14885.us.us140, i64 24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.ao, ptr %i.ap, align 8
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124139, 1 ; 3 uses
  %i.aq = load ptr, ptr %.14885.us.us140, align 8 ; 2 uses
  %.not56.us.us = icmp eq ptr %i.aq, null
  br i1 %.not56.us.us, label %._crit_edge.loopexit.split.loop.exit136, label %.lr.ph.split.us.split.us, !llvm.loop !42

.lr.ph.split.split:                               ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ %i.bc, %bb.m ], [ %.066, %.lr.ph ] ; 2 uses
  %.14686 = phi i32 [ %7, %bb.m ], [ %.04565, %.lr.ph ] ; 4 uses
  %.14885 = phi ptr [ %i.bd, %bb.m ], [ %.04767, %.lr.ph ] ; 5 uses
  %.not57 = icmp slt i64 %indvars.iv, %.050.fr
  br i1 %.not57, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %.lr.ph.split.split
  %i.ar = icmp slt i32 %.14686, %4
  br i1 %i.ar, label %bb.l, label %._crit_edge128

._crit_edge128:                                   ; preds = %bb.k
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.14885, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %.14885, i64 40
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %.14885, i64 16
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 %i.av
  %6 = zext nneg i32 %.14686 to i64
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %6 ; 2 uses
  store ptr %i.aw, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.14885, i64 24
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %i.az, ptr %i.ba, align 8
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge128, %bb.l
  %i.bb = phi i64 [ %.pre, %._crit_edge128 ], [ %i.az, %bb.l ]
  %7 = add nuw nsw i32 %.14686, 1                 ; 2 uses
  %i.bc = add i64 %i.bb, %indvars.iv
  %i.bd = load ptr, ptr %.14885, align 8          ; 2 uses
  %.not56 = icmp eq ptr %i.bd, null
  br i1 %.not56, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !42

._crit_edge.loopexit.split.loop.exit136:          ; preds = %.lr.ph141
  %indvars126.le = trunc i64 %indvars.iv.next125 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.m, %.lr.ph.split.split, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us.preheader, %._crit_edge.loopexit.split.loop.exit136, %bb.j
  %.146.lcssa = phi i32 [ %.04565, %bb.j ], [ %smax, %.lr.ph.split.us.split.us.preheader ], [ %indvars126.le, %._crit_edge.loopexit.split.loop.exit136 ], [ %smax, %.lr.ph.split.us.split.us ], [ %.14686, %.lr.ph.split.split ], [ %7, %bb.m ] ; 2 uses
  %i.be = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not58 = icmp eq ptr %i.be, null
  br i1 %.not58, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.bg = tail call i32 %i.bf(i32 noundef 0, ptr noundef nonnull %i.be) #16 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.n, %bb.b
  %.049 = phi i32 [ 0, %bb.b ], [ %.146.lcssa, %bb.n ], [ %.146.lcssa, %._crit_edge ]
  ret i32 %.049
}

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483648) i32 @evbuffer_add_vprintf(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #16 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i8, ptr %i.e, align 8
  %i.g = and i8 %i.f, 4
  %.not38 = icmp eq i8 %i.g, 0
  br i1 %.not38, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.h = tail call fastcc ptr @evbuffer_expand_singlechain(ptr noundef nonnull %0, i64 noundef 64) ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.k
  %.0 = phi ptr [ %i.ax, %bb.k ], [ %i.h, %bb.d ] ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.s = load i32, ptr %i.r, align 8
  %i.t = and i32 %i.s, 8
  %.not39 = icmp eq i32 %i.t, 0
  br i1 %.not39, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = add i64 %i.p, %i.m
  %i.x = sub i64 %i.v, %i.w
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.e
  %i.y = phi i64 [ %i.x, %bb.e ], [ 0, %.preheader ] ; 2 uses
  call void @llvm.va_copy.p0(ptr nonnull %3, ptr %2)
  %i.z = call i32 @evutil_vsnprintf(ptr noundef %i.q, i64 noundef %i.y, ptr noundef %1, ptr noundef nonnull %3) #16 ; 4 uses
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = zext nneg i32 %i.z to i64               ; 3 uses
  %i.ac = icmp ugt i64 %i.y, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = add i64 %i.ae, %i.ab
  store i64 %i.af, ptr %i.ad, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ah = load <2 x i64>, ptr %i.ag, align 8
  %i.ai = insertelement <2 x i64> poison, i64 %i.ab, i64 0
  %i.aj = shufflevector <2 x i64> %i.ai, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ak = add <2 x i64> %i.ah, %i.aj
  store <2 x i64> %i.ak, ptr %i.ag, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %advance_last_with_data.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not1416.i = icmp eq ptr %i.ao, null
  br i1 %.not1416.i, label %advance_last_with_data.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.j
  %i.ap = phi ptr [ %i.au, %bb.j ], [ %i.ao, %.preheader.i ] ; 2 uses
  %i.aq = phi ptr [ %i.at, %bb.j ], [ %i.an, %.preheader.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.as = load i64, ptr %i.ar, align 8
  %.not15.i = icmp eq i64 %i.as, 0
  br i1 %.not15.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  store ptr %i.aq, ptr %i.al, align 8
  %.pre.i = load ptr, ptr %i.aq, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %i.at = phi ptr [ %.pre.i, %bb.i ], [ %i.ap, %.lr.ph.i ] ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not14.i = icmp eq ptr %i.au, null
  br i1 %.not14.i, label %advance_last_with_data.exit, label %.lr.ph.i, !llvm.loop !7

advance_last_with_data.exit:                      ; preds = %bb.j, %bb.h, %.preheader.i
  call void @evbuffer_invoke_callbacks_(ptr noundef nonnull %0)
  br label %.loopexit

bb.k:                                             ; preds = %bb.g
  %i.av = add nuw nsw i32 %i.z, 1
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = call fastcc ptr @evbuffer_expand_singlechain(ptr noundef nonnull %0, i64 noundef %i.aw) ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.k, %bb.f, %bb.d, %bb.c, %advance_last_with_data.exit
  %.031 = phi i32 [ -1, %bb.c ], [ -1, %bb.d ], [ %i.z, %advance_last_with_data.exit ], [ -1, %bb.f ], [ -1, %bb.k ]
  %i.az = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not40 = icmp eq ptr %i.az, null
  br i1 %.not40, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.bb = call i32 %i.ba(i32 noundef 0, ptr noundef nonnull %i.az) #16 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret i32 %.031
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy.p0(ptr, ptr) #7

declare i32 @evutil_vsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483648) i32 @evbuffer_add_printf(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #1 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call i32 @evbuffer_add_vprintf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @evbuffer_add_reference(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
.preheader.i:
  %i.a = tail call ptr @event_mm_malloc_(i64 noundef 1024) #16 ; 14 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %evbuffer_chain_new.exit.thread, label %bb.a

bb.a:                                             ; preds = %.preheader.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 1, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 12, ptr %i.g, align 8
  store ptr %1, ptr %i.e, align 8
  store i64 %2, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i64 %2, ptr %i.h, align 8
  store ptr %3, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not29 = icmp eq ptr %i.k, null
  br i1 %.not29, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.m = tail call i32 %i.l(i32 noundef 0, ptr noundef nonnull %i.k) #16 ; 0 uses
  br label %bb.c
end_hunk_0

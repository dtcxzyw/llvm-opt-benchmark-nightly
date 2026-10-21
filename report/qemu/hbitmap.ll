Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/hbitmap?download=true
inline.NumInlined: 39
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@hbitmap_iter_init:bb.a
  %storemerge.2 = and i64 %i.am, %i.ai
  store i64 %storemerge.2, ptr %i.al, align 8
  %i.an = and i64 %i.ae, 63
  %i.ao = lshr i64 %i.d, 24                       ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = shl nuw i64 1, %i.an                    ; 2 uses
  %i.au = sub i64 0, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aw = xor i64 %i.at, %i.au
  %storemerge.3 = and i64 %i.aw, %i.as
  store i64 %storemerge.3, ptr %i.av, align 8
  %i.ax = and i64 %i.ao, 63
  %i.ay = lshr i64 %i.d, 30                       ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = shl nuw i64 1, %i.ax                    ; 2 uses
  %i.be = sub i64 0, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bg = xor i64 %i.bd, %i.be
  %storemerge.4 = and i64 %i.bg, %i.bc
  store i64 %storemerge.4, ptr %i.bf, align 8
  %i.bh = and i64 %i.ay, 63
  %i.bi = lshr i64 %i.d, 36                       ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = shl nuw i64 1, %i.bh                    ; 2 uses
  %i.bo = sub i64 0, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = xor i64 %i.bn, %i.bo
  %storemerge.5 = and i64 %i.bq, %i.bm
  store i64 %storemerge.5, ptr %i.bp, align 8
  %i.br = and i64 %i.bi, 63
  %i.bs = lshr i64 %i.d, 42
  %i.bt = load ptr, ptr %i.l, align 8
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = shl nuw i64 1, %i.br                    ; 2 uses
  %i.bx = sub i64 0, %i.bw
  %i.by = xor i64 %i.bw, %i.bx
  %storemerge.6 = and i64 %i.by, %i.bv
  store i64 %storemerge.6, ptr %i.m, align 8
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 -1, -9223372036854775808) i64 @hbitmap_next_dirty(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.HBitmapIter, align 8        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = or i64 %2, %1
  %or.cond = icmp sgt i64 %i.b, -1
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__.hbitmap_next_dirty) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8                ; 3 uses
  %i.d = icmp uge i64 %1, %i.c
  %i.e = icmp eq i64 %2, 0
  %or.cond3 = or i1 %i.e, %i.d
  br i1 %or.cond3, label %hbitmap_iter_next.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false), !annotation !9
  %i.f = sub nuw i64 %i.c, %1
  %i.g = icmp ugt i64 %2, %i.f
  %i.h = add nuw i64 %2, %1
  %i.i = select i1 %i.g, i64 %i.c, i64 %i.h
  call void @hbitmap_iter_init(ptr noundef nonnull %3, ptr noundef nonnull %0, i64 noundef %1)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.k = load i64, ptr %i.j, align 8
  %i.l = load ptr, ptr %3, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8
  %i.s = and i64 %i.r, %i.k                       ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.e, label %hbitmap_iter_next.exit

bb.e:                                             ; preds = %bb.d
  %i.u = call fastcc i64 @hbitmap_iter_skip_words(ptr noundef nonnull %3) ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %hbitmap_iter_next.exit.thread, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.i = load i64, ptr %i.o, align 8
  br label %hbitmap_iter_next.exit

hbitmap_iter_next.exit:                           ; preds = %bb.d, %._crit_edge.i
  %i.w = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.p, %bb.d ]
  %.0.i = phi i64 [ %i.u, %._crit_edge.i ], [ %i.s, %bb.d ]
  %i.x = shl i64 %i.w, 6
  %i.y = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.i, i1 true)
  %i.z = or disjoint i64 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = shl i64 %i.z, %i.ac                     ; 3 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  %.not = icmp ult i64 %i.ad, %i.i
  %or.cond30 = select i1 %i.ae, i1 %.not, i1 false
  br i1 %or.cond30, label %bb.f, label %hbitmap_iter_next.exit.thread

bb.f:                                             ; preds = %hbitmap_iter_next.exit
  %i.af = call i64 @llvm.smax.i64(i64 %1, i64 %i.ad)
  br label %hbitmap_iter_next.exit.thread

hbitmap_iter_next.exit.thread:                    ; preds = %bb.e, %hbitmap_iter_next.exit, %bb.c, %bb.f
  %.0 = phi i64 [ %i.af, %bb.f ], [ -1, %bb.c ], [ -1, %hbitmap_iter_next.exit ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 -1, -9223372036854775808) i64 @hbitmap_next_zero(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8
  %i.c = zext i32 %i.b to i64                     ; 5 uses
  %i.d = ashr i64 %1, %i.c
  %i.e = ashr i64 %i.d, 6                         ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.e
  %i.i = load i64, ptr %i.h, align 8
  %i.j = or i64 %2, %1
  %or.cond = icmp sgt i64 %i.j, -1
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 229, ptr noundef nonnull @__PRETTY_FUNCTION__.hbitmap_next_zero) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %0, align 8                ; 2 uses
  %i.l = icmp uge i64 %1, %i.k
  %i.m = icmp eq i64 %2, 0
  %or.cond3 = or i1 %i.m, %i.l
  br i1 %or.cond3, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = sub nuw i64 %i.k, %1
  %i.o = icmp ugt i64 %2, %i.n
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.r = add nsw i64 %1, -1
  %i.s = add i64 %i.r, %2
  %i.t = ashr i64 %i.s, %i.c
  %i.u = add i64 %i.t, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = phi i64 [ %i.q, %bb.e ], [ %.pre, %bb.f ]
  %i.w = phi i64 [ %i.q, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  %i.x = add i64 %i.w, 63
  %i.y = lshr i64 %i.x, 6                         ; 2 uses
  %i.z = lshr i64 %1, %i.c                        ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.v
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 245, ptr noundef nonnull @__PRETTY_FUNCTION__.hbitmap_next_zero) #11
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ab = and i64 %i.z, 63
  %notmask = shl nsw i64 -1, %i.ab
  %i.ac = xor i64 %notmask, -1
  %i.ad = or i64 %i.i, %i.ac                      ; 2 uses
  %i.ae = icmp eq i64 %i.ad, -1
  br i1 %i.ae, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.i
  %i.af = add nsw i64 %i.e, 1                     ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.y
  br i1 %i.ag, label %.lr.ph, label %.critedge

.preheader:                                       ; preds = %.lr.ph
  %i.ah = add nsw i64 %i.aj, 1                    ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.y
  br i1 %i.ai, label %.lr.ph, label %.critedge, !llvm.loop !14

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %i.aj = phi i64 [ %i.ah, %.preheader ], [ %i.af, %.preheader.preheader ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp eq i64 %i.al, -1
  br i1 %i.am, label %.preheader, label %.loopexit, !llvm.loop !14

.loopexit:                                        ; preds = %.lr.ph, %bb.i
  %.1 = phi i64 [ %i.e, %bb.i ], [ %i.aj, %.lr.ph ]
  %.0 = phi i64 [ %i.ad, %bb.i ], [ %i.al, %.lr.ph ]
  %i.an = shl i64 %.1, 6
  %i.ao = xor i64 %.0, -1
  %i.ap = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ao, i1 false)
  %i.aq = add nuw i64 %i.ap, %i.an                ; 2 uses
  %.not62 = icmp ult i64 %i.aq, %i.w
  br i1 %.not62, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.loopexit
  %i.ar = shl i64 %i.aq, %i.c                     ; 3 uses
  %i.as = icmp slt i64 %i.ar, %1
  br i1 %i.as, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.at = sub i64 %1, %i.ar
  %i.au = ashr i64 %i.at, %i.c
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 266, ptr noundef nonnull @__PRETTY_FUNCTION__.hbitmap_next_zero) #11
  unreachable

.critedge:                                        ; preds = %.preheader, %.preheader.preheader, %bb.j, %bb.k, %.loopexit, %bb.c
  %.052 = phi i64 [ %1, %bb.k ], [ -1, %bb.c ], [ %i.ar, %bb.j ], [ -1, %.loopexit ], [ -1, %.preheader.preheader ], [ -1, %.preheader ]
  ret i64 %.052
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @hbitmap_next_dirty_area(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = or i64 %2, %1
  %or.cond = icmp sgt i64 %i.a, -1
  %i.b = icmp sgt i64 %3, 0
  %or.cond3 = and i1 %or.cond, %i.b
  br i1 %or.cond3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 279, ptr noundef nonnull @__PRETTY_FUNCTION__.hbitmap_next_dirty_area) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8
  %i.d = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.c) ; 3 uses
  %.not = icmp slt i64 %1, %i.d
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = sub nuw nsw i64 %i.d, %1
  %i.f = tail call i64 @hbitmap_next_dirty(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %i.e) ; 6 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = sub nsw i64 %i.d, %i.f
  %i.i = tail call i64 @llvm.smin.i64(i64 %i.h, i64 %3) ; 2 uses
  %i.j = add i64 %i.i, %i.f
  %i.k = tail call i64 @hbitmap_next_zero(ptr noundef nonnull %0, i64 noundef %i.f, i64 noundef %i.i) ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  %spec.select = select i1 %i.l, i64 %i.j, i64 %i.k
  store i64 %i.f, ptr %4, align 8
  %i.m = sub i64 %spec.select, %i.f
  store i64 %i.m, ptr %5, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.0 = phi i1 [ true, %bb.e ], [ false, %bb.c ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @hbitmap_status(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 309, ptr noundef nonnull @__PRETTY_FUNCTION__.hbitmap_status) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp sgt i64 %2, 0
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 310, ptr noundef nonnull @__PRETTY_FUNCTION__.hbitmap_status) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = add nuw i64 %2, %1
  %i.d = load i64, ptr %0, align 8
  %.not = icmp ugt i64 %i.c, %i.d
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 311, ptr noundef nonnull @__PRETTY_FUNCTION__.hbitmap_status) #11
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.e = tail call i64 @hbitmap_next_dirty(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2) ; 4 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = icmp samesign ugt i64 %i.e, %1
  br i1 %i.g, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.h = sub nuw nsw i64 %i.e, %1
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.i = icmp eq i64 %i.e, %1
  br i1 %i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 324, ptr noundef nonnull @__PRETTY_FUNCTION__.hbitmap_status) #11
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.j = tail call i64 @hbitmap_next_zero(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2) ; 3 uses
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.l = icmp samesign ugt i64 %i.j, %1
  br i1 %i.l, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 332, ptr noundef nonnull @__PRETTY_FUNCTION__.hbitmap_status) #11
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.m = sub nuw nsw i64 %i.j, %1
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.g, %bb.o, %bb.i
  %.sink = phi i64 [ %i.m, %bb.o ], [ %2, %bb.g ], [ %i.h, %bb.i ], [ %2, %bb.l ]
  %.0 = phi i1 [ true, %bb.o ], [ false, %bb.g ], [ false, %bb.i ], [ true, %bb.l ]
  store i64 %.sink, ptr %3, align 8
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @hbitmap_empty(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local i32 @hbitmap_granularity(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local i64 @hbitmap_count(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl i64 %i.b, %i.e
  ret i64 %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @hbitmap_set(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.HBitmapIter, align 8        ; 9 uses
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %1, -1
  %i.c = add i64 %i.b, %2                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = zext i32 %i.e to i64                     ; 5 uses
  %i.g = lshr i64 %1, %i.f
  %i.h = lshr i64 %i.c, %i.f                      ; 4 uses
  %i.i = load i32, ptr @trace_events_enabled_count, align 4
end_hunk_0

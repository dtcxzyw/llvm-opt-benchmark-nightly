inline.NumInlined: 213
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@mi_arenas_try_find_free:bb.a
  br i1 %.not197, label %.thread154, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %.not = icmp eq ptr %4, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = icmp slt i32 %6, 0
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.thread137.us
  %.089183.us = phi i64 [ %i.x, %.thread137.us ], [ 0, %.lr.ph ] ; 4 uses
  %i.h = icmp ult i64 %.089183.us, %i.b
  %i.i = add i64 %.089183.us, %i.e                ; 2 uses
  %.not111.us = icmp ult i64 %i.i, %i.b
  %i.j = select i1 %.not111.us, i64 0, i64 %i.b
  %spec.select.us = sub nuw i64 %i.i, %i.j
  %.097.us = select i1 %i.h, i64 %spec.select.us, i64 %.089183.us
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.097.us
  %i.l = load atomic ptr, ptr %i.k monotonic, align 8 ; 5 uses
  %.not113.us = icmp eq ptr %i.l, null
  br i1 %.not113.us, label %.thread137.us, label %.thread.us

.thread.us:                                       ; preds = %.lr.ph.split.us
  br i1 %3, label %mi_arena_id_is_suitable.exit.i.us, label %bb.d

bb.d:                                             ; preds = %.thread.us
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.n = load i8, ptr %i.m, align 4, !tbaa !53, !range !18, !noundef !19
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %.thread137.us, label %mi_arena_id_is_suitable.exit.i.us

mi_arena_id_is_suitable.exit.i.us:                ; preds = %.thread.us, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.q = load i8, ptr %i.p, align 4, !tbaa !11, !range !18, !noundef !19
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %.thread137.us, label %.thread.i.us

.thread.i.us:                                     ; preds = %mi_arena_id_is_suitable.exit.i.us
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread.i.us
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.t = load i32, ptr %i.s, align 8, !tbaa !87   ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  %i.v = icmp eq i32 %i.t, %6
  %spec.select.i.us = or i1 %i.u, %i.v
  br i1 %spec.select.i.us, label %bb.f, label %.thread137.us

bb.f:                                             ; preds = %bb.e, %.thread.i.us
  %i.w = tail call fastcc ptr @mi_arena_try_alloc_at(ptr noundef %i.l, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %5, ptr noundef %7) ; 2 uses
  %.not114.us = icmp eq ptr %i.w, null
  br i1 %.not114.us, label %.thread137.us, label %.thread180

.thread137.us:                                    ; preds = %bb.f, %bb.e, %mi_arena_id_is_suitable.exit.i.us, %bb.d, %.lr.ph.split.us
  %i.x = add nuw i64 %.089183.us, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.a
  br i1 %exitcond.not, label %.thread154, label %.lr.ph.split.us, !llvm.loop !118

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %3, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.z = load i8, ptr %i.y, align 4, !tbaa !53, !range !18, !noundef !19
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.thread154, label %bb.g

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %i.ab = tail call fastcc ptr @mi_arena_try_alloc_at(ptr noundef %4, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %5, ptr noundef %7) ; 2 uses
  %.not114.us187 = icmp eq ptr %i.ab, null
  br i1 %.not114.us187, label %.thread154, label %.thread180

bb.g:                                             ; preds = %.lr.ph.split.split.preheader
  %i.ac = tail call fastcc ptr @mi_arena_try_alloc_at(ptr noundef %4, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %5, ptr noundef %7) ; 2 uses
  %.not114 = icmp eq ptr %i.ac, null
  br i1 %.not114, label %.thread154, label %.thread180

.thread154:                                       ; preds = %.thread137.us, %bb.g, %.lr.ph.split.split.preheader, %.lr.ph.split.split.us.preheader, %bb.c
  %i.ad = icmp slt i32 %6, 0
  br i1 %i.ad, label %.thread180, label %bb.h

bb.h:                                             ; preds = %.thread154
  %i.ae = load atomic i64, ptr %0 monotonic, align 8 ; 5 uses
  %i.af = tail call i64 @llvm.usub.sat.i64(i64 %i.ae, i64 1) ; 7 uses
  %i.ag = icmp ult i64 %i.af, 2
  br i1 %i.ag, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = urem i64 %5, %i.af
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ai = phi i64 [ %i.ah, %bb.i ], [ 0, %bb.h ]  ; 3 uses
  %.not200 = icmp eq i64 %i.ae, 0
  br i1 %.not200, label %.thread180, label %.lr.ph192

.lr.ph192:                                        ; preds = %bb.j
  %.not115 = icmp eq ptr %4, null                 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not115, label %bb.k, label %.thread157.peel.a

bb.k:                                             ; preds = %.lr.ph192
  %.not225 = icmp eq i64 %i.ae, 1
  %.not116.peel = icmp ult i64 %i.ai, %i.af
  %i.ak = select i1 %.not116.peel, i64 0, i64 %i.af
  %spec.select120.peel = sub nuw i64 %i.ai, %i.ak
  %.086.peel = select i1 %.not225, i64 0, i64 %spec.select120.peel
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.086.peel
  %i.am = load atomic ptr, ptr %i.al monotonic, align 8 ; 2 uses
  %.not118.peel = icmp eq ptr %i.am, null
  br i1 %.not118.peel, label %.thread163.peel, label %.thread157.peel.a

.thread157.peel.a:                                ; preds = %.lr.ph192, %bb.k
  %.087160.peel = phi ptr [ %i.am, %bb.k ], [ %4, %.lr.ph192 ] ; 5 uses
  br i1 %3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread157.peel.a
  %i.an = getelementptr inbounds nuw i8, ptr %.087160.peel, i64 20
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !53, !range !18, !noundef !19
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %.thread163.peel, label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread157.peel.a
  %i.aq = icmp eq ptr %.087160.peel, %4
  br i1 %i.aq, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %.not115, label %mi_arena_id_is_suitable.exit.i127.peel, label %.thread163.peel

mi_arena_id_is_suitable.exit.i127.peel:           ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %.087160.peel, i64 52
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !11, !range !18, !noundef !19
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %.thread163.peel, label %.thread.i128.peel

.thread.i128.peel:                                ; preds = %mi_arena_id_is_suitable.exit.i127.peel
  %i.au = getelementptr inbounds nuw i8, ptr %.087160.peel, i64 48
  %i.av = load i32, ptr %i.au, align 8, !tbaa !87 ; 2 uses
  %i.aw = icmp slt i32 %i.av, 0
  %i.ax = icmp eq i32 %i.av, %6
  %spec.select.i129.peel = or i1 %i.aw, %i.ax
  br i1 %spec.select.i129.peel, label %.thread163.peel, label %bb.o

bb.o:                                             ; preds = %.thread.i128.peel, %bb.m
  %i.ay = tail call fastcc ptr @mi_arena_try_alloc_at(ptr noundef %.087160.peel, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %5, ptr noundef %7) ; 2 uses
  %.not119.peel = icmp eq ptr %i.ay, null
  br i1 %.not119.peel, label %.thread163.peel, label %.thread180

.thread163.peel:                                  ; preds = %bb.o, %.thread.i128.peel, %mi_arena_id_is_suitable.exit.i127.peel, %bb.n, %bb.l, %bb.k
  %exitcond208.peel.not = icmp eq i64 %i.ae, 1
  br i1 %exitcond208.peel.not, label %.thread180, label %.peel.next

.peel.next:                                       ; preds = %.thread163.peel, %.thread163
  %.088191 = phi i64 [ %i.bp, %.thread163 ], [ 1, %.thread163.peel ] ; 4 uses
  br i1 %.not115, label %bb.p, label %.thread180

bb.p:                                             ; preds = %.peel.next
  %i.az = icmp ult i64 %.088191, %i.af
  %i.ba = add i64 %.088191, %i.ai                 ; 2 uses
  %.not116 = icmp ult i64 %i.ba, %i.af
  %i.bb = select i1 %.not116, i64 0, i64 %i.af
  %spec.select120 = sub nuw i64 %i.ba, %i.bb
  %.086 = select i1 %i.az, i64 %spec.select120, i64 %.088191
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.086
  %i.bd = load atomic ptr, ptr %i.bc monotonic, align 8 ; 5 uses
  %.not118 = icmp eq ptr %i.bd, null
  br i1 %.not118, label %.thread163, label %.thread157.a

.thread157.a:                                     ; preds = %bb.p
  br i1 %3, label %mi_arena_id_is_suitable.exit.i127, label %bb.q

bb.q:                                             ; preds = %.thread157.a
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 20
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !53, !range !18, !noundef !19
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.thread163, label %mi_arena_id_is_suitable.exit.i127

mi_arena_id_is_suitable.exit.i127:                ; preds = %.thread157.a, %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 52
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !11, !range !18, !noundef !19
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %.thread163, label %.thread.i128

.thread.i128:                                     ; preds = %mi_arena_id_is_suitable.exit.i127
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !87 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 0
  %i.bn = icmp eq i32 %i.bl, %6
  %spec.select.i129 = or i1 %i.bm, %i.bn
  br i1 %spec.select.i129, label %.thread163, label %bb.r

bb.r:                                             ; preds = %.thread.i128
  %i.bo = tail call fastcc ptr @mi_arena_try_alloc_at(ptr noundef %i.bd, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %5, ptr noundef %7) ; 2 uses
  %.not119 = icmp eq ptr %i.bo, null
  br i1 %.not119, label %.thread163, label %.thread180

.thread163:                                       ; preds = %.thread.i128, %mi_arena_id_is_suitable.exit.i127, %bb.q, %bb.p, %bb.r
  %i.bp = add nuw i64 %.088191, 1                 ; 2 uses
  %exitcond208.not = icmp eq i64 %i.bp, %i.ae
  br i1 %exitcond208.not, label %.thread180, label %.peel.next, !llvm.loop !119

.thread180:                                       ; preds = %bb.f, %.peel.next, %.thread163, %bb.r, %bb.g, %.lr.ph.split.split.us.preheader, %bb.o, %.thread163.peel, %bb.j, %.thread154
  %.10 = phi ptr [ %i.ab, %.lr.ph.split.split.us.preheader ], [ null, %.thread154 ], [ %i.ac, %bb.g ], [ null, %.peel.next ], [ null, %bb.j ], [ null, %.thread163.peel ], [ %i.ay, %bb.o ], [ null, %.thread163 ], [ %i.bo, %bb.r ], [ %i.w, %bb.f ]
  ret ptr %.10
}

declare zeroext i1 @_mi_preloading() local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define internal fastcc ptr @mi_arena_try_alloc_at(ptr noundef nonnull %0, i64 noundef range(i64 0, 18014398509481984) %1, i1 noundef zeroext %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #7 {
bb.a:
  %i.a = alloca i64, align 8                      ; 12 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54   ; 4 uses
  switch i64 %1, label %bb.b [
    i64 1, label %.split
    i64 8, label %mi_bbitmap_try_find_and_clearN.exit
  ]

.split:                                           ; preds = %bb.a
  %i.g = call zeroext i1 @mi_bbitmap_try_find_and_clear(ptr noundef %i.f, i64 noundef %3, ptr noundef nonnull %i.a) #14
  br i1 %i.g, label %bb.d, label %mi_bbitmap_try_find_and_clearN.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i64 %1, -513
  %or.cond.i = icmp ult i64 %i.h, -512
  br i1 %or.cond.i, label %mi_bbitmap_try_find_and_clearN.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ult i64 %1, 65
  br i1 %i.i, label %.split55, label %.split56

.split55:                                         ; preds = %bb.c
  %i.j = call zeroext i1 @mi_bbitmap_try_find_and_clearNX(ptr noundef %i.f, i64 noundef %3, i64 noundef range(i64 0, 18014398509481984) %1, ptr noundef nonnull %i.a) #14
  br i1 %i.j, label %bb.d, label %mi_bbitmap_try_find_and_clearN.exit.thread

.split56:                                         ; preds = %bb.c
  %i.k = call zeroext i1 @mi_bbitmap_try_find_and_clearN_(ptr noundef %i.f, i64 noundef %3, i64 noundef range(i64 0, 18014398509481984) %1, ptr noundef nonnull %i.a) #14
  br i1 %i.k, label %bb.d, label %mi_bbitmap_try_find_and_clearN.exit.thread

mi_bbitmap_try_find_and_clearN.exit:              ; preds = %bb.a
  %i.l = call zeroext i1 @mi_bbitmap_try_find_and_clear8(ptr noundef %i.f, i64 noundef %3, ptr noundef nonnull %i.a) #14
  br i1 %i.l, label %bb.d, label %mi_bbitmap_try_find_and_clearN.exit.thread

bb.d:                                             ; preds = %.split56, %.split55, %.split, %mi_bbitmap_try_find_and_clearN.exit
  %i.m = load i64, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.n = shl i64 %i.m, 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 5 uses
  %i.p = trunc i64 %i.m to i32
  %i.q = trunc nuw nsw i64 %1 to i32
  store ptr %0, ptr %4, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.p, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.q, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !10
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 7, ptr %.sroa.6.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.s = load i8, ptr %i.r, align 4, !tbaa !53, !range !18, !noundef !19
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 %i.s, ptr %i.t, align 4, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.v = load i8, ptr %i.u, align 2, !tbaa !120, !range !18, !noundef !19
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 0, ptr %i.b, align 8, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !89
  %i.z = call zeroext i1 @mi_bitmap_setN(ptr noundef %i.y, i64 noundef %i.m, i64 noundef %1, ptr noundef nonnull %i.b) #14
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 22
  %i.ab = zext i1 %i.z to i8
  store i8 %i.ab, ptr %i.aa, align 2, !tbaa !83
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !20
  %i.ad = sub i64 %1, %i.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.050 = phi i64 [ %i.ad, %bb.e ], [ %1, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !51 ; 2 uses
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !20  ; 2 uses
  br i1 %2, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ah = call i64 @mi_bitmap_popcountN(ptr noundef %i.af, i64 noundef %i.ag, i64 noundef %1) #14 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %1
  br i1 %i.ai, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i8 0, ptr %i.c, align 1, !tbaa !86
  %i.aj = shl nuw nsw i64 %1, 16
  %i.ak = sub nuw nsw i64 %1, %i.ah
  %i.al = shl nuw nsw i64 %i.ak, 16
  %i.am = call zeroext i1 @_mi_os_commit_ex(ptr noundef nonnull %i.o, i64 noundef %i.aj, ptr noundef nonnull %i.c, i64 noundef %i.al) #14
  br i1 %i.am, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.an = load i8, ptr %i.c, align 1, !tbaa !86, !range !18, !noundef !19
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 22
  store i8 1, ptr %i.ap, align 2, !tbaa !83
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.j
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !51
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !20
  %i.as = call zeroext i1 @mi_bitmap_setN(ptr noundef %i.aq, i64 noundef %i.ar, i64 noundef %1, ptr noundef null) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %.critedge

bb.k:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.au = load i64, ptr %i.a, align 8, !tbaa !20
  %i.av = call zeroext i1 @mi_bbitmap_setN(ptr noundef %i.at, i64 noundef %i.au, i64 noundef %1) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %mi_bbitmap_try_find_and_clearN.exit.thread

bb.l:                                             ; preds = %bb.g
  %i.aw = shl nuw nsw i64 %1, 16
  call void @_mi_os_reuse(ptr noundef nonnull %i.o, i64 noundef %i.aw) #14
  %i.ax = call zeroext i1 @_mi_os_has_overcommit() #14
  %i.ay = icmp ne i64 %.050, 0
  %or.cond = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %or.cond, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !58
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2064
  %i.bc = shl i64 %.050, 16
  call void @__mi_stat_increase_mt(ptr noundef nonnull %i.bb, i64 noundef %i.bc) #14
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.l, %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 21
  store i8 1, ptr %i.bd, align 1, !tbaa !82
  br label %mi_bbitmap_try_find_and_clearN.exit.thread

bb.n:                                             ; preds = %bb.f
  %i.be = call zeroext i1 @mi_bitmap_is_xsetN(i1 noundef zeroext true, ptr noundef %i.af, i64 noundef %i.ag, i64 noundef range(i64 0, 18014398509481984) %1) #14 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 21
  %i.bg = zext i1 %i.be to i8
  store i8 %i.bg, ptr %i.bf, align 1, !tbaa !82
  br i1 %i.be, label %mi_bbitmap_try_find_and_clearN.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i64 0, ptr %i.d, align 8, !tbaa !20
  %i.bh = load ptr, ptr %i.ae, align 8, !tbaa !51
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !20
  %i.bj = call zeroext i1 @mi_bitmap_setN(ptr noundef %i.bh, i64 noundef %i.bi, i64 noundef %1, ptr noundef nonnull %i.d) #14 ; 0 uses
  %i.bk = load ptr, ptr %i.ae, align 8, !tbaa !51
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !20
  %i.bm = call zeroext i1 @mi_bitmap_clearN(ptr noundef %i.bk, i64 noundef %i.bl, i64 noundef %1) #14 ; 0 uses
  %i.bn = call ptr @_mi_subproc() #14
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 2064
  %i.bp = load i64, ptr %i.d, align 8, !tbaa !20
  %i.bq = shl i64 %i.bp, 16
  call void @__mi_stat_decrease_mt(ptr noundef nonnull %i.bo, i64 noundef %i.bq) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %mi_bbitmap_try_find_and_clearN.exit.thread

mi_bbitmap_try_find_and_clearN.exit.thread:       ; preds = %bb.b, %bb.k, %.split56, %.split55, %.split, %.critedge, %bb.n, %bb.o, %mi_bbitmap_try_find_and_clearN.exit
  %.4 = phi ptr [ null, %mi_bbitmap_try_find_and_clearN.exit ], [ null, %bb.k ], [ %i.o, %.critedge ], [ %i.o, %bb.n ], [ %i.o, %bb.o ], [ null, %.split56 ], [ null, %.split ], [ null, %.split55 ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %.4
}

declare i64 @mi_bitmap_popcountN(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare zeroext i1 @_mi_os_commit_ex(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_mi_os_reuse(ptr noundef, i64 noundef) local_unnamed_addr #6

declare zeroext i1 @_mi_os_has_overcommit() local_unnamed_addr #6

declare void @__mi_stat_increase_mt(ptr noundef, i64 noundef) local_unnamed_addr #6

declare zeroext i1 @mi_bitmap_clearN(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare zeroext i1 @mi_bbitmap_try_find_and_clear(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

declare zeroext i1 @mi_bbitmap_try_find_and_clear8(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

declare zeroext i1 @mi_bbitmap_try_find_and_clearNX(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

declare zeroext i1 @mi_bbitmap_try_find_and_clearN_(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

declare zeroext i1 @mi_bitmap_is_xsetN(i1 noundef zeroext, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @mi_option_get_size(i32 noundef) local_unnamed_addr #6
end_hunk_0

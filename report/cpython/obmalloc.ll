inline.NumInlined: 1359
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 44
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_mi_segment_page_alloc:bb.a
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = load i32, ptr %i.p, align 8, !tbaa !52
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 16
  %i.x = icmp ugt i32 %i.s, 7
  br i1 %i.x, label %bb.k, label %_mi_segment_page_start.exit.i

bb.k:                                             ; preds = %bb.j
  %i.y = icmp ult i32 %i.s, 65
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.z = mul nuw nsw i64 %i.t, 3
  br label %_mi_segment_page_start.exit.i

bb.m:                                             ; preds = %bb.k
  %i.aa = icmp ult i32 %i.s, 513
  %spec.select.i.i.i = select i1 %i.aa, i64 %i.t, i64 0
  br label %_mi_segment_page_start.exit.i

_mi_segment_page_start.exit.i:                    ; preds = %bb.m, %bb.l, %bb.j
  %.0.i.i.i = phi i64 [ %i.z, %bb.l ], [ 0, %bb.j ], [ %spec.select.i.i.i, %bb.m ] ; 2 uses
  %i.ab = sub nsw i64 %i.w, %.0.i.i.i
  %i.ac = ptrtoint ptr %i.p to i64
  %i.ad = getelementptr i8, ptr %i.n, i64 264
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ac, %i.ae
  %i.ag = sdiv exact i64 %i.af, 80
  %i.ah = shl i64 %i.ag, 16
  %i.ai = getelementptr i8, ptr %i.n, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 %.0.i.i.i ; 2 uses
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 2147483648)
  %i.al = trunc nuw i64 %i.ak to i32
  store i32 %i.al, ptr %i.r, align 4, !tbaa !21
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %mi_segment_huge_page_alloc.exit, label %bb.n

bb.n:                                             ; preds = %_mi_segment_page_start.exit.i
  %i.am = getelementptr i8, ptr %i.n, i64 24
  %i.an = load i8, ptr %i.am, align 8, !tbaa !284, !range !42, !noundef !43
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.o, label %mi_segment_huge_page_alloc.exit

bb.o:                                             ; preds = %bb.n
  %i.ap = ptrtoint ptr %i.aj to i64
  %i.aq = add nsw i64 %2, -1
  %i.ar = tail call range(i64 1, 26) i64 @llvm.ctpop.i64(i64 %2)
  %i.as = icmp samesign ult i64 %i.ar, 2
  %i.at = add i64 %i.aq, %i.ap                    ; 3 uses
  br i1 %i.as, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.au = sub nsw i64 0, %2
  %i.av = and i64 %i.at, %i.au
  br label %_mi_align_up.exit.i

bb.q:                                             ; preds = %bb.o
  %i.aw = urem i64 %i.at, %2
  %i.ax = sub nuw i64 %i.at, %i.aw
  br label %_mi_align_up.exit.i

_mi_align_up.exit.i:                              ; preds = %bb.q, %bb.p
  %.0.i.i = phi i64 [ %i.av, %bb.p ], [ %i.ax, %bb.q ]
  %i.ay = getelementptr i8, ptr %i.aj, i64 8      ; 2 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %.0.i.i, %i.az
  %i.bb = tail call zeroext i1 @_mi_os_reset(ptr noundef %i.ay, i64 noundef %i.ba, ptr noundef nonnull @_mi_stats_main) ; 0 uses
  br label %mi_segment_huge_page_alloc.exit

mi_segment_huge_page_alloc.exit:                  ; preds = %bb.i, %_mi_segment_page_start.exit.i, %bb.n, %_mi_align_up.exit.i
  %.0.i = phi ptr [ null, %bb.i ], [ %i.p, %_mi_align_up.exit.i ], [ %i.p, %bb.n ], [ %i.p, %_mi_segment_page_start.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.r

bb.r:                                             ; preds = %bb.d, %bb.h, %mi_segment_huge_page_alloc.exit, %bb.f, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.g, %bb.d ], [ %i.i, %bb.f ], [ %i.k, %bb.h ], [ %.0.i, %mi_segment_huge_page_alloc.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mi_segment_huge_page_alloc(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef captures(address) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store ptr null, ptr %i.a, align 8, !tbaa !53
  %i.b = call fastcc ptr @mi_segment_alloc(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %i.a) ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.d, i64 28       ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !21   ; 4 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = load i32, ptr %i.d, align 8, !tbaa !52
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 16
  %i.l = icmp ugt i32 %i.g, 7
  br i1 %i.l, label %bb.c, label %_mi_segment_page_start.exit

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ult i32 %i.g, 65
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = mul nuw nsw i64 %i.h, 3
  br label %_mi_segment_page_start.exit

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i32 %i.g, 513
  %spec.select.i.i = select i1 %i.o, i64 %i.h, i64 0
  br label %_mi_segment_page_start.exit

_mi_segment_page_start.exit:                      ; preds = %bb.b, %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.n, %bb.d ], [ 0, %bb.b ], [ %spec.select.i.i, %bb.e ] ; 2 uses
  %i.p = sub nsw i64 %i.k, %.0.i.i
  %i.q = ptrtoint ptr %i.d to i64
  %i.r = getelementptr i8, ptr %i.b, i64 264
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.q, %i.s
  %i.u = sdiv exact i64 %i.t, 80
  %i.v = shl i64 %i.u, 16
  %i.w = getelementptr i8, ptr %i.b, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 %.0.i.i  ; 2 uses
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.p, i64 2147483648)
  %i.z = trunc nuw i64 %i.y to i32
  store i32 %i.z, ptr %i.f, align 4, !tbaa !21
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_mi_segment_page_start.exit
  %i.aa = getelementptr i8, ptr %i.b, i64 24
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !284, !range !42, !noundef !43
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ad = ptrtoint ptr %i.x to i64
  %i.ae = add i64 %1, -1
  %i.af = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.ag = icmp samesign ult i64 %i.af, 2
  %i.ah = add i64 %i.ae, %i.ad                    ; 3 uses
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = sub i64 0, %1
  %i.aj = and i64 %i.ah, %i.ai
  br label %_mi_align_up.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = urem i64 %i.ah, %1
  %i.al = sub nuw i64 %i.ah, %i.ak
  br label %_mi_align_up.exit

_mi_align_up.exit:                                ; preds = %bb.h, %bb.i
  %.0.i = phi i64 [ %i.aj, %bb.h ], [ %i.al, %bb.i ]
  %i.am = getelementptr i8, ptr %i.x, i64 8       ; 2 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %.0.i, %i.an
  %i.ap = tail call zeroext i1 @_mi_os_reset(ptr noundef %i.am, i64 noundef %i.ao, ptr noundef nonnull @_mi_stats_main) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %_mi_segment_page_start.exit, %bb.f, %_mi_align_up.exit, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.d, %_mi_align_up.exit ], [ %i.d, %bb.f ], [ %i.d, %_mi_segment_page_start.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mi_segments_page_alloc(ptr noundef %0, i64 noundef range(i64 0, 16777217) %1, i64 noundef range(i64 0, 16777217) %2, ptr nofree noundef captures(address) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = icmp samesign ugt i64 %1, 524288         ; 2 uses
  %.neg = select i1 %i.b, i64 -524288, i64 -65536
  %i.c = select i1 %i.b, i64 524287, i64 65535
  %i.d = add nuw nsw i64 %i.c, %1
  %i.e = and i64 %i.d, %.neg                      ; 2 uses
  %i.f = lshr exact i64 %i.e, 16                  ; 4 uses
  %i.g = getelementptr i8, ptr %0, i64 2856       ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !204  ; 2 uses
  %i.i = icmp samesign ult i64 %i.e, 589824
  br i1 %i.i, label %mi_span_queue_for.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i64 %i.f, -1                     ; 2 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true) ; 2 uses
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = sub nuw nsw i64 61, %i.k
  %i.n = lshr i64 %i.j, %i.m
  %i.o = and i64 %i.n, 3
  %i.p = or disjoint i64 %i.o, %i.l
  %i.q = xor i64 %i.p, 252
  %i.r = add nsw i64 %i.q, -4
  br label %mi_span_queue_for.exit.i

mi_span_queue_for.exit.i:                         ; preds = %bb.b, %bb.a
  %.1.i.i.i.i = phi i64 [ %i.f, %bb.a ], [ %i.r, %bb.b ]
  %i.s = getelementptr [24 x i8], ptr %3, i64 %.1.i.i.i.i ; 3 uses
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 range(i64 0, 281474976710656) %i.f, i64 1) ; 6 uses
  %i.t = getelementptr i8, ptr %3, i64 840        ; 3 uses
  %.not77.i = icmp ugt ptr %i.s, %i.t
  br i1 %.not77.i, label %.loopexit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %mi_span_queue_for.exit.i
  %i.u = icmp eq i32 %i.h, 0
  br i1 %i.u, label %.preheader.us.i, label %.preheader.i

.preheader.us.i:                                  ; preds = %.preheader.lr.ph.i, %._crit_edge.split.us.us.i
  %.03778.us.i = phi ptr [ %i.v, %._crit_edge.split.us.us.i ], [ %i.s, %.preheader.lr.ph.i ] ; 4 uses
  %.03655.us.i = load ptr, ptr %.03778.us.i, align 8, !tbaa !53 ; 4 uses
  %.not3956.us.i = icmp eq ptr %.03655.us.i, null
  br i1 %.not3956.us.i, label %._crit_edge.split.us.us.i, label %.lr.ph.us.i

._crit_edge.split.us.us.i:                        ; preds = %bb.e, %.preheader.us.i
  %i.v = getelementptr i8, ptr %.03778.us.i, i64 24 ; 2 uses
  %.not.us.i = icmp ugt ptr %i.v, %i.t
  br i1 %.not.us.i, label %.loopexit, label %.preheader.us.i, !llvm.loop !313

.lr.ph.us.i:                                      ; preds = %.preheader.us.i, %bb.e
  %.03657.us.us.i = phi ptr [ %.036.us.us.i, %bb.e ], [ %.03655.us.i, %.preheader.us.i ] ; 5 uses
  %i.w = load i32, ptr %.03657.us.us.i, align 8, !tbaa !52 ; 3 uses
  %i.x = zext i32 %i.w to i64                     ; 3 uses
  %.not40.us.us.i = icmp samesign ugt i64 %spec.store.select.i, %i.x
  br i1 %.not40.us.us.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.us.i
  %i.y = ptrtoint ptr %.03657.us.us.i to i64      ; 3 uses
  %i.z = add i64 %i.y, -1
  %i.aa = and i64 %i.z, -33554432                 ; 3 uses
  %i.ab = inttoptr i64 %i.aa to ptr               ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !110
  %i.ae = icmp eq i32 %i.ad, 6
  br i1 %i.ae, label %bb.d, label %.split.us.i

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !60
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !60, !range !42, !noundef !43
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = icmp ne i32 %i.ag, 0
  %spec.select.i.i.us.us.not.i = and i1 %i.ak, %i.aj
  br i1 %spec.select.i.i.us.us.not.i, label %bb.e, label %.split.us.i

bb.e:                                             ; preds = %bb.d, %.lr.ph.us.i
  %i.al = getelementptr i8, ptr %.03657.us.us.i, i64 56
  %.036.us.us.i = load ptr, ptr %i.al, align 8, !tbaa !53 ; 2 uses
  %.not39.us.us.i = icmp eq ptr %.036.us.us.i, null
  br i1 %.not39.us.us.i, label %._crit_edge.split.us.us.i, label %.lr.ph.us.i, !llvm.loop !314

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %._crit_edge.split.i
  %.03778.i = phi ptr [ %i.dd, %._crit_edge.split.i ], [ %i.s, %.preheader.lr.ph.i ] ; 3 uses
  %.03655.i = load ptr, ptr %.03778.i, align 8, !tbaa !53 ; 3 uses
  %.not3956.i = icmp eq ptr %.03655.i, null
  br i1 %.not3956.i, label %._crit_edge.split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_mi_arena_memid_is_suitable.exit.i
  %.03657.i = phi ptr [ %.036.i, %_mi_arena_memid_is_suitable.exit.i ], [ %.03655.i, %.preheader.i ] ; 4 uses
  %i.am = load i32, ptr %.03657.i, align 8, !tbaa !52 ; 2 uses
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %.not40.i = icmp samesign ugt i64 %spec.store.select.i, %i.an
  br i1 %.not40.i, label %_mi_arena_memid_is_suitable.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.ao = ptrtoint ptr %.03657.i to i64           ; 2 uses
  %i.ap = add i64 %i.ao, -1
  %i.aq = and i64 %i.ap, -33554432                ; 2 uses
  %i.ar = inttoptr i64 %i.aq to ptr               ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !110
  %i.au = icmp eq i32 %i.at, 6
  br i1 %i.au, label %bb.g, label %_mi_arena_memid_is_suitable.exit.i

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !60
  %i.ax = icmp eq i32 %i.aw, %i.h
  br i1 %i.ax, label %.split.us.i, label %_mi_arena_memid_is_suitable.exit.i

.split.us.i:                                      ; preds = %bb.g, %bb.d, %bb.c
  %i.ay = phi i32 [ %i.w, %bb.d ], [ %i.w, %bb.c ], [ %i.am, %bb.g ]
  %i.az = phi ptr [ %.03655.us.i, %bb.d ], [ %.03655.us.i, %bb.c ], [ %.03655.i, %bb.g ]
  %.us-phi.i = phi i64 [ %i.aa, %bb.d ], [ %i.aa, %bb.c ], [ %i.aq, %bb.g ]
  %.us-phi58.i = phi ptr [ %.03778.us.i, %bb.d ], [ %.03778.us.i, %bb.c ], [ %.03778.i, %bb.g ] ; 2 uses
  %.us-phi59.i = phi i64 [ %i.y, %bb.d ], [ %i.y, %bb.c ], [ %i.ao, %bb.g ]
  %.us-phi60.i = phi ptr [ %i.ab, %bb.d ], [ %i.ab, %bb.c ], [ %i.ar, %bb.g ] ; 4 uses
  %.us-phi61.i = phi i64 [ %i.x, %bb.d ], [ %i.x, %bb.c ], [ %i.an, %bb.g ] ; 3 uses
  %.us-phi62.i = phi ptr [ %.03657.us.us.i, %bb.d ], [ %.03657.us.us.i, %bb.c ], [ %.03657.i, %bb.g ] ; 7 uses
  %i.ba = getelementptr i8, ptr %.us-phi62.i, i64 64 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !264 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bb, null
  %.phi.trans.insert.i = getelementptr i8, ptr %.us-phi62.i, i64 56 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !197 ; 4 uses
  br i1 %.not.i.i, label %.split.us._crit_edge.i, label %bb.h

bb.h:                                             ; preds = %.split.us.i
  %i.bc = getelementptr i8, ptr %i.bb, i64 56
  store ptr %.pre.i, ptr %i.bc, align 8, !tbaa !197
  br label %.split.us._crit_edge.i

.split.us._crit_edge.i:                           ; preds = %bb.h, %.split.us.i
  %i.bd = icmp eq ptr %.us-phi62.i, %i.az
  br i1 %i.bd, label %bb.i, label %._crit_edge.i.i

bb.i:                                             ; preds = %.split.us._crit_edge.i
  store ptr %.pre.i, ptr %.us-phi58.i, align 8, !tbaa !287
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.i, %.split.us._crit_edge.i
  %.not19.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not19.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.be = getelementptr i8, ptr %.pre.i, i64 64
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !264
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %i.bf = getelementptr i8, ptr %.us-phi58.i, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !289
  %i.bh = icmp eq ptr %.us-phi62.i, %i.bg
  br i1 %i.bh, label %bb.l, label %mi_span_queue_delete.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !264
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !289
  br label %mi_span_queue_delete.exit.i

mi_span_queue_delete.exit.i:                      ; preds = %bb.l, %bb.k
  %i.bj = getelementptr i8, ptr %.us-phi62.i, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.phi.trans.insert.i, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.bj, align 4, !tbaa !21
  %i.bk = icmp samesign ult i64 %spec.store.select.i, %.us-phi61.i
  %reass.sub = sub i64 %.us-phi59.i, %.us-phi.i   ; 2 uses
  %i.bl = add i64 %reass.sub, -264
  br i1 %i.bk, label %bb.m, label %mi_span_queue_delete.exit._crit_edge.i.a

bb.m:                                             ; preds = %mi_span_queue_delete.exit.i
  %i.bm = sub nuw nsw i64 %.us-phi61.i, %spec.store.select.i ; 5 uses
  %i.bn = getelementptr i8, ptr %.us-phi60.i, i64 240
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !286
  %i.bp = icmp eq i32 %i.bo, 1
  br i1 %i.bp, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr i8, ptr %.us-phi60.i, i64 256
  %i.br = load atomic i64, ptr %i.bq seq_cst, align 8, !tbaa !292
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = icmp samesign ult i64 %i.bm, 9
  br i1 %i.bt, label %mi_span_queue_for.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = add nsw i64 %i.bm, -1                   ; 2 uses
  %i.bv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bu, i1 true) ; 2 uses
  %i.bw = shl nuw nsw i64 %i.bv, 2
  %i.bx = sub nuw nsw i64 61, %i.bv
  %i.by = lshr i64 %i.bu, %i.bx
  %i.bz = and i64 %i.by, 3
  %i.ca = or disjoint i64 %i.bz, %i.bw
  %i.cb = xor i64 %i.ca, 252
  %i.cc = add nsw i64 %i.cb, -4
  br label %mi_span_queue_for.exit.i.i.i

mi_span_queue_for.exit.i.i.i:                     ; preds = %bb.p, %bb.o
  %.1.i.i.i.i.i.i = phi i64 [ %i.bm, %bb.o ], [ %i.cc, %bb.p ]
  %i.cd = getelementptr [24 x i8], ptr %3, i64 %.1.i.i.i.i.i.i
  br label %bb.q

bb.q:                                             ; preds = %mi_span_queue_for.exit.i.i.i, %bb.n, %bb.m
  %i.ce = phi ptr [ %i.cd, %mi_span_queue_for.exit.i.i.i ], [ null, %bb.n ], [ null, %bb.m ] ; 4 uses
  %i.cf = getelementptr i8, ptr %.us-phi60.i, i64 %reass.sub ; 2 uses
  %i.cg = getelementptr [80 x i8], ptr %i.cf, i64 %spec.store.select.i ; 8 uses
  %i.ch = trunc nuw i64 %i.bm to i32              ; 2 uses
  store i32 %i.ch, ptr %i.cg, align 8, !tbaa !52
  %i.ci = getelementptr i8, ptr %i.cg, i64 4
  store i32 0, ptr %i.ci, align 4, !tbaa !59
  %i.cj = icmp samesign ugt i64 %i.bm, 1
  br i1 %i.cj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ck = getelementptr [80 x i8], ptr %i.cf, i64 %.us-phi61.i ; 3 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 -80
  store i32 0, ptr %i.cl, align 8, !tbaa !52
  %i.cm = mul i32 %i.ch, 80
  %i.cn = add i32 %i.cm, -80
  %i.co = getelementptr i8, ptr %i.ck, i64 -76
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !59
  %i.cp = getelementptr i8, ptr %i.ck, i64 -52
  store i32 0, ptr %i.cp, align 4, !tbaa !21
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not.i.i42.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i42.i, label %mi_segment_slice_split.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = getelementptr i8, ptr %i.cg, i64 64
  store ptr null, ptr %i.cq, align 8, !tbaa !264
  %i.cr = load ptr, ptr %i.ce, align 8, !tbaa !287 ; 3 uses
  %i.cs = getelementptr i8, ptr %i.cg, i64 56
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !197
  store ptr %i.cg, ptr %i.ce, align 8, !tbaa !287
  %.not.i26.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i26.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ct = getelementptr i8, ptr %i.cr, i64 64
  store ptr %i.cg, ptr %i.ct, align 8, !tbaa !264
  br label %mi_segment_slice_split.exit.i

bb.v:                                             ; preds = %bb.t
  %i.cu = getelementptr i8, ptr %i.ce, i64 8
  store ptr %i.cg, ptr %i.cu, align 8, !tbaa !289
  br label %mi_segment_slice_split.exit.i

mi_segment_slice_split.exit.i:                    ; preds = %bb.v, %bb.u, %bb.s
  %i.cv = getelementptr i8, ptr %i.cg, i64 28
  store i32 0, ptr %i.cv, align 4, !tbaa !21
  %i.cw = trunc nuw nsw i64 %spec.store.select.i to i32 ; 2 uses
  store i32 %i.cw, ptr %.us-phi62.i, align 8, !tbaa !52
  br label %mi_span_queue_delete.exit._crit_edge.i.a

mi_span_queue_delete.exit._crit_edge.i.a:         ; preds = %mi_segment_slice_split.exit.i, %mi_span_queue_delete.exit.i
  %5 = phi i32 [ %i.cw, %mi_segment_slice_split.exit.i ], [ %i.ay, %mi_span_queue_delete.exit.i ]
  %i.cx = sdiv exact i64 %i.bl, 80
  %6 = zext i32 %5 to i64
  %i.cy = getelementptr i8, ptr %3, i64 896       ; 2 uses
  %.val.i = load ptr, ptr %i.cy, align 8, !tbaa !201
  %i.cz = tail call fastcc ptr @mi_segment_span_allocate(ptr noundef nonnull %.us-phi60.i, i64 noundef %i.cx, i64 noundef %6, ptr %.val.i) ; 3 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.w, label %mi_segments_page_find_and_allocate.exit

bb.w:                                             ; preds = %mi_span_queue_delete.exit._crit_edge.i.a
  %i.db = tail call fastcc ptr @mi_segment_span_free_coalesce(ptr noundef nonnull %.us-phi62.i, ptr noundef nonnull %3) ; 0 uses
  br label %.loopexit

_mi_arena_memid_is_suitable.exit.i:               ; preds = %bb.g, %bb.f, %.lr.ph.i
  %i.dc = getelementptr i8, ptr %.03657.i, i64 56
  %.036.i = load ptr, ptr %i.dc, align 8, !tbaa !53 ; 2 uses
  %.not39.i = icmp eq ptr %.036.i, null
  br i1 %.not39.i, label %._crit_edge.split.i, label %.lr.ph.i, !llvm.loop !314

._crit_edge.split.i:                              ; preds = %_mi_arena_memid_is_suitable.exit.i, %.preheader.i
  %i.dd = getelementptr i8, ptr %.03778.i, i64 24 ; 2 uses
  %.not.i = icmp ugt ptr %i.dd, %i.t
  br i1 %.not.i, label %.loopexit, label %.preheader.i, !llvm.loop !313

.loopexit:                                        ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %bb.w, %mi_span_queue_for.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i8 0, ptr %i.a, align 1, !tbaa !125
  %i.de = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 680), align 8, !tbaa !111
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.x, label %mi_option_get_clamp.exit.i.i, !prof !17

bb.x:                                             ; preds = %.loopexit
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 672)), !inline_history !113
  br label %mi_option_get_clamp.exit.i.i

mi_option_get_clamp.exit.i.i:                     ; preds = %bb.x, %.loopexit
  %i.dg = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 672), align 16, !tbaa !114
  %i.dh = tail call i64 @llvm.smax.i64(i64 %i.dg, i64 8)
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.dh, i64 1024)
  %i.di = getelementptr i8, ptr %3, i64 912       ; 2 uses
  %i.dj = getelementptr i8, ptr %3, i64 896
  br label %bb.y

bb.y:                                             ; preds = %select.unfold.i.i, %mi_option_get_clamp.exit.i.i
  %.in.i.i = phi i64 [ %spec.select.i.i, %mi_option_get_clamp.exit.i.i ], [ %i.dk, %select.unfold.i.i ] ; 2 uses
  %i.dk = add nsw i64 %.in.i.i, -1
  %i.dl = load ptr, ptr %i.di, align 8, !tbaa !294 ; 9 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 64     ; 7 uses
  %i.dn = load atomic i64, ptr %i.dm monotonic, align 64
  %i.do = icmp ult i64 %i.dn, 33554432
  br i1 %i.do, label %bb.z, label %mi_abandoned_visited_revisit.exit.thread.i.i.i, !prof !55

bb.z:                                             ; preds = %bb.y
  %i.dp = load atomic ptr, ptr %i.dl monotonic, align 64
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %mi_segment_try_reclaim.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dr = atomicrmw xchg ptr %i.dl, ptr null acq_rel, align 64 ; 4 uses
  %.not54.i.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not54.i.i.i.i, label %mi_segment_try_reclaim.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ds = load atomic i64, ptr %i.dm monotonic, align 64 ; 3 uses
  %i.dt = icmp ult i64 %i.ds, 33554432
  br i1 %i.dt, label %bb.ac, label %.critedge.i.i.i.i.preheader

.critedge.i.i.i.i.preheader:                      ; preds = %bb.ac, %bb.ab
  br label %.critedge.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.du = getelementptr i8, ptr %i.dl, i64 192    ; 2 uses
  %i.dv = load atomic i64, ptr %i.du monotonic, align 64 ; 2 uses
  %i.dw = add nuw nsw i64 %i.ds, 1
  %i.dx = and i64 %i.dw, 33554431
  %i.dy = ptrtoint ptr %i.dr to i64
  %i.dz = or i64 %i.dx, %i.dy
  %i.ea = cmpxchg ptr %i.dm, i64 %i.ds, i64 %i.dz acq_rel acquire, align 64
  %i.eb = extractvalue { i64, i1 } %i.ea, 1
  br i1 %i.eb, label %bb.ad, label %.critedge.i.i.i.i.preheader, !prof !299

bb.ad:                                            ; preds = %bb.ac
  %i.ec = getelementptr i8, ptr %i.dl, i64 128
  %i.ed = atomicrmw add ptr %i.ec, i64 %i.dv monotonic, align 64 ; 0 uses
  %i.ee = atomicrmw sub ptr %i.du, i64 %i.dv monotonic, align 64 ; 0 uses
  br label %mi_abandoned_visited_revisit.exit.thread.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.i.i.i.i.preheader, %.critedge.i.i.i.i
  %.050.i.i.i.i = phi ptr [ %i.eg, %.critedge.i.i.i.i ], [ %i.dr, %.critedge.i.i.i.i.preheader ] ; 2 uses
  %i.ef = getelementptr i8, ptr %.050.i.i.i.i, i64 176
  %i.eg = load atomic ptr, ptr %i.ef monotonic, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i.i, label %bb.ae, label %.critedge.i.i.i.i, !llvm.loop !300

bb.ae:                                            ; preds = %.critedge.i.i.i.i
  %i.eh = getelementptr i8, ptr %.050.i.i.i.i, i64 176
  %i.ei = load atomic i64, ptr %i.dm monotonic, align 64
  %i.ej = getelementptr i8, ptr %i.dl, i64 192    ; 2 uses
  %i.ek = ptrtoint ptr %i.dr to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %bb.ae
  %.051.i.i.i.i = phi i64 [ %i.ei, %bb.ae ], [ %i.et, %bb.af ] ; 3 uses
  %i.el = load atomic i64, ptr %i.ej monotonic, align 64 ; 2 uses
  %i.em = and i64 %.051.i.i.i.i, -33554432
  %i.en = inttoptr i64 %i.em to ptr
  store atomic ptr %i.en, ptr %i.eh release, align 8
  %i.eo = add i64 %.051.i.i.i.i, 1
  %i.ep = and i64 %i.eo, 33554431
  %i.eq = or i64 %i.ep, %i.ek
  %i.er = cmpxchg weak ptr %i.dm, i64 %.051.i.i.i.i, i64 %i.eq release monotonic, align 64 ; 2 uses
  %i.es = extractvalue { i64, i1 } %i.er, 1
  %i.et = extractvalue { i64, i1 } %i.er, 0
  br i1 %i.es, label %bb.ag, label %bb.af, !prof !299, !llvm.loop !301

bb.ag:                                            ; preds = %bb.af
  %i.eu = getelementptr i8, ptr %i.dl, i64 128
  %i.ev = atomicrmw add ptr %i.eu, i64 %i.el monotonic, align 64 ; 0 uses
  %i.ew = atomicrmw sub ptr %i.ej, i64 %i.el monotonic, align 64 ; 0 uses
  br label %mi_abandoned_visited_revisit.exit.thread.i.i.i

mi_abandoned_visited_revisit.exit.thread.i.i.i:   ; preds = %bb.ag, %bb.ad, %bb.y
  %i.ex = getelementptr i8, ptr %i.dl, i64 256    ; 3 uses
  %i.ey = atomicrmw add ptr %i.ex, i64 1 monotonic, align 64 ; 0 uses
  %i.ez = load atomic i64, ptr %i.dm acquire, align 64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %mi_abandoned_visited_revisit.exit.thread.i.i.i
  %.029.i.i.i = phi i64 [ %i.ez, %mi_abandoned_visited_revisit.exit.thread.i.i.i ], [ %i.fl, %bb.ai ] ; 3 uses
  %i.fa = and i64 %.029.i.i.i, -33554432          ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.fa, 0
  br i1 %.not.i.i.i, label %mi_abandoned_pop.exit.thread42.i.i, label %bb.ai

mi_abandoned_pop.exit.thread42.i.i:               ; preds = %bb.ah
  %i.fb = atomicrmw sub ptr %i.ex, i64 1 monotonic, align 64 ; 0 uses
  br label %mi_segment_try_reclaim.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.fc = inttoptr i64 %i.fa to ptr               ; 13 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 176
  %i.fe = load atomic ptr, ptr %i.fd monotonic, align 16
  %i.ff = add i64 %.029.i.i.i, 1
  %i.fg = and i64 %i.ff, 33554431
  %i.fh = ptrtoint ptr %i.fe to i64
  %i.fi = or i64 %i.fg, %i.fh
  %i.fj = cmpxchg weak ptr %i.dm, i64 %.029.i.i.i, i64 %i.fi acq_rel acquire, align 64 ; 2 uses
  %i.fk = extractvalue { i64, i1 } %i.fj, 1
  %i.fl = extractvalue { i64, i1 } %i.fj, 0
  br i1 %i.fk, label %bb.aj, label %bb.ah, !llvm.loop !302

bb.aj:                                            ; preds = %bb.ai
  %i.fm = getelementptr i8, ptr %i.fc, i64 176    ; 2 uses
  %i.fn = atomicrmw sub ptr %i.ex, i64 1 monotonic, align 64 ; 0 uses
  store atomic ptr null, ptr %i.fm release, align 8
  %i.fo = getelementptr i8, ptr %i.dl, i64 128
  %i.fp = atomicrmw sub ptr %i.fo, i64 1 monotonic, align 64 ; 0 uses
  %i.fq = getelementptr i8, ptr %i.fc, i64 200    ; 3 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !297
  %i.fs = add i64 %i.fr, 1
  store i64 %i.fs, ptr %i.fq, align 8, !tbaa !297
  %.0.i37.sroa.539.0..0.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 20
  %.0.i37.sroa.539.0.copyload.i.i = load i32, ptr %.0.i37.sroa.539.0..0.i.sroa_idx.i.i, align 4
  %i.ft = load i32, ptr %i.g, align 8, !tbaa !204 ; 3 uses
  %i.fu = icmp eq i32 %.0.i37.sroa.539.0.copyload.i.i, 6
  br i1 %i.fu, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %.0.i37.sroa.4.0..0.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  %.0.i37.sroa.4.0.copyload.i.i = load i8, ptr %.0.i37.sroa.4.0..0.i.sroa_idx.i.i, align 4
  %.0.i37.sroa.3.0..0.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %.0.i37.sroa.3.0.copyload.i.i = load i32, ptr %.0.i37.sroa.3.0..0.i.sroa_idx.i.i, align 8
  %i.fv = trunc nuw i8 %.0.i37.sroa.4.0.copyload.i.i to i1
  %.not.i.i.i.i.i = xor i1 %i.fv, true
  %i.fw = icmp eq i32 %i.ft, 0
  %or.cond.i.i.i.i.i = and i1 %i.fw, %.not.i.i.i.i.i
  %i.fx = icmp eq i32 %.0.i37.sroa.3.0.copyload.i.i, %i.ft
  %spec.select.i.i.i.i.i = or i1 %i.fx, %or.cond.i.i.i.i.i
  br label %_mi_heap_memid_is_suitable.exit.i.i

bb.al:                                            ; preds = %bb.aj
  %i.fy = icmp eq i32 %i.ft, 0
  br label %_mi_heap_memid_is_suitable.exit.i.i

_mi_heap_memid_is_suitable.exit.i.i:              ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i = phi i1 [ %spec.select.i.i.i.i.i, %bb.ak ], [ %i.fy, %bb.al ] ; 2 uses
  %i.fz = tail call fastcc zeroext i1 @mi_segment_check_free(ptr noundef %i.fc, i64 noundef range(i64 0, 281474976710656) %i.f, i64 noundef range(i64 0, 16777217) %2, ptr noundef %3)
  %i.ga = getelementptr i8, ptr %i.fc, i64 208
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !67
  %i.gc = icmp eq i64 %i.gb, 0
  br i1 %i.gc, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_mi_heap_memid_is_suitable.exit.i.i
  %i.gd = tail call fastcc ptr @mi_segment_reclaim(ptr noundef %i.fc, ptr noundef nonnull %0, i64 noundef 0, ptr noundef null, ptr noundef %3) ; 0 uses
  br label %select.unfold.i.i

bb.an:                                            ; preds = %_mi_heap_memid_is_suitable.exit.i.i
  %or.cond.i.i = select i1 %i.fz, i1 %.0.i.i.i.i, i1 false
  br i1 %or.cond.i.i, label %.thread.i.i, label %bb.ao

.thread.i.i:                                      ; preds = %bb.an
  %i.ge = call fastcc ptr @mi_segment_reclaim(ptr noundef %i.fc, ptr noundef nonnull %0, i64 noundef range(i64 0, 16777217) %2, ptr noundef nonnull %i.a, ptr noundef %3)
  %i.gf = icmp eq ptr %i.ge, null
  br label %mi_segment_try_reclaim.exit.i
end_hunk_0

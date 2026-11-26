Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yyjson/original/yyjson?download=true
inline.NumInlined: 38
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 115
begin_hunk_0_@yyjson_locate_pos:bb.a

.lr.ph:                                           ; preds = %bb.i, %bb.o
  %.173 = phi ptr [ %i.q, %bb.o ], [ %.0, %bb.i ] ; 2 uses
  %.04372 = phi i64 [ %i.i, %bb.o ], [ 0, %bb.i ]
  %.04471 = phi i64 [ %.246, %bb.o ], [ 0, %bb.i ] ; 5 uses
  %.04770 = phi i64 [ %.249, %bb.o ], [ 0, %bb.i ] ; 5 uses
  %i.h = load i8, ptr %.173, align 1, !tbaa !100  ; 6 uses
  %i.i = add i64 %.04372, 1                       ; 3 uses
  %i.j = icmp sgt i8 %i.h, -1
  br i1 %i.j, label %bb.j, label %bb.k, !prof !62

bb.j:                                             ; preds = %.lr.ph
  %i.k = icmp eq i8 %i.h, 10                      ; 2 uses
  %i.l = zext i1 %i.k to i64
  %spec.select67 = add i64 %.04770, %i.l
  %spec.select68 = select i1 %i.k, i64 %i.i, i64 %.04471
  br label %bb.o

bb.k:                                             ; preds = %.lr.ph
  %i.m = icmp samesign ult i8 %i.h, -64
  br i1 %i.m, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.n = icmp samesign ult i8 %i.h, -32
  br i1 %i.n, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.o = icmp samesign ult i8 %i.h, -16
  br i1 %i.o, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.p = icmp samesign ult i8 %i.h, -8
  %. = select i1 %i.p, i64 4, i64 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink = phi i64 [ 1, %bb.j ], [ 2, %bb.l ], [ 3, %bb.m ], [ %., %bb.n ], [ 1, %bb.k ]
  %.249 = phi i64 [ %spec.select67, %bb.j ], [ %.04770, %bb.l ], [ %.04770, %bb.m ], [ %.04770, %bb.n ], [ %.04770, %bb.k ] ; 2 uses
  %.246 = phi i64 [ %spec.select68, %bb.j ], [ %.04471, %bb.l ], [ %.04471, %bb.m ], [ %.04471, %bb.n ], [ %.04471, %bb.k ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.173, i64 %.sink ; 2 uses
  %i.r = icmp ult ptr %i.q, %i.a
  br i1 %i.r, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !194

._crit_edge.loopexit:                             ; preds = %bb.o
  %i.s = add i64 %.249, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %.047.lcssa = phi i64 [ 1, %bb.i ], [ %i.s, %._crit_edge.loopexit ]
  %.044.lcssa = phi i64 [ 0, %bb.i ], [ %.246, %._crit_edge.loopexit ]
  %.043.lcssa = phi i64 [ 0, %bb.i ], [ %i.i, %._crit_edge.loopexit ] ; 2 uses
  %.not61 = icmp eq ptr %3, null
  br i1 %.not61, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  store i64 %.047.lcssa, ptr %3, align 8, !tbaa !106
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge
  %.not62 = icmp eq ptr %4, null
  br i1 %.not62, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %reass.sub = sub i64 %.043.lcssa, %.044.lcssa
  %i.t = add i64 %reass.sub, 1
  store i64 %i.t, ptr %4, align 8, !tbaa !106
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not63 = icmp eq ptr %5, null
  br i1 %.not63, label %bb.t, label %.sink.split

.sink.split:                                      ; preds = %bb.s, %bb.f
  %.043.lcssa.sink = phi i64 [ 0, %bb.f ], [ %.043.lcssa, %bb.s ]
  store i64 %.043.lcssa.sink, ptr %5, align 8, !tbaa !106
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.s, %bb.f
  ret i1 %or.cond.not
}

; Function Attrs: nounwind uwtable
define ptr @yyjson_read_opts(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef %4) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca i32, align 4                      ; 41 uses
  %5 = alloca %struct.bigint, align 8             ; 29 uses
  %6 = alloca %struct.bigint, align 8             ; 20 uses
  %i.b = alloca i32, align 4                      ; 41 uses
  %7 = alloca %struct.bigint, align 8             ; 29 uses
  %8 = alloca %struct.bigint, align 8             ; 20 uses
  %i.c = alloca i32, align 4                      ; 41 uses
  %9 = alloca %struct.bigint, align 8             ; 29 uses
  %10 = alloca %struct.bigint, align 8            ; 20 uses
  %i.d = alloca i32, align 4                      ; 41 uses
  %11 = alloca %struct.bigint, align 8            ; 29 uses
  %12 = alloca %struct.bigint, align 8            ; 20 uses
  %i.e = alloca ptr, align 8                      ; 159 uses
  %i.f = alloca ptr, align 8                      ; 37 uses
  %i.g = alloca [1 x i8], align 1                 ; 3 uses
  %i.h = alloca ptr, align 8                      ; 49 uses
  %i.i = alloca ptr, align 8                      ; 193 uses
  %i.j = alloca ptr, align 8                      ; 37 uses
  %i.k = alloca [1 x i8], align 1                 ; 3 uses
  %i.l = alloca ptr, align 8                      ; 49 uses
  %13 = alloca %struct.yyjson_read_err, align 8   ; 77 uses
  %14 = alloca %struct.yyjson_alc, align 8        ; 21 uses
  %i.m = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !48
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) @YYJSON_DEFAULT_ALC, i64 32, i1 false), !tbaa.struct !48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #33
  %.not108 = icmp eq ptr %4, null                 ; 75 uses
  %spec.store.select = select i1 %.not108, ptr %13, ptr %4 ; 41 uses
  %.not109 = icmp eq ptr %0, null
  br i1 %.not109, label %bb.e, label %bb.f, !prof !45

bb.e:                                             ; preds = %bb.d
  %spec.store.select.sroa.sel1779.v.sroa.sel.v.sroa.sel.v = select i1 %.not108, ptr %13, ptr %4
  %spec.store.select.sroa.sel1779.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1779.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel1779.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  %spec.store.select.sroa.sel1782.v.sroa.sel.v.sroa.sel.v = select i1 %.not108, ptr %13, ptr %4
  %spec.store.select.sroa.sel1782.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1782.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str, ptr %spec.store.select.sroa.sel1782.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  store i32 1, ptr %spec.store.select, align 8, !tbaa !115
  br label %bb.bro

bb.f:                                             ; preds = %bb.d
  %.not110 = icmp eq i64 %1, 0
  br i1 %.not110, label %bb.g, label %bb.h, !prof !45

bb.g:                                             ; preds = %bb.f
  %spec.store.select.sroa.sel1773.v.sroa.sel.v.sroa.sel.v = select i1 %.not108, ptr %13, ptr %4
  %spec.store.select.sroa.sel1773.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1773.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel1773.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  %spec.store.select.sroa.sel1776.v.sroa.sel.v.sroa.sel.v = select i1 %.not108, ptr %13, ptr %4
  %spec.store.select.sroa.sel1776.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1776.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.1, ptr %spec.store.select.sroa.sel1776.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  store i32 1, ptr %spec.store.select, align 8, !tbaa !115
  br label %bb.bro

bb.h:                                             ; preds = %bb.f
  %i.n = and i32 %2, 1
  %.not4641 = icmp eq i32 %i.n, 0                 ; 4 uses
  br i1 %.not4641, label %bb.j, label %bb.i, !prof !62

bb.i:                                             ; preds = %bb.h
  store ptr %0, ptr %i.m, align 8, !tbaa !107
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp ugt i64 %1, -6
  br i1 %i.o, label %bb.k, label %bb.l, !prof !45

bb.k:                                             ; preds = %bb.j
  %spec.store.select.sroa.sel1743.v.sroa.sel.v.sroa.sel.v = select i1 %.not108, ptr %13, ptr %4
  %spec.store.select.sroa.sel1743.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1743.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel1743.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  %spec.store.select.sroa.sel1746.v.sroa.sel.v.sroa.sel.v = select i1 %.not108, ptr %13, ptr %4
  %spec.store.select.sroa.sel1746.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1746.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.2, ptr %spec.store.select.sroa.sel1746.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  store i32 2, ptr %spec.store.select, align 8, !tbaa !115
  br label %bb.bro

bb.l:                                             ; preds = %bb.j
  %i.p = load ptr, ptr %14, align 8, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !61
  %i.s = add nuw i64 %1, 4
  %i.t = tail call ptr %i.p(ptr noundef %i.r, i64 noundef %i.s) #33 ; 5 uses
  %.not111 = icmp eq ptr %i.t, null
  br i1 %.not111, label %bb.m, label %bb.n, !prof !45

bb.m:                                             ; preds = %bb.l
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not108, ptr %13, ptr %4
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  %spec.store.select.sroa.sel1740.v.sroa.sel.v.sroa.sel.v = select i1 %.not108, ptr %13, ptr %4
  %spec.store.select.sroa.sel1740.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1740.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.2, ptr %spec.store.select.sroa.sel1740.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  store i32 2, ptr %spec.store.select, align 8, !tbaa !115
  br label %bb.bro

bb.n:                                             ; preds = %bb.l
  store ptr %i.t, ptr %i.m, align 8, !tbaa !107
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull align 1 %0, i64 %1, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  %i.u = phi ptr [ null, %bb.i ], [ %i.t, %bb.n ] ; 2 uses
  %i.v = phi ptr [ %0, %bb.i ], [ %i.t, %bb.n ]   ; 73 uses
  %.0 = getelementptr inbounds nuw i8, ptr %i.v, i64 %1 ; 79 uses
  store i32 0, ptr %.0, align 1
  %i.w = and i32 %2, 256
  %.not4642 = icmp eq i32 %i.w, 0
  br i1 %.not4642, label %bb.s, label %bb.p, !prof !62

bb.p:                                             ; preds = %bb.o
  %i.x = icmp ugt i64 %1, 2
  br i1 %i.x, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.copyload.i = load i16, ptr %i.v, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !100
  %.sroa.4.0.insert.ext.i = zext i8 %i.z to i32
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 16
  %.sroa.0.0.insert.ext.i = zext i16 %.sroa.0.0.copyload.i to i32
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.aa = icmp eq i32 %.sroa.0.0.insert.insert.i, 12565487
  br i1 %i.aa, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 3 ; 2 uses
  store ptr %i.ab, ptr %i.m, align 8, !tbaa !107
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r, %bb.o
  %.promoted = phi ptr [ %i.v, %bb.p ], [ %i.v, %bb.q ], [ %i.ab, %bb.r ], [ %i.v, %bb.o ] ; 3 uses
  %i.ac = load i8, ptr %.promoted, align 1, !tbaa !100 ; 2 uses
  %i.ad = and i8 %i.ac, -33
  %i.ae = icmp eq i8 %i.ad, 91
  br i1 %i.ae, label %bb.ac, label %.preheader5154, !prof !62

.preheader5154:                                   ; preds = %bb.s, %.preheader5154
  %i.af = phi ptr [ %i.al, %.preheader5154 ], [ %.promoted, %bb.s ] ; 6 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !100 ; 2 uses
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !100 ; 2 uses
  %i.ak = and i8 %i.aj, 4
  %.not4643 = icmp eq i8 %i.ak, 0
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  br i1 %.not4643, label %bb.t, label %.preheader5154, !llvm.loop !195

bb.t:                                             ; preds = %.preheader5154
  store ptr %i.af, ptr %i.m, align 8
  %i.am = and i8 %i.ag, -33
  %i.an = icmp eq i8 %i.am, 91
  br i1 %i.an, label %bb.z, label %bb.u, !prof !62

bb.u:                                             ; preds = %bb.t
  %i.ao = and i32 %2, 2056
  %.not4644 = icmp eq i32 %i.ao, 0
  br i1 %.not4644, label %bb.z, label %bb.v, !prof !62

bb.v:                                             ; preds = %bb.u
  %i.ap = and i8 %i.aj, 40
  %.not4645 = icmp eq i8 %i.ap, 0
  br i1 %.not4645, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aq = call fastcc zeroext i1 @skip_trivia(ptr noundef %i.m, ptr noundef nonnull %.0, i32 noundef %2)
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !107 ; 3 uses
  %i.ar = icmp ne ptr %.pre, %.0
  %or.cond8966.not = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond8966.not, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %15 = ptrtoint ptr %.pre to i64
  %16 = ptrtoint ptr %i.v to i64
  %17 = sub i64 %15, %16
  %spec.store.select.sroa.sel1749.v.sroa.sel.v.sroa.sel.v = select i1 %.not108, ptr %13, ptr %4
  %spec.store.select.sroa.sel1749.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1749.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %17, ptr %spec.store.select.sroa.sel1749.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  %spec.store.select.sroa.sel1752.v.sroa.sel.v.sroa.sel.v = select i1 %.not108, ptr %13, ptr %4
  %spec.store.select.sroa.sel1752.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1752.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.3, ptr %spec.store.select.sroa.sel1752.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  store i32 8, ptr %spec.store.select, align 8, !tbaa !115
  br i1 %.not4641, label %bb.y, label %bb.bro, !prof !116

bb.y:                                             ; preds = %bb.x
  %i.as = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !60
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !61
  tail call void %i.at(ptr noundef %i.av, ptr noundef nonnull %i.v) #33
  br label %bb.bro

bb.z:                                             ; preds = %bb.u, %bb.v, %bb.w, %bb.t
  %i.aw = phi ptr [ %i.af, %bb.u ], [ %i.af, %bb.v ], [ %i.af, %bb.t ], [ %.pre, %bb.w ] ; 3 uses
  %.not112 = icmp ult ptr %i.aw, %.0
  br i1 %.not112, label %._crit_edge7464, label %bb.aa, !prof !62

._crit_edge7464:                                  ; preds = %bb.z
  %.pre7465 = load i8, ptr %i.aw, align 1, !tbaa !100
  br label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %spec.store.select.sroa.sel1767.v.sroa.sel.v.sroa.sel.v = select i1 %.not108, ptr %13, ptr %4
  %spec.store.select.sroa.sel1767.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1767.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel1767.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  %spec.store.select.sroa.sel1770.v.sroa.sel.v.sroa.sel.v = select i1 %.not108, ptr %13, ptr %4
  %spec.store.select.sroa.sel1770.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1770.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.4, ptr %spec.store.select.sroa.sel1770.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  store i32 3, ptr %spec.store.select, align 8, !tbaa !115
  br i1 %.not4641, label %bb.ab, label %bb.bro, !prof !116

bb.ab:                                            ; preds = %bb.aa
  %i.ax = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !60
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !61
  tail call void %i.ay(ptr noundef %i.ba, ptr noundef nonnull %i.v) #33
  br label %bb.bro

bb.ac:                                            ; preds = %._crit_edge7464, %bb.s
  %i.bb = phi i8 [ %.pre7465, %._crit_edge7464 ], [ %i.ac, %bb.s ]
  %i.bc = phi ptr [ %i.aw, %._crit_edge7464 ], [ %.promoted, %bb.s ] ; 7 uses
  %i.bd = and i8 %i.bb, -33
  %i.be = icmp eq i8 %i.bd, 91
  br i1 %i.be, label %bb.ad, label %bb.brd, !prof !62

bb.ad:                                            ; preds = %bb.ac
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !100
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !100
  %i.bk = and i8 %i.bj, 4
  %.not4646 = icmp eq i8 %i.bk, 0
  br i1 %.not4646, label %._crit_edge7523, label %bb.ae

._crit_edge7523:                                  ; preds = %bb.ad
  %.sroa.02176.0.copyload2177.pre = load ptr, ptr %14, align 8
  br label %bb.ajm

bb.ae:                                            ; preds = %bb.ad
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !100
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !100
  %i.bq = and i8 %i.bp, 4
  %.not4647 = icmp eq i8 %i.bq, 0
  %.sroa.02176.0.copyload2177.pre7524 = load ptr, ptr %14, align 8 ; 3 uses
  br i1 %.not4647, label %bb.ajm, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.sroa.5.0..sroa_idx2120 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.sroa.5.0.copyload2121 = load ptr, ptr %.sroa.5.0..sroa_idx2120, align 8 ; 13 uses
  %.sroa.17.0..sroa_idx2133 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %.sroa.17.0.copyload2134 = load ptr, ptr %.sroa.17.0..sroa_idx2133, align 8 ; 15 uses
  %.sroa.31.0..sroa_idx2148 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %.sroa.31.0.copyload2149 = load ptr, ptr %.sroa.31.0..sroa_idx2148, align 8 ; 28 uses
  store ptr %i.bc, ptr %i.i, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #33
  store ptr %i.k, ptr %i.l, align 8, !tbaa !107
  %i.br = and i32 %2, 2
  %.not4801 = icmp eq i32 %i.br, 0                ; 2 uses
  %i.bs = ptrtoint ptr %.0 to i64
  %i.bt = ptrtoint ptr %i.bc to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = lshr i64 %i.bu, 4
  %i.bw = call i64 @llvm.umin.i64(i64 %i.bv, i64 1152921504606846967)
  %i.bx = add nuw nsw i64 %i.bw, 8
  %i.by = select i1 %.not4801, i64 %i.bx, i64 24, !prof !62 ; 6 uses
  %i.bz = shl nuw i64 %i.by, 4
  %i.ca = call ptr %.sroa.02176.0.copyload2177.pre7524(ptr noundef %.sroa.31.0.copyload2149, i64 noundef %i.bz) #33, !inline_history !196 ; 8 uses
  %.not.i = icmp eq ptr %i.ca, null
  br i1 %.not.i, label %bb.aji, label %bb.ag, !prof !45

bb.ag:                                            ; preds = %bb.af
  %i.cb = getelementptr [16 x i8], ptr %i.ca, i64 %i.by
  %i.cc = getelementptr i8, ptr %i.cb, i64 -32    ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 64 ; 10 uses
  %i.ce = load ptr, ptr %i.i, align 8, !tbaa !107 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1 ; 5 uses
  store ptr %i.cf, ptr %i.i, align 8, !tbaa !107
  %i.cg = load i8, ptr %i.ce, align 1, !tbaa !100
  %i.ch = icmp eq i8 %i.cg, 123
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 72 ; 2 uses
  br i1 %i.ch, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  store i64 7, ptr %i.cd, align 8, !tbaa !99
  store i64 0, ptr %i.ci, align 8, !tbaa !100
  %i.cj = load i8, ptr %i.cf, align 1, !tbaa !100
  %i.ck = icmp eq i8 %i.cj, 10
  br i1 %i.ck, label %bb.ai, label %.preheader5151

bb.ai:                                            ; preds = %bb.ah
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  br label %.preheader5151.sink.split

bb.aj:                                            ; preds = %bb.ag
  store i64 6, ptr %i.cd, align 8, !tbaa !99
  store i64 0, ptr %i.ci, align 8, !tbaa !100
  %i.cm = load i8, ptr %i.cf, align 1, !tbaa !100
  %i.cn = icmp eq i8 %i.cm, 10
  br i1 %i.cn, label %bb.ak, label %.preheader5090

bb.ak:                                            ; preds = %bb.aj
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  br label %.preheader5090.sink.split

.loopexit5092:                                    ; preds = %bb.agv, %._crit_edge5807
  %.pn.i = phi ptr [ %.promoted5823, %._crit_edge5807 ], [ %i.eej, %bb.agv ]
  %.0769.i = phi i64 [ %.2771.i.ph, %._crit_edge5807 ], [ %.18787.i.ph, %bb.agv ] ; 4 uses
  %.0760.i = phi i64 [ %.1761.i.ph, %._crit_edge5807 ], [ %.6766.i.ph, %bb.agv ]
  %.0726.i = phi ptr [ %.3729.i.ph, %._crit_edge5807 ], [ %.30756.i.ph, %bb.agv ] ; 4 uses
  %.0693.i = phi ptr [ %.3696.i.ph, %._crit_edge5807 ], [ %.30723.i.ph, %bb.agv ] ; 2 uses
  %.0660.i = phi ptr [ %.3663.i.ph, %._crit_edge5807 ], [ %.30690.i.ph, %bb.agv ]
  %.0648.i = phi ptr [ %.3651.i.ph, %._crit_edge5807 ], [ %.30.i.ph, %bb.agv ] ; 4 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 2 uses
  store ptr %storemerge.i, ptr %i.i, align 8, !tbaa !107
  %i.cp = shl i64 %.0760.i, 8
  %i.cq = add i64 %i.cp, 256
  %i.cr = load i64, ptr %.0648.i, align 8, !tbaa !99
  %i.cs = and i64 %i.cr, 255
  %i.ct = or disjoint i64 %i.cs, %i.cq
  store i64 %i.ct, ptr %.0648.i, align 8, !tbaa !99
  %i.cu = getelementptr inbounds nuw i8, ptr %.0660.i, i64 16 ; 3 uses
  %.not873.i = icmp ult ptr %i.cu, %.0693.i
  br i1 %.not873.i, label %bb.am, label %bb.al, !prof !62

bb.al:                                            ; preds = %.loopexit5092
  %i.cv = lshr i64 %.0769.i, 1
  %i.cw = add i64 %i.cv, %.0769.i                 ; 3 uses
  %i.cx = shl i64 %.0769.i, 4
  %i.cy = shl i64 %i.cw, 4
  %i.cz = call ptr %.sroa.5.0.copyload2121(ptr noundef %.sroa.31.0.copyload2149, ptr noundef %.0726.i, i64 noundef %i.cx, i64 noundef %i.cy) #33, !inline_history !196 ; 5 uses
  %.not874.i = icmp eq ptr %i.cz, null
  br i1 %.not874.i, label %bb.aji, label %.thread

.thread:                                          ; preds = %bb.al
  %i.da = ptrtoint ptr %.0648.i to i64
  %i.db = ptrtoint ptr %.0726.i to i64            ; 2 uses
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ptrtoint ptr %i.cu to i64
  %i.de = sub i64 %i.dd, %i.db
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dc
  %i.dh = getelementptr [16 x i8], ptr %i.cz, i64 %i.cw
  %i.di = getelementptr i8, ptr %i.dh, i64 -32
  %.pre7498 = load ptr, ptr %i.i, align 8, !tbaa !107
  br label %bb.am

bb.am:                                            ; preds = %.thread, %.loopexit5092
  %i.dj = phi ptr [ %.pre7498, %.thread ], [ %storemerge.i, %.loopexit5092 ] ; 3 uses
  %.1770.i = phi i64 [ %i.cw, %.thread ], [ %.0769.i, %.loopexit5092 ] ; 2 uses
  %.2728.i = phi ptr [ %i.cz, %.thread ], [ %.0726.i, %.loopexit5092 ] ; 2 uses
  %.2695.i = phi ptr [ %i.di, %.thread ], [ %.0693.i, %.loopexit5092 ] ; 2 uses
  %.2662.i = phi ptr [ %i.df, %.thread ], [ %i.cu, %.loopexit5092 ] ; 7 uses
  %.2650.i = phi ptr [ %i.dg, %.thread ], [ %.0648.i, %.loopexit5092 ]
  store i64 6, ptr %.2662.i, align 8, !tbaa !99
  %i.dk = ptrtoint ptr %.2662.i to i64
  %i.dl = ptrtoint ptr %.2650.i to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %.2662.i, i64 8
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !100
  %i.do = load i8, ptr %i.dj, align 1, !tbaa !100
  %i.dp = icmp eq i8 %i.do, 10
  br i1 %i.dp, label %bb.an, label %.preheader5090

bb.an:                                            ; preds = %bb.am
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  br label %.preheader5090.sink.split

.preheader5090.sink.split:                        ; preds = %bb.pg, %._crit_edge5801, %bb.ak, %bb.an
  %.sink10228 = phi ptr [ %i.dq, %bb.an ], [ %i.co, %bb.ak ], [ %i.cjo, %._crit_edge5801 ], [ %i.cjq, %bb.pg ] ; 2 uses
  %.2771.i.ph.ph = phi i64 [ %.1770.i, %bb.an ], [ %i.by, %bb.ak ], [ %.10779.i.ph, %._crit_edge5801 ], [ %.10779.i.ph, %bb.pg ]
end_hunk_0
begin_hunk_1_@read_root_single:bb.a

bb.mu:                                            ; preds = %bb.ik
  %i.bvh = and i32 %4, 16
  %.not669 = icmp eq i32 %i.bvh, 0
  br i1 %.not669, label %read_inf_or_nan.exit182, label %bb.mv, !prof !62

bb.mv:                                            ; preds = %bb.mu
  %i.bvi = icmp eq i8 %i.k, 45                    ; 4 uses
  %i.bvj = icmp eq i8 %i.k, 43                    ; 3 uses
  %i.bvk = and i32 %4, 512
  %i.bvl = icmp eq i32 %i.bvk, 0
  %or.cond657.not = and i1 %i.bvl, %i.bvj
  br i1 %or.cond657.not, label %.thread1293, label %bb.mw, !prof !116

bb.mw:                                            ; preds = %bb.mv
  %i.bvm = or i1 %i.bvj, %i.bvi
  %i.bvn = zext i1 %i.bvm to i64
  %i.bvo = getelementptr inbounds nuw i8, ptr %1, i64 %i.bvn ; 9 uses
  %i.bvp = load i8, ptr %i.bvo, align 1, !tbaa !100
  %i.bvq = and i8 %i.bvp, -33
  %i.bvr = icmp eq i8 %i.bvq, 73
  br i1 %i.bvr, label %bb.mx, label %bb.ni

bb.mx:                                            ; preds = %bb.mw
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.bvo, i64 1
  %i.bvt = load i8, ptr %i.bvs, align 1, !tbaa !100
  %i.bvu = and i8 %i.bvt, -33
  %i.bvv = icmp eq i8 %i.bvu, 78
  br i1 %i.bvv, label %bb.my, label %bb.ni

bb.my:                                            ; preds = %bb.mx
  %i.bvw = getelementptr inbounds nuw i8, ptr %i.bvo, i64 2
  %i.bvx = load i8, ptr %i.bvw, align 1, !tbaa !100
  %i.bvy = and i8 %i.bvx, -33
  %i.bvz = icmp eq i8 %i.bvy, 70
  br i1 %i.bvz, label %bb.mz, label %bb.ni

bb.mz:                                            ; preds = %bb.my
  %i.bwa = getelementptr inbounds nuw i8, ptr %i.bvo, i64 3 ; 2 uses
  %i.bwb = load i8, ptr %i.bwa, align 1, !tbaa !100
  %i.bwc = and i8 %i.bwb, -33
  %i.bwd = icmp eq i8 %i.bwc, 73
  br i1 %i.bwd, label %bb.na, label %bb.nf

bb.na:                                            ; preds = %bb.mz
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.bvo, i64 4
  %i.bwf = load i8, ptr %i.bwe, align 1, !tbaa !100
  %i.bwg = and i8 %i.bwf, -33
  %i.bwh = icmp eq i8 %i.bwg, 78
  br i1 %i.bwh, label %bb.nb, label %bb.ni

bb.nb:                                            ; preds = %bb.na
  %i.bwi = getelementptr inbounds nuw i8, ptr %i.bvo, i64 5
  %i.bwj = load i8, ptr %i.bwi, align 1, !tbaa !100
  %i.bwk = and i8 %i.bwj, -33
  %i.bwl = icmp eq i8 %i.bwk, 73
  br i1 %i.bwl, label %bb.nc, label %bb.ni

bb.nc:                                            ; preds = %bb.nb
  %i.bwm = getelementptr inbounds nuw i8, ptr %i.bvo, i64 6
  %i.bwn = load i8, ptr %i.bwm, align 1, !tbaa !100
  %i.bwo = and i8 %i.bwn, -33
  %i.bwp = icmp eq i8 %i.bwo, 84
  br i1 %i.bwp, label %bb.nd, label %bb.ni

bb.nd:                                            ; preds = %bb.nc
  %i.bwq = getelementptr inbounds nuw i8, ptr %i.bvo, i64 7
  %i.bwr = load i8, ptr %i.bwq, align 1, !tbaa !100
  %i.bws = and i8 %i.bwr, -33
  %i.bwt = icmp eq i8 %i.bws, 89
  br i1 %i.bwt, label %bb.ne, label %bb.ni

bb.ne:                                            ; preds = %bb.nd
  %i.bwu = getelementptr inbounds nuw i8, ptr %i.bvo, i64 8
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %bb.mz
  %.0.i248 = phi ptr [ %i.bwu, %bb.ne ], [ %i.bwa, %bb.mz ] ; 3 uses
  store ptr %.0.i248, ptr %i.b, align 8, !tbaa !107
  %i.bwv = and i32 %4, 32
  %.not674 = icmp eq i32 %i.bwv, 0
  br i1 %.not674, label %bb.nh, label %bb.ng, !prof !62

bb.ng:                                            ; preds = %bb.nf
  store i8 0, ptr %i.d, align 1, !tbaa !100
  store ptr %.0.i248, ptr %i.e, align 8, !tbaa !107
  %i.bww = ptrtoint ptr %.0.i248 to i64
  %i.bwx = ptrtoint ptr %1 to i64
  %i.bwy = sub i64 %i.bww, %i.bwx
  %i.bwz = shl i64 %i.bwy, 8
  %i.bxa = or disjoint i64 %i.bwz, 1
  store i64 %i.bxa, ptr %i.j, align 8, !tbaa !99
  %i.bxb = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr %1, ptr %i.bxb, align 8, !tbaa !100
  br label %read_str_opt.exit

bb.nh:                                            ; preds = %bb.nf
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.bxc = select i1 %i.bvi, i64 -4503599627370496, i64 9218868437227405312
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.bxc, ptr %i.bxd, align 8, !tbaa !100
  br label %read_str_opt.exit

bb.ni:                                            ; preds = %bb.na, %bb.nd, %bb.nc, %bb.nb, %bb.my, %bb.mx, %bb.mw
  %i.bxe = or i1 %i.bvj, %i.bvi                   ; 2 uses
  %i.bxf = zext i1 %i.bxe to i64
  %i.bxg = getelementptr inbounds nuw i8, ptr %1, i64 %i.bxf ; 4 uses
  %i.bxh = load i8, ptr %i.bxg, align 1, !tbaa !100
  %i.bxi = and i8 %i.bxh, -33
  %i.bxj = icmp eq i8 %i.bxi, 78
  br i1 %i.bxj, label %bb.nj, label %read_inf_or_nan.exit182

bb.nj:                                            ; preds = %bb.ni
  %i.bxk = getelementptr inbounds nuw i8, ptr %i.bxg, i64 1
  %i.bxl = load i8, ptr %i.bxk, align 1, !tbaa !100
  %i.bxm = and i8 %i.bxl, -33
  %i.bxn = icmp eq i8 %i.bxm, 65
  br i1 %i.bxn, label %bb.nk, label %read_inf_or_nan.exit182

bb.nk:                                            ; preds = %bb.nj
  %i.bxo = getelementptr inbounds nuw i8, ptr %i.bxg, i64 2
  %i.bxp = load i8, ptr %i.bxo, align 1, !tbaa !100
  %i.bxq = and i8 %i.bxp, -33
  %i.bxr = icmp eq i8 %i.bxq, 78
  br i1 %i.bxr, label %bb.nl, label %read_inf_or_nan.exit182

bb.nl:                                            ; preds = %bb.nk
  %i.bxs = getelementptr inbounds nuw i8, ptr %i.bxg, i64 3 ; 2 uses
  store ptr %i.bxs, ptr %i.b, align 8, !tbaa !107
  %i.bxt = and i32 %4, 32
  %.not673 = icmp eq i32 %i.bxt, 0
  br i1 %.not673, label %bb.nn, label %bb.nm, !prof !62

bb.nm:                                            ; preds = %bb.nl
  store i8 0, ptr %i.d, align 1, !tbaa !100
  store ptr %i.bxs, ptr %i.e, align 8, !tbaa !107
  %i.bxu = select i1 %i.bxe, i64 1025, i64 769
  store i64 %i.bxu, ptr %i.j, align 8, !tbaa !99
  %i.bxv = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr %1, ptr %i.bxv, align 8, !tbaa !100
  br label %read_str_opt.exit

bb.nn:                                            ; preds = %bb.nl
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.bxw = select i1 %i.bvi, i64 -2251799813685248, i64 9221120237041090560
  %i.bxx = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.bxw, ptr %i.bxx, align 8, !tbaa !100
  br label %read_str_opt.exit

read_inf_or_nan.exit182:                          ; preds = %bb.nk, %bb.nj, %bb.ni, %bb.mu
  %i.bxy = and i32 %4, 4096
  %.not672 = icmp eq i32 %i.bxy, 0
  br i1 %.not672, label %.thread1293, label %bb.no, !prof !62

bb.no:                                            ; preds = %read_inf_or_nan.exit182
  %i.bxz = icmp eq i8 %i.k, 39
  br i1 %i.bxz, label %bb.np, label %.thread1293

bb.np:                                            ; preds = %bb.no
  %i.bya = call fastcc zeroext i1 @read_str_sq(ptr noundef %i.b, ptr noundef %2, i32 noundef %4, ptr noundef nonnull %i.j, ptr noundef %i.c)
  br i1 %i.bya, label %read_str_opt.exit, label %.read_str_opt.exit.thread_crit_edge, !prof !62

.read_str_opt.exit.thread_crit_edge:              ; preds = %bb.np
  %.pre1135 = load ptr, ptr %i.b, align 8, !tbaa !107
  br label %read_str_opt.exit.thread

read_str_opt.exit:                                ; preds = %bb.nn, %bb.nm, %bb.ng, %bb.nh, %bb.mt, %bb.ms, %read_null.exit.thread, %read_false.exit.thread, %read_true.exit.thread, %bb.lc, %bb.jd, %read_num.exit.thread632, %.split630, %.split, %read_num.exit.thread, %bb.np
  %i.byb = load ptr, ptr %i.b, align 8, !tbaa !107 ; 4 uses
  %i.byc = icmp ult ptr %i.byb, %2
  br i1 %i.byc, label %bb.nq, label %bb.nv, !prof !45

bb.nq:                                            ; preds = %read_str_opt.exit
  %i.byd = and i32 %4, 2
  %.not717 = icmp eq i32 %i.byd, 0
  br i1 %.not717, label %.preheader, label %bb.nv, !prof !62

.preheader:                                       ; preds = %bb.nq, %.preheader
  %i.bye = phi ptr [ %i.byk, %.preheader ], [ %i.byb, %bb.nq ] ; 5 uses
  %i.byf = load i8, ptr %i.bye, align 1, !tbaa !100
  %i.byg = zext i8 %i.byf to i64
  %i.byh = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.byg
  %i.byi = load i8, ptr %i.byh, align 1, !tbaa !100 ; 2 uses
  %i.byj = and i8 %i.byi, 4
  %.not718 = icmp eq i8 %i.byj, 0
  %i.byk = getelementptr inbounds nuw i8, ptr %i.bye, i64 1
  br i1 %.not718, label %bb.nr, label %.preheader, !llvm.loop !282

bb.nr:                                            ; preds = %.preheader
  store ptr %i.bye, ptr %i.b, align 8
  %i.byl = and i32 %4, 2056
  %.not719 = icmp eq i32 %i.byl, 0
  br i1 %.not719, label %bb.nu, label %bb.ns, !prof !62

bb.ns:                                            ; preds = %bb.nr
  %i.bym = and i8 %i.byi, 40
  %.not720 = icmp eq i8 %i.bym, 0
  br i1 %.not720, label %bb.nu, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.byn = call fastcc zeroext i1 @skip_trivia(ptr noundef %i.b, ptr noundef nonnull %2, i32 noundef %4)
  %.pre1136 = load ptr, ptr %i.b, align 8, !tbaa !107 ; 4 uses
  %i.byo = icmp ne ptr %.pre1136, %2
  %or.cond1378.not = select i1 %i.byn, i1 true, i1 %i.byo
  br i1 %or.cond1378.not, label %bb.nu, label %bb.oa

bb.nu:                                            ; preds = %bb.nt, %bb.ns, %bb.nr
  %i.byp = phi ptr [ %.pre1136, %bb.nt ], [ %i.bye, %bb.nr ], [ %i.bye, %bb.ns ] ; 4 uses
  %i.byq = icmp ult ptr %i.byp, %2
  br i1 %i.byq, label %bb.ob, label %bb.nv, !prof !45

bb.nv:                                            ; preds = %bb.nu, %bb.nq, %read_str_opt.exit
  %i.byr = phi ptr [ %i.byp, %bb.nu ], [ %i.byb, %bb.nq ], [ %i.byb, %read_str_opt.exit ]
  %i.bys = load ptr, ptr %i.e, align 8, !tbaa !107
  store i8 0, ptr %i.bys, align 1, !tbaa !100
  store ptr %i.j, ptr %i.i, align 8, !tbaa !95
  %i.byt = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.byt, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !48
  %i.byu = ptrtoint ptr %i.byr to i64
  %i.byv = ptrtoint ptr %0 to i64
  %i.byw = sub i64 %i.byu, %i.byv
  %i.byx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %i.byw, ptr %i.byx, align 8, !tbaa !111
  %i.byy = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 1, ptr %i.byy, align 8, !tbaa !110
  %i.byz = and i32 %4, 1
  %.not721 = icmp eq i32 %i.byz, 0
  %i.bza = select i1 %.not721, ptr %0, ptr null, !prof !62
  %i.bzb = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr %i.bza, ptr %i.bzb, align 8, !tbaa !109
  br label %bb.oc

read_str_opt.exit.thread:                         ; preds = %.read_str_opt.exit.thread_crit_edge, %bb.mj, %bb.le, %bb.lb, %bb.jj, %bb.kr, %bb.kw, %bb.kq, %bb.kg, %bb.lg
  %i.bzc = phi ptr [ %.pre1135, %.read_str_opt.exit.thread_crit_edge ], [ %.12.lcssa, %bb.mj ], [ %.6605, %bb.le ], [ %.6605, %bb.lb ], [ %.4603.lcssa, %bb.jj ], [ %.6605, %bb.kr ], [ %.6605, %bb.kw ], [ %.6605, %bb.kq ], [ %.6605, %bb.kg ], [ %.6605, %bb.lg ] ; 2 uses
  %i.bzd = call fastcc zeroext i1 @is_truncated_end(ptr noundef %0, ptr noundef %i.bzc, ptr noundef %2, i32 noundef 10, i32 noundef %4) ; 3 uses
  %i.bze = ptrtoint ptr %0 to i64
  %i.bzf = load ptr, ptr %i.c, align 8
  %.sink1106.v.v = select i1 %i.bzd, ptr %2, ptr %i.bzc
  %.sink1106.v = ptrtoint ptr %.sink1106.v.v to i64
  %.sink1106 = sub i64 %.sink1106.v, %i.bze
  %.sink1105 = select i1 %i.bzd, i32 5, i32 10
  %.sink = select i1 %i.bzd, ptr @.str.17, ptr %i.bzf
  %i.bzg = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %.sink1106, ptr %i.bzg, align 8, !tbaa !113
  store i32 %.sink1105, ptr %5, align 8, !tbaa !115
  %i.bzh = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sink, ptr %i.bzh, align 8, !tbaa !114
  %i.bzi = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bzj = load ptr, ptr %i.bzi, align 8, !tbaa !60
  %i.bzk = load ptr, ptr %i.g, align 8, !tbaa !61
  call void %i.bzj(ptr noundef %i.bzk, ptr noundef nonnull %i.i) #33
  br label %bb.oc

.sink.split:                                      ; preds = %read_num.exit.thread628, %read_num.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.nw

bb.nw:                                            ; preds = %.sink.split, %.split630, %.split
  %i.bzl = load ptr, ptr %i.b, align 8, !tbaa !107 ; 2 uses
  %i.bzm = call fastcc zeroext i1 @is_truncated_end(ptr noundef %0, ptr noundef %i.bzl, ptr noundef %2, i32 noundef 9, i32 noundef %4) ; 3 uses
  %i.bzn = ptrtoint ptr %2 to i64
  %i.bzo = ptrtoint ptr %0 to i64
  %i.bzp = sub i64 %i.bzn, %i.bzo
  %i.bzq = ptrtoint ptr %i.bzl to i64
  %i.bzr = ptrtoint ptr %0 to i64
  %i.bzs = sub i64 %i.bzq, %i.bzr
  %i.bzt = load ptr, ptr %i.c, align 8
  %.sink1109 = select i1 %i.bzm, i64 %i.bzp, i64 %i.bzs
  %.sink1108 = select i1 %i.bzm, i32 5, i32 9
  %.sink1107 = select i1 %i.bzm, ptr @.str.17, ptr %i.bzt
  %i.bzu = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %.sink1109, ptr %i.bzu, align 8, !tbaa !113
  store i32 %.sink1108, ptr %5, align 8, !tbaa !115
  %i.bzv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sink1107, ptr %i.bzv, align 8, !tbaa !114
  %i.bzw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bzx = load ptr, ptr %i.bzw, align 8, !tbaa !60
  %i.bzy = load ptr, ptr %i.g, align 8, !tbaa !61
  call void %i.bzx(ptr noundef %i.bzy, ptr noundef nonnull %i.i) #33
  br label %bb.oc

bb.nx:                                            ; preds = %bb.a
  %i.bzz = call fastcc zeroext i1 @is_truncated_end(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 2, i32 noundef %4)
  %i.caa = ptrtoint ptr %0 to i64                 ; 2 uses
  %i.cab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br i1 %i.bzz, label %bb.ny, label %bb.nz

bb.ny:                                            ; preds = %bb.nx
  %i.cad = ptrtoint ptr %2 to i64
  %i.cae = sub i64 %i.cad, %i.caa
  store i64 %i.cae, ptr %i.cab, align 8, !tbaa !113
  store i32 5, ptr %5, align 8, !tbaa !115
  store ptr @.str.17, ptr %i.cac, align 8, !tbaa !114
  br label %bb.oc

bb.nz:                                            ; preds = %bb.nx
  %i.caf = ptrtoint ptr %1 to i64
  %i.cag = sub i64 %i.caf, %i.caa
  store i64 %i.cag, ptr %i.cab, align 8, !tbaa !113
  store i32 2, ptr %5, align 8, !tbaa !115
  store ptr @.str.2, ptr %i.cac, align 8, !tbaa !114
  br label %bb.oc

read_true.exit:                                   ; preds = %bb.mk
  %i.cah = call fastcc zeroext i1 @is_truncated_end(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 11, i32 noundef %4) ; 3 uses
  %i.cai = ptrtoint ptr %0 to i64
  %.1389 = select i1 %i.cah, ptr %2, ptr %1
  %.1390 = select i1 %i.cah, i32 5, i32 11
  %.str.17..str.20 = select i1 %i.cah, ptr @.str.17, ptr @.str.20
  %i.caj = ptrtoint ptr %.1389 to i64
  %i.cak = sub i64 %i.caj, %i.cai
  %i.cal = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.cak, ptr %i.cal, align 8, !tbaa !113
  store i32 %.1390, ptr %5, align 8, !tbaa !115
  %i.cam = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.str.17..str.20, ptr %i.cam, align 8, !tbaa !114
  %i.can = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cao = load ptr, ptr %i.can, align 8, !tbaa !60
  call void %i.cao(ptr noundef %i.h, ptr noundef nonnull %i.i) #33
  br label %bb.oc

read_false.exit:                                  ; preds = %bb.ml
  %i.cap = call fastcc zeroext i1 @is_truncated_end(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 11, i32 noundef %4) ; 3 uses
  %i.caq = ptrtoint ptr %0 to i64
  %.1391 = select i1 %i.cap, ptr %2, ptr %1
  %.1392 = select i1 %i.cap, i32 5, i32 11
  %.str.17..str.21 = select i1 %i.cap, ptr @.str.17, ptr @.str.21
  %i.car = ptrtoint ptr %.1391 to i64
  %i.cas = sub i64 %i.car, %i.caq
  %i.cat = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.cas, ptr %i.cat, align 8, !tbaa !113
  store i32 %.1392, ptr %5, align 8, !tbaa !115
  %i.cau = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.str.17..str.21, ptr %i.cau, align 8, !tbaa !114
  %i.cav = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.caw = load ptr, ptr %i.cav, align 8, !tbaa !60
  call void %i.caw(ptr noundef %i.h, ptr noundef nonnull %i.i) #33
  br label %bb.oc

read_nan.exit.thread:                             ; preds = %bb.mn, %bb.mo, %bb.mp, %bb.mq, %read_null.exit
  %i.cax = call fastcc zeroext i1 @is_truncated_end(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 11, i32 noundef %4) ; 3 uses
  %i.cay = ptrtoint ptr %0 to i64
  %.1393 = select i1 %i.cax, ptr %2, ptr %1
  %.1394 = select i1 %i.cax, i32 5, i32 11
  %.str.17..str.22 = select i1 %i.cax, ptr @.str.17, ptr @.str.22
  %i.caz = ptrtoint ptr %.1393 to i64
  %i.cba = sub i64 %i.caz, %i.cay
  %i.cbb = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.cba, ptr %i.cbb, align 8, !tbaa !113
  store i32 %.1394, ptr %5, align 8, !tbaa !115
  %i.cbc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.str.17..str.22, ptr %i.cbc, align 8, !tbaa !114
  %i.cbd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cbe = load ptr, ptr %i.cbd, align 8, !tbaa !60
  call void %i.cbe(ptr noundef %i.h, ptr noundef nonnull %i.i) #33
  br label %bb.oc

.thread1293:                                      ; preds = %bb.mv, %bb.no, %read_inf_or_nan.exit182
  %i.cbf = call fastcc zeroext i1 @is_truncated_end(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 6, i32 noundef %4) ; 3 uses
  %i.cbg = ptrtoint ptr %0 to i64
  %.1395 = select i1 %i.cbf, ptr %2, ptr %1
  %.1396 = select i1 %i.cbf, i32 5, i32 6
  %.str.17..str.23 = select i1 %i.cbf, ptr @.str.17, ptr @.str.23
  %i.cbh = ptrtoint ptr %.1395 to i64
  %i.cbi = sub i64 %i.cbh, %i.cbg
  %i.cbj = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.cbi, ptr %i.cbj, align 8, !tbaa !113
  store i32 %.1396, ptr %5, align 8, !tbaa !115
  %i.cbk = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.str.17..str.23, ptr %i.cbk, align 8, !tbaa !114
  %i.cbl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cbm = load ptr, ptr %i.cbl, align 8, !tbaa !60
  call void %i.cbm(ptr noundef %i.h, ptr noundef nonnull %i.i) #33
  br label %bb.oc

bb.oa:                                            ; preds = %bb.nt
  %i.cbn = call fastcc zeroext i1 @is_truncated_end(ptr noundef %0, ptr noundef %.pre1136, ptr noundef nonnull %2, i32 noundef 8, i32 noundef %4) ; 3 uses
  %i.cbo = ptrtoint ptr %0 to i64
  %..pre1136 = select i1 %i.cbn, ptr %2, ptr %.pre1136
  %. = select i1 %i.cbn, i32 5, i32 8
  %.str.17..str.3 = select i1 %i.cbn, ptr @.str.17, ptr @.str.3
  %8 = ptrtoint ptr %..pre1136 to i64
  %9 = sub i64 %8, %i.cbo
  %i.cbp = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %9, ptr %i.cbp, align 8, !tbaa !113
  store i32 %., ptr %5, align 8, !tbaa !115
  %i.cbq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.str.17..str.3, ptr %i.cbq, align 8, !tbaa !114
  %i.cbr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cbs = load ptr, ptr %i.cbr, align 8, !tbaa !60
  %i.cbt = load ptr, ptr %i.g, align 8, !tbaa !61
  call void %i.cbs(ptr noundef %i.cbt, ptr noundef nonnull %i.i) #33
  br label %bb.oc

bb.ob:                                            ; preds = %bb.nu
  %i.cbu = call fastcc zeroext i1 @is_truncated_end(ptr noundef %0, ptr noundef %i.byp, ptr noundef nonnull %2, i32 noundef 4, i32 noundef %4) ; 3 uses
  %i.cbv = ptrtoint ptr %0 to i64
  %.1397 = select i1 %i.cbu, ptr %2, ptr %i.byp
  %.1398 = select i1 %i.cbu, i32 5, i32 4
  %.str.17..str.28 = select i1 %i.cbu, ptr @.str.17, ptr @.str.28
  %i.cbw = ptrtoint ptr %.1397 to i64
  %i.cbx = sub i64 %i.cbw, %i.cbv
  %i.cby = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.cbx, ptr %i.cby, align 8, !tbaa !113
  store i32 %.1398, ptr %5, align 8, !tbaa !115
  %i.cbz = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.str.17..str.28, ptr %i.cbz, align 8, !tbaa !114
  %i.cca = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ccb = load ptr, ptr %i.cca, align 8, !tbaa !60
  %i.ccc = load ptr, ptr %i.g, align 8, !tbaa !61
  call void %i.ccb(ptr noundef %i.ccc, ptr noundef nonnull %i.i) #33
  br label %bb.oc

bb.oc:                                            ; preds = %bb.nz, %bb.ny, %bb.ob, %bb.oa, %.thread1293, %read_nan.exit.thread, %read_false.exit, %read_true.exit, %bb.nw, %read_str_opt.exit.thread, %bb.nv
  %.0 = phi ptr [ null, %.thread1293 ], [ %i.i, %bb.nv ], [ null, %bb.ob ], [ null, %bb.oa ], [ null, %bb.nw ], [ null, %read_str_opt.exit.thread ], [ null, %read_true.exit ], [ null, %read_false.exit ], [ null, %read_nan.exit.thread ], [ null, %bb.ny ], [ null, %bb.nz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @yyjson_read_file(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #10 {
bb.a:
  %4 = alloca %struct.yyjson_read_err, align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %.not = icmp eq ptr %3, null                    ; 5 uses
  %spec.store.select = select i1 %.not, ptr %4, ptr %3 ; 3 uses
  %.not16 = icmp eq ptr %0, null
  br i1 %.not16, label %bb.b, label %bb.c, !prof !45

bb.b:                                             ; preds = %bb.a
  %spec.store.select.sroa.sel24.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %4, ptr %3
  %spec.store.select.sroa.sel24.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel24.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel24.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  %spec.store.select.sroa.sel27.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %4, ptr %3
  %spec.store.select.sroa.sel27.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel27.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.8, ptr %spec.store.select.sroa.sel27.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  store i32 1, ptr %spec.store.select, align 8, !tbaa !115
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.a = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.88) ; 3 uses
  %.not17 = icmp eq ptr %i.a, null
  br i1 %.not17, label %bb.d, label %bb.e, !prof !45

bb.d:                                             ; preds = %bb.c
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %4, ptr %3
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  %spec.store.select.sroa.sel21.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %4, ptr %3
  %spec.store.select.sroa.sel21.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel21.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.9, ptr %spec.store.select.sroa.sel21.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  store i32 12, ptr %spec.store.select, align 8, !tbaa !115
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.b = call ptr @yyjson_read_fp(ptr noundef nonnull %i.a, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %spec.store.select)
  %i.c = call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.b, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @yyjson_read_fp(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #10 {
bb.a:
  %4 = alloca %struct.yyjson_read_err, align 8    ; 15 uses
  %5 = alloca %struct.yyjson_alc, align 8         ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !48
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) @YYJSON_DEFAULT_ALC, i64 32, i1 false), !tbaa.struct !48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not113 = icmp eq ptr %3, null                 ; 13 uses
  %spec.store.select = select i1 %.not113, ptr %4, ptr %3 ; 7 uses
  %.not114 = icmp eq ptr %0, null
  br i1 %.not114, label %bb.e, label %bb.f, !prof !45

bb.e:                                             ; preds = %bb.d
  %spec.store.select.sroa.sel156.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel156.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel156.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel156.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  %spec.store.select.sroa.sel159.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel159.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel159.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.10, ptr %spec.store.select.sroa.sel159.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  store i32 1, ptr %spec.store.select, align 8, !tbaa !115
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.a = tail call i64 @ftell(ptr noundef nonnull %0) ; 3 uses
  %.not115 = icmp eq i64 %i.a, -1
  br i1 %.not115, label %.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.b = tail call i32 @fseek(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 2)
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.d = tail call i64 @ftell(ptr noundef nonnull %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.097 = phi i64 [ %i.d, %bb.h ], [ 0, %bb.g ]
  %i.e = tail call i32 @fseek(ptr noundef nonnull %0, i64 noundef %i.a, i32 noundef 0)
  %.not116 = icmp eq i32 %i.e, 0
  %spec.select = select i1 %.not116, i64 %.097, i64 0 ; 2 uses
  %i.f = icmp sgt i64 %spec.select, 0
  %i.g = select i1 %i.f, i64 %i.a, i64 0
  %spec.select125 = sub nsw i64 %spec.select, %i.g ; 6 uses
  %i.h = icmp sgt i64 %spec.select125, 0
  br i1 %i.h, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.i
  %.299205 = phi i64 [ %spec.select125, %bb.i ], [ 0, %bb.f ]
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %i.m = load ptr, ptr %5, align 8
  br label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.n = add nuw i64 %spec.select125, 4
  %i.o = load ptr, ptr %5, align 8, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !61   ; 2 uses
  %i.r = tail call ptr %i.o(ptr noundef %i.q, i64 noundef %i.n) #33 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %spec.store.select.sroa.sel150.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel150.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel150.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel150.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  %spec.store.select.sroa.sel153.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel153.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel153.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.2, ptr %spec.store.select.sroa.sel153.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  store i32 2, ptr %spec.store.select, align 8, !tbaa !115
  br label %.critedge

bb.l:                                             ; preds = %bb.j
  %i.t = tail call i64 @fread(ptr noundef nonnull %i.r, i64 noundef 1, i64 noundef %spec.select125, ptr noundef nonnull %0)
  %.not122 = icmp eq i64 %i.t, %spec.select125
  br i1 %.not122, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %spec.store.select.sroa.sel144.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel144.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel144.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel144.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  %spec.store.select.sroa.sel147.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel147.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel147.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.9, ptr %spec.store.select.sroa.sel147.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  store i32 13, ptr %spec.store.select, align 8, !tbaa !115
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !60
  tail call void %i.v(ptr noundef %i.q, ptr noundef nonnull %i.r) #33
  br label %.critedge

bb.n:                                             ; preds = %bb.u
  %spec.store.select.sroa.sel138.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel138.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel138.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel138.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  %spec.store.select.sroa.sel141.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel141.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel141.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.2, ptr %spec.store.select.sroa.sel141.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  store i32 2, ptr %spec.store.select, align 8, !tbaa !115
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60
  tail call void %i.x(ptr noundef %i.l, ptr noundef nonnull %.196) #33
end_hunk_1

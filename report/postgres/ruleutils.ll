inline.NumInlined: 602
inline.NumDeleted: 76
begin_hunk_0_@find_param_referent:bb.a
  br i1 %i.c, label %bb.b, label %.thread174

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %.val = load ptr, ptr %i.f, align 8
  %i.g = load ptr, ptr %.val, align 8             ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.thread174, label %.lr.ph208.a

.lr.ph208.a:                                      ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4              ; 5 uses
  %i.l = getelementptr i8, ptr %i.i, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %smax232 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 0)
  %wide.trip.count233 = zext nneg i32 %smax232 to i64
  %exitcond234.not267 = icmp slt i32 %i.k, 1
  br i1 %exitcond234.not267, label %.thread174, label %.lr.ph270

.lr.ph270:                                        ; preds = %.lr.ph208.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.l, align 8              ; 6 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph270, %.thread135
  %.090207269 = phi ptr [ %i.o, %.lr.ph270 ], [ %.191.ph, %.thread135 ] ; 4 uses
  %indvars.iv229268 = phi i64 [ 0, %.lr.ph270 ], [ %indvars.iv.next230, %.thread135 ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv229268, 3    ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx
  %i.r = load ptr, ptr %i.q, align 8              ; 10 uses
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  switch i32 %i.s, label %.thread135 [
    i32 374, label %bb.d
    i32 23, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %.090207269, %i.u
  br i1 %i.v, label %bb.e, label %.thread135

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  %i.x = load ptr, ptr %i.w, align 8              ; 3 uses
  %.not111 = icmp eq ptr %i.x, null
  br i1 %.not111, label %.thread135, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4              ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph185, label %.thread135

.lr.ph185:                                        ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load i32, ptr %i.m, align 4
  %wide.trip.count = zext nneg i32 %i.z to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %thread-pre-split, label %bb.g

bb.g:                                             ; preds = %.lr.ph185, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph185 ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4
  %.not113 = icmp eq i32 %i.ah, %i.ad
  br i1 %.not113, label %.split, label %bb.f

.split:                                           ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx
  store ptr %i.g, ptr %2, align 8
  store ptr %i.ai, ptr %3, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  br label %.thread174

thread-pre-split:                                 ; preds = %bb.f
  %i.al = icmp eq i32 %i.s, 23
  br i1 %i.al, label %bb.h, label %.thread135

bb.h:                                             ; preds = %bb.c, %thread-pre-split
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %.not115 = icmp eq ptr %i.ap, null
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.not114 = icmp eq ptr %i.an, null
  %or.cond = select i1 %.not115, i1 true, i1 %.not114
  br i1 %or.cond, label %.thread135, label %.split189.split

.split189.split:                                  ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.au = load i32, ptr %i.at, align 4
  %i.av = load i32, ptr %i.as, align 4
  %i.aw = sext i32 %i.av to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.au, i32 0)
  %wide.trip.count227 = zext nneg i32 %smax to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.p, %.split189.split
  %indvars.iv224 = phi i64 [ %indvars.iv.next225.a, %bb.p ], [ 0, %.split189.split ] ; 5 uses
  %i.ax = icmp slt i64 %indvars.iv224, %i.aw
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %i.aq, align 8
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv224
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ba = phi ptr [ %i.az, %bb.j ], [ null, %bb.i ] ; 2 uses
  %exitcond228.not = icmp eq i64 %indvars.iv224, %wide.trip.count227
  br i1 %exitcond228.not, label %.thread135, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.bc = icmp ne ptr %i.ba, null
  %i.bd = icmp ne ptr %i.bb, null
  %i.be = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %i.be, label %bb.m, label %.thread135

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %i.ba, align 8
  %i.bg = load i32, ptr %i.m, align 4
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %for_each_cell_setup.exit.split, label %bb.p

for_each_cell_setup.exit.split:                   ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv224
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = zext nneg i32 %i.k to i64               ; 2 uses
  %.idx246 = shl nuw nsw i64 %i.bm, 3
  %i.bn = add nuw nsw i64 %.idx, 8
  %.not176 = icmp samesign ult i64 %i.bn, %.idx246 ; 2 uses
  %i.bo = ptrtoint ptr %i.bl to i64
  %i.bp = select i1 %.not176, i64 %i.bo, i64 0
  %i.bq = ptrtoint ptr %i.p to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = lshr exact i64 %i.br, 3
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = select i1 %.not176, i32 %i.bt, i32 %i.k ; 2 uses
  %i.bv = icmp slt i32 %i.bu, %i.k
  br i1 %i.bv, label %.lr.ph213, label %._crit_edge

.lr.ph213:                                        ; preds = %for_each_cell_setup.exit.split
  %i.bw = sext i32 %i.bu to i64
  br label %bb.o

bb.n:                                             ; preds = %bb.o
  %indvars.iv.next236 = add nsw i64 %indvars.iv235, 1 ; 2 uses
  %exitcond239.not = icmp eq i64 %indvars.iv.next236, %i.bm
  br i1 %exitcond239.not, label %._crit_edge, label %bb.o, !llvm.loop !100

bb.o:                                             ; preds = %.lr.ph213, %bb.n
  %indvars.iv235 = phi i64 [ %i.bw, %.lr.ph213 ], [ %indvars.iv.next236, %bb.n ] ; 3 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv235
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = icmp eq i32 %i.bz, 23
  br i1 %i.ca, label %bb.n, label %bb.q

._crit_edge:                                      ; preds = %bb.n, %for_each_cell_setup.exit.split
  %i.cb = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.cc = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.197) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 9098, ptr noundef nonnull @__func__.find_param_referent) #11
  unreachable

bb.p:                                             ; preds = %bb.m
  %indvars.iv.next225.a = add nuw nsw i64 %indvars.iv224, 1
  br label %bb.i, !llvm.loop !101

bb.q:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv235
  store ptr %i.g, ptr %2, align 8
  store ptr %i.cd, ptr %3, align 8
  br label %.thread174

.thread135:                                       ; preds = %bb.k, %bb.l, %bb.c, %bb.e, %.lr.ph, %bb.d, %bb.h, %thread-pre-split
  %.191.ph = phi ptr [ %i.r, %thread-pre-split ], [ %i.r, %.lr.ph ], [ %.090207269, %bb.h ], [ %i.r, %bb.c ], [ %i.r, %bb.e ], [ %i.r, %bb.d ], [ %.090207269, %bb.l ], [ %.090207269, %bb.k ]
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229268, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next230, %wide.trip.count233
  br i1 %exitcond234.not, label %.thread174, label %bb.c

.thread174:                                       ; preds = %.thread135, %.lr.ph208.a, %bb.b, %bb.a, %.split, %bb.q
  %.14 = phi ptr [ %i.bk, %bb.q ], [ %i.ak, %.split ], [ null, %bb.a ], [ null, %bb.b ], [ null, %.lr.ph208.a ], [ null, %.thread135 ]
  ret ptr %.14
}

declare ptr @list_copy_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @list_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @get_agg_expr_helper(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [100 x i32], align 16             ; 4 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = load ptr, ptr %1, align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i8 0, ptr %i.b, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 1
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %.val = load ptr, ptr %i.i, align 8
  %i.j = load ptr, ptr %.val, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call fastcc void @resolve_special_varno(ptr noundef %i.l, ptr noundef nonnull %1, ptr noundef nonnull @get_agg_combine_expr, ptr noundef %2)
  br label %bb.an

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, 2
  %.not64 = icmp eq i32 %i.o, 0
  br i1 %.not64, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @appendStringInfoString(ptr noundef %i.c, ptr noundef nonnull @.str.198) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = call i32 @get_aggregate_argtypes(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #11 ; 3 uses
  %.not65 = icmp eq ptr %3, null
  br i1 %.not65, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i32, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.t = load i8, ptr %i.s, align 1, !range !8, !noundef !9
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.w = load i8, ptr %i.v, align 2, !range !8, !noundef !9
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = call fastcc ptr @generate_function_name(i32 noundef %i.r, i32 noundef %i.p, ptr noundef null, ptr noundef nonnull %i.a, i1 noundef zeroext %i.u, ptr noundef nonnull %i.b, i1 noundef zeroext %i.x)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi ptr [ %3, %bb.e ], [ %i.y, %bb.f ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8
  %.not66 = icmp eq ptr %i.aa, null
  %i.ab = select i1 %.not66, ptr @.str.35, ptr @.str.200
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %i.c, ptr noundef nonnull @.str.199, ptr noundef %.0, ptr noundef nonnull %i.ab) #11
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.ad = load i8, ptr %i.ac, align 2
  %.not67 = icmp eq i8 %i.ad, 110
  br i1 %.not67, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  call fastcc void @get_rule_expr(ptr noundef %i.af, ptr noundef nonnull %1, i1 noundef zeroext true)
  call void @appendStringInfoString(ptr noundef %i.c, ptr noundef nonnull @.str.201) #11
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load i8, ptr %i.ah, align 8, !range !8, !noundef !9
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @appendStringInfoChar(ptr noundef %i.c, i8 noundef signext 42) #11
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 5 uses
  %.not68 = icmp eq ptr %i.al, null
  br i1 %.not68, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 4 uses
  %i.ao = load i8, ptr %i.b, align 1, !range !8
  %.fr103 = freeze i8 %i.ao
  %i.ap = trunc i8 %.fr103 to i1                  ; 2 uses
  %i.aq = load i32, ptr %i.am, align 4            ; 5 uses
  %i.ar = icmp sgt i32 %i.aq, 0                   ; 4 uses
  br i1 %5, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.ap, label %.lr.ph.split.us.split.split, label %.lr.ph.split.us.split.us.split

.lr.ph.split.us.split.us.split:                   ; preds = %.lr.ph.split.us
  br i1 %i.ar, label %.lr.ph102, label %.critedge

.lr.ph102:                                        ; preds = %.lr.ph.split.us.split.us.split, %bb.p
  %i.as = phi i32 [ %i.be, %bb.p ], [ %i.aq, %.lr.ph.split.us.split.us.split ]
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %bb.p ], [ 0, %.lr.ph.split.us.split.us.split ] ; 2 uses
  %.05976.us.us101 = phi i32 [ %.1.ph.us.us, %bb.p ], [ 0, %.lr.ph.split.us.split.us.split ] ; 3 uses
  %i.at = load ptr, ptr %i.an, align 8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv111
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 42
  %i.az = load i8, ptr %i.ay, align 2, !range !8, !noundef !9
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.p, label %bb.l

bb.l:                                             ; preds = %.lr.ph102
  %i.bb = add i32 %.05976.us.us101, 1             ; 2 uses
  %i.bc = icmp sgt i32 %.05976.us.us101, 0
  br i1 %i.bc, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bd = icmp sgt i32 %i.bb, 2
  br i1 %i.bd, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @appendStringInfoString(ptr noundef %i.c, ptr noundef nonnull @.str.202) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  call fastcc void @get_rule_expr(ptr noundef %i.ax, ptr noundef nonnull %1, i1 noundef zeroext true)
  %.pre118 = load i32, ptr %i.am, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph102
  %i.be = phi i32 [ %i.as, %.lr.ph102 ], [ %.pre118, %bb.o ] ; 2 uses
  %.1.ph.us.us = phi i32 [ %.05976.us.us101, %.lr.ph102 ], [ %i.bb, %bb.o ]
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp slt i64 %indvars.iv.next112, %i.bf
  br i1 %i.bg, label %.lr.ph102, label %.critedge

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us
  br i1 %i.ar, label %.lr.ph99, label %.critedge

.lr.ph99:                                         ; preds = %.lr.ph.split.us.split.split, %bb.w
  %i.bh = phi i32 [ %i.bu, %bb.w ], [ %i.aq, %.lr.ph.split.us.split.split ]
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %bb.w ], [ 0, %.lr.ph.split.us.split.split ] ; 2 uses
  %.05976.us98 = phi i32 [ %.1.ph.us, %bb.w ], [ 0, %.lr.ph.split.us.split.split ] ; 3 uses
  %i.bi = load ptr, ptr %i.an, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv114
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 42
  %i.bo = load i8, ptr %i.bn, align 2, !range !8, !noundef !9
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.w, label %bb.q

bb.q:                                             ; preds = %.lr.ph99
  %i.bq = add i32 %.05976.us98, 1                 ; 3 uses
  %i.br = icmp sgt i32 %.05976.us98, 0
  br i1 %i.br, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bs = icmp sgt i32 %i.bq, 2
  br i1 %i.bs, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @appendStringInfoString(ptr noundef %i.c, ptr noundef nonnull @.str.202) #11
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %i.bt = icmp eq i32 %i.bq, %i.p
  br i1 %i.bt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @appendStringInfoString(ptr noundef %i.c, ptr noundef nonnull @.str.203) #11
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call fastcc void @get_rule_expr(ptr noundef %i.bm, ptr noundef nonnull %1, i1 noundef zeroext true)
  %.pre120 = load i32, ptr %i.am, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph99
  %i.bu = phi i32 [ %i.bh, %.lr.ph99 ], [ %.pre120, %bb.v ] ; 2 uses
  %.1.ph.us = phi i32 [ %.05976.us98, %.lr.ph99 ], [ %i.bq, %bb.v ]
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
end_hunk_0

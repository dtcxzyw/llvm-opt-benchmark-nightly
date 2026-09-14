Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/libunicode?download=true
inline.NumInlined: 121
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0_@unicode_case1:bb.a
  %i.cf = add nsw i32 %i.cd, 1
  store i32 %i.cf, ptr %0, align 8, !tbaa !26
  %i.cg = sext i32 %i.cd to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.cg
  store i32 %i.au, ptr %i.ch, align 4, !tbaa !14
  %i.ci = load i32, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %0, align 8, !tbaa !26
  %i.ck = sext i32 %i.ci to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.ck
  store i32 %i.bq, ptr %i.cl, align 4, !tbaa !14
  br i1 %.not59, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cm = add nuw nsw i32 %i.p, 3                 ; 2 uses
  %i.cn = load i32, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.co = add nsw i32 %i.cn, 2                    ; 2 uses
  %i.cp = load i32, ptr %i.h, align 4, !tbaa !25  ; 2 uses
  %i.cq = icmp sgt i32 %i.co, %i.cp
  br i1 %i.cq, label %bb.o, label %.loopexit.sink.split

bb.o:                                             ; preds = %bb.n
  %i.cr = mul nsw i32 %i.cp, 3
  %i.cs = sdiv i32 %i.cr, 2
  %..i.i.i84 = tail call range(i32 -1073741824, -2147483648) i32 @llvm.smax.i32(i32 %i.co, i32 range(i32 -1073741824, 1073741824) %i.cs) ; 2 uses
  %i.ct = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.cu = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.cv = sext i32 %..i.i.i84 to i64
  %i.cw = shl nsw i64 %i.cv, 2
  %i.cx = tail call ptr %i.ct(ptr noundef %i.cu, ptr noundef nonnull %i.ce, i64 noundef %i.cw) #21, !inline_history !44 ; 3 uses
  %.not.i.i85 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i85, label %cr_add_interval.exit, label %cr_realloc.exit.thread.i86

cr_realloc.exit.thread.i86:                       ; preds = %bb.o
  store ptr %i.cx, ptr %.phi.trans.insert.i63, align 8, !tbaa !24
  store i32 %..i.i.i84, ptr %i.h, align 4, !tbaa !25
  %.pre13.i87 = load i32, ptr %0, align 8, !tbaa !26
  br label %.loopexit.sink.split

bb.p:                                             ; preds = %bb.h, %bb.d, %bb.c
  %i.cy = add nuw nsw i32 %i.r, %i.p              ; 2 uses
  %i.cz = load i32, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.da = add nsw i32 %i.cz, 2                    ; 2 uses
  %i.db = load i32, ptr %i.h, align 4, !tbaa !25  ; 2 uses
  %i.dc = icmp sgt i32 %i.da, %i.db
  br i1 %i.dc, label %bb.q, label %._crit_edge.i89

._crit_edge.i89:                                  ; preds = %bb.p
  %.pre.i91 = load ptr, ptr %.phi.trans.insert.i63, align 8, !tbaa !24
  br label %.loopexit.sink.split

bb.q:                                             ; preds = %bb.p
  %i.dd = mul nsw i32 %i.db, 3
  %i.de = sdiv i32 %i.dd, 2
  %..i.i.i93 = tail call range(i32 -1073741824, -2147483648) i32 @llvm.smax.i32(i32 %i.da, i32 range(i32 -1073741824, 1073741824) %i.de) ; 2 uses
  %i.df = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.dg = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.dh = load ptr, ptr %.phi.trans.insert.i63, align 8, !tbaa !24
  %i.di = sext i32 %..i.i.i93 to i64
  %i.dj = shl nsw i64 %i.di, 2
  %i.dk = tail call ptr %i.df(ptr noundef %i.dg, ptr noundef %i.dh, i64 noundef %i.dj) #21, !inline_history !44 ; 3 uses
  %.not.i.i94 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i94, label %cr_add_interval.exit, label %cr_realloc.exit.thread.i95

cr_realloc.exit.thread.i95:                       ; preds = %bb.q
  store ptr %i.dk, ptr %.phi.trans.insert.i63, align 8, !tbaa !24
  store i32 %..i.i.i93, ptr %i.h, align 4, !tbaa !25
  %.pre13.i96 = load i32, ptr %0, align 8, !tbaa !26
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %cr_realloc.exit.thread.i95, %._crit_edge.i89, %cr_realloc.exit.thread.i86, %bb.n
  %.sink148 = phi i32 [ %i.cn, %bb.n ], [ %.pre13.i87, %cr_realloc.exit.thread.i86 ], [ %i.cz, %._crit_edge.i89 ], [ %.pre13.i96, %cr_realloc.exit.thread.i95 ] ; 2 uses
  %.sink144 = phi ptr [ %i.ce, %bb.n ], [ %i.cx, %cr_realloc.exit.thread.i86 ], [ %.pre.i91, %._crit_edge.i89 ], [ %i.dk, %cr_realloc.exit.thread.i95 ] ; 2 uses
  %.sink142 = phi i32 [ %i.bq, %bb.n ], [ %i.bq, %cr_realloc.exit.thread.i86 ], [ %i.p, %._crit_edge.i89 ], [ %i.p, %cr_realloc.exit.thread.i95 ]
  %.sink = phi i32 [ %i.cm, %bb.n ], [ %i.cm, %cr_realloc.exit.thread.i86 ], [ %i.cy, %._crit_edge.i89 ], [ %i.cy, %cr_realloc.exit.thread.i95 ]
  %i.dl = add nsw i32 %.sink148, 1
  store i32 %i.dl, ptr %0, align 8, !tbaa !26
  %i.dm = sext i32 %.sink148 to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %.sink144, i64 %i.dm
  store i32 %.sink142, ptr %i.dn, align 4, !tbaa !14
  %i.do = load i32, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.dp = add nsw i32 %i.do, 1
  store i32 %i.dp, ptr %0, align 8, !tbaa !26
  %i.dq = sext i32 %i.do to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %.sink144, i64 %i.dq
  store i32 %.sink, ptr %i.dr, align 4, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %.loopexit.sink.split, %bb.e, %bb.b, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 378
  br i1 %exitcond.not, label %cr_add_interval.exit, label %bb.b, !llvm.loop !4

cr_add_interval.exit:                             ; preds = %bb.q, %bb.o, %bb.l, %bb.k, %.loopexit, %bb.f, %bb.a
  %.048 = phi i32 [ 0, %bb.a ], [ -1, %bb.f ], [ 0, %.loopexit ], [ -1, %bb.k ], [ -1, %bb.q ], [ -1, %bb.l ], [ -1, %bb.o ]
  ret i32 %.048
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cr_sort_and_remove_overlap(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #7 {
bb.a:
  %1 = alloca [50 x %struct.anon], align 16       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.d = sdiv i32 %i.c, 2                         ; 2 uses
  %i.e = sext i32 %i.d to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = and i64 %i.f, 7
  %i.h = or disjoint i64 %i.g, 8                  ; 2 uses
  switch i64 %i.h, label %bb.b [
    i64 14, label %exchange_func.exit.i
    i64 8, label %exchange_func.exit.thread.i
    i64 10, label %exchange_func.exit.i
    i64 12, label %exchange_func.exit210.i
  ]

exchange_func.exit.thread.i:                      ; preds = %bb.a
  br label %exchange_func.exit210.i

bb.b:                                             ; preds = %bb.a
  br label %exchange_func.exit.i

exchange_func.exit.i:                             ; preds = %bb.b, %bb.a, %bb.a
  %.0.i.i = phi ptr [ @exchange_bytes, %bb.b ], [ @exchange_int16s, %bb.a ], [ @exchange_int16s, %bb.a ] ; 4 uses
  switch i64 %i.h, label %bb.e [
    i64 14, label %bb.d
    i64 8, label %bb.c
    i64 10, label %bb.d
    i64 12, label %exchange_func.exit210.i
  ]

bb.c:                                             ; preds = %exchange_func.exit.i
  br label %exchange_func.exit210.i

bb.d:                                             ; preds = %exchange_func.exit.i, %exchange_func.exit.i
  br label %exchange_func.exit210.i

bb.e:                                             ; preds = %exchange_func.exit.i
  br label %exchange_func.exit210.i

exchange_func.exit210.i:                          ; preds = %bb.e, %bb.d, %bb.c, %exchange_func.exit.i, %exchange_func.exit.thread.i, %bb.a
  %.0.i104.i = phi ptr [ %.0.i.i, %bb.c ], [ %.0.i.i, %bb.e ], [ %.0.i.i, %exchange_func.exit.i ], [ %.0.i.i, %bb.d ], [ @exchange_one_int64, %exchange_func.exit.thread.i ], [ @exchange_int32s, %bb.a ] ; 5 uses
  %.0.i209.i = phi ptr [ @exchange_int64s, %bb.c ], [ @exchange_bytes, %bb.e ], [ @exchange_int32s, %exchange_func.exit.i ], [ @exchange_int16s, %bb.d ], [ @exchange_int64s, %exchange_func.exit.thread.i ], [ @exchange_int32s, %bb.a ] ; 2 uses
  %i.i = icmp ult i32 %i.d, 2
  br i1 %i.i, label %rqsort.exit, label %bb.f

bb.f:                                             ; preds = %exchange_func.exit210.i
  store ptr %i.b, ptr %1, align 16, !tbaa !88
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.e, ptr %i.j, align 8, !tbaa !89
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.k, align 16, !tbaa !90
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.g

.loopexit.i:                                      ; preds = %.critedge5.i.loopexit, %._crit_edge11.i.i, %heapsortx.exit.i, %.preheader.i.i
  %.118910111.i = phi ptr [ %.118910.i, %heapsortx.exit.i ], [ %.118940.i.lcssa, %._crit_edge11.i.i ], [ %.118940.i.lcssa, %.preheader.i.i ], [ %.118910.i, %.critedge5.i.loopexit ] ; 2 uses
  %i.m = icmp ugt ptr %.118910111.i, %1
  br i1 %i.m, label %bb.g, label %rqsort.exit.loopexit, !llvm.loop !73

bb.g:                                             ; preds = %.loopexit.i, %bb.f
  %.018852.i = phi ptr [ %i.l, %bb.f ], [ %.118910111.i, %.loopexit.i ] ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %.018852.i, i64 -24 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !88   ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %.018852.i, i64 -16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !89   ; 4 uses
  %i.r = icmp ugt i64 %i.q, 6
  br i1 %i.r, label %.lr.ph43.preheader.i, label %heapsortx.exit.i

.lr.ph43.preheader.i:                             ; preds = %bb.g
  %i.s = getelementptr inbounds i8, ptr %.018852.i, i64 -8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !90   ; 3 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %i.t, i32 50)
  %exitcond.i155 = icmp sgt i32 %i.t, 49
  br i1 %exitcond.i155, label %.lr.ph43.i._crit_edge, label %.lr.ph159

.lr.ph43.i:                                       ; preds = %bb.ab
  %exitcond.i = icmp eq i32 %i.bl, %smax.i
  br i1 %exitcond.i, label %.lr.ph43.i._crit_edge, label %.lr.ph159, !llvm.loop !74

.lr.ph43.i._crit_edge:                            ; preds = %.lr.ph43.i, %.lr.ph43.preheader.i
  %.018641.i.lcssa = phi ptr [ %i.o, %.lr.ph43.preheader.i ], [ %.1187.i, %.lr.ph43.i ] ; 9 uses
  %.118940.i.lcssa = phi ptr [ %i.n, %.lr.ph43.preheader.i ], [ %.2190.i, %.lr.ph43.i ] ; 2 uses
  %.019139.i.lcssa = phi i64 [ %i.q, %.lr.ph43.preheader.i ], [ %.1192.i, %.lr.ph43.i ] ; 2 uses
  %i.u = ptrtoint ptr %.018641.i.lcssa to i64
  %i.v = and i64 %i.u, 7                          ; 2 uses
  %.not162 = icmp eq i64 %i.v, 7
  br i1 %.not162, label %exchange_func.exit.i.i, label %switch.lookup

switch.lookup:                                    ; preds = %.lr.ph43.i._crit_edge
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.cr_sort_and_remove_overlap, i64 %i.v
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %exchange_func.exit.i.i

exchange_func.exit.i.i:                           ; preds = %.lr.ph43.i._crit_edge, %switch.lookup
  %.0.i.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @exchange_bytes, %.lr.ph43.i._crit_edge ] ; 3 uses
  %i.w = shl i64 %.019139.i.lcssa, 2
  %i.x = and i64 %i.w, -8                         ; 2 uses
  %i.y = shl i64 %.019139.i.lcssa, 3              ; 4 uses
  %.not5.i.i = icmp eq i64 %i.x, 0
  %.pre.i.i = add i64 %i.y, -8                    ; 3 uses
  br i1 %.not5.i.i, label %.preheader.i.i, label %.lr.ph7.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %exchange_func.exit.i.i
  %.not8514.i.i = icmp eq i64 %.pre.i.i, 0
  br i1 %.not8514.i.i, label %.loopexit.i, label %.lr.ph17.i.i

.lr.ph7.i.i:                                      ; preds = %exchange_func.exit.i.i, %._crit_edge.i.i
  %.0796.i.i = phi i64 [ %i.z, %._crit_edge.i.i ], [ %i.x, %exchange_func.exit.i.i ]
  %i.z = add i64 %.0796.i.i, -8                   ; 4 uses
  %i.aa = shl i64 %i.z, 1                         ; 2 uses
  %i.ab = or disjoint i64 %i.aa, 8                ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.y
  br i1 %i.ac, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i, %bb.j
  %i.ad = phi i64 [ %i.ar, %bb.j ], [ %i.ab, %.lr.ph7.i.i ] ; 4 uses
  %i.ae = phi i64 [ %i.aq, %bb.j ], [ %i.aa, %.lr.ph7.i.i ]
  %.03.i.i = phi i64 [ %.077.i.i, %bb.j ], [ %i.z, %.lr.ph7.i.i ]
  %i.af = icmp ult i64 %i.ad, %.pre.i.i
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.018641.i.lcssa, i64 %i.ad ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !14
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !14
  %.not1.i.i = icmp ugt i32 %i.ai, %i.aj
  %i.ak = add i64 %i.ae, 16
  %spec.select.i.i = select i1 %.not1.i.i, i64 %i.ad, i64 %i.ak
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.077.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ %spec.select.i.i, %bb.h ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.018641.i.lcssa, i64 %.03.i.i ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.018641.i.lcssa, i64 %.077.i.i ; 2 uses
  %i.an = load i32, ptr %i.al, align 4, !tbaa !14
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !14
  %i.ap = icmp ugt i32 %i.an, %i.ao
  br i1 %i.ap, label %._crit_edge.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void %.0.i.i.i(ptr noundef nonnull %i.al, ptr noundef nonnull %i.am, i64 noundef 8) #21, !inline_history !75
  %i.aq = shl i64 %.077.i.i, 1                    ; 2 uses
  %i.ar = add i64 %i.aq, 8                        ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.y
  br i1 %i.as, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !76

._crit_edge.i.i:                                  ; preds = %bb.j, %bb.i, %.lr.ph7.i.i
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph7.i.i, !llvm.loop !77

.lr.ph17.i.i:                                     ; preds = %.preheader.i.i, %._crit_edge11.i.i
  %.18016.i.i = phi i64 [ %.180.i.i, %._crit_edge11.i.i ], [ %.pre.i.i, %.preheader.i.i ] ; 5 uses
  %.180.in15.i.i = phi i64 [ %.18016.i.i, %._crit_edge11.i.i ], [ %i.y, %.preheader.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.018641.i.lcssa, i64 %.18016.i.i
  call void %.0.i.i.i(ptr noundef %.018641.i.lcssa, ptr noundef nonnull %i.at, i64 noundef 8) #21, !inline_history !75
  %i.au = icmp ugt i64 %.18016.i.i, 8
  br i1 %i.au, label %.lr.ph10.i.i, label %._crit_edge11.i.i

.lr.ph10.i.i:                                     ; preds = %.lr.ph17.i.i
  %2 = add i64 %.180.in15.i.i, -16
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %.lr.ph10.i.i
  %i.av = phi i64 [ 8, %.lr.ph10.i.i ], [ %i.bj, %bb.n ] ; 4 uses
  %i.aw = phi i64 [ 0, %.lr.ph10.i.i ], [ %i.bi, %bb.n ]
  %.18.i.i = phi i64 [ 0, %.lr.ph10.i.i ], [ %.178.i.i, %bb.n ]
  %i.ax = icmp ult i64 %i.av, %2
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %.018641.i.lcssa, i64 %i.av ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !14
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !14
  %.not2.i.i = icmp ugt i32 %i.ba, %i.bb
  %i.bc = add i64 %i.aw, 16
  %spec.select86.i.i = select i1 %.not2.i.i, i64 %i.av, i64 %i.bc
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.178.i.i = phi i64 [ %i.av, %bb.k ], [ %spec.select86.i.i, %bb.l ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.018641.i.lcssa, i64 %.18.i.i ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.018641.i.lcssa, i64 %.178.i.i ; 2 uses
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !14
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !14
  %i.bh = icmp ugt i32 %i.bf, %i.bg
  br i1 %i.bh, label %._crit_edge11.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void %.0.i.i.i(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.be, i64 noundef 8) #21, !inline_history !75
  %i.bi = shl i64 %.178.i.i, 1                    ; 2 uses
  %i.bj = add i64 %i.bi, 8                        ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %.18016.i.i
  br i1 %i.bk, label %bb.k, label %._crit_edge11.i.i, !llvm.loop !78

._crit_edge11.i.i:                                ; preds = %bb.n, %bb.m, %.lr.ph17.i.i
  %.180.i.i = add i64 %.18016.i.i, -8             ; 2 uses
  %.not85.i.i = icmp eq i64 %.180.i.i, 0
  br i1 %.not85.i.i, label %.loopexit.i, label %.lr.ph17.i.i, !llvm.loop !79

.lr.ph159:                                        ; preds = %.lr.ph43.preheader.i, %.lr.ph43.i
  %.in = phi i32 [ %i.bl, %.lr.ph43.i ], [ %i.t, %.lr.ph43.preheader.i ]
  %.019139.i158 = phi i64 [ %.1192.i, %.lr.ph43.i ], [ %i.q, %.lr.ph43.preheader.i ] ; 3 uses
  %.118940.i157 = phi ptr [ %.2190.i, %.lr.ph43.i ], [ %i.n, %.lr.ph43.preheader.i ] ; 4 uses
  %.018641.i156 = phi ptr [ %.1187.i, %.lr.ph43.i ], [ %i.o, %.lr.ph43.preheader.i ] ; 12 uses
  %i.bl = add nsw i32 %.in, 1                     ; 3 uses
  %i.bm = shl i64 %.019139.i158, 1
  %i.bn = and i64 %i.bm, -8                       ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.018641.i156, i64 %i.bn ; 3 uses
  %i.bp = shl i64 %i.bn, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.018641.i156, i64 %i.bp ; 3 uses
  %i.br = mul i64 %i.bn, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %.018641.i156, i64 %i.br ; 3 uses
  %i.bt = load i32, ptr %i.bo, align 4, !tbaa !14 ; 3 uses
  %i.bu = load i32, ptr %i.bq, align 4, !tbaa !14 ; 3 uses
  %i.bv = icmp ult i32 %i.bt, %i.bu
  %i.bw = load i32, ptr %i.bs, align 4, !tbaa !14 ; 4 uses
  br i1 %i.bv, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.lr.ph159
  %i.bx = icmp ult i32 %i.bu, %i.bw
  br i1 %i.bx, label %med3.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = icmp ult i32 %i.bt, %i.bw
  %i.bz = select i1 %i.by, ptr %i.bs, ptr %i.bo
  br label %med3.exit.i

bb.q:                                             ; preds = %.lr.ph159
  %i.ca = icmp ugt i32 %i.bu, %i.bw
  br i1 %i.ca, label %med3.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = icmp ult i32 %i.bt, %i.bw
  %i.cc = select i1 %i.cb, ptr %i.bo, ptr %i.bs
  br label %med3.exit.i

med3.exit.i:                                      ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.cd = phi ptr [ %i.bz, %bb.p ], [ %i.cc, %bb.r ], [ %i.bq, %bb.o ], [ %i.bq, %bb.q ]
  call void %.0.i104.i(ptr noundef nonnull %.018641.i156, ptr noundef nonnull %i.cd, i64 noundef 8) #21, !inline_history !80
  %i.ce = getelementptr inbounds nuw i8, ptr %.018641.i156, i64 8 ; 2 uses
  %i.cf = shl i64 %.019139.i158, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %.018641.i156, i64 %i.cf ; 5 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.z, %med3.exit.i
  %.0183.i = phi ptr [ %i.ce, %med3.exit.i ], [ %i.db, %bb.z ] ; 3 uses
  %.0180.i = phi ptr [ %i.cg, %med3.exit.i ], [ %i.cs, %bb.z ] ; 3 uses
  %.0177.i = phi ptr [ %i.ce, %med3.exit.i ], [ %.1178.lcssa.i, %bb.z ] ; 2 uses
  %.0174.i = phi ptr [ %i.cg, %med3.exit.i ], [ %.117524.i, %bb.z ] ; 2 uses
  %.0172.i = phi i64 [ 1, %med3.exit.i ], [ %i.da, %bb.z ] ; 2 uses
  %.0169.i = phi i64 [ 1, %med3.exit.i ], [ %.1170.lcssa.i, %bb.z ] ; 2 uses
  %.0167.i = phi i64 [ %.019139.i158, %med3.exit.i ], [ %.116825.i, %bb.z ] ; 2 uses
  %i.ch = icmp ult ptr %.0183.i, %.0180.i
  br i1 %i.ch, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.s, %bb.v
  %.117015.i = phi i64 [ %.2171.i, %bb.v ], [ %.0169.i, %bb.s ] ; 3 uses
  %.117314.i = phi i64 [ %i.cn, %bb.v ], [ %.0172.i, %bb.s ] ; 2 uses
  %.117813.i = phi ptr [ %.2179.i, %bb.v ], [ %.0177.i, %bb.s ] ; 4 uses
  %.118412.i = phi ptr [ %i.co, %bb.v ], [ %.0183.i, %bb.s ] ; 4 uses
  %i.ci = load i32, ptr %.018641.i156, align 4, !tbaa !14 ; 2 uses
  %i.cj = load i32, ptr %.118412.i, align 4, !tbaa !14 ; 2 uses
  %.not.i = icmp ult i32 %i.ci, %i.cj
  br i1 %.not.i, label %.critedge.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i
  %i.ck = icmp eq i32 %i.ci, %i.cj
  br i1 %i.ck, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void %.0.i104.i(ptr noundef %.117813.i, ptr noundef nonnull %.118412.i, i64 noundef 8) #21, !inline_history !80
  %i.cl = add i64 %.117015.i, 1
  %i.cm = getelementptr inbounds nuw i8, ptr %.117813.i, i64 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.2179.i = phi ptr [ %i.cm, %bb.u ], [ %.117813.i, %bb.t ] ; 2 uses
  %.2171.i = phi i64 [ %i.cl, %bb.u ], [ %.117015.i, %bb.t ] ; 2 uses
  %i.cn = add i64 %.117314.i, 1                   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.118412.i, i64 8 ; 3 uses
  %i.cp = icmp ult ptr %i.co, %.0180.i
  br i1 %i.cp, label %.lr.ph.i, label %.critedge.i, !llvm.loop !81

.critedge.i:                                      ; preds = %bb.v, %.lr.ph.i, %bb.s
  %.1184.lcssa.i = phi ptr [ %.0183.i, %bb.s ], [ %.118412.i, %.lr.ph.i ], [ %i.co, %bb.v ] ; 7 uses
  %.1178.lcssa.i = phi ptr [ %.0177.i, %bb.s ], [ %.117813.i, %.lr.ph.i ], [ %.2179.i, %bb.v ] ; 2 uses
  %.1173.lcssa.i = phi i64 [ %.0172.i, %bb.s ], [ %.117314.i, %.lr.ph.i ], [ %i.cn, %bb.v ] ; 3 uses
  %.1170.lcssa.i = phi i64 [ %.0169.i, %bb.s ], [ %.117015.i, %.lr.ph.i ], [ %.2171.i, %bb.v ] ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.0180.i, i64 -8 ; 2 uses
  %i.cr = icmp ult ptr %.1184.lcssa.i, %i.cq
  br i1 %i.cr, label %.lr.ph26.i, label %.critedge3.i

.lr.ph26.i:                                       ; preds = %.critedge.i, %bb.y
  %i.cs = phi ptr [ %i.cy, %bb.y ], [ %i.cq, %.critedge.i ] ; 5 uses
  %.116825.i = phi i64 [ %.2.i, %bb.y ], [ %.0167.i, %.critedge.i ] ; 3 uses
  %.117524.i = phi ptr [ %.2176.i, %bb.y ], [ %.0174.i, %.critedge.i ] ; 3 uses
  %i.ct = load i32, ptr %.018641.i156, align 4, !tbaa !14 ; 2 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !14 ; 2 uses
  %.not1.i = icmp ugt i32 %i.ct, %i.cu
  br i1 %.not1.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %.lr.ph26.i
  %i.cv = icmp eq i32 %i.ct, %i.cu
  br i1 %i.cv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cw = add i64 %.116825.i, -1
  %i.cx = getelementptr inbounds i8, ptr %.117524.i, i64 -8 ; 2 uses
  call void %.0.i104.i(ptr noundef nonnull %i.cx, ptr noundef nonnull %i.cs, i64 noundef 8) #21, !inline_history !80
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.2176.i = phi ptr [ %i.cx, %bb.x ], [ %.117524.i, %bb.w ] ; 2 uses
  %.2.i = phi i64 [ %i.cw, %bb.x ], [ %.116825.i, %bb.w ] ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %i.cs, i64 -8 ; 2 uses
  %i.cz = icmp ult ptr %.1184.lcssa.i, %i.cy
  br i1 %i.cz, label %.lr.ph26.i, label %.critedge3.i, !llvm.loop !82

bb.z:                                             ; preds = %.lr.ph26.i
  call void %.0.i104.i(ptr noundef %.1184.lcssa.i, ptr noundef nonnull %i.cs, i64 noundef 8) #21, !inline_history !80
  %i.da = add i64 %.1173.lcssa.i, 1
  %i.db = getelementptr inbounds nuw i8, ptr %.1184.lcssa.i, i64 8
  br label %bb.s

.critedge3.i:                                     ; preds = %.critedge.i, %bb.y
  %.1175.lcssa.i = phi ptr [ %.2176.i, %bb.y ], [ %.0174.i, %.critedge.i ]
  %.1168.lcssa.i = phi i64 [ %.2.i, %bb.y ], [ %.0167.i, %.critedge.i ]
  %i.dc = ptrtoint ptr %.1178.lcssa.i to i64      ; 2 uses
  %i.dd = ptrtoint ptr %.018641.i156 to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = ptrtoint ptr %.1184.lcssa.i to i64      ; 2 uses
  %i.dg = sub i64 %i.df, %i.dc
  %i.dh = sub i64 %.1173.lcssa.i, %.1170.lcssa.i  ; 3 uses
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.de, i64 %i.dg) ; 2 uses
  %i.di = sub i64 0, %spec.select.i
  %i.dj = getelementptr inbounds i8, ptr %.1184.lcssa.i, i64 %i.di
  call void %.0.i209.i(ptr noundef nonnull %.018641.i156, ptr noundef %i.dj, i64 noundef %spec.select.i) #21, !inline_history !80
  %i.dk = ptrtoint ptr %i.cg to i64
  %i.dl = ptrtoint ptr %.1175.lcssa.i to i64      ; 2 uses
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = sub i64 %i.dl, %i.df                    ; 2 uses
  %i.do = sub i64 0, %i.dn
  %i.dp = getelementptr inbounds i8, ptr %i.cg, i64 %i.do ; 2 uses
  %i.dq = sub i64 %.1168.lcssa.i, %.1173.lcssa.i  ; 3 uses
  %.1.i = call i64 @llvm.umin.i64(i64 %i.dm, i64 %i.dn) ; 2 uses
  %i.dr = sub i64 0, %.1.i
  %i.ds = getelementptr inbounds i8, ptr %i.cg, i64 %i.dr
  call void %.0.i209.i(ptr noundef %.1184.lcssa.i, ptr noundef nonnull %i.ds, i64 noundef %.1.i) #21, !inline_history !80
  %i.dt = icmp ugt i64 %i.dh, %i.dq
  br i1 %i.dt, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge3.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge3.i
  %.sink71.i = phi ptr [ %i.dp, %bb.aa ], [ %.018641.i156, %.critedge3.i ]
  %.sink.i = phi i64 [ %i.dq, %bb.aa ], [ %i.dh, %.critedge3.i ]
  %.1192.i = phi i64 [ %i.dh, %bb.aa ], [ %i.dq, %.critedge3.i ] ; 4 uses
  %.1187.i = phi ptr [ %.018641.i156, %bb.aa ], [ %i.dp, %.critedge3.i ] ; 3 uses
  store ptr %.sink71.i, ptr %.118940.i157, align 8, !tbaa !88
  %i.du = getelementptr inbounds nuw i8, ptr %.118940.i157, i64 8
  store i64 %.sink.i, ptr %i.du, align 8, !tbaa !89
  %i.dv = getelementptr inbounds nuw i8, ptr %.118940.i157, i64 16
  store i32 %i.bl, ptr %i.dv, align 8, !tbaa !90
  %.2190.i = getelementptr inbounds nuw i8, ptr %.118940.i157, i64 24 ; 3 uses
  %i.dw = icmp ugt i64 %.1192.i, 6
  br i1 %i.dw, label %.lr.ph43.i, label %heapsortx.exit.i, !llvm.loop !74

heapsortx.exit.i:                                 ; preds = %bb.ab, %bb.g
  %.118910.i = phi ptr [ %i.n, %bb.g ], [ %.2190.i, %bb.ab ] ; 2 uses
  %.01868.i = phi ptr [ %i.o, %bb.g ], [ %.1187.i, %bb.ab ] ; 3 uses
  %.2193.i = phi i64 [ %i.q, %bb.g ], [ %.1192.i, %bb.ab ] ; 2 uses
  %i.dx = shl nuw nsw i64 %.2193.i, 3
  %i.dy = getelementptr inbounds nuw i8, ptr %.01868.i, i64 %i.dx
  %i.dz = icmp samesign ugt i64 %.2193.i, 1
  br i1 %i.dz, label %.preheader.preheader.i, label %.loopexit.i

.preheader.preheader.i:                           ; preds = %heapsortx.exit.i
  %.218550.i = getelementptr inbounds nuw i8, ptr %.01868.i, i64 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.critedge5.i.loopexit, %.preheader.preheader.i
  %.218551.i = phi ptr [ %.2185.i, %.critedge5.i.loopexit ], [ %.218550.i, %.preheader.preheader.i ] ; 2 uses
  br label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %.preheader.i, %bb.ac
  %.218247.i = phi ptr [ %i.ea, %bb.ac ], [ %.218551.i, %.preheader.i ] ; 3 uses
  %i.ea = getelementptr inbounds i8, ptr %.218247.i, i64 -8 ; 4 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !14
  %i.ec = load i32, ptr %.218247.i, align 4, !tbaa !14
  %i.ed = icmp ugt i32 %i.eb, %i.ec
  br i1 %i.ed, label %bb.ac, label %.critedge5.i.loopexit

bb.ac:                                            ; preds = %.lr.ph48.i
  call void %.0.i104.i(ptr noundef nonnull %.218247.i, ptr noundef nonnull %i.ea, i64 noundef 8) #21, !inline_history !80
  %i.ee = icmp ugt ptr %i.ea, %.01868.i
  br i1 %i.ee, label %.lr.ph48.i, label %.critedge5.i.loopexit, !llvm.loop !83

.critedge5.i.loopexit:                            ; preds = %.lr.ph48.i, %bb.ac
  %.2185.i = getelementptr inbounds nuw i8, ptr %.218551.i, i64 8 ; 2 uses
  %i.ef = icmp ult ptr %.2185.i, %i.dy
  br i1 %i.ef, label %.preheader.i, label %.loopexit.i, !llvm.loop !84

rqsort.exit.loopexit:                             ; preds = %.loopexit.i
  %.pre = load i32, ptr %0, align 8, !tbaa !26
  br label %rqsort.exit

rqsort.exit:                                      ; preds = %rqsort.exit.loopexit, %exchange_func.exit210.i
  %i.eg = phi i32 [ %.pre, %rqsort.exit.loopexit ], [ %i.c, %exchange_func.exit210.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %.not = icmp eq i32 %i.eg, 0
  br i1 %.not, label %._crit_edge63, label %.lr.ph62

.lr.ph62:                                         ; preds = %rqsort.exit
  %i.eh = load ptr, ptr %i.a, align 8, !tbaa !24  ; 6 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph62, %._crit_edge
  %i.ei = phi i32 [ %i.eg, %.lr.ph62 ], [ %i.fg, %._crit_edge ] ; 2 uses
  %.061 = phi i32 [ 0, %.lr.ph62 ], [ %i.ff, %._crit_edge ] ; 3 uses
  %.03060 = phi i32 [ 0, %.lr.ph62 ], [ %.1.lcssa, %._crit_edge ] ; 4 uses
  %i.ej = zext i32 %.03060 to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !14
  %i.em = add nuw i32 %.03060, 1
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !14 ; 2 uses
  %.152 = add i32 %.03060, 2                      ; 3 uses
  %i.eq = icmp ult i32 %.152, %i.ei
  br i1 %i.eq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ad, %bb.ae
  %.155 = phi i32 [ %.1, %bb.ae ], [ %.152, %bb.ad ] ; 4 uses
  %.1.in54 = phi i32 [ %.155, %bb.ae ], [ %.03060, %bb.ad ]
  %.03153 = phi i32 [ %..031, %bb.ae ], [ %i.ep, %bb.ad ] ; 3 uses
  %i.er = zext i32 %.155 to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !14
  %i.eu = icmp ugt i32 %i.et, %.03153
  br i1 %i.eu, label %._crit_edge, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph
  %i.ev = add i32 %.1.in54, 3
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !14
  %..031 = call i32 @llvm.umax.i32(i32 %i.ey, i32 %.03153) ; 2 uses
  %.1 = add i32 %.155, 2                          ; 3 uses
  %i.ez = icmp ult i32 %.1, %i.ei
  br i1 %i.ez, label %.lr.ph, label %._crit_edge, !llvm.loop !85

._crit_edge:                                      ; preds = %bb.ae, %.lr.ph, %bb.ad
  %.031.lcssa = phi i32 [ %i.ep, %bb.ad ], [ %.03153, %.lr.ph ], [ %..031, %bb.ae ]
  %.1.lcssa = phi i32 [ %.152, %bb.ad ], [ %.155, %.lr.ph ], [ %.1, %bb.ae ] ; 2 uses
  %i.fa = zext i32 %.061 to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.fa
  store i32 %i.el, ptr %i.fb, align 4, !tbaa !14
  %i.fc = or disjoint i32 %.061, 1
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.fd
  store i32 %.031.lcssa, ptr %i.fe, align 4, !tbaa !14
  %i.ff = add i32 %.061, 2                        ; 2 uses
  %i.fg = load i32, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.fh = icmp ult i32 %.1.lcssa, %i.fg
  br i1 %i.fh, label %bb.ad, label %._crit_edge63, !llvm.loop !86

._crit_edge63:                                    ; preds = %._crit_edge, %rqsort.exit
  %.0.lcssa = phi i32 [ 0, %rqsort.exit ], [ %i.ff, %._crit_edge ]
  store i32 %.0.lcssa, ptr %0, align 8, !tbaa !26
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2, 1) i32 @unicode_general_category(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #24 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %bb.a
  %.01829.i = phi i32 [ %i.j, %bb.h ], [ 0, %bb.a ] ; 3 uses
  %.01928.i = phi ptr [ %i.i, %bb.h ], [ @unicode_gc_name_table, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.preheader.i
  %.1.i = phi ptr [ %i.i, %bb.g ], [ %.01928.i, %.preheader.i ] ; 5 uses
  %i.b = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.1.i, i32 noundef 44) #24 ; 2 uses
  %.not23.i = icmp eq ptr %i.b, null              ; 2 uses
  br i1 %.not23.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1.i) #24
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %.1.i to i64
  %i.f = sub i64 %i.d, %i.e
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i64 [ %i.f, %bb.d ], [ %i.c, %bb.c ] ; 2 uses
  %i.g = icmp eq i64 %.0.i, %i.a
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.1.i, ptr nonnull readonly %1, i64 %i.a)
  %.not24.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not24.i, label %unicode_find_name.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.h = getelementptr i8, ptr %.1.i, i64 %.0.i
  %i.i = getelementptr i8, ptr %i.h, i64 1        ; 3 uses
  br i1 %.not23.i, label %bb.h, label %bb.b

bb.h:                                             ; preds = %bb.g
  %i.j = add nuw nsw i32 %.01829.i, 1
  %i.k = load i8, ptr %i.i, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %unicode_find_name.exit.thread, label %.preheader.i, !llvm.loop !3

unicode_find_name.exit:                           ; preds = %bb.f
  %i.l = icmp samesign ult i32 %.01829.i, 30
  %i.m = zext nneg i32 %.01829.i to i64           ; 2 uses
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %unicode_find_name.exit
  %i.n = shl nuw nsw i64 1, %i.m
  %i.o = trunc nuw nsw i64 %i.n to i32
  br label %bb.k

bb.j:                                             ; preds = %unicode_find_name.exit
  %i.p = getelementptr [4 x i8], ptr @unicode_gc_mask_table, i64 %i.m
  %i.q = getelementptr i8, ptr %i.p, i64 -120
  %i.r = load i32, ptr %i.q, align 4, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi i32 [ %i.o, %bb.i ], [ %i.r, %bb.j ]
  %i.s = tail call fastcc i32 @unicode_general_category1(ptr noundef %0, i32 noundef %.0)
  br label %unicode_find_name.exit.thread

unicode_find_name.exit.thread:                    ; preds = %bb.h, %bb.k
  %.07 = phi i32 [ %i.s, %bb.k ], [ -2, %bb.h ]
  ret i32 %.07
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @unicode_general_category1(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = and i32 %1, 6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %.phi.trans.insert.i60 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = lshr i32 %1, 2
  %.lobit = and i32 %i.e, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %.04175 = phi i32 [ 0, %bb.a ], [ %i.ac, %.loopexit ] ; 3 uses
  %.042.idx74 = phi i64 [ 0, %bb.a ], [ %.1.idx, %.loopexit ] ; 5 uses
  %.042.ptr = getelementptr inbounds nuw i8, ptr @unicode_gc_table, i64 %.042.idx74 ; 2 uses
  %.042.add = add nuw nsw i64 %.042.idx74, 1      ; 2 uses
  %i.f = load i8, ptr %.042.ptr, align 1, !tbaa !16
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = lshr i32 %i.g, 5                         ; 2 uses
  %i.i = and i32 %i.g, 31                         ; 2 uses
  %i.j = icmp eq i32 %i.h, 7
  br i1 %i.j, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %.ptr = getelementptr inbounds nuw i8, ptr @unicode_gc_table, i64 %.042.add
  %.add = add nuw nsw i64 %.042.idx74, 2          ; 2 uses
  %i.k = load i8, ptr %.ptr, align 1, !tbaa !16   ; 3 uses
  %i.l = zext i8 %i.k to i32                      ; 3 uses
  %i.m = icmp sgt i8 %i.k, -1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw nsw i32 %i.l, 7
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %.ptr52 = getelementptr inbounds nuw i8, ptr @unicode_gc_table, i64 %.add
  %i.o = icmp samesign ult i8 %i.k, -64
  %i.p = load i8, ptr %.ptr52, align 1, !tbaa !16
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i32 %i.l, 8
  %.add51 = add nuw nsw i64 %.042.idx74, 3
  %i.s = add nsw i32 %i.r, -32633
  %i.t = add nuw nsw i32 %i.s, %i.q
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.u = shl nuw nsw i32 %i.l, 16
  %.ptr53 = getelementptr inbounds nuw i8, ptr %.042.ptr, i64 3
  %i.v = shl nuw nsw i32 %i.q, 8
  %.add50 = add nuw nsw i64 %.042.idx74, 4
  %i.w = load i8, ptr %.ptr53, align 1, !tbaa !16
  %i.x = zext i8 %i.w to i32
  %i.y = add nsw i32 %i.u, -12566393
  %i.z = add nuw nsw i32 %i.y, %i.x
  %i.aa = add nuw nsw i32 %i.z, %i.v
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.b
  %.1.idx = phi i64 [ %.add, %bb.d ], [ %.add51, %bb.f ], [ %.add50, %bb.g ], [ %.042.add, %bb.b ] ; 2 uses
  %.0 = phi i32 [ %i.n, %bb.d ], [ %i.t, %bb.f ], [ %i.aa, %bb.g ], [ %i.h, %bb.b ]
  %i.ab = add i32 %.04175, 1
  %i.ac = add i32 %i.ab, %.0                      ; 4 uses
  %i.ad = icmp eq i32 %i.i, 31
  br i1 %i.ad, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  switch i32 %i.a, label %bb.j [
    i32 0, label %.loopexit
    i32 6, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  %i.ae = add i32 %.04175, %.lobit                ; 2 uses
  %i.af = icmp ult i32 %i.ae, %i.ac
  br i1 %i.af, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.j, %bb.l
  %.04073 = phi i32 [ %i.bc, %bb.l ], [ %i.ae, %bb.j ] ; 3 uses
  %i.ag = add nuw i32 %.04073, 1
  %i.ah = load i32, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.ai = add nsw i32 %i.ah, 2                    ; 2 uses
  %i.aj = load i32, ptr %i.b, align 4, !tbaa !25  ; 2 uses
  %i.ak = icmp sgt i32 %i.ai, %i.aj
  br i1 %i.ak, label %bb.k, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph
  %.pre.i = load ptr, ptr %.phi.trans.insert.i60, align 8, !tbaa !24
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph
  %i.al = mul nsw i32 %i.aj, 3
  %i.am = sdiv i32 %i.al, 2
  %..i.i.i = tail call range(i32 -1073741824, -2147483648) i32 @llvm.smax.i32(i32 %i.ai, i32 range(i32 -1073741824, 1073741824) %i.am) ; 2 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.ap = load ptr, ptr %.phi.trans.insert.i60, align 8, !tbaa !24
  %i.aq = sext i32 %..i.i.i to i64
  %i.ar = shl nsw i64 %i.aq, 2
  %i.as = tail call ptr %i.an(ptr noundef %i.ao, ptr noundef %i.ap, i64 noundef %i.ar) #21, !inline_history !44 ; 3 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %cr_add_interval.exit, label %cr_realloc.exit.thread.i

cr_realloc.exit.thread.i:                         ; preds = %bb.k
end_hunk_0
begin_hunk_1_@unicode_sequence_prop1:bb.a
  store i32 0, ptr %i.dx, align 4, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1158 = phi i32 [ %i.dv, %bb.l ], [ %i.dp, %bb.k ] ; 3 uses
  %.1156 = phi i32 [ %i.dl, %bb.l ], [ %.0155221, %bb.k ] ; 3 uses
  %.1154 = phi i32 [ %i.ds, %bb.l ], [ %.0153222, %bb.k ]
  %.not187 = icmp sgt i8 %i.dh, -1
  br i1 %.not187, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dy = add nsw i32 %.1158, 1
  %i.dz = sext i32 %.1158 to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dz
  store i32 65039, ptr %i.ea, align 4, !tbaa !14
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2 = phi i32 [ %i.dy, %bb.n ], [ %.1158, %bb.m ] ; 3 uses
  %i.eb = icmp slt i32 %.1168218, %i.db
  br i1 %i.eb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ec = add nsw i32 %.2, 1
  %i.ed = sext i32 %.2 to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ed
  store i32 8205, ptr %i.ee, align 4, !tbaa !14
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.3 = phi i32 [ %i.ec, %bb.p ], [ %.2, %bb.o ]  ; 15 uses
  %i.ef = add nuw nsw i32 %.1168218, 1            ; 2 uses
  %indvars.iv.next307 = add nuw nsw i64 %indvars.iv306, 2
  %exitcond.not = icmp eq i32 %i.ef, %i.da
  br i1 %exitcond.not, label %._crit_edge227, label %bb.k, !llvm.loop !102

._crit_edge227:                                   ; preds = %bb.q
  %i.eg = shl nsw i32 %i.db, 1
  %i.eh = add nsw i32 %i.eg, 3
  %i.ei = add i32 %i.eh, %.4259                   ; 6 uses
  switch i32 %.1156, label %default.unreachable [
    i32 1, label %.split241.us
    i32 2, label %.split241.us246
    i32 3, label %bb.r
    i32 0, label %.split241.us250
  ]

bb.r:                                             ; preds = %._crit_edge227
  br label %.split241.us246

default.unreachable:                              ; preds = %._crit_edge227
  unreachable

.split241.us:                                     ; preds = %._crit_edge227
  %i.ej = icmp sgt i32 %.1, -1                    ; 2 uses
  %. = select i1 %i.ej, i32 4, i32 1              ; 2 uses
  %i.ek = zext nneg i32 %.1 to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ek ; 5 uses
  %i.em = load i32, ptr %i.b, align 4
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.en ; 10 uses
  br i1 %i.ej, label %.preheader198.us.us, label %.preheader198.us

.preheader198.us.us:                              ; preds = %.split241.us, %.preheader198.us.us
  %.0148240.us.us = phi i32 [ %i.eq, %.preheader198.us.us ], [ 0, %.split241.us ] ; 2 uses
  %i.ep = add nuw nsw i32 %.0148240.us.us, 129456 ; 5 uses
  store i32 %i.ep, ptr %i.el, align 4, !tbaa !14
  store i32 127995, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 %i.ep, ptr %i.el, align 4, !tbaa !14
  store i32 127996, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 %i.ep, ptr %i.el, align 4, !tbaa !14
  store i32 127997, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 %i.ep, ptr %i.el, align 4, !tbaa !14
  store i32 127998, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 %i.ep, ptr %i.el, align 4, !tbaa !14
  store i32 127999, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  %i.eq = add nuw nsw i32 %.0148240.us.us, 1      ; 2 uses
  %exitcond325.not = icmp eq i32 %i.eq, %.
  br i1 %exitcond325.not, label %.loopexit199, label %.preheader198.us.us, !llvm.loop !103

.preheader198.us:                                 ; preds = %.split241.us, %.preheader198.us
  %.0148240.us = phi i32 [ %i.er, %.preheader198.us ], [ 0, %.split241.us ]
  store i32 127995, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 127996, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 127997, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 127998, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 127999, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  %i.er = add nuw nsw i32 %.0148240.us, 1         ; 2 uses
  %exitcond323.not = icmp eq i32 %i.er, %.
  br i1 %exitcond323.not, label %.loopexit199, label %.preheader198.us, !llvm.loop !103

.split241.us246:                                  ; preds = %._crit_edge227, %bb.r
  %.0151.ph = phi i32 [ 20, %bb.r ], [ 25, %._crit_edge227 ] ; 2 uses
  %i.es = icmp sgt i32 %.1, -1                    ; 2 uses
  %.393 = select i1 %i.es, i32 4, i32 1           ; 2 uses
  %i.et = zext nneg i32 %.1 to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.et
  %i.ev = icmp eq i32 %.1156, 3                   ; 2 uses
  %i.ew = load i32, ptr %i.b, align 4
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ex ; 2 uses
  %i.ez = load i32, ptr %i.cv, align 4
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fa ; 2 uses
  br i1 %i.es, label %.preheader198.us247.us, label %.preheader198.us247

.preheader198.us247.us:                           ; preds = %.split241.us246, %.split.split.us.us.split.us.us
  %.0148240.us248.us = phi i32 [ %i.fj, %.split.split.us.us.split.us.us ], [ 0, %.split241.us246 ] ; 2 uses
  %i.fc = add nuw nsw i32 %.0148240.us248.us, 129456
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.preheader198.us247.us
  %.0149232.us234.us.us.us = phi i32 [ 0, %.preheader198.us247.us ], [ %i.fi, %bb.s ] ; 3 uses
  store i32 %i.fc, ptr %i.eu, align 4, !tbaa !14
  %i.fd = udiv i32 %.0149232.us234.us.us.us, 5    ; 2 uses
  %i.fe = urem i32 %.0149232.us234.us.us.us, 5    ; 2 uses
  %.not185.us.us.us.us = icmp samesign uge i32 %i.fd, %i.fe
  %or.cond.not.us.us.us.us = select i1 %i.ev, i1 %.not185.us.us.us.us, i1 false
  %i.ff = zext i1 %or.cond.not.us.us.us.us to i32
  %.0.us.us.us.us = add nuw nsw i32 %i.fd, 127995
  %i.fg = add nuw nsw i32 %.0.us.us.us.us, %i.ff
  store i32 %i.fg, ptr %i.ey, align 4, !tbaa !14
  %i.fh = add nuw nsw i32 %i.fe, 127995
  store i32 %i.fh, ptr %i.fb, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  %i.fi = add nuw nsw i32 %.0149232.us234.us.us.us, 1 ; 2 uses
  %exitcond320.not = icmp eq i32 %i.fi, %.0151.ph
  br i1 %exitcond320.not, label %.split.split.us.us.split.us.us, label %bb.s, !llvm.loop !104

.split.split.us.us.split.us.us:                   ; preds = %bb.s
  %i.fj = add nuw nsw i32 %.0148240.us248.us, 1   ; 2 uses
  %exitcond321.not = icmp eq i32 %i.fj, %.393
  br i1 %exitcond321.not, label %.loopexit199, label %.preheader198.us247.us, !llvm.loop !103

.preheader198.us247:                              ; preds = %.split241.us246, %.split.split.us.us.split
  %.0148240.us248 = phi i32 [ %i.fq, %.split.split.us.us.split ], [ 0, %.split241.us246 ]
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.preheader198.us247
  %.0149232.us234.us = phi i32 [ 0, %.preheader198.us247 ], [ %i.fp, %bb.t ] ; 3 uses
  %i.fk = udiv i32 %.0149232.us234.us, 5          ; 2 uses
  %i.fl = urem i32 %.0149232.us234.us, 5          ; 2 uses
  %.not185.us.us = icmp samesign uge i32 %i.fk, %i.fl
  %or.cond.not.us.us = select i1 %i.ev, i1 %.not185.us.us, i1 false
  %i.fm = zext i1 %or.cond.not.us.us to i32
  %.0.us.us = add nuw nsw i32 %i.fk, 127995
  %i.fn = add nuw nsw i32 %.0.us.us, %i.fm
  store i32 %i.fn, ptr %i.ey, align 4, !tbaa !14
  %i.fo = add nuw nsw i32 %i.fl, 127995
  store i32 %i.fo, ptr %i.fb, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  %i.fp = add nuw nsw i32 %.0149232.us234.us, 1   ; 2 uses
  %exitcond318.not = icmp eq i32 %i.fp, %.0151.ph
  br i1 %exitcond318.not, label %.split.split.us.us.split, label %bb.t, !llvm.loop !104

.split.split.us.us.split:                         ; preds = %bb.t
  %i.fq = add nuw nsw i32 %.0148240.us248, 1      ; 2 uses
  %exitcond319.not = icmp eq i32 %i.fq, %.393
  br i1 %exitcond319.not, label %.loopexit199, label %.preheader198.us247, !llvm.loop !103

.split241.us250:                                  ; preds = %._crit_edge227
  %i.fr = icmp sgt i32 %.1, -1                    ; 2 uses
  %.406 = select i1 %i.fr, i32 4, i32 1
  %i.fs = zext nneg i32 %.1 to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fs
  br i1 %i.fr, label %.preheader198.us251.us, label %.preheader198.us251

.preheader198.us251.us:                           ; preds = %.split241.us250, %.preheader198.us251.us
  %.0148240.us252.us = phi i32 [ %i.fv, %.preheader198.us251.us ], [ 0, %.split241.us250 ] ; 2 uses
  %i.fu = add nuw nsw i32 %.0148240.us252.us, 129456
  store i32 %i.fu, ptr %i.ft, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  %i.fv = add nuw nsw i32 %.0148240.us252.us, 1   ; 2 uses
  %exitcond317.not = icmp eq i32 %i.fv, %.406
  br i1 %exitcond317.not, label %.loopexit199, label %.preheader198.us251.us, !llvm.loop !103

.preheader198.us251:                              ; preds = %bb.j, %.split241.us250
  %.0157.lcssa381.ph416 = phi i32 [ %.3, %.split241.us250 ], [ 0, %bb.j ]
  %.5.lcssa387.ph415 = phi i32 [ %i.ei, %.split241.us250 ], [ %.5217, %bb.j ]
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.0157.lcssa381.ph416) #21
  br label %.loopexit199

bb.u:                                             ; preds = %.loopexit199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.loopexit

.preheader200:                                    ; preds = %bb.a, %._crit_edge214
  %.6216 = phi i32 [ %.lcssa, %._crit_edge214 ], [ 0, %bb.a ] ; 2 uses
  store i32 127988, ptr %i.a, align 16, !tbaa !14
  %i.fw = add nuw nsw i32 %.6216, 1
  %i.fx = zext nneg i32 %.6216 to i64             ; 3 uses
  %i.fy = shl nuw nsw i64 1, %i.fx
  %i.fz = and i64 %i.fy, 133152
  %.not210 = icmp eq i64 %i.fz, 0
  br i1 %.not210, label %.lr.ph213.preheader, label %._crit_edge214

.lr.ph213.preheader:                              ; preds = %.preheader200
  %i.ga = add nuw nsw i64 %i.fx, 1
  br label %.lr.ph213

.lr.ph213:                                        ; preds = %.lr.ph213.preheader, %.lr.ph213
  %indvars.iv301 = phi i64 [ 1, %.lr.ph213.preheader ], [ %indvars.iv.next302, %.lr.ph213 ] ; 2 uses
  %indvars.iv299 = phi i64 [ %i.ga, %.lr.ph213.preheader ], [ %indvars.iv.next300, %.lr.ph213 ] ; 3 uses
  %4 = phi i64 [ %i.fx, %.lr.ph213.preheader ], [ %indvars.iv299, %.lr.ph213 ]
  %i.gb = getelementptr inbounds nuw i8, ptr @unicode_rgi_emoji_tag_sequence, i64 %4
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !16
  %i.gd = zext i8 %i.gc to i32
  %i.ge = or disjoint i32 %i.gd, 917504
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv301
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !14
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %i.gg = shl nuw i64 1, %indvars.iv299
  %i.gh = and i64 %i.gg, 133152
  %.not = icmp eq i64 %i.gh, 0
  br i1 %.not, label %.lr.ph213, label %._crit_edge214.loopexit

._crit_edge214.loopexit:                          ; preds = %.lr.ph213
  %i.gi = trunc nuw i64 %indvars.iv.next302 to i32
  %i.gj = trunc nuw i64 %indvars.iv.next300 to i32
  br label %._crit_edge214

._crit_edge214:                                   ; preds = %._crit_edge214.loopexit, %.preheader200
  %.2169.lcssa = phi i32 [ 1, %.preheader200 ], [ %i.gi, %._crit_edge214.loopexit ] ; 2 uses
  %.lcssa = phi i32 [ %i.fw, %.preheader200 ], [ %i.gj, %._crit_edge214.loopexit ] ; 2 uses
  %i.gk = add nuw nsw i32 %.2169.lcssa, 1
  %i.gl = zext nneg i32 %.2169.lcssa to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gl
  store i32 917631, ptr %i.gm, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %i.gk) #21
  %i.gn = icmp ult i32 %.lcssa, 18
  br i1 %i.gn, label %.preheader200, label %.loopexit, !llvm.loop !105

bb.v:                                             ; preds = %bb.a
  %i.go = tail call fastcc i32 @unicode_prop1(ptr noundef %3, i32 noundef 19)
  %i.gp = icmp slt i32 %i.go, 0
  br i1 %i.gp, label %.loopexit, label %.preheader202

.preheader202:                                    ; preds = %bb.v
  %i.gq = load i32, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.gr = icmp sgt i32 %i.gq, 0
  br i1 %i.gr, label %.lr.ph209, label %.loopexit

.lr.ph209:                                        ; preds = %.preheader202
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.gu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre = load ptr, ptr %i.gs, align 8, !tbaa !24
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph209, %._crit_edge
  %i.gv = phi i32 [ %i.gq, %.lr.ph209 ], [ %i.hi, %._crit_edge ]
  %i.gw = phi ptr [ %.pre, %.lr.ph209 ], [ %i.hj, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph209 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !14 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !14
  %i.hb = icmp ult i32 %i.gy, %i.ha
  br i1 %i.hb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.w, %.lr.ph
  %.5175207 = phi i32 [ %i.hc, %.lr.ph ], [ %i.gy, %bb.w ] ; 2 uses
  store i32 %.5175207, ptr %i.a, align 16, !tbaa !14
  store i32 65039, ptr %i.gt, align 4, !tbaa !14
  store i32 8419, ptr %i.gu, align 8, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 3) #21
  %i.hc = add nuw nsw i32 %.5175207, 1            ; 2 uses
  %i.hd = load ptr, ptr %i.gs, align 8, !tbaa !24 ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !14
  %i.hh = icmp ult i32 %i.hc, %i.hg
  br i1 %i.hh, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !106

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre339 = load i32, ptr %3, align 8, !tbaa !26
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.w
  %i.hi = phi i32 [ %.pre339, %._crit_edge.loopexit ], [ %i.gv, %bb.w ] ; 2 uses
  %i.hj = phi ptr [ %i.hd, %._crit_edge.loopexit ], [ %i.gw, %bb.w ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.hk = trunc nuw i64 %indvars.iv.next to i32
  %i.hl = icmp sgt i32 %i.hi, %i.hk
  br i1 %i.hl, label %bb.w, label %.loopexit, !llvm.loop !107

.preheader204.1:                                  ; preds = %.preheader204.preheader
  store i32 0, ptr %3, align 8, !tbaa !26
  %i.hm = tail call fastcc i32 @unicode_sequence_prop1(i32 noundef 1, ptr noundef %1, ptr noundef %2, ptr noundef %3) ; 2 uses
  %i.hn = icmp sgt i32 %i.hm, -1
  br i1 %i.hn, label %.preheader204.2, label %.loopexit

.preheader204.2:                                  ; preds = %.preheader204.1
  store i32 0, ptr %3, align 8, !tbaa !26
  %i.ho = tail call fastcc i32 @unicode_sequence_prop1(i32 noundef 2, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) ; 2 uses
  %i.hp = icmp sgt i32 %i.ho, -1
  br i1 %i.hp, label %.preheader204.3, label %.loopexit

.preheader204.3:                                  ; preds = %.preheader204.2
  store i32 0, ptr %3, align 8, !tbaa !26
  %i.hq = tail call fastcc i32 @unicode_sequence_prop1(i32 noundef 3, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) ; 2 uses
  %i.hr = icmp sgt i32 %i.hq, -1
  br i1 %i.hr, label %.preheader204.4, label %.loopexit

.preheader204.4:                                  ; preds = %.preheader204.3
  store i32 0, ptr %3, align 8, !tbaa !26
  %i.hs = tail call fastcc i32 @unicode_sequence_prop1(i32 noundef 4, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) ; 2 uses
  %i.ht = icmp sgt i32 %i.hs, -1
  br i1 %i.ht, label %.preheader204.5, label %.loopexit

.preheader204.5:                                  ; preds = %.preheader204.4
  store i32 0, ptr %3, align 8, !tbaa !26
  %i.hu = tail call fastcc i32 @unicode_sequence_prop1(i32 noundef 5, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) ; 2 uses
  %i.hv = icmp sgt i32 %i.hu, -1
  br i1 %i.hv, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %.preheader204.5
  store i32 0, ptr %3, align 8, !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge214, %._crit_edge263, %._crit_edge268, %._crit_edge281, %.preheader204.preheader, %.preheader204.1, %.preheader204.2, %.preheader204.3, %.preheader204.4, %.preheader204.5, %bb.x, %.preheader202, %.preheader196, %.preheader194, %.preheader, %bb.u, %bb.a, %bb.v, %bb.g, %bb.e, %._crit_edge277, %bb.b
  %.2161 = phi i32 [ -1, %bb.v ], [ 0, %bb.u ], [ -1, %bb.b ], [ -2, %bb.a ], [ -1, %._crit_edge277 ], [ -1, %bb.e ], [ -1, %bb.g ], [ 0, %._crit_edge214 ], [ 0, %.preheader196 ], [ 0, %.preheader194 ], [ 0, %.preheader ], [ 0, %.preheader202 ], [ 0, %._crit_edge268 ], [ 0, %._crit_edge263 ], [ %i.hq, %.preheader204.3 ], [ 0, %._crit_edge281 ], [ %i.c, %.preheader204.preheader ], [ 0, %bb.x ], [ %i.hm, %.preheader204.1 ], [ %i.hu, %.preheader204.5 ], [ %i.ho, %.preheader204.2 ], [ %i.hs, %.preheader204.4 ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.2161
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2, 1) i32 @unicode_prop(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #24 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %bb.a
  %.01829.i = phi i32 [ %i.j, %bb.h ], [ 0, %bb.a ] ; 3 uses
  %.01928.i = phi ptr [ %i.i, %bb.h ], [ @unicode_prop_name_table, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.preheader.i
  %.1.i = phi ptr [ %i.i, %bb.g ], [ %.01928.i, %.preheader.i ] ; 5 uses
  %i.b = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.1.i, i32 noundef 44) #24 ; 2 uses
  %.not23.i = icmp eq ptr %i.b, null              ; 2 uses
  br i1 %.not23.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1.i) #24
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %.1.i to i64
  %i.f = sub i64 %i.d, %i.e
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i64 [ %i.f, %bb.d ], [ %i.c, %bb.c ] ; 2 uses
  %i.g = icmp eq i64 %.0.i, %i.a
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.1.i, ptr nonnull readonly %1, i64 %i.a)
  %.not24.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not24.i, label %unicode_find_name.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.h = getelementptr i8, ptr %.1.i, i64 %.0.i
  %i.i = getelementptr i8, ptr %i.h, i64 1        ; 3 uses
  br i1 %.not23.i, label %bb.h, label %bb.b

bb.h:                                             ; preds = %bb.g
  %i.j = add nuw nsw i32 %.01829.i, 1
  %i.k = load i8, ptr %i.i, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %cr_add_interval.exit, label %.preheader.i, !llvm.loop !3

unicode_find_name.exit:                           ; preds = %bb.f
  %i.l = add nuw nsw i32 %.01829.i, 20            ; 2 uses
  switch i32 %i.l, label %bb.af [
    i32 56, label %bb.i
    i32 58, label %bb.k
    i32 59, label %bb.m
    i32 73, label %bb.n
    i32 72, label %bb.o
    i32 74, label %bb.p
    i32 60, label %bb.q
    i32 57, label %bb.r
    i32 67, label %bb.s
    i32 68, label %bb.t
    i32 76, label %bb.u
    i32 75, label %bb.v
    i32 66, label %bb.w
    i32 63, label %bb.x
    i32 62, label %bb.y
    i32 65, label %bb.ab
    i32 61, label %bb.ac
    i32 64, label %bb.ad
    i32 69, label %bb.ae
  ]

bb.i:                                             ; preds = %unicode_find_name.exit
  %i.m = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.n = add nsw i32 %i.m, 2                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !25   ; 2 uses
  %i.q = icmp sgt i32 %i.n, %i.p
end_hunk_1

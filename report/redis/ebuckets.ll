Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/ebuckets?download=true
inline.NumInlined: 125
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ebAdd:bb.a
  %i.aj = getelementptr i8, ptr %i.ae, i64 4
  %.val67.i = load i16, ptr %i.aj, align 4, !tbaa !26
  %i.ak = zext i16 %.val67.i to i64
  %i.al = shl nuw nsw i64 %i.ak, 32
  %i.am = zext i32 %.val66.i to i64
  %i.an = or disjoint i64 %i.al, %i.am
  %.val64.i = load i32, ptr %i.o, align 8, !tbaa !25
  %i.ao = getelementptr i8, ptr %i.o, i64 4       ; 2 uses
  %.val65.i = load i16, ptr %i.ao, align 4, !tbaa !26
  %i.ap = zext i16 %.val65.i to i64
  %i.aq = shl nuw nsw i64 %i.ap, 32
  %i.ar = zext i32 %.val64.i to i64
  %i.as = or disjoint i64 %i.aq, %i.ar
  %i.at = icmp samesign ugt i64 %i.an, %i.as
  br i1 %i.at, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g
  %i.au = and i16 %i.ag, 240
  %.not5876.not.i = icmp eq i16 %i.au, 0
  br i1 %.not5876.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.0.i69.i, ptr %i.av, align 8, !tbaa !28
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 6 ; 3 uses
  %i.ax = load i16, ptr %i.aw, align 2
  %i.ay = or i16 %i.ax, 2                         ; 2 uses
  store i16 %i.ay, ptr %i.aw, align 2
  %i.az = load i16, ptr %i.af, align 2
  %narrow60.i = add i16 %i.az, 8
  %i.ba = and i16 %narrow60.i, 248
  %i.bb = and i16 %i.ay, -249
  %i.bc = or disjoint i16 %i.ba, %i.bb
  store i16 %i.bc, ptr %i.aw, align 2
  %i.bd = load i16, ptr %i.af, align 2
  %i.be = and i16 %i.bd, -251
  store i16 %i.be, ptr %i.af, align 2
  %i.bf = icmp eq ptr %2, null
  %i.bg = ptrtoint ptr %2 to i64
  %i.bh = or i64 %i.bg, 1
  %i.bi = inttoptr i64 %i.bh to ptr
  %.0.i70.i = select i1 %i.bf, ptr null, ptr %i.bi
  store ptr %.0.i70.i, ptr %0, align 8, !tbaa !31
  br label %ebAddToList.exit.thread

bb.i:                                             ; preds = %.lr.ph.i
  %i.bj = add nuw nsw i32 %.078.i, 1              ; 2 uses
  %i.bk = lshr i16 %i.ca, 3
  %i.bl = and i16 %i.bk, 31
  %i.bm = zext nneg i16 %i.bl to i32
  %.not58.i = icmp samesign ult i32 %i.bj, %i.bm
  br i1 %.not58.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !99

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %.078.i = phi i32 [ %i.bj, %bb.i ], [ 1, %.preheader.i ]
  %.05177.i = phi ptr [ %i.bq, %bb.i ], [ %i.ae, %.preheader.i ] ; 2 uses
  %i.bn = load ptr, ptr %1, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.05177.i, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !28
  %i.bq = tail call ptr %i.bn(ptr noundef %i.bp) #8, !inline_history !98 ; 4 uses
  %.val62.i = load i32, ptr %i.bq, align 8, !tbaa !25
  %i.br = getelementptr i8, ptr %i.bq, i64 4
  %.val63.i = load i16, ptr %i.br, align 4, !tbaa !26
  %i.bs = zext i16 %.val63.i to i64
  %i.bt = shl nuw nsw i64 %i.bs, 32
  %i.bu = zext i32 %.val62.i to i64
  %i.bv = or disjoint i64 %i.bt, %i.bu
  %.val.i = load i32, ptr %i.o, align 8, !tbaa !25
  %.val61.i = load i16, ptr %i.ao, align 4, !tbaa !26
  %i.bw = zext i16 %.val61.i to i64
  %i.bx = shl nuw nsw i64 %i.bw, 32
  %i.by = zext i32 %.val.i to i64
  %i.bz = or disjoint i64 %i.bx, %i.by
  %.not57.i = icmp samesign ugt i64 %i.bv, %i.bz
  %i.ca = load i16, ptr %i.af, align 2            ; 4 uses
  br i1 %.not57.i, label %.thread72.i, label %bb.i

.thread72.i:                                      ; preds = %.lr.ph.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.05177.i, i64 8 ; 2 uses
  %narrow.i = add i16 %i.ca, 8
  %i.cc = and i16 %narrow.i, 248
  %i.cd = and i16 %i.ca, -249
  %i.ce = or disjoint i16 %i.cc, %i.cd
  store i16 %i.ce, ptr %i.af, align 2
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !28
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !28
  store ptr %2, ptr %i.cb, align 8, !tbaa !28
  br label %ebAddToList.exit.thread

._crit_edge.i:                                    ; preds = %bb.i, %.preheader.i
  %i.ch = phi i16 [ %i.ag, %.preheader.i ], [ %i.ca, %bb.i ] ; 2 uses
  %.051.lcssa.i = phi ptr [ %i.ae, %.preheader.i ], [ %i.bq, %bb.i ] ; 2 uses
  %narrow59.i = add i16 %i.ch, 8
  %i.ci = and i16 %narrow59.i, 248
  %i.cj = and i16 %i.ch, -249
  %i.ck = or disjoint i16 %i.ci, %i.cj
  store i16 %i.ck, ptr %i.af, align 2
  %i.cl = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr null, ptr %i.cl, align 8, !tbaa !28
  %i.cm = getelementptr inbounds nuw i8, ptr %i.o, i64 6 ; 2 uses
  %i.cn = load i16, ptr %i.cm, align 2
  %i.co = or i16 %i.cn, 5
  store i16 %i.co, ptr %i.cm, align 2
  %i.cp = getelementptr inbounds nuw i8, ptr %.051.lcssa.i, i64 6 ; 2 uses
  %i.cq = load i16, ptr %i.cp, align 2
  %i.cr = and i16 %i.cq, -6
  store i16 %i.cr, ptr %i.cp, align 2
  %i.cs = getelementptr inbounds nuw i8, ptr %.051.lcssa.i, i64 8
  store ptr %2, ptr %i.cs, align 8, !tbaa !28
  br label %ebAddToList.exit.thread

ebAddToList.exit:                                 ; preds = %bb.f
  %i.ct = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %.val = load i32, ptr %i.z, align 8, !tbaa !58
  %.not.i30 = icmp eq i32 %.val, 0
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = and i64 %i.cu, -2
  %i.cw = inttoptr i64 %i.cv to ptr
  %.0.i = select i1 %.not.i30, ptr %i.cw, ptr %i.ct ; 2 uses
  %i.cx = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #9 ; 5 uses
  store ptr %.0.i, ptr %i.cx, align 8, !tbaa !16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i32 16, ptr %i.cy, align 8, !tbaa !32
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  store i32 1, ptr %i.cz, align 4, !tbaa !36
  %i.da = load ptr, ptr %1, align 8, !tbaa !18
  %i.db = tail call ptr %i.da(ptr noundef %.0.i) #8, !inline_history !100 ; 5 uses
  %.val.i31 = load i32, ptr %i.db, align 8, !tbaa !25 ; 4 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 4
  %.val16.i = load i16, ptr %i.dc, align 4, !tbaa !26 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 6
  %i.de = load i16, ptr %i.dd, align 2
  %i.df = and i16 %i.de, 4
  %i.dg = icmp eq i16 %i.df, 0
  br i1 %i.dg, label %.lr.ph.i33, label %ebConvertListToRax.exit

.lr.ph.i33:                                       ; preds = %ebAddToList.exit, %.lr.ph.i33
  %.017.i = phi ptr [ %i.dk, %.lr.ph.i33 ], [ %i.db, %ebAddToList.exit ]
  %i.dh = load ptr, ptr %1, align 8, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !28
  %i.dk = tail call ptr %i.dh(ptr noundef %i.dj) #8, !inline_history !100 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 6
  %i.dm = load i16, ptr %i.dl, align 2
  %i.dn = and i16 %i.dm, 4
  %i.do = icmp eq i16 %i.dn, 0
  br i1 %i.do, label %.lr.ph.i33, label %ebConvertListToRax.exit, !llvm.loop !101

ebConvertListToRax.exit:                          ; preds = %.lr.ph.i33, %ebAddToList.exit
  %.0.lcssa.i = phi ptr [ %i.db, %ebAddToList.exit ], [ %i.dk, %.lr.ph.i33 ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8
  store ptr %i.cx, ptr %i.dp, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.dq = trunc i32 %.val.i31 to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !34
  %i.ds = lshr i32 %.val.i31, 8
  %i.dt = trunc i32 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !34
  %i.dv = lshr i32 %.val.i31, 16
  %i.dw = trunc i32 %i.dv to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !34
  %i.dy = lshr i32 %.val.i31, 24
  %i.dz = trunc nuw i32 %i.dy to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !34
  %i.eb = trunc i16 %.val16.i to i8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !34
  %i.ed = lshr i16 %.val16.i, 8
  %i.ee = trunc nuw i16 %i.ed to i8
  store i8 %i.ee, ptr %i.a, align 1, !tbaa !34
  %i.ef = tail call ptr @raxNewWithMetadata(i32 noundef 8, ptr noundef null) #8 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  store i64 16, ptr %i.eg, align 8, !tbaa !35
  %i.eh = call i32 @raxInsert(ptr noundef %i.ef, ptr noundef nonnull %i.a, i64 noundef 6, ptr noundef nonnull %i.cx, ptr noundef null) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  store ptr %i.ef, ptr %0, align 8, !tbaa !31
  %i.ei = call i32 @ebAddToRax(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3) ; 0 uses
  br label %ebAddToList.exit.thread

bb.j:                                             ; preds = %bb.c
  %i.ej = tail call i32 @ebAddToRax(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3) ; 0 uses
  br label %ebAddToList.exit.thread

ebAddToList.exit.thread:                          ; preds = %._crit_edge.i, %.thread72.i, %bb.h, %bb.e, %ebConvertListToRax.exit, %bb.j
  ret i32 0
}

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @ebExpire(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((32, 48)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %3 = alloca %struct.raxIterator, align 8        ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  store i64 281474976710656, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 9 uses
  store i64 0, ptr %i.c, align 8, !tbaa !21
  %i.d = load ptr, ptr %0, align 8, !tbaa !31     ; 6 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = and i64 %i.e, 1
  %.not38 = icmp eq i64 %i.f, 0
  br i1 %.not38, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %1, i64 16
  %.val54.i = load i32, ptr %i.g, align 8, !tbaa !58
  %.not.i.i = icmp eq i32 %.val54.i, 0
  %i.h = and i64 %i.e, -2
  %i.i = inttoptr i64 %i.h to ptr
  %.0.i.i = select i1 %.not.i.i, ptr %i.i, ptr %i.d ; 3 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !18
  %i.k = tail call ptr %i.j(ptr noundef %.0.i.i) #8, !inline_history !102 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.m = load i16, ptr %i.l, align 2
  %i.n = lshr i16 %i.m, 3                         ; 2 uses
  %i.o = and i16 %i.n, 31
  %i.p = zext nneg i16 %i.o to i32
  %.not65.i = icmp eq ptr %.0.i.i, null
  br i1 %.not65.i, label %.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %.lr.ph.i
  %.04367.i73 = phi ptr [ null, %.lr.ph.i ], [ %.04367.i72, %bb.i ] ; 6 uses
  %.04367.i = phi ptr [ %.0.i.i, %.lr.ph.i ], [ %i.ag, %bb.i ] ; 6 uses
  %.04566.i = phi i32 [ 0, %.lr.ph.i ], [ %i.aq, %bb.i ] ; 4 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !18
  %i.u = tail call ptr %i.t(ptr noundef nonnull %.04367.i) #8, !inline_history !102 ; 7 uses
  %.val.i = load i32, ptr %i.u, align 8, !tbaa !25
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %.val53.i = load i16, ptr %i.v, align 4, !tbaa !26
  %i.w = zext i16 %.val53.i to i64
  %i.x = shl nuw nsw i64 %i.w, 32
  %i.y = zext i32 %.val.i to i64
  %i.z = or disjoint i64 %i.x, %i.y
  %i.aa = load i64, ptr %i.q, align 8, !tbaa !27
  %i.ab = icmp ugt i64 %i.z, %i.aa
  br i1 %i.ab, label %.thread.i.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !21
  %i.ad = load i64, ptr %i.r, align 8, !tbaa !22
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %.thread.i.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !28 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 6 ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = or i16 %i.ai, 256
  store i16 %i.aj, ptr %i.ah, align 2
  %i.ak = load ptr, ptr %2, align 8, !tbaa !29
  %i.al = load ptr, ptr %i.s, align 8, !tbaa !30
  %i.am = tail call i32 %i.ak(ptr noundef nonnull %.04367.i, ptr noundef %i.al) #8, !inline_history !102
  switch i32 %i.am, label %bb.i [
    i32 2, label %bb.g
    i32 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 6 ; 2 uses
  store ptr %.04367.i73, ptr %i.a, align 8
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = and i16 %i.ao, -257
  store i16 %i.ap, ptr %i.an, align 2
  br label %.thread.i

bb.h:                                             ; preds = %bb.f
  store ptr %.04367.i73, ptr %i.af, align 8, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.04367.i72 = phi ptr [ %.04367.i, %bb.h ], [ %.04367.i73, %bb.f ] ; 2 uses
  %i.aq = add i32 %.04566.i, 1                    ; 2 uses
  %i.ar = load i64, ptr %i.c, align 8, !tbaa !21
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.c, align 8, !tbaa !21
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %.thread.i.loopexit, label %bb.d

.thread.i.loopexit:                               ; preds = %bb.d, %bb.e, %bb.i
  %.04367.i74 = phi ptr [ %.04367.i73, %bb.d ], [ %.04367.i73, %bb.e ], [ %.04367.i72, %bb.i ] ; 2 uses
  %.04562.i.ph = phi i32 [ %.04566.i, %bb.d ], [ %.04566.i, %bb.e ], [ %i.aq, %bb.i ]
  %.04360.i.ph = phi ptr [ %.04367.i, %bb.d ], [ %.04367.i, %bb.e ], [ null, %bb.i ]
  store ptr %.04367.i74, ptr %i.a, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.i.loopexit, %bb.g, %bb.c
  %.pr102 = phi ptr [ %.04367.i73, %bb.g ], [ null, %bb.c ], [ %.04367.i74, %.thread.i.loopexit ]
  %.04562.i = phi i32 [ %.04566.i, %bb.g ], [ 0, %bb.c ], [ %.04562.i.ph, %.thread.i.loopexit ] ; 2 uses
  %.04360.i = phi ptr [ %.04367.i, %bb.g ], [ null, %bb.c ], [ %.04360.i.ph, %.thread.i.loopexit ] ; 2 uses
  %.142.i = phi ptr [ %i.u, %bb.g ], [ %i.k, %bb.c ], [ %i.u, %.thread.i.loopexit ] ; 3 uses
  %i.at = icmp eq i32 %.04562.i, %i.p
  br i1 %i.at, label %ebListExpire.exit, label %bb.j

bb.j:                                             ; preds = %.thread.i
  %i.au = getelementptr inbounds nuw i8, ptr %.142.i, i64 6 ; 2 uses
  %i.av = trunc i32 %.04562.i to i16
  %i.aw = sub i16 %i.n, %i.av
  %i.ax = load i16, ptr %i.au, align 2
  %i.ay = shl i16 %i.aw, 3
  %i.az = and i16 %i.ay, 248
  %i.ba = and i16 %i.ax, -251
  %i.bb = or disjoint i16 %i.az, %i.ba
  %i.bc = or disjoint i16 %i.bb, 2
  store i16 %i.bc, ptr %i.au, align 2
  %.142.val.i = load i32, ptr %.142.i, align 8, !tbaa !25
  %i.bd = getelementptr i8, ptr %.142.i, i64 4
  %.142.val52.i = load i16, ptr %i.bd, align 4, !tbaa !26
  %i.be = zext i16 %.142.val52.i to i64
  %i.bf = shl nuw nsw i64 %i.be, 32
  %i.bg = zext i32 %.142.val.i to i64
  %i.bh = or disjoint i64 %i.bf, %i.bg
  %i.bi = icmp eq ptr %.04360.i, null
  %i.bj = ptrtoint ptr %.04360.i to i64
  %i.bk = or i64 %i.bj, 1
  %i.bl = inttoptr i64 %i.bk to ptr
  %.0.i55.i = select i1 %i.bi, ptr null, ptr %i.bl
  br label %ebListExpire.exit

ebListExpire.exit:                                ; preds = %.thread.i, %bb.j
  %.0.i55.sink.i = phi ptr [ %.0.i55.i, %bb.j ], [ null, %.thread.i ]
  %.sink.i = phi i64 [ %i.bh, %bb.j ], [ 281474976710656, %.thread.i ]
  store ptr %.0.i55.sink.i, ptr %0, align 8, !tbaa !31
  store i64 %.sink.i, ptr %i.b, align 8, !tbaa !33
  br label %bb.z

bb.k:                                             ; preds = %bb.b
  call void @raxStart(ptr noundef nonnull %3, ptr noundef nonnull %i.d) #8
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !27
  %i.bo = load i64, ptr %i.c, align 8, !tbaa !21
  %i.bp = call i32 @raxSeek(ptr noundef nonnull %3, ptr noundef nonnull @.str.3, ptr noundef null, i64 noundef 0) #8 ; 0 uses
  %i.bq = call i32 @raxNext(ptr noundef nonnull %3) #8
  %.not3976 = icmp eq i32 %i.bq, 0
  br i1 %.not3976, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.y
  %i.bw = load ptr, ptr %i.br, align 8, !tbaa !51 ; 6 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !34
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !34
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.by, 16
  %i.cd = shl nuw nsw i64 %i.cb, 8
  %i.ce = or disjoint i64 %i.cd, %i.cc
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !34
  %i.ch = zext i8 %i.cg to i64
  %i.ci = or disjoint i64 %i.ce, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 3
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !34
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !34
  %i.co = zext i8 %i.cn to i64
  %i.cp = shl nuw nsw i64 %i.ci, 24
  %i.cq = shl nuw nsw i64 %i.cl, 16
  %i.cr = shl nuw nsw i64 %i.co, 8
  %i.cs = or disjoint i64 %i.cq, %i.cr
  %i.ct = or disjoint i64 %i.cp, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bw, i64 5
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !34
  %i.cw = zext i8 %i.cv to i64
  %i.cx = or disjoint i64 %i.ct, %i.cw
  %i.cy = load ptr, ptr %i.bs, align 8, !tbaa !43 ; 10 uses
  %.not40 = icmp ult i64 %i.cx, %i.bn
  br i1 %.not40, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cz = load ptr, ptr %1, align 8, !tbaa !18
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !16
  %i.db = call ptr %i.cz(ptr noundef %i.da) #8    ; 2 uses
  %.val43 = load i32, ptr %i.db, align 8, !tbaa !25
  %i.dc = getelementptr i8, ptr %i.db, i64 4
  %.val44 = load i16, ptr %i.dc, align 4, !tbaa !26
  %i.dd = zext i16 %.val44 to i64
  %i.de = shl nuw nsw i64 %i.dd, 32
  %i.df = zext i32 %.val43 to i64
  %i.dg = or disjoint i64 %i.de, %i.df
  store i64 %i.dg, ptr %i.b, align 8, !tbaa !33
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 12 ; 3 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !36 ; 3 uses
  switch i32 %i.di, label %.lr.ph120.i [
    i32 1, label %ebSegExpire.exit
    i32 0, label %ebSegExpire.exit.thread49
  ]

.lr.ph120.i:                                      ; preds = %bb.n
  %i.dj = load ptr, ptr %i.cy, align 8, !tbaa !16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %.promoted80 = load ptr, ptr %i.a, align 8
  br label %bb.o

bb.o:                                             ; preds = %.thread99.i, %.lr.ph120.i
  %.185111.i77.lcssa83 = phi ptr [ %.promoted80, %.lr.ph120.i ], [ %.185111.i77.lcssa81, %.thread99.i ] ; 2 uses
  %.080119.i = phi i32 [ 0, %.lr.ph120.i ], [ %i.eo, %.thread99.i ] ; 2 uses
  %.084118.i = phi ptr [ %i.dj, %.lr.ph120.i ], [ %.5101.i, %.thread99.i ] ; 3 uses
  %i.dl = load ptr, ptr %1, align 8, !tbaa !18
  %i.dm = call ptr %i.dl(ptr noundef %.084118.i) #8, !inline_history !103
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 6
  %i.do = load i16, ptr %i.dn, align 2
  %i.dp = lshr i16 %i.do, 3                       ; 2 uses
  %i.dq = and i16 %i.dp, 31                       ; 2 uses
  %i.dr = zext nneg i16 %i.dq to i32              ; 2 uses
  %.not125.i = icmp eq i16 %i.dq, 0
  br i1 %.not125.i, label %.critedge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.o
  %.pre.i = load i64, ptr %i.c, align 8, !tbaa !21
  br label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %bb.s, %.lr.ph.preheader.i
  %.185111.i78 = phi ptr [ %.185111.i77, %bb.s ], [ %.185111.i77.lcssa83, %.lr.ph.preheader.i ] ; 4 uses
  %i.ds = phi i64 [ %i.ej, %bb.s ], [ %.pre.i, %.lr.ph.preheader.i ]
  %.079112.i = phi i32 [ %i.em, %bb.s ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.185111.i = phi ptr [ %i.dy, %bb.s ], [ %.084118.i, %.lr.ph.preheader.i ] ; 5 uses
  %i.dt = load i64, ptr %i.bt, align 8, !tbaa !22
  %i.du = icmp ult i64 %i.ds, %i.dt
  br i1 %i.du, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %.lr.ph.i45
  %i.dv = load ptr, ptr %1, align 8, !tbaa !18
  %i.dw = call ptr %i.dv(ptr noundef %.185111.i) #8, !inline_history !103 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !28 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 6 ; 2 uses
  %i.ea = load i16, ptr %i.dz, align 2
  %i.eb = or i16 %i.ea, 256
  store i16 %i.eb, ptr %i.dz, align 2
  %i.ec = load ptr, ptr %2, align 8, !tbaa !29
  %i.ed = load ptr, ptr %i.bu, align 8, !tbaa !30
  %i.ee = call i32 %i.ec(ptr noundef %.185111.i, ptr noundef %i.ed) #8, !inline_history !103
  switch i32 %i.ee, label %bb.s [
    i32 2, label %bb.r
    i32 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  store ptr %.185111.i78, ptr %i.dx, align 8, !tbaa !28
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 6 ; 2 uses
  %i.eg = load i16, ptr %i.ef, align 2
  %i.eh = and i16 %i.eg, -257
  store i16 %i.eh, ptr %i.ef, align 2
  br label %.critedge.i

bb.s:                                             ; preds = %bb.q, %bb.p
  %.185111.i77 = phi ptr [ %.185111.i, %bb.q ], [ %.185111.i78, %bb.p ] ; 2 uses
  %i.ei = load i64, ptr %i.c, align 8, !tbaa !21
  %i.ej = add i64 %i.ei, 1                        ; 2 uses
  store i64 %i.ej, ptr %i.c, align 8, !tbaa !21
  %i.ek = load i32, ptr %i.dk, align 8, !tbaa !32
  %i.el = add i32 %i.ek, -1
  store i32 %i.el, ptr %i.dk, align 8, !tbaa !32
  %i.em = add nuw nsw i32 %.079112.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.em, %i.dr
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %.lr.ph.i45, !llvm.loop !104

.critedge.i:                                      ; preds = %.lr.ph.i45, %bb.r, %bb.o
  %.185111.i77.lcssa82 = phi ptr [ %.185111.i78, %bb.r ], [ %.185111.i77.lcssa83, %bb.o ], [ %.185111.i78, %.lr.ph.i45 ] ; 2 uses
  %.185107.i = phi ptr [ %.185111.i, %bb.r ], [ %.084118.i, %bb.o ], [ %.185111.i, %.lr.ph.i45 ] ; 3 uses
  %.079105.i = phi i32 [ %.079112.i, %bb.r ], [ 0, %bb.o ], [ %.079112.i, %.lr.ph.i45 ] ; 2 uses
  %i.en = icmp eq i32 %.079105.i, %i.dr
  br i1 %i.en, label %.critedge.thread.i, label %bb.u

.critedge.thread.i:                               ; preds = %bb.s, %.critedge.i
  %.185111.i77.lcssa81 = phi ptr [ %.185111.i77.lcssa82, %.critedge.i ], [ %.185111.i77, %bb.s ] ; 2 uses
  %.185107142.i = phi ptr [ %.185107.i, %.critedge.i ], [ %i.dy, %bb.s ] ; 3 uses
  %i.eo = add nuw i32 %.080119.i, 1               ; 3 uses
  %i.ep = icmp ult i32 %i.eo, %i.di
  br i1 %i.ep, label %bb.t, label %.thread99.i

bb.t:                                             ; preds = %.critedge.thread.i
  %i.eq = load ptr, ptr %.185107142.i, align 8, !tbaa !48 ; 3 uses
  call void @zfree(ptr noundef nonnull %.185107142.i) #8
  %i.er = load i32, ptr %i.dh, align 4, !tbaa !36
  %i.es = add i32 %i.er, -1
  store i32 %i.es, ptr %i.dh, align 4, !tbaa !36
  store ptr %i.eq, ptr %i.cy, align 8, !tbaa !16
  %i.et = load ptr, ptr %1, align 8, !tbaa !18
  %i.eu = call ptr %i.et(ptr noundef %i.eq) #8, !inline_history !103
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 6 ; 2 uses
  %i.ew = load i16, ptr %i.ev, align 2
  %i.ex = or i16 %i.ew, 2
  store i16 %i.ex, ptr %i.ev, align 2
  br label %.thread99.i

bb.u:                                             ; preds = %.critedge.i
  store ptr %.185111.i77.lcssa82, ptr %i.a, align 8
  store ptr %.185107.i, ptr %i.cy, align 8, !tbaa !16
  %i.ey = load ptr, ptr %1, align 8, !tbaa !18
  %i.ez = call ptr %i.ey(ptr noundef %.185107.i) #8, !inline_history !103 ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 6 ; 3 uses
  %i.fb = trunc i32 %.079105.i to i16
  %i.fc = sub i16 %i.dp, %i.fb
  %i.fd = load i16, ptr %i.fa, align 2
  %i.fe = shl i16 %i.fc, 3
  %i.ff = and i16 %i.fe, 248
  %i.fg = and i16 %i.fd, -251
  %i.fh = or disjoint i16 %i.ff, %i.fg
  %i.fi = or disjoint i16 %i.fh, 2
  store i16 %i.fi, ptr %i.fa, align 2
  %.val.i46 = load i32, ptr %i.ez, align 8, !tbaa !25
  %i.fj = getelementptr i8, ptr %i.ez, i64 4
  %.val95.i = load i16, ptr %i.fj, align 4, !tbaa !26
  %i.fk = zext i16 %.val95.i to i64
  %i.fl = shl nuw nsw i64 %i.fk, 32
  %i.fm = zext i32 %.val.i46 to i64
  %i.fn = or disjoint i64 %i.fl, %i.fm
  store i64 %i.fn, ptr %i.b, align 8, !tbaa !33
  %.not.i47 = icmp eq i32 %.080119.i, 0
  br i1 %.not.i47, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fo = load i16, ptr %i.fa, align 2            ; 2 uses
  %i.fp = lshr i16 %i.fo, 3
  %i.fq = and i16 %i.fp, 31                       ; 2 uses
  %i.fr = icmp samesign ugt i16 %i.fq, 1
  br i1 %i.fr, label %.lr.ph123.preheader.i, label %._crit_edge.i

.lr.ph123.preheader.i:                            ; preds = %bb.v
  %i.fs = zext nneg i16 %i.fq to i32
  %i.ft = add nsw i32 %i.fs, -2
  br label %.lr.ph123.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph123.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ga, i64 6
  %.pre136.i = load i16, ptr %.phi.trans.insert.i, align 2
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.v
  %i.fu = phi i16 [ %i.fo, %bb.v ], [ %.pre136.i, %._crit_edge.loopexit.i ]
  %.078.lcssa.i = phi ptr [ %i.ez, %bb.v ], [ %i.ga, %._crit_edge.loopexit.i ]
  %i.fv = and i16 %i.fu, 4
  %.not91.i = icmp eq i16 %i.fv, 0
  %i.fw = getelementptr inbounds nuw i8, ptr %.078.lcssa.i, i64 8 ; 2 uses
  br i1 %.not91.i, label %bb.x, label %bb.w

.lr.ph123.i:                                      ; preds = %.lr.ph123.i, %.lr.ph123.preheader.i
  %.077122.i = phi i32 [ %i.gb, %.lr.ph123.i ], [ 0, %.lr.ph123.preheader.i ] ; 2 uses
  %.078121.i = phi ptr [ %i.ga, %.lr.ph123.i ], [ %i.ez, %.lr.ph123.preheader.i ]
  %i.fx = load ptr, ptr %1, align 8, !tbaa !18
  %i.fy = getelementptr inbounds nuw i8, ptr %.078121.i, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !28
  %i.ga = call ptr %i.fx(ptr noundef %i.fz) #8, !inline_history !103 ; 3 uses
  %i.gb = add nuw nsw i32 %.077122.i, 1
  %exitcond135.not.i = icmp eq i32 %.077122.i, %i.ft
  br i1 %exitcond135.not.i, label %._crit_edge.loopexit.i, label %.lr.ph123.i, !llvm.loop !105

bb.w:                                             ; preds = %._crit_edge.i
  store ptr %i.cy, ptr %i.fw, align 8, !tbaa !28
  br label %.thread

bb.x:                                             ; preds = %._crit_edge.i
  %i.gc = load ptr, ptr %i.fw, align 8, !tbaa !28
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store ptr %i.cy, ptr %i.gd, align 8, !tbaa !49
  br label %.thread

.thread99.i:                                      ; preds = %bb.t, %.critedge.thread.i
  %.5101.i = phi ptr [ %i.eq, %bb.t ], [ %.185107142.i, %.critedge.thread.i ]
  %exitcond134.not.i = icmp eq i32 %i.eo, %i.di
  br i1 %exitcond134.not.i, label %ebSegExpire.exit.thread49.loopexit, label %bb.o, !llvm.loop !106

ebSegExpire.exit.thread49.loopexit:               ; preds = %.thread99.i
  store ptr %.185111.i77.lcssa81, ptr %i.a, align 8
  br label %ebSegExpire.exit.thread49

ebSegExpire.exit.thread49:                        ; preds = %ebSegExpire.exit.thread49.loopexit, %bb.n
  call void @zfree(ptr noundef nonnull %i.cy) #8
  br label %bb.y

ebSegExpire.exit:                                 ; preds = %bb.n
  %i.ge = call i32 @ebSingleSegExpire(ptr noundef nonnull %i.cy, ptr noundef readonly %1, ptr noundef %2, ptr noundef nonnull %i.a)
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %.thread, label %bb.y

bb.y:                                             ; preds = %ebSegExpire.exit, %ebSegExpire.exit.thread49
  %i.gg = load ptr, ptr %i.bv, align 8, !tbaa !53
  %i.gh = load ptr, ptr %i.br, align 8, !tbaa !51
  %i.gi = call i32 @raxRemove(ptr noundef %i.gg, ptr noundef %i.gh, i64 noundef 6, ptr noundef null) #8 ; 0 uses
  %i.gj = call i32 @raxSeek(ptr noundef nonnull %3, ptr noundef nonnull @.str.3, ptr noundef null, i64 noundef 0) #8 ; 0 uses
  %i.gk = call i32 @raxNext(ptr noundef nonnull %3) #8
  %.not39 = icmp eq i32 %i.gk, 0
  br i1 %.not39, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.y, %ebSegExpire.exit, %bb.k, %bb.w, %bb.x, %bb.u, %bb.m
  call void @raxStop(ptr noundef nonnull %3) #8
  %i.gl = load i64, ptr %i.c, align 8, !tbaa !21
  %.neg = sub i64 %i.bo, %i.gl
  %i.gm = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !35
  %i.go = add i64 %.neg, %i.gn
  store i64 %i.go, ptr %i.gm, align 8, !tbaa !35
  %i.gp = call i32 @raxEOF(ptr noundef nonnull %3) #8
  %i.gq = icmp ne i32 %i.gp, 0
  %i.gr = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.gs = icmp eq ptr %i.gr, null
  %or.cond = select i1 %i.gq, i1 %i.gs, i1 false
  br i1 %or.cond, label %.thread109, label %bb.z

.thread109:                                       ; preds = %.thread
  call void @raxFree(ptr noundef nonnull %i.d) #8
  store ptr null, ptr %0, align 8, !tbaa !31
  br label %.loopexit

bb.z:                                             ; preds = %.thread, %ebListExpire.exit
  %.pr = phi ptr [ %i.gr, %.thread ], [ %.pr102, %ebListExpire.exit ] ; 2 uses
  %.not4179 = icmp eq ptr %.pr, null
  br i1 %.not4179, label %.loopexit, label %.lr.ph80

.lr.ph80:                                         ; preds = %bb.z, %bb.ab
  %i.gt = phi ptr [ %i.gx, %bb.ab ], [ %.pr, %bb.z ] ; 2 uses
  %i.gu = load ptr, ptr %1, align 8, !tbaa !18
  %i.gv = call ptr %i.gu(ptr noundef nonnull %i.gt) #8 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !28 ; 2 uses
  %.val = load i32, ptr %i.gv, align 8, !tbaa !25
  %i.gy = getelementptr i8, ptr %i.gv, i64 4
  %.val42 = load i16, ptr %i.gy, align 4, !tbaa !26
  %i.gz = zext i16 %.val42 to i64
  %i.ha = shl nuw nsw i64 %i.gz, 32
  %i.hb = zext i32 %.val to i64
  %i.hc = or disjoint i64 %i.ha, %i.hb            ; 3 uses
  %i.hd = load i64, ptr %i.b, align 8, !tbaa !33
  %i.he = icmp ult i64 %i.hc, %i.hd
  br i1 %i.he, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph80
  store i64 %i.hc, ptr %i.b, align 8, !tbaa !33
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph80
  %i.hf = call i32 @ebAdd(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.gt, i64 noundef %i.hc) ; 0 uses
  %.not41 = icmp eq ptr %i.gx, null
  br i1 %.not41, label %.loopexit, label %.lr.ph80, !llvm.loop !107

.loopexit:                                        ; preds = %bb.ab, %bb.z, %.thread109, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare i32 @raxEOF(ptr noundef) local_unnamed_addr #2

declare void @raxFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @ebExpireDryRun(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.raxIterator, align 8        ; 10 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit65, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not49 = icmp eq i64 %i.b, 0
  br i1 %.not49, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !18
  %i.d = getelementptr i8, ptr %1, i64 16
  %.val61 = load i32, ptr %i.d, align 8, !tbaa !58
  %.not.i = icmp eq i32 %.val61, 0
  %i.e = and i64 %i.a, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.0.i = select i1 %.not.i, ptr %i.f, ptr %0
  %i.g = tail call ptr %i.c(ptr noundef %.0.i) #8 ; 3 uses
  %.040.val66 = load i32, ptr %i.g, align 8, !tbaa !25
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %.040.val6067 = load i16, ptr %i.h, align 4, !tbaa !26
  %i.i = zext i16 %.040.val6067 to i64
  %i.j = shl nuw nsw i64 %i.i, 32
  %i.k = zext i32 %.040.val66 to i64
  %i.l = or disjoint i64 %i.j, %i.k
  %.not5668 = icmp ult i64 %i.l, %2
  br i1 %.not5668, label %.lr.ph, label %.loopexit65

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.04070 = phi ptr [ %i.t, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %.04169 = phi i64 [ %i.m, %bb.d ], [ 0, %bb.c ]
  %i.m = add i64 %.04169, 1                       ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.04070, i64 6
  %i.o = load i16, ptr %i.n, align 2
  %i.p = and i16 %i.o, 1
  %.not57 = icmp eq i16 %i.p, 0
  br i1 %.not57, label %bb.d, label %.loopexit65

bb.d:                                             ; preds = %.lr.ph
  %i.q = load ptr, ptr %1, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.04070, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28
  %i.t = tail call ptr %i.q(ptr noundef %i.s) #8  ; 3 uses
  %.040.val = load i32, ptr %i.t, align 8, !tbaa !25
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %.040.val60 = load i16, ptr %i.u, align 4, !tbaa !26
  %i.v = zext i16 %.040.val60 to i64
  %i.w = shl nuw nsw i64 %i.v, 32
  %i.x = zext i32 %.040.val to i64
  %i.y = or disjoint i64 %i.w, %i.x
  %.not56 = icmp ult i64 %i.y, %2
  br i1 %.not56, label %.lr.ph, label %.loopexit65

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @raxStart(ptr noundef nonnull %3, ptr noundef nonnull %0) #8
  %i.z = call i32 @raxSeek(ptr noundef nonnull %3, ptr noundef nonnull @.str.3, ptr noundef null, i64 noundef 0) #8 ; 0 uses
  %i.aa = call i32 @raxNext(ptr noundef nonnull %3) #8
  %.not50 = icmp eq i32 %i.aa, 0
  br i1 %.not50, label %bb.f, label %bb.g, !prof !59

bb.f:                                             ; preds = %bb.e
  call void @_serverAssert(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 1590) #8
  call void @abort() #10
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = call i32 @raxNext(ptr noundef nonnull %3) #8
  %.not5173 = icmp eq i32 %i.ae, 0
  br i1 %.not5173, label %.thread, label %.lr.ph76

.lr.ph76:                                         ; preds = %bb.g, %bb.h
  %.03875 = phi ptr [ %i.bh, %bb.h ], [ %i.ac, %bb.g ] ; 2 uses
  %.14274 = phi i64 [ %i.bl, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !51 ; 6 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !34
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !34
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ah, 16
  %i.am = shl nuw nsw i64 %i.ak, 8
  %i.an = or disjoint i64 %i.am, %i.al
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !34
  %i.aq = zext i8 %i.ap to i64
  %i.ar = or disjoint i64 %i.an, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !34
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !34
  %i.ax = zext i8 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ar, 24
  %i.az = shl nuw nsw i64 %i.au, 16
  %i.ba = shl nuw nsw i64 %i.ax, 8
  %i.bb = or disjoint i64 %i.az, %i.ba
  %i.bc = or disjoint i64 %i.ay, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 5
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !34
  %i.bf = zext i8 %i.be to i64
  %i.bg = or disjoint i64 %i.bc, %i.bf
  %.not52 = icmp ult i64 %i.bg, %2
  br i1 %.not52, label %bb.h, label %.thread

bb.h:                                             ; preds = %.lr.ph76
  %i.bh = load ptr, ptr %i.ab, align 8, !tbaa !43 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.03875, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !32
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add i64 %.14274, %i.bk                  ; 2 uses
  %i.bm = call i32 @raxNext(ptr noundef nonnull %3) #8
  %.not51 = icmp eq i32 %i.bm, 0
  br i1 %.not51, label %.thread, label %.lr.ph76

.thread:                                          ; preds = %bb.h, %.lr.ph76, %bb.g
end_hunk_0

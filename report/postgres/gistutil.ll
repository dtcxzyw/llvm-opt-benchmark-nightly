Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/gistutil?download=true
inline.NumInlined: 85
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@gistgetadjusted:bb.a
bb.q:                                             ; preds = %bb.v, %.lr.ph.i.i
  %.pre10.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %.pre11.i, %bb.v ] ; 2 uses
  %i.ed = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %i.et, %bb.v ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.v ] ; 7 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.ef = load i8, ptr %i.ee, align 1, !range !8, !noundef !9
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  store i64 0, ptr %i.eh, align 8
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i
  %i.ej = load i64, ptr %i.ei, align 8            ; 2 uses
  store i64 %i.ej, ptr %4, align 8
  store ptr %0, ptr %i.dw, align 8
  store ptr null, ptr %i.dx, align 8
  store i16 0, ptr %i.dy, align 8
  store i8 0, ptr %i.dz, align 2
  %i.ek = getelementptr inbounds nuw [48 x i8], ptr %i.ea, i64 %indvars.iv.i.i ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load i32, ptr %i.el, align 8
  %.not.i.i41 = icmp eq i32 %i.em, 0
  br i1 %.not.i.i41, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.i.i
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = call i64 @FunctionCall1Coll(ptr noundef nonnull %i.ek, i32 noundef %i.eo, i64 noundef %i.ec) #11
  %i.eq = inttoptr i64 %i.ep to ptr
  %.pre.i.i = load i64, ptr %i.eq, align 8
  %.pre.pre.i = load ptr, ptr %i.h, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pre.i = phi ptr [ %.pre.pre.i, %bb.t ], [ %.pre10.i, %bb.s ] ; 2 uses
  %i.er = phi i64 [ %.pre.i.i, %bb.t ], [ %i.ej, %bb.s ]
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  store i64 %i.er, ptr %i.es, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.pre11.i = phi ptr [ %.pre.i, %bb.u ], [ %.pre10.i, %bb.r ]
  %i.et = phi ptr [ %.pre.i, %bb.u ], [ %i.ed, %bb.r ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 10
  %i.ev = load i16, ptr %i.eu, align 2
  %i.ew = sext i16 %i.ev to i64
  %i.ex = icmp slt i64 %indvars.iv.next.i.i, %i.ew
  br i1 %i.ex, label %bb.q, label %gistFormTuple.exit, !llvm.loop !0

gistFormTuple.exit:                               ; preds = %bb.v, %bb.p
  %.in.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ey = load ptr, ptr %.in.i, align 8
  %i.ez = call ptr @index_form_tuple(ptr noundef %i.ey, ptr noundef nonnull %i.a, ptr noundef nonnull %i.g) #11 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  store i16 -1, ptr %i.fa, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.ez, ptr noundef nonnull align 2 dereferenceable(6) %1, i64 6, i1 false)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %gistDeCompressAtt.exit, %gistDeCompressAtt.exit40, %gistFormTuple.exit, %._crit_edge
  %.030 = phi ptr [ %i.ez, %gistFormTuple.exit ], [ null, %._crit_edge ], [ null, %gistDeCompressAtt.exit40 ], [ null, %gistDeCompressAtt.exit ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret ptr %.030
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @gistchoose(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca [32 x float], align 16            ; 5 uses
  %4 = alloca %struct.GISTENTRY, align 8          ; 11 uses
  %5 = alloca [32 x %struct.GISTENTRY], align 16  ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.g = load i16, ptr %i.f, align 2
  %i.h = icmp sgt i16 %i.g, 0
  br i1 %i.h, label %.lr.ph.i, label %gistDeCompressAtt.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4648
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 13864
  br label %bb.b

bb.b:                                             ; preds = %gistdentryinit.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %gistdentryinit.exit.i ] ; 5 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i ; 2 uses
  %i.n = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.o = call fastcc i64 @index_getattr(ptr noundef %2, i32 noundef %i.n, ptr noundef %i.l, ptr noundef nonnull %i.m)
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %5, i64 %indvars.iv.i ; 9 uses
  %i.q = load i8, ptr %i.m, align 1, !range !8, !noundef !9
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 26 ; 2 uses
  br i1 %i.r, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.o, ptr %i.p, align 16
  store ptr %0, ptr %i.s, align 8
  store ptr null, ptr %i.t, align 16
  store i16 0, ptr %i.u, align 8
  store i8 0, ptr %i.v, align 2
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %indvars.iv.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 8
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %gistdentryinit.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = ptrtoint ptr %i.p to i64
  %i.ac = call i64 @FunctionCall1Coll(ptr noundef nonnull %i.w, i32 noundef %i.aa, i64 noundef %i.ab) #11
  %i.ad = inttoptr i64 %i.ac to ptr               ; 6 uses
  %.not39.i.i = icmp eq ptr %i.p, %i.ad
  br i1 %.not39.i.i, label %gistdentryinit.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = load i64, ptr %i.ad, align 8
  store i64 %i.ae, ptr %i.p, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  store ptr %i.ag, ptr %i.s, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  store ptr %i.ai, ptr %i.t, align 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ak = load i16, ptr %i.aj, align 8
  store i16 %i.ak, ptr %i.u, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 26
  %i.am = load i8, ptr %i.al, align 2, !range !8, !noundef !9
  br label %.sink.split.i.i

bb.f:                                             ; preds = %bb.b
  store i64 0, ptr %i.p, align 16
  store ptr %0, ptr %i.s, align 8
  store ptr null, ptr %i.t, align 16
  store i16 0, ptr %i.u, align 8
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i = phi i8 [ %i.am, %bb.e ], [ 0, %bb.f ]
  store i8 %.sink.i.i, ptr %i.v, align 2
  br label %gistdentryinit.exit.i

gistdentryinit.exit.i:                            ; preds = %.sink.split.i.i, %bb.d, %bb.c
  %i.an = load ptr, ptr %i.d, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 10
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = sext i16 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next.i, %i.aq
  br i1 %i.ar, label %bb.b, label %gistDeCompressAtt.exit, !llvm.loop !2

gistDeCompressAtt.exit:                           ; preds = %gistdentryinit.exit.i, %bb.a
  store float -1.000000e+00, ptr %i.b, align 16
  %i.as = getelementptr i8, ptr %1, i64 12
  %.val = load i16, ptr %i.as, align 4            ; 2 uses
  %i.at = icmp ult i16 %.val, 25
  %i.au = zext i16 %.val to i32
  %i.av = add nuw nsw i32 %i.au, 262120
  %i.aw = lshr i32 %i.av, 2
  %i.ax = trunc i32 %i.aw to i16                  ; 2 uses
  %.not106114 = icmp eq i16 %i.ax, 0
  %.not106 = select i1 %i.at, i1 true, i1 %.not106114
  br i1 %.not106, label %._crit_edge, label %.lr.ph110

.lr.ph110:                                        ; preds = %gistDeCompressAtt.exit
  %i.ay = getelementptr i8, ptr %1, i64 20
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 26 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 4648
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 13864 ; 2 uses
  %i.bg = ptrtoint ptr %4 to i64                  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 6184
  %i.bi = ptrtoint ptr %i.a to i64
  %umax = add nuw nsw i16 %i.ax, 1
  %wide.trip.count = zext i16 %umax to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph110, %bb.al
  %indvars.iv115 = phi i64 [ 1, %.lr.ph110 ], [ %indvars.iv.next116, %bb.al ] ; 5 uses
  %.053109 = phi i32 [ -1, %.lr.ph110 ], [ %.9.ph, %bb.al ] ; 2 uses
  %.058107 = phi i16 [ 1, %.lr.ph110 ], [ %.563, %bb.al ] ; 2 uses
  %i.bj = getelementptr [4 x i8], ptr %i.ay, i64 %indvars.iv115
  %.val76 = load i32, ptr %i.bj, align 4
  %i.bk = and i32 %.val76, 32767
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %i.bl ; 4 uses
  %i.bn = load ptr, ptr %i.d, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 10
  %i.bp = load i16, ptr %i.bo, align 2            ; 2 uses
  %i.bq = icmp sgt i16 %i.bp, 0
  br i1 %i.bq, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.g
  %i.br = getelementptr i8, ptr %i.bm, i64 6
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %6 = trunc nuw i64 %indvars.iv115 to i16        ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %select.unfold
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %select.unfold ] ; 13 uses
  %.05097 = phi i32 [ 0, %.lr.ph ], [ %i.bt, %select.unfold ]
  %.05196 = phi i1 [ true, %.lr.ph ], [ %spec.select, %select.unfold ]
  %.15495 = phi i32 [ %.053109, %.lr.ph ], [ %.356, %select.unfold ] ; 2 uses
  %.15994 = phi i16 [ %.058107, %.lr.ph ], [ %.361, %select.unfold ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.bt = add nuw nsw i32 %.05097, 1              ; 2 uses
  %i.bu = load ptr, ptr %i.az, align 8            ; 3 uses
  %.val.i = load i16, ptr %i.br, align 2
  %i.bv = icmp slt i16 %.val.i, 0
  br i1 %i.bv, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv ; 3 uses
  %i.by = load i16, ptr %i.bx, align 2            ; 2 uses
  %i.bz = icmp sgt i16 %i.by, -1
  br i1 %i.bz, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.ca = zext nneg i16 %i.by to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.ca ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.cd = load i8, ptr %i.cc, align 2, !range !8, !noundef !9
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = sext i16 %i.cg to i32                   ; 3 uses
  br i1 %i.ce, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.ci = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 range(i32 -32768, 32768) %i.ch)
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %.split.i.i, label %bb.p

.split.i.i:                                       ; preds = %bb.k
  %i.ck = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 -32768, 32768) %i.ch, i1 true)
  switch i32 %i.ck, label %bb.p [
    i32 0, label %bb.l
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.o
  ]

bb.l:                                             ; preds = %.split.i.i
  %i.cl = load i8, ptr %i.cb, align 1
  %i.cm = sext i8 %i.cl to i64
  br label %bb.u

bb.m:                                             ; preds = %.split.i.i
  %i.cn = load i16, ptr %i.cb, align 2
  %i.co = sext i16 %i.cn to i64
  br label %bb.u

bb.n:                                             ; preds = %.split.i.i
  %i.cp = load i32, ptr %i.cb, align 4
  %i.cq = sext i32 %i.cp to i64
  br label %bb.u

bb.o:                                             ; preds = %.split.i.i
  %i.cr = load i64, ptr %i.cb, align 8
  br label %bb.u

bb.p:                                             ; preds = %.split.i.i, %bb.k
  %i.cs = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.ct = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.7, i32 noundef range(i32 -32768, 32768) %i.ch) #11 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.8, i32 noundef 123, ptr noundef nonnull @__func__.fetch_att) #11
  unreachable

bb.q:                                             ; preds = %bb.j
  %i.cu = ptrtoint ptr %i.cb to i64
  br label %bb.u

bb.r:                                             ; preds = %bb.i
  %i.cv = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.cw = call i64 @nocache_index_getattr(ptr noundef nonnull %i.bm, i32 noundef %i.cv, ptr noundef nonnull %i.bu) #11
  br label %bb.u

bb.s:                                             ; preds = %bb.h
  %i.cx = trunc nuw nsw i64 %indvars.iv to i32
  %i.cy = lshr i64 %indvars.iv, 3
  %i.cz = and i64 %i.cy, 536870911
  %i.da = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = zext i8 %i.db to i32
  %i.dd = and i32 %i.cx, 7
  %i.de = shl nuw nsw i32 1, %i.dd
  %i.df = and i32 %i.de, %i.dc
  %.not.i19.i = icmp eq i32 %i.df, 0
  br i1 %.not.i19.i, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dg = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.dh = call i64 @nocache_index_getattr(ptr noundef nonnull %i.bm, i32 noundef %i.dg, ptr noundef %i.bu) #11
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.t, %bb.l, %bb.m, %bb.n, %bb.o, %bb.q
  %.1.i.ph = phi i64 [ %i.cr, %bb.o ], [ %i.cq, %bb.n ], [ %i.co, %bb.m ], [ %i.cm, %bb.l ], [ %i.cw, %bb.r ], [ %i.dh, %bb.t ], [ %i.cu, %bb.q ]
  store i64 %.1.i.ph, ptr %4, align 8
  store ptr %0, ptr %i.ba, align 8
  store ptr %1, ptr %i.bb, align 8
  store i16 %6, ptr %i.bc, align 8
  store i8 0, ptr %i.bd, align 2
  %i.di = getelementptr inbounds nuw [48 x i8], ptr %i.be, i64 %indvars.iv ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load i32, ptr %i.dj, align 8
  %.not.i = icmp eq i32 %i.dk, 0
  br i1 %.not.i, label %gistdentryinit.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = call i64 @FunctionCall1Coll(ptr noundef nonnull %i.di, i32 noundef %i.dm, i64 noundef %i.bg) #11
  %i.do = inttoptr i64 %i.dn to ptr               ; 5 uses
  %.not39.i = icmp eq ptr %4, %i.do
  br i1 %.not39.i, label %gistdentryinit.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dp = load i64, ptr %i.do, align 8
  store i64 %i.dp, ptr %4, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dr = load <2 x ptr>, ptr %i.dq, align 8
  store <2 x ptr> %i.dr, ptr %i.ba, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dt = load i16, ptr %i.ds, align 8
  store i16 %i.dt, ptr %i.bc, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 26
  %i.dv = load i8, ptr %i.du, align 2, !range !8, !noundef !9
  br label %.sink.split.i

bb.x:                                             ; preds = %bb.s
  store i64 0, ptr %4, align 8
  store ptr %0, ptr %i.ba, align 8
  store ptr %1, ptr %i.bb, align 8
  store i16 %6, ptr %i.bc, align 8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.x, %bb.w
  %i.dw = phi i1 [ false, %bb.w ], [ true, %bb.x ]
  %.sink.i = phi i8 [ %i.dv, %bb.w ], [ 0, %bb.x ]
  store i8 %.sink.i, ptr %i.bd, align 2
  br label %gistdentryinit.exit

gistdentryinit.exit:                              ; preds = %bb.u, %bb.v, %.sink.split.i
  %i.dx = phi i1 [ false, %bb.u ], [ false, %bb.v ], [ %i.dw, %.sink.split.i ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  %i.dz = load i8, ptr %i.dy, align 1, !range !8, !noundef !9
  %i.ea = trunc nuw i8 %i.dz to i1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store float 0.000000e+00, ptr %i.a, align 4
  %i.eb = getelementptr inbounds nuw [48 x i8], ptr %i.bh, i64 %indvars.iv ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 14
  %i.ed = load i8, ptr %i.ec, align 2, !range !8, !noundef !9
  %i.ee = icmp ne i8 %i.ed, 0
  %brmerge.i = or i1 %i.dx, %i.ea
  %or.cond13.i = and i1 %brmerge.i, %i.ee
  br i1 %or.cond13.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %gistdentryinit.exit
  %i.ef = getelementptr inbounds nuw [32 x i8], ptr %5, i64 %indvars.iv
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv
  %i.eh = load i32, ptr %i.eg, align 4
  %i.ei = ptrtoint ptr %i.ef to i64
  %i.ej = call i64 @FunctionCall3Coll(ptr noundef nonnull %i.eb, i32 noundef %i.eh, i64 noundef %i.bg, i64 noundef %i.ei, i64 noundef %i.bi) #11 ; 0 uses
  %i.ek = load float, ptr %i.a, align 4           ; 2 uses
  %or.cond12.i = fcmp ult float %i.ek, 0.000000e+00
  br i1 %or.cond12.i, label %bb.z, label %gistpenalty.exit

bb.z:                                             ; preds = %bb.y
  br label %gistpenalty.exit

bb.aa:                                            ; preds = %gistdentryinit.exit
  %or.cond.i = and i1 %i.dx, %i.ea
  %..i = select i1 %or.cond.i, float 0.000000e+00, float +inf
  br label %gistpenalty.exit

gistpenalty.exit:                                 ; preds = %bb.y, %bb.z, %bb.aa
  %i.el = phi float [ %i.ek, %bb.y ], [ %..i, %bb.aa ], [ 0.000000e+00, %bb.z ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.em = fcmp ule float %i.el, 0.000000e+00
  %spec.select = select i1 %i.em, i1 %.05196, i1 false ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.eo = load float, ptr %i.en, align 4          ; 3 uses
  %i.ep = fcmp olt float %i.eo, 0.000000e+00
  %i.eq = fcmp olt float %i.el, %i.eo
  %or.cond = or i1 %i.ep, %i.eq
  br i1 %or.cond, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %gistpenalty.exit
  store float %i.el, ptr %i.en, align 4
  %i.er = load ptr, ptr %i.d, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 10
  %i.et = load i16, ptr %i.es, align 2            ; 3 uses
  %i.eu = sext i16 %i.et to i32                   ; 3 uses
  %i.ev = add nsw i32 %i.eu, -1
  %i.ew = sext i32 %i.ev to i64
  %i.ex = icmp slt i64 %indvars.iv, %i.ew
  br i1 %i.ex, label %bb.ac, label %select.unfold

bb.ac:                                            ; preds = %bb.ab
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next
  store float -1.000000e+00, ptr %i.ey, align 4
  br label %select.unfold

bb.ad:                                            ; preds = %gistpenalty.exit
  %i.ez = fcmp oeq float %i.eo, %i.el
  %.pre116.pre = load ptr, ptr %i.d, align 8      ; 2 uses
  br i1 %i.ez, label %.select.unfold_crit_edge, label %..thread.loopexit_crit_edge

..thread.loopexit_crit_edge:                      ; preds = %bb.ad
  %i.fa = trunc nuw nsw i64 %indvars.iv to i32
  %.phi.trans.insert117.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre116.pre, i64 10
  %.pre118.pre = load i16, ptr %.phi.trans.insert117.phi.trans.insert, align 2
  br label %.thread

.select.unfold_crit_edge:                         ; preds = %bb.ad
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre116.pre, i64 10
  %.pre115 = load i16, ptr %.phi.trans.insert, align 2 ; 2 uses
  %.pre = sext i16 %.pre115 to i32
  br label %select.unfold

select.unfold:                                    ; preds = %.select.unfold_crit_edge, %bb.ac, %bb.ab
  %.pre-phi = phi i32 [ %.pre, %.select.unfold_crit_edge ], [ %i.eu, %bb.ac ], [ %i.eu, %bb.ab ]
  %i.fb = phi i16 [ %.pre115, %.select.unfold_crit_edge ], [ %i.et, %bb.ac ], [ %i.et, %bb.ab ]
  %.361 = phi i16 [ %.15994, %.select.unfold_crit_edge ], [ %6, %bb.ac ], [ %6, %bb.ab ] ; 2 uses
  %.356 = phi i32 [ %.15495, %.select.unfold_crit_edge ], [ -1, %bb.ac ], [ -1, %bb.ab ] ; 2 uses
  %i.fc = sext i32 %.pre-phi to i64
  %i.fd = icmp slt i64 %indvars.iv.next, %i.fc
  br i1 %i.fd, label %bb.h, label %.thread, !llvm.loop !29

.thread:                                          ; preds = %select.unfold, %..thread.loopexit_crit_edge, %bb.g
  %i.fe = phi i16 [ %i.bp, %bb.g ], [ %.pre118.pre, %..thread.loopexit_crit_edge ], [ %i.fb, %select.unfold ]
  %.159.lcssa = phi i16 [ %.058107, %bb.g ], [ %.15994, %..thread.loopexit_crit_edge ], [ %.361, %select.unfold ] ; 3 uses
  %.154.lcssa = phi i32 [ %.053109, %bb.g ], [ %.15495, %..thread.loopexit_crit_edge ], [ %.356, %select.unfold ] ; 3 uses
  %.050.lcssa = phi i32 [ 0, %bb.g ], [ %i.fa, %..thread.loopexit_crit_edge ], [ %i.bt, %select.unfold ]
  %.3 = phi i1 [ true, %bb.g ], [ false, %..thread.loopexit_crit_edge ], [ %spec.select, %select.unfold ]
  %i.ff = sext i16 %i.fe to i32
  %i.fg = icmp ne i32 %.050.lcssa, %i.ff
  %7 = zext i16 %.159.lcssa to i64
  %.not68 = icmp eq i64 %indvars.iv115, %7
  %or.cond69 = select i1 %i.fg, i1 true, i1 %.not68
  br i1 %or.cond69, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %.thread
  %i.fh = icmp eq i32 %.154.lcssa, -1
  br i1 %i.fh, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fi = call zeroext i1 @pg_prng_bool(ptr noundef nonnull @pg_global_prng_state) #11
  %i.fj = zext i1 %i.fi to i32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.5 = phi i32 [ %i.fj, %bb.af ], [ %.154.lcssa, %bb.ae ]
  %i.fk = icmp eq i32 %.5, 0                      ; 2 uses
  %8 = trunc nuw i64 %indvars.iv115 to i16
  %spec.select70 = select i1 %i.fk, i16 %8, i16 %.159.lcssa
  %spec.select71 = select i1 %i.fk, i32 -1, i32 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread
  %.563 = phi i16 [ %.159.lcssa, %.thread ], [ %spec.select70, %bb.ag ] ; 3 uses
  %.6 = phi i32 [ %.154.lcssa, %.thread ], [ %spec.select71, %bb.ag ] ; 3 uses
  br i1 %.3, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.fl = icmp eq i32 %.6, -1
  br i1 %i.fl, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fm = call zeroext i1 @pg_prng_bool(ptr noundef nonnull @pg_global_prng_state) #11
  %i.fn = zext i1 %i.fm to i32
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.7 = phi i32 [ %i.fn, %bb.aj ], [ %.6, %bb.ai ]
  %i.fo = icmp eq i32 %.7, 1
  br i1 %i.fo, label %._crit_edge, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %.9.ph = phi i32 [ %.6, %bb.ah ], [ 0, %bb.ak ]
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next116, %wide.trip.count
  br i1 %exitcond, label %._crit_edge, label %bb.g, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.al, %bb.ak, %gistDeCompressAtt.exit
  %.664 = phi i16 [ 1, %gistDeCompressAtt.exit ], [ %.563, %bb.ak ], [ %.563, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret i16 %.664
}

; Function Attrs: nounwind uwtable
define dso_local float @gistpenalty(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store float 0.000000e+00, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6184
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  %i.f = load i8, ptr %i.e, align 2, !range !8, !noundef !9
  %i.g = icmp ne i8 %i.f, 0
  %brmerge = or i1 %3, %5
  %or.cond13 = and i1 %brmerge, %i.g
  br i1 %or.cond13, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 13864
  %i.i = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.c
  %i.j = load i32, ptr %i.i, align 4
  %i.k = ptrtoint ptr %2 to i64
  %i.l = ptrtoint ptr %4 to i64
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = call i64 @FunctionCall3Coll(ptr noundef nonnull %i.d, i32 noundef %i.j, i64 noundef %i.k, i64 noundef %i.l, i64 noundef %i.m) #11 ; 0 uses
  %i.o = load float, ptr %i.a, align 4            ; 2 uses
  %or.cond12 = fcmp ult float %i.o, 0.000000e+00
  br i1 %or.cond12, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %or.cond = and i1 %3, %5
  %. = select i1 %or.cond, float 0.000000e+00, float +inf
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c
  %i.p = phi float [ %i.o, %bb.b ], [ %., %bb.d ], [ 0.000000e+00, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret float %i.p
}

declare zeroext i1 @pg_prng_bool(ptr noundef) local_unnamed_addr #2

declare i64 @FunctionCall1Coll(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @gistCompressValues(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i1 noundef zeroext %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.GISTENTRY, align 8          ; 8 uses
  %i.a = zext i1 %4 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.e = load i16, ptr %i.d, align 2
  %i.f = icmp sgt i16 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 13864
  %i.m = ptrtoint ptr %6 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 1, !range !8, !noundef !9
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  store i64 0, ptr %i.q, align 8
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  store i64 %i.s, ptr %6, align 8
  store ptr %1, ptr %i.g, align 8
  store ptr null, ptr %i.h, align 8
  store i16 0, ptr %i.i, align 8
  store i8 %i.a, ptr %i.j, align 2
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4
  %i.y = call i64 @FunctionCall1Coll(ptr noundef nonnull %i.t, i32 noundef %i.x, i64 noundef %i.m) #11
  %i.z = inttoptr i64 %i.y to ptr
  %.pre = load i64, ptr %i.z, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.aa = phi i64 [ %.pre, %bb.e ], [ %i.s, %bb.d ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  store i64 %i.aa, ptr %i.ab, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ac = load ptr, ptr %i.b, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 10
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = sext i16 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !0

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.ah = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.031.lcssa = phi i32 [ 0, %bb.a ], [ %i.ah, %._crit_edge.loopexit ] ; 2 uses
  br i1 %4, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = icmp slt i32 %.031.lcssa, %i.ak
  br i1 %i.al, label %.lr.ph34.preheader, label %.loopexit

.lr.ph34.preheader:                               ; preds = %.preheader
  %i.am = zext nneg i32 %.031.lcssa to i64
  br label %.lr.ph34

.lr.ph34:                                         ; preds = %.lr.ph34.preheader, %bb.i
  %indvars.iv36 = phi i64 [ %i.am, %.lr.ph34.preheader ], [ %indvars.iv.next37, %bb.i ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv36
  %i.ao = load i8, ptr %i.an, align 1, !range !8, !noundef !9
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph34
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv36
  %i.ar = load i64, ptr %i.aq, align 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph34, %bb.h
  %.sink = phi i64 [ %i.ar, %bb.h ], [ 0, %.lr.ph34 ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv36
  store i64 %.sink, ptr %i.as, align 8
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %i.at = load ptr, ptr %i.ai, align 8
  %i.au = load i32, ptr %i.at, align 8
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next37, %i.av
  br i1 %i.aw, label %.lr.ph34, label %.loopexit, !llvm.loop !1

.loopexit:                                        ; preds = %bb.i, %.preheader, %._crit_edge
  ret void
}

declare ptr @index_form_tuple(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @gistFetchTuple(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.GISTENTRY, align 8          ; 8 uses
  %i.a = alloca [32 x i64], align 16              ; 8 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.d, ptr @CurrentMemoryContext, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.i = load i16, ptr %i.h, align 2
  %i.j = icmp sgt i16 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
end_hunk_0

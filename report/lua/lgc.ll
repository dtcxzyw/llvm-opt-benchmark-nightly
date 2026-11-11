Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/lgc?download=true
inline.NumInlined: 113
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@propagatemark:bb.a
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !93 ; 2 uses
  %.not19.i.i.i = icmp eq i32 %i.br, 0
  br i1 %.not19.i.i.i, label %traversearray.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %getmode.exit.thread.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.trip.count.i.i.i = zext i32 %i.br to i64
  br label %bb.h

bb.h:                                             ; preds = %.thread.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %.thread.i.i.i ] ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !94 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv.i.i.i
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !37
  %i.bx = and i8 %i.bw, 64
  %.not.i.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.by = getelementptr inbounds i8, ptr %i.bt, i64 -8
  %i.bz = sub nsw i64 0, %indvars.iv.i.i.i
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !37 ; 3 uses
  %.not14.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not14.i.i.i, label %.thread.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 9
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !32
  %i.ce = and i8 %i.cd, 24
  %.not15.i.i.i = icmp eq i8 %i.ce, 0
  br i1 %.not15.i.i.i, label %.thread.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @reallymarkobject(ptr noundef %0, ptr noundef nonnull %i.cb)
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %traversearray.exit.loopexit.i.i, label %bb.h

traversearray.exit.loopexit.i.i:                  ; preds = %.thread.i.i.i
  %.pre.i.i = load ptr, ptr %i.bi, align 8, !tbaa !91
  br label %traversearray.exit.i.i

traversearray.exit.i.i:                           ; preds = %traversearray.exit.loopexit.i.i, %getmode.exit.thread.i
  %i.cf = phi ptr [ %.pre.i.i, %traversearray.exit.loopexit.i.i ], [ %i.bj, %getmode.exit.thread.i ] ; 2 uses
  %i.cg = icmp ult ptr %i.cf, %i.bp
  br i1 %i.cg, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %traversearray.exit.i.i, %clearkey.exit.i.i
  %.024.i.i = phi ptr [ %i.cz, %clearkey.exit.i.i ], [ %i.cf, %traversearray.exit.i.i ] ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 8 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !37  ; 3 uses
  %i.cj = and i8 %i.ci, 15
  %i.ck = icmp eq i8 %i.cj, 0
  %i.cl = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 9 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !37
  %i.cn = and i8 %i.cm, 64
  %.not.i23.i.i = icmp eq i8 %i.cn, 0             ; 2 uses
  br i1 %i.ck, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph.i.i
  br i1 %.not.i23.i.i, label %clearkey.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 11, ptr %i.cl, align 1, !tbaa !37
  br label %clearkey.exit.i.i

bb.n:                                             ; preds = %.lr.ph.i.i
  br i1 %.not.i23.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !37 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 9
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !32
  %i.cs = and i8 %i.cr, 24
  %.not20.i.i = icmp eq i8 %i.cs, 0
  br i1 %.not20.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @reallymarkobject(ptr noundef %0, ptr noundef nonnull %i.cp)
  %.pre25.i.i = load i8, ptr %i.ch, align 8, !tbaa !37
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.ct = phi i8 [ %.pre25.i.i, %bb.p ], [ %i.ci, %bb.o ], [ %i.ci, %bb.n ]
  %i.cu = and i8 %i.ct, 64
  %.not21.i.i = icmp eq i8 %i.cu, 0
  br i1 %.not21.i.i, label %clearkey.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cv = load ptr, ptr %.024.i.i, align 8, !tbaa !37 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 9
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !32
  %i.cy = and i8 %i.cx, 24
  %.not22.i.i = icmp eq i8 %i.cy, 0
  br i1 %.not22.i.i, label %clearkey.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @reallymarkobject(ptr noundef %0, ptr noundef nonnull %i.cv)
  br label %clearkey.exit.i.i

clearkey.exit.i.i:                                ; preds = %bb.s, %bb.r, %bb.q, %bb.m, %bb.l
  %i.cz = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 24 ; 2 uses
  %i.da = icmp ult ptr %i.cz, %i.bp
  br i1 %i.da, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %clearkey.exit.i.i, %traversearray.exit.i.i
  %i.db = load i8, ptr %i.c, align 1, !tbaa !32   ; 2 uses
  %i.dc = and i8 %i.db, 7
  switch i8 %i.dc, label %traversetable.exit [
    i8 5, label %switch.lookup
    i8 6, label %.sink.split.i.i.i
  ]

switch.lookup:                                    ; preds = %._crit_edge.i.i
  %i.dd = load i8, ptr %i.f, align 8, !tbaa !36
  %i.de = sext i8 %i.dd to i64
  %i.df = getelementptr i8, ptr @switch.table.traverseephemeron, i64 %i.de
  %switch.gep = getelementptr i8, ptr %i.df, i64 -5
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 %switch.ext
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !50
  store ptr %i.di, ptr %i.dg, align 8, !tbaa !50
  store ptr %i.b, ptr %i.dh, align 8, !tbaa !50
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %switch.lookup, %._crit_edge.i.i
  %.sink8.i.i.i = phi i8 [ -57, %switch.lookup ], [ -4, %._crit_edge.i.i ]
  %i.dj = and i8 %.sink8.i.i.i, %i.db
  store i8 %i.dj, ptr %i.c, align 1, !tbaa !32
  br label %traversetable.exit

bb.t:                                             ; preds = %getmode.exit.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !91 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !92
  %i.do = zext nneg i8 %i.dn to i64
  %.idx.i.i = shl nuw i64 24, %i.do
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.idx.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !93
  %i.ds = icmp ne i32 %i.dr, 0
  %i.dt = zext i1 %i.ds to i32
  br label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %clearkey.exit.i24.i, %bb.t
  %.038.i.i = phi i32 [ %.1.i.i, %clearkey.exit.i24.i ], [ %i.dt, %bb.t ] ; 3 uses
  %.02637.i.i = phi ptr [ %i.em, %clearkey.exit.i24.i ], [ %i.dl, %bb.t ] ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.02637.i.i, i64 8 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.02637.i.i, i64 9
  %i.dw = load <2 x i8>, ptr %i.du, align 8, !tbaa !37
  %i.dx = and <2 x i8> %i.dw, <i8 15, i8 64>
  %i.dy = icmp eq <2 x i8> %i.dx, zeroinitializer ; 3 uses
  %i.dz = extractelement <2 x i1> %i.dy, i64 0
  br i1 %i.dz, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.lr.ph.i22.i
  %i.ea = extractelement <2 x i1> %i.dy, i64 1
  br i1 %i.ea, label %clearkey.exit.i24.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i8 11, ptr %i.dv, align 1, !tbaa !37
  br label %clearkey.exit.i24.i

bb.w:                                             ; preds = %.lr.ph.i22.i
  %i.eb = extractelement <2 x i1> %i.dy, i64 1
  br i1 %i.eb, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ec = getelementptr inbounds nuw i8, ptr %.02637.i.i, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !37 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 9
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !32
  %i.eg = and i8 %i.ef, 24
  %.not28.i.i = icmp eq i8 %i.eg, 0
  br i1 %.not28.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call fastcc void @reallymarkobject(ptr noundef %0, ptr noundef nonnull %i.ed)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %.not29.i.i = icmp eq i32 %.038.i.i, 0
  br i1 %.not29.i.i, label %bb.aa, label %clearkey.exit.i24.i

bb.aa:                                            ; preds = %bb.z
  %i.eh = load i8, ptr %i.du, align 8, !tbaa !37
  %i.ei = and i8 %i.eh, 64
  %.not30.i.i = icmp eq i8 %i.ei, 0
  br i1 %.not30.i.i, label %iscleared.exit.thread.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ej = load ptr, ptr %.02637.i.i, align 8, !tbaa !37 ; 3 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %iscleared.exit.thread.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %1 = load <2 x i8>, ptr %i.el, align 8, !tbaa !37
  %2 = freeze <2 x i8> %1
  %3 = and <2 x i8> %2, <i8 15, i8 24>
  %4 = icmp eq <2 x i8> %3, <i8 4, i8 0>          ; 3 uses
  %5 = extractelement <2 x i1> %4, i64 0
  br i1 %5, label %bb.ad, label %iscleared.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  %6 = extractelement <2 x i1> %4, i64 1
  br i1 %6, label %iscleared.exit.thread.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call fastcc void @reallymarkobject(ptr noundef %0, ptr noundef nonnull %i.ej)
  br label %iscleared.exit.thread.i.i

iscleared.exit.i.i:                               ; preds = %bb.ac
  %7 = extractelement <2 x i1> %4, i64 1
  br i1 %7, label %iscleared.exit.thread.i.i, label %clearkey.exit.i24.i

iscleared.exit.thread.i.i:                        ; preds = %iscleared.exit.i.i, %bb.ae, %bb.ad, %bb.ab, %bb.aa
  br label %clearkey.exit.i24.i

clearkey.exit.i24.i:                              ; preds = %iscleared.exit.thread.i.i, %iscleared.exit.i.i, %bb.z, %bb.v, %bb.u
  %.1.i.i = phi i32 [ %.038.i.i, %bb.v ], [ 1, %bb.z ], [ %.038.i.i, %bb.u ], [ 0, %iscleared.exit.thread.i.i ], [ 1, %iscleared.exit.i.i ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.02637.i.i, i64 24 ; 2 uses
  %i.en = icmp ult ptr %i.em, %i.dp
  br i1 %i.en, label %.lr.ph.i22.i, label %._crit_edge.i25.i

._crit_edge.i25.i:                                ; preds = %clearkey.exit.i24.i
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 107
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !30
  %i.eq = icmp eq i8 %i.ep, 0
  br i1 %i.eq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i25.i
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !50
  store ptr %i.es, ptr %i.h, align 8, !tbaa !50
  store ptr %i.b, ptr %i.er, align 8, !tbaa !50
  %i.et = load i8, ptr %i.c, align 1, !tbaa !32
  %i.eu = and i8 %i.et, -57
  store i8 %i.eu, ptr %i.c, align 1, !tbaa !32
  br label %traversetable.exit

bb.ag:                                            ; preds = %._crit_edge.i25.i
  %.not.i26.i = icmp eq i32 %.1.i.i, 0
  br i1 %.not.i26.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !50
  store ptr %i.ew, ptr %i.h, align 8, !tbaa !50
  store ptr %i.b, ptr %i.ev, align 8, !tbaa !50
  %i.ex = load i8, ptr %i.c, align 1, !tbaa !32
  %i.ey = and i8 %i.ex, -57
  store i8 %i.ey, ptr %i.c, align 1, !tbaa !32
  br label %traversetable.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ez = load i8, ptr %i.c, align 1, !tbaa !32   ; 2 uses
  %i.fa = and i8 %i.ez, 7
  switch i8 %i.fa, label %traversetable.exit [
    i8 5, label %switch.lookup108
    i8 6, label %.sink.split.i.i27.i
  ]

switch.lookup108:                                 ; preds = %bb.ai
  %i.fb = load i8, ptr %i.f, align 8, !tbaa !36
  %i.fc = sext i8 %i.fb to i64
  %i.fd = getelementptr i8, ptr @switch.table.traverseephemeron, i64 %i.fc
  %switch.gep109 = getelementptr i8, ptr %i.fd, i64 -5
  %switch.load110 = load i8, ptr %switch.gep109, align 1
  %switch.ext111 = zext i8 %switch.load110 to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 %switch.ext111
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !50
  store ptr %i.fg, ptr %i.fe, align 8, !tbaa !50
  store ptr %i.b, ptr %i.ff, align 8, !tbaa !50
  br label %.sink.split.i.i27.i

.sink.split.i.i27.i:                              ; preds = %switch.lookup108, %bb.ai
  %.sink8.i.i28.i = phi i8 [ -57, %switch.lookup108 ], [ -4, %bb.ai ]
  %i.fh = and i8 %.sink8.i.i28.i, %i.ez
  store i8 %i.fh, ptr %i.c, align 1, !tbaa !32
  br label %traversetable.exit

bb.aj:                                            ; preds = %getmode.exit.i
  %i.fi = tail call fastcc i32 @traverseephemeron(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef 0) ; 0 uses
  br label %traversetable.exit

bb.ak:                                            ; preds = %getmode.exit.i
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 107
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !30
  %i.fl = icmp eq i8 %i.fk, 0
  br i1 %i.fl, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !50
  store ptr %i.fn, ptr %i.h, align 8, !tbaa !50
  store ptr %i.b, ptr %i.fm, align 8, !tbaa !50
  %i.fo = load i8, ptr %i.c, align 1, !tbaa !32
  %i.fp = and i8 %i.fo, -57
  store i8 %i.fp, ptr %i.c, align 1, !tbaa !32
  br label %traversetable.exit

bb.am:                                            ; preds = %bb.ak
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !50
  store ptr %i.fr, ptr %i.h, align 8, !tbaa !50
  store ptr %i.b, ptr %i.fq, align 8, !tbaa !50
  %i.fs = load i8, ptr %i.c, align 1, !tbaa !32
  %i.ft = and i8 %i.fs, -57
  store i8 %i.ft, ptr %i.c, align 1, !tbaa !32
  br label %traversetable.exit

default.unreachable:                              ; preds = %getmode.exit.i
  unreachable

traversetable.exit:                               ; preds = %._crit_edge.i.i, %.sink.split.i.i.i, %bb.af, %bb.ah, %bb.ai, %.sink.split.i.i27.i, %bb.aj, %bb.al, %bb.am
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !92
  %i.fw = zext nneg i8 %i.fv to i32
  %i.fx = shl i32 2, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !93
  %i.ga = add i32 %i.fz, 1
  %i.gb = add i32 %i.ga, %i.fx
  %i.gc = zext i32 %i.gb to i64
  br label %traverseudata.exit

bb.an:                                            ; preds = %getgclist.exit.thread50
  %i.gd = getelementptr inbounds nuw i8, ptr %i.af, i64 9
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !49
  %i.gf = and i8 %i.ge, 24
  %.not17.i = icmp eq i8 %i.gf, 0
  br i1 %.not17.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call fastcc void @reallymarkobject(ptr noundef nonnull %0, ptr noundef nonnull %i.af)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %getgclist.exit.thread50
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 10 ; 2 uses
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !44 ; 2 uses
  %.not21.i18 = icmp eq i16 %i.gh, 0
  br i1 %.not21.i18, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ap
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  br label %bb.aq

bb.aq:                                            ; preds = %bb.at, %.lr.ph.i
  %i.gj = phi i16 [ %i.gh, %.lr.ph.i ], [ %i.gs, %bb.at ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.at ] ; 2 uses
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.gi, i64 %indvars.iv.i ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load i8, ptr %i.gl, align 8, !tbaa !37
  %i.gn = and i8 %i.gm, 64
  %.not18.i = icmp eq i8 %i.gn, 0
  br i1 %.not18.i, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.go = load ptr, ptr %i.gk, align 16, !tbaa !37 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 9
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !32
  %i.gr = and i8 %i.gq, 24
  %.not19.i = icmp eq i8 %i.gr, 0
  br i1 %.not19.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call fastcc void @reallymarkobject(ptr noundef %0, ptr noundef nonnull %i.go)
  %.pre.i = load i16, ptr %i.gg, align 2, !tbaa !44
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %i.gs = phi i16 [ %i.gj, %bb.aq ], [ %i.gj, %bb.ar ], [ %.pre.i, %bb.as ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gt = zext i16 %i.gs to i64                   ; 2 uses
  %i.gu = icmp samesign ult i64 %indvars.iv.next.i, %i.gt
  br i1 %i.gu, label %bb.aq, label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %bb.at
  %i.gv = add nuw nsw i64 %i.gt, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.ap
  %.lcssa.i = phi i64 [ 1, %bb.ap ], [ %i.gv, %._crit_edge.loopexit.i ] ; 2 uses
  %i.gw = load i8, ptr %i.c, align 1, !tbaa !32   ; 2 uses
  %i.gx = and i8 %i.gw, 7
  switch i8 %i.gx, label %traverseudata.exit [
    i8 5, label %switch.lookup113
    i8 6, label %.sink.split.i.i
  ]

switch.lookup113:                                 ; preds = %._crit_edge.i
  %i.gy = load i8, ptr %i.f, align 8, !tbaa !36
  %i.gz = sext i8 %i.gy to i64
  %i.ha = getelementptr i8, ptr @switch.table.traverseephemeron, i64 %i.gz
  %switch.gep114 = getelementptr i8, ptr %i.ha, i64 -5
  %switch.load115 = load i8, ptr %switch.gep114, align 1
  %switch.ext116 = zext i8 %switch.load115 to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 %switch.ext116
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !50
  store ptr %i.hd, ptr %i.hb, align 8, !tbaa !50
  store ptr %i.b, ptr %i.hc, align 8, !tbaa !50
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %switch.lookup113, %._crit_edge.i
  %.sink8.i.i = phi i8 [ -57, %switch.lookup113 ], [ -4, %._crit_edge.i ]
  %i.he = and i8 %.sink8.i.i, %i.gw
  store i8 %i.he, ptr %i.c, align 1, !tbaa !32
  br label %traverseudata.exit

bb.au:                                            ; preds = %getgclist.exit.thread52
  %i.hf = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !114
end_hunk_0

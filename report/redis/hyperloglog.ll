Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/hyperloglog?download=true
inline.NumInlined: 34
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@hllSparseSet:bb.a
  ]

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds i8, ptr %i.d, i64 -3
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 -2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !23
  %i.y = zext i8 %i.x to i64
  %i.z = load i8, ptr %i.v, align 1, !tbaa !23    ; 2 uses
  %i.aa = zext i8 %i.z to i64
  %i.ab = sub nsw i64 %i.y, %i.aa
  br label %sdsavail.exit

bb.j:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds i8, ptr %i.d, i64 -5
  %i.ad = getelementptr inbounds i8, ptr %i.d, i64 -3
  %i.ae = load i16, ptr %i.ad, align 1            ; 2 uses
  %i.af = zext i16 %i.ae to i64
  %i.ag = load i16, ptr %i.ac, align 1, !tbaa !28
  %i.ah = zext i16 %i.ag to i64
  %i.ai = sub nsw i64 %i.af, %i.ah
  %i.aj = trunc i16 %i.ae to i8
  br label %sdsavail.exit

bb.k:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds i8, ptr %i.d, i64 -9
  %i.al = getelementptr inbounds i8, ptr %i.d, i64 -5
  %i.am = load i32, ptr %i.al, align 1            ; 2 uses
  %i.an = load i32, ptr %i.ak, align 1, !tbaa !19
  %i.ao = sub i32 %i.am, %i.an
  %i.ap = zext i32 %i.ao to i64
  %i.aq = lshr i32 %i.am, 16
  %i.ar = trunc i32 %i.aq to i8
  br label %sdsavail.exit

bb.l:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds i8, ptr %i.d, i64 -17
  %i.at = getelementptr inbounds i8, ptr %i.d, i64 -9
  %i.au = load i64, ptr %i.at, align 1            ; 2 uses
  %i.av = load i64, ptr %i.as, align 1, !tbaa !21
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = lshr i64 %i.au, 48
  %i.ay = trunc i64 %i.ax to i8
  br label %sdsavail.exit

sdsavail.exit:                                    ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %i.az = phi i8 [ %i.ar, %bb.k ], [ %i.ay, %bb.l ], [ %i.z, %bb.i ], [ %i.aj, %bb.j ]
  %.0.i244 = phi i64 [ %i.ap, %bb.k ], [ %i.aw, %bb.l ], [ %i.ab, %bb.i ], [ %i.ai, %bb.j ]
  %i.ba = icmp ult i64 %.0.i244, 3
  br i1 %i.ba, label %sdsavail.exit.thread, label %bb.r

sdsavail.exit.thread:                             ; preds = %sdsavail.exit
  switch i8 %i.f, label %default.unreachable [
    i8 4, label %bb.q
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.p
  ]

bb.m:                                             ; preds = %bb.h
  %i.bb = lshr i8 %.val.i, 3
  %i.bc = zext nneg i8 %i.bb to i64
  br label %sdslen.exit

bb.n:                                             ; preds = %sdsavail.exit.thread
  %i.bd = zext i8 %i.az to i64
  br label %sdslen.exit

bb.o:                                             ; preds = %sdsavail.exit.thread
  %i.be = getelementptr inbounds i8, ptr %i.d, i64 -5
  %i.bf = load i16, ptr %i.be, align 1, !tbaa !28
  %i.bg = zext i16 %i.bf to i64
  br label %sdslen.exit

bb.p:                                             ; preds = %sdsavail.exit.thread
  %i.bh = getelementptr inbounds i8, ptr %i.d, i64 -9
  %i.bi = load i32, ptr %i.bh, align 1, !tbaa !19
  %i.bj = zext i32 %i.bi to i64
  br label %sdslen.exit

bb.q:                                             ; preds = %sdsavail.exit.thread
  %i.bk = getelementptr inbounds i8, ptr %i.d, i64 -17
  %i.bl = load i64, ptr %i.bk, align 1, !tbaa !21
  br label %sdslen.exit

default.unreachable:                              ; preds = %sdsavail.exit.thread
  unreachable

sdslen.exit:                                      ; preds = %bb.h, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %.0.i246 = phi i64 [ %i.bl, %bb.q ], [ %i.bc, %bb.m ], [ %i.bd, %bb.n ], [ %i.bg, %bb.o ], [ %i.bj, %bb.p ], [ 0, %bb.h ]
  %i.bm = add i64 %.0.i246, 3                     ; 2 uses
  %i.bn = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 300)
  %i.bo = add i64 %i.bn, %i.bm
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 %i.t)
  %i.bp = tail call ptr @sdsResize(ptr noundef nonnull %i.d, i64 noundef %spec.select, i32 noundef 1) #19 ; 3 uses
  store ptr %i.bp, ptr %i.c, align 8, !tbaa !26
  %.phi.trans.insert = getelementptr i8, ptr %i.bp, i64 -1
  %.val.i247.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !23
  br label %bb.r

bb.r:                                             ; preds = %sdslen.exit, %sdsavail.exit, %sdsalloc.exit
  %.val.i247 = phi i8 [ %.val.i247.pre, %sdslen.exit ], [ %.val.i, %sdsavail.exit ], [ %.val.i, %sdsalloc.exit ] ; 2 uses
  %i.bq = phi ptr [ %i.bp, %sdslen.exit ], [ %i.d, %sdsavail.exit ], [ %i.d, %sdsalloc.exit ] ; 20 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bq, i64 -1
  %i.bt = and i8 %.val.i247, 7
  switch i8 %i.bt, label %.thread.thread [
    i8 0, label %bb.s
    i8 1, label %bb.t
    i8 2, label %bb.u
    i8 3, label %bb.v
    i8 4, label %bb.w
  ]

bb.s:                                             ; preds = %bb.r
  %i.bu = lshr i8 %.val.i247, 3
  %i.bv = zext nneg i8 %i.bu to i64
  br label %sdslen.exit249

bb.t:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds i8, ptr %i.bq, i64 -3
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !23
  %i.by = zext i8 %i.bx to i64
  br label %sdslen.exit249

bb.u:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds i8, ptr %i.bq, i64 -5
  %i.ca = load i16, ptr %i.bz, align 1, !tbaa !28
  %i.cb = zext i16 %i.ca to i64
  br label %sdslen.exit249

bb.v:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds i8, ptr %i.bq, i64 -9
  %i.cd = load i32, ptr %i.cc, align 1, !tbaa !19
  %i.ce = zext i32 %i.cd to i64
  br label %sdslen.exit249

bb.w:                                             ; preds = %bb.r
  %i.cf = getelementptr inbounds i8, ptr %i.bq, i64 -17
  %i.cg = load i64, ptr %i.cf, align 1, !tbaa !21
  br label %sdslen.exit249

sdslen.exit249:                                   ; preds = %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %.0.i248 = phi i64 [ %i.cg, %bb.w ], [ %i.bv, %bb.s ], [ %i.by, %bb.t ], [ %i.cb, %bb.u ], [ %i.ce, %bb.v ] ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bq, i64 %.0.i248 ; 7 uses
  %i.ci = icmp sgt i64 %.0.i248, 16
  br i1 %i.ci, label %.lr.ph, label %.thread.thread

.lr.ph:                                           ; preds = %sdslen.exit249, %bb.ab
  %.0182313 = phi ptr [ %i.cu, %bb.ab ], [ %i.br, %sdslen.exit249 ] ; 6 uses
  %.0186312 = phi ptr [ %.0182313, %bb.ab ], [ null, %sdslen.exit249 ]
  %.0205311 = phi i64 [ %i.ct, %bb.ab ], [ 0, %sdslen.exit249 ] ; 2 uses
  %i.cj = load i8, ptr %.0182313, align 1, !tbaa !23 ; 3 uses
  %i.ck = zext i8 %i.cj to i32                    ; 3 uses
  %i.cl = icmp ult i8 %i.cj, 64
  br i1 %i.cl, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %.lr.ph
  %.not = icmp sgt i8 %i.cj, -1
  br i1 %.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = and i32 %i.ck, 3
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.cn = shl nuw nsw i32 %i.ck, 8
  %i.co = and i32 %i.cn, 16128
  %i.cp = getelementptr inbounds nuw i8, ptr %.0182313, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !23
  %i.cr = zext i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.co, %i.cr
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %bb.y, %bb.z
  %.1203.in.in = phi i32 [ %i.cs, %bb.z ], [ %i.cm, %bb.y ], [ %i.ck, %.lr.ph ] ; 3 uses
  %.0196 = phi i64 [ 2, %bb.z ], [ 1, %bb.y ], [ 1, %.lr.ph ]
  %.1203.in = add nuw nsw i32 %.1203.in.in, 1
  %.1203 = zext nneg i32 %.1203.in to i64
  %i.ct = add nuw nsw i64 %.0205311, %.1203       ; 3 uses
  %.not227.not = icmp slt i64 %1, %i.ct
  br i1 %.not227.not, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cu = getelementptr inbounds nuw i8, ptr %.0182313, i64 %.0196 ; 3 uses
  %i.cv = icmp ult ptr %i.cu, %i.ch
  br i1 %i.cv, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.ab, %bb.aa
  %.0205.lcssa = phi i64 [ %i.ct, %bb.ab ], [ %.0205311, %bb.aa ] ; 6 uses
  %.0186.lcssa = phi ptr [ %.0182313, %bb.ab ], [ %.0186312, %bb.aa ] ; 2 uses
  %.0182.lcssa = phi ptr [ %i.cu, %bb.ab ], [ %.0182313, %bb.aa ] ; 6 uses
  %.not228 = icmp ult ptr %.0182.lcssa, %i.ch
  br i1 %.not228, label %bb.ac, label %.thread.thread

bb.ac:                                            ; preds = %.thread
  %i.cw = load i8, ptr %.0182.lcssa, align 1, !tbaa !23 ; 3 uses
  %i.cx = zext i8 %i.cw to i32                    ; 2 uses
  %i.cy = and i32 %i.cx, 192                      ; 2 uses
  %i.cz = icmp eq i32 %i.cy, 64                   ; 2 uses
  %.v = select i1 %i.cz, i64 2, i64 1
  %i.da = getelementptr inbounds nuw i8, ptr %.0182.lcssa, i64 %.v ; 4 uses
  %.not229 = icmp ult ptr %i.da, %i.ch
  %.not303 = icmp eq i32 %i.cy, 0                 ; 4 uses
  br i1 %.not303, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.cz, label %.thread278, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.db = lshr i8 %i.cw, 2
  %i.dc = and i8 %i.db, 31                        ; 3 uses
  %narrow = add nuw nsw i8 %i.dc, 1
  %.not231 = icmp ult i8 %narrow, %2
  br i1 %.not231, label %bb.af, label %.thread.thread

bb.af:                                            ; preds = %bb.ae
  %i.dd = and i32 %i.cx, 3
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.df = shl nuw i8 %2, 2
  %i.dg = add nuw i8 %i.df, 124
  %i.dh = or i8 %i.dg, -128
  store i8 %i.dh, ptr %.0182.lcssa, align 1, !tbaa !23
  br label %bb.bf

bb.ah:                                            ; preds = %bb.ac
  %i.di = icmp eq i8 %i.cw, 0
  br i1 %i.di, label %bb.ai, label %.thread278

bb.ai:                                            ; preds = %bb.ah
  %i.dj = shl nuw i8 %2, 2
  %i.dk = add nuw i8 %i.dj, 124
  %i.dl = or i8 %i.dk, -128
  store i8 %i.dl, ptr %.0182.lcssa, align 1, !tbaa !23
  br label %bb.bf

.thread278:                                       ; preds = %bb.ah, %bb.ad
  %i.dm = trunc i64 %.0205.lcssa to i32
  %i.dn = add i32 %.1203.in.in, %i.dm             ; 2 uses
  %.not234 = icmp eq i64 %1, %.0205.lcssa
  br i1 %.not234, label %bb.an, label %bb.ak

bb.aj:                                            ; preds = %bb.af
  %i.do = trunc i64 %.0205.lcssa to i32
  %i.dp = add i32 %.1203.in.in, %i.do             ; 2 uses
  %.not232 = icmp eq i64 %1, %.0205.lcssa
  br i1 %.not232, label %bb.aq, label %bb.ap

bb.ak:                                            ; preds = %.thread278
  %i.dq = sub nsw i64 %1, %.0205.lcssa            ; 2 uses
  %i.dr = trunc i64 %i.dq to i32                  ; 2 uses
  %i.ds = icmp sgt i32 %i.dr, 64
  br i1 %i.ds, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dt = add nsw i32 %i.dr, -1                   ; 2 uses
  %i.du = lshr i32 %i.dt, 8
  %i.dv = trunc i32 %i.du to i8
  %i.dw = or i8 %i.dv, 64
  store i8 %i.dw, ptr %i.a, align 1, !tbaa !23
  %i.dx = trunc i32 %i.dt to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !23
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.ea = trunc i64 %i.dq to i8
  %i.eb = add i8 %i.ea, -1
  store i8 %i.eb, ptr %i.a, align 1, !tbaa !23
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.an

bb.an:                                            ; preds = %.thread278, %bb.am, %bb.al
  %.0189 = phi ptr [ %i.dz, %bb.al ], [ %i.ec, %bb.am ], [ %i.a, %.thread278 ] ; 5 uses
  %i.ed = shl nuw i8 %2, 2
  %i.ee = add nuw i8 %i.ed, 124
  %i.ef = or i8 %i.ee, -128
  store i8 %i.ef, ptr %.0189, align 1, !tbaa !23
  %i.eg = getelementptr inbounds nuw i8, ptr %.0189, i64 1 ; 3 uses
  %i.eh = sext i32 %i.dn to i64
  %.not235 = icmp eq i64 %1, %i.eh
  br i1 %.not235, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ei = trunc i64 %1 to i32
  %i.ej = sub i32 %i.dn, %i.ei                    ; 3 uses
  %i.ek = icmp sgt i32 %i.ej, 64
  br i1 %i.ek, label %.split, label %.split283

.split:                                           ; preds = %bb.ao
  %i.el = add nsw i32 %i.ej, -1                   ; 2 uses
  %i.em = lshr i32 %i.el, 8
  %i.en = trunc i32 %i.em to i8
  %i.eo = or i8 %i.en, 64
  store i8 %i.eo, ptr %i.eg, align 1, !tbaa !23
  %i.ep = trunc i32 %i.el to i8
  %i.eq = getelementptr inbounds nuw i8, ptr %.0189, i64 2
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !23
  %i.er = getelementptr inbounds nuw i8, ptr %.0189, i64 3
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.a to i64
  %i.eu = sub i64 %i.es, %i.et                    ; 3 uses
  %i.ev = trunc i64 %i.eu to i32                  ; 2 uses
  br i1 %.not303, label %bb.au, label %bb.at

.split283:                                        ; preds = %bb.ao
  %i.ew = trunc i32 %i.ej to i8
  %i.ex = add i8 %i.ew, -1
  store i8 %i.ex, ptr %i.eg, align 1, !tbaa !23
  %i.ey = getelementptr inbounds nuw i8, ptr %.0189, i64 2
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.a to i64
  %i.fb = sub i64 %i.ez, %i.fa                    ; 3 uses
  %i.fc = trunc i64 %i.fb to i32                  ; 2 uses
  br i1 %.not303, label %bb.au, label %bb.at

bb.ap:                                            ; preds = %bb.aj
  %i.fd = sub nsw i64 %1, %.0205.lcssa
  %i.fe = trunc i64 %i.fd to i8
  %i.ff = shl nuw nsw i8 %i.dc, 2
  %i.fg = add i8 %i.fe, 127
  %i.fh = or i8 %i.fg, %i.ff
  %i.fi = or i8 %i.fh, -128
  store i8 %i.fi, ptr %i.a, align 1, !tbaa !23
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aj, %bb.ap
  %.1190 = phi ptr [ %i.fj, %bb.ap ], [ %i.a, %bb.aj ] ; 3 uses
  %i.fk = shl nuw i8 %2, 2
  %i.fl = add nuw i8 %i.fk, 124
  %i.fm = or i8 %i.fl, -128
  store i8 %i.fm, ptr %.1190, align 1, !tbaa !23
  %i.fn = getelementptr inbounds nuw i8, ptr %.1190, i64 1 ; 2 uses
  %i.fo = sext i32 %i.dp to i64
  %.not233 = icmp eq i64 %1, %i.fo
  br i1 %.not233, label %.thread281, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fp = trunc i64 %1 to i32
  %i.fq = shl nuw nsw i8 %i.dc, 2
  %i.fr = xor i32 %i.fp, -1
  %i.fs = add i32 %i.dp, %i.fr
  %i.ft = trunc i32 %i.fs to i8
  %i.fu = or i8 %i.fq, %i.ft
  %i.fv = or i8 %i.fu, -128
  store i8 %i.fv, ptr %i.fn, align 1, !tbaa !23
  %i.fw = getelementptr inbounds nuw i8, ptr %.1190, i64 2
  br label %.thread281

.thread281:                                       ; preds = %bb.ar, %bb.aq
  %.3192.ph = phi ptr [ %i.fn, %bb.aq ], [ %i.fw, %bb.ar ]
  %i.fx = ptrtoint ptr %.3192.ph to i64
  %i.fy = ptrtoint ptr %i.a to i64
  %i.fz = sub i64 %i.fx, %i.fy                    ; 2 uses
  %i.ga = trunc i64 %i.fz to i32
  br label %bb.au

bb.as:                                            ; preds = %bb.an
  %i.gb = ptrtoint ptr %i.eg to i64
  %i.gc = ptrtoint ptr %i.a to i64
  %i.gd = sub i64 %i.gb, %i.gc                    ; 3 uses
  %i.ge = trunc i64 %i.gd to i32                  ; 2 uses
  br i1 %.not303, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.split283, %.split, %bb.as
  %i.gf = phi i32 [ %i.ev, %.split ], [ %i.ge, %bb.as ], [ %i.fc, %.split283 ]
  %i.gg = phi i64 [ %i.eu, %.split ], [ %i.gd, %bb.as ], [ %i.fb, %.split283 ]
  br label %bb.au

bb.au:                                            ; preds = %.split283, %.split, %.thread281, %bb.as, %bb.at
  %i.gh = phi i32 [ %i.gf, %bb.at ], [ %i.ge, %bb.as ], [ %i.ga, %.thread281 ], [ %i.ev, %.split ], [ %i.fc, %.split283 ]
  %i.gi = phi i64 [ %i.gg, %bb.at ], [ %i.gd, %bb.as ], [ %i.fz, %.thread281 ], [ %i.eu, %.split ], [ %i.fb, %.split283 ]
  %i.gj = phi i32 [ -2, %bb.at ], [ -1, %bb.as ], [ -1, %.thread281 ], [ -1, %.split ], [ -1, %.split283 ]
  %i.gk = add i32 %i.gj, %i.gh                    ; 9 uses
  %i.gl = icmp sgt i32 %i.gk, 0
  %.val.i253.pre = load i8, ptr %i.bs, align 1, !tbaa !23 ; 3 uses
  %i.gm = and i8 %.val.i253.pre, 7                ; 2 uses
  br i1 %i.gl, label %bb.av, label %._crit_edge

bb.av:                                            ; preds = %bb.au
  switch i8 %i.gm, label %sdslen.exit252 [
    i8 0, label %bb.aw
    i8 1, label %bb.ax
    i8 2, label %bb.ay
    i8 3, label %bb.az
    i8 4, label %bb.ba
  ]

bb.aw:                                            ; preds = %bb.av
  %i.gn = lshr i8 %.val.i253.pre, 3
  %i.go = zext nneg i8 %i.gn to i64
  br label %sdslen.exit252

bb.ax:                                            ; preds = %bb.av
  %i.gp = getelementptr inbounds i8, ptr %i.bq, i64 -3
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !23
  %i.gr = zext i8 %i.gq to i64
  br label %sdslen.exit252

bb.ay:                                            ; preds = %bb.av
  %i.gs = getelementptr inbounds i8, ptr %i.bq, i64 -5
  %i.gt = load i16, ptr %i.gs, align 1, !tbaa !28
  %i.gu = zext i16 %i.gt to i64
  br label %sdslen.exit252

bb.az:                                            ; preds = %bb.av
  %i.gv = getelementptr inbounds i8, ptr %i.bq, i64 -9
  %i.gw = load i32, ptr %i.gv, align 1, !tbaa !19
  %i.gx = zext i32 %i.gw to i64
  br label %sdslen.exit252

bb.ba:                                            ; preds = %bb.av
  %i.gy = getelementptr inbounds i8, ptr %i.bq, i64 -17
  %i.gz = load i64, ptr %i.gy, align 1, !tbaa !21
  br label %sdslen.exit252

sdslen.exit252:                                   ; preds = %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba
  %.0.i251 = phi i64 [ %i.gz, %bb.ba ], [ %i.go, %bb.aw ], [ %i.gr, %bb.ax ], [ %i.gu, %bb.ay ], [ %i.gx, %bb.az ], [ 0, %bb.av ]
  %i.ha = zext nneg i32 %i.gk to i64
  %i.hb = add i64 %.0.i251, %i.ha
  %i.hc = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7992), align 8, !tbaa !60
  %i.hd = icmp ugt i64 %i.hb, %i.hc
  br i1 %i.hd, label %bb.bo, label %._crit_edge

._crit_edge:                                      ; preds = %bb.au, %sdslen.exit252
  switch i8 %i.gm, label %sdslen.exit255 [
    i8 0, label %sdslen.exit255.thread
    i8 1, label %sdslen.exit255.thread285
    i8 2, label %sdslen.exit255.thread287
    i8 3, label %sdslen.exit255.thread289
    i8 4, label %sdslen.exit255.thread291
  ]

sdslen.exit255.thread:                            ; preds = %._crit_edge
  %i.he = lshr i8 %.val.i253.pre, 3
  %i.hf = zext nneg i8 %i.he to i64               ; 2 uses
  %i.hg = sext i32 %i.gk to i64                   ; 2 uses
  %i.hh = add nsw i64 %i.hf, %i.hg
  br label %sdsalloc.exit258

sdslen.exit255.thread285:                         ; preds = %._crit_edge
  %i.hi = getelementptr inbounds i8, ptr %i.bq, i64 -3
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !23
  %i.hk = zext i8 %i.hj to i64
  %i.hl = sext i32 %i.gk to i64                   ; 2 uses
  %i.hm = add nsw i64 %i.hk, %i.hl
  %i.hn = getelementptr inbounds i8, ptr %i.bq, i64 -2
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !23
  %i.hp = zext i8 %i.ho to i64
  br label %sdsalloc.exit258

sdslen.exit255.thread287:                         ; preds = %._crit_edge
  %i.hq = getelementptr inbounds i8, ptr %i.bq, i64 -5
  %i.hr = load i16, ptr %i.hq, align 1, !tbaa !28
  %i.hs = zext i16 %i.hr to i64
  %i.ht = sext i32 %i.gk to i64                   ; 2 uses
  %i.hu = add nsw i64 %i.hs, %i.ht
  %i.hv = getelementptr inbounds i8, ptr %i.bq, i64 -3
  %i.hw = load i16, ptr %i.hv, align 1, !tbaa !28
  %i.hx = zext i16 %i.hw to i64
  br label %sdsalloc.exit258

sdslen.exit255.thread289:                         ; preds = %._crit_edge
  %i.hy = getelementptr inbounds i8, ptr %i.bq, i64 -9
  %i.hz = load i32, ptr %i.hy, align 1, !tbaa !19
  %i.ia = zext i32 %i.hz to i64
  %i.ib = sext i32 %i.gk to i64                   ; 2 uses
  %i.ic = add nsw i64 %i.ia, %i.ib
  %i.id = getelementptr inbounds i8, ptr %i.bq, i64 -5
  %i.ie = load i32, ptr %i.id, align 1, !tbaa !19
  %i.if = zext i32 %i.ie to i64
  br label %sdsalloc.exit258

sdslen.exit255.thread291:                         ; preds = %._crit_edge
  %i.ig = getelementptr inbounds i8, ptr %i.bq, i64 -17
  %i.ih = load i64, ptr %i.ig, align 1, !tbaa !21
  %i.ii = sext i32 %i.gk to i64                   ; 2 uses
  %i.ij = add i64 %i.ih, %i.ii
  %i.ik = getelementptr inbounds i8, ptr %i.bq, i64 -9
  %i.il = load i64, ptr %i.ik, align 1, !tbaa !21
  br label %sdsalloc.exit258

sdslen.exit255:                                   ; preds = %._crit_edge
  %i.im = sext i32 %i.gk to i64                   ; 2 uses
  br label %sdsalloc.exit258

sdsalloc.exit258:                                 ; preds = %sdslen.exit255, %sdslen.exit255.thread, %sdslen.exit255.thread285, %sdslen.exit255.thread287, %sdslen.exit255.thread289, %sdslen.exit255.thread291
  %i.in = phi i64 [ %i.ij, %sdslen.exit255.thread291 ], [ %i.hh, %sdslen.exit255.thread ], [ %i.hm, %sdslen.exit255.thread285 ], [ %i.hu, %sdslen.exit255.thread287 ], [ %i.ic, %sdslen.exit255.thread289 ], [ %i.im, %sdslen.exit255 ]
  %i.io = phi i64 [ %i.ii, %sdslen.exit255.thread291 ], [ %i.hg, %sdslen.exit255.thread ], [ %i.hl, %sdslen.exit255.thread285 ], [ %i.ht, %sdslen.exit255.thread287 ], [ %i.ib, %sdslen.exit255.thread289 ], [ %i.im, %sdslen.exit255 ] ; 3 uses
  %.0.i257 = phi i64 [ %i.il, %sdslen.exit255.thread291 ], [ %i.hf, %sdslen.exit255.thread ], [ %i.hp, %sdslen.exit255.thread285 ], [ %i.hx, %sdslen.exit255.thread287 ], [ %i.if, %sdslen.exit255.thread289 ], [ 0, %sdslen.exit255 ]
  %.not236 = icmp ugt i64 %i.in, %.0.i257
  br i1 %.not236, label %bb.bb, label %bb.bc, !prof !89

bb.bb:                                            ; preds = %sdsalloc.exit258
  call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 864) #19
  call void @abort() #20
  unreachable

bb.bc:                                            ; preds = %sdsalloc.exit258
  %i.ip = icmp ne i32 %i.gk, 0
  %or.cond5 = select i1 %i.ip, i1 %.not229, i1 false
  br i1 %or.cond5, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.iq = getelementptr inbounds i8, ptr %i.da, i64 %i.io
  %i.ir = ptrtoint ptr %i.ch to i64
  %i.is = ptrtoint ptr %i.da to i64
  %i.it = sub i64 %i.ir, %i.is
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.iq, ptr nonnull align 1 %i.da, i64 %i.it, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !26
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.iu = phi ptr [ %.pre, %bb.bd ], [ %i.bq, %bb.bc ]
  call void @sdsIncrLen(ptr noundef %i.iu, i64 noundef %i.io) #19
  %sext = shl i64 %i.gi, 32
  %i.iv = ashr exact i64 %sext, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0182.lcssa, ptr nonnull align 1 %i.a, i64 %i.iv, i1 false)
  %i.iw = getelementptr inbounds i8, ptr %i.ch, i64 %i.io
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.ai, %bb.ag
  %.0181 = phi ptr [ %i.ch, %bb.ag ], [ %i.ch, %bb.ai ], [ %i.iw, %bb.be ] ; 2 uses
  %.not237 = icmp eq ptr %.0186.lcssa, null
  %i.ix = select i1 %.not237, ptr %i.br, ptr %.0186.lcssa ; 2 uses
  %i.iy = icmp ult ptr %i.ix, %.0181
  br i1 %i.iy, label %.lr.ph324, label %.critedge

.lr.ph324:                                        ; preds = %bb.bf, %.outer.backedge
  %.0180.ph328 = phi i32 [ %i.jb, %.outer.backedge ], [ 5, %bb.bf ]
  %.1.ph327 = phi ptr [ %.1322, %.outer.backedge ], [ %.0181, %bb.bf ]
  %.3185.ph326 = phi ptr [ %.3185.ph.be, %.outer.backedge ], [ %i.ix, %bb.bf ] ; 6 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.3185.ph326, i64 1 ; 9 uses
  %i.ja = ptrtoint ptr %.3185.ph326 to i64
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph324, %bb.bn
  %.0180323 = phi i32 [ %.0180.ph328, %.lr.ph324 ], [ %i.jb, %bb.bn ] ; 2 uses
  %.1322 = phi ptr [ %.1.ph327, %.lr.ph324 ], [ %i.jy, %bb.bn ] ; 5 uses
  %i.jb = add nsw i32 %.0180323, -1               ; 2 uses
  %.not238 = icmp eq i32 %.0180323, 0
  br i1 %.not238, label %.critedge, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jc = load i8, ptr %.3185.ph326, align 1, !tbaa !23 ; 2 uses
  %i.jd = zext i8 %i.jc to i32                    ; 3 uses
  %trunc = and i8 %i.jc, -64
  switch i8 %trunc, label %bb.bj [
    i8 64, label %bb.bi
    i8 0, label %.outer.backedge
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.je = getelementptr inbounds nuw i8, ptr %.3185.ph326, i64 2
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.bh, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bi
  %.3185.ph.be = phi ptr [ %i.je, %bb.bi ], [ %i.iz, %bb.bm ], [ %i.iz, %bb.bl ], [ %i.iz, %bb.bk ], [ %i.iz, %bb.bj ], [ %i.iz, %bb.bh ] ; 2 uses
  %i.jf = icmp ult ptr %.3185.ph.be, %.1322
  br i1 %i.jf, label %.lr.ph324, label %.critedge, !llvm.loop !88

bb.bj:                                            ; preds = %bb.bh
  %i.jg = icmp ult ptr %i.iz, %.1322
  br i1 %i.jg, label %bb.bk, label %.outer.backedge

bb.bk:                                            ; preds = %bb.bj
  %i.jh = load i8, ptr %i.iz, align 1, !tbaa !23  ; 2 uses
  %i.ji = zext i8 %i.jh to i32                    ; 2 uses
  %.not239 = icmp sgt i8 %i.jh, -1
  br i1 %.not239, label %.outer.backedge, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jj = and i32 %i.jd, 124
  %i.jk = xor i32 %i.ji, %i.jd
  %i.jl = and i32 %i.jk, 124
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %bb.bm, label %.outer.backedge

bb.bm:                                            ; preds = %bb.bl
  %i.jn = and i32 %i.jd, 3
  %i.jo = and i32 %i.ji, 3
  %i.jp = add nuw nsw i32 %i.jo, %i.jn            ; 2 uses
  %i.jq = icmp samesign ugt i32 %i.jp, 2
  br i1 %i.jq, label %.outer.backedge, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jr = add nuw nsw i32 %i.jp, 1
  %i.js = or i32 %i.jr, %i.jj
  %i.jt = trunc nuw nsw i32 %i.js to i8
  %i.ju = or disjoint i8 %i.jt, -128
  store i8 %i.ju, ptr %i.iz, align 1, !tbaa !23
  %i.jv = ptrtoint ptr %.1322 to i64
  %i.jw = sub i64 %i.jv, %i.ja
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.3185.ph326, ptr nonnull align 1 %i.iz, i64 %i.jw, i1 false)
  %i.jx = load ptr, ptr %i.c, align 8, !tbaa !26
  call void @sdsIncrLen(ptr noundef %i.jx, i64 noundef -1) #19
  %i.jy = getelementptr inbounds i8, ptr %.1322, i64 -1 ; 2 uses
  %i.jz = icmp ult ptr %.3185.ph326, %i.jy
  br i1 %i.jz, label %bb.bg, label %.critedge

.critedge:                                        ; preds = %.outer.backedge, %bb.bg, %bb.bn, %bb.bf
  %i.ka = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 15 ; 2 uses
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !23
  %i.kd = or i8 %i.kc, -128
  store i8 %i.kd, ptr %i.kb, align 1, !tbaa !23
  br label %.thread.thread

bb.bo:                                            ; preds = %sdslen.exit252, %bb.a
  %i.ke = call i32 @hllSparseToDense(ptr noundef %0)
  %i.kf = icmp eq i32 %i.ke, -1
  br i1 %i.kf, label %.thread.thread, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !26
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kj = mul nsw i64 %1, 6                       ; 2 uses
  %i.kk = sdiv i64 %i.kj, 8
  %i.kl = and i64 %i.kj, 6                        ; 4 uses
  %i.km = sub nuw nsw i64 8, %i.kl                ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kk ; 3 uses
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !23  ; 2 uses
  %i.kp = zext i8 %i.ko to i64
  %i.kq = getelementptr i8, ptr %i.kn, i64 1      ; 2 uses
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !23  ; 2 uses
  %i.ks = zext i8 %i.kr to i64
  %i.kt = lshr i64 %i.kp, %i.kl
  %i.ku = shl nuw nsw i64 %i.ks, %i.km
  %i.kv = or i64 %i.ku, %i.kt
  %i.kw = trunc nuw nsw i64 %i.kv to i32
  %i.kx = and i32 %i.kw, 63
  %i.ky = zext i8 %2 to i32
  %i.kz = icmp samesign ult i32 %i.kx, %i.ky
  br i1 %i.kz, label %hllDenseSet.exit, label %bb.bq

hllDenseSet.exit:                                 ; preds = %bb.bp
  %i.la = zext i8 %2 to i64                       ; 2 uses
  %i.lb = trunc nuw nsw i64 %i.kl to i8
  %i.lc = shl i8 63, %i.lb
  %i.ld = xor i8 %i.lc, -1
  %i.le = and i8 %i.ko, %i.ld
  %i.lf = shl nuw nsw i64 %i.la, %i.kl
  %i.lg = trunc i64 %i.lf to i8
  %i.lh = or i8 %i.le, %i.lg
  store i8 %i.lh, ptr %i.kn, align 1, !tbaa !23
  %i.li = trunc nuw nsw i64 %i.km to i16
  %i.lj = ashr i16 -64, %i.li
  %i.lk = trunc nsw i16 %i.lj to i8
  %i.ll = and i8 %i.kr, %i.lk
  %i.lm = lshr i64 %i.la, %i.km
  %i.ln = trunc nuw nsw i64 %i.lm to i8
  %i.lo = or i8 %i.ll, %i.ln
  store i8 %i.lo, ptr %i.kq, align 1, !tbaa !23
  br label %.thread.thread

bb.bq:                                            ; preds = %bb.bp
  call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 925) #19
  call void @abort() #20
  unreachable

.thread.thread:                                   ; preds = %bb.r, %sdslen.exit249, %hllDenseSet.exit, %bb.bo, %bb.ae, %.thread, %.critedge
  %.0 = phi i32 [ 0, %bb.ae ], [ -1, %bb.bo ], [ 1, %.critedge ], [ -1, %.thread ], [ 1, %hllDenseSet.exit ], [ -1, %sdslen.exit249 ], [ -1, %bb.r ]
  ret i32 %.0
}

declare ptr @sdsResize(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @sdsIncrLen(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @hllSparseAdd(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = mul i64 %2, -4132994306676758123
  %i.b = xor i64 %i.a, 2915580697                 ; 3 uses
  %i.c = and i64 %2, 7
  %i.d = and i64 %2, -8                           ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 %i.d       ; 3 uses
  %.not39.i.i = icmp samesign eq i64 %i.d, 0
  br i1 %.not39.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.f = add i64 %2, -8                           ; 2 uses
  %i.g = and i64 %i.f, 8
  %lcmp.mod.not.not = icmp eq i64 %i.g, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.h = load i64, ptr %1, align 8, !tbaa !21
  %i.i = mul i64 %i.h, -4132994306676758123       ; 2 uses
  %i.j = lshr i64 %i.i, 47
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, -4132994306676758123
  %i.m = xor i64 %i.l, %i.b
  %i.n = mul i64 %i.m, -4132994306676758123       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.preheader ], [ %i.n, %.lr.ph.i.i.prol ]
  %.041.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.preheader ], [ %i.o, %.lr.ph.i.i.prol ]
end_hunk_0

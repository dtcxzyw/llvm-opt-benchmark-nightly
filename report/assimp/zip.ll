Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/zip?download=true
inline.NumInlined: 193
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 56
begin_hunk_0_@tdefl_flush_block:bb.a
  %i.cm = lshr i32 %i.cj, 8                       ; 2 uses
  store i32 %i.cm, ptr %i.bb, align 8
  %i.cn = add i32 %i.ci, -8                       ; 3 uses
  store i32 %i.cn, ptr %i.ay, align 4
  %i.co = icmp ugt i32 %i.cn, 7
  br i1 %i.co, label %bb.k, label %.loopexit359

.loopexit359:                                     ; preds = %bb.m, %bb.g, %bb.h
  %i.cp = icmp eq i32 %1, 4                       ; 2 uses
  %i.cq = zext i1 %i.cp to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 51 uses
  %i.cs = load i32, ptr %i.cr, align 4            ; 2 uses
  %i.ct = shl nuw i32 %i.cq, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 51 uses
  %i.cv = load i32, ptr %i.cu, align 8
  %i.cw = or i32 %i.cv, %i.ct                     ; 3 uses
  store i32 %i.cw, ptr %i.cu, align 8
  %i.cx = add i32 %i.cs, 1                        ; 4 uses
  store i32 %i.cx, ptr %i.cr, align 4
  %i.cy = icmp ugt i32 %i.cx, 7
  %.pre443 = load ptr, ptr %i.aa, align 8         ; 2 uses
  br i1 %i.cy, label %.lr.ph365.preheader, label %._crit_edge366

.lr.ph365.preheader:                              ; preds = %.loopexit359
  %.pre440 = load ptr, ptr %i.ac, align 8
  br label %.lr.ph365

.lr.ph365:                                        ; preds = %.lr.ph365.preheader, %bb.o
  %i.cz = phi i32 [ %i.cx, %.lr.ph365.preheader ], [ %i.dl, %bb.o ]
  %i.da = phi i32 [ %i.cw, %.lr.ph365.preheader ], [ %i.dk, %bb.o ] ; 2 uses
  %i.db = phi ptr [ %.pre440, %.lr.ph365.preheader ], [ %i.di, %bb.o ] ; 2 uses
  %i.dc = phi ptr [ %.pre443, %.lr.ph365.preheader ], [ %i.dj, %bb.o ] ; 4 uses
  %i.dd = icmp ult ptr %i.dc, %i.db
  br i1 %i.dd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph365
  %i.de = trunc i32 %i.da to i8
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  store ptr %i.df, ptr %i.aa, align 8
  store i8 %i.de, ptr %i.dc, align 1
  %.pre437 = load ptr, ptr %i.aa, align 8
  %.pre439 = load ptr, ptr %i.ac, align 8
  %.pre441 = load i32, ptr %i.cu, align 8
  %.pre442 = load i32, ptr %i.cr, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph365
  %i.dg = phi i32 [ %.pre442, %bb.n ], [ %i.cz, %.lr.ph365 ]
  %i.dh = phi i32 [ %.pre441, %bb.n ], [ %i.da, %.lr.ph365 ]
  %i.di = phi ptr [ %.pre439, %bb.n ], [ %i.db, %.lr.ph365 ]
  %i.dj = phi ptr [ %.pre437, %bb.n ], [ %i.dc, %.lr.ph365 ] ; 2 uses
  %i.dk = lshr i32 %i.dh, 8                       ; 3 uses
  store i32 %i.dk, ptr %i.cu, align 8
  %i.dl = add i32 %i.dg, -8                       ; 4 uses
  store i32 %i.dl, ptr %i.cr, align 4
  %i.dm = icmp ugt i32 %i.dl, 7
  br i1 %i.dm, label %.lr.ph365, label %._crit_edge366

._crit_edge366:                                   ; preds = %bb.o, %.loopexit359
  %i.dn = phi i32 [ %i.cw, %.loopexit359 ], [ %i.dk, %bb.o ] ; 4 uses
  %.pre445 = phi ptr [ %.pre443, %.loopexit359 ], [ %i.dj, %bb.o ] ; 5 uses
  %storemerge317.lcssa = phi i32 [ %i.cx, %.loopexit359 ], [ %i.dl, %bb.o ] ; 3 uses
  br i1 %i.l, label %.thread346, label %bb.p

bb.p:                                             ; preds = %._crit_edge366
  %i.do = load i32, ptr %i.a, align 8
  %i.dp = and i32 %i.do, 262144
  %.not318 = icmp eq i32 %i.dp, 0
  br i1 %.not318, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = icmp ult i32 %i.dr, 48
  %i.dt = zext i1 %i.ds to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.du = phi i32 [ 1, %bb.p ], [ %i.dt, %bb.q ]
  %i.dv = tail call fastcc i32 @tdefl_compress_block(ptr noundef %0, i32 noundef %i.du)
  %i.dw = icmp eq i32 %i.dv, 0                    ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.dy = load i32, ptr %i.dx, align 4            ; 2 uses
  %.not319 = icmp eq i32 %i.dy, 0
  br i1 %.not319, label %bb.af, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dz = load ptr, ptr %i.aa, align 8
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %.pre445 to i64
  %reass.sub = sub i64 %i.ea, %i.eb
  %i.ec = add i64 %reass.sub, 1
  %i.ed = zext i32 %i.dy to i64
  %.not320 = icmp slt i64 %i.ec, %i.ed
  br i1 %.not320, label %bb.af, label %.thread346

.thread346:                                       ; preds = %._crit_edge366, %bb.s
  %.0289349 = phi i1 [ %i.dw, %bb.s ], [ true, %._crit_edge366 ]
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 8
  %i.ei = sub i32 %i.ef, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ek = load i32, ptr %i.ej, align 4
  %.not321 = icmp ugt i32 %i.ei, %i.ek
  br i1 %.not321, label %bb.af, label %bb.t

bb.t:                                             ; preds = %.thread346
  store ptr %.pre445, ptr %i.aa, align 8
  store i32 %i.dn, ptr %i.cu, align 8
  %i.el = add nuw nsw i32 %storemerge317.lcssa, 2 ; 2 uses
  store i32 %i.el, ptr %i.cr, align 4
  %i.em = icmp samesign ugt i32 %storemerge317.lcssa, 5
  br i1 %i.em, label %.lr.ph369.preheader, label %.preheader357

.lr.ph369.preheader:                              ; preds = %bb.t
  %.pre447 = load ptr, ptr %i.ac, align 8
  br label %.lr.ph369

.lr.ph369:                                        ; preds = %.lr.ph369.preheader, %bb.v
  %i.en = phi i32 [ %i.el, %.lr.ph369.preheader ], [ %i.ez, %bb.v ]
  %i.eo = phi i32 [ %i.dn, %.lr.ph369.preheader ], [ %i.ey, %bb.v ] ; 2 uses
  %i.ep = phi ptr [ %.pre447, %.lr.ph369.preheader ], [ %i.ew, %bb.v ] ; 2 uses
  %i.eq = phi ptr [ %.pre445, %.lr.ph369.preheader ], [ %i.ex, %bb.v ] ; 4 uses
  %i.er = icmp ult ptr %i.eq, %i.ep
  br i1 %i.er, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph369
  %i.es = trunc i32 %i.eo to i8
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  store ptr %i.et, ptr %i.aa, align 8
  store i8 %i.es, ptr %i.eq, align 1
  %.pre444 = load ptr, ptr %i.aa, align 8
  %.pre446 = load ptr, ptr %i.ac, align 8
  %.pre448 = load i32, ptr %i.cu, align 8
  %.pre449 = load i32, ptr %i.cr, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph369
  %i.eu = phi i32 [ %.pre449, %bb.u ], [ %i.en, %.lr.ph369 ]
  %i.ev = phi i32 [ %.pre448, %bb.u ], [ %i.eo, %.lr.ph369 ]
  %i.ew = phi ptr [ %.pre446, %bb.u ], [ %i.ep, %.lr.ph369 ]
  %i.ex = phi ptr [ %.pre444, %bb.u ], [ %i.eq, %.lr.ph369 ] ; 3 uses
  %i.ey = lshr i32 %i.ev, 8                       ; 4 uses
  store i32 %i.ey, ptr %i.cu, align 8
  %i.ez = add i32 %i.eu, -8                       ; 4 uses
  store i32 %i.ez, ptr %i.cr, align 4
  %i.fa = icmp ugt i32 %i.ez, 7
  br i1 %i.fa, label %.lr.ph369, label %._crit_edge370

._crit_edge370:                                   ; preds = %bb.v
  %i.fb = icmp eq i32 %i.ez, 0
  br i1 %i.fb, label %.lr.ph373, label %.preheader357

.preheader357:                                    ; preds = %bb.t, %._crit_edge370
  %i.fc = phi i32 [ %i.ey, %._crit_edge370 ], [ %i.dn, %bb.t ]
  %.pre451680 = phi ptr [ %i.ex, %._crit_edge370 ], [ %.pre445, %bb.t ]
  store i32 8, ptr %i.cr, align 4
  %.pre453 = load ptr, ptr %i.ac, align 8
  br label %bb.w

bb.w:                                             ; preds = %.preheader357, %bb.y
  %i.fd = phi i32 [ 8, %.preheader357 ], [ %i.fp, %bb.y ]
  %i.fe = phi i32 [ %i.fc, %.preheader357 ], [ %i.fo, %bb.y ] ; 2 uses
  %i.ff = phi ptr [ %.pre453, %.preheader357 ], [ %i.fm, %bb.y ] ; 2 uses
  %i.fg = phi ptr [ %.pre451680, %.preheader357 ], [ %i.fn, %bb.y ] ; 4 uses
  %i.fh = icmp ult ptr %i.fg, %i.ff
  br i1 %i.fh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fi = trunc i32 %i.fe to i8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 1
  store ptr %i.fj, ptr %i.aa, align 8
  store i8 %i.fi, ptr %i.fg, align 1
  %.pre450 = load ptr, ptr %i.aa, align 8
  %.pre452 = load ptr, ptr %i.ac, align 8
  %.pre454 = load i32, ptr %i.cu, align 8
  %.pre455 = load i32, ptr %i.cr, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fk = phi i32 [ %.pre455, %bb.x ], [ %i.fd, %bb.w ]
  %i.fl = phi i32 [ %.pre454, %bb.x ], [ %i.fe, %bb.w ]
  %i.fm = phi ptr [ %.pre452, %bb.x ], [ %i.ff, %bb.w ]
  %i.fn = phi ptr [ %.pre450, %bb.x ], [ %i.fg, %bb.w ] ; 2 uses
  %i.fo = lshr i32 %i.fl, 8                       ; 3 uses
  store i32 %i.fo, ptr %i.cu, align 8
  %i.fp = add i32 %i.fk, -8                       ; 4 uses
  store i32 %i.fp, ptr %i.cr, align 4
  %i.fq = icmp ugt i32 %i.fp, 7
  br i1 %i.fq, label %bb.w, label %.lr.ph373

.lr.ph386:                                        ; preds = %._crit_edge374.1
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %.lr.ph379

.lr.ph373:                                        ; preds = %bb.y, %._crit_edge370
  %.pre457 = phi ptr [ %i.ex, %._crit_edge370 ], [ %i.fn, %bb.y ] ; 3 uses
  %i.fs = phi i32 [ %i.ey, %._crit_edge370 ], [ %i.fo, %bb.y ]
  %i.ft = phi i32 [ 0, %._crit_edge370 ], [ %i.fp, %bb.y ] ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 6 uses
  %i.fv = load i32, ptr %i.fu, align 4            ; 2 uses
  %i.fw = and i32 %i.fv, 65535
  %i.fx = shl nuw nsw i32 %i.fw, %i.ft
  %i.fy = or i32 %i.fs, %i.fx                     ; 3 uses
  store i32 %i.fy, ptr %i.cu, align 8
  %i.fz = or disjoint i32 %i.ft, 16               ; 2 uses
  store i32 %i.fz, ptr %i.cr, align 4
  %i.ga = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.gb = icmp ult ptr %.pre457, %i.ga
  br i1 %i.gb, label %.lr.ph373.split, label %.lr.ph373.split.us.prol

.lr.ph373.split.us.prol:                          ; preds = %.lr.ph373
  %i.gc = lshr i32 %i.fy, 16
  br label %.lr.ph373.1

.lr.ph373.split:                                  ; preds = %.lr.ph373, %bb.aa
  %i.gd = phi i32 [ %i.gp, %bb.aa ], [ %i.fz, %.lr.ph373 ]
  %i.ge = phi i32 [ %i.go, %bb.aa ], [ %i.fy, %.lr.ph373 ] ; 2 uses
  %i.gf = phi ptr [ %i.gm, %bb.aa ], [ %i.ga, %.lr.ph373 ] ; 2 uses
  %i.gg = phi ptr [ %i.gn, %bb.aa ], [ %.pre457, %.lr.ph373 ] ; 4 uses
  %i.gh = icmp ult ptr %i.gg, %i.gf
  br i1 %i.gh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph373.split
  %i.gi = trunc i32 %i.ge to i8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 1
  store ptr %i.gj, ptr %i.aa, align 8
  store i8 %i.gi, ptr %i.gg, align 1
  %.pre456 = load ptr, ptr %i.aa, align 8
  %.pre458 = load ptr, ptr %i.ac, align 8
  %.pre460 = load i32, ptr %i.cu, align 8
  %.pre461 = load i32, ptr %i.cr, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph373.split
  %i.gk = phi i32 [ %.pre461, %bb.z ], [ %i.gd, %.lr.ph373.split ]
  %i.gl = phi i32 [ %.pre460, %bb.z ], [ %i.ge, %.lr.ph373.split ]
  %i.gm = phi ptr [ %.pre458, %bb.z ], [ %i.gf, %.lr.ph373.split ]
  %i.gn = phi ptr [ %.pre456, %bb.z ], [ %i.gg, %.lr.ph373.split ] ; 2 uses
  %i.go = lshr i32 %i.gl, 8                       ; 3 uses
  store i32 %i.go, ptr %i.cu, align 8
  %i.gp = add i32 %i.gk, -8                       ; 4 uses
  store i32 %i.gp, ptr %i.cr, align 4
  %i.gq = icmp ugt i32 %i.gp, 7
  br i1 %i.gq, label %.lr.ph373.split, label %._crit_edge374.loopexit, !llvm.loop !22

._crit_edge374.loopexit:                          ; preds = %bb.aa
  %.pre462 = load i32, ptr %i.fu, align 4
  br label %.lr.ph373.1

.lr.ph373.1:                                      ; preds = %.lr.ph373.split.us.prol, %._crit_edge374.loopexit
  %.pre464 = phi ptr [ %i.gn, %._crit_edge374.loopexit ], [ %.pre457, %.lr.ph373.split.us.prol ] ; 3 uses
  %i.gr = phi i32 [ %i.go, %._crit_edge374.loopexit ], [ %i.gc, %.lr.ph373.split.us.prol ]
  %i.gs = phi i32 [ %i.gp, %._crit_edge374.loopexit ], [ %i.ft, %.lr.ph373.split.us.prol ] ; 2 uses
  %i.gt = phi i32 [ %.pre462, %._crit_edge374.loopexit ], [ %i.fv, %.lr.ph373.split.us.prol ] ; 2 uses
  %i.gu = xor i32 %i.gt, 65535                    ; 2 uses
  store i32 %i.gu, ptr %i.fu, align 4
  %i.gv = and i32 %i.gu, 65535
  %i.gw = shl nuw nsw i32 %i.gv, %i.gs
  %i.gx = or i32 %i.gr, %i.gw                     ; 3 uses
  store i32 %i.gx, ptr %i.cu, align 8
  %i.gy = or disjoint i32 %i.gs, 16               ; 3 uses
  store i32 %i.gy, ptr %i.cr, align 4
  %i.gz = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ha = icmp ult ptr %.pre464, %i.gz
  br i1 %i.ha, label %.lr.ph373.split.1, label %.lr.ph373.split.us.1

.lr.ph373.split.us.1:                             ; preds = %.lr.ph373.1, %.lr.ph373.split.us.1
  %i.hb = phi i32 [ %i.he, %.lr.ph373.split.us.1 ], [ %i.gy, %.lr.ph373.1 ]
  %i.hc = phi i32 [ %i.hd, %.lr.ph373.split.us.1 ], [ %i.gx, %.lr.ph373.1 ]
  %i.hd = lshr i32 %i.hc, 8                       ; 3 uses
  %i.he = add i32 %i.hb, -8                       ; 4 uses
  %i.hf = icmp ugt i32 %i.he, 7
  br i1 %i.hf, label %.lr.ph373.split.us.1, label %._crit_edge374.split.us.1

._crit_edge374.split.us.1:                        ; preds = %.lr.ph373.split.us.1
  store i32 %i.hd, ptr %i.cu, align 8
  store i32 %i.he, ptr %i.cr, align 4
  br label %._crit_edge374.1

.lr.ph373.split.1:                                ; preds = %.lr.ph373.1, %bb.ac
  %i.hg = phi i32 [ %i.hs, %bb.ac ], [ %i.gy, %.lr.ph373.1 ]
  %i.hh = phi i32 [ %i.hr, %bb.ac ], [ %i.gx, %.lr.ph373.1 ] ; 2 uses
  %i.hi = phi ptr [ %i.hp, %bb.ac ], [ %i.gz, %.lr.ph373.1 ] ; 2 uses
  %i.hj = phi ptr [ %i.hq, %bb.ac ], [ %.pre464, %.lr.ph373.1 ] ; 4 uses
  %i.hk = icmp ult ptr %i.hj, %i.hi
  br i1 %i.hk, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph373.split.1
  %i.hl = trunc i32 %i.hh to i8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 1
  store ptr %i.hm, ptr %i.aa, align 8
  store i8 %i.hl, ptr %i.hj, align 1
  %.pre463 = load ptr, ptr %i.aa, align 8
  %.pre465 = load ptr, ptr %i.ac, align 8
  %.pre467 = load i32, ptr %i.cu, align 8
  %.pre468 = load i32, ptr %i.cr, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph373.split.1
  %i.hn = phi i32 [ %.pre468, %bb.ab ], [ %i.hg, %.lr.ph373.split.1 ]
  %i.ho = phi i32 [ %.pre467, %bb.ab ], [ %i.hh, %.lr.ph373.split.1 ]
  %i.hp = phi ptr [ %.pre465, %bb.ab ], [ %i.hi, %.lr.ph373.split.1 ]
  %i.hq = phi ptr [ %.pre463, %bb.ab ], [ %i.hj, %.lr.ph373.split.1 ] ; 2 uses
  %i.hr = lshr i32 %i.ho, 8                       ; 3 uses
  store i32 %i.hr, ptr %i.cu, align 8
  %i.hs = add i32 %i.hn, -8                       ; 4 uses
  store i32 %i.hs, ptr %i.cr, align 4
  %i.ht = icmp ugt i32 %i.hs, 7
  br i1 %i.ht, label %.lr.ph373.split.1, label %._crit_edge374.loopexit.1, !llvm.loop !22

._crit_edge374.loopexit.1:                        ; preds = %bb.ac
  %.pre469 = load i32, ptr %i.fu, align 4
  %i.hu = xor i32 %.pre469, 65535
  br label %._crit_edge374.1

._crit_edge374.1:                                 ; preds = %._crit_edge374.loopexit.1, %._crit_edge374.split.us.1
  %i.hv = phi ptr [ %i.hq, %._crit_edge374.loopexit.1 ], [ %.pre464, %._crit_edge374.split.us.1 ] ; 2 uses
  %i.hw = phi i32 [ %i.hr, %._crit_edge374.loopexit.1 ], [ %i.hd, %._crit_edge374.split.us.1 ]
  %i.hx = phi i32 [ %i.hs, %._crit_edge374.loopexit.1 ], [ %i.he, %._crit_edge374.split.us.1 ]
  %i.hy = phi i32 [ %i.hu, %._crit_edge374.loopexit.1 ], [ %i.gt, %._crit_edge374.split.us.1 ] ; 3 uses
  store i32 %i.hy, ptr %i.fu, align 4
  %.not409 = icmp eq i32 %i.hy, 0
  br i1 %.not409, label %.loopexit356, label %.lr.ph386

.lr.ph379:                                        ; preds = %._crit_edge380, %.lr.ph386
  %.pre471 = phi ptr [ %i.hv, %.lr.ph386 ], [ %.pre471538, %._crit_edge380 ] ; 3 uses
  %i.hz = phi ptr [ %i.hv, %.lr.ph386 ], [ %i.je, %._crit_edge380 ] ; 2 uses
  %i.ia = phi i32 [ %i.hy, %.lr.ph386 ], [ %i.jf, %._crit_edge380 ]
  %i.ib = phi i32 [ %i.hw, %.lr.ph386 ], [ %i.jg, %._crit_edge380 ]
  %i.ic = phi i32 [ %i.hx, %.lr.ph386 ], [ %i.jh, %._crit_edge380 ] ; 4 uses
  %.1385 = phi i32 [ 0, %.lr.ph386 ], [ %i.ji, %._crit_edge380 ] ; 2 uses
  %i.id = load i32, ptr %i.eg, align 8
  %i.ie = add i32 %i.id, %.1385
  %i.if = and i32 %i.ie, 32767
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1
  %i.ij = zext i8 %i.ii to i32
  %i.ik = shl nuw nsw i32 %i.ij, %i.ic
  %i.il = or i32 %i.ib, %i.ik                     ; 3 uses
  store i32 %i.il, ptr %i.cu, align 8
  %i.im = add nuw nsw i32 %i.ic, 8                ; 2 uses
  store i32 %i.im, ptr %i.cr, align 4
  %i.in = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.io = icmp ult ptr %i.hz, %i.in
  br i1 %i.io, label %.lr.ph379.split, label %._crit_edge380.split.us

._crit_edge380.split.us:                          ; preds = %.lr.ph379
  %i.ip = lshr i32 %i.il, 8                       ; 2 uses
  store i32 %i.ip, ptr %i.cu, align 8
  store i32 %i.ic, ptr %i.cr, align 4
  br label %._crit_edge380

.lr.ph379.split:                                  ; preds = %.lr.ph379, %bb.ae
  %.pre471539 = phi ptr [ %.pre471540, %bb.ae ], [ %.pre471, %.lr.ph379 ]
  %i.iq = phi i32 [ %i.jc, %bb.ae ], [ %i.im, %.lr.ph379 ]
  %i.ir = phi i32 [ %i.jb, %bb.ae ], [ %i.il, %.lr.ph379 ] ; 2 uses
  %i.is = phi ptr [ %i.iz, %bb.ae ], [ %i.in, %.lr.ph379 ] ; 2 uses
  %i.it = phi ptr [ %i.ja, %bb.ae ], [ %.pre471, %.lr.ph379 ] ; 4 uses
  %i.iu = icmp ult ptr %i.it, %i.is
  br i1 %i.iu, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph379.split
  %i.iv = trunc i32 %i.ir to i8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  store ptr %i.iw, ptr %i.aa, align 8
  store i8 %i.iv, ptr %i.it, align 1
  %.pre470 = load ptr, ptr %i.aa, align 8         ; 2 uses
  %.pre472 = load ptr, ptr %i.ac, align 8
  %.pre474 = load i32, ptr %i.cu, align 8
  %.pre475 = load i32, ptr %i.cr, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph379.split
  %.pre471540 = phi ptr [ %.pre470, %bb.ad ], [ %.pre471539, %.lr.ph379.split ] ; 2 uses
  %i.ix = phi i32 [ %.pre475, %bb.ad ], [ %i.iq, %.lr.ph379.split ]
  %i.iy = phi i32 [ %.pre474, %bb.ad ], [ %i.ir, %.lr.ph379.split ]
  %i.iz = phi ptr [ %.pre472, %bb.ad ], [ %i.is, %.lr.ph379.split ]
  %i.ja = phi ptr [ %.pre470, %bb.ad ], [ %i.it, %.lr.ph379.split ] ; 2 uses
  %i.jb = lshr i32 %i.iy, 8                       ; 3 uses
  store i32 %i.jb, ptr %i.cu, align 8
  %i.jc = add i32 %i.ix, -8                       ; 4 uses
  store i32 %i.jc, ptr %i.cr, align 4
  %i.jd = icmp ugt i32 %i.jc, 7
  br i1 %i.jd, label %.lr.ph379.split, label %._crit_edge380.loopexit, !llvm.loop !23

._crit_edge380.loopexit:                          ; preds = %bb.ae
  %.pre476 = load i32, ptr %i.fu, align 4
  br label %._crit_edge380

._crit_edge380:                                   ; preds = %._crit_edge380.loopexit, %._crit_edge380.split.us
  %.pre471538 = phi ptr [ %.pre471540, %._crit_edge380.loopexit ], [ %.pre471, %._crit_edge380.split.us ]
  %i.je = phi ptr [ %i.ja, %._crit_edge380.loopexit ], [ %i.hz, %._crit_edge380.split.us ]
  %i.jf = phi i32 [ %.pre476, %._crit_edge380.loopexit ], [ %i.ia, %._crit_edge380.split.us ] ; 2 uses
  %i.jg = phi i32 [ %i.jb, %._crit_edge380.loopexit ], [ %i.ip, %._crit_edge380.split.us ]
  %i.jh = phi i32 [ %i.jc, %._crit_edge380.loopexit ], [ %i.ic, %._crit_edge380.split.us ]
  %i.ji = add nuw i32 %.1385, 1                   ; 2 uses
  %i.jj = icmp ult i32 %i.ji, %i.jf
  br i1 %i.jj, label %.lr.ph379, label %.loopexit356

bb.af:                                            ; preds = %.thread346, %bb.s, %bb.r
  %.0289348 = phi i1 [ %.0289349, %.thread346 ], [ %i.dw, %bb.s ], [ %i.dw, %bb.r ]
  br i1 %.0289348, label %bb.ag, label %.loopexit356

bb.ag:                                            ; preds = %bb.af
  store ptr %.pre445, ptr %i.aa, align 8
  store i32 %i.dn, ptr %i.cu, align 8
  store i32 %storemerge317.lcssa, ptr %i.cr, align 4
  %i.jk = tail call fastcc i32 @tdefl_compress_block(ptr noundef %0, i32 noundef 1) ; 0 uses
  br label %.loopexit356

.loopexit356:                                     ; preds = %._crit_edge380, %._crit_edge374.1, %bb.af, %bb.ag
  %.not327 = icmp eq i32 %1, 0
  br i1 %.not327, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %.loopexit356
  %i.jl = load i32, ptr %i.cr, align 4            ; 2 uses
  br i1 %i.cp, label %bb.ai, label %bb.au

bb.ai:                                            ; preds = %bb.ah
  %.not333 = icmp eq i32 %i.jl, 0
  br i1 %.not333, label %.loopexit351, label %.preheader

.preheader:                                       ; preds = %bb.ai
  store i32 8, ptr %i.cr, align 4
  %.pre505 = load ptr, ptr %i.aa, align 8
  %.pre507 = load ptr, ptr %i.ac, align 8
  %.pre509.pre = load i32, ptr %i.cu, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %.preheader, %bb.al
  %.pre509 = phi i32 [ %.pre509.pre, %.preheader ], [ %i.jw, %bb.al ] ; 2 uses
  %i.jm = phi i32 [ 8, %.preheader ], [ %i.jx, %bb.al ]
  %i.jn = phi ptr [ %.pre507, %.preheader ], [ %i.ju, %bb.al ] ; 2 uses
  %i.jo = phi ptr [ %.pre505, %.preheader ], [ %i.jv, %bb.al ] ; 4 uses
  %i.jp = icmp ult ptr %i.jo, %i.jn
  br i1 %i.jp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.jq = trunc i32 %.pre509 to i8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 1
  store ptr %i.jr, ptr %i.aa, align 8
  store i8 %i.jq, ptr %i.jo, align 1
  %.pre504 = load ptr, ptr %i.aa, align 8
  %.pre506 = load ptr, ptr %i.ac, align 8
  %.pre508 = load i32, ptr %i.cu, align 8
  %.pre510 = load i32, ptr %i.cr, align 4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.js = phi i32 [ %.pre510, %bb.ak ], [ %i.jm, %bb.aj ]
  %i.jt = phi i32 [ %.pre508, %bb.ak ], [ %.pre509, %bb.aj ]
  %i.ju = phi ptr [ %.pre506, %bb.ak ], [ %i.jn, %bb.aj ]
  %i.jv = phi ptr [ %.pre504, %bb.ak ], [ %i.jo, %bb.aj ]
  %i.jw = lshr i32 %i.jt, 8                       ; 2 uses
  store i32 %i.jw, ptr %i.cu, align 8
  %i.jx = add i32 %i.js, -8                       ; 4 uses
  store i32 %i.jx, ptr %i.cr, align 4
  %i.jy = icmp ugt i32 %i.jx, 7
  br i1 %i.jy, label %bb.aj, label %.loopexit351

.loopexit351:                                     ; preds = %bb.al, %bb.ai
  %i.jz = phi i32 [ 0, %bb.ai ], [ %i.jx, %bb.al ] ; 3 uses
  %i.ka = load i32, ptr %i.a, align 8
  %i.kb = and i32 %i.ka, 4096
  %.not335 = icmp eq i32 %i.kb, 0
  br i1 %.not335, label %.loopexit, label %.lr.ph401

.lr.ph401:                                        ; preds = %.loopexit351
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.kd = load i32, ptr %i.kc, align 8            ; 4 uses
  %i.ke = lshr i32 %i.kd, 24
  %i.kf = shl nuw nsw i32 %i.ke, %i.jz
  %i.kg = load i32, ptr %i.cu, align 8
  %i.kh = or i32 %i.kg, %i.kf                     ; 3 uses
  store i32 %i.kh, ptr %i.cu, align 8
  %i.ki = or disjoint i32 %i.jz, 8                ; 2 uses
  store i32 %i.ki, ptr %i.cr, align 4
  %i.kj = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.kk = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.kl = icmp ult ptr %i.kj, %i.kk
  br i1 %i.kl, label %.lr.ph401.split, label %._crit_edge402.split.us

._crit_edge402.split.us:                          ; preds = %.lr.ph401
  %i.km = lshr i32 %i.kh, 8
  br label %.lr.ph401.1

.lr.ph401.split:                                  ; preds = %.lr.ph401, %bb.an
  %i.kn = phi i32 [ %i.kz, %bb.an ], [ %i.ki, %.lr.ph401 ]
  %i.ko = phi i32 [ %i.ky, %bb.an ], [ %i.kh, %.lr.ph401 ] ; 2 uses
  %i.kp = phi ptr [ %i.kw, %bb.an ], [ %i.kk, %.lr.ph401 ] ; 2 uses
  %i.kq = phi ptr [ %i.kx, %bb.an ], [ %i.kj, %.lr.ph401 ] ; 4 uses
  %i.kr = icmp ult ptr %i.kq, %i.kp
  br i1 %i.kr, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.lr.ph401.split
  %i.ks = trunc i32 %i.ko to i8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 1
  store ptr %i.kt, ptr %i.aa, align 8
  store i8 %i.ks, ptr %i.kq, align 1
  %.pre511 = load ptr, ptr %i.aa, align 8
  %.pre513 = load ptr, ptr %i.ac, align 8
  %.pre515 = load i32, ptr %i.cu, align 8
  %.pre516 = load i32, ptr %i.cr, align 4
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.lr.ph401.split
  %i.ku = phi i32 [ %.pre516, %bb.am ], [ %i.kn, %.lr.ph401.split ]
  %i.kv = phi i32 [ %.pre515, %bb.am ], [ %i.ko, %.lr.ph401.split ]
  %i.kw = phi ptr [ %.pre513, %bb.am ], [ %i.kp, %.lr.ph401.split ]
  %i.kx = phi ptr [ %.pre511, %bb.am ], [ %i.kq, %.lr.ph401.split ]
  %i.ky = lshr i32 %i.kv, 8                       ; 3 uses
  store i32 %i.ky, ptr %i.cu, align 8
  %i.kz = add i32 %i.ku, -8                       ; 4 uses
  store i32 %i.kz, ptr %i.cr, align 4
  %i.la = icmp ugt i32 %i.kz, 7
  br i1 %i.la, label %.lr.ph401.split, label %.lr.ph401.1, !llvm.loop !24

.lr.ph401.1:                                      ; preds = %bb.an, %._crit_edge402.split.us
  %i.lb = phi i32 [ %i.km, %._crit_edge402.split.us ], [ %i.ky, %bb.an ]
  %i.lc = phi i32 [ %i.jz, %._crit_edge402.split.us ], [ %i.kz, %bb.an ] ; 3 uses
  %i.ld = lshr i32 %i.kd, 16
  %i.le = and i32 %i.ld, 255
  %i.lf = shl nuw nsw i32 %i.le, %i.lc
  %i.lg = or i32 %i.lb, %i.lf                     ; 3 uses
  store i32 %i.lg, ptr %i.cu, align 8
  %i.lh = add nuw nsw i32 %i.lc, 8                ; 2 uses
  store i32 %i.lh, ptr %i.cr, align 4
  %i.li = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.lj = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.lk = icmp ult ptr %i.li, %i.lj
  br i1 %i.lk, label %.lr.ph401.split.1, label %._crit_edge402.split.us.1

._crit_edge402.split.us.1:                        ; preds = %.lr.ph401.1
  %i.ll = lshr i32 %i.lg, 8
  br label %.lr.ph401.2

.lr.ph401.split.1:                                ; preds = %.lr.ph401.1, %bb.ap
  %i.lm = phi i32 [ %i.ly, %bb.ap ], [ %i.lh, %.lr.ph401.1 ]
  %i.ln = phi i32 [ %i.lx, %bb.ap ], [ %i.lg, %.lr.ph401.1 ] ; 2 uses
  %i.lo = phi ptr [ %i.lv, %bb.ap ], [ %i.lj, %.lr.ph401.1 ] ; 2 uses
  %i.lp = phi ptr [ %i.lw, %bb.ap ], [ %i.li, %.lr.ph401.1 ] ; 4 uses
  %i.lq = icmp ult ptr %i.lp, %i.lo
  br i1 %i.lq, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph401.split.1
  %i.lr = trunc i32 %i.ln to i8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 1
  store ptr %i.ls, ptr %i.aa, align 8
  store i8 %i.lr, ptr %i.lp, align 1
  %.pre517 = load ptr, ptr %i.aa, align 8
  %.pre519 = load ptr, ptr %i.ac, align 8
  %.pre521 = load i32, ptr %i.cu, align 8
  %.pre522 = load i32, ptr %i.cr, align 4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph401.split.1
  %i.lt = phi i32 [ %.pre522, %bb.ao ], [ %i.lm, %.lr.ph401.split.1 ]
  %i.lu = phi i32 [ %.pre521, %bb.ao ], [ %i.ln, %.lr.ph401.split.1 ]
  %i.lv = phi ptr [ %.pre519, %bb.ao ], [ %i.lo, %.lr.ph401.split.1 ]
  %i.lw = phi ptr [ %.pre517, %bb.ao ], [ %i.lp, %.lr.ph401.split.1 ]
  %i.lx = lshr i32 %i.lu, 8                       ; 3 uses
  store i32 %i.lx, ptr %i.cu, align 8
  %i.ly = add i32 %i.lt, -8                       ; 4 uses
  store i32 %i.ly, ptr %i.cr, align 4
  %i.lz = icmp ugt i32 %i.ly, 7
  br i1 %i.lz, label %.lr.ph401.split.1, label %.lr.ph401.2, !llvm.loop !24

.lr.ph401.2:                                      ; preds = %bb.ap, %._crit_edge402.split.us.1
  %i.ma = phi i32 [ %i.ll, %._crit_edge402.split.us.1 ], [ %i.lx, %bb.ap ]
  %i.mb = phi i32 [ %i.lc, %._crit_edge402.split.us.1 ], [ %i.ly, %bb.ap ] ; 3 uses
  %i.mc = lshr i32 %i.kd, 8
  %i.md = and i32 %i.mc, 255
  %i.me = shl nuw nsw i32 %i.md, %i.mb
  %i.mf = or i32 %i.ma, %i.me                     ; 3 uses
  store i32 %i.mf, ptr %i.cu, align 8
  %i.mg = add nuw nsw i32 %i.mb, 8                ; 2 uses
  store i32 %i.mg, ptr %i.cr, align 4
  %i.mh = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.mi = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.mj = icmp ult ptr %i.mh, %i.mi
  br i1 %i.mj, label %.lr.ph401.split.2, label %._crit_edge402.split.us.2

._crit_edge402.split.us.2:                        ; preds = %.lr.ph401.2
  %i.mk = lshr i32 %i.mf, 8
  br label %.lr.ph401.3

.lr.ph401.split.2:                                ; preds = %.lr.ph401.2, %bb.ar
  %i.ml = phi i32 [ %i.mx, %bb.ar ], [ %i.mg, %.lr.ph401.2 ]
  %i.mm = phi i32 [ %i.mw, %bb.ar ], [ %i.mf, %.lr.ph401.2 ] ; 2 uses
  %i.mn = phi ptr [ %i.mu, %bb.ar ], [ %i.mi, %.lr.ph401.2 ] ; 2 uses
  %i.mo = phi ptr [ %i.mv, %bb.ar ], [ %i.mh, %.lr.ph401.2 ] ; 4 uses
  %i.mp = icmp ult ptr %i.mo, %i.mn
  br i1 %i.mp, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph401.split.2
  %i.mq = trunc i32 %i.mm to i8
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 1
  store ptr %i.mr, ptr %i.aa, align 8
  store i8 %i.mq, ptr %i.mo, align 1
  %.pre523 = load ptr, ptr %i.aa, align 8
  %.pre525 = load ptr, ptr %i.ac, align 8
  %.pre527 = load i32, ptr %i.cu, align 8
  %.pre528 = load i32, ptr %i.cr, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph401.split.2
  %i.ms = phi i32 [ %.pre528, %bb.aq ], [ %i.ml, %.lr.ph401.split.2 ]
  %i.mt = phi i32 [ %.pre527, %bb.aq ], [ %i.mm, %.lr.ph401.split.2 ]
  %i.mu = phi ptr [ %.pre525, %bb.aq ], [ %i.mn, %.lr.ph401.split.2 ]
  %i.mv = phi ptr [ %.pre523, %bb.aq ], [ %i.mo, %.lr.ph401.split.2 ]
  %i.mw = lshr i32 %i.mt, 8                       ; 3 uses
  store i32 %i.mw, ptr %i.cu, align 8
  %i.mx = add i32 %i.ms, -8                       ; 4 uses
  store i32 %i.mx, ptr %i.cr, align 4
  %i.my = icmp ugt i32 %i.mx, 7
  br i1 %i.my, label %.lr.ph401.split.2, label %.lr.ph401.3, !llvm.loop !24

.lr.ph401.3:                                      ; preds = %bb.ar, %._crit_edge402.split.us.2
  %i.mz = phi i32 [ %i.mk, %._crit_edge402.split.us.2 ], [ %i.mw, %bb.ar ]
  %i.na = phi i32 [ %i.mb, %._crit_edge402.split.us.2 ], [ %i.mx, %bb.ar ] ; 3 uses
  %i.nb = and i32 %i.kd, 255
  %i.nc = shl nuw nsw i32 %i.nb, %i.na
  %i.nd = or i32 %i.mz, %i.nc                     ; 3 uses
  store i32 %i.nd, ptr %i.cu, align 8
  %i.ne = add nuw nsw i32 %i.na, 8                ; 2 uses
  store i32 %i.ne, ptr %i.cr, align 4
  %i.nf = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ng = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.nh = icmp ult ptr %i.nf, %i.ng
  br i1 %i.nh, label %.lr.ph401.split.3, label %._crit_edge402.split.us.3

._crit_edge402.split.us.3:                        ; preds = %.lr.ph401.3
  %i.ni = lshr i32 %i.nd, 8
  br label %.loopexit.sink.split

.lr.ph401.split.3:                                ; preds = %.lr.ph401.3, %bb.at
  %i.nj = phi i32 [ %i.nv, %bb.at ], [ %i.ne, %.lr.ph401.3 ]
  %i.nk = phi i32 [ %i.nu, %bb.at ], [ %i.nd, %.lr.ph401.3 ] ; 2 uses
  %i.nl = phi ptr [ %i.ns, %bb.at ], [ %i.ng, %.lr.ph401.3 ] ; 2 uses
  %i.nm = phi ptr [ %i.nt, %bb.at ], [ %i.nf, %.lr.ph401.3 ] ; 4 uses
  %i.nn = icmp ult ptr %i.nm, %i.nl
  br i1 %i.nn, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph401.split.3
  %i.no = trunc i32 %i.nk to i8
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 1
  store ptr %i.np, ptr %i.aa, align 8
  store i8 %i.no, ptr %i.nm, align 1
  %.pre529 = load ptr, ptr %i.aa, align 8
  %.pre531 = load ptr, ptr %i.ac, align 8
  %.pre533 = load i32, ptr %i.cu, align 8
  %.pre534 = load i32, ptr %i.cr, align 4
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph401.split.3
  %i.nq = phi i32 [ %.pre534, %bb.as ], [ %i.nj, %.lr.ph401.split.3 ]
  %i.nr = phi i32 [ %.pre533, %bb.as ], [ %i.nk, %.lr.ph401.split.3 ]
  %i.ns = phi ptr [ %.pre531, %bb.as ], [ %i.nl, %.lr.ph401.split.3 ]
  %i.nt = phi ptr [ %.pre529, %bb.as ], [ %i.nm, %.lr.ph401.split.3 ]
  %i.nu = lshr i32 %i.nr, 8                       ; 2 uses
  store i32 %i.nu, ptr %i.cu, align 8
  %i.nv = add i32 %i.nq, -8                       ; 3 uses
  store i32 %i.nv, ptr %i.cr, align 4
  %i.nw = icmp ugt i32 %i.nv, 7
  br i1 %i.nw, label %.lr.ph401.split.3, label %.loopexit, !llvm.loop !24

bb.au:                                            ; preds = %bb.ah
  %i.nx = add i32 %i.jl, 3                        ; 4 uses
  store i32 %i.nx, ptr %i.cr, align 4
  %i.ny = icmp ugt i32 %i.nx, 7
  br i1 %i.ny, label %.lr.ph388.preheader, label %._crit_edge389

.lr.ph388.preheader:                              ; preds = %bb.au
  %.pre478 = load ptr, ptr %i.aa, align 8
  %.pre480 = load ptr, ptr %i.ac, align 8
  %.pre482.pre = load i32, ptr %i.cu, align 8
  br label %.lr.ph388

.lr.ph388:                                        ; preds = %.lr.ph388.preheader, %bb.aw
  %.pre482 = phi i32 [ %.pre482.pre, %.lr.ph388.preheader ], [ %i.oj, %bb.aw ] ; 2 uses
  %i.nz = phi i32 [ %i.nx, %.lr.ph388.preheader ], [ %i.ok, %bb.aw ]
  %i.oa = phi ptr [ %.pre480, %.lr.ph388.preheader ], [ %i.oh, %bb.aw ] ; 2 uses
  %i.ob = phi ptr [ %.pre478, %.lr.ph388.preheader ], [ %i.oi, %bb.aw ] ; 4 uses
  %i.oc = icmp ult ptr %i.ob, %i.oa
  br i1 %i.oc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.lr.ph388
  %i.od = trunc i32 %.pre482 to i8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ob, i64 1
  store ptr %i.oe, ptr %i.aa, align 8
  store i8 %i.od, ptr %i.ob, align 1
  %.pre477 = load ptr, ptr %i.aa, align 8
  %.pre479 = load ptr, ptr %i.ac, align 8
  %.pre481 = load i32, ptr %i.cu, align 8
  %.pre483 = load i32, ptr %i.cr, align 4
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.lr.ph388
  %i.of = phi i32 [ %.pre483, %bb.av ], [ %i.nz, %.lr.ph388 ]
  %i.og = phi i32 [ %.pre481, %bb.av ], [ %.pre482, %.lr.ph388 ]
  %i.oh = phi ptr [ %.pre479, %bb.av ], [ %i.oa, %.lr.ph388 ]
  %i.oi = phi ptr [ %.pre477, %bb.av ], [ %i.ob, %.lr.ph388 ]
  %i.oj = lshr i32 %i.og, 8                       ; 2 uses
  store i32 %i.oj, ptr %i.cu, align 8
  %i.ok = add i32 %i.of, -8                       ; 4 uses
  store i32 %i.ok, ptr %i.cr, align 4
  %i.ol = icmp ugt i32 %i.ok, 7
  br i1 %i.ol, label %.lr.ph388, label %._crit_edge389

._crit_edge389:                                   ; preds = %bb.aw, %bb.au
  %storemerge328.lcssa = phi i32 [ %i.nx, %bb.au ], [ %i.ok, %bb.aw ]
  %.not329 = icmp eq i32 %storemerge328.lcssa, 0
  br i1 %.not329, label %._crit_edge389..loopexit354_crit_edge, label %.preheader353

._crit_edge389..loopexit354_crit_edge:            ; preds = %._crit_edge389
  %.pre491 = load i32, ptr %i.cu, align 8
  br label %.lr.ph392

.preheader353:                                    ; preds = %._crit_edge389
  store i32 8, ptr %i.cr, align 4
  %.pre485 = load ptr, ptr %i.aa, align 8
  %.pre487 = load ptr, ptr %i.ac, align 8
  %.pre489.pre = load i32, ptr %i.cu, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %.preheader353, %bb.az
  %.pre489 = phi i32 [ %.pre489.pre, %.preheader353 ], [ %i.ow, %bb.az ] ; 2 uses
  %i.om = phi i32 [ 8, %.preheader353 ], [ %i.ox, %bb.az ]
  %i.on = phi ptr [ %.pre487, %.preheader353 ], [ %i.ou, %bb.az ] ; 2 uses
  %i.oo = phi ptr [ %.pre485, %.preheader353 ], [ %i.ov, %bb.az ] ; 4 uses
  %i.op = icmp ult ptr %i.oo, %i.on
  br i1 %i.op, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.oq = trunc i32 %.pre489 to i8
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 1
  store ptr %i.or, ptr %i.aa, align 8
  store i8 %i.oq, ptr %i.oo, align 1
  %.pre484 = load ptr, ptr %i.aa, align 8
  %.pre486 = load ptr, ptr %i.ac, align 8
  %.pre488 = load i32, ptr %i.cu, align 8
  %.pre490 = load i32, ptr %i.cr, align 4
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.os = phi i32 [ %.pre490, %bb.ay ], [ %i.om, %bb.ax ] ; 2 uses
  %i.ot = phi i32 [ %.pre488, %bb.ay ], [ %.pre489, %bb.ax ]
  %i.ou = phi ptr [ %.pre486, %bb.ay ], [ %i.on, %bb.ax ]
  %i.ov = phi ptr [ %.pre484, %bb.ay ], [ %i.oo, %bb.ax ]
  %i.ow = lshr i32 %i.ot, 8                       ; 3 uses
  store i32 %i.ow, ptr %i.cu, align 8
  %i.ox = add i32 %i.os, -8                       ; 3 uses
  store i32 %i.ox, ptr %i.cr, align 4
  %i.oy = icmp ugt i32 %i.ox, 7
  br i1 %i.oy, label %bb.ax, label %.loopexit354.loopexit

.loopexit354.loopexit:                            ; preds = %bb.az
  %i.oz = add nuw nsw i32 %i.os, 8
  br label %.lr.ph392

.lr.ph392:                                        ; preds = %.loopexit354.loopexit, %._crit_edge389..loopexit354_crit_edge
  %.promoted394 = phi i32 [ %i.ow, %.loopexit354.loopexit ], [ %.pre491, %._crit_edge389..loopexit354_crit_edge ] ; 3 uses
  %i.pa = phi i32 [ %i.oz, %.loopexit354.loopexit ], [ 16, %._crit_edge389..loopexit354_crit_edge ] ; 3 uses
  store i32 %.promoted394, ptr %i.cu, align 8
  store i32 %i.pa, ptr %i.cr, align 4
  %i.pb = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.pc = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.pd = icmp ult ptr %i.pb, %i.pc
  br i1 %i.pd, label %.lr.ph392.split, label %.lr.ph392.split.us

.lr.ph392.split.us:                               ; preds = %.lr.ph392, %.lr.ph392.split.us
  %i.pe = phi i32 [ %i.ph, %.lr.ph392.split.us ], [ %i.pa, %.lr.ph392 ]
  %i.pf = phi i32 [ %i.pg, %.lr.ph392.split.us ], [ %.promoted394, %.lr.ph392 ]
  %i.pg = lshr i32 %i.pf, 8                       ; 2 uses
  %i.ph = add i32 %i.pe, -8                       ; 3 uses
  %i.pi = icmp ugt i32 %i.ph, 7
  br i1 %i.pi, label %.lr.ph392.split.us, label %.lr.ph392.1

.lr.ph392.split:                                  ; preds = %.lr.ph392, %bb.bb
  %i.pj = phi i32 [ %i.pv, %bb.bb ], [ %i.pa, %.lr.ph392 ]
  %i.pk = phi i32 [ %i.pu, %bb.bb ], [ %.promoted394, %.lr.ph392 ] ; 2 uses
  %i.pl = phi ptr [ %i.ps, %bb.bb ], [ %i.pc, %.lr.ph392 ] ; 2 uses
  %i.pm = phi ptr [ %i.pt, %bb.bb ], [ %i.pb, %.lr.ph392 ] ; 4 uses
  %i.pn = icmp ult ptr %i.pm, %i.pl
  br i1 %i.pn, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.lr.ph392.split
  %i.po = trunc i32 %i.pk to i8
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pm, i64 1
  store ptr %i.pp, ptr %i.aa, align 8
  store i8 %i.po, ptr %i.pm, align 1
  %.pre492 = load ptr, ptr %i.aa, align 8
  %.pre494 = load ptr, ptr %i.ac, align 8
  %.pre496 = load i32, ptr %i.cu, align 8
  %.pre497 = load i32, ptr %i.cr, align 4
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.lr.ph392.split
  %i.pq = phi i32 [ %.pre497, %bb.ba ], [ %i.pj, %.lr.ph392.split ]
  %i.pr = phi i32 [ %.pre496, %bb.ba ], [ %i.pk, %.lr.ph392.split ]
  %i.ps = phi ptr [ %.pre494, %bb.ba ], [ %i.pl, %.lr.ph392.split ]
  %i.pt = phi ptr [ %.pre492, %bb.ba ], [ %i.pm, %.lr.ph392.split ]
  %i.pu = lshr i32 %i.pr, 8                       ; 3 uses
  store i32 %i.pu, ptr %i.cu, align 8
  %i.pv = add i32 %i.pq, -8                       ; 4 uses
  store i32 %i.pv, ptr %i.cr, align 4
  %i.pw = icmp ugt i32 %i.pv, 7
  br i1 %i.pw, label %.lr.ph392.split, label %.lr.ph392.1, !llvm.loop !25

.lr.ph392.1:                                      ; preds = %.lr.ph392.split.us, %bb.bb
  %i.px = phi i32 [ %i.pu, %bb.bb ], [ %i.pg, %.lr.ph392.split.us ]
  %i.py = phi i32 [ %i.pv, %bb.bb ], [ %i.ph, %.lr.ph392.split.us ] ; 3 uses
  %i.pz = shl nuw nsw i32 65535, %i.py
  %i.qa = or i32 %i.px, %i.pz                     ; 3 uses
  store i32 %i.qa, ptr %i.cu, align 8
  %i.qb = or disjoint i32 %i.py, 16               ; 2 uses
  store i32 %i.qb, ptr %i.cr, align 4
  %i.qc = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.qd = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.qe = icmp ult ptr %i.qc, %i.qd
  br i1 %i.qe, label %.lr.ph392.split.1, label %.lr.ph392.split.us.1.prol

.lr.ph392.split.us.1.prol:                        ; preds = %.lr.ph392.1
  %i.qf = lshr i32 %i.qa, 16
  br label %.loopexit.sink.split

.lr.ph392.split.1:                                ; preds = %.lr.ph392.1, %bb.bd
  %i.qg = phi i32 [ %i.qs, %bb.bd ], [ %i.qb, %.lr.ph392.1 ]
  %i.qh = phi i32 [ %i.qr, %bb.bd ], [ %i.qa, %.lr.ph392.1 ] ; 2 uses
  %i.qi = phi ptr [ %i.qp, %bb.bd ], [ %i.qd, %.lr.ph392.1 ] ; 2 uses
  %i.qj = phi ptr [ %i.qq, %bb.bd ], [ %i.qc, %.lr.ph392.1 ] ; 4 uses
  %i.qk = icmp ult ptr %i.qj, %i.qi
  br i1 %i.qk, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.lr.ph392.split.1
  %i.ql = trunc i32 %i.qh to i8
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 1
  store ptr %i.qm, ptr %i.aa, align 8
  store i8 %i.ql, ptr %i.qj, align 1
  %.pre498 = load ptr, ptr %i.aa, align 8
  %.pre500 = load ptr, ptr %i.ac, align 8
  %.pre502 = load i32, ptr %i.cu, align 8
  %.pre503 = load i32, ptr %i.cr, align 4
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.lr.ph392.split.1
  %i.qn = phi i32 [ %.pre503, %bb.bc ], [ %i.qg, %.lr.ph392.split.1 ]
  %i.qo = phi i32 [ %.pre502, %bb.bc ], [ %i.qh, %.lr.ph392.split.1 ]
  %i.qp = phi ptr [ %.pre500, %bb.bc ], [ %i.qi, %.lr.ph392.split.1 ]
  %i.qq = phi ptr [ %.pre498, %bb.bc ], [ %i.qj, %.lr.ph392.split.1 ]
  %i.qr = lshr i32 %i.qo, 8                       ; 2 uses
  store i32 %i.qr, ptr %i.cu, align 8
  %i.qs = add i32 %i.qn, -8                       ; 3 uses
  store i32 %i.qs, ptr %i.cr, align 4
  %i.qt = icmp ugt i32 %i.qs, 7
  br i1 %i.qt, label %.lr.ph392.split.1, label %.loopexit, !llvm.loop !25

.loopexit.sink.split:                             ; preds = %.lr.ph392.split.us.1.prol, %._crit_edge402.split.us.3
  %.lcssa689.sink = phi i32 [ %i.ni, %._crit_edge402.split.us.3 ], [ %i.qf, %.lr.ph392.split.us.1.prol ]
  %.lcssa688.sink = phi i32 [ %i.na, %._crit_edge402.split.us.3 ], [ %i.py, %.lr.ph392.split.us.1.prol ]
  store i32 %.lcssa689.sink, ptr %i.cu, align 8
  store i32 %.lcssa688.sink, ptr %i.cr, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bd, %bb.at, %.loopexit.sink.split, %.loopexit351, %.loopexit356
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 33226
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 37546
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 37547
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(640) %i.qu, i8 0, i64 640, i1 false)
  store ptr %i.qw, ptr %i.ap, align 8
  store ptr %i.qv, ptr %i.af, align 8
  store i32 8, ptr %i.aj, align 8
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.qy = load i32, ptr %i.qx, align 4
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ra = load i32, ptr %i.qz, align 8
  %i.rb = add i32 %i.ra, %i.qy
  store i32 %i.rb, ptr %i.qz, align 8
  store i32 0, ptr %i.qx, align 4
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.rd = load i32, ptr %i.rc, align 4
  %i.re = add i32 %i.rd, 1
  store i32 %i.re, ptr %i.rc, align 4
  %i.rf = load ptr, ptr %i.aa, align 8
  %i.rg = ptrtoint ptr %i.rf to i64
  %i.rh = ptrtoint ptr %i.z to i64
  %i.ri = sub i64 %i.rg, %i.rh                    ; 2 uses
  %i.rj = trunc i64 %i.ri to i32                  ; 4 uses
  %.not336 = icmp eq i32 %i.rj, 0
  br i1 %.not336, label %bb.bl, label %bb.be

bb.be:                                            ; preds = %.loopexit
  %i.rk = load ptr, ptr %0, align 8
  %.not337 = icmp eq ptr %i.rk, null
  br i1 %.not337, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.rm = load ptr, ptr %i.rl, align 8
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ro = load ptr, ptr %i.rn, align 8
  %i.rp = ptrtoint ptr %i.rm to i64
  %i.rq = ptrtoint ptr %i.ro to i64
  %i.rr = sub i64 %i.rp, %i.rq
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.rt = load ptr, ptr %i.rs, align 8
  store i64 %i.rr, ptr %i.rt, align 8
  %i.ru = load ptr, ptr %0, align 8
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 234154
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.rx = load ptr, ptr %i.rw, align 8
  %i.ry = tail call i32 %i.ru(ptr noundef nonnull %i.rv, i32 noundef %i.rj, ptr noundef %i.rx) #36
  %.not341 = icmp eq i32 %i.ry, 0
  br i1 %.not341, label %bb.bg, label %bb.bl

bb.bg:                                            ; preds = %bb.bf
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 -1, ptr %i.rz, align 4
  br label %bb.bm

bb.bh:                                            ; preds = %bb.be
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 234154 ; 2 uses
  %i.sb = icmp eq ptr %i.z, %i.sa
  %sext338 = shl i64 %i.ri, 32
  %i.sc = ashr exact i64 %sext338, 32             ; 2 uses
  br i1 %i.sb, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.se = load ptr, ptr %i.sd, align 8
  %i.sf = load i64, ptr %i.se, align 8
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.sh = load i64, ptr %i.sg, align 8            ; 2 uses
  %i.si = sub i64 %i.sf, %i.sh
  %. = tail call i64 @llvm.umin.i64(i64 %i.sc, i64 %i.si) ; 2 uses
  %i.sj = trunc i64 %. to i32                     ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.sl = load ptr, ptr %i.sk, align 8
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 %i.sh
  %sext339 = shl i64 %., 32
  %i.sn = ashr exact i64 %sext339, 32             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sm, ptr nonnull align 2 %i.sa, i64 %i.sn, i1 false)
  %i.so = load i64, ptr %i.sg, align 8
  %i.sp = add i64 %i.sn, %i.so
  store i64 %i.sp, ptr %i.sg, align 8
  %.not340 = icmp eq i32 %i.rj, %i.sj
  br i1 %.not340, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.sq = sub nsw i32 %i.rj, %i.sj
  store i32 %i.sj, ptr %i.ad, align 8
  store i32 %i.sq, ptr %i.ae, align 4
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bh
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.ss = load i64, ptr %i.sr, align 8
  %i.st = add i64 %i.ss, %i.sc
  store i64 %i.st, ptr %i.sr, align 8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bi, %bb.bj, %bb.bf, %bb.bk, %.loopexit
  %i.su = load i32, ptr %i.ae, align 4
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bg
  %.0290 = phi i32 [ %i.su, %bb.bl ], [ -1, %bb.bg ]
  ret i32 %.0290
}

; Function Attrs: nounwind uwtable
define i32 @tdefl_compress_buffer(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %2, ptr %i.a, align 8
  %i.b = call i32 @tdefl_compress(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, i32 noundef %3)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @tdefl_get_prev_return_status(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.b = load i32, ptr %i.a, align 4
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @tdefl_compress_mem_to_output(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp eq i64 %1, 0
  %i.c = icmp ne ptr %0, null
  %or.cond = or i1 %i.c, %i.b
  %i.d = icmp ne ptr %2, null
  %or.cond3 = and i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias dereferenceable_or_null(319352) ptr @malloc(i64 noundef 319352) #37 ; 28 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %3, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 %4, ptr %i.g, align 8
  %i.h = and i32 %4, 4095                         ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.j = lshr i32 %4, 14
  %.lobit.i = and i32 %i.j, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i32 %.lobit.i, ptr %i.k, align 4
  %i.l = lshr i32 %i.h, 2
  %i.m = trunc nuw nsw i32 %i.h to i16
  %i.n = insertelement <2 x i16> poison, i16 %i.m, i64 0
  %i.o = trunc nuw nsw i32 %i.l to i16
  %i.p = insertelement <2 x i16> %i.n, i16 %i.o, i64 1
  %i.q = add nuw nsw <2 x i16> %i.p, splat (i16 2)
  %i.r = udiv <2 x i16> %i.q, splat (i16 3)
  %i.s = add nuw nsw <2 x i16> %i.r, splat (i16 1)
  %i.t = zext nneg <2 x i16> %i.s to <2 x i32>
  store <2 x i32> %i.t, ptr %i.i, align 4
  %i.u = and i32 %4, 32768
  %.not.i = icmp eq i32 %i.u, 0                   ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 168618
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(65536) %i.v, i8 0, i64 65536, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 37546 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 37547
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.x, i8 0, i64 20, i1 false)
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %i.y, ptr %i.ab, align 8
  store i8 0, ptr %i.y, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i32 8, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 234154 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %i.ad, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 132
  store i32 0, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 108
  store i32 0, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i32 0, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 100
end_hunk_0
begin_hunk_1_@mz_zip_reader_init:bb.a
  store i32 24, ptr %i.c, align 4
  br label %.split

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 10 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not29.i = icmp eq ptr %i.e, null
  br i1 %.not29.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4
  %.not30.i = icmp eq i32 %i.g, 0
  br i1 %.not30.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 24, ptr %i.h, align 4
  br label %.split

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not31.i = icmp eq ptr %i.j, null
  br i1 %.not31.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr @miniz_def_alloc_func, ptr %i.i, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = phi ptr [ @miniz_def_alloc_func, %bb.g ], [ %i.j, %bb.f ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.not32.i = icmp eq ptr %i.m, null
  br i1 %.not32.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr @miniz_def_free_func, ptr %i.l, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %.not33.i = icmp eq ptr %i.o, null
  br i1 %.not33.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr @miniz_def_realloc_func, ptr %i.n, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call ptr %i.k(ptr noundef %i.r, i64 noundef 1, i64 noundef 152) #36, !inline_history !1 ; 3 uses
  store ptr %i.s, ptr %i.d, align 8
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %mz_zip_set_error.exit.i, label %bb.m

mz_zip_set_error.exit.i:                          ; preds = %bb.l
  store i32 16, ptr %i.p, align 4
  br label %.split

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.s, i8 0, i64 152, i1 false)
  %i.u = load ptr, ptr %i.d, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i32 1, ptr %i.v, align 8
  %i.w = load ptr, ptr %i.d, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store i32 4, ptr %i.x, align 8
  %i.y = load ptr, ptr %i.d, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  store i32 4, ptr %i.z, align 8
  %i.aa = load ptr, ptr %i.d, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  store i32 %2, ptr %i.ab, align 8
  %i.ac = load ptr, ptr %i.d, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 100
  store i32 0, ptr %i.ad, align 4
  %i.ae = load ptr, ptr %i.d, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  store i32 0, ptr %i.af, align 8
  store i32 1, ptr %i.f, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 1, ptr %i.ag, align 8
  store i64 %1, ptr %0, align 8
  %i.ah = tail call fastcc i32 @mz_zip_reader_read_central_dir(ptr noundef nonnull %0, i32 noundef %2)
  %.not15 = icmp eq i32 %i.ah, 0
  br i1 %.not15, label %bb.n, label %.split

bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %i.d, align 8             ; 7 uses
  %.not31.i18 = icmp eq ptr %i.ai, null
  br i1 %.not31.i18, label %.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %i.i, align 8
  %.not32.i19 = icmp eq ptr %i.aj, null
  br i1 %.not32.i19, label %.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not33.i20 = icmp eq ptr %i.ak, null
  br i1 %.not33.i20, label %.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = load i32, ptr %i.f, align 4
  %.not34.i = icmp eq i32 %i.al, 1
  br i1 %.not34.i, label %bb.r, label %.split

bb.r:                                             ; preds = %bb.q
  store ptr null, ptr %i.d, align 8
  %i.am = load ptr, ptr %i.q, align 8
  %i.an = load ptr, ptr %i.ai, align 8
  tail call void %i.ak(ptr noundef %i.am, ptr noundef %i.an) #36, !inline_history !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i8 0, i64 32, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.l, align 8
  %i.aq = load ptr, ptr %i.q, align 8
  %i.ar = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef %i.aq, ptr noundef %i.ar) #36, !inline_history !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i8 0, i64 32, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 64 ; 2 uses
  %i.at = load ptr, ptr %i.l, align 8
  %i.au = load ptr, ptr %i.q, align 8
  %i.av = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef %i.au, ptr noundef %i.av) #36, !inline_history !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i8 0, i64 32, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 112 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not35.i = icmp eq ptr %i.ax, null
  br i1 %.not35.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = load i32, ptr %i.ag, align 8
  %i.az = icmp eq i32 %i.ay, 4
  br i1 %i.az, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ba = tail call i32 @fclose(ptr noundef nonnull %i.ax) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store ptr null, ptr %i.aw, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %i.bb = load ptr, ptr %i.l, align 8
  %i.bc = load ptr, ptr %i.q, align 8
  tail call void %i.bb(ptr noundef %i.bc, ptr noundef nonnull %i.ai) #36, !inline_history !8
  store i32 0, ptr %i.f, align 4
  br label %.split

.split:                                           ; preds = %bb.e, %mz_zip_set_error.exit.i, %bb.v, %bb.q, %bb.p, %bb.o, %bb.n, %bb.a, %bb.m, %mz_zip_set_error.exit
  %.0 = phi i32 [ 0, %bb.v ], [ 0, %bb.a ], [ 1, %bb.m ], [ 0, %mz_zip_set_error.exit ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %mz_zip_set_error.exit.i ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @mz_zip_reader_read_central_dir(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = alloca [1024 x i32], align 16            ; 6 uses
  %i.b = alloca [1024 x i32], align 16            ; 10 uses
  %i.c = alloca [5 x i32], align 16               ; 7 uses
  %i.d = alloca [14 x i32], align 16              ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.e = and i32 %1, 2048
  %i.f = icmp eq i32 %i.e, 0                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  %i.g = load i64, ptr %0, align 8                ; 3 uses
  %i.h = icmp ult i64 %i.g, 22
  br i1 %i.h, label %mz_zip_set_error.exit430, label %bb.b

mz_zip_set_error.exit430:                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 8, ptr %i.i, align 4
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.j = tail call i64 @llvm.smax.i64(i64 %i.g, i64 4096) ; 2 uses
  %spec.select.i = add nsw i64 %i.j, -4096
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.m = sub nsw i64 4096, %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %i.n = phi i64 [ %i.af, %bb.h ], [ %i.g, %bb.b ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.h ], [ %i.m, %bb.b ] ; 2 uses
  %.045.i = phi i64 [ %i.ai, %bb.h ], [ %spec.select.i, %bb.b ] ; 6 uses
  %i.o = sub i64 %i.n, %.045.i                    ; 2 uses
  %spec.select5465.i = call i64 @llvm.umin.i64(i64 %i.o, i64 4096) ; 2 uses
  %i.p = load ptr, ptr %i.k, align 8
  %i.q = load ptr, ptr %i.l, align 8
  %i.r = call i64 %i.p(ptr noundef %i.q, i64 noundef %.045.i, ptr noundef nonnull %i.a, i64 noundef %spec.select5465.i) #36, !inline_history !26
  %.not.i439 = icmp eq i64 %i.r, %spec.select5465.i
  br i1 %.not.i439, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ugt i64 %i.o, 3
  br i1 %i.s, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.t = add i64 %indvars.iv.i, %i.n
  %umin.i = call i64 @llvm.umin.i64(i64 %i.t, i64 4096)
  %i.u = add nuw nsw i64 %umin.i, 4294967292
  %i.v = and i64 %i.u, 4294967295
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv71.i = phi i64 [ %i.v, %.lr.ph.i ], [ %indvars.iv.next72.i, %bb.g ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv71.i
  %i.x = load i32, ptr %i.w, align 1
  %i.y = icmp eq i32 %i.x, 101010256
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = load i64, ptr %0, align 8
  %i.aa = add i64 %indvars.iv71.i, %.045.i        ; 4 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp ugt i64 %i.ab, 21
  br i1 %i.ac, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next72.i = add nsw i64 %indvars.iv71.i, -1
  %i.ad = trunc nuw i64 %indvars.iv71.i to i32
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %bb.d
  %.not53.i = icmp eq i64 %.045.i, 0
  br i1 %.not53.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge.i
  %i.af = load i64, ptr %0, align 8               ; 2 uses
  %i.ag = sub i64 %i.af, %.045.i
  %i.ah = icmp ugt i64 %i.ag, 65556
  %i.ai = add i64 %.045.i, -4093
  %indvars.iv.next.i = add i64 %indvars.iv.i, 4093
  br i1 %i.ah, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.c, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.j

bb.i:                                             ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %.not.i427 = icmp eq ptr %0, null
  br i1 %.not.i427, label %.critedge, label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 7, ptr %i.aj, align 4
  br label %.critedge

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.ak = load ptr, ptr %i.k, align 8
  %i.al = load ptr, ptr %i.l, align 8
  %i.am = call i64 %i.ak(ptr noundef %i.al, i64 noundef %i.aa, ptr noundef nonnull %i.b, i64 noundef 22) #36
  %.not356 = icmp eq i64 %i.am, 22
  br i1 %.not356, label %bb.l, label %mz_zip_set_error.exit426

mz_zip_set_error.exit426:                         ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 20, ptr %i.an, align 4
  br label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ao = load i32, ptr %i.b, align 16
  %.not357 = icmp eq i32 %i.ao, 101010256
  br i1 %.not357, label %bb.m, label %mz_zip_set_error.exit424

mz_zip_set_error.exit424:                         ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 8, ptr %i.ap, align 4
  br label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.aq = icmp sgt i64 %i.aa, 75
  br i1 %i.aq, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %i.k, align 8
  %i.as = load ptr, ptr %i.l, align 8
  %i.at = add nsw i64 %i.aa, -20
  %i.au = call i64 %i.ar(ptr noundef %i.as, i64 noundef %i.at, ptr noundef nonnull %i.c, i64 noundef 20) #36
  %i.av = icmp eq i64 %i.au, 20
  %i.aw = load i32, ptr %i.c, align 16
  %i.ax = icmp eq i32 %i.aw, 117853008
  %or.cond482 = select i1 %i.av, i1 %i.ax, i1 false
  br i1 %or.cond482, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = zext i32 %i.bc to i64
  %i.be = shl nuw i64 %i.bd, 32
  %i.bf = or disjoint i64 %i.be, %i.ba            ; 2 uses
  %i.bg = load i64, ptr %0, align 8
  %i.bh = add i64 %i.bg, -56
  %i.bi = icmp ugt i64 %i.bf, %i.bh
  br i1 %i.bi, label %mz_zip_set_error.exit422, label %bb.p

mz_zip_set_error.exit422:                         ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 8, ptr %i.bj, align 4
  br label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.bk = load ptr, ptr %i.k, align 8
  %i.bl = load ptr, ptr %i.l, align 8
  %i.bm = call i64 %i.bk(ptr noundef %i.bl, i64 noundef %i.bf, ptr noundef nonnull %i.d, i64 noundef 56) #36
  %i.bn = icmp eq i64 %i.bm, 56
  %i.bo = load i32, ptr %i.d, align 16
  %i.bp = icmp eq i32 %i.bo, 101075792
  %or.cond484 = select i1 %i.bn, i1 %i.bp, i1 false
  br i1 %or.cond484, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 100
  store i32 1, ptr %i.bs, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.p, %bb.q, %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.bu = load i16, ptr %i.bt, align 2
  %i.bv = zext i16 %i.bu to i32                   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store i32 %i.bv, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.by = load i16, ptr %i.bx, align 8
  %i.bz = zext i16 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cb = load i16, ptr %i.ca, align 4
  %i.cc = zext i16 %i.cb to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.ce = load i16, ptr %i.cd, align 2
  %i.cf = zext i16 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cj = load i32, ptr %i.ci, align 16
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 11 uses
  %i.cm = load ptr, ptr %i.cl, align 8            ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 100
  %i.co = load i32, ptr %i.cn, align 4
  %.not358 = icmp eq i32 %i.co, 0
  br i1 %.not358, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.cq = load i32, ptr %i.cp, align 16           ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.db = load i32, ptr %i.da, align 8
  %i.dc = zext i32 %i.db to i64
  %i.dd = shl nuw i64 %i.dc, 32
  %i.de = or disjoint i64 %i.dd, %i.cz
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.dg = load i32, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = icmp ult i64 %i.de, 44
  br i1 %i.dj, label %mz_zip_set_error.exit420, label %bb.t

mz_zip_set_error.exit420:                         ; preds = %bb.s
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 9, ptr %i.dk, align 4
  br label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dm = load i32, ptr %i.dl, align 16
  %.not359 = icmp eq i32 %i.dm, 1
  br i1 %.not359, label %bb.u, label %mz_zip_set_error.exit418

mz_zip_set_error.exit418:                         ; preds = %bb.t
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 10, ptr %i.dn, align 4
  br label %.critedge
end_hunk_1
begin_hunk_2_@mz_zip_reader_extract_iter_read:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %.035.i, i64 1
  %i.bk = load i8, ptr %i.bj, align 1
  %.tr.i = trunc i32 %i.bh to i8
  %.narrow28.i = xor i8 %i.bk, %.tr.i
  %i.bl = zext i8 %.narrow28.i to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = xor i32 %i.bi, %i.bn                    ; 2 uses
  %i.bp = lshr i32 %i.bo, 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.035.i, i64 2
  %i.br = load i8, ptr %i.bq, align 1
  %.tr29.i = trunc i32 %i.bo to i8
  %.narrow30.i = xor i8 %i.br, %.tr29.i
  %i.bs = zext i8 %.narrow30.i to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = xor i32 %i.bp, %i.bu                    ; 2 uses
  %i.bw = lshr i32 %i.bv, 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.035.i, i64 3
  %i.by = load i8, ptr %i.bx, align 1
  %.tr31.i = trunc i32 %i.bv to i8
  %.narrow32.i = xor i8 %i.by, %.tr31.i
  %i.bz = zext i8 %.narrow32.i to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = xor i32 %i.bw, %i.cb                    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.035.i, i64 4 ; 2 uses
  %i.ce = add i64 %.02533.i, -4                   ; 3 uses
  %i.cf = icmp ugt i64 %i.ce, 3
  br i1 %i.cf, label %.lr.ph.i, label %.preheader.i

.lr.ph42.i:                                       ; preds = %.preheader.i
  %i.cg = lshr i32 %.023.lcssa.i, 8
  %i.ch = load i8, ptr %.0.lcssa.i, align 1
  %.124.tr.i = trunc i32 %.023.lcssa.i to i8
  %.narrow.i = xor i8 %i.ch, %.124.tr.i
  %i.ci = zext i8 %.narrow.i to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = xor i32 %i.ck, %i.cg                    ; 3 uses
  %.not.i140 = icmp eq i64 %.025.lcssa.i, 1
  br i1 %.not.i140, label %mz_crc32.exit, label %.lr.ph42.i.1

.lr.ph42.i.1:                                     ; preds = %.lr.ph42.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1
  %i.cn = lshr i32 %i.cl, 8
  %i.co = load i8, ptr %i.cm, align 1
  %.124.tr.i.1 = trunc i32 %i.cl to i8
  %.narrow.i.1 = xor i8 %i.co, %.124.tr.i.1
  %i.cp = zext i8 %.narrow.i.1 to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = xor i32 %i.cr, %i.cn                    ; 3 uses
  %.not.i140.1 = icmp eq i64 %.025.lcssa.i, 2
  br i1 %.not.i140.1, label %mz_crc32.exit, label %.lr.ph42.i.2

.lr.ph42.i.2:                                     ; preds = %.lr.ph42.i.1
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 2
  %i.cu = lshr i32 %i.cs, 8
  %i.cv = load i8, ptr %i.ct, align 1
  %.124.tr.i.2 = trunc i32 %i.cs to i8
  %.narrow.i.2 = xor i8 %i.cv, %.124.tr.i.2
  %i.cw = zext i8 %.narrow.i.2 to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = xor i32 %i.cy, %i.cu
  br label %mz_crc32.exit

mz_crc32.exit:                                    ; preds = %.lr.ph42.i, %.lr.ph42.i.1, %.lr.ph42.i.2, %.preheader.i.thread, %.preheader.i
  %.0105170173179 = phi i64 [ %., %.preheader.i ], [ 0, %.preheader.i.thread ], [ %., %.lr.ph42.i.2 ], [ %., %.lr.ph42.i.1 ], [ %., %.lr.ph42.i ]
  %i.da = phi ptr [ %i.ay, %.preheader.i ], [ %i.av, %.preheader.i.thread ], [ %i.ay, %.lr.ph42.i.2 ], [ %i.ay, %.lr.ph42.i.1 ], [ %i.ay, %.lr.ph42.i ]
  %.124.lcssa.i = phi i32 [ %.023.lcssa.i, %.preheader.i ], [ %i.ax, %.preheader.i.thread ], [ %i.cl, %.lr.ph42.i ], [ %i.cs, %.lr.ph42.i.1 ], [ %i.cz, %.lr.ph42.i.2 ]
  %i.db = xor i32 %.124.lcssa.i, -1
  store i32 %i.db, ptr %i.da, align 8
  br label %bb.m

bb.m:                                             ; preds = %.thread, %mz_crc32.exit, %bb.k
  %.0105169 = phi i64 [ 0, %.thread ], [ %.0105170173179, %mz_crc32.exit ], [ %., %bb.k ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dd = load <2 x i64>, ptr %i.dc, align 8
  %i.de = insertelement <2 x i64> poison, i64 %.0105169, i64 0
  %i.df = shufflevector <2 x i64> %i.de, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.dg = add <2 x i64> %i.dd, %i.df
  store <2 x i64> %i.dg, ptr %i.dc, align 8
  %i.dh = load i64, ptr %i.z, align 8
  %i.di = sub i64 %i.dh, %.0105169
  store i64 %i.di, ptr %i.z, align 8
  br label %.critedge

.critedge3:                                       ; preds = %.critedge3.preheader, %bb.y
  %.1106 = phi i64 [ %.4, %bb.y ], [ 0, %.critedge3.preheader ] ; 6 uses
  %i.dj = load ptr, ptr %i.m, align 8             ; 3 uses
  %i.dk = load i64, ptr %i.n, align 8
  %i.dl = and i64 %i.dk, 32767                    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dl ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.dn = sub nuw nsw i64 32768, %i.dl
  store i64 %i.dn, ptr %i.b, align 8
  %i.do = load i64, ptr %i.o, align 8             ; 2 uses
  %.not123 = icmp eq i64 %i.do, 0
  br i1 %.not123, label %bb.n, label %.thread180

bb.n:                                             ; preds = %.critedge3
  %i.dp = load i64, ptr %i.p, align 8             ; 2 uses
  %.not124 = icmp eq i64 %i.dp, 0
  br i1 %.not124, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.n
  %.pre202 = load i64, ptr %i.r, align 8
  br label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.dq = load ptr, ptr %0, align 8               ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 104
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 128
  %i.du = load ptr, ptr %i.dt, align 8
  %.not125 = icmp eq ptr %i.du, null
  %.pre203 = load i64, ptr %i.r, align 8          ; 2 uses
  br i1 %.not125, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.dv = load i64, ptr %i.q, align 8
  %.133 = tail call i64 @llvm.umin.i64(i64 %i.dv, i64 %.pre203) ; 2 uses
  store i64 %.133, ptr %i.p, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 96
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = load i64, ptr %i.s, align 8
  %i.eb = load ptr, ptr %i.t, align 8
  %i.ec = tail call i64 %i.dx(ptr noundef %i.dz, i64 noundef %i.ea, ptr noundef %i.eb, i64 noundef %.133) #36 ; 4 uses
  %i.ed = load i64, ptr %i.p, align 8
  %.not126 = icmp eq i64 %i.ec, %i.ed
  br i1 %.not126, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ee = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i136 = icmp eq ptr %i.ee, null
  br i1 %.not.i136, label %.thread182, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 28
  store i32 20, ptr %i.ef, align 4
  br label %.thread182

.thread182:                                       ; preds = %bb.r, %bb.q
  store i32 -1, ptr %i.w, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %.critedge

bb.s:                                             ; preds = %bb.p
  %i.eg = load i64, ptr %i.s, align 8
  %i.eh = add i64 %i.eg, %i.ec
  store i64 %i.eh, ptr %i.s, align 8
  %i.ei = load i64, ptr %i.r, align 8
  %i.ej = sub i64 %i.ei, %i.ec                    ; 2 uses
  store i64 %i.ej, ptr %i.r, align 8
  store i64 0, ptr %i.u, align 8
  %.pre = load ptr, ptr %i.m, align 8
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.o, %bb.s
  %i.ek = phi i64 [ %.pre202, %._crit_edge ], [ %.pre203, %bb.o ], [ %i.ej, %bb.s ]
  %i.el = phi ptr [ %i.dj, %._crit_edge ], [ %i.dj, %bb.o ], [ %.pre, %bb.s ]
  %i.em = phi i64 [ %i.dp, %._crit_edge ], [ 0, %bb.o ], [ %i.ec, %bb.s ]
  store i64 %i.em, ptr %i.a, align 8
  %i.en = load ptr, ptr %i.t, align 8
  %i.eo = load i64, ptr %i.u, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.eo
  %.not127 = icmp eq i64 %i.ek, 0
  %i.eq = select i1 %.not127, i32 0, i32 2
  %i.er = call i32 @tinfl_decompress(ptr noundef nonnull %i.v, ptr noundef %i.ep, ptr noundef nonnull %i.a, ptr noundef %i.el, ptr noundef %i.dm, ptr noundef nonnull %i.b, i32 noundef %i.eq)
  store i32 %i.er, ptr %i.w, align 4
  %i.es = load i64, ptr %i.a, align 8             ; 2 uses
  %i.et = load i64, ptr %i.p, align 8
  %i.eu = sub i64 %i.et, %i.es
  store i64 %i.eu, ptr %i.p, align 8
  %i.ev = load i64, ptr %i.u, align 8
  %i.ew = add i64 %i.ev, %i.es
  store i64 %i.ew, ptr %i.u, align 8
  %i.ex = load i64, ptr %i.b, align 8             ; 3 uses
  store i64 %i.ex, ptr %i.o, align 8
  %.not128 = icmp eq i64 %i.ex, 0
  br i1 %.not128, label %bb.x, label %.thread180

.thread180:                                       ; preds = %.critedge3, %bb.t
  %i.ey = phi i64 [ %i.ex, %bb.t ], [ %i.do, %.critedge3 ]
  %i.ez = sub i64 %2, %.1106
  %.134 = tail call i64 @llvm.umin.i64(i64 %i.ez, i64 %i.ey) ; 7 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 %.1106
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fa, ptr align 1 %i.dm, i64 %.134, i1 false)
  %i.fb = load i32, ptr %i.x, align 8
  %i.fc = xor i32 %i.fb, -1                       ; 2 uses
  %i.fd = icmp ugt i64 %.134, 3
  br i1 %i.fd, label %.lr.ph.i154, label %.preheader.i141

.preheader.i141:                                  ; preds = %.lr.ph.i154, %.thread180
  %.025.lcssa.i142 = phi i64 [ %.134, %.thread180 ], [ %i.gg, %.lr.ph.i154 ] ; 3 uses
  %.023.lcssa.i143 = phi i32 [ %i.fc, %.thread180 ], [ %i.ge, %.lr.ph.i154 ] ; 3 uses
  %.0.lcssa.i144 = phi ptr [ %i.dm, %.thread180 ], [ %i.gf, %.lr.ph.i154 ] ; 3 uses
  %.not38.i145 = icmp eq i64 %.025.lcssa.i142, 0
  br i1 %.not38.i145, label %mz_crc32.exit166, label %.lr.ph42.i146

.lr.ph.i154:                                      ; preds = %.thread180, %.lr.ph.i154
  %.035.i155 = phi ptr [ %i.gf, %.lr.ph.i154 ], [ %i.dm, %.thread180 ] ; 5 uses
  %.02334.i156 = phi i32 [ %i.ge, %.lr.ph.i154 ], [ %i.fc, %.thread180 ] ; 2 uses
  %.02533.i157 = phi i64 [ %i.gg, %.lr.ph.i154 ], [ %.134, %.thread180 ]
  %i.fe = lshr i32 %.02334.i156, 8
  %i.ff = load i8, ptr %.035.i155, align 1
  %.023.tr.i158 = trunc i32 %.02334.i156 to i8
  %.narrow27.i159 = xor i8 %i.ff, %.023.tr.i158
  %i.fg = zext i8 %.narrow27.i159 to i64
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = xor i32 %i.fi, %i.fe                    ; 2 uses
  %i.fk = lshr i32 %i.fj, 8
  %i.fl = getelementptr inbounds nuw i8, ptr %.035.i155, i64 1
  %i.fm = load i8, ptr %i.fl, align 1
  %.tr.i160 = trunc i32 %i.fj to i8
  %.narrow28.i161 = xor i8 %i.fm, %.tr.i160
  %i.fn = zext i8 %.narrow28.i161 to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4
  %i.fq = xor i32 %i.fk, %i.fp                    ; 2 uses
  %i.fr = lshr i32 %i.fq, 8
  %i.fs = getelementptr inbounds nuw i8, ptr %.035.i155, i64 2
  %i.ft = load i8, ptr %i.fs, align 1
  %.tr29.i162 = trunc i32 %i.fq to i8
  %.narrow30.i163 = xor i8 %i.ft, %.tr29.i162
  %i.fu = zext i8 %.narrow30.i163 to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4
  %i.fx = xor i32 %i.fr, %i.fw                    ; 2 uses
  %i.fy = lshr i32 %i.fx, 8
  %i.fz = getelementptr inbounds nuw i8, ptr %.035.i155, i64 3
  %i.ga = load i8, ptr %i.fz, align 1
  %.tr31.i164 = trunc i32 %i.fx to i8
  %.narrow32.i165 = xor i8 %i.ga, %.tr31.i164
  %i.gb = zext i8 %.narrow32.i165 to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4
  %i.ge = xor i32 %i.fy, %i.gd                    ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.035.i155, i64 4 ; 2 uses
  %i.gg = add i64 %.02533.i157, -4                ; 3 uses
  %i.gh = icmp ugt i64 %i.gg, 3
  br i1 %i.gh, label %.lr.ph.i154, label %.preheader.i141

.lr.ph42.i146:                                    ; preds = %.preheader.i141
  %3 = lshr i32 %.023.lcssa.i143, 8
  %4 = load i8, ptr %.0.lcssa.i144, align 1
  %.124.tr.i150 = trunc i32 %.023.lcssa.i143 to i8
  %.narrow.i151 = xor i8 %4, %.124.tr.i150
  %5 = zext i8 %.narrow.i151 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = xor i32 %7, %3                             ; 3 uses
  %.not.i152 = icmp eq i64 %.025.lcssa.i142, 1
  br i1 %.not.i152, label %mz_crc32.exit166, label %.lr.ph42.i146.a

.lr.ph42.i146.a:                                  ; preds = %.lr.ph42.i146
  %i.gi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i144, i64 1
  %i.gj = lshr i32 %8, 8
  %i.gk = load i8, ptr %i.gi, align 1
  %.124.tr.i150.1 = trunc i32 %8 to i8
  %.narrow.i151.1 = xor i8 %i.gk, %.124.tr.i150.1
  %i.gl = zext i8 %.narrow.i151.1 to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4
  %i.go = xor i32 %i.gn, %i.gj                    ; 3 uses
  %.not.i152.1 = icmp eq i64 %.025.lcssa.i142, 2
  br i1 %.not.i152.1, label %mz_crc32.exit166, label %.lr.ph42.i146.2

.lr.ph42.i146.2:                                  ; preds = %.lr.ph42.i146.a
  %9 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i144, i64 2
  %10 = lshr i32 %i.go, 8
  %11 = load i8, ptr %9, align 1
  %.124.tr.i150.2 = trunc i32 %i.go to i8
  %.narrow.i151.2 = xor i8 %11, %.124.tr.i150.2
  %12 = zext i8 %.narrow.i151.2 to i64
  %13 = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = xor i32 %14, %10
  br label %mz_crc32.exit166

mz_crc32.exit166:                                 ; preds = %.lr.ph42.i146, %.lr.ph42.i146.a, %.lr.ph42.i146.2, %.preheader.i141
  %.124.lcssa.i153 = phi i32 [ %.023.lcssa.i143, %.preheader.i141 ], [ %8, %.lr.ph42.i146 ], [ %i.go, %.lr.ph42.i146.a ], [ %15, %.lr.ph42.i146.2 ]
  %i.gp = xor i32 %.124.lcssa.i153, -1
  store i32 %i.gp, ptr %i.x, align 8
  %i.gq = load i64, ptr %i.o, align 8
  %i.gr = sub i64 %i.gq, %.134
  store i64 %i.gr, ptr %i.o, align 8
  %i.gs = load i64, ptr %i.n, align 8
  %i.gt = add i64 %i.gs, %.134                    ; 2 uses
  store i64 %i.gt, ptr %i.n, align 8
  %i.gu = load i64, ptr %i.y, align 8
  %.not129.not = icmp ugt i64 %i.gt, %i.gu
  br i1 %.not129.not, label %bb.u, label %bb.w

bb.u:                                             ; preds = %mz_crc32.exit166
  %i.gv = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i = icmp eq ptr %i.gv, null
  br i1 %.not.i, label %.thread216, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 28
  store i32 11, ptr %i.gw, align 4
  br label %.thread216

.thread216:                                       ; preds = %bb.v, %bb.u
  store i32 -1, ptr %i.w, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %.critedge

bb.w:                                             ; preds = %mz_crc32.exit166
  %i.gx = add i64 %.134, %.1106
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %.4 = phi i64 [ %.1106, %bb.t ], [ %i.gx, %bb.w ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.gy = icmp ult i64 %.4, %2
  br i1 %i.gy, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.gz = load i32, ptr %i.w, align 4
  %.off = add i32 %i.gz, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %.critedge3, label %.critedge

.critedge:                                        ; preds = %bb.y, %bb.x, %.thread216, %.thread182, %bb.m, %bb.a, %bb.b, %bb.c
  %.0107 = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %.0105169, %bb.m ], [ %.1106, %.thread182 ], [ %.1106, %.thread216 ], [ %.4, %bb.x ], [ %.4, %bb.y ]
  ret i64 %.0107
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mz_zip_reader_extract_iter_free(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not29 = icmp eq ptr %i.a, null
  br i1 %.not29, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %.not30 = icmp eq ptr %i.c, null
  br i1 %.not30, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 1024
  %.not31 = icmp eq i32 %i.i, 0
  br i1 %.not31, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load i64, ptr %i.l, align 8
  %.not32 = icmp eq i64 %i.k, %i.m
  br i1 %.not32, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9576
  %i.o = load i32, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load i32, ptr %i.p, align 8
  %.not33 = icmp eq i32 %i.o, %i.q
  br i1 %.not33, label %bb.h, label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.f
  %.sink = phi i32 [ 13, %bb.f ], [ 11, %bb.g ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %.sink, ptr %i.r, align 4
  store i32 -1, ptr %i.d, align 4
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g, %bb.e, %bb.d
  %i.s = load ptr, ptr %0, align 8                ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  %i.w = load ptr, ptr %i.v, align 8
  %.not34 = icmp eq ptr %i.w, null
  br i1 %.not34, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.y(ptr noundef %i.aa, ptr noundef %i.ac) #36
  %.pre38.pre = load ptr, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre38 = phi ptr [ %.pre38.pre, %bb.i ], [ %i.s, %bb.h ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not35 = icmp eq ptr %i.ae, null
  br i1 %.not35, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %.pre38, i64 48
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre38, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ag(ptr noundef %i.ai, ptr noundef nonnull %i.ae) #36
  %.pre = load ptr, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aj = phi ptr [ %.pre, %bb.k ], [ %.pre38, %bb.j ] ; 2 uses
  %i.ak = load i32, ptr %i.d, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.am(ptr noundef %i.ao, ptr noundef nonnull %0) #36
  %i.ap = icmp eq i32 %i.ak, 0
  %i.aq = zext i1 %i.ap to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.l
  %.0 = phi i32 [ %i.aq, %bb.l ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mz_zip_reader_extract_to_file(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %4 = alloca %struct.utimbuf, align 8            ; 5 uses
  %5 = alloca %struct.mz_zip_archive_file_stat, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %.not.i.i = icmp eq ptr %0, null                ; 4 uses
  br i1 %.not.i.i, label %mz_zip_reader_file_stat.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not10.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i, label %mz_zip_reader_file_stat.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %.not11.i.i = icmp ult i32 %1, %i.d
  br i1 %.not11.i.i, label %bb.d, label %mz_zip_reader_file_stat.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = zext i32 %1 to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  br label %mz_zip_reader_file_stat.exit

mz_zip_reader_file_stat.exit:                     ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.l, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  %i.m = call fastcc range(i32 0, 2) i32 @mz_zip_file_stat_internal(ptr noundef %0, i32 noundef %1, ptr noundef %.0.i.i, ptr noundef nonnull %5, ptr noundef null)
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %mz_zip_set_error.exit26, label %bb.e

bb.e:                                             ; preds = %mz_zip_reader_file_stat.exit
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 68
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, 0
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 76
  %i.r = load i32, ptr %i.q, align 4
end_hunk_2
begin_hunk_3_@mz_zip_writer_end_internal:bb.a

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 24, ptr %i.j, align 4
  br label %mz_zip_set_error.exit48

bb.h:                                             ; preds = %bb.e
  store ptr null, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.b, align 8
  tail call void %i.f(ptr noundef %i.l, ptr noundef %i.m) #36, !inline_history !0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.e, align 8
  %i.p = load ptr, ptr %i.k, align 8
  %i.q = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef %i.p, ptr noundef %i.q) #36, !inline_history !0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8
  %i.t = load ptr, ptr %i.k, align 8
  %i.u = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef %i.t, ptr noundef %i.u) #36, !inline_history !0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not43 = icmp eq ptr %i.w, null
  br i1 %.not43, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i32, ptr %i.x, align 8
  %i.z = icmp eq i32 %i.y, 4
  br i1 %i.z, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call i32 @fclose(ptr noundef nonnull %i.w)
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.not44 = icmp eq i32 %1, 0
  br i1 %.not44, label %bb.l, label %mz_zip_set_error.exit

mz_zip_set_error.exit:                            ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 21, ptr %i.ac, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %mz_zip_set_error.exit, %bb.j, %bb.i
  %.0 = phi i32 [ 1, %bb.i ], [ 1, %bb.j ], [ 0, %mz_zip_set_error.exit ], [ 0, %bb.k ]
  store ptr null, ptr %i.v, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %.1 = phi i32 [ %.0, %bb.l ], [ 1, %bb.h ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp eq ptr %i.ae, @mz_zip_heap_write_func
  br i1 %i.af, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not45 = icmp eq ptr %i.ah, null
  br i1 %.not45, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %i.e, align 8
  %i.aj = load ptr, ptr %i.k, align 8
  tail call void %i.ai(ptr noundef %i.aj, ptr noundef nonnull %i.ah) #36
  store ptr null, ptr %i.ag, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.ak = load ptr, ptr %i.e, align 8
  %i.al = load ptr, ptr %i.k, align 8
  tail call void %i.ak(ptr noundef %i.al, ptr noundef nonnull %i.b) #36
  store i32 0, ptr %i.g, align 4
  br label %mz_zip_set_error.exit48

mz_zip_set_error.exit48:                          ; preds = %bb.f, %bb.a, %bb.g, %bb.p
  %.033 = phi i32 [ %.1, %bb.p ], [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.g ]
  ret i32 %.033
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mz_zip_writer_init_heap(ptr noundef initializes((80, 96)) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @mz_zip_heap_write_func, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 9 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not40.i = icmp eq ptr %i.e, null
  br i1 %.not40.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %.not42.i = icmp eq i32 %i.g, 0
  br i1 %.not42.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 24, ptr %i.h, align 4
  br label %mz_zip_writer_init_heap_v2.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i64, ptr %i.i, align 8
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.j)
  %.not46.i = icmp samesign ult i64 %i.k, 2
  br i1 %.not46.i, label %bb.e, label %mz_zip_set_error.exit51.i

mz_zip_set_error.exit51.i:                        ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 24, ptr %i.l, align 4
  br label %mz_zip_writer_init_heap_v2.exit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not47.i = icmp eq ptr %i.n, null
  br i1 %.not47.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr @miniz_def_alloc_func, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = phi ptr [ @miniz_def_alloc_func, %bb.f ], [ %i.n, %bb.e ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %.not48.i = icmp eq ptr %i.q, null
  br i1 %.not48.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr @miniz_def_free_func, ptr %i.p, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %.not49.i = icmp eq ptr %i.s, null
  br i1 %.not49.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr @miniz_def_realloc_func, ptr %i.r, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i64 %1, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call ptr %i.o(ptr noundef %i.w, i64 noundef 1, i64 noundef 152) #36, !inline_history !10 ; 3 uses
  store ptr %i.x, ptr %i.d, align 8
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %mz_zip_set_error.exit.i3, label %bb.l

mz_zip_set_error.exit.i3:                         ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 16, ptr %i.z, align 4
  br label %mz_zip_writer_init_heap_v2.exit

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.x, i8 0, i64 152, i1 false)
  %i.aa = load ptr, ptr %i.d, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i32 1, ptr %i.ab, align 8
  %i.ac = load ptr, ptr %i.d, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store i32 4, ptr %i.ad, align 8
  %i.ae = load ptr, ptr %i.d, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  store i32 4, ptr %i.af, align 8
  %i.ag = load ptr, ptr %i.d, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 100
  store i32 0, ptr %i.ah, align 4
  %i.ai = load ptr, ptr %i.d, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  store i32 0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 2, ptr %i.f, align 4
  store i32 3, ptr %i.ak, align 8
  %i.al = tail call i64 @llvm.umax.i64(i64 %2, i64 %1) ; 3 uses
  %.not24.i = icmp eq i64 %i.al, 0
  br i1 %.not24.i, label %mz_zip_writer_init_heap_v2.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %i.m, align 8
  %i.an = load ptr, ptr %i.v, align 8
  %i.ao = tail call ptr %i.am(ptr noundef %i.an, i64 noundef 1, i64 noundef %i.al) #36, !inline_history !27 ; 2 uses
  %i.ap = load ptr, ptr %i.d, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 128
  store ptr %i.ao, ptr %i.aq, align 8
  %i.ar = icmp eq ptr %i.ao, null
  br i1 %i.ar, label %mz_zip_set_error.exit.i, label %bb.n

mz_zip_set_error.exit.i:                          ; preds = %bb.m
  %i.as = tail call fastcc i32 @mz_zip_writer_end_internal(ptr noundef nonnull %0, i32 noundef 0) ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 16, ptr %i.at, align 4
  br label %mz_zip_writer_init_heap_v2.exit

bb.n:                                             ; preds = %bb.m
  %i.au = load ptr, ptr %i.d, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  store i64 %i.al, ptr %i.av, align 8
  br label %mz_zip_writer_init_heap_v2.exit

mz_zip_writer_init_heap_v2.exit:                  ; preds = %mz_zip_set_error.exit.i3, %mz_zip_set_error.exit51.i, %bb.c, %bb.l, %mz_zip_set_error.exit.i, %bb.n
  %.0.i = phi i32 [ 0, %mz_zip_set_error.exit.i ], [ 1, %bb.l ], [ 1, %bb.n ], [ 0, %bb.c ], [ 0, %mz_zip_set_error.exit51.i ], [ 0, %mz_zip_set_error.exit.i3 ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mz_zip_writer_init_file(ptr noundef initializes((80, 96)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call i32 @mz_zip_writer_init_file_v2(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mz_zip_writer_init_file_v2(ptr noundef initializes((80, 96)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr @mz_zip_file_write_func, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.c, align 8
  %i.d = and i32 %3, 32768
  %.not = icmp eq i32 %i.d, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @mz_zip_file_read_func, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %0, ptr %i.f, align 8
  %i.g = tail call i32 @mz_zip_writer_init_v2(ptr noundef nonnull %0, i64 noundef %2, i32 noundef %3)
  %.not43 = icmp eq i32 %i.g, 0
  br i1 %.not43, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = select i1 %.not, ptr @.str.17, ptr @.str.18
  %i.i = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull %i.h) ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %mz_zip_set_error.exit48, label %bb.e

mz_zip_set_error.exit48:                          ; preds = %bb.d
  %i.k = tail call fastcc range(i32 0, 2) i32 @mz_zip_writer_end_internal(ptr noundef nonnull %0, i32 noundef 1) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 17, ptr %i.l, align 4
  br label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  store ptr %i.i, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 4, ptr %i.p, align 8
  %.not44 = icmp eq i64 %2, 0
  br i1 %.not44, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.038 = phi i64 [ %2, %bb.f ], [ %i.v, %bb.h ]  ; 2 uses
  %.0 = phi i64 [ 0, %bb.f ], [ %i.u, %bb.h ]     ; 2 uses
  %i.q = call i64 @llvm.umin.i64(i64 %.038, i64 4096) ; 4 uses
  %i.r = load ptr, ptr %i.b, align 8
  %i.s = load ptr, ptr %i.f, align 8
  %i.t = call i64 %i.r(ptr noundef %i.s, i64 noundef %.0, ptr noundef nonnull %i.a, i64 noundef %i.q) #36
  %.not45 = icmp eq i64 %i.t, %i.q
  br i1 %.not45, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.u = add i64 %.0, %i.q
  %i.v = sub nuw i64 %.038, %i.q                  ; 2 uses
  %.not46 = icmp eq i64 %i.v, 0
  br i1 %.not46, label %bb.i, label %bb.g

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.j

.critedge:                                        ; preds = %bb.g
  %i.w = call fastcc range(i32 0, 2) i32 @mz_zip_writer_end_internal(ptr noundef nonnull %0, i32 noundef 1) ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 19, ptr %i.x, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i, %.critedge, %bb.c, %mz_zip_set_error.exit48
  %.2 = phi i32 [ 0, %mz_zip_set_error.exit48 ], [ 0, %bb.c ], [ 0, %.critedge ], [ 1, %bb.i ], [ 1, %bb.e ]
  ret i32 %.2
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i64 @mz_zip_file_write_func(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i64 @ftello(ptr noundef %i.d)
  %i.f = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.h = load i64, ptr %i.g, align 8
  %i.i = add i64 %i.h, %1                         ; 3 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %mz_zip_set_error.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.e, %i.i
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call i32 @fseeko(ptr noundef %i.l, i64 noundef %i.i, i32 noundef 0)
  %.not14 = icmp eq i32 %i.m, 0
  br i1 %.not14, label %._crit_edge, label %mz_zip_set_error.exit

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.d

mz_zip_set_error.exit:                            ; preds = %bb.c, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 22, ptr %i.n, align 4
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.o = phi ptr [ %.pre, %._crit_edge ], [ %i.f, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i64 @fwrite(ptr noundef %2, i64 noundef 1, i64 noundef %3, ptr noundef %i.q)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %mz_zip_set_error.exit
  %.0 = phi i64 [ 0, %mz_zip_set_error.exit ], [ %i.r, %bb.d ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mz_zip_writer_end(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call fastcc i32 @mz_zip_writer_end_internal(ptr noundef %0, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mz_zip_writer_init_cfile(ptr noundef initializes((80, 96)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @mz_zip_file_write_func, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.b, align 8
  %i.c = and i32 %2, 32768
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @mz_zip_file_read_func, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %0, ptr %i.e, align 8
  %i.f = tail call i32 @mz_zip_writer_init_v2(ptr noundef nonnull %0, i64 noundef 0, i32 noundef %2)
  %.not13 = icmp eq i32 %i.f, 0
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store ptr %1, ptr %i.i, align 8
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call i64 @ftello(ptr noundef %i.l)
  %i.n = load ptr, ptr %i.g, align 8
end_hunk_3
begin_hunk_4_@zip_entry_write:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.a, %bb.g
  %.0 = phi i32 [ -8, %bb.d ], [ 0, %bb.g ], [ -1, %bb.a ], [ -12, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -16, 1) i32 @zip_entry_fwrite(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca [65536 x i8], align 16            ; 5 uses
  %2 = alloca %struct.stat, align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65536) %i.a, i8 0, i64 65536, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %2, i8 0, i64 144, i1 false)
  %i.b = call i32 @stat(ptr noundef %1, ptr noundef nonnull %2) #36
  %.not23 = icmp eq i32 %i.b, 0
  br i1 %.not23, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = trunc i32 %i.d to i16                    ; 2 uses
  %i.f = and i16 %i.e, 4095
  %i.g = and i32 %i.d, 61440                      ; 7 uses
  %i.h = icmp eq i32 %i.g, 16384                  ; 2 uses
  %spec.select = select i1 %i.h, i16 %i.e, i16 %i.f ; 2 uses
  %i.i = icmp eq i32 %i.g, 32768
  %i.j = or i16 %spec.select, -32768
  %.1 = select i1 %i.i, i16 %i.j, i16 %spec.select ; 2 uses
  %i.k = icmp eq i32 %i.g, 40960
  %i.l = or i16 %.1, -24576
  %.2 = select i1 %i.k, i16 %i.l, i16 %.1         ; 2 uses
  %i.m = icmp eq i32 %i.g, 24576
  %i.n = or i16 %.2, 24576
  %.3 = select i1 %i.m, i16 %i.n, i16 %.2         ; 2 uses
  %i.o = icmp eq i32 %i.g, 8192
  %i.p = or i16 %.3, 8192
  %.4 = select i1 %i.o, i16 %i.p, i16 %.3         ; 2 uses
  %i.q = icmp eq i32 %i.g, 4096
  %i.r = or i16 %.4, 4096
  %.5 = select i1 %i.q, i16 %i.r, i16 %.4         ; 2 uses
  %i.s = icmp eq i32 %i.g, 49152
  %i.t = or i16 %.5, -16384
  %.6 = select i1 %i.s, i16 %i.t, i16 %.5
  %i.u = zext i16 %.6 to i32
  %i.v = shl nuw i32 %i.u, 16
  %i.w = lshr i32 %i.d, 7
  %.lobit = and i32 %i.w, 1
  %i.x = or disjoint i32 %i.v, %.lobit
  %i.y = xor i32 %i.x, 1                          ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 319592
  %i.aa = or disjoint i32 %i.y, 16
  %spec.select27 = select i1 %i.h, i32 %i.aa, i32 %i.y
  store i32 %spec.select27, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 319600
  store i64 %i.ac, ptr %i.ad, align 8
  %i.ae = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.15) ; 3 uses
  %.not25 = icmp eq ptr %i.ae, null
  br i1 %.not25, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.d
  %i.af = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 65536, ptr noundef nonnull %i.ae) ; 2 uses
  %.not26 = icmp eq i64 %i.af, 0
  br i1 %.not26, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.ag = call i32 @zip_entry_write(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.af)
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %.preheader

bb.e:                                             ; preds = %bb.d, %.preheader
  %.019 = phi i32 [ 0, %.preheader ], [ -8, %bb.d ]
  %i.ai = call i32 @fclose(ptr noundef nonnull %i.ae) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.e
  %.020 = phi i32 [ -1, %bb.a ], [ %.019, %bb.e ], [ -3, %bb.b ], [ -16, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %.020
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define noundef i64 @zip_entry_read(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #9 {
bb.a:
  %3 = alloca %struct.mz_zip_archive_file_stat, align 8 ; 7 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %mz_zip_reader_is_file_a_directory.exit.thread25, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4
  %.not17 = icmp eq i32 %i.b, 1
  br i1 %.not17, label %bb.c, label %mz_zip_reader_is_file_a_directory.exit.thread25

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %mz_zip_reader_is_file_a_directory.exit.thread25, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = trunc i64 %i.d to i32                    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8              ; 5 uses
  %.not10.i.i = icmp eq ptr %i.h, null
  br i1 %.not10.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %.not11.i.i = icmp ugt i32 %i.j, %i.f
  br i1 %.not11.i.i, label %mz_zip_get_cdh.exit.i, label %.thread39

mz_zip_get_cdh.exit.i:                            ; preds = %bb.e
  %i.k = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = and i64 %i.d, 4294967295
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.q ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %.thread39, label %bb.f

bb.f:                                             ; preds = %mz_zip_get_cdh.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.t = load i16, ptr %i.s, align 1              ; 2 uses
  %.not18.i = icmp eq i16 %i.t, 0
  br i1 %.not18.i, label %mz_zip_reader_is_file_a_directory.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 45
  %i.x = load i8, ptr %i.w, align 1
  %i.y = icmp eq i8 %i.x, 47
  br i1 %i.y, label %mz_zip_reader_is_file_a_directory.exit.thread25, label %mz_zip_reader_is_file_a_directory.exit

mz_zip_reader_is_file_a_directory.exit:           ; preds = %bb.f, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 38
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = and i8 %i.aa, 16
  %.not18 = icmp eq i8 %i.ab, 0
  br i1 %.not18, label %.thread, label %mz_zip_reader_is_file_a_directory.exit.thread25

.thread39:                                        ; preds = %mz_zip_get_cdh.exit.i, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 24, ptr %i.ac, align 4
  br label %.thread

bb.h:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 24, ptr %i.ad, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  br label %mz_zip_reader_file_stat.exit.i

.thread:                                          ; preds = %mz_zip_reader_is_file_a_directory.exit, %.thread39
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i32, ptr %i.ae, align 8
  %.not11.i.i.i = icmp ugt i32 %i.af, %i.f
  br i1 %.not11.i.i.i, label %bb.i, label %mz_zip_reader_file_stat.exit.i

bb.i:                                             ; preds = %.thread
  %i.ag = load ptr, ptr %i.h, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = and i64 %i.d, 4294967295
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.am
  br label %mz_zip_reader_file_stat.exit.i

mz_zip_reader_file_stat.exit.i:                   ; preds = %bb.h, %bb.i, %.thread
  %.0.i.i.i = phi ptr [ %i.an, %bb.i ], [ null, %.thread ], [ null, %bb.h ]
  %i.ao = call fastcc range(i32 0, 2) i32 @mz_zip_file_stat_internal(ptr noundef nonnull %0, i32 noundef %i.f, ptr noundef %.0.i.i.i, ptr noundef nonnull %3, ptr noundef null)
  %.not23.i = icmp eq i32 %i.ao, 0
  br i1 %.not23.i, label %mz_zip_reader_extract_to_heap.exit.thread, label %bb.j

bb.j:                                             ; preds = %mz_zip_reader_file_stat.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aq = load i64, ptr %i.ap, align 8            ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call ptr %i.as(ptr noundef %i.au, i64 noundef 1, i64 noundef %i.aq) #36, !inline_history !28 ; 4 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %mz_zip_set_error.exit.i, label %bb.k

mz_zip_set_error.exit.i:                          ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 16, ptr %i.ax, align 4
  br label %mz_zip_reader_extract_to_heap.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ay = call fastcc i32 @mz_zip_reader_extract_to_mem_no_alloc1(ptr noundef nonnull %0, i32 noundef %i.f, ptr noundef nonnull %i.av, i64 noundef %i.aq, i32 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef nonnull %3)
  %.not25.i = icmp eq i32 %i.ay, 0
  br i1 %.not25.i, label %bb.l, label %mz_zip_reader_extract_to_heap.exit

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load ptr, ptr %i.at, align 8
  call void %i.ba(ptr noundef %i.bb, ptr noundef nonnull %i.av) #36, !inline_history !28
  br label %mz_zip_reader_extract_to_heap.exit.thread

mz_zip_reader_extract_to_heap.exit.thread:        ; preds = %mz_zip_set_error.exit.i, %mz_zip_reader_file_stat.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  store ptr null, ptr %1, align 8
  br label %mz_zip_reader_is_file_a_directory.exit.thread25

mz_zip_reader_extract_to_heap.exit:               ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  store ptr %i.av, ptr %1, align 8
  %.not32 = icmp eq ptr %2, null
  br i1 %.not32, label %mz_zip_reader_is_file_a_directory.exit.thread25, label %bb.m

bb.m:                                             ; preds = %mz_zip_reader_extract_to_heap.exit
  store i64 %i.aq, ptr %2, align 8
  br label %mz_zip_reader_is_file_a_directory.exit.thread25

mz_zip_reader_is_file_a_directory.exit.thread25:  ; preds = %bb.g, %mz_zip_reader_extract_to_heap.exit, %bb.m, %mz_zip_reader_extract_to_heap.exit.thread, %mz_zip_reader_is_file_a_directory.exit, %bb.b, %bb.c, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ -3, %bb.b ], [ %i.aq, %mz_zip_reader_extract_to_heap.exit ], [ -3, %bb.c ], [ -17, %mz_zip_reader_is_file_a_directory.exit ], [ 0, %mz_zip_reader_extract_to_heap.exit.thread ], [ %i.aq, %bb.m ], [ -17, %bb.g ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @zip_entry_noallocread(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4
  %.not11 = icmp eq i32 %i.b, 1
  br i1 %.not11, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = trunc i64 %i.d to i32
  %i.g = tail call fastcc range(i32 0, 2) i32 @mz_zip_reader_extract_to_mem_no_alloc1(ptr noundef nonnull %0, i32 noundef %i.f, ptr noundef %1, i64 noundef %2, i32 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null)
  %.not12 = icmp eq i32 %i.g, 0
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = load i64, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.c, %bb.a, %bb.e
  %.0 = phi i64 [ -1, %bb.a ], [ %i.i, %bb.e ], [ -3, %bb.b ], [ -3, %bb.c ], [ -18, %bb.d ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -20, 1) i32 @zip_entry_fread(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %2 = alloca %struct.mz_zip_archive_file_stat, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %mz_zip_reader_is_file_a_directory.exit.thread30, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1112) %2, i8 0, i64 1112, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4
  %.not20 = icmp eq i32 %i.b, 1
  br i1 %.not20, label %bb.c, label %mz_zip_reader_is_file_a_directory.exit.thread30

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %mz_zip_reader_is_file_a_directory.exit.thread30, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = trunc i64 %i.d to i32                    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not10.i.i = icmp eq ptr %i.h, null
  br i1 %.not10.i.i, label %mz_zip_reader_is_file_a_directory.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %.not11.i.i = icmp ugt i32 %i.j, %i.f
  br i1 %.not11.i.i, label %mz_zip_get_cdh.exit.i, label %mz_zip_reader_is_file_a_directory.exit.thread

mz_zip_get_cdh.exit.i:                            ; preds = %bb.e
  %i.k = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = and i64 %i.d, 4294967295
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.q ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %mz_zip_reader_is_file_a_directory.exit.thread, label %bb.f

mz_zip_reader_is_file_a_directory.exit.thread:    ; preds = %bb.d, %bb.e, %mz_zip_get_cdh.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 24, ptr %i.s, align 4
  br label %bb.h

bb.f:                                             ; preds = %mz_zip_get_cdh.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.u = load i16, ptr %i.t, align 1              ; 2 uses
  %.not18.i = icmp eq i16 %i.u, 0
  br i1 %.not18.i, label %mz_zip_reader_is_file_a_directory.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 45
  %i.y = load i8, ptr %i.x, align 1
  %i.z = icmp eq i8 %i.y, 47
  br i1 %i.z, label %mz_zip_reader_is_file_a_directory.exit.thread30, label %mz_zip_reader_is_file_a_directory.exit

mz_zip_reader_is_file_a_directory.exit:           ; preds = %bb.f, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 38
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = and i8 %i.ab, 16
  %.not21 = icmp eq i8 %i.ac, 0
  br i1 %.not21, label %bb.h, label %mz_zip_reader_is_file_a_directory.exit.thread30

bb.h:                                             ; preds = %mz_zip_reader_is_file_a_directory.exit.thread, %mz_zip_reader_is_file_a_directory.exit
  %i.ad = tail call i32 @mz_zip_reader_extract_to_file(ptr noundef nonnull %0, i32 noundef %i.f, ptr noundef %1, i32 noundef 0)
  %.not22 = icmp eq i32 %i.ad, 0
  br i1 %.not22, label %mz_zip_reader_is_file_a_directory.exit.thread30, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.g, align 8             ; 3 uses
  %.not10.i.i25 = icmp eq ptr %i.ae, null
  br i1 %.not10.i.i25, label %mz_zip_reader_file_stat.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i32, ptr %i.af, align 8
  %.not11.i.i26 = icmp ugt i32 %i.ag, %i.f
  br i1 %.not11.i.i26, label %bb.k, label %mz_zip_reader_file_stat.exit

bb.k:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr %i.ae, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = and i64 %i.d, 4294967295
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.an
  br label %mz_zip_reader_file_stat.exit

mz_zip_reader_file_stat.exit:                     ; preds = %bb.i, %bb.j, %bb.k
  %.0.i.i = phi ptr [ %i.ao, %bb.k ], [ null, %bb.j ], [ null, %bb.i ]
  %i.ap = call fastcc range(i32 0, 2) i32 @mz_zip_file_stat_internal(ptr noundef nonnull %0, i32 noundef %i.f, ptr noundef %.0.i.i, ptr noundef nonnull %2, ptr noundef null)
  %.not23 = icmp eq i32 %i.ap, 0
  br i1 %.not23, label %mz_zip_reader_is_file_a_directory.exit.thread30, label %bb.l

bb.l:                                             ; preds = %mz_zip_reader_file_stat.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = lshr i32 %i.ar, 16                      ; 2 uses
  %.not24 = icmp eq i32 %i.as, 0
  br i1 %.not24, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = call i32 @chmod(ptr noundef %1, i32 noundef %i.as) #36
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %mz_zip_reader_is_file_a_directory.exit.thread30, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br label %mz_zip_reader_is_file_a_directory.exit.thread30

mz_zip_reader_is_file_a_directory.exit.thread30:  ; preds = %bb.g, %bb.m, %mz_zip_reader_file_stat.exit, %bb.h, %mz_zip_reader_is_file_a_directory.exit, %bb.b, %bb.c, %bb.a, %bb.n
  %.0 = phi i32 [ -1, %bb.a ], [ -3, %bb.b ], [ -19, %mz_zip_reader_file_stat.exit ], [ 0, %bb.n ], [ -19, %bb.h ], [ -17, %mz_zip_reader_is_file_a_directory.exit ], [ -3, %bb.c ], [ -20, %bb.m ], [ -17, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @chmod(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define range(i32 -10, 1) i32 @zip_entry_extract(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4
  %.not11 = icmp eq i32 %i.b, 1
  br i1 %.not11, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
end_hunk_4
begin_hunk_5_@zip_archive_extract:bb.a

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.034 = phi i64 [ %i.d, %bb.b ], [ %i.d, %bb.b ], [ %i.e, %bb.c ] ; 2 uses
  %i.k = sub nsw i64 512, %.034
  %spec.select = call i64 @llvm.umin.i64(i64 %i.k, i64 512)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8              ; 3 uses
  %.not94 = icmp eq i32 %i.m, 0
  br i1 %.not94, label %zip_name_normalize.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 %.034
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.not53 = icmp eq ptr %2, null
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph
  %.03574 = phi i32 [ 0, %.lr.ph ], [ %.03574.be, %.backedge.backedge ] ; 9 uses
  %i.v = load ptr, ptr %i.n, align 8              ; 3 uses
  %.not10.i.i = icmp eq ptr %i.v, null
  br i1 %.not10.i.i, label %mz_zip_reader_file_stat.exit, label %bb.e

bb.e:                                             ; preds = %.backedge
  %i.w = load i32, ptr %i.l, align 8
  %.not11.i.i = icmp ult i32 %.03574, %i.w
  br i1 %.not11.i.i, label %bb.f, label %mz_zip_reader_file_stat.exit

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = zext i32 %.03574 to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ad
  br label %mz_zip_reader_file_stat.exit

mz_zip_reader_file_stat.exit:                     ; preds = %.backedge, %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.ae, %bb.f ], [ null, %bb.e ], [ null, %.backedge ]
  %i.af = call fastcc range(i32 0, 2) i32 @mz_zip_file_stat_internal(ptr noundef nonnull %0, i32 noundef %.03574, ptr noundef %.0.i.i, ptr noundef nonnull %4, ptr noundef null)
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %zip_name_normalize.exit, label %bb.g

bb.g:                                             ; preds = %mz_zip_reader_file_stat.exit
  %i.ag = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #39 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %zip_name_normalize.exit, label %.preheader66.i

.preheader66.i:                                   ; preds = %bb.g, %.critedge.i
  %.045.i = phi ptr [ %i.aj, %.critedge.i ], [ %i.o, %bb.g ] ; 3 uses
  %i.ai = load i8, ptr %.045.i, align 1
  switch i8 %i.ai, label %.preheader.i [
    i8 47, label %.critedge.i
    i8 92, label %.critedge.i
  ]

.critedge.i:                                      ; preds = %.preheader66.i, %.preheader66.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.045.i, i64 1
  br label %.preheader66.i

.preheader.i:                                     ; preds = %.preheader66.i, %bb.j
  %.069.i = phi i64 [ %.1.i, %bb.j ], [ 0, %.preheader66.i ] ; 4 uses
  %.04168.i = phi i64 [ %.2.i, %bb.j ], [ 0, %.preheader66.i ] ; 7 uses
  %.04367.i = phi i64 [ %i.az, %bb.j ], [ 0, %.preheader66.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.045.i, i64 %.04367.i
  %i.al = load i8, ptr %i.ak, align 1             ; 3 uses
  switch i8 %i.al, label %bb.i [
    i8 47, label %bb.h
    i8 92, label %bb.h
  ]

bb.h:                                             ; preds = %.preheader.i, %.preheader.i
  %.not50.i = icmp eq i64 %.069.i, 0
  br i1 %.not50.i, label %bb.j, label %sub_0.i

sub_0.i:                                          ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 %.04168.i ; 3 uses
  %i.an = load i8, ptr %i.am, align 1
  %.not70.i = icmp eq i8 %i.an, 46
  br i1 %.not70.i, label %.tail.i, label %.tail53.thread.i

.tail.i:                                          ; preds = %sub_0.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.ap = load i8, ptr %i.ao, align 1
  switch i8 %i.ap, label %.tail53.thread.i [
    i8 0, label %bb.j
    i8 46, label %.tail53.i
  ]

.tail53.i:                                        ; preds = %.tail.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.j, label %.tail53.thread.i

.tail53.thread.i:                                 ; preds = %.tail.i, %.tail53.i, %sub_0.i
  %i.at = add i64 %.04168.i, %.069.i              ; 2 uses
  %i.au = add nuw nsw i64 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.at
  store i8 %i.al, ptr %i.av, align 1
  br label %bb.j

bb.i:                                             ; preds = %.preheader.i
  %i.aw = getelementptr i8, ptr %i.o, i64 %.04168.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 %.069.i
  store i8 %i.al, ptr %i.ax, align 1
  %i.ay = add i64 %.069.i, 1
  br label %bb.j

bb.j:                                             ; preds = %.tail.i, %bb.i, %.tail53.thread.i, %.tail53.i, %bb.h
  %.2.i = phi i64 [ %.04168.i, %bb.i ], [ %i.au, %.tail53.thread.i ], [ %.04168.i, %.tail53.i ], [ %.04168.i, %.tail.i ], [ %.04168.i, %bb.h ] ; 3 uses
  %.1.i = phi i64 [ %i.ay, %bb.i ], [ 0, %.tail53.thread.i ], [ 0, %.tail53.i ], [ 0, %.tail.i ], [ 0, %bb.h ] ; 2 uses
  %i.az = add nuw i64 %.04367.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.az, %i.ag
  br i1 %exitcond.not.i, label %bb.k, label %.preheader.i

bb.k:                                             ; preds = %bb.j
  %i.ba = icmp eq i64 %.1.i, 0
  br i1 %i.ba, label %bb.l, label %sub_058.i

sub_058.i:                                        ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.o, i64 %.2.i ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 1
  %.not73.i = icmp eq i8 %i.bc, 46
  br i1 %.not73.i, label %.tail57.i, label %bb.m

.tail57.i:                                        ; preds = %sub_058.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.be = load i8, ptr %i.bd, align 1
  switch i8 %i.be, label %bb.m [
    i8 0, label %bb.l
    i8 46, label %.tail61.i
  ]

.tail61.i:                                        ; preds = %.tail57.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.tail57.i, %.tail61.i, %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 %.2.i
  store i8 0, ptr %i.bi, align 1
  br label %bb.m

bb.m:                                             ; preds = %.tail57.i, %bb.l, %.tail61.i, %sub_058.i
  %i.bj = call ptr @strncpy(ptr noundef nonnull %i.p, ptr noundef nonnull %i.o, i64 noundef %spec.select) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(513) %i.a, i8 0, i64 513, i1 false)
  %i.bk = load i8, ptr %i.b, align 16             ; 2 uses
  %.not29.i = icmp eq i8 %i.bk, 0
  br i1 %.not29.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.m
  store i8 %i.bk, ptr %i.a, align 16
  %i.bl = load i8, ptr %i.q, align 1              ; 2 uses
  %.not.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %bb.q
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.q ], [ 1, %.lr.ph.preheader.i ] ; 3 uses
  %i.bm = phi i8 [ %i.bu, %bb.q ], [ %i.bl, %.lr.ph.preheader.i ]
  %.02125.i = phi ptr [ %i.bt, %bb.q ], [ %i.q, %.lr.ph.preheader.i ] ; 3 uses
  switch i8 %i.bm, label %bb.q [
    i8 92, label %bb.n
    i8 47, label %bb.o
  ]

bb.n:                                             ; preds = %.lr.ph.i
  store i8 47, ptr %.02125.i, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i
  %i.bn = call i32 @mkdir(ptr noundef nonnull %i.a, i32 noundef 493) #36
  %i.bo = icmp eq i32 %i.bn, -1
  br i1 %i.bo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bp = tail call ptr @__errno_location() #41
  %i.bq = load i32, ptr %i.bp, align 4
  %.not24.i = icmp eq i32 %i.bq, 17
  br i1 %.not24.i, label %bb.q, label %zip_mkpath.exit

bb.q:                                             ; preds = %bb.p, %bb.o, %.lr.ph.i
  %i.br = load i8, ptr %.02125.i, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %i.br, ptr %i.bs, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.02125.i, i64 1 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1             ; 2 uses
  %i.bv = icmp ne i8 %i.bu, 0
  %i.bw = icmp samesign ult i64 %indvars.iv.i, 511
  %i.bx = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %i.bx, label %.lr.ph.i, label %.loopexit, !llvm.loop !29

zip_mkpath.exit:                                  ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %zip_name_normalize.exit

.loopexit:                                        ; preds = %bb.q, %bb.m, %.lr.ph.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.by = load i16, ptr %i.r, align 8
  %i.bz = lshr i16 %i.by, 8
  %trunc = trunc nuw i16 %i.bz to i8
  switch i8 %trunc, label %bb.v [
    i8 3, label %bb.r
    i8 19, label %bb.r
  ]

bb.r:                                             ; preds = %.loopexit, %.loopexit
  %i.ca = load i32, ptr %i.s, align 4
  %i.cb = and i32 %i.ca, 536870912
  %.not47 = icmp eq i32 %i.cb, 0
  br i1 %.not47, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = load i64, ptr %i.t, align 8             ; 2 uses
  %i.cd = icmp ugt i64 %i.cc, 512
  br i1 %i.cd, label %zip_name_normalize.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = call fastcc range(i32 0, 2) i32 @mz_zip_reader_extract_to_mem_no_alloc1(ptr noundef nonnull %0, i32 noundef %.03574, ptr noundef nonnull %i.c, i64 noundef 512, i32 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null)
  %.not51 = icmp eq i32 %i.ce, 0
  br i1 %.not51, label %zip_name_normalize.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cc
  store i8 0, ptr %i.cf, align 1
  %i.cg = call i32 @symlink(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #36
  %.not52 = icmp eq i32 %i.cg, 0
  br i1 %.not52, label %bb.ab, label %zip_name_normalize.exit

bb.v:                                             ; preds = %.loopexit, %bb.r
  %i.ch = load ptr, ptr %i.n, align 8             ; 3 uses
  %.not10.i.i56 = icmp eq ptr %i.ch, null
  br i1 %.not10.i.i56, label %mz_zip_reader_is_file_a_directory.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ci = load i32, ptr %i.l, align 8
  %.not11.i.i57 = icmp ult i32 %.03574, %i.ci
  br i1 %.not11.i.i57, label %mz_zip_get_cdh.exit.i, label %mz_zip_reader_is_file_a_directory.exit.thread

mz_zip_get_cdh.exit.i:                            ; preds = %bb.w
  %i.cj = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = zext i32 %.03574 to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cp ; 3 uses
  %.not.i58 = icmp eq ptr %i.cj, null
  br i1 %.not.i58, label %mz_zip_reader_is_file_a_directory.exit.thread, label %bb.x

mz_zip_reader_is_file_a_directory.exit.thread:    ; preds = %bb.v, %bb.w, %mz_zip_get_cdh.exit.i
  store i32 24, ptr %i.u, align 4
  br label %bb.z

bb.x:                                             ; preds = %mz_zip_get_cdh.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 28
  %i.cs = load i16, ptr %i.cr, align 1            ; 2 uses
  %.not18.i = icmp eq i16 %i.cs, 0
  br i1 %.not18.i, label %mz_zip_reader_is_file_a_directory.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ct = zext i16 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 45
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = icmp eq i8 %i.cw, 47
  br i1 %i.cx, label %mz_zip_reader_is_file_a_directory.exit.thread68, label %mz_zip_reader_is_file_a_directory.exit

mz_zip_reader_is_file_a_directory.exit:           ; preds = %bb.x, %bb.y
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 38
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = and i8 %i.cz, 16
  %.not48 = icmp eq i8 %i.da, 0
  br i1 %.not48, label %bb.z, label %mz_zip_reader_is_file_a_directory.exit.thread68

bb.z:                                             ; preds = %mz_zip_reader_is_file_a_directory.exit.thread, %mz_zip_reader_is_file_a_directory.exit
  %i.db = call i32 @mz_zip_reader_extract_to_file(ptr noundef nonnull %0, i32 noundef %.03574, ptr noundef nonnull %i.b, i32 noundef 0)
  %.not49 = icmp eq i32 %i.db, 0
  br i1 %.not49, label %zip_name_normalize.exit, label %mz_zip_reader_is_file_a_directory.exit.thread68

mz_zip_reader_is_file_a_directory.exit.thread68:  ; preds = %bb.y, %bb.z, %mz_zip_reader_is_file_a_directory.exit
  %i.dc = load i32, ptr %i.s, align 4
  %i.dd = lshr i32 %i.dc, 16                      ; 2 uses
  %.not50 = icmp eq i32 %i.dd, 0
  br i1 %.not50, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %mz_zip_reader_is_file_a_directory.exit.thread68
  %i.de = call i32 @chmod(ptr noundef nonnull %i.b, i32 noundef %i.dd) #36
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %zip_name_normalize.exit, label %bb.ab

bb.ab:                                            ; preds = %mz_zip_reader_is_file_a_directory.exit.thread68, %bb.aa, %bb.u
  br i1 %.not53, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = call i32 %2(ptr noundef nonnull %i.b, ptr noundef %3) #36
  %i.dh = icmp sgt i32 %i.dg, -1
  %i.di = add i32 %.03574, 1                      ; 2 uses
  %i.dj = icmp ult i32 %i.di, %i.m
  %or.cond = select i1 %i.dh, i1 %i.dj, i1 false
  br i1 %or.cond, label %.backedge.backedge, label %zip_name_normalize.exit

bb.ad:                                            ; preds = %bb.ab
  %.old = add i32 %.03574, 1                      ; 2 uses
  %.old93 = icmp ult i32 %.old, %i.m
  br i1 %.old93, label %.backedge.backedge, label %zip_name_normalize.exit

.backedge.backedge:                               ; preds = %bb.ad, %bb.ac
  %.03574.be = phi i32 [ %.old, %bb.ad ], [ %i.di, %bb.ac ]
  br label %.backedge

zip_name_normalize.exit:                          ; preds = %bb.ac, %bb.ad, %mz_zip_reader_file_stat.exit, %bb.t, %bb.s, %bb.u, %bb.z, %bb.aa, %bb.g, %bb.d, %zip_mkpath.exit
  %.1 = phi i32 [ -23, %zip_mkpath.exit ], [ 0, %bb.d ], [ -20, %bb.aa ], [ -3, %mz_zip_reader_file_stat.exit ], [ 0, %bb.ac ], [ 0, %bb.ad ], [ -18, %bb.s ], [ -24, %bb.u ], [ -18, %bb.t ], [ -19, %bb.z ], [ -2, %bb.g ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8            ; 9 uses
  %.not31.i = icmp eq ptr %i.dl, null
  br i1 %.not31.i, label %mz_zip_reader_end_internal.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %zip_name_normalize.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dn = load ptr, ptr %i.dm, align 8
  %.not32.i = icmp eq ptr %i.dn, null
  br i1 %.not32.i, label %mz_zip_reader_end_internal.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %.not33.i = icmp eq ptr %i.dp, null
  br i1 %.not33.i, label %mz_zip_reader_end_internal.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.dr = load i32, ptr %i.dq, align 4
  %.not34.i = icmp eq i32 %i.dr, 1
  br i1 %.not34.i, label %bb.ah, label %mz_zip_reader_end_internal.exit.thread

mz_zip_reader_end_internal.exit.thread:           ; preds = %zip_name_normalize.exit, %bb.ae, %bb.af, %bb.ag
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 24, ptr %i.ds, align 4
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  store ptr null, ptr %i.dk, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = load ptr, ptr %i.dl, align 8
  call void %i.dp(ptr noundef %i.du, ptr noundef %i.dv) #36, !inline_history !8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dl, i8 0, i64 32, i1 false)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 32 ; 2 uses
  %i.dx = load ptr, ptr %i.do, align 8
  %i.dy = load ptr, ptr %i.dt, align 8
  %i.dz = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef %i.dy, ptr noundef %i.dz) #36, !inline_history !8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dw, i8 0, i64 32, i1 false)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dl, i64 64 ; 2 uses
  %i.eb = load ptr, ptr %i.do, align 8
  %i.ec = load ptr, ptr %i.dt, align 8
  %i.ed = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef %i.ec, ptr noundef %i.ed) #36, !inline_history !8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, i8 0, i64 32, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dl, i64 112 ; 3 uses
  %i.ef = load ptr, ptr %i.ee, align 8            ; 2 uses
  %.not35.i = icmp eq ptr %i.ef, null
  br i1 %.not35.i, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eh = load i32, ptr %i.eg, align 8
  %i.ei = icmp eq i32 %i.eh, 4
  br i1 %i.ei, label %bb.aj, label %.critedge73

bb.aj:                                            ; preds = %bb.ai
  %i.ej = call i32 @fclose(ptr noundef nonnull %i.ef)
  %i.ek = icmp eq i32 %i.ej, -1
  br i1 %i.ek, label %mz_zip_reader_end_internal.exit, label %.critedge73

mz_zip_reader_end_internal.exit:                  ; preds = %bb.aj
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 21, ptr %i.el, align 4
  store ptr null, ptr %i.ee, align 8
  %i.em = load ptr, ptr %i.do, align 8
  %i.en = load ptr, ptr %i.dt, align 8
  call void %i.em(ptr noundef %i.en, ptr noundef nonnull %i.dl) #36, !inline_history !8
  store i32 0, ptr %i.dq, align 4
  br label %bb.ak

.critedge:                                        ; preds = %bb.ah
  %i.eo = load ptr, ptr %i.do, align 8
  %i.ep = load ptr, ptr %i.dt, align 8
  call void %i.eo(ptr noundef %i.ep, ptr noundef nonnull %i.dl) #36, !inline_history !8
end_hunk_5
begin_hunk_6_@tdefl_compress_block:bb.a
  %scevgep74.i = getelementptr i8, ptr %0, i64 36962
  store i64 578721382704613384, ptr %scevgep74.i, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36970 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.h, i8 5, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(132) %i.e, i8 0, i64 132, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.i.3, %bb.c ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, 288
  br i1 %exitcond.not.i.i.3, label %.loopexit.loopexit.i.i, label %bb.c

.loopexit.loopexit.i.i:                           ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 0, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = shl i32 %i.al, 1                        ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %i.am, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = add nsw i32 %i.ap, %i.am
  %i.ar = shl i32 %i.aq, 1                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 %i.ar, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.au = load i32, ptr %i.at, align 4
  %i.av = add nsw i32 %i.au, %i.ar
  %i.aw = shl i32 %i.av, 1                        ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 %i.aw, ptr %i.ax, align 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.az = load i32, ptr %i.ay, align 16
  %i.ba = add nsw i32 %i.az, %i.aw
  %i.bb = shl i32 %i.ba, 1                        ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 %i.bb, ptr %i.bc, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = add nsw i32 %i.be, %i.bb
  %i.bg = shl i32 %i.bf, 1                        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 %i.bg, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = add nsw i32 %i.bj, %i.bg
  %i.bl = shl i32 %i.bk, 1                        ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  store i32 %i.bl, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = add nsw i32 %i.bo, %i.bl
  %i.bq = shl i32 %i.bp, 1                        ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 %i.bq, ptr %i.br, align 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bt = load i32, ptr %i.bs, align 16
  %i.bu = add nsw i32 %i.bt, %i.bq
  %i.bv = shl i32 %i.bu, 1                        ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store i32 %i.bv, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = add nsw i32 %i.by, %i.bv
  %i.ca = shl i32 %i.bz, 1                        ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i32 %i.ca, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = add nsw i32 %i.cd, %i.ca
  %i.cf = shl i32 %i.ce, 1                        ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store i32 %i.cf, ptr %i.cg, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = add nsw i32 %i.ci, %i.cf
  %i.ck = shl i32 %i.cj, 1                        ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i32 %i.ck, ptr %i.cl, align 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.cn = load i32, ptr %i.cm, align 16
  %i.co = add nsw i32 %i.cn, %i.ck
  %i.cp = shl i32 %i.co, 1                        ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  store i32 %i.cp, ptr %i.cq, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = add nsw i32 %i.cs, %i.cp
  %i.cu = shl i32 %i.ct, 1                        ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i32 %i.cu, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.cx = load i32, ptr %i.cw, align 8
  %i.cy = add nsw i32 %i.cx, %i.cu
  %i.cz = shl i32 %i.cy, 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  store i32 %i.cz, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 34954
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.loopexit.loopexit.i.i
  %indvars.iv150.i.i = phi i64 [ 0, %.loopexit.loopexit.i.i ], [ %indvars.iv.next151.i.i, %bb.h ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv150.i.i
  %i.dd = load i8, ptr %i.dc, align 1             ; 4 uses
  %i.de = icmp eq i8 %i.dd, 0
  br i1 %i.de, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.df = zext i8 %i.dd to i32                    ; 2 uses
  %i.dg = zext i8 %i.dd to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4            ; 3 uses
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 4
  %xtraiter = and i32 %i.df, 3                    ; 3 uses
  %i.dk = icmp ult i8 %i.dd, 4
  br i1 %i.dk, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i32 %i.df, 252
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.new
  %.0117.i.i = phi i32 [ %i.di, %.new ], [ %i.dy, %bb.f ] ; 5 uses
  %.067116.i.i = phi i32 [ 0, %.new ], [ %i.dx, %bb.f ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.3, %bb.f ]
  %i.dl = shl i32 %.067116.i.i, 3
  %i.dm = shl i32 %.0117.i.i, 2
  %i.dn = and i32 %i.dm, 4
  %i.do = or disjoint i32 %i.dl, %i.dn
  %i.dp = and i32 %.0117.i.i, 2
  %i.dq = or disjoint i32 %i.do, %i.dp
  %i.dr = lshr i32 %.0117.i.i, 2
  %i.ds = and i32 %i.dr, 1
  %i.dt = or disjoint i32 %i.dq, %i.ds
  %i.du = lshr i32 %.0117.i.i, 3
  %i.dv = shl i32 %i.dt, 1
  %i.dw = and i32 %i.du, 1
  %i.dx = or disjoint i32 %i.dv, %i.dw            ; 3 uses
  %i.dy = lshr i32 %.0117.i.i, 4                  ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.unr-lcssa, label %bb.f

.unr-lcssa:                                       ; preds = %bb.f
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.e
  %.0117.i.i.epil.init = phi i32 [ %i.di, %bb.e ], [ %i.dy, %.unr-lcssa ]
  %.067116.i.i.epil.init = phi i32 [ 0, %bb.e ], [ %i.dx, %.unr-lcssa ]
  %lcmp.mod339 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod339)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.0117.i.i.epil = phi i32 [ %.0117.i.i.epil.init, %.epil.preheader ], [ %i.ec, %bb.g ] ; 2 uses
  %.067116.i.i.epil = phi i32 [ %.067116.i.i.epil.init, %.epil.preheader ], [ %i.eb, %bb.g ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.dz = shl i32 %.067116.i.i.epil, 1
  %i.ea = and i32 %.0117.i.i.epil, 1
  %i.eb = or disjoint i32 %i.dz, %i.ea            ; 2 uses
  %i.ec = lshr i32 %.0117.i.i.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.g, !llvm.loop !31

.epilog-lcssa:                                    ; preds = %bb.g, %.unr-lcssa
  %.lcssa337 = phi i32 [ %i.dx, %.unr-lcssa ], [ %i.eb, %bb.g ]
  %i.ed = trunc i32 %.lcssa337 to i16
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %indvars.iv150.i.i
  store i16 %i.ed, ptr %i.ee, align 2
  br label %bb.h

bb.h:                                             ; preds = %.epilog-lcssa, %bb.d
  %indvars.iv.next151.i.i = add nuw nsw i64 %indvars.iv150.i.i, 1 ; 2 uses
  %exitcond154.not.i.i = icmp eq i64 %indvars.iv.next151.i.i, 288
  br i1 %exitcond154.not.i.i, label %tdefl_optimize_huffman_table.exit.i, label %bb.d

tdefl_optimize_huffman_table.exit.i:              ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(132) %i.c, i8 0, i64 132, i1 false)
  %i.ef = load i8, ptr %i.h, align 2
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.eg ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4
  %i.ej = add nsw i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eh, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 36971
  %i.el = load i8, ptr %i.ek, align 1
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.en, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 36972
  %i.er = load i8, ptr %i.eq, align 2
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.es ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = add nsw i32 %i.eu, 1
  store i32 %i.ev, ptr %i.et, align 4
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 36973
  %i.ex = load i8, ptr %i.ew, align 1
  %i.ey = zext i8 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ey ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr %i.ez, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 36974
  %i.fd = load i8, ptr %i.fc, align 2
  %i.fe = zext i8 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fe ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4
  %i.fh = add nsw i32 %i.fg, 1
  store i32 %i.fh, ptr %i.ff, align 4
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 36975
  %i.fj = load i8, ptr %i.fi, align 1
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fk ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4
  %i.fn = add nsw i32 %i.fm, 1
  store i32 %i.fn, ptr %i.fl, align 4
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 36976
  %i.fp = load i8, ptr %i.fo, align 2
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fq ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = add nsw i32 %i.fs, 1
  store i32 %i.ft, ptr %i.fr, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 36977
  %i.fv = load i8, ptr %i.fu, align 1
  %i.fw = zext i8 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fw ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4
  %i.fz = add nsw i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fx, align 4
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 36978
  %i.gb = load i8, ptr %i.ga, align 2
  %i.gc = zext i8 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gc ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4
  %i.gf = add nsw i32 %i.ge, 1
  store i32 %i.gf, ptr %i.gd, align 4
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 36979
  %i.gh = load i8, ptr %i.gg, align 1
  %i.gi = zext i8 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gi ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4
  %i.gl = add nsw i32 %i.gk, 1
  store i32 %i.gl, ptr %i.gj, align 4
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 36980
  %i.gn = load i8, ptr %i.gm, align 2
  %i.go = zext i8 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.go ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4
  %i.gr = add nsw i32 %i.gq, 1
  store i32 %i.gr, ptr %i.gp, align 4
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 36981
  %i.gt = load i8, ptr %i.gs, align 1
  %i.gu = zext i8 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gu ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4
  %i.gx = add nsw i32 %i.gw, 1
  store i32 %i.gx, ptr %i.gv, align 4
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 36982
  %i.gz = load i8, ptr %i.gy, align 2
  %i.ha = zext i8 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ha ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4
  %i.hd = add nsw i32 %i.hc, 1
  store i32 %i.hd, ptr %i.hb, align 4
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 36983
  %i.hf = load i8, ptr %i.he, align 1
  %i.hg = zext i8 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hg ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4
  %i.hj = add nsw i32 %i.hi, 1
  store i32 %i.hj, ptr %i.hh, align 4
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 36984
  %i.hl = load i8, ptr %i.hk, align 2
  %i.hm = zext i8 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hm ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4
  %i.hp = add nsw i32 %i.ho, 1
  store i32 %i.hp, ptr %i.hn, align 4
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 36985
  %i.hr = load i8, ptr %i.hq, align 1
  %i.hs = zext i8 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hs ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4
  %i.hv = add nsw i32 %i.hu, 1
  store i32 %i.hv, ptr %i.ht, align 4
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 36986
  %i.hx = load i8, ptr %i.hw, align 2
  %i.hy = zext i8 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hy ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4
  %i.ib = add nsw i32 %i.ia, 1
  store i32 %i.ib, ptr %i.hz, align 4
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 36987
  %i.id = load i8, ptr %i.ic, align 1
  %i.ie = zext i8 %i.id to i64
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ie ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4
  %i.ih = add nsw i32 %i.ig, 1
  store i32 %i.ih, ptr %i.if, align 4
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 36988
  %i.ij = load i8, ptr %i.ii, align 2
  %i.ik = zext i8 %i.ij to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ik ; 2 uses
  %i.im = load i32, ptr %i.il, align 4
  %i.in = add nsw i32 %i.im, 1
  store i32 %i.in, ptr %i.il, align 4
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 36989
  %i.ip = load i8, ptr %i.io, align 1
  %i.iq = zext i8 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.iq ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4
  %i.it = add nsw i32 %i.is, 1
  store i32 %i.it, ptr %i.ir, align 4
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 36990
  %i.iv = load i8, ptr %i.iu, align 2
  %i.iw = zext i8 %i.iv to i64
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.iw ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4
  %i.iz = add nsw i32 %i.iy, 1
  store i32 %i.iz, ptr %i.ix, align 4
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 36991
  %i.jb = load i8, ptr %i.ja, align 1
  %i.jc = zext i8 %i.jb to i64
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jc ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4
  %i.jf = add nsw i32 %i.je, 1
  store i32 %i.jf, ptr %i.jd, align 4
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 36992
  %i.jh = load i8, ptr %i.jg, align 2
  %i.ji = zext i8 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ji ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4
  %i.jl = add nsw i32 %i.jk, 1
  store i32 %i.jl, ptr %i.jj, align 4
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 36993
  %i.jn = load i8, ptr %i.jm, align 1
  %i.jo = zext i8 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jo ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 4
  %i.jr = add nsw i32 %i.jq, 1
  store i32 %i.jr, ptr %i.jp, align 4
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 36994
  %i.jt = load i8, ptr %i.js, align 2
  %i.ju = zext i8 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ju ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4
  %i.jx = add nsw i32 %i.jw, 1
  store i32 %i.jx, ptr %i.jv, align 4
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 36995
  %i.jz = load i8, ptr %i.jy, align 1
  %i.ka = zext i8 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ka ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 4
  %i.kd = add nsw i32 %i.kc, 1
  store i32 %i.kd, ptr %i.kb, align 4
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 36996
  %i.kf = load i8, ptr %i.ke, align 2
  %i.kg = zext i8 %i.kf to i64
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kg ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4
  %i.kj = add nsw i32 %i.ki, 1
  store i32 %i.kj, ptr %i.kh, align 4
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 36997
  %i.kl = load i8, ptr %i.kk, align 1
  %i.km = zext i8 %i.kl to i64
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.km ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4
  %i.kp = add nsw i32 %i.ko, 1
  store i32 %i.kp, ptr %i.kn, align 4
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 36998
  %i.kr = load i8, ptr %i.kq, align 2
  %i.ks = zext i8 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ks ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 4
  %i.kv = add nsw i32 %i.ku, 1
  store i32 %i.kv, ptr %i.kt, align 4
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 36999
  %i.kx = load i8, ptr %i.kw, align 1
  %i.ky = zext i8 %i.kx to i64
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ky ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4
  %i.lb = add nsw i32 %i.la, 1
  store i32 %i.lb, ptr %i.kz, align 4
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 37000
  %i.ld = load i8, ptr %i.lc, align 2
  %i.le = zext i8 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.le ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4
  %i.lh = add nsw i32 %i.lg, 1
  store i32 %i.lh, ptr %i.lf, align 4
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 37001
  %i.lj = load i8, ptr %i.li, align 1
  %i.lk = zext i8 %i.lj to i64
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lk ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4
  %i.ln = add nsw i32 %i.lm, 1
  store i32 %i.ln, ptr %i.ll, align 4
  %i.lo = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.lo, align 4
  %i.lp = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.lq = load i32, ptr %i.lp, align 4
  %i.lr = shl i32 %i.lq, 1                        ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %i.lr, ptr %i.ls, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.lu = load i32, ptr %i.lt, align 8
  %i.lv = add nsw i32 %i.lu, %i.lr
  %i.lw = shl i32 %i.lv, 1                        ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.lw, ptr %i.lx, align 4
  %i.ly = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.lz = load i32, ptr %i.ly, align 4
  %i.ma = add nsw i32 %i.lz, %i.lw
  %i.mb = shl i32 %i.ma, 1                        ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.mb, ptr %i.mc, align 16
  %i.md = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.me = load i32, ptr %i.md, align 16
  %i.mf = add nsw i32 %i.me, %i.mb
  %i.mg = shl i32 %i.mf, 1                        ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 %i.mg, ptr %i.mh, align 4
  %i.mi = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.mj = load i32, ptr %i.mi, align 4
  %i.mk = add nsw i32 %i.mj, %i.mg
  %i.ml = shl i32 %i.mk, 1                        ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %i.ml, ptr %i.mm, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.mo = load i32, ptr %i.mn, align 8
  %i.mp = add nsw i32 %i.mo, %i.ml
  %i.mq = shl i32 %i.mp, 1                        ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 %i.mq, ptr %i.mr, align 4
  %i.ms = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.mt = load i32, ptr %i.ms, align 4
  %i.mu = add nsw i32 %i.mt, %i.mq
  %i.mv = shl i32 %i.mu, 1                        ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.mv, ptr %i.mw, align 16
  %i.mx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.my = load i32, ptr %i.mx, align 16
  %i.mz = add nsw i32 %i.my, %i.mv
  %i.na = shl i32 %i.mz, 1                        ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i32 %i.na, ptr %i.nb, align 4
  %i.nc = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.nd = load i32, ptr %i.nc, align 4
  %i.ne = add nsw i32 %i.nd, %i.na
  %i.nf = shl i32 %i.ne, 1                        ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 %i.nf, ptr %i.ng, align 8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ni = load i32, ptr %i.nh, align 8
  %i.nj = add nsw i32 %i.ni, %i.nf
  %i.nk = shl i32 %i.nj, 1                        ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 %i.nk, ptr %i.nl, align 4
  %i.nm = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.nn = load i32, ptr %i.nm, align 4
  %i.no = add nsw i32 %i.nn, %i.nk
  %i.np = shl i32 %i.no, 1                        ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i32 %i.np, ptr %i.nq, align 16
  %i.nr = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ns = load i32, ptr %i.nr, align 16
  %i.nt = add nsw i32 %i.ns, %i.np
  %i.nu = shl i32 %i.nt, 1                        ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  store i32 %i.nu, ptr %i.nv, align 4
  %i.nw = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.nx = load i32, ptr %i.nw, align 4
  %i.ny = add nsw i32 %i.nx, %i.nu
  %i.nz = shl i32 %i.ny, 1                        ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %i.nz, ptr %i.oa, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.oc = load i32, ptr %i.ob, align 8
  %i.od = add nsw i32 %i.oc, %i.nz
  %i.oe = shl i32 %i.od, 1
  %i.of = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  store i32 %i.oe, ptr %i.of, align 4
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 35530
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %tdefl_optimize_huffman_table.exit.i
  %indvars.iv150.i41.i = phi i64 [ 0, %tdefl_optimize_huffman_table.exit.i ], [ %indvars.iv.next151.i45.i, %bb.m ] ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv150.i41.i
  %i.oi = load i8, ptr %i.oh, align 1             ; 4 uses
  %i.oj = icmp eq i8 %i.oi, 0
  br i1 %i.oj, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ok = zext i8 %i.oi to i32                    ; 2 uses
  %i.ol = zext i8 %i.oi to i64
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ol ; 2 uses
  %i.on = load i32, ptr %i.om, align 4            ; 3 uses
  %i.oo = add i32 %i.on, 1
  store i32 %i.oo, ptr %i.om, align 4
  %xtraiter343 = and i32 %i.ok, 3                 ; 3 uses
  %i.op = icmp ult i8 %i.oi, 4
  br i1 %i.op, label %.epil.preheader342, label %.new340

.new340:                                          ; preds = %bb.j
  %unroll_iter349 = and i32 %i.ok, 252
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.new340
  %.0117.i42.i = phi i32 [ %i.on, %.new340 ], [ %i.pd, %bb.k ] ; 5 uses
  %.067116.i43.i = phi i32 [ 0, %.new340 ], [ %i.pc, %bb.k ]
  %niter350 = phi i32 [ 0, %.new340 ], [ %niter350.next.3, %bb.k ]
  %i.oq = shl i32 %.067116.i43.i, 3
  %i.or = shl i32 %.0117.i42.i, 2
  %i.os = and i32 %i.or, 4
  %i.ot = or disjoint i32 %i.oq, %i.os
  %i.ou = and i32 %.0117.i42.i, 2
  %i.ov = or disjoint i32 %i.ot, %i.ou
  %i.ow = lshr i32 %.0117.i42.i, 2
  %i.ox = and i32 %i.ow, 1
  %i.oy = or disjoint i32 %i.ov, %i.ox
  %i.oz = lshr i32 %.0117.i42.i, 3
  %i.pa = shl i32 %i.oy, 1
  %i.pb = and i32 %i.oz, 1
  %i.pc = or disjoint i32 %i.pa, %i.pb            ; 3 uses
  %i.pd = lshr i32 %.0117.i42.i, 4                ; 2 uses
  %niter350.next.3 = add i32 %niter350, 4         ; 2 uses
  %niter350.ncmp.3.not = icmp eq i32 %niter350.next.3, %unroll_iter349
  br i1 %niter350.ncmp.3.not, label %.unr-lcssa341, label %bb.k

.unr-lcssa341:                                    ; preds = %bb.k
  %lcmp.mod345.not = icmp eq i32 %xtraiter343, 0
  br i1 %lcmp.mod345.not, label %.epilog-lcssa346, label %.epil.preheader342

.epil.preheader342:                               ; preds = %.unr-lcssa341, %bb.j
  %.0117.i42.i.epil.init = phi i32 [ %i.on, %bb.j ], [ %i.pd, %.unr-lcssa341 ]
  %.067116.i43.i.epil.init = phi i32 [ 0, %bb.j ], [ %i.pc, %.unr-lcssa341 ]
  %lcmp.mod348 = icmp ne i32 %xtraiter343, 0
  tail call void @llvm.assume(i1 %lcmp.mod348)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader342
  %.0117.i42.i.epil = phi i32 [ %.0117.i42.i.epil.init, %.epil.preheader342 ], [ %i.ph, %bb.l ] ; 2 uses
  %.067116.i43.i.epil = phi i32 [ %.067116.i43.i.epil.init, %.epil.preheader342 ], [ %i.pg, %bb.l ]
  %epil.iter344 = phi i32 [ 0, %.epil.preheader342 ], [ %epil.iter344.next, %bb.l ]
  %i.pe = shl i32 %.067116.i43.i.epil, 1
  %i.pf = and i32 %.0117.i42.i.epil, 1
  %i.pg = or disjoint i32 %i.pe, %i.pf            ; 2 uses
  %i.ph = lshr i32 %.0117.i42.i.epil, 1
  %epil.iter344.next = add i32 %epil.iter344, 1   ; 2 uses
  %epil.iter344.cmp.not = icmp eq i32 %epil.iter344.next, %xtraiter343
  br i1 %epil.iter344.cmp.not, label %.epilog-lcssa346, label %bb.l, !llvm.loop !32

.epilog-lcssa346:                                 ; preds = %bb.l, %.unr-lcssa341
  %.lcssa336 = phi i32 [ %i.pc, %.unr-lcssa341 ], [ %i.pg, %bb.l ]
  %i.pi = trunc i32 %.lcssa336 to i16
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %i.og, i64 %indvars.iv150.i41.i
  store i16 %i.pi, ptr %i.pj, align 2
  br label %bb.m

bb.m:                                             ; preds = %.epilog-lcssa346, %bb.i
  %indvars.iv.next151.i45.i = add nuw nsw i64 %indvars.iv150.i41.i, 1 ; 2 uses
  %exitcond154.not.i46.i = icmp eq i64 %indvars.iv.next151.i45.i, 32
  br i1 %exitcond154.not.i46.i, label %tdefl_optimize_huffman_table.exit47.i, label %bb.i

tdefl_optimize_huffman_table.exit47.i:            ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.pl = load i32, ptr %i.pk, align 4            ; 2 uses
  %i.pm = shl nuw i32 1, %i.pl
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.po = load i32, ptr %i.pn, align 8
  %i.pp = or i32 %i.po, %i.pm                     ; 3 uses
  store i32 %i.pp, ptr %i.pn, align 8
  %i.pq = add i32 %i.pl, 2                        ; 4 uses
  store i32 %i.pq, ptr %i.pk, align 4
  %i.pr = icmp ugt i32 %i.pq, 7
  br i1 %i.pr, label %.lr.ph64.i, label %tdefl_start_static_block.exit

.lr.ph64.i:                                       ; preds = %tdefl_optimize_huffman_table.exit47.i
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.pre75.i = load ptr, ptr %i.ps, align 8
  %.pre77.i = load ptr, ptr %i.pt, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph64.i
  %i.pu = phi i32 [ %i.pq, %.lr.ph64.i ], [ %i.qg, %bb.p ]
  %i.pv = phi i32 [ %i.pp, %.lr.ph64.i ], [ %i.qf, %bb.p ] ; 2 uses
  %i.pw = phi ptr [ %.pre77.i, %.lr.ph64.i ], [ %i.qd, %bb.p ] ; 2 uses
  %i.px = phi ptr [ %.pre75.i, %.lr.ph64.i ], [ %i.qe, %bb.p ] ; 4 uses
  %i.py = icmp ult ptr %i.px, %i.pw
  br i1 %i.py, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.pz = trunc i32 %i.pv to i8
  %i.qa = getelementptr inbounds nuw i8, ptr %i.px, i64 1
  store ptr %i.qa, ptr %i.ps, align 8
  store i8 %i.pz, ptr %i.px, align 1
  %.pre.i = load ptr, ptr %i.ps, align 8
  %.pre76.i = load ptr, ptr %i.pt, align 8
  %.pre78.i = load i32, ptr %i.pn, align 8
  %.pre79.i = load i32, ptr %i.pk, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.qb = phi i32 [ %.pre79.i, %bb.o ], [ %i.pu, %bb.n ]
  %i.qc = phi i32 [ %.pre78.i, %bb.o ], [ %i.pv, %bb.n ]
  %i.qd = phi ptr [ %.pre76.i, %bb.o ], [ %i.pw, %bb.n ]
  %i.qe = phi ptr [ %.pre.i, %bb.o ], [ %i.px, %bb.n ]
  %i.qf = lshr i32 %i.qc, 8                       ; 3 uses
  store i32 %i.qf, ptr %i.pn, align 8
  %i.qg = add i32 %i.qb, -8                       ; 4 uses
  store i32 %i.qg, ptr %i.pk, align 4
  %i.qh = icmp ugt i32 %i.qg, 7
  br i1 %i.qh, label %bb.n, label %tdefl_start_static_block.exit

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 33738
  store i16 1, ptr %i.qi, align 2
  tail call fastcc void @tdefl_optimize_huffman_table(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 288, i32 noundef 15, i32 noundef 0)
  tail call fastcc void @tdefl_optimize_huffman_table(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 32, i32 noundef 15, i32 noundef 0)
  %i.qj = getelementptr i8, ptr %0, i64 36967
  %i.qk = load i8, ptr %i.qj, align 1
  %.not.i = icmp eq i8 %i.qk, 0
  br i1 %.not.i, label %bb.r, label %bb.at

bb.r:                                             ; preds = %bb.q
  %i.ql = getelementptr i8, ptr %0, i64 36966
  %i.qm = load i8, ptr %i.ql, align 2
  %.not.1.i = icmp eq i8 %i.qm, 0
  br i1 %.not.1.i, label %bb.s, label %bb.at

bb.s:                                             ; preds = %bb.r
  %i.qn = getelementptr i8, ptr %0, i64 36965
  %i.qo = load i8, ptr %i.qn, align 1
  %.not.2.i = icmp eq i8 %i.qo, 0
  br i1 %.not.2.i, label %bb.t, label %bb.at

bb.t:                                             ; preds = %bb.s
  %i.qp = getelementptr i8, ptr %0, i64 36964
  %i.qq = load i8, ptr %i.qp, align 2
  %.not.3.i = icmp eq i8 %i.qq, 0
  br i1 %.not.3.i, label %bb.u, label %bb.at

bb.u:                                             ; preds = %bb.t
  %i.qr = getelementptr i8, ptr %0, i64 36963
  %i.qs = load i8, ptr %i.qr, align 1
  %.not.4.i = icmp eq i8 %i.qs, 0
  br i1 %.not.4.i, label %bb.v, label %bb.at

bb.v:                                             ; preds = %bb.u
  %i.qt = getelementptr i8, ptr %0, i64 36962
  %i.qu = load i8, ptr %i.qt, align 2
  %.not.5.i = icmp eq i8 %i.qu, 0
  br i1 %.not.5.i, label %bb.w, label %bb.at

bb.w:                                             ; preds = %bb.v
  %i.qv = getelementptr i8, ptr %0, i64 36961
  %i.qw = load i8, ptr %i.qv, align 1
  %.not.6.i = icmp eq i8 %i.qw, 0
  br i1 %.not.6.i, label %bb.x, label %bb.at

bb.x:                                             ; preds = %bb.w
  %i.qx = getelementptr i8, ptr %0, i64 36960
  %i.qy = load i8, ptr %i.qx, align 2
  %.not.7.i = icmp eq i8 %i.qy, 0
  br i1 %.not.7.i, label %bb.y, label %bb.at

bb.y:                                             ; preds = %bb.x
  %i.qz = getelementptr i8, ptr %0, i64 36959
  %i.ra = load i8, ptr %i.qz, align 1
  %.not.8.i = icmp eq i8 %i.ra, 0
  br i1 %.not.8.i, label %bb.z, label %bb.at

bb.z:                                             ; preds = %bb.y
  %i.rb = getelementptr i8, ptr %0, i64 36958
  %i.rc = load i8, ptr %i.rb, align 2
  %.not.9.i = icmp eq i8 %i.rc, 0
  br i1 %.not.9.i, label %bb.aa, label %bb.at

bb.aa:                                            ; preds = %bb.z
  %i.rd = getelementptr i8, ptr %0, i64 36957
  %i.re = load i8, ptr %i.rd, align 1
  %.not.10.i = icmp eq i8 %i.re, 0
  br i1 %.not.10.i, label %bb.ab, label %bb.at

bb.ab:                                            ; preds = %bb.aa
  %i.rf = getelementptr i8, ptr %0, i64 36956
  %i.rg = load i8, ptr %i.rf, align 2
  %.not.11.i = icmp eq i8 %i.rg, 0
  br i1 %.not.11.i, label %bb.ac, label %bb.at

bb.ac:                                            ; preds = %bb.ab
  %i.rh = getelementptr i8, ptr %0, i64 36955
  %i.ri = load i8, ptr %i.rh, align 1
  %.not.12.i = icmp eq i8 %i.ri, 0
  br i1 %.not.12.i, label %bb.ad, label %bb.at

bb.ad:                                            ; preds = %bb.ac
  %i.rj = getelementptr i8, ptr %0, i64 36954
  %i.rk = load i8, ptr %i.rj, align 2
  %.not.13.i = icmp eq i8 %i.rk, 0
  br i1 %.not.13.i, label %bb.ae, label %bb.at

bb.ae:                                            ; preds = %bb.ad
  %i.rl = getelementptr i8, ptr %0, i64 36953
  %i.rm = load i8, ptr %i.rl, align 1
  %.not.14.i = icmp eq i8 %i.rm, 0
  br i1 %.not.14.i, label %bb.af, label %bb.at

bb.af:                                            ; preds = %bb.ae
  %i.rn = getelementptr i8, ptr %0, i64 36952
  %i.ro = load i8, ptr %i.rn, align 2
  %.not.15.i = icmp eq i8 %i.ro, 0
  br i1 %.not.15.i, label %bb.ag, label %bb.at

bb.ag:                                            ; preds = %bb.af
  %i.rp = getelementptr i8, ptr %0, i64 36951
  %i.rq = load i8, ptr %i.rp, align 1
  %.not.16.i = icmp eq i8 %i.rq, 0
  br i1 %.not.16.i, label %bb.ah, label %bb.at

bb.ah:                                            ; preds = %bb.ag
  %i.rr = getelementptr i8, ptr %0, i64 36950
  %i.rs = load i8, ptr %i.rr, align 2
  %.not.17.i = icmp eq i8 %i.rs, 0
  br i1 %.not.17.i, label %bb.ai, label %bb.at

bb.ai:                                            ; preds = %bb.ah
  %i.rt = getelementptr i8, ptr %0, i64 36949
  %i.ru = load i8, ptr %i.rt, align 1
  %.not.18.i = icmp eq i8 %i.ru, 0
  br i1 %.not.18.i, label %bb.aj, label %bb.at

bb.aj:                                            ; preds = %bb.ai
  %i.rv = getelementptr i8, ptr %0, i64 36948
  %i.rw = load i8, ptr %i.rv, align 2
  %.not.19.i = icmp eq i8 %i.rw, 0
  br i1 %.not.19.i, label %bb.ak, label %bb.at

bb.ak:                                            ; preds = %bb.aj
  %i.rx = getelementptr i8, ptr %0, i64 36947
  %i.ry = load i8, ptr %i.rx, align 1
  %.not.20.i = icmp eq i8 %i.ry, 0
  br i1 %.not.20.i, label %bb.al, label %bb.at

bb.al:                                            ; preds = %bb.ak
  %i.rz = getelementptr i8, ptr %0, i64 36946
end_hunk_6
begin_hunk_7_@tdefl_compress_block:bb.a

bb.df:                                            ; preds = %bb.de
  %i.add = getelementptr inbounds nuw i8, ptr %0, i64 37271
  %i.ade = load i8, ptr %i.add, align 1
  %.not304.4.i = icmp eq i8 %i.ade, 0
  br i1 %.not304.4.i, label %bb.dg, label %bb.dq

bb.dg:                                            ; preds = %bb.df
  %i.adf = getelementptr inbounds nuw i8, ptr %0, i64 37261
  %i.adg = load i8, ptr %i.adf, align 1
  %.not304.5.i = icmp eq i8 %i.adg, 0
  br i1 %.not304.5.i, label %bb.dh, label %bb.dq

bb.dh:                                            ; preds = %bb.dg
  %i.adh = getelementptr inbounds nuw i8, ptr %0, i64 37270
  %i.adi = load i8, ptr %i.adh, align 2
  %.not304.6.i = icmp eq i8 %i.adi, 0
  br i1 %.not304.6.i, label %bb.di, label %bb.dq

bb.di:                                            ; preds = %bb.dh
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 37262
  %i.adk = load i8, ptr %i.adj, align 2
  %.not304.7.i = icmp eq i8 %i.adk, 0
  br i1 %.not304.7.i, label %bb.dj, label %bb.dq

bb.dj:                                            ; preds = %bb.di
  %i.adl = getelementptr inbounds nuw i8, ptr %0, i64 37269
  %i.adm = load i8, ptr %i.adl, align 1
  %.not304.8.i = icmp eq i8 %i.adm, 0
  br i1 %.not304.8.i, label %bb.dk, label %bb.dq

bb.dk:                                            ; preds = %bb.dj
  %i.adn = getelementptr inbounds nuw i8, ptr %0, i64 37263
  %i.ado = load i8, ptr %i.adn, align 1
  %.not304.9.i = icmp eq i8 %i.ado, 0
  br i1 %.not304.9.i, label %bb.dl, label %bb.dq

bb.dl:                                            ; preds = %bb.dk
  %i.adp = getelementptr inbounds nuw i8, ptr %0, i64 37268
  %i.adq = load i8, ptr %i.adp, align 4
  %.not304.10.i = icmp eq i8 %i.adq, 0
  br i1 %.not304.10.i, label %bb.dm, label %bb.dq

bb.dm:                                            ; preds = %bb.dl
  %i.adr = getelementptr inbounds nuw i8, ptr %0, i64 37264
  %i.ads = load i8, ptr %i.adr, align 8
  %.not304.11.i = icmp eq i8 %i.ads, 0
  br i1 %.not304.11.i, label %bb.dn, label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  %i.adt = getelementptr inbounds nuw i8, ptr %0, i64 37267
  %i.adu = load i8, ptr %i.adt, align 1
  %.not304.12.i = icmp eq i8 %i.adu, 0
  br i1 %.not304.12.i, label %bb.do, label %bb.dq

bb.do:                                            ; preds = %bb.dn
  %i.adv = getelementptr inbounds nuw i8, ptr %0, i64 37265
  %i.adw = load i8, ptr %i.adv, align 1
  %.not304.13.i = icmp eq i8 %i.adw, 0
  br i1 %.not304.13.i, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.adx = getelementptr inbounds nuw i8, ptr %0, i64 37266
  %i.ady = load i8, ptr %i.adx, align 2
  %.not304.14.i = icmp eq i8 %i.ady, 0
  %spec.select536.i = select i1 %.not304.14.i, i32 3, i32 4
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %.preheader319.i
  %.0280.lcssa.i = phi i32 [ 18, %.preheader319.i ], [ %spec.select536.i, %bb.dp ], [ 17, %bb.dc ], [ 9, %bb.dk ], [ 16, %bb.dd ], [ 8, %bb.dl ], [ 15, %bb.de ], [ 5, %bb.do ], [ 14, %bb.df ], [ 6, %bb.dn ], [ 13, %bb.dg ], [ 10, %bb.dj ], [ 12, %bb.dh ], [ 7, %bb.dm ], [ 11, %bb.di ] ; 2 uses
  %i.adz = add nsw i32 %.0280.lcssa.i, -3
  %i.aea = shl nuw nsw i32 %i.adz, %storemerge303.lcssa.i
  %i.aeb = or i32 %i.aea, %i.acf                  ; 3 uses
  store i32 %i.aeb, ptr %i.aag, align 8
  %i.aec = add nuw nsw i32 %storemerge303.lcssa.i, 4 ; 3 uses
  store i32 %i.aec, ptr %i.aad, align 4
  %i.aed = icmp samesign ugt i32 %storemerge303.lcssa.i, 3
  br i1 %i.aed, label %.lr.ph358.i, label %.preheader318.i

.lr.ph358.i:                                      ; preds = %bb.dq
  %i.aee = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.pre436.i = load ptr, ptr %i.aee, align 8
  %.pre438.i = load ptr, ptr %i.aef, align 8
  br label %bb.dr

.preheader318.i:                                  ; preds = %bb.dt, %bb.dq
  %i.aeg = phi i32 [ %i.aeb, %bb.dq ], [ %i.aew, %bb.dt ]
  %i.aeh = phi i32 [ %i.aec, %bb.dq ], [ %i.aex, %bb.dt ]
  %i.aei = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.aek = add nuw nsw i32 %.0280.lcssa.i, 1
  %wide.trip.count416.i = zext nneg i32 %i.aek to i64
  br label %bb.du

bb.dr:                                            ; preds = %bb.dt, %.lr.ph358.i
  %i.ael = phi i32 [ %i.aec, %.lr.ph358.i ], [ %i.aex, %bb.dt ]
  %i.aem = phi i32 [ %i.aeb, %.lr.ph358.i ], [ %i.aew, %bb.dt ] ; 2 uses
  %i.aen = phi ptr [ %.pre438.i, %.lr.ph358.i ], [ %i.aeu, %bb.dt ] ; 2 uses
  %i.aeo = phi ptr [ %.pre436.i, %.lr.ph358.i ], [ %i.aev, %bb.dt ] ; 4 uses
  %i.aep = icmp ult ptr %i.aeo, %i.aen
  br i1 %i.aep, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.aeq = trunc i32 %i.aem to i8
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeo, i64 1
  store ptr %i.aer, ptr %i.aee, align 8
  store i8 %i.aeq, ptr %i.aeo, align 1
  %.pre435.i = load ptr, ptr %i.aee, align 8
  %.pre437.i = load ptr, ptr %i.aef, align 8
  %.pre439.i = load i32, ptr %i.aag, align 8
  %.pre440.i = load i32, ptr %i.aad, align 4
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.aes = phi i32 [ %.pre440.i, %bb.ds ], [ %i.ael, %bb.dr ]
  %i.aet = phi i32 [ %.pre439.i, %bb.ds ], [ %i.aem, %bb.dr ]
  %i.aeu = phi ptr [ %.pre437.i, %bb.ds ], [ %i.aen, %bb.dr ]
  %i.aev = phi ptr [ %.pre435.i, %bb.ds ], [ %i.aeo, %bb.dr ]
  %i.aew = lshr i32 %i.aet, 8                     ; 3 uses
  store i32 %i.aew, ptr %i.aag, align 8
  %i.aex = add i32 %i.aes, -8                     ; 4 uses
  store i32 %i.aex, ptr %i.aad, align 4
  %i.aey = icmp ugt i32 %i.aex, 7
  br i1 %i.aey, label %bb.dr, label %.preheader318.i

.preheader.i:                                     ; preds = %._crit_edge361.i
  %.not383.i = icmp eq i32 %.19.i, 0
  br i1 %.not383.i, label %tdefl_start_dynamic_block.exit, label %.lr.ph380.i

.lr.ph380.i:                                      ; preds = %.preheader.i
  %i.aez = getelementptr inbounds nuw i8, ptr %0, i64 36106
  br label %bb.dx

bb.du:                                            ; preds = %._crit_edge361.i, %.preheader318.i
  %i.afa = phi i32 [ %i.aeg, %.preheader318.i ], [ %i.agi, %._crit_edge361.i ]
  %i.afb = phi i32 [ %i.aeh, %.preheader318.i ], [ %i.agj, %._crit_edge361.i ] ; 3 uses
  %indvars.iv413.i = phi i64 [ 0, %.preheader318.i ], [ %indvars.iv.next414.i, %._crit_edge361.i ] ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr @s_tdefl_packed_code_size_syms_swizzle, i64 %indvars.iv413.i
  %i.afd = load i8, ptr %i.afc, align 1
  %i.afe = zext i8 %i.afd to i64
  %i.aff = getelementptr inbounds nuw i8, ptr %i.acg, i64 %i.afe
  %i.afg = load i8, ptr %i.aff, align 1
  %i.afh = zext i8 %i.afg to i32
  %i.afi = shl nuw nsw i32 %i.afh, %i.afb
  %i.afj = or i32 %i.afi, %i.afa                  ; 4 uses
  store i32 %i.afj, ptr %i.aag, align 8
  %i.afk = add nuw nsw i32 %i.afb, 3              ; 4 uses
  store i32 %i.afk, ptr %i.aad, align 4
  %i.afl = icmp samesign ugt i32 %i.afb, 4
  br i1 %i.afl, label %.lr.ph360.i, label %._crit_edge361.i

.lr.ph360.i:                                      ; preds = %bb.du
  %i.afm = load ptr, ptr %i.aei, align 8          ; 2 uses
  %i.afn = load ptr, ptr %i.aej, align 8          ; 2 uses
  %i.afo = icmp ult ptr %i.afm, %i.afn
  br i1 %i.afo, label %.lr.ph360.split.i, label %.lr.ph360.split.us.i

.lr.ph360.split.us.i:                             ; preds = %.lr.ph360.i, %.lr.ph360.split.us.i
  %i.afp = phi i32 [ %i.afs, %.lr.ph360.split.us.i ], [ %i.afk, %.lr.ph360.i ]
  %i.afq = phi i32 [ %i.afr, %.lr.ph360.split.us.i ], [ %i.afj, %.lr.ph360.i ]
  %i.afr = lshr i32 %i.afq, 8                     ; 3 uses
  %i.afs = add i32 %i.afp, -8                     ; 4 uses
  %i.aft = icmp ugt i32 %i.afs, 7
  br i1 %i.aft, label %.lr.ph360.split.us.i, label %._crit_edge361.split.us.i

._crit_edge361.split.us.i:                        ; preds = %.lr.ph360.split.us.i
  store i32 %i.afr, ptr %i.aag, align 8
  store i32 %i.afs, ptr %i.aad, align 4
  br label %._crit_edge361.i

.lr.ph360.split.i:                                ; preds = %.lr.ph360.i, %bb.dw
  %i.afu = phi i32 [ %i.agg, %bb.dw ], [ %i.afk, %.lr.ph360.i ]
  %i.afv = phi i32 [ %i.agf, %bb.dw ], [ %i.afj, %.lr.ph360.i ] ; 2 uses
  %i.afw = phi ptr [ %i.agd, %bb.dw ], [ %i.afn, %.lr.ph360.i ] ; 2 uses
  %i.afx = phi ptr [ %i.age, %bb.dw ], [ %i.afm, %.lr.ph360.i ] ; 4 uses
  %i.afy = icmp ult ptr %i.afx, %i.afw
  br i1 %i.afy, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %.lr.ph360.split.i
  %i.afz = trunc i32 %i.afv to i8
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afx, i64 1
  store ptr %i.aga, ptr %i.aei, align 8
  store i8 %i.afz, ptr %i.afx, align 1
  %.pre441.i = load ptr, ptr %i.aei, align 8
  %.pre443.i = load ptr, ptr %i.aej, align 8
  %.pre445.i = load i32, ptr %i.aag, align 8
  %.pre446.i = load i32, ptr %i.aad, align 4
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %.lr.ph360.split.i
  %i.agb = phi i32 [ %.pre446.i, %bb.dv ], [ %i.afu, %.lr.ph360.split.i ]
  %i.agc = phi i32 [ %.pre445.i, %bb.dv ], [ %i.afv, %.lr.ph360.split.i ]
  %i.agd = phi ptr [ %.pre443.i, %bb.dv ], [ %i.afw, %.lr.ph360.split.i ]
  %i.age = phi ptr [ %.pre441.i, %bb.dv ], [ %i.afx, %.lr.ph360.split.i ]
  %i.agf = lshr i32 %i.agc, 8                     ; 3 uses
  store i32 %i.agf, ptr %i.aag, align 8
  %i.agg = add i32 %i.agb, -8                     ; 4 uses
  store i32 %i.agg, ptr %i.aad, align 4
  %i.agh = icmp ugt i32 %i.agg, 7
  br i1 %i.agh, label %.lr.ph360.split.i, label %._crit_edge361.i, !llvm.loop !33

._crit_edge361.i:                                 ; preds = %bb.dw, %._crit_edge361.split.us.i, %bb.du
  %i.agi = phi i32 [ %i.afj, %bb.du ], [ %i.afr, %._crit_edge361.split.us.i ], [ %i.agf, %bb.dw ] ; 3 uses
  %i.agj = phi i32 [ %i.afk, %bb.du ], [ %i.afs, %._crit_edge361.split.us.i ], [ %i.agg, %bb.dw ] ; 3 uses
  %indvars.iv.next414.i = add nuw nsw i64 %indvars.iv413.i, 1 ; 2 uses
  %exitcond417.not.i = icmp eq i64 %indvars.iv.next414.i, %wide.trip.count416.i
  br i1 %exitcond417.not.i, label %.preheader.i, label %bb.du

bb.dx:                                            ; preds = %.loopexit.i, %.lr.ph380.i
  %i.agk = phi i32 [ %i.agi, %.lr.ph380.i ], [ %i.ajx, %.loopexit.i ]
  %i.agl = phi i32 [ %i.agj, %.lr.ph380.i ], [ %i.ajy, %.loopexit.i ] ; 3 uses
  %.0261379.i = phi i32 [ 0, %.lr.ph380.i ], [ %.1.i, %.loopexit.i ] ; 3 uses
  %i.agm = add nuw i32 %.0261379.i, 1             ; 2 uses
  %i.agn = zext i32 %.0261379.i to i64
  %i.ago = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.agn
  %i.agp = load i8, ptr %i.ago, align 1           ; 2 uses
  %i.agq = zext i8 %i.agp to i64                  ; 3 uses
  %i.agr = getelementptr inbounds nuw [2 x i8], ptr %i.aez, i64 %i.agq
  %i.ags = load i16, ptr %i.agr, align 2
  %i.agt = zext i16 %i.ags to i32
  %i.agu = getelementptr inbounds nuw i8, ptr %i.acg, i64 %i.agq
  %i.agv = load i8, ptr %i.agu, align 1
  %i.agw = zext i8 %i.agv to i32                  ; 2 uses
  %i.agx = shl nuw nsw i32 %i.agt, %i.agl
  %i.agy = or i32 %i.agx, %i.agk                  ; 4 uses
  store i32 %i.agy, ptr %i.aag, align 8
  %i.agz = add nuw nsw i32 %i.agl, %i.agw         ; 6 uses
  store i32 %i.agz, ptr %i.aad, align 4
  %i.aha = icmp samesign ugt i32 %i.agz, 7
  br i1 %i.aha, label %.lr.ph366.i, label %._crit_edge367.i

.lr.ph366.i:                                      ; preds = %bb.dx
  %i.ahb = load ptr, ptr %i.aei, align 8          ; 2 uses
  %i.ahc = load ptr, ptr %i.aej, align 8          ; 2 uses
  %i.ahd = icmp ult ptr %i.ahb, %i.ahc
  br i1 %i.ahd, label %.lr.ph366.split.i, label %.lr.ph366.split.us.i.preheader

.lr.ph366.split.us.i.preheader:                   ; preds = %.lr.ph366.i
  %i.ahe = add i32 %i.agl, -8
  %i.ahf = add i32 %i.ahe, %i.agw                 ; 2 uses
  %i.ahg = lshr i32 %i.ahf, 3
  %i.ahh = add nuw nsw i32 %i.ahg, 1
  %xtraiter351 = and i32 %i.ahh, 7                ; 2 uses
  %lcmp.mod352.not = icmp eq i32 %xtraiter351, 0
  br i1 %lcmp.mod352.not, label %.lr.ph366.split.us.i.prol.loopexit, label %.lr.ph366.split.us.i.prol

.lr.ph366.split.us.i.prol:                        ; preds = %.lr.ph366.split.us.i.preheader, %.lr.ph366.split.us.i.prol
  %i.ahi = phi i32 [ %i.ahl, %.lr.ph366.split.us.i.prol ], [ %i.agz, %.lr.ph366.split.us.i.preheader ]
  %i.ahj = phi i32 [ %i.ahk, %.lr.ph366.split.us.i.prol ], [ %i.agy, %.lr.ph366.split.us.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph366.split.us.i.prol ], [ 0, %.lr.ph366.split.us.i.preheader ]
  %i.ahk = lshr i32 %i.ahj, 8                     ; 2 uses
  %i.ahl = add i32 %i.ahi, -8                     ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter351
  br i1 %prol.iter.cmp.not, label %.lr.ph366.split.us.i.prol.loopexit, label %.lr.ph366.split.us.i.prol, !llvm.loop !34

.lr.ph366.split.us.i.prol.loopexit:               ; preds = %.lr.ph366.split.us.i.prol, %.lr.ph366.split.us.i.preheader
  %.unr = phi i32 [ %i.agz, %.lr.ph366.split.us.i.preheader ], [ %i.ahl, %.lr.ph366.split.us.i.prol ]
  %.lcssa310.unr = phi i32 [ poison, %.lr.ph366.split.us.i.preheader ], [ %i.ahk, %.lr.ph366.split.us.i.prol ]
  %.lcssa309.unr = phi i32 [ poison, %.lr.ph366.split.us.i.preheader ], [ %i.ahl, %.lr.ph366.split.us.i.prol ]
  %i.ahm = icmp ult i32 %i.ahf, 56
  br i1 %i.ahm, label %._crit_edge367.split.us.i, label %.lr.ph366.split.us.i

.lr.ph366.split.us.i:                             ; preds = %.lr.ph366.split.us.i.prol.loopexit, %.lr.ph366.split.us.i
  %i.ahn = phi i32 [ %i.aho, %.lr.ph366.split.us.i ], [ %.unr, %.lr.ph366.split.us.i.prol.loopexit ]
  %i.aho = add i32 %i.ahn, -64                    ; 3 uses
  %i.ahp = icmp ugt i32 %i.aho, 7
  br i1 %i.ahp, label %.lr.ph366.split.us.i, label %._crit_edge367.split.us.i

._crit_edge367.split.us.i:                        ; preds = %.lr.ph366.split.us.i, %.lr.ph366.split.us.i.prol.loopexit
  %.lcssa310 = phi i32 [ %.lcssa310.unr, %.lr.ph366.split.us.i.prol.loopexit ], [ 0, %.lr.ph366.split.us.i ] ; 2 uses
  %.lcssa309 = phi i32 [ %.lcssa309.unr, %.lr.ph366.split.us.i.prol.loopexit ], [ %i.aho, %.lr.ph366.split.us.i ] ; 2 uses
  store i32 %.lcssa310, ptr %i.aag, align 8
  store i32 %.lcssa309, ptr %i.aad, align 4
  br label %._crit_edge367.i

.lr.ph366.split.i:                                ; preds = %.lr.ph366.i, %bb.dz
  %i.ahq = phi i32 [ %i.aic, %bb.dz ], [ %i.agz, %.lr.ph366.i ]
  %i.ahr = phi i32 [ %i.aib, %bb.dz ], [ %i.agy, %.lr.ph366.i ] ; 2 uses
  %i.ahs = phi ptr [ %i.ahz, %bb.dz ], [ %i.ahc, %.lr.ph366.i ] ; 2 uses
  %i.aht = phi ptr [ %i.aia, %bb.dz ], [ %i.ahb, %.lr.ph366.i ] ; 4 uses
  %i.ahu = icmp ult ptr %i.aht, %i.ahs
  br i1 %i.ahu, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %.lr.ph366.split.i
  %i.ahv = trunc i32 %i.ahr to i8
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.aht, i64 1
  store ptr %i.ahw, ptr %i.aei, align 8
  store i8 %i.ahv, ptr %i.aht, align 1
  %.pre447.i = load ptr, ptr %i.aei, align 8
  %.pre449.i = load ptr, ptr %i.aej, align 8
  %.pre451.i = load i32, ptr %i.aag, align 8
  %.pre452.i = load i32, ptr %i.aad, align 4
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %.lr.ph366.split.i
  %i.ahx = phi i32 [ %.pre452.i, %bb.dy ], [ %i.ahq, %.lr.ph366.split.i ]
  %i.ahy = phi i32 [ %.pre451.i, %bb.dy ], [ %i.ahr, %.lr.ph366.split.i ]
  %i.ahz = phi ptr [ %.pre449.i, %bb.dy ], [ %i.ahs, %.lr.ph366.split.i ]
  %i.aia = phi ptr [ %.pre447.i, %bb.dy ], [ %i.aht, %.lr.ph366.split.i ]
  %i.aib = lshr i32 %i.ahy, 8                     ; 3 uses
  store i32 %i.aib, ptr %i.aag, align 8
  %i.aic = add i32 %i.ahx, -8                     ; 4 uses
  store i32 %i.aic, ptr %i.aad, align 4
  %i.aid = icmp ugt i32 %i.aic, 7
  br i1 %i.aid, label %.lr.ph366.split.i, label %._crit_edge367.i, !llvm.loop !35

._crit_edge367.i:                                 ; preds = %bb.dz, %._crit_edge367.split.us.i, %bb.dx
  %i.aie = phi i32 [ %i.agy, %bb.dx ], [ %.lcssa310, %._crit_edge367.split.us.i ], [ %i.aib, %bb.dz ] ; 2 uses
  %i.aif = phi i32 [ %i.agz, %bb.dx ], [ %.lcssa309, %._crit_edge367.split.us.i ], [ %i.aic, %bb.dz ] ; 4 uses
  %i.aig = icmp ugt i8 %i.agp, 15
  br i1 %i.aig, label %bb.ea, label %.loopexit.i

bb.ea:                                            ; preds = %._crit_edge367.i
  %i.aih = add nuw i32 %.0261379.i, 2             ; 3 uses
  %i.aii = zext i32 %i.agm to i64
  %i.aij = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aii
  %i.aik = load i8, ptr %i.aij, align 1
  %i.ail = zext i8 %i.aik to i32
  %i.aim = getelementptr i8, ptr @.str.13, i64 %i.agq
  %i.ain = getelementptr i8, ptr %i.aim, i64 -16
  %i.aio = load i8, ptr %i.ain, align 1
  %i.aip = sext i8 %i.aio to i32                  ; 2 uses
  %i.aiq = shl nuw nsw i32 %i.ail, %i.aif
  %i.air = or i32 %i.aiq, %i.aie                  ; 4 uses
  store i32 %i.air, ptr %i.aag, align 8
  %i.ais = add nsw i32 %i.aif, %i.aip             ; 6 uses
  store i32 %i.ais, ptr %i.aad, align 4
  %i.ait = icmp ugt i32 %i.ais, 7
  br i1 %i.ait, label %.lr.ph374.i, label %.loopexit.i

.lr.ph374.i:                                      ; preds = %bb.ea
  %i.aiu = load ptr, ptr %i.aei, align 8          ; 2 uses
  %i.aiv = load ptr, ptr %i.aej, align 8          ; 2 uses
  %i.aiw = icmp ult ptr %i.aiu, %i.aiv
  br i1 %i.aiw, label %.lr.ph374.split.i, label %.lr.ph374.split.us.i.preheader

.lr.ph374.split.us.i.preheader:                   ; preds = %.lr.ph374.i
  %i.aix = add i32 %i.aif, -8
  %i.aiy = add i32 %i.aix, %i.aip                 ; 2 uses
  %i.aiz = lshr i32 %i.aiy, 3
  %i.aja = add nuw nsw i32 %i.aiz, 1
  %xtraiter354 = and i32 %i.aja, 7                ; 2 uses
  %lcmp.mod355.not = icmp eq i32 %xtraiter354, 0
  br i1 %lcmp.mod355.not, label %.lr.ph374.split.us.i.prol.loopexit, label %.lr.ph374.split.us.i.prol

.lr.ph374.split.us.i.prol:                        ; preds = %.lr.ph374.split.us.i.preheader, %.lr.ph374.split.us.i.prol
  %i.ajb = phi i32 [ %i.aje, %.lr.ph374.split.us.i.prol ], [ %i.ais, %.lr.ph374.split.us.i.preheader ]
  %i.ajc = phi i32 [ %i.ajd, %.lr.ph374.split.us.i.prol ], [ %i.air, %.lr.ph374.split.us.i.preheader ]
  %prol.iter356 = phi i32 [ %prol.iter356.next, %.lr.ph374.split.us.i.prol ], [ 0, %.lr.ph374.split.us.i.preheader ]
  %i.ajd = lshr i32 %i.ajc, 8                     ; 2 uses
  %i.aje = add i32 %i.ajb, -8                     ; 3 uses
  %prol.iter356.next = add i32 %prol.iter356, 1   ; 2 uses
  %prol.iter356.cmp.not = icmp eq i32 %prol.iter356.next, %xtraiter354
  br i1 %prol.iter356.cmp.not, label %.lr.ph374.split.us.i.prol.loopexit, label %.lr.ph374.split.us.i.prol, !llvm.loop !36

.lr.ph374.split.us.i.prol.loopexit:               ; preds = %.lr.ph374.split.us.i.prol, %.lr.ph374.split.us.i.preheader
  %.unr357 = phi i32 [ %i.ais, %.lr.ph374.split.us.i.preheader ], [ %i.aje, %.lr.ph374.split.us.i.prol ]
  %.lcssa314.unr = phi i32 [ poison, %.lr.ph374.split.us.i.preheader ], [ %i.ajd, %.lr.ph374.split.us.i.prol ]
  %.lcssa313.unr = phi i32 [ poison, %.lr.ph374.split.us.i.preheader ], [ %i.aje, %.lr.ph374.split.us.i.prol ]
  %i.ajf = icmp ult i32 %i.aiy, 56
  br i1 %i.ajf, label %..loopexit_crit_edge.split.us.i, label %.lr.ph374.split.us.i

.lr.ph374.split.us.i:                             ; preds = %.lr.ph374.split.us.i.prol.loopexit, %.lr.ph374.split.us.i
  %i.ajg = phi i32 [ %i.ajh, %.lr.ph374.split.us.i ], [ %.unr357, %.lr.ph374.split.us.i.prol.loopexit ]
  %i.ajh = add i32 %i.ajg, -64                    ; 3 uses
  %i.aji = icmp ugt i32 %i.ajh, 7
  br i1 %i.aji, label %.lr.ph374.split.us.i, label %..loopexit_crit_edge.split.us.i

..loopexit_crit_edge.split.us.i:                  ; preds = %.lr.ph374.split.us.i, %.lr.ph374.split.us.i.prol.loopexit
  %.lcssa314 = phi i32 [ %.lcssa314.unr, %.lr.ph374.split.us.i.prol.loopexit ], [ 0, %.lr.ph374.split.us.i ] ; 2 uses
  %.lcssa313 = phi i32 [ %.lcssa313.unr, %.lr.ph374.split.us.i.prol.loopexit ], [ %i.ajh, %.lr.ph374.split.us.i ] ; 2 uses
  store i32 %.lcssa314, ptr %i.aag, align 8
  store i32 %.lcssa313, ptr %i.aad, align 4
  br label %.loopexit.i

.lr.ph374.split.i:                                ; preds = %.lr.ph374.i, %bb.ec
  %i.ajj = phi i32 [ %i.ajv, %bb.ec ], [ %i.ais, %.lr.ph374.i ]
  %i.ajk = phi i32 [ %i.aju, %bb.ec ], [ %i.air, %.lr.ph374.i ] ; 2 uses
  %i.ajl = phi ptr [ %i.ajs, %bb.ec ], [ %i.aiv, %.lr.ph374.i ] ; 2 uses
  %i.ajm = phi ptr [ %i.ajt, %bb.ec ], [ %i.aiu, %.lr.ph374.i ] ; 4 uses
  %i.ajn = icmp ult ptr %i.ajm, %i.ajl
  br i1 %i.ajn, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %.lr.ph374.split.i
  %i.ajo = trunc i32 %i.ajk to i8
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajm, i64 1
  store ptr %i.ajp, ptr %i.aei, align 8
  store i8 %i.ajo, ptr %i.ajm, align 1
  %.pre453.i = load ptr, ptr %i.aei, align 8
  %.pre455.i = load ptr, ptr %i.aej, align 8
  %.pre457.i = load i32, ptr %i.aag, align 8
  %.pre458.i = load i32, ptr %i.aad, align 4
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %.lr.ph374.split.i
  %i.ajq = phi i32 [ %.pre458.i, %bb.eb ], [ %i.ajj, %.lr.ph374.split.i ]
  %i.ajr = phi i32 [ %.pre457.i, %bb.eb ], [ %i.ajk, %.lr.ph374.split.i ]
  %i.ajs = phi ptr [ %.pre455.i, %bb.eb ], [ %i.ajl, %.lr.ph374.split.i ]
  %i.ajt = phi ptr [ %.pre453.i, %bb.eb ], [ %i.ajm, %.lr.ph374.split.i ]
  %i.aju = lshr i32 %i.ajr, 8                     ; 3 uses
  store i32 %i.aju, ptr %i.aag, align 8
  %i.ajv = add i32 %i.ajq, -8                     ; 4 uses
  store i32 %i.ajv, ptr %i.aad, align 4
  %i.ajw = icmp ugt i32 %i.ajv, 7
  br i1 %i.ajw, label %.lr.ph374.split.i, label %.loopexit.i, !llvm.loop !37

.loopexit.i:                                      ; preds = %bb.ec, %..loopexit_crit_edge.split.us.i, %bb.ea, %._crit_edge367.i
  %i.ajx = phi i32 [ %i.aie, %._crit_edge367.i ], [ %.lcssa314, %..loopexit_crit_edge.split.us.i ], [ %i.air, %bb.ea ], [ %i.aju, %bb.ec ] ; 2 uses
  %i.ajy = phi i32 [ %i.aif, %._crit_edge367.i ], [ %.lcssa313, %..loopexit_crit_edge.split.us.i ], [ %i.ais, %bb.ea ], [ %i.ajv, %bb.ec ] ; 2 uses
  %.1.i = phi i32 [ %i.agm, %._crit_edge367.i ], [ %i.aih, %..loopexit_crit_edge.split.us.i ], [ %i.aih, %bb.ea ], [ %i.aih, %bb.ec ] ; 2 uses
  %i.ajz = icmp ult i32 %.1.i, %.19.i
  br i1 %i.ajz, label %bb.dx, label %tdefl_start_dynamic_block.exit

tdefl_start_dynamic_block.exit:                   ; preds = %.loopexit.i, %.preheader.i
  %.pre189.i96 = phi i32 [ %i.agi, %.preheader.i ], [ %i.ajx, %.loopexit.i ]
  %.pre187.i94 = phi i32 [ %i.agj, %.preheader.i ], [ %i.ajy, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %tdefl_start_static_block.exit

tdefl_start_static_block.exit:                    ; preds = %bb.p, %tdefl_optimize_huffman_table.exit47.i, %tdefl_start_dynamic_block.exit
  %.pre189.i = phi i32 [ %.pre189.i96, %tdefl_start_dynamic_block.exit ], [ %i.pp, %tdefl_optimize_huffman_table.exit47.i ], [ %i.qf, %bb.p ] ; 2 uses
  %.pre187.i = phi i32 [ %.pre187.i94, %tdefl_start_dynamic_block.exit ], [ %i.pq, %tdefl_optimize_huffman_table.exit47.i ], [ %i.qg, %bb.p ] ; 2 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %0, i64 37546 ; 2 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.akc = load ptr, ptr %i.akb, align 8
  %i.akd = icmp ult ptr %i.aka, %i.akc
  br i1 %i.akd, label %.lr.ph145.i, label %._crit_edge146.i

.lr.ph145.i:                                      ; preds = %tdefl_start_static_block.exit
  %i.ake = getelementptr inbounds nuw i8, ptr %0, i64 34954 ; 2 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %0, i64 36682 ; 2 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 15 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 15 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 15 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 10 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %0, i64 35530
  %i.akl = getelementptr inbounds nuw i8, ptr %0, i64 36970
  br label %bb.ed

bb.ed:                                            ; preds = %.loopexit.i8, %.lr.ph145.i
  %i.akm = phi i32 [ %.pre189.i, %.lr.ph145.i ], [ %i.aqe, %.loopexit.i8 ] ; 2 uses
  %i.akn = phi i32 [ %.pre187.i, %.lr.ph145.i ], [ %i.aqf, %.loopexit.i8 ] ; 4 uses
  %.0111143.i = phi ptr [ %i.aka, %.lr.ph145.i ], [ %.2.i, %.loopexit.i8 ] ; 3 uses
  %.0112142.i = phi i32 [ 1, %.lr.ph145.i ], [ %i.aqg, %.loopexit.i8 ] ; 2 uses
  %i.ako = icmp eq i32 %.0112142.i, 1
  br i1 %i.ako, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.akp = getelementptr inbounds nuw i8, ptr %.0111143.i, i64 1
  %i.akq = load i8, ptr %.0111143.i, align 1
  %i.akr = zext i8 %i.akq to i32
  %i.aks = or disjoint i32 %i.akr, 256
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %.1113.i = phi i32 [ %i.aks, %bb.ee ], [ %.0112142.i, %bb.ed ] ; 2 uses
  %.1.i5 = phi ptr [ %i.akp, %bb.ee ], [ %.0111143.i, %bb.ed ] ; 5 uses
  %i.akt = and i32 %.1113.i, 1
  %.not.i6 = icmp eq i32 %i.akt, 0
  br i1 %.not.i6, label %bb.ep, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.aku = load i8, ptr %.1.i5, align 1           ; 2 uses
  %i.akv = zext i8 %i.aku to i32
  %i.akw = getelementptr inbounds nuw i8, ptr %.1.i5, i64 1
  %i.akx = load i16, ptr %i.akw, align 1          ; 4 uses
  %i.aky = zext i16 %i.akx to i32
  %i.akz = lshr i16 %i.akx, 8
  %i.ala = zext nneg i16 %i.akz to i64            ; 2 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %.1.i5, i64 3 ; 2 uses
  %i.alc = zext i8 %i.aku to i64                  ; 2 uses
  %i.ald = getelementptr inbounds nuw [2 x i8], ptr @s_tdefl_len_sym, i64 %i.alc
  %i.ale = load i16, ptr %i.ald, align 2
  %i.alf = zext i16 %i.ale to i64                 ; 2 uses
  %i.alg = getelementptr inbounds nuw [2 x i8], ptr %i.ake, i64 %i.alf
  %i.alh = load i16, ptr %i.alg, align 2
  %i.ali = zext i16 %i.alh to i32
  %i.alj = getelementptr inbounds nuw i8, ptr %i.akf, i64 %i.alf
  %i.alk = load i8, ptr %i.alj, align 1
  %i.all = zext i8 %i.alk to i32
  %i.alm = shl nuw nsw i32 %i.ali, %i.akn
  %i.aln = or i32 %i.akm, %i.alm                  ; 3 uses
  store i32 %i.aln, ptr %i.akh, align 8
  %i.alo = add nuw nsw i32 %i.akn, %i.all         ; 4 uses
  store i32 %i.alo, ptr %i.akg, align 4
  %i.alp = icmp samesign ugt i32 %i.alo, 7
  br i1 %i.alp, label %.lr.ph.preheader.i, label %._crit_edge.i7

.lr.ph.preheader.i:                               ; preds = %bb.eg
  %.pre158.i = load ptr, ptr %i.aki, align 8
  %.pre160.i = load ptr, ptr %i.akj, align 8
  br label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %bb.ei, %.lr.ph.preheader.i
  %i.alq = phi i32 [ %i.alo, %.lr.ph.preheader.i ], [ %i.amc, %bb.ei ]
  %i.alr = phi i32 [ %i.aln, %.lr.ph.preheader.i ], [ %i.amb, %bb.ei ] ; 2 uses
  %i.als = phi ptr [ %.pre160.i, %.lr.ph.preheader.i ], [ %i.alz, %bb.ei ] ; 2 uses
  %i.alt = phi ptr [ %.pre158.i, %.lr.ph.preheader.i ], [ %i.ama, %bb.ei ] ; 4 uses
  %i.alu = icmp ult ptr %i.alt, %i.als
  br i1 %i.alu, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %.lr.ph.i9
  %i.alv = trunc i32 %i.alr to i8
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alt, i64 1
  store ptr %i.alw, ptr %i.aki, align 8
  store i8 %i.alv, ptr %i.alt, align 1
  %.pre.i10 = load ptr, ptr %i.aki, align 8
  %.pre159.i = load ptr, ptr %i.akj, align 8
  %.pre161.i = load i32, ptr %i.akh, align 8
  %.pre162.i = load i32, ptr %i.akg, align 4
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %.lr.ph.i9
  %i.alx = phi i32 [ %.pre162.i, %bb.eh ], [ %i.alq, %.lr.ph.i9 ]
  %i.aly = phi i32 [ %.pre161.i, %bb.eh ], [ %i.alr, %.lr.ph.i9 ]
  %i.alz = phi ptr [ %.pre159.i, %bb.eh ], [ %i.als, %.lr.ph.i9 ]
  %i.ama = phi ptr [ %.pre.i10, %bb.eh ], [ %i.alt, %.lr.ph.i9 ]
  %i.amb = lshr i32 %i.aly, 8                     ; 3 uses
  store i32 %i.amb, ptr %i.akh, align 8
  %i.amc = add i32 %i.alx, -8                     ; 4 uses
  store i32 %i.amc, ptr %i.akg, align 4
  %i.amd = icmp ugt i32 %i.amc, 7
  br i1 %i.amd, label %.lr.ph.i9, label %._crit_edge.i7

._crit_edge.i7:                                   ; preds = %bb.ei, %bb.eg
  %i.ame = phi i32 [ %i.aln, %bb.eg ], [ %i.amb, %bb.ei ]
  %storemerge125.lcssa.i = phi i32 [ %i.alo, %bb.eg ], [ %i.amc, %bb.ei ] ; 2 uses
  %i.amf = getelementptr inbounds nuw i8, ptr @s_tdefl_len_extra, i64 %i.alc
  %i.amg = load i8, ptr %i.amf, align 1
  %i.amh = zext i8 %i.amg to i32                  ; 2 uses
  %notmask.i = shl nsw i32 -1, %i.amh
  %i.ami = xor i32 %notmask.i, -1
  %i.amj = and i32 %i.ami, %i.akv
  %i.amk = shl nuw nsw i32 %i.amj, %storemerge125.lcssa.i
  %i.aml = or i32 %i.amk, %i.ame                  ; 3 uses
  store i32 %i.aml, ptr %i.akh, align 8
  %i.amm = add nuw nsw i32 %storemerge125.lcssa.i, %i.amh ; 4 uses
  store i32 %i.amm, ptr %i.akg, align 4
  %i.amn = icmp samesign ugt i32 %i.amm, 7
  br i1 %i.amn, label %.lr.ph131.preheader.i, label %._crit_edge132.i

.lr.ph131.preheader.i:                            ; preds = %._crit_edge.i7
  %.pre164.i = load ptr, ptr %i.aki, align 8
  %.pre166.i = load ptr, ptr %i.akj, align 8
  br label %.lr.ph131.i

.lr.ph131.i:                                      ; preds = %bb.ek, %.lr.ph131.preheader.i
  %i.amo = phi i32 [ %i.amm, %.lr.ph131.preheader.i ], [ %i.ana, %bb.ek ]
  %i.amp = phi i32 [ %i.aml, %.lr.ph131.preheader.i ], [ %i.amz, %bb.ek ] ; 2 uses
  %i.amq = phi ptr [ %.pre166.i, %.lr.ph131.preheader.i ], [ %i.amx, %bb.ek ] ; 2 uses
  %i.amr = phi ptr [ %.pre164.i, %.lr.ph131.preheader.i ], [ %i.amy, %bb.ek ] ; 4 uses
  %i.ams = icmp ult ptr %i.amr, %i.amq
  br i1 %i.ams, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %.lr.ph131.i
  %i.amt = trunc i32 %i.amp to i8
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amr, i64 1
  store ptr %i.amu, ptr %i.aki, align 8
  store i8 %i.amt, ptr %i.amr, align 1
  %.pre163.i = load ptr, ptr %i.aki, align 8
  %.pre165.i = load ptr, ptr %i.akj, align 8
  %.pre167.i = load i32, ptr %i.akh, align 8
  %.pre168.i = load i32, ptr %i.akg, align 4
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %.lr.ph131.i
  %i.amv = phi i32 [ %.pre168.i, %bb.ej ], [ %i.amo, %.lr.ph131.i ]
  %i.amw = phi i32 [ %.pre167.i, %bb.ej ], [ %i.amp, %.lr.ph131.i ]
  %i.amx = phi ptr [ %.pre165.i, %bb.ej ], [ %i.amq, %.lr.ph131.i ]
  %i.amy = phi ptr [ %.pre163.i, %bb.ej ], [ %i.amr, %.lr.ph131.i ]
  %i.amz = lshr i32 %i.amw, 8                     ; 3 uses
  store i32 %i.amz, ptr %i.akh, align 8
  %i.ana = add i32 %i.amv, -8                     ; 4 uses
  store i32 %i.ana, ptr %i.akg, align 4
  %i.anb = icmp ugt i32 %i.ana, 7
  br i1 %i.anb, label %.lr.ph131.i, label %._crit_edge132.i

._crit_edge132.i:                                 ; preds = %bb.ek, %._crit_edge.i7
  %i.anc = phi i32 [ %i.aml, %._crit_edge.i7 ], [ %i.amz, %bb.ek ]
  %storemerge126.lcssa.i = phi i32 [ %i.amm, %._crit_edge.i7 ], [ %i.ana, %bb.ek ] ; 2 uses
  %i.and = icmp ult i16 %i.akx, 512               ; 2 uses
  %i.ane = zext i16 %i.akx to i64                 ; 2 uses
  %i.anf = getelementptr inbounds nuw i8, ptr @s_tdefl_small_dist_sym, i64 %i.ane
  %i.ang = getelementptr inbounds nuw i8, ptr @s_tdefl_small_dist_extra, i64 %i.ane
  %i.anh = getelementptr inbounds nuw i8, ptr @s_tdefl_large_dist_sym, i64 %i.ala
  %i.ani = getelementptr inbounds nuw i8, ptr @s_tdefl_large_dist_extra, i64 %i.ala
  %.0110.in.in.i = select i1 %i.and, ptr %i.anf, ptr %i.anh
  %.0.in.in.i = select i1 %i.and, ptr %i.ang, ptr %i.ani
  %.0.in.i = load i8, ptr %.0.in.in.i, align 1
  %.0.i = zext i8 %.0.in.i to i32                 ; 2 uses
  %.0110.in.i = load i8, ptr %.0110.in.in.i, align 1
  %i.anj = zext i8 %.0110.in.i to i64             ; 2 uses
  %i.ank = getelementptr inbounds nuw [2 x i8], ptr %i.akk, i64 %i.anj
  %i.anl = load i16, ptr %i.ank, align 2
  %i.anm = zext i16 %i.anl to i32
  %i.ann = getelementptr inbounds nuw i8, ptr %i.akl, i64 %i.anj
  %i.ano = load i8, ptr %i.ann, align 1
  %i.anp = zext i8 %i.ano to i32
  %i.anq = shl nuw nsw i32 %i.anm, %storemerge126.lcssa.i
  %i.anr = or i32 %i.anq, %i.anc                  ; 3 uses
  store i32 %i.anr, ptr %i.akh, align 8
  %i.ans = add nuw nsw i32 %storemerge126.lcssa.i, %i.anp ; 4 uses
  store i32 %i.ans, ptr %i.akg, align 4
  %i.ant = icmp samesign ugt i32 %i.ans, 7
end_hunk_7
begin_hunk_8_@tdefl_compress_block:bb.a

.lr.ph135.preheader.i:                            ; preds = %._crit_edge132.i
  %.pre170.i = load ptr, ptr %i.aki, align 8
  %.pre172.i = load ptr, ptr %i.akj, align 8
  br label %.lr.ph135.i

.lr.ph135.i:                                      ; preds = %bb.em, %.lr.ph135.preheader.i
  %i.anu = phi i32 [ %i.ans, %.lr.ph135.preheader.i ], [ %i.aog, %bb.em ]
  %i.anv = phi i32 [ %i.anr, %.lr.ph135.preheader.i ], [ %i.aof, %bb.em ] ; 2 uses
  %i.anw = phi ptr [ %.pre172.i, %.lr.ph135.preheader.i ], [ %i.aod, %bb.em ] ; 2 uses
  %i.anx = phi ptr [ %.pre170.i, %.lr.ph135.preheader.i ], [ %i.aoe, %bb.em ] ; 4 uses
  %i.any = icmp ult ptr %i.anx, %i.anw
  br i1 %i.any, label %bb.el, label %bb.em

bb.el:                                            ; preds = %.lr.ph135.i
  %i.anz = trunc i32 %i.anv to i8
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anx, i64 1
  store ptr %i.aoa, ptr %i.aki, align 8
  store i8 %i.anz, ptr %i.anx, align 1
  %.pre169.i = load ptr, ptr %i.aki, align 8
  %.pre171.i = load ptr, ptr %i.akj, align 8
  %.pre173.i = load i32, ptr %i.akh, align 8
  %.pre174.i = load i32, ptr %i.akg, align 4
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %.lr.ph135.i
  %i.aob = phi i32 [ %.pre174.i, %bb.el ], [ %i.anu, %.lr.ph135.i ]
  %i.aoc = phi i32 [ %.pre173.i, %bb.el ], [ %i.anv, %.lr.ph135.i ]
  %i.aod = phi ptr [ %.pre171.i, %bb.el ], [ %i.anw, %.lr.ph135.i ]
  %i.aoe = phi ptr [ %.pre169.i, %bb.el ], [ %i.anx, %.lr.ph135.i ]
  %i.aof = lshr i32 %i.aoc, 8                     ; 3 uses
  store i32 %i.aof, ptr %i.akh, align 8
  %i.aog = add i32 %i.aob, -8                     ; 4 uses
  store i32 %i.aog, ptr %i.akg, align 4
  %i.aoh = icmp ugt i32 %i.aog, 7
  br i1 %i.aoh, label %.lr.ph135.i, label %._crit_edge136.i

._crit_edge136.i:                                 ; preds = %bb.em, %._crit_edge132.i
  %i.aoi = phi i32 [ %i.anr, %._crit_edge132.i ], [ %i.aof, %bb.em ]
  %storemerge127.lcssa.i = phi i32 [ %i.ans, %._crit_edge132.i ], [ %i.aog, %bb.em ] ; 2 uses
  %notmask152.i = shl nsw i32 -1, %.0.i
  %i.aoj = xor i32 %notmask152.i, -1
  %i.aok = and i32 %i.aoj, %i.aky
  %i.aol = shl nuw nsw i32 %i.aok, %storemerge127.lcssa.i
  %i.aom = or i32 %i.aol, %i.aoi                  ; 3 uses
  store i32 %i.aom, ptr %i.akh, align 8
  %i.aon = add nuw nsw i32 %storemerge127.lcssa.i, %.0.i ; 4 uses
  store i32 %i.aon, ptr %i.akg, align 4
  %i.aoo = icmp samesign ugt i32 %i.aon, 7
  br i1 %i.aoo, label %.lr.ph139.preheader.i, label %.loopexit.i8

.lr.ph139.preheader.i:                            ; preds = %._crit_edge136.i
  %.pre176.i = load ptr, ptr %i.aki, align 8
  %.pre178.i = load ptr, ptr %i.akj, align 8
  br label %.lr.ph139.i

.lr.ph139.i:                                      ; preds = %bb.eo, %.lr.ph139.preheader.i
  %i.aop = phi i32 [ %i.aon, %.lr.ph139.preheader.i ], [ %i.apb, %bb.eo ]
  %i.aoq = phi i32 [ %i.aom, %.lr.ph139.preheader.i ], [ %i.apa, %bb.eo ] ; 2 uses
  %i.aor = phi ptr [ %.pre178.i, %.lr.ph139.preheader.i ], [ %i.aoy, %bb.eo ] ; 2 uses
  %i.aos = phi ptr [ %.pre176.i, %.lr.ph139.preheader.i ], [ %i.aoz, %bb.eo ] ; 4 uses
  %i.aot = icmp ult ptr %i.aos, %i.aor
  br i1 %i.aot, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %.lr.ph139.i
  %i.aou = trunc i32 %i.aoq to i8
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aos, i64 1
  store ptr %i.aov, ptr %i.aki, align 8
  store i8 %i.aou, ptr %i.aos, align 1
  %.pre175.i = load ptr, ptr %i.aki, align 8
  %.pre177.i = load ptr, ptr %i.akj, align 8
  %.pre179.i = load i32, ptr %i.akh, align 8
  %.pre180.i = load i32, ptr %i.akg, align 4
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %.lr.ph139.i
  %i.aow = phi i32 [ %.pre180.i, %bb.en ], [ %i.aop, %.lr.ph139.i ]
  %i.aox = phi i32 [ %.pre179.i, %bb.en ], [ %i.aoq, %.lr.ph139.i ]
  %i.aoy = phi ptr [ %.pre177.i, %bb.en ], [ %i.aor, %.lr.ph139.i ]
  %i.aoz = phi ptr [ %.pre175.i, %bb.en ], [ %i.aos, %.lr.ph139.i ]
  %i.apa = lshr i32 %i.aox, 8                     ; 3 uses
  store i32 %i.apa, ptr %i.akh, align 8
  %i.apb = add i32 %i.aow, -8                     ; 4 uses
  store i32 %i.apb, ptr %i.akg, align 4
  %i.apc = icmp ugt i32 %i.apb, 7
  br i1 %i.apc, label %.lr.ph139.i, label %.loopexit.i8

bb.ep:                                            ; preds = %bb.ef
  %i.apd = getelementptr inbounds nuw i8, ptr %.1.i5, i64 1 ; 2 uses
  %i.ape = load i8, ptr %.1.i5, align 1
  %i.apf = zext i8 %i.ape to i64                  ; 2 uses
  %i.apg = getelementptr inbounds nuw [2 x i8], ptr %i.ake, i64 %i.apf
  %i.aph = load i16, ptr %i.apg, align 2
  %i.api = zext i16 %i.aph to i32
  %i.apj = getelementptr inbounds nuw i8, ptr %i.akf, i64 %i.apf
  %i.apk = load i8, ptr %i.apj, align 1
  %i.apl = zext i8 %i.apk to i32
  %i.apm = shl i32 %i.api, %i.akn
  %i.apn = or i32 %i.akm, %i.apm                  ; 3 uses
  store i32 %i.apn, ptr %i.akh, align 8
  %i.apo = add i32 %i.akn, %i.apl                 ; 4 uses
  store i32 %i.apo, ptr %i.akg, align 4
  %i.app = icmp ugt i32 %i.apo, 7
  br i1 %i.app, label %.lr.ph141.preheader.i, label %.loopexit.i8

.lr.ph141.preheader.i:                            ; preds = %bb.ep
  %.pre182.i = load ptr, ptr %i.aki, align 8
  %.pre184.i = load ptr, ptr %i.akj, align 8
  br label %.lr.ph141.i

.lr.ph141.i:                                      ; preds = %bb.er, %.lr.ph141.preheader.i
  %i.apq = phi i32 [ %i.apo, %.lr.ph141.preheader.i ], [ %i.aqc, %bb.er ]
  %i.apr = phi i32 [ %i.apn, %.lr.ph141.preheader.i ], [ %i.aqb, %bb.er ] ; 2 uses
  %i.aps = phi ptr [ %.pre184.i, %.lr.ph141.preheader.i ], [ %i.apz, %bb.er ] ; 2 uses
  %i.apt = phi ptr [ %.pre182.i, %.lr.ph141.preheader.i ], [ %i.aqa, %bb.er ] ; 4 uses
  %i.apu = icmp ult ptr %i.apt, %i.aps
  br i1 %i.apu, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %.lr.ph141.i
  %i.apv = trunc i32 %i.apr to i8
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apt, i64 1
  store ptr %i.apw, ptr %i.aki, align 8
  store i8 %i.apv, ptr %i.apt, align 1
  %.pre181.i = load ptr, ptr %i.aki, align 8
  %.pre183.i = load ptr, ptr %i.akj, align 8
  %.pre185.i = load i32, ptr %i.akh, align 8
  %.pre186.i = load i32, ptr %i.akg, align 4
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %.lr.ph141.i
  %i.apx = phi i32 [ %.pre186.i, %bb.eq ], [ %i.apq, %.lr.ph141.i ]
  %i.apy = phi i32 [ %.pre185.i, %bb.eq ], [ %i.apr, %.lr.ph141.i ]
  %i.apz = phi ptr [ %.pre183.i, %bb.eq ], [ %i.aps, %.lr.ph141.i ]
  %i.aqa = phi ptr [ %.pre181.i, %bb.eq ], [ %i.apt, %.lr.ph141.i ]
  %i.aqb = lshr i32 %i.apy, 8                     ; 3 uses
  store i32 %i.aqb, ptr %i.akh, align 8
  %i.aqc = add i32 %i.apx, -8                     ; 4 uses
  store i32 %i.aqc, ptr %i.akg, align 4
  %i.aqd = icmp ugt i32 %i.aqc, 7
  br i1 %i.aqd, label %.lr.ph141.i, label %.loopexit.i8

.loopexit.i8:                                     ; preds = %bb.eo, %bb.er, %bb.ep, %._crit_edge136.i
  %i.aqe = phi i32 [ %i.apn, %bb.ep ], [ %i.aom, %._crit_edge136.i ], [ %i.aqb, %bb.er ], [ %i.apa, %bb.eo ] ; 2 uses
  %i.aqf = phi i32 [ %i.apo, %bb.ep ], [ %i.aon, %._crit_edge136.i ], [ %i.aqc, %bb.er ], [ %i.apb, %bb.eo ] ; 2 uses
  %.2.i = phi ptr [ %i.apd, %bb.ep ], [ %i.alb, %._crit_edge136.i ], [ %i.apd, %bb.er ], [ %i.alb, %bb.eo ] ; 2 uses
  %i.aqg = lshr i32 %.1113.i, 1
  %i.aqh = load ptr, ptr %i.akb, align 8
  %i.aqi = icmp ult ptr %.2.i, %i.aqh
  br i1 %i.aqi, label %bb.ed, label %._crit_edge146.i

._crit_edge146.i:                                 ; preds = %.loopexit.i8, %tdefl_start_static_block.exit
  %i.aqj = phi i32 [ %.pre189.i, %tdefl_start_static_block.exit ], [ %i.aqe, %.loopexit.i8 ]
  %i.aqk = phi i32 [ %.pre187.i, %tdefl_start_static_block.exit ], [ %i.aqf, %.loopexit.i8 ] ; 3 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %0, i64 35466
  %i.aqm = load i16, ptr %i.aql, align 2
  %i.aqn = zext i16 %i.aqm to i32
  %i.aqo = getelementptr inbounds nuw i8, ptr %0, i64 36938
  %i.aqp = load i8, ptr %i.aqo, align 2
  %i.aqq = zext i8 %i.aqp to i32                  ; 2 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.aqs = shl nuw nsw i32 %i.aqn, %i.aqk
  %i.aqt = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.aqu = or i32 %i.aqs, %i.aqj                  ; 3 uses
  store i32 %i.aqu, ptr %i.aqt, align 8
  %i.aqv = add nuw nsw i32 %i.aqk, %i.aqq         ; 5 uses
  store i32 %i.aqv, ptr %i.aqr, align 4
  %i.aqw = icmp samesign ugt i32 %i.aqv, 7
  %i.aqx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  br i1 %i.aqw, label %.lr.ph148.i, label %._crit_edge146.._crit_edge149_crit_edge.i

._crit_edge146.._crit_edge149_crit_edge.i:        ; preds = %._crit_edge146.i
  %.pre197.i = load ptr, ptr %i.aqx, align 8
  %.phi.trans.insert198.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre199.i = load ptr, ptr %.phi.trans.insert198.i, align 8
  br label %tdefl_compress_lz_codes.exit

.lr.ph148.i:                                      ; preds = %._crit_edge146.i
  %i.aqy = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aqz = load ptr, ptr %i.aqx, align 8          ; 3 uses
  %i.ara = load ptr, ptr %i.aqy, align 8          ; 3 uses
  %i.arb = icmp ult ptr %i.aqz, %i.ara
  br i1 %i.arb, label %.lr.ph148.split.i, label %.lr.ph148.split.us.i.preheader

.lr.ph148.split.us.i.preheader:                   ; preds = %.lr.ph148.i
  %i.arc = add i32 %i.aqk, %i.aqq
  %i.ard = add i32 %i.arc, -8                     ; 2 uses
  %i.are = lshr i32 %i.ard, 3
  %i.arf = add nuw nsw i32 %i.are, 1
  %xtraiter359 = and i32 %i.arf, 7                ; 2 uses
  %lcmp.mod360.not = icmp eq i32 %xtraiter359, 0
  br i1 %lcmp.mod360.not, label %.lr.ph148.split.us.i.prol.loopexit, label %.lr.ph148.split.us.i.prol

.lr.ph148.split.us.i.prol:                        ; preds = %.lr.ph148.split.us.i.preheader, %.lr.ph148.split.us.i.prol
  %i.arg = phi i32 [ %i.arj, %.lr.ph148.split.us.i.prol ], [ %i.aqv, %.lr.ph148.split.us.i.preheader ]
  %i.arh = phi i32 [ %i.ari, %.lr.ph148.split.us.i.prol ], [ %i.aqu, %.lr.ph148.split.us.i.preheader ]
  %prol.iter361 = phi i32 [ %prol.iter361.next, %.lr.ph148.split.us.i.prol ], [ 0, %.lr.ph148.split.us.i.preheader ]
  %i.ari = lshr i32 %i.arh, 8                     ; 2 uses
  %i.arj = add i32 %i.arg, -8                     ; 3 uses
  %prol.iter361.next = add i32 %prol.iter361, 1   ; 2 uses
  %prol.iter361.cmp.not = icmp eq i32 %prol.iter361.next, %xtraiter359
  br i1 %prol.iter361.cmp.not, label %.lr.ph148.split.us.i.prol.loopexit, label %.lr.ph148.split.us.i.prol, !llvm.loop !38

.lr.ph148.split.us.i.prol.loopexit:               ; preds = %.lr.ph148.split.us.i.prol, %.lr.ph148.split.us.i.preheader
  %.unr362 = phi i32 [ %i.aqv, %.lr.ph148.split.us.i.preheader ], [ %i.arj, %.lr.ph148.split.us.i.prol ]
  %.lcssa295.unr = phi i32 [ poison, %.lr.ph148.split.us.i.preheader ], [ %i.ari, %.lr.ph148.split.us.i.prol ]
  %.lcssa294.unr = phi i32 [ poison, %.lr.ph148.split.us.i.preheader ], [ %i.arj, %.lr.ph148.split.us.i.prol ]
  %i.ark = icmp ult i32 %i.ard, 56
  br i1 %i.ark, label %._crit_edge149.split.us.i, label %.lr.ph148.split.us.i

.lr.ph148.split.us.i:                             ; preds = %.lr.ph148.split.us.i.prol.loopexit, %.lr.ph148.split.us.i
  %i.arl = phi i32 [ %i.arm, %.lr.ph148.split.us.i ], [ %.unr362, %.lr.ph148.split.us.i.prol.loopexit ]
  %i.arm = add i32 %i.arl, -64                    ; 3 uses
  %i.arn = icmp ugt i32 %i.arm, 7
  br i1 %i.arn, label %.lr.ph148.split.us.i, label %._crit_edge149.split.us.i

._crit_edge149.split.us.i:                        ; preds = %.lr.ph148.split.us.i, %.lr.ph148.split.us.i.prol.loopexit
  %.lcssa295 = phi i32 [ %.lcssa295.unr, %.lr.ph148.split.us.i.prol.loopexit ], [ 0, %.lr.ph148.split.us.i ]
  %.lcssa294 = phi i32 [ %.lcssa294.unr, %.lr.ph148.split.us.i.prol.loopexit ], [ %i.arm, %.lr.ph148.split.us.i ]
  store i32 %.lcssa295, ptr %i.aqt, align 8
  store i32 %.lcssa294, ptr %i.aqr, align 4
  br label %tdefl_compress_lz_codes.exit

.lr.ph148.split.i:                                ; preds = %.lr.ph148.i, %bb.et
  %i.aro = phi i32 [ %i.asa, %bb.et ], [ %i.aqv, %.lr.ph148.i ]
  %i.arp = phi i32 [ %i.arz, %bb.et ], [ %i.aqu, %.lr.ph148.i ] ; 2 uses
  %i.arq = phi ptr [ %i.arx, %bb.et ], [ %i.ara, %.lr.ph148.i ] ; 2 uses
  %i.arr = phi ptr [ %i.ary, %bb.et ], [ %i.aqz, %.lr.ph148.i ] ; 4 uses
  %i.ars = icmp ult ptr %i.arr, %i.arq
  br i1 %i.ars, label %bb.es, label %bb.et

bb.es:                                            ; preds = %.lr.ph148.split.i
  %i.art = trunc i32 %i.arp to i8
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arr, i64 1
  store ptr %i.aru, ptr %i.aqx, align 8
  store i8 %i.art, ptr %i.arr, align 1
  %.pre190.i = load ptr, ptr %i.aqx, align 8
  %.pre192.i = load ptr, ptr %i.aqy, align 8
  %.pre194.i = load i32, ptr %i.aqt, align 8
  %.pre195.i = load i32, ptr %i.aqr, align 4
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %.lr.ph148.split.i
  %i.arv = phi i32 [ %.pre195.i, %bb.es ], [ %i.aro, %.lr.ph148.split.i ]
  %i.arw = phi i32 [ %.pre194.i, %bb.es ], [ %i.arp, %.lr.ph148.split.i ]
  %i.arx = phi ptr [ %.pre192.i, %bb.es ], [ %i.arq, %.lr.ph148.split.i ] ; 2 uses
  %i.ary = phi ptr [ %.pre190.i, %bb.es ], [ %i.arr, %.lr.ph148.split.i ] ; 2 uses
  %i.arz = lshr i32 %i.arw, 8                     ; 2 uses
  store i32 %i.arz, ptr %i.aqt, align 8
  %i.asa = add i32 %i.arv, -8                     ; 3 uses
  store i32 %i.asa, ptr %i.aqr, align 4
  %i.asb = icmp ugt i32 %i.asa, 7
  br i1 %i.asb, label %.lr.ph148.split.i, label %tdefl_compress_lz_codes.exit, !llvm.loop !39

tdefl_compress_lz_codes.exit:                     ; preds = %bb.et, %._crit_edge146.._crit_edge149_crit_edge.i, %._crit_edge149.split.us.i
  %i.asc = phi ptr [ %.pre199.i, %._crit_edge146.._crit_edge149_crit_edge.i ], [ %i.ara, %._crit_edge149.split.us.i ], [ %i.arx, %bb.et ]
  %i.asd = phi ptr [ %.pre197.i, %._crit_edge146.._crit_edge149_crit_edge.i ], [ %i.aqz, %._crit_edge149.split.us.i ], [ %i.ary, %bb.et ]
  %i.ase = icmp ult ptr %i.asd, %i.asc
  %i.asf = zext i1 %i.ase to i32
  ret i32 %i.asf
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @tdefl_optimize_huffman_table(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 3) %1, i32 noundef range(i32 19, 289) %2, i32 noundef range(i32 7, 16) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #22 {
bb.a:
  %i.a = alloca [512 x i32], align 16             ; 16 uses
  %i.b = alloca [256 x i32], align 16             ; 15 uses
  %i.c = alloca [33 x i32], align 16              ; 32 uses
  %i.d = alloca [33 x i32], align 16              ; 9 uses
  %5 = alloca [288 x %struct.tdefl_sym_freq], align 16 ; 9 uses
  %6 = alloca [288 x %struct.tdefl_sym_freq], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(132) %i.c, i8 0, i64 132, i1 false)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %.new, label %.preheader97

.preheader97:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36682
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr inbounds nuw [288 x i8], ptr %i.e, i64 %i.f ; 5 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %unroll_iter = and i64 %wide.trip.count, 508
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader97
  %indvars.iv = phi i64 [ 0, %.preheader97 ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader97 ], [ %niter.next.3, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.b

.new:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 33226
  %i.aj = zext nneg i32 %1 to i64                 ; 3 uses
  %i.ak = getelementptr inbounds nuw [576 x i8], ptr %i.ai, i64 %i.aj ; 3 uses
  %wide.trip.count129 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter196 = and i64 %wide.trip.count129, 1
  %unroll_iter201 = and i64 %wide.trip.count129, 510
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.new
  %indvars.iv126 = phi i64 [ 0, %.new ], [ %indvars.iv.next127.1, %bb.g ] ; 4 uses
  %.068104 = phi i32 [ 0, %.new ], [ %.1.1, %bb.g ] ; 3 uses
  %niter202 = phi i64 [ 0, %.new ], [ %niter202.next.1, %bb.g ]
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv126
  %i.am = load i16, ptr %i.al, align 2            ; 2 uses
  %.not79 = icmp eq i16 %i.am, 0
  br i1 %.not79, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = sext i32 %.068104 to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %5, i64 %i.an ; 2 uses
  store i16 %i.am, ptr %i.ao, align 4
  %i.ap = trunc i64 %indvars.iv126 to i16
  %i.aq = add nsw i32 %.068104, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  store i16 %i.ap, ptr %i.ar, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i32 [ %i.aq, %bb.d ], [ %.068104, %bb.c ] ; 3 uses
  %indvars.iv.next127 = or disjoint i64 %indvars.iv126, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.next127
  %i.at = load i16, ptr %i.as, align 2            ; 2 uses
  %.not79.1 = icmp eq i16 %i.at, 0
  br i1 %.not79.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = sext i32 %.1 to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %5, i64 %i.au ; 2 uses
  store i16 %i.at, ptr %i.av, align 4
  %i.aw = trunc i64 %indvars.iv.next127 to i16
  %i.ax = add nsw i32 %.1, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i16 %i.aw, ptr %i.ay, align 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.1 = phi i32 [ %i.ax, %bb.f ], [ %.1, %bb.e ] ; 5 uses
  %indvars.iv.next127.1 = add nuw nsw i64 %indvars.iv126, 2 ; 3 uses
  %niter202.next.1 = add nuw nsw i64 %niter202, 2 ; 2 uses
  %niter202.ncmp.1 = icmp eq i64 %niter202.next.1, %unroll_iter201
  br i1 %niter202.ncmp.1, label %.unr-lcssa, label %bb.c

.unr-lcssa:                                       ; preds = %bb.g
  %lcmp.mod198.not = icmp eq i64 %xtraiter196, 0
  br i1 %lcmp.mod198.not, label %.epilog-lcssa, label %.epil.preheader195

.epil.preheader195:                               ; preds = %.unr-lcssa
  %lcmp.mod200 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod200)
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.next127.1
  %i.ba = load i16, ptr %i.az, align 2            ; 2 uses
  %.not79.epil = icmp eq i16 %i.ba, 0
  br i1 %.not79.epil, label %.epilog-lcssa, label %bb.h

bb.h:                                             ; preds = %.epil.preheader195
  %i.bb = sext i32 %.1.1 to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bb ; 2 uses
  store i16 %i.ba, ptr %i.bc, align 4
  %i.bd = trunc i64 %indvars.iv.next127.1 to i16
  %i.be = add nsw i32 %.1.1, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  store i16 %i.bd, ptr %i.bf, align 2
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader195, %bb.h, %.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.1, %.unr-lcssa ], [ %i.be, %bb.h ], [ %.1.1, %.epil.preheader195 ] ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  %.not.i = icmp eq i32 %.1.lcssa, 0
  br i1 %.not.i, label %.critedge.preheader.split.split.i.preheader, label %.lr.ph.preheader.i

.critedge.preheader.split.split.i.preheader:      ; preds = %.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  br label %bb.j

.lr.ph.preheader.i:                               ; preds = %.epilog-lcssa
  %wide.trip.count.i = zext i32 %.1.lcssa to i64  ; 7 uses
  %i.bg = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter203 = and i64 %wide.trip.count.i, 1
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter207 = and i64 %wide.trip.count.i, 4294967294
  br label %.lr.ph.i

.preheader45.i.unr-lcssa:                         ; preds = %.lr.ph.i
  %lcmp.mod205.not = icmp eq i64 %xtraiter203, 0
  br i1 %lcmp.mod205.not, label %.preheader45.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader45.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %.preheader45.i.unr-lcssa ]
  %lcmp.mod206 = trunc i32 %.1.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod206)
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i.epil.init
  %i.bj = load i16, ptr %i.bi, align 4
  %i.bk = zext i16 %i.bj to i32                   ; 2 uses
  %i.bl = and i32 %i.bk, 255
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4
  %i.bq = lshr i32 %i.bk, 8
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1024 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4
  br label %.preheader45.i

.preheader45.i:                                   ; preds = %.preheader45.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 16
end_hunk_8
begin_hunk_9_@tdefl_optimize_huffman_table:bb.a
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ex ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4            ; 2 uses
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr %i.ey, align 4
  %i.fb = zext i32 %i.ez to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.fb
  %i.fd = load i32, ptr %i.es, align 4
  store i32 %i.fd, ptr %i.fc, align 4
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1 ; 2 uses
  %i.fe = add nuw nsw i32 %.03854.us.i, 8
  %exitcond72.not.i = icmp eq i64 %indvars.iv.next69.i, %spec.select.i
  br i1 %exitcond72.not.i, label %tdefl_radix_sort_syms.exit, label %.critedge.preheader.split.split.us.i

tdefl_radix_sort_syms.exit.thread:                ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %tdefl_huffman_enforce_max_code_size.exit

bb.j:                                             ; preds = %bb.j, %.critedge.preheader.split.split.i.preheader
  %indvars.iv73.i = phi i64 [ 0, %.critedge.preheader.split.split.i.preheader ], [ %indvars.iv.next74.i.3, %bb.j ] ; 6 uses
  %.03748.i = phi i32 [ 0, %.critedge.preheader.split.split.i.preheader ], [ %i.fu, %bb.j ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv73.i
  store i32 %.03748.i, ptr %i.ff, align 16
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv73.i
  %i.fh = load i32, ptr %i.fg, align 16
  %i.fi = add i32 %i.fh, %.03748.i                ; 2 uses
  %indvars.iv.next74.i = or disjoint i64 %indvars.iv73.i, 1 ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next74.i
  store i32 %i.fi, ptr %i.fj, align 4
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next74.i
  %i.fl = load i32, ptr %i.fk, align 4
  %i.fm = add i32 %i.fl, %i.fi                    ; 2 uses
  %indvars.iv.next74.i.1 = or disjoint i64 %indvars.iv73.i, 2 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next74.i.1
  store i32 %i.fm, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next74.i.1
  %i.fp = load i32, ptr %i.fo, align 8
  %i.fq = add i32 %i.fp, %i.fm                    ; 2 uses
  %indvars.iv.next74.i.2 = or disjoint i64 %indvars.iv73.i, 3 ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next74.i.2
  store i32 %i.fq, ptr %i.fr, align 4
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next74.i.2
  %i.ft = load i32, ptr %i.fs, align 4
  %i.fu = add i32 %i.ft, %i.fq
  %indvars.iv.next74.i.3 = add nuw nsw i64 %indvars.iv73.i, 4 ; 2 uses
  %exitcond76.not.i.3 = icmp eq i64 %indvars.iv.next74.i.3, 256
  br i1 %exitcond76.not.i.3, label %tdefl_radix_sort_syms.exit.thread, label %bb.j

tdefl_radix_sort_syms.exit:                       ; preds = %._crit_edge.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  switch i32 %.1.lcssa, label %bb.k [
    i32 0, label %tdefl_huffman_enforce_max_code_size.exit
    i32 1, label %tdefl_calculate_minimum_redundancy.exit.thread169
  ]

tdefl_calculate_minimum_redundancy.exit.thread169: ; preds = %tdefl_radix_sort_syms.exit
  store i16 1, ptr %.03953.us.i, align 2
  br label %.lr.ph.preheader

bb.k:                                             ; preds = %tdefl_radix_sort_syms.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %.03953.us.i, i64 4
  %i.fw = load i16, ptr %i.fv, align 2
  %i.fx = load i16, ptr %.03953.us.i, align 2
  %i.fy = add i16 %i.fx, %i.fw
  store i16 %i.fy, ptr %.03953.us.i, align 2
  %i.fz = add i32 %.1.lcssa, -1                   ; 2 uses
  %i.ga = icmp sgt i32 %.1.lcssa, 2
  br i1 %i.ga, label %.lr.ph.preheader.i82, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.k
  %i.gb = add nsw i32 %.1.lcssa, -2               ; 2 uses
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.gc
  store i16 0, ptr %i.gd, align 2
  br label %.preheader.i81.preheader

.lr.ph.preheader.i82:                             ; preds = %bb.k
  %wide.trip.count.i83 = zext nneg i32 %i.fz to i64
  br label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %bb.s, %.lr.ph.preheader.i82
  %indvars.iv.i85 = phi i64 [ 1, %.lr.ph.preheader.i82 ], [ %indvars.iv.next.i87, %bb.s ] ; 8 uses
  %.07992.i = phi i32 [ 2, %.lr.ph.preheader.i82 ], [ %.281.i, %bb.s ] ; 4 uses
  %.08291.i = phi i32 [ 0, %.lr.ph.preheader.i82 ], [ %.284.i, %bb.s ] ; 3 uses
  %.not.i86 = icmp slt i32 %.07992.i, %.1.lcssa
  %i.ge = sext i32 %.08291.i to i64               ; 2 uses
  %i.gf = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.ge ; 2 uses
  %i.gg = load i16, ptr %i.gf, align 2            ; 2 uses
  br i1 %.not.i86, label %bb.l, label %.lr.ph._crit_edge.i

bb.l:                                             ; preds = %.lr.ph.i84
  %i.gh = sext i32 %.07992.i to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.gh
  %i.gj = load i16, ptr %i.gi, align 2            ; 2 uses
  %i.gk = icmp ult i16 %i.gg, %i.gj
  br i1 %i.gk, label %.lr.ph._crit_edge.i, label %bb.m

.lr.ph._crit_edge.i:                              ; preds = %bb.l, %.lr.ph.i84
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85
  store i16 %i.gg, ptr %i.gl, align 2
  %i.gm = trunc i64 %indvars.iv.i85 to i16
  %i.gn = add nsw i32 %.08291.i, 1                ; 2 uses
  store i16 %i.gm, ptr %i.gf, align 2
  %.pre = sext i32 %i.gn to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.go = add nsw i32 %.07992.i, 1
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85
  store i16 %i.gj, ptr %i.gp, align 2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph._crit_edge.i
  %.pre-phi = phi i64 [ %i.ge, %bb.m ], [ %.pre, %.lr.ph._crit_edge.i ] ; 4 uses
  %.183.i = phi i32 [ %.08291.i, %bb.m ], [ %i.gn, %.lr.ph._crit_edge.i ] ; 2 uses
  %.180.i = phi i32 [ %i.go, %bb.m ], [ %.07992.i, %.lr.ph._crit_edge.i ] ; 5 uses
  %.not88.i = icmp slt i32 %.180.i, %.1.lcssa
  br i1 %.not88.i, label %bb.o, label %._crit_edge127.i

._crit_edge127.i:                                 ; preds = %bb.n
  %.phi.trans.insert129.i = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.pre-phi
  %.pre130.i = load i16, ptr %.phi.trans.insert129.i, align 2
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.gq = icmp sgt i64 %indvars.iv.i85, %.pre-phi
  br i1 %i.gq, label %bb.p, label %._crit_edge123.i

._crit_edge123.i:                                 ; preds = %bb.o
  %.phi.trans.insert124.i = sext i32 %.180.i to i64
  %.phi.trans.insert125.i = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.phi.trans.insert124.i
  %.pre126.i = load i16, ptr %.phi.trans.insert125.i, align 2
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.gr = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.pre-phi
  %i.gs = load i16, ptr %i.gr, align 2            ; 2 uses
  %i.gt = sext i32 %.180.i to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.gt
  %i.gv = load i16, ptr %i.gu, align 2            ; 2 uses
  %i.gw = icmp ult i16 %i.gs, %i.gv
  br i1 %i.gw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %._crit_edge127.i
  %i.gx = phi i16 [ %.pre130.i, %._crit_edge127.i ], [ %i.gs, %bb.p ]
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85 ; 2 uses
  %i.gz = load i16, ptr %i.gy, align 2
  %i.ha = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.pre-phi
  %i.hb = add i16 %i.gz, %i.gx
  store i16 %i.hb, ptr %i.gy, align 2
  %i.hc = trunc i64 %indvars.iv.i85 to i16
  %i.hd = add nsw i32 %.183.i, 1
  store i16 %i.hc, ptr %i.ha, align 2
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %._crit_edge123.i
  %i.he = phi i16 [ %.pre126.i, %._crit_edge123.i ], [ %i.gv, %bb.p ]
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85 ; 2 uses
  %i.hg = load i16, ptr %i.hf, align 2
  %i.hh = add nsw i32 %.180.i, 1
  %i.hi = add i16 %i.hg, %i.he
  store i16 %i.hi, ptr %i.hf, align 2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.284.i = phi i32 [ %i.hd, %bb.q ], [ %.183.i, %bb.r ]
  %.281.i = phi i32 [ %.180.i, %bb.q ], [ %i.hh, %bb.r ]
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i85, 1 ; 2 uses
  %exitcond.not.i88 = icmp eq i64 %indvars.iv.next.i87, %wide.trip.count.i83
  br i1 %exitcond.not.i88, label %._crit_edge.i, label %.lr.ph.i84

._crit_edge.i:                                    ; preds = %bb.s
  %i.hj = add nsw i32 %.1.lcssa, -2               ; 3 uses
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.hk
  store i16 0, ptr %i.hl, align 2
  %i.hm = add nsw i32 %.1.lcssa, -3               ; 2 uses
  %i.hn = zext i32 %i.hm to i64                   ; 3 uses
  %i.ho = add nuw nsw i64 %i.hn, 1
  %xtraiter215 = and i64 %i.ho, 3                 ; 2 uses
  %lcmp.mod216.not = icmp eq i64 %xtraiter215, 0
  br i1 %lcmp.mod216.not, label %.lr.ph96.i.prol.loopexit, label %.lr.ph96.i.prol

.lr.ph96.i.prol:                                  ; preds = %._crit_edge.i, %.lr.ph96.i.prol
  %indvars.iv115.i.prol = phi i64 [ %indvars.iv.next116.i.prol, %.lr.ph96.i.prol ], [ %i.hn, %._crit_edge.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph96.i.prol ], [ 0, %._crit_edge.i ]
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i.prol ; 2 uses
  %i.hq = load i16, ptr %i.hp, align 2
  %i.hr = zext i16 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 2
  %i.hu = add i16 %i.ht, 1
  store i16 %i.hu, ptr %i.hp, align 2
  %indvars.iv.next116.i.prol = add nsw i64 %indvars.iv115.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter215
  br i1 %prol.iter.cmp.not, label %.lr.ph96.i.prol.loopexit, label %.lr.ph96.i.prol, !llvm.loop !40

.lr.ph96.i.prol.loopexit:                         ; preds = %.lr.ph96.i.prol, %._crit_edge.i
  %indvars.iv115.i.unr = phi i64 [ %i.hn, %._crit_edge.i ], [ %indvars.iv.next116.i.prol, %.lr.ph96.i.prol ]
  %i.hv = icmp ult i32 %i.hm, 3
  br i1 %i.hv, label %.preheader.i81.preheader, label %.lr.ph96.i

.lr.ph96.i:                                       ; preds = %.lr.ph96.i.prol.loopexit, %.lr.ph96.i
  %indvars.iv115.i = phi i64 [ %indvars.iv.next116.i.3, %.lr.ph96.i ], [ %indvars.iv115.i.unr, %.lr.ph96.i.prol.loopexit ] ; 5 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i ; 2 uses
  %i.hx = load i16, ptr %i.hw, align 2
  %i.hy = zext i16 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.hy
  %i.ia = load i16, ptr %i.hz, align 2
  %i.ib = add i16 %i.ia, 1
  store i16 %i.ib, ptr %i.hw, align 2
  %i.ic = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i
  %i.id = getelementptr i8, ptr %i.ic, i64 -4     ; 2 uses
  %i.ie = load i16, ptr %i.id, align 2
  %i.if = zext i16 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.if
  %i.ih = load i16, ptr %i.ig, align 2
  %i.ii = add i16 %i.ih, 1
  store i16 %i.ii, ptr %i.id, align 2
  %i.ij = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i
  %i.ik = getelementptr i8, ptr %i.ij, i64 -8     ; 2 uses
  %i.il = load i16, ptr %i.ik, align 2
  %i.im = zext i16 %i.il to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.im
  %i.io = load i16, ptr %i.in, align 2
  %i.ip = add i16 %i.io, 1
  store i16 %i.ip, ptr %i.ik, align 2
  %indvars.iv.next116.i.2 = add nsw i64 %indvars.iv115.i, -3 ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.next116.i.2 ; 2 uses
  %i.ir = load i16, ptr %i.iq, align 2
  %i.is = zext i16 %i.ir to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.is
  %i.iu = load i16, ptr %i.it, align 2
  %i.iv = add i16 %i.iu, 1
  store i16 %i.iv, ptr %i.iq, align 2
  %indvars.iv.next116.i.3 = add nsw i64 %indvars.iv115.i, -4
  %.not140.i.3 = icmp eq i64 %indvars.iv.next116.i.2, 0
  br i1 %.not140.i.3, label %.preheader.i81.preheader, label %.lr.ph96.i

.preheader.i81.preheader:                         ; preds = %.lr.ph96.i.prol.loopexit, %.lr.ph96.i, %._crit_edge.thread.i
  %.385110.i.ph = phi i32 [ %i.gb, %._crit_edge.thread.i ], [ %i.hj, %.lr.ph96.i ], [ %i.hj, %.lr.ph96.i.prol.loopexit ]
  br label %.preheader.i81

.preheader.i81:                                   ; preds = %.preheader.i81.preheader, %._crit_edge108.i
  %.0113.i = phi i32 [ %i.jy, %._crit_edge108.i ], [ 0, %.preheader.i81.preheader ] ; 3 uses
  %.075112.i = phi i32 [ %i.jx, %._crit_edge108.i ], [ 1, %.preheader.i81.preheader ] ; 5 uses
  %.2111.i = phi i32 [ %.3.lcssa.i, %._crit_edge108.i ], [ %i.fz, %.preheader.i81.preheader ] ; 2 uses
  %.385110.i = phi i32 [ %.4.lcssa.i, %._crit_edge108.i ], [ %.385110.i.ph, %.preheader.i81.preheader ] ; 5 uses
  %i.iw = icmp sgt i32 %.385110.i, -1
  br i1 %i.iw, label %.lr.ph99.preheader.i, label %.critedge.i

.lr.ph99.preheader.i:                             ; preds = %.preheader.i81
  %i.ix = add nuw i32 %.385110.i, 1
  br label %.lr.ph99.i

.lr.ph99.i:                                       ; preds = %bb.t, %.lr.ph99.preheader.i
  %.198.i = phi i32 [ %i.jd, %bb.t ], [ 0, %.lr.ph99.preheader.i ] ; 3 uses
  %.497.i = phi i32 [ %i.je, %bb.t ], [ %.385110.i, %.lr.ph99.preheader.i ] ; 3 uses
  %i.iy = zext nneg i32 %.497.i to i64
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.iy
  %i.ja = load i16, ptr %i.iz, align 2
  %i.jb = zext i16 %i.ja to i32
  %i.jc = icmp eq i32 %.0113.i, %i.jb
  br i1 %i.jc, label %bb.t, label %.critedge.i

bb.t:                                             ; preds = %.lr.ph99.i
  %i.jd = add nuw i32 %.198.i, 1
  %i.je = add nsw i32 %.497.i, -1
  %exitcond118.not.i = icmp eq i32 %.198.i, %.385110.i
  br i1 %exitcond118.not.i, label %.critedge.i, label %.lr.ph99.i

.critedge.i:                                      ; preds = %bb.t, %.lr.ph99.i, %.preheader.i81
  %.4.lcssa.i = phi i32 [ %.385110.i, %.preheader.i81 ], [ %.497.i, %.lr.ph99.i ], [ -1, %bb.t ]
  %.1.lcssa.i = phi i32 [ 0, %.preheader.i81 ], [ %.198.i, %.lr.ph99.i ], [ %i.ix, %bb.t ] ; 6 uses
  %i.jf = icmp sgt i32 %.075112.i, %.1.lcssa.i
  br i1 %i.jf, label %.lr.ph107.i, label %._crit_edge108.i

.lr.ph107.i:                                      ; preds = %.critedge.i
  %i.jg = trunc i32 %.0113.i to i16               ; 5 uses
  %i.jh = sext i32 %.2111.i to i64                ; 2 uses
  %i.ji = sub i32 %.075112.i, %.1.lcssa.i
  %xtraiter217 = and i32 %i.ji, 3                 ; 2 uses
  %lcmp.mod218.not = icmp eq i32 %xtraiter217, 0
  br i1 %lcmp.mod218.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph107.i, %.prol.preheader
  %indvars.iv119.i.prol = phi i64 [ %indvars.iv.next120.i.prol, %.prol.preheader ], [ %i.jh, %.lr.ph107.i ] ; 2 uses
  %.176106.i.prol = phi i32 [ %i.jk, %.prol.preheader ], [ %.075112.i, %.lr.ph107.i ]
  %prol.iter219 = phi i32 [ %prol.iter219.next, %.prol.preheader ], [ 0, %.lr.ph107.i ]
  %indvars.iv.next120.i.prol = add nsw i64 %indvars.iv119.i.prol, -1 ; 3 uses
  %i.jj = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i.prol
  store i16 %i.jg, ptr %i.jj, align 2
  %i.jk = add nsw i32 %.176106.i.prol, -1         ; 2 uses
  %prol.iter219.next = add i32 %prol.iter219, 1   ; 2 uses
  %prol.iter219.cmp.not = icmp eq i32 %prol.iter219.next, %xtraiter217
  br i1 %prol.iter219.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !41

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph107.i
  %indvars.iv119.i.unr = phi i64 [ %i.jh, %.lr.ph107.i ], [ %indvars.iv.next120.i.prol, %.prol.preheader ]
  %.176106.i.unr = phi i32 [ %.075112.i, %.lr.ph107.i ], [ %i.jk, %.prol.preheader ]
  %indvars.iv.next120.i.lcssa.unr = phi i64 [ poison, %.lr.ph107.i ], [ %indvars.iv.next120.i.prol, %.prol.preheader ]
  %i.jl = sub i32 %.1.lcssa.i, %.075112.i
  %i.jm = icmp ugt i32 %i.jl, -4
  br i1 %i.jm, label %._crit_edge108.loopexit.i, label %.lr.ph107.i.new

.lr.ph107.i.new:                                  ; preds = %.prol.loopexit, %.lr.ph107.i.new
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i.3, %.lr.ph107.i.new ], [ %indvars.iv119.i.unr, %.prol.loopexit ] ; 5 uses
  %.176106.i = phi i32 [ %i.ju, %.lr.ph107.i.new ], [ %.176106.i.unr, %.prol.loopexit ]
  %i.jn = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i
  store i16 %i.jg, ptr %i.jn, align 2
  %i.jo = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i
  %i.jp = getelementptr i8, ptr %i.jo, i64 -4
  store i16 %i.jg, ptr %i.jp, align 2
  %i.jq = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i
  %i.jr = getelementptr i8, ptr %i.jq, i64 -8
  store i16 %i.jg, ptr %i.jr, align 2
  %indvars.iv.next120.i.3 = add nsw i64 %indvars.iv119.i, -4 ; 2 uses
  %i.js = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i
  %i.jt = getelementptr i8, ptr %i.js, i64 -12
  store i16 %i.jg, ptr %i.jt, align 2
  %i.ju = add nsw i32 %.176106.i, -4              ; 2 uses
  %i.jv = icmp sgt i32 %i.ju, %.1.lcssa.i
  br i1 %i.jv, label %.lr.ph107.i.new, label %._crit_edge108.loopexit.i

._crit_edge108.loopexit.i:                        ; preds = %.lr.ph107.i.new, %.prol.loopexit
  %indvars.iv.next120.i.lcssa = phi i64 [ %indvars.iv.next120.i.lcssa.unr, %.prol.loopexit ], [ %indvars.iv.next120.i.3, %.lr.ph107.i.new ]
  %i.jw = trunc nsw i64 %indvars.iv.next120.i.lcssa to i32
  br label %._crit_edge108.i

._crit_edge108.i:                                 ; preds = %._crit_edge108.loopexit.i, %.critedge.i
  %.3.lcssa.i = phi i32 [ %.2111.i, %.critedge.i ], [ %i.jw, %._crit_edge108.loopexit.i ]
  %i.jx = shl nuw nsw i32 %.1.lcssa.i, 1
  %i.jy = add nuw nsw i32 %.0113.i, 1
  %.not89.i = icmp eq i32 %.1.lcssa.i, 0
  br i1 %.not89.i, label %tdefl_calculate_minimum_redundancy.exit, label %.preheader.i81

tdefl_calculate_minimum_redundancy.exit:          ; preds = %._crit_edge108.i
  %i.jz = icmp sgt i32 %.1.lcssa, 0
  br i1 %i.jz, label %.lr.ph.preheader, label %tdefl_huffman_enforce_max_code_size.exit

.lr.ph.preheader:                                 ; preds = %tdefl_calculate_minimum_redundancy.exit.thread169, %tdefl_calculate_minimum_redundancy.exit
  %xtraiter220 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.ka = icmp ult i32 %.1.lcssa, 4
  br i1 %i.ka, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter224 = and i64 %wide.trip.count.i, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv131 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next132.3, %.lr.ph ] ; 5 uses
  %niter225 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter225.next.3, %.lr.ph ]
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv131
  %i.kc = load i16, ptr %i.kb, align 2
  %i.kd = zext i16 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kd ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 4
  %i.kg = add nsw i32 %i.kf, 1
  store i32 %i.kg, ptr %i.ke, align 4
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv131
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kj = load i16, ptr %i.ki, align 2
  %i.kk = zext i16 %i.kj to i64
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kk ; 2 uses
  %i.km = load i32, ptr %i.kl, align 4
  %i.kn = add nsw i32 %i.km, 1
  store i32 %i.kn, ptr %i.kl, align 4
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv131
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = load i16, ptr %i.kp, align 2
  %i.kr = zext i16 %i.kq to i64
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kr ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4
  %i.ku = add nsw i32 %i.kt, 1
  store i32 %i.ku, ptr %i.ks, align 4
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv131
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 12
  %i.kx = load i16, ptr %i.kw, align 2
  %i.ky = zext i16 %i.kx to i64
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ky ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4
  %i.lb = add nsw i32 %i.la, 1
  store i32 %i.lb, ptr %i.kz, align 4
  %indvars.iv.next132.3 = add nuw nsw i64 %indvars.iv131, 4 ; 2 uses
  %niter225.next.3 = add i64 %niter225, 4         ; 2 uses
  %niter225.ncmp.3 = icmp eq i64 %niter225.next.3, %unroll_iter224
  br i1 %niter225.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod222.not = icmp eq i64 %xtraiter220, 0
  br i1 %lcmp.mod222.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv131.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next132.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod223 = icmp ne i64 %xtraiter220, 0
  tail call void @llvm.assume(i1 %lcmp.mod223)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv131.epil = phi i64 [ %indvars.iv131.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next132.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter221 = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter221.next, %.lr.ph.epil ]
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv131.epil
  %i.ld = load i16, ptr %i.lc, align 2
  %i.le = zext i16 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.le ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4
  %i.lh = add nsw i32 %i.lg, 1
  store i32 %i.lh, ptr %i.lf, align 4
  %indvars.iv.next132.epil = add nuw nsw i64 %indvars.iv131.epil, 1
  %epil.iter221.next = add i64 %epil.iter221, 1   ; 2 uses
  %epil.iter221.cmp.not = icmp eq i64 %epil.iter221.next, %xtraiter220
  br i1 %epil.iter221.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %i.li = icmp eq i32 %.1.lcssa, 1
  br i1 %i.li, label %tdefl_huffman_enforce_max_code_size.exit, label %.preheader35.i

.preheader35.i:                                   ; preds = %._crit_edge
  %i.lj = zext nneg i32 %3 to i64                 ; 11 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lj ; 5 uses
  %i.ll = sub nuw nsw i64 32, %i.lj               ; 2 uses
  %n.vec = and i64 %i.ll, 56                      ; 4 uses
  %i.lm = add nuw nsw i64 %n.vec, %i.lj
  %.promoted.i = load i32, ptr %i.lk, align 4
  %i.ln = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted.i, i64 0
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lj ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 20
  %wide.load = load <4 x i32>, ptr %i.lp, align 4
  %wide.load185 = load <4 x i32>, ptr %i.lq, align 4 ; 2 uses
  %i.lr = add <4 x i32> %wide.load, %i.ln         ; 2 uses
  %i.ls = icmp eq i64 %n.vec, 8
  br i1 %i.ls, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %.preheader35.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.lj ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 20
  %wide.load.1 = load <4 x i32>, ptr %i.lv, align 4
  %wide.load185.1 = load <4 x i32>, ptr %i.lw, align 4
  %i.lx = add <4 x i32> %wide.load.1, %i.lr       ; 2 uses
  %i.ly = add <4 x i32> %wide.load185.1, %wide.load185 ; 2 uses
  %i.lz = icmp eq i64 %n.vec, 16
  br i1 %i.lz, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ma = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.lj ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 20
  %wide.load.2 = load <4 x i32>, ptr %i.mc, align 4
  %wide.load185.2 = load <4 x i32>, ptr %i.md, align 4
  %i.me = add <4 x i32> %wide.load.2, %i.lx
  %i.mf = add <4 x i32> %wide.load185.2, %i.ly
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %.preheader35.i
  %.lcssa193 = phi <4 x i32> [ %i.lr, %.preheader35.i ], [ %i.lx, %vector.body.1 ], [ %i.me, %vector.body.2 ]
  %.lcssa192 = phi <4 x i32> [ %wide.load185, %.preheader35.i ], [ %i.ly, %vector.body.1 ], [ %i.mf, %vector.body.2 ]
  %bin.rdx = add <4 x i32> %.lcssa192, %.lcssa193
  %i.mg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 3 uses
  store i32 %i.mg, ptr %i.lk, align 4
  %cmp.n = icmp eq i64 %i.ll, %n.vec
  br i1 %cmp.n, label %.preheader34.i.preheader, label %scalar.ph

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %indvars.iv.i89 = phi i64 [ %indvars.iv.next.i90, %scalar.ph ], [ %i.lm, %middle.block ]
  %i.mh = phi i32 [ %i.mk, %scalar.ph ], [ %i.mg, %middle.block ]
  %indvars.iv.next.i90 = add nuw nsw i64 %indvars.iv.i89, 1 ; 3 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i90
  %i.mj = load i32, ptr %i.mi, align 4
  %i.mk = add nsw i32 %i.mj, %i.mh                ; 3 uses
  store i32 %i.mk, ptr %i.lk, align 4
  %exitcond.not.i91 = icmp eq i64 %indvars.iv.next.i90, 32
  br i1 %exitcond.not.i91, label %.preheader34.i.preheader, label %scalar.ph, !llvm.loop !43

.preheader34.i.preheader:                         ; preds = %scalar.ph, %middle.block
  %.lcssa182 = phi i32 [ %i.mg, %middle.block ], [ %i.mk, %scalar.ph ]
  %xtraiter226 = and i64 %i.lj, 3                 ; 3 uses
  %unroll_iter231 = and i64 %i.lj, 12
  br label %.preheader34.i

.preheader.i92.unr-lcssa:                         ; preds = %.preheader34.i
  %lcmp.mod228.not = icmp eq i64 %xtraiter226, 0
  br i1 %lcmp.mod228.not, label %.preheader.i92, label %.preheader34.i.epil.preheader

.preheader34.i.epil.preheader:                    ; preds = %.preheader.i92.unr-lcssa
  %lcmp.mod230 = icmp ne i64 %xtraiter226, 0
  tail call void @llvm.assume(i1 %lcmp.mod230)
  br label %.preheader34.i.epil

.preheader34.i.epil:                              ; preds = %.preheader34.i.epil, %.preheader34.i.epil.preheader
  %indvars.iv48.i.epil = phi i64 [ %indvars.iv.next49.i.epil, %.preheader34.i.epil ], [ %indvars.iv.next49.i.3, %.preheader34.i.epil.preheader ] ; 3 uses
  %.040.i.epil = phi i32 [ %i.mq, %.preheader34.i.epil ], [ %i.nq, %.preheader34.i.epil.preheader ]
  %epil.iter227 = phi i64 [ %epil.iter227.next, %.preheader34.i.epil ], [ 0, %.preheader34.i.epil.preheader ]
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv48.i.epil
  %i.mm = load i32, ptr %i.ml, align 4
  %i.mn = trunc i64 %indvars.iv48.i.epil to i32
  %i.mo = sub i32 %3, %i.mn
  %i.mp = shl i32 %i.mm, %i.mo
  %i.mq = add i32 %i.mp, %.040.i.epil             ; 2 uses
  %indvars.iv.next49.i.epil = add nsw i64 %indvars.iv48.i.epil, -1
  %epil.iter227.next = add i64 %epil.iter227, 1   ; 2 uses
  %epil.iter227.cmp.not = icmp eq i64 %epil.iter227.next, %xtraiter226
  br i1 %epil.iter227.cmp.not, label %.preheader.i92, label %.preheader34.i.epil, !llvm.loop !44

.preheader.i92:                                   ; preds = %.preheader34.i.epil, %.preheader.i92.unr-lcssa
  %.lcssa190 = phi i32 [ %i.nq, %.preheader.i92.unr-lcssa ], [ %i.mq, %.preheader34.i.epil ] ; 2 uses
  %i.mr = shl nuw nsw i64 1, %i.lj                ; 2 uses
  %i.ms = zext i32 %.lcssa190 to i64
  %.not42.i = icmp eq i64 %i.mr, %i.ms
  br i1 %.not42.i, label %tdefl_huffman_enforce_max_code_size.exit, label %.lr.ph.i93

.preheader34.i:                                   ; preds = %.preheader34.i, %.preheader34.i.preheader
  %indvars.iv48.i = phi i64 [ %i.lj, %.preheader34.i.preheader ], [ %indvars.iv.next49.i.3, %.preheader34.i ] ; 6 uses
  %.040.i = phi i32 [ 0, %.preheader34.i.preheader ], [ %i.nq, %.preheader34.i ]
  %niter232 = phi i64 [ 0, %.preheader34.i.preheader ], [ %niter232.next.3, %.preheader34.i ]
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv48.i
  %i.mu = load i32, ptr %i.mt, align 4
  %i.mv = trunc i64 %indvars.iv48.i to i32
  %i.mw = sub nsw i32 %3, %i.mv
  %i.mx = shl i32 %i.mu, %i.mw
  %i.my = add i32 %i.mx, %.040.i
  %indvars.iv.next49.i = add nsw i64 %indvars.iv48.i, -1 ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next49.i
  %i.na = load i32, ptr %i.mz, align 4
  %i.nb = trunc i64 %indvars.iv.next49.i to i32
  %i.nc = sub nsw i32 %3, %i.nb
  %i.nd = shl i32 %i.na, %i.nc
  %i.ne = add i32 %i.nd, %i.my
  %indvars.iv.next49.i.1 = add nsw i64 %indvars.iv48.i, -2 ; 2 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next49.i.1
  %i.ng = load i32, ptr %i.nf, align 4
  %i.nh = trunc i64 %indvars.iv.next49.i.1 to i32
  %i.ni = sub nsw i32 %3, %i.nh
  %i.nj = shl i32 %i.ng, %i.ni
  %i.nk = add i32 %i.nj, %i.ne
  %indvars.iv.next49.i.2 = add nsw i64 %indvars.iv48.i, -3 ; 2 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next49.i.2
  %i.nm = load i32, ptr %i.nl, align 4
  %i.nn = trunc i64 %indvars.iv.next49.i.2 to i32
  %i.no = sub nsw i32 %3, %i.nn
  %i.np = shl i32 %i.nm, %i.no
  %i.nq = add i32 %i.np, %i.nk                    ; 3 uses
  %indvars.iv.next49.i.3 = add nsw i64 %indvars.iv48.i, -4 ; 2 uses
  %niter232.next.3 = add nuw nsw i64 %niter232, 4 ; 2 uses
  %niter232.ncmp.3.not = icmp eq i64 %niter232.next.3, %unroll_iter231
  br i1 %niter232.ncmp.3.not, label %.preheader.i92.unr-lcssa, label %.preheader34.i

.lr.ph.i93:                                       ; preds = %.preheader.i92, %.loopexit.i
  %i.nr = phi i32 [ %i.ob, %.loopexit.i ], [ %.lcssa182, %.preheader.i92 ]
  %.143.i = phi i32 [ %i.oc, %.loopexit.i ], [ %.lcssa190, %.preheader.i92 ]
  %i.ns = add nsw i32 %i.nr, -1                   ; 2 uses
  store i32 %i.ns, ptr %i.lk, align 4
  br label %bb.v

bb.u:                                             ; preds = %bb.v
  %i.nt = icmp sgt i64 %indvars.iv51.i183, 2
  br i1 %i.nt, label %bb.v, label %.loopexit.i

bb.v:                                             ; preds = %.lr.ph.i93, %bb.u
  %indvars.iv51.i183 = phi i64 [ %i.lj, %.lr.ph.i93 ], [ %indvars.iv.next52.i, %bb.u ] ; 3 uses
  %indvars.iv.next52.i = add nsw i64 %indvars.iv51.i183, -1 ; 3 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next52.i
  %i.nv = load i32, ptr %i.nu, align 4            ; 2 uses
  %.not32.i = icmp eq i32 %i.nv, 0
  br i1 %.not32.i, label %bb.u, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next52.i
  %i.nx = add nsw i32 %i.nv, -1
  store i32 %i.nx, ptr %i.nw, align 4
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv51.i183 ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 4
  %i.oa = add nsw i32 %i.nz, 2
  store i32 %i.oa, ptr %i.ny, align 4
  %.pre.i95 = load i32, ptr %i.lk, align 4
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.u, %bb.w
  %i.ob = phi i32 [ %.pre.i95, %bb.w ], [ %i.ns, %bb.u ]
  %i.oc = add i32 %.143.i, -1                     ; 2 uses
  %i.od = zext i32 %i.oc to i64
  %.not.i94 = icmp eq i64 %i.mr, %i.od
  br i1 %.not.i94, label %tdefl_huffman_enforce_max_code_size.exit, label %.lr.ph.i93

tdefl_huffman_enforce_max_code_size.exit:         ; preds = %.loopexit.i, %tdefl_radix_sort_syms.exit, %tdefl_radix_sort_syms.exit.thread, %tdefl_calculate_minimum_redundancy.exit, %._crit_edge, %.preheader.i92
  %.us-phi.i166168173 = phi ptr [ %6, %tdefl_radix_sort_syms.exit.thread ], [ %.03953.us.i, %.preheader.i92 ], [ %.03953.us.i, %._crit_edge ], [ %.03953.us.i, %tdefl_calculate_minimum_redundancy.exit ], [ %.03953.us.i, %tdefl_radix_sort_syms.exit ], [ %.03953.us.i, %.loopexit.i ] ; 5 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 36682
  %i.of = getelementptr inbounds nuw [288 x i8], ptr %i.oe, i64 %i.aj ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(288) %i.of, i8 0, i64 288, i1 false)
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 34954
  %i.oh = getelementptr inbounds nuw [576 x i8], ptr %i.og, i64 %i.aj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(576) %i.oh, i8 0, i64 576, i1 false)
  %i.oi = add nuw nsw i32 %3, 1
  %wide.trip.count143 = zext nneg i32 %i.oi to i64 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %tdefl_huffman_enforce_max_code_size.exit, %._crit_edge110
  %indvars.iv140 = phi i64 [ 1, %tdefl_huffman_enforce_max_code_size.exit ], [ %indvars.iv.next141, %._crit_edge110 ] ; 3 uses
  %.071112 = phi i32 [ %.1.lcssa, %tdefl_huffman_enforce_max_code_size.exit ], [ %.172.lcssa, %._crit_edge110 ] ; 2 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv140
  %i.ok = load i32, ptr %i.oj, align 4            ; 5 uses
  %i.ol = icmp sgt i32 %i.ok, 0
  br i1 %i.ol, label %.lr.ph109, label %._crit_edge110

.lr.ph109:                                        ; preds = %bb.x
  %i.om = trunc i64 %indvars.iv140 to i8          ; 5 uses
  %i.on = sext i32 %.071112 to i64                ; 2 uses
  %xtraiter235 = and i32 %i.ok, 3                 ; 2 uses
  %lcmp.mod236.not = icmp eq i32 %xtraiter235, 0
  br i1 %lcmp.mod236.not, label %.prol.loopexit234, label %.prol.preheader233

.prol.preheader233:                               ; preds = %.lr.ph109, %.prol.preheader233
  %indvars.iv137.prol = phi i64 [ %indvars.iv.next138.prol, %.prol.preheader233 ], [ %i.on, %.lr.ph109 ]
  %.069107.prol = phi i32 [ %i.ot, %.prol.preheader233 ], [ %i.ok, %.lr.ph109 ]
  %prol.iter237 = phi i32 [ %prol.iter237.next, %.prol.preheader233 ], [ 0, %.lr.ph109 ]
  %indvars.iv.next138.prol = add nsw i64 %indvars.iv137.prol, -1 ; 4 uses
  %i.oo = getelementptr inbounds [4 x i8], ptr %.us-phi.i166168173, i64 %indvars.iv.next138.prol
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 2
  %i.oq = load i16, ptr %i.op, align 2
  %i.or = zext i16 %i.oq to i64
  %i.os = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.or
  store i8 %i.om, ptr %i.os, align 1
  %i.ot = add nsw i32 %.069107.prol, -1           ; 2 uses
  %prol.iter237.next = add i32 %prol.iter237, 1   ; 2 uses
  %prol.iter237.cmp.not = icmp eq i32 %prol.iter237.next, %xtraiter235
  br i1 %prol.iter237.cmp.not, label %.prol.loopexit234, label %.prol.preheader233, !llvm.loop !45

.prol.loopexit234:                                ; preds = %.prol.preheader233, %.lr.ph109
  %indvars.iv137.unr = phi i64 [ %i.on, %.lr.ph109 ], [ %indvars.iv.next138.prol, %.prol.preheader233 ]
  %.069107.unr = phi i32 [ %i.ok, %.lr.ph109 ], [ %i.ot, %.prol.preheader233 ]
  %indvars.iv.next138.lcssa.unr = phi i64 [ poison, %.lr.ph109 ], [ %indvars.iv.next138.prol, %.prol.preheader233 ]
  %i.ou = icmp ult i32 %i.ok, 4
  br i1 %i.ou, label %._crit_edge110.loopexit, label %.lr.ph109.new

.lr.ph109.new:                                    ; preds = %.prol.loopexit234, %.lr.ph109.new
  %indvars.iv137 = phi i64 [ %indvars.iv.next138.3, %.lr.ph109.new ], [ %indvars.iv137.unr, %.prol.loopexit234 ] ; 4 uses
  %.069107 = phi i32 [ %i.pp, %.lr.ph109.new ], [ %.069107.unr, %.prol.loopexit234 ] ; 2 uses
  %i.ov = getelementptr [4 x i8], ptr %.us-phi.i166168173, i64 %indvars.iv137
  %i.ow = getelementptr i8, ptr %i.ov, i64 -2
  %i.ox = load i16, ptr %i.ow, align 2
  %i.oy = zext i16 %i.ox to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.oy
  store i8 %i.om, ptr %i.oz, align 1
  %i.pa = getelementptr [4 x i8], ptr %.us-phi.i166168173, i64 %indvars.iv137
  %i.pb = getelementptr i8, ptr %i.pa, i64 -6
  %i.pc = load i16, ptr %i.pb, align 2
  %i.pd = zext i16 %i.pc to i64
  %i.pe = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.pd
  store i8 %i.om, ptr %i.pe, align 1
  %i.pf = getelementptr [4 x i8], ptr %.us-phi.i166168173, i64 %indvars.iv137
  %i.pg = getelementptr i8, ptr %i.pf, i64 -10
  %i.ph = load i16, ptr %i.pg, align 2
  %i.pi = zext i16 %i.ph to i64
  %i.pj = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.pi
  store i8 %i.om, ptr %i.pj, align 1
  %indvars.iv.next138.3 = add nsw i64 %indvars.iv137, -4 ; 3 uses
  %i.pk = getelementptr inbounds [4 x i8], ptr %.us-phi.i166168173, i64 %indvars.iv.next138.3
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 2
  %i.pm = load i16, ptr %i.pl, align 2
  %i.pn = zext i16 %i.pm to i64
  %i.po = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.pn
  store i8 %i.om, ptr %i.po, align 1
  %i.pp = add nsw i32 %.069107, -4
  %i.pq = icmp sgt i32 %.069107, 4
  br i1 %i.pq, label %.lr.ph109.new, label %._crit_edge110.loopexit

._crit_edge110.loopexit:                          ; preds = %.lr.ph109.new, %.prol.loopexit234
  %indvars.iv.next138.lcssa = phi i64 [ %indvars.iv.next138.lcssa.unr, %.prol.loopexit234 ], [ %indvars.iv.next138.3, %.lr.ph109.new ]
  %i.pr = trunc nsw i64 %indvars.iv.next138.lcssa to i32
  br label %._crit_edge110

._crit_edge110:                                   ; preds = %._crit_edge110.loopexit, %bb.x
  %.172.lcssa = phi i32 [ %.071112, %bb.x ], [ %i.pr, %._crit_edge110.loopexit ]
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %bb.y, label %bb.x

bb.y:                                             ; preds = %._crit_edge110
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa
  %lcmp.mod194 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod194)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.3, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.z ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.z ]
  %i.ps = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.epil
  %i.pt = load i8, ptr %i.ps, align 1
  %i.pu = zext i8 %i.pt to i64
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pu ; 2 uses
  %i.pw = load i32, ptr %i.pv, align 4
  %i.px = add nsw i32 %i.pw, 1
  store i32 %i.px, ptr %i.pv, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.loopexit, label %bb.z, !llvm.loop !46

.loopexit.loopexit:                               ; preds = %bb.z, %.loopexit.loopexit.unr-lcssa
  %.pre155 = add nuw nsw i32 %3, 1
  %.pre157 = zext nneg i32 %.pre155 to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.y
  %wide.trip.count148.pre-phi = phi i64 [ %.pre157, %.loopexit.loopexit ], [ %wide.trip.count143, %bb.y ] ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.py, align 4
  %i.pz = add nsw i64 %wide.trip.count148.pre-phi, -2 ; 2 uses
  %i.qa = add nsw i64 %wide.trip.count148.pre-phi, -3
  %xtraiter239 = and i64 %i.pz, 3                 ; 3 uses
  %i.qb = icmp ult i64 %i.qa, 3
  br i1 %i.qb, label %.epil.preheader238, label %.loopexit.new

.loopexit.new:                                    ; preds = %.loopexit
  %unroll_iter243 = and i64 %i.pz, -4
  br label %bb.ab

.preheader.unr-lcssa:                             ; preds = %bb.ab
  %lcmp.mod241.not = icmp eq i64 %xtraiter239, 0
  br i1 %lcmp.mod241.not, label %.preheader, label %.epil.preheader238

.epil.preheader238:                               ; preds = %.preheader.unr-lcssa, %.loopexit
  %indvars.iv145.epil.init = phi i64 [ 2, %.loopexit ], [ %indvars.iv.next146.3, %.preheader.unr-lcssa ]
  %.2114.epil.init = phi i32 [ 0, %.loopexit ], [ %i.rj, %.preheader.unr-lcssa ]
  %lcmp.mod242 = icmp ne i64 %xtraiter239, 0
  tail call void @llvm.assume(i1 %lcmp.mod242)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader238
  %indvars.iv145.epil = phi i64 [ %indvars.iv145.epil.init, %.epil.preheader238 ], [ %indvars.iv.next146.epil, %bb.aa ] ; 3 uses
  %.2114.epil = phi i32 [ %.2114.epil.init, %.epil.preheader238 ], [ %i.qg, %bb.aa ]
  %epil.iter240 = phi i64 [ 0, %.epil.preheader238 ], [ %epil.iter240.next, %bb.aa ]
  %i.qc = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv145.epil
  %i.qd = getelementptr i8, ptr %i.qc, i64 -4
  %i.qe = load i32, ptr %i.qd, align 4
  %i.qf = add nsw i32 %i.qe, %.2114.epil
  %i.qg = shl i32 %i.qf, 1                        ; 2 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv145.epil
  store i32 %i.qg, ptr %i.qh, align 4
  %indvars.iv.next146.epil = add nuw nsw i64 %indvars.iv145.epil, 1
  %epil.iter240.next = add i64 %epil.iter240, 1   ; 2 uses
  %epil.iter240.cmp.not = icmp eq i64 %epil.iter240.next, %xtraiter239
  br i1 %epil.iter240.cmp.not, label %.preheader, label %bb.aa, !llvm.loop !47

.preheader:                                       ; preds = %bb.aa, %.preheader.unr-lcssa
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 36682
  %i.qj = zext nneg i32 %1 to i64                 ; 2 uses
  %i.qk = getelementptr inbounds nuw [288 x i8], ptr %i.qi, i64 %i.qj
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 34954
  %i.qm = getelementptr inbounds nuw [576 x i8], ptr %i.ql, i64 %i.qj
  %wide.trip.count153 = zext nneg i32 %2 to i64
  br label %bb.ac

bb.ab:                                            ; preds = %bb.ab, %.loopexit.new
  %indvars.iv145 = phi i64 [ 2, %.loopexit.new ], [ %indvars.iv.next146.3, %bb.ab ] ; 6 uses
  %.2114 = phi i32 [ 0, %.loopexit.new ], [ %i.rj, %bb.ab ]
  %niter244 = phi i64 [ 0, %.loopexit.new ], [ %niter244.next.3, %bb.ab ]
  %i.qn = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv145
  %i.qo = getelementptr i8, ptr %i.qn, i64 -4
  %i.qp = load i32, ptr %i.qo, align 4
  %i.qq = add nsw i32 %i.qp, %.2114
  %i.qr = shl i32 %i.qq, 1                        ; 2 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv145
  store i32 %i.qr, ptr %i.qs, align 8
  %indvars.iv.next146 = or disjoint i64 %indvars.iv145, 1 ; 2 uses
  %i.qt = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next146
  %i.qu = getelementptr i8, ptr %i.qt, i64 -4
  %i.qv = load i32, ptr %i.qu, align 8
  %i.qw = add nsw i32 %i.qv, %i.qr
  %i.qx = shl i32 %i.qw, 1                        ; 2 uses
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next146
  store i32 %i.qx, ptr %i.qy, align 4
  %indvars.iv.next146.1 = add nuw nsw i64 %indvars.iv145, 2 ; 2 uses
  %i.qz = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next146.1
  %i.ra = getelementptr i8, ptr %i.qz, i64 -4
  %i.rb = load i32, ptr %i.ra, align 4
  %i.rc = add nsw i32 %i.rb, %i.qx
  %i.rd = shl i32 %i.rc, 1                        ; 2 uses
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next146.1
  store i32 %i.rd, ptr %i.re, align 8
  %indvars.iv.next146.2 = add nuw nsw i64 %indvars.iv145, 3 ; 2 uses
  %i.rf = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next146.2
  %i.rg = getelementptr i8, ptr %i.rf, i64 -4
  %i.rh = load i32, ptr %i.rg, align 8
  %i.ri = add nsw i32 %i.rh, %i.rd
  %i.rj = shl i32 %i.ri, 1                        ; 3 uses
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next146.2
  store i32 %i.rj, ptr %i.rk, align 4
  %indvars.iv.next146.3 = add nuw nsw i64 %indvars.iv145, 4 ; 2 uses
  %niter244.next.3 = add nuw i64 %niter244, 4     ; 2 uses
  %niter244.ncmp.3 = icmp eq i64 %niter244.next.3, %unroll_iter243
  br i1 %niter244.ncmp.3, label %.preheader.unr-lcssa, label %bb.ab

bb.ac:                                            ; preds = %.preheader, %bb.ag
  %indvars.iv150 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next151, %bb.ag ] ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qk, i64 %indvars.iv150
  %i.rm = load i8, ptr %i.rl, align 1             ; 4 uses
  %i.rn = icmp eq i8 %i.rm, 0
  br i1 %i.rn, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ro = zext i8 %i.rm to i32                    ; 2 uses
  %i.rp = zext i8 %i.rm to i64
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.rp ; 2 uses
  %i.rr = load i32, ptr %i.rq, align 4            ; 3 uses
  %i.rs = add i32 %i.rr, 1
  store i32 %i.rs, ptr %i.rq, align 4
  %xtraiter248 = and i32 %i.ro, 3                 ; 3 uses
  %i.rt = icmp ult i8 %i.rm, 4
  br i1 %i.rt, label %.epil.preheader247, label %.new245

.new245:                                          ; preds = %bb.ad
  %unroll_iter254 = and i32 %i.ro, 252
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.new245
  %.0117 = phi i32 [ %i.rr, %.new245 ], [ %i.sh, %bb.ae ] ; 5 uses
  %.067116 = phi i32 [ 0, %.new245 ], [ %i.sg, %bb.ae ]
  %niter255 = phi i32 [ 0, %.new245 ], [ %niter255.next.3, %bb.ae ]
  %i.ru = shl i32 %.067116, 3
  %i.rv = shl i32 %.0117, 2
  %i.rw = and i32 %i.rv, 4
  %i.rx = or disjoint i32 %i.ru, %i.rw
  %i.ry = and i32 %.0117, 2
  %i.rz = or disjoint i32 %i.ry, %i.rx
  %i.sa = lshr i32 %.0117, 2
  %i.sb = and i32 %i.sa, 1
  %i.sc = or disjoint i32 %i.sb, %i.rz
  %i.sd = lshr i32 %.0117, 3
  %i.se = shl i32 %i.sc, 1
  %i.sf = and i32 %i.sd, 1
  %i.sg = or disjoint i32 %i.sf, %i.se            ; 3 uses
  %i.sh = lshr i32 %.0117, 4                      ; 2 uses
  %niter255.next.3 = add i32 %niter255, 4         ; 2 uses
  %niter255.ncmp.3.not = icmp eq i32 %niter255.next.3, %unroll_iter254
  br i1 %niter255.ncmp.3.not, label %.unr-lcssa246, label %bb.ae

.unr-lcssa246:                                    ; preds = %bb.ae
  %lcmp.mod250.not = icmp eq i32 %xtraiter248, 0
  br i1 %lcmp.mod250.not, label %.epilog-lcssa251, label %.epil.preheader247

.epil.preheader247:                               ; preds = %.unr-lcssa246, %bb.ad
  %.0117.epil.init = phi i32 [ %i.rr, %bb.ad ], [ %i.sh, %.unr-lcssa246 ]
  %.067116.epil.init = phi i32 [ 0, %bb.ad ], [ %i.sg, %.unr-lcssa246 ]
  %lcmp.mod253 = icmp ne i32 %xtraiter248, 0
  tail call void @llvm.assume(i1 %lcmp.mod253)
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.epil.preheader247
  %.0117.epil = phi i32 [ %.0117.epil.init, %.epil.preheader247 ], [ %i.sl, %bb.af ] ; 2 uses
  %.067116.epil = phi i32 [ %.067116.epil.init, %.epil.preheader247 ], [ %i.sk, %bb.af ]
  %epil.iter249 = phi i32 [ 0, %.epil.preheader247 ], [ %epil.iter249.next, %bb.af ]
  %i.si = shl i32 %.067116.epil, 1
  %i.sj = and i32 %.0117.epil, 1
  %i.sk = or disjoint i32 %i.sj, %i.si            ; 2 uses
  %i.sl = lshr i32 %.0117.epil, 1
  %epil.iter249.next = add i32 %epil.iter249, 1   ; 2 uses
  %epil.iter249.cmp.not = icmp eq i32 %epil.iter249.next, %xtraiter248
  br i1 %epil.iter249.cmp.not, label %.epilog-lcssa251, label %bb.af, !llvm.loop !48

.epilog-lcssa251:                                 ; preds = %bb.af, %.unr-lcssa246
  %.lcssa = phi i32 [ %i.sg, %.unr-lcssa246 ], [ %i.sk, %bb.af ]
  %i.sm = trunc i32 %.lcssa to i16
  %i.sn = getelementptr inbounds nuw [2 x i8], ptr %i.qm, i64 %indvars.iv150
  store i16 %i.sm, ptr %i.sn, align 2
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ac, %.epilog-lcssa251
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count153
  br i1 %exitcond154.not, label %bb.ah, label %bb.ac

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mz_zip_reader_sort_central_dir_offsets_by_filename(i32 %.16.val, ptr nofree readonly captures(none) %.104.val) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.104.val, i64 32 ; 2 uses
  %i.b = icmp ult i32 %.16.val, 2
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.104.val, i64 64
  %i.d = load ptr, ptr %i.c, align 8              ; 11 uses
  %i.e = add i32 %.16.val, -2
  %i.f = zext i32 %.16.val to i64                 ; 3 uses
  %i.g = lshr i32 %i.e, 1
  %i.h = zext nneg i32 %i.g to i64
  br label %bb.c

bb.c:                                             ; preds = %mz_zip_reader_filename_less.exit119._crit_edge, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %mz_zip_reader_filename_less.exit119._crit_edge ], [ %i.h, %bb.b ] ; 4 uses
  %i.i = shl nuw nsw i64 %indvars.iv, 1           ; 2 uses
  %i.j = or disjoint i64 %i.i, 1                  ; 2 uses
  %.not22 = icmp samesign ult i64 %i.j, %i.f
  br i1 %.not22, label %.lr.ph24, label %mz_zip_reader_filename_less.exit119._crit_edge

.lr.ph24:                                         ; preds = %bb.c, %bb.h
  %i.k = phi i64 [ %i.cg, %bb.h ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = phi i64 [ %i.cf, %bb.h ], [ %i.i, %bb.c ]
  %.07423 = phi i64 [ %i.ax, %bb.h ], [ %indvars.iv, %bb.c ]
  %i.m = add nuw nsw i64 %i.l, 2                  ; 2 uses
  %i.n = icmp samesign ult i64 %i.m, %i.f
  %.pre = load ptr, ptr %.104.val, align 8        ; 4 uses
  %.pre63 = load ptr, ptr %i.a, align 8           ; 4 uses
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph24
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.k
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.m
  %i.r = load i32, ptr %i.q, align 4
  %i.s = zext i32 %i.p to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.pre63, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.v ; 2 uses
  %i.x = zext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.pre63, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %i.ad = load i16, ptr %i.ac, align 1            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  %i.af = load i16, ptr %i.ae, align 1            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 46 ; 3 uses
  %i.ah = icmp ult i16 %i.ad, %i.af
  %i.ai = tail call i16 @llvm.umin.i16(i16 %i.ad, i16 %i.af) ; 2 uses
  %i.aj = zext i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 2 uses
  %.not56 = icmp eq i16 %i.ai, 0
  br i1 %.not56, label %mz_zip_reader_filename_less.exit134, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 46
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.036.i1215 = phi ptr [ %i.ar, %bb.e ], [ %i.al, %.lr.ph.preheader ] ; 2 uses
  %.037.i1204 = phi ptr [ %i.aq, %bb.e ], [ %i.ag, %.lr.ph.preheader ] ; 3 uses
  %i.am = load i8, ptr %.037.i1204, align 1       ; 3 uses
  %i.an = add i8 %i.am, -65
  %or.cond.i127 = icmp ult i8 %i.an, 26
  %narrow.i133 = add nuw nsw i8 %i.am, 32
  %spec.select = select i1 %or.cond.i127, i8 %narrow.i133, i8 %i.am ; 3 uses
  %i.ao = load i8, ptr %.036.i1215, align 1       ; 3 uses
  %i.ap = add i8 %i.ao, -65
  %or.cond43.i129 = icmp ult i8 %i.ap, 26
  %narrow40.i132 = add nuw nsw i8 %i.ao, 32
  %.in41.i130 = select i1 %or.cond43.i129, i8 %narrow40.i132, i8 %i.ao ; 2 uses
  %.not.i131 = icmp eq i8 %spec.select, %.in41.i130
  br i1 %.not.i131, label %bb.e, label %mz_zip_reader_filename_less.exit134.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %.037.i1204, i64 1 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.036.i1215, i64 1
  %i.as = icmp ult ptr %i.aq, %i.ak
  br i1 %i.as, label %.lr.ph, label %mz_zip_reader_filename_less.exit134.loopexit

mz_zip_reader_filename_less.exit134.loopexit:     ; preds = %bb.e, %.lr.ph
  %.in41.i130.lcssa = phi i8 [ %spec.select, %bb.e ], [ %.in41.i130, %.lr.ph ]
  %.037.i120.lcssa.ph = phi ptr [ %i.aq, %bb.e ], [ %.037.i1204, %.lr.ph ]
  %i.at = icmp ult i8 %spec.select, %.in41.i130.lcssa
  br label %mz_zip_reader_filename_less.exit134

mz_zip_reader_filename_less.exit134:              ; preds = %mz_zip_reader_filename_less.exit134.loopexit, %bb.d
  %.037.i120.lcssa = phi ptr [ %i.ag, %bb.d ], [ %.037.i120.lcssa.ph, %mz_zip_reader_filename_less.exit134.loopexit ]
  %.135.i124 = phi i1 [ false, %bb.d ], [ %i.at, %mz_zip_reader_filename_less.exit134.loopexit ]
  %i.au = icmp eq ptr %.037.i120.lcssa, %i.ak
  %.in42.i126 = select i1 %i.au, i1 %i.ah, i1 %.135.i124
  %i.av = zext i1 %.in42.i126 to i64
  br label %bb.f

bb.f:                                             ; preds = %mz_zip_reader_filename_less.exit134, %.lr.ph24
  %i.aw = phi i64 [ 0, %.lr.ph24 ], [ %i.av, %mz_zip_reader_filename_less.exit134 ]
  %i.ax = add nuw nsw i64 %i.aw, %i.k             ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.07423 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4            ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ax ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4            ; 2 uses
  %i.bc = zext i32 %i.az to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.pre63, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.bf ; 2 uses
  %i.bh = zext i32 %i.bb to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.pre63, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 28
  %i.bn = load i16, ptr %i.bm, align 1            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 28
  %i.bp = load i16, ptr %i.bo, align 1            ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 46 ; 3 uses
  %i.br = icmp uge i16 %i.bn, %i.bp
  %i.bs = tail call i16 @llvm.umin.i16(i16 %i.bn, i16 %i.bp) ; 2 uses
  %i.bt = zext i16 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bt ; 2 uses
  %.not57 = icmp eq i16 %i.bs, 0
  br i1 %.not57, label %mz_zip_reader_filename_less.exit119, label %.lr.ph14.preheader

.lr.ph14.preheader:                               ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 46
  br label %.lr.ph14

.lr.ph14:                                         ; preds = %.lr.ph14.preheader, %bb.g
  %.036.i10613 = phi ptr [ %i.cb, %bb.g ], [ %i.bv, %.lr.ph14.preheader ] ; 2 uses
  %.037.i10512 = phi ptr [ %i.ca, %bb.g ], [ %i.bq, %.lr.ph14.preheader ] ; 3 uses
  %i.bw = load i8, ptr %.037.i10512, align 1      ; 3 uses
  %i.bx = add i8 %i.bw, -65
  %or.cond.i112 = icmp ult i8 %i.bx, 26
  %narrow.i118 = add nuw nsw i8 %i.bw, 32
  %spec.select1 = select i1 %or.cond.i112, i8 %narrow.i118, i8 %i.bw ; 3 uses
  %i.by = load i8, ptr %.036.i10613, align 1      ; 3 uses
  %i.bz = add i8 %i.by, -65
  %or.cond43.i114 = icmp ult i8 %i.bz, 26
  %narrow40.i117 = add nuw nsw i8 %i.by, 32
  %.in41.i115 = select i1 %or.cond43.i114, i8 %narrow40.i117, i8 %i.by ; 2 uses
  %.not.i116 = icmp eq i8 %spec.select1, %.in41.i115
  br i1 %.not.i116, label %bb.g, label %mz_zip_reader_filename_less.exit119.loopexit

bb.g:                                             ; preds = %.lr.ph14
  %i.ca = getelementptr inbounds nuw i8, ptr %.037.i10512, i64 1 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.036.i10613, i64 1
  %i.cc = icmp ult ptr %i.ca, %i.bu
  br i1 %i.cc, label %.lr.ph14, label %mz_zip_reader_filename_less.exit119.loopexit

mz_zip_reader_filename_less.exit119.loopexit:     ; preds = %bb.g, %.lr.ph14
  %.in41.i115.lcssa = phi i8 [ %spec.select1, %bb.g ], [ %.in41.i115, %.lr.ph14 ]
  %.037.i105.lcssa.ph = phi ptr [ %i.ca, %bb.g ], [ %.037.i10512, %.lr.ph14 ]
  %i.cd = icmp uge i8 %spec.select1, %.in41.i115.lcssa
  br label %mz_zip_reader_filename_less.exit119

mz_zip_reader_filename_less.exit119:              ; preds = %mz_zip_reader_filename_less.exit119.loopexit, %bb.f
  %.037.i105.lcssa = phi ptr [ %i.bq, %bb.f ], [ %.037.i105.lcssa.ph, %mz_zip_reader_filename_less.exit119.loopexit ]
  %.135.i109 = phi i1 [ true, %bb.f ], [ %i.cd, %mz_zip_reader_filename_less.exit119.loopexit ]
  %i.ce = icmp eq ptr %.037.i105.lcssa, %i.bu
  %.in42.i111 = select i1 %i.ce, i1 %i.br, i1 %.135.i109
  br i1 %.in42.i111, label %mz_zip_reader_filename_less.exit119._crit_edge, label %bb.h

bb.h:                                             ; preds = %mz_zip_reader_filename_less.exit119
  store i32 %i.bb, ptr %i.ay, align 4
  store i32 %i.az, ptr %i.ba, align 4
  %i.cf = shl nuw nsw i64 %i.ax, 1                ; 2 uses
  %i.cg = or disjoint i64 %i.cf, 1                ; 2 uses
  %.not = icmp samesign ult i64 %i.cg, %i.f
  br i1 %.not, label %.lr.ph24, label %mz_zip_reader_filename_less.exit119._crit_edge

mz_zip_reader_filename_less.exit119._crit_edge:   ; preds = %bb.h, %mz_zip_reader_filename_less.exit119, %bb.c
  %.not86 = icmp eq i64 %indvars.iv, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %.not86, label %.lr.ph55.preheader, label %bb.c

end_hunk_9
begin_hunk_10_@mz_zip_array_ensure_capacity:bb.a
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %1, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8
  %i.l = zext i32 %i.k to i64
  %i.m = tail call ptr %i.f(ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.l, i64 noundef %.1) #36 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  store ptr %i.m, ptr %1, align 8
  store i64 %.1, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.a, %bb.e
  %.018 = phi i32 [ 1, %bb.e ], [ 1, %bb.a ], [ 0, %.loopexit ]
  ret i32 %.018
}

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #26

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nounwind
declare i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #26

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -21, 1) i32 @zip_entry_finalize(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef range(i64 -1, 4294967296) %2) unnamed_addr #17 {
bb.a:
  %i.a = tail call noalias ptr @calloc(i64 noundef %2, i64 noundef 8) #40 ; 13 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.j, label %.preheader61

.preheader61:                                     ; preds = %bb.a
  %i.b = icmp sgt i64 %2, 0                       ; 2 uses
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader61
  %scevgep.i = getelementptr i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %zip_sort.exit.thread
  %.062 = phi i64 [ 0, %.lr.ph ], [ %i.ad, %zip_sort.exit.thread ] ; 14 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.062 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.062
  store i64 %i.e, ptr %i.f, align 8
  %.not84 = icmp eq i64 %.062, 0
  br i1 %.not84, label %zip_index_next.exit.i, label %.lr.ph80

bb.c:                                             ; preds = %.lr.ph80
  %i.g = icmp sgt i64 %.0.in.i.i78, 1
  br i1 %i.g, label %.lr.ph80, label %zip_index_next.exit.i

.lr.ph80:                                         ; preds = %bb.b, %bb.c
  %.0.in.i.i78 = phi i64 [ %.0.i.i, %bb.c ], [ %.062, %bb.b ] ; 3 uses
  %.0.i.i = add nsw i64 %.0.in.i.i78, -1          ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0.i.i
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp ugt i64 %i.e, %i.i
  br i1 %i.j, label %zip_index_next.exit.i, label %bb.c

zip_index_next.exit.i:                            ; preds = %bb.c, %.lr.ph80, %bb.b
  %.010.i.i = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %.0.in.i.i78, %.lr.ph80 ] ; 11 uses
  %.not.i = icmp eq i64 %.010.i.i, %.062
  br i1 %.not.i, label %zip_sort.exit.thread, label %bb.d

bb.d:                                             ; preds = %zip_index_next.exit.i
  %i.k = icmp samesign ugt i64 %.062, %.010.i.i
  br i1 %i.k, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.l = shl nuw nsw i64 %.010.i.i, 3             ; 2 uses
  %scevgep20.i = getelementptr i8, ptr %scevgep.i, i64 %i.l
  %scevgep21.i = getelementptr i8, ptr %i.a, i64 %i.l
  %i.m = sub nuw nsw i64 %.062, %.010.i.i
  %i.n = shl nuw nsw i64 %i.m, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep20.i, ptr align 8 %scevgep21.i, i64 %i.n, i1 false)
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.010.i.i
  store i64 %i.e, ptr %i.o, align 8
  br label %.lr.ph.i.preheader

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.010.i.i
  store i64 %i.e, ptr %i.p, align 8
  %.not60 = icmp eq i64 %.062, 0
  br i1 %.not60, label %zip_index_update.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.thread, %bb.e
  %xtraiter = and i64 %.062, 1
  %i.q = icmp eq i64 %.062, 1
  br i1 %i.q, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %.062, 9223372036854775806
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i.preheader.new
  %.012.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.y, %bb.h ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.h ]
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.012.i ; 2 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %.not.i59 = icmp slt i64 %i.s, %.010.i.i
  br i1 %.not.i59, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.t = add nuw nsw i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.012.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %.not.i59.1 = icmp slt i64 %i.w, %.010.i.i
  br i1 %.not.i59.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.x = add nuw nsw i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.1
  %i.y = add nuw nsw i64 %.012.i, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %zip_index_update.exit.loopexit.unr-lcssa, label %.lr.ph.i

zip_index_update.exit.loopexit.unr-lcssa:         ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %zip_index_update.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %zip_index_update.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.012.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.y, %zip_index_update.exit.loopexit.unr-lcssa ]
  %lcmp.mod86 = trunc i64 %.062 to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.012.i.epil.init ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %.not.i59.epil = icmp slt i64 %i.aa, %.010.i.i
  br i1 %.not.i59.epil, label %zip_index_update.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ab = add nuw nsw i64 %i.aa, 1
  store i64 %i.ab, ptr %i.z, align 8
  br label %zip_index_update.exit

zip_index_update.exit:                            ; preds = %zip_index_update.exit.loopexit.unr-lcssa, %bb.i, %.lr.ph.i.epil.preheader, %bb.e
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.010.i.i
  store i64 %.062, ptr %i.ac, align 8
  br label %zip_sort.exit.thread

zip_sort.exit.thread:                             ; preds = %zip_index_next.exit.i, %zip_index_update.exit
  store i64 %.010.i.i, ptr %i.c, align 8
  %i.ad = add nuw nsw i64 %.062, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %zip_sort.exit.thread, %.preheader61
  %i.ae = tail call noalias ptr @calloc(i64 noundef %2, i64 noundef 8) #40 ; 11 uses
  %.not56 = icmp eq ptr %i.ae, null
  br i1 %.not56, label %.sink.split, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.af = add nsw i64 %2, -1                      ; 8 uses
  %i.ag = icmp sgt i64 %2, 1
  br i1 %i.ag, label %.lr.ph64.preheader, label %._crit_edge65

.lr.ph64.preheader:                               ; preds = %.preheader
  %.pre = load i64, ptr %i.a, align 8             ; 2 uses
  %min.iters.check = icmp ult i64 %2, 5
  br i1 %min.iters.check, label %.lr.ph64.preheader85, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph64.preheader
  %n.vec = and i64 %i.af, -4                      ; 3 uses
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load83, %vector.body ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %wide.load = load <2 x i64>, ptr %i.ai, align 8 ; 3 uses
  %wide.load83 = load <2 x i64>, ptr %i.aj, align 8 ; 4 uses
  %i.ak = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.al = shufflevector <2 x i64> %wide.load, <2 x i64> %wide.load83, <2 x i32> <i32 1, i32 2>
  %i.am = sub <2 x i64> %wide.load, %i.ak
  %i.an = sub <2 x i64> %wide.load83, %i.al
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <2 x i64> %i.am, ptr %i.ao, align 8
  store <2 x i64> %i.an, ptr %i.ap, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load83, i64 1
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %._crit_edge65.thread, label %.lr.ph64.preheader85

.lr.ph64.preheader85:                             ; preds = %.lr.ph64.preheader, %middle.block
  %.ph = phi i64 [ %.pre, %.lr.ph64.preheader ], [ %vector.recur.extract, %middle.block ]
  %.163.ph = phi i64 [ 0, %.lr.ph64.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph64

.lr.ph64:                                         ; preds = %.lr.ph64.preheader85, %.lr.ph64
  %i.ar = phi i64 [ %i.au, %.lr.ph64 ], [ %.ph, %.lr.ph64.preheader85 ]
  %.163 = phi i64 [ %i.as, %.lr.ph64 ], [ %.163.ph, %.lr.ph64.preheader85 ] ; 2 uses
  %i.as = add nuw nsw i64 %.163, 1                ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = sub i64 %i.au, %i.ar
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.163
  store i64 %i.av, ptr %i.aw, align 8
  %exitcond70.not = icmp eq i64 %i.as, %i.af
  br i1 %exitcond70.not, label %._crit_edge65.thread, label %.lr.ph64, !llvm.loop !50

._crit_edge65.thread:                             ; preds = %.lr.ph64, %middle.block
  %i.ax = load i64, ptr %0, align 8
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.af
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = sub i64 %i.ax, %i.az
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.af
  store i64 %i.ba, ptr %i.bb, align 8
  br label %.lr.ph68.preheader

._crit_edge65:                                    ; preds = %.preheader
  %i.bc = load i64, ptr %0, align 8
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.af
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = sub i64 %i.bc, %i.be
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.af
  store i64 %i.bf, ptr %i.bg, align 8
  br i1 %i.b, label %.lr.ph68.preheader, label %._crit_edge69

.lr.ph68.preheader:                               ; preds = %._crit_edge65.thread, %._crit_edge65
  %xtraiter87 = and i64 %2, 3                     ; 3 uses
  %i.bh = icmp ult i64 %i.af, 3
  br i1 %i.bh, label %.lr.ph68.epil.preheader, label %.lr.ph68.preheader.new

.lr.ph68.preheader.new:                           ; preds = %.lr.ph68.preheader
  %unroll_iter90 = and i64 %2, -4
  br label %.lr.ph68

.lr.ph68:                                         ; preds = %.lr.ph68, %.lr.ph68.preheader.new
  %.266 = phi i64 [ 0, %.lr.ph68.preheader.new ], [ %i.cf, %.lr.ph68 ] ; 5 uses
  %niter91 = phi i64 [ 0, %.lr.ph68.preheader.new ], [ %niter91.next.3, %.lr.ph68 ]
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.266 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store i64 %i.bl, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.266 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  store i64 %i.br, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.266 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 88
  store i64 %i.bx, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.266 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 96
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 120
  store i64 %i.cd, ptr %i.ce, align 8
  %i.cf = add nuw nsw i64 %.266, 4                ; 2 uses
  %niter91.next.3 = add i64 %niter91, 4           ; 2 uses
  %niter91.ncmp.3 = icmp eq i64 %niter91.next.3, %unroll_iter90
  br i1 %niter91.ncmp.3, label %._crit_edge69.loopexit.unr-lcssa, label %.lr.ph68

._crit_edge69.loopexit.unr-lcssa:                 ; preds = %.lr.ph68
  %lcmp.mod88.not = icmp eq i64 %xtraiter87, 0
  br i1 %lcmp.mod88.not, label %._crit_edge69, label %.lr.ph68.epil.preheader

.lr.ph68.epil.preheader:                          ; preds = %._crit_edge69.loopexit.unr-lcssa, %.lr.ph68.preheader
  %.266.epil.init = phi i64 [ 0, %.lr.ph68.preheader ], [ %i.cf, %._crit_edge69.loopexit.unr-lcssa ]
  %lcmp.mod89 = icmp ne i64 %xtraiter87, 0
  tail call void @llvm.assume(i1 %lcmp.mod89)
  br label %.lr.ph68.epil

.lr.ph68.epil:                                    ; preds = %.lr.ph68.epil, %.lr.ph68.epil.preheader
  %.266.epil = phi i64 [ %i.cl, %.lr.ph68.epil ], [ %.266.epil.init, %.lr.ph68.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph68.epil ], [ 0, %.lr.ph68.epil.preheader ]
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.266.epil ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store i64 %i.cj, ptr %i.ck, align 8
  %i.cl = add nuw nsw i64 %.266.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter87
  br i1 %epil.iter.cmp.not, label %._crit_edge69, label %.lr.ph68.epil, !llvm.loop !51

._crit_edge69:                                    ; preds = %._crit_edge69.loopexit.unr-lcssa, %.lr.ph68.epil, %._crit_edge65
  tail call void @free(ptr noundef nonnull %i.ae) #36
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge, %._crit_edge69
  %.150.ph = phi i32 [ 0, %._crit_edge69 ], [ -21, %._crit_edge ]
  tail call void @free(ptr noundef %i.a) #36
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.a
  %.150 = phi i32 [ -21, %bb.a ], [ %.150.ph, %.sink.split ]
  ret i32 %.150
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @zip_central_dir_delete(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #17 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.preheader71.lr.ph, label %.critedge4._crit_edge

.preheader71.lr.ph:                               ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %wide.trip.count81.i = zext nneg i32 %2 to i64  ; 2 uses
  %i.d = zext nneg i32 %2 to i64                  ; 6 uses
  br label %.preheader71

.preheader71:                                     ; preds = %.preheader71.lr.ph, %zip_central_dir_move.exit
  %.05778 = phi i32 [ 0, %.preheader71.lr.ph ], [ %.2.lcssa, %zip_central_dir_move.exit ] ; 2 uses
  %i.e = sext i32 %.05778 to i64
  %i.f = add nsw i32 %.05778, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %2, i32 %i.f) ; 2 uses
  br label %bb.b

.preheader68.lr.ph:                               ; preds = %zip_central_dir_move.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.h = zext nneg i32 %2 to i64                  ; 2 uses
  br label %.preheader68

bb.b:                                             ; preds = %.preheader71, %bb.c
  %indvars.iv = phi i64 [ %i.e, %.preheader71 ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4
  %.not60 = icmp eq i32 %i.j, 0
  br i1 %.not60, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.k = icmp slt i64 %indvars.iv.next, %i.d
  br i1 %i.k, label %bb.b, label %.critedge2

.critedge:                                        ; preds = %bb.b
  %i.l = trunc nsw i64 %indvars.iv to i32         ; 5 uses
  %i.m = icmp sgt i32 %2, %i.l
  br i1 %i.m, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.critedge, %bb.d
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %bb.d ], [ %indvars.iv, %.critedge ] ; 3 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv95
  %i.o = load i32, ptr %i.n, align 4
  %.not61 = icmp eq i32 %i.o, 0
  br i1 %.not61, label %.critedge2.loopexit.split.loop.exit133, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next96 = add nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next96, %i.d
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph

.critedge2.loopexit.split.loop.exit133:           ; preds = %.lr.ph
  %i.p = trunc nsw i64 %indvars.iv95 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.c, %bb.d, %.critedge2.loopexit.split.loop.exit133, %.critedge
  %.1.lcssa116 = phi i32 [ %i.l, %.critedge ], [ %i.l, %.critedge2.loopexit.split.loop.exit133 ], [ %i.l, %bb.d ], [ %smax, %bb.c ] ; 2 uses
  %.2.lcssa = phi i32 [ %i.l, %.critedge ], [ %i.p, %.critedge2.loopexit.split.loop.exit133 ], [ %2, %bb.d ], [ %smax, %bb.c ] ; 4 uses
  %.lcssa = phi i1 [ false, %.critedge ], [ true, %.critedge2.loopexit.split.loop.exit133 ], [ false, %bb.d ], [ false, %bb.c ] ; 2 uses
  %i.q = icmp eq i32 %.1.lcssa116, %2
  br i1 %i.q, label %zip_central_dir_move.exit, label %bb.e

bb.e:                                             ; preds = %.critedge2
  %i.r = load ptr, ptr %0, align 8                ; 4 uses
  %i.s = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.t = sext i32 %.1.lcssa116 to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4              ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.w
  %i.y = icmp eq i32 %.2.lcssa, %2
  br i1 %i.y, label %.thread66.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = sext i32 %.2.lcssa to i64                ; 9 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac ; 2 uses
  %i.ae = load i64, ptr %i.c, align 8
  %i.af = sub i64 %i.ae, %i.ac                    ; 11 uses
  %gepdiff.i = sub i32 %i.ab, %i.v                ; 10 uses
  %i.ag = icmp ne ptr %i.r, null                  ; 2 uses
  %i.ah = icmp eq i32 %i.v, 0
  %or.cond.i = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond.i, label %bb.g, label %.loopexit.i

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %i.ad, i64 %i.af, i1 false)
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = tail call ptr @realloc(ptr noundef %i.ai, i64 noundef %i.af) #38
  store ptr %i.aj, ptr %0, align 8
  br i1 %.lcssa, label %.lr.ph.i.preheader, label %.thread66.i

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.ak = sub nsw i64 %i.d, %i.z
  %xtraiter27 = and i64 %i.ak, 3                  ; 2 uses
  %lcmp.mod28.not = icmp eq i64 %xtraiter27, 0
  br i1 %lcmp.mod28.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %i.z, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter29 = phi i64 [ %prol.iter29.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.al = load ptr, ptr %i.b, align 8
  %i.am = getelementptr inbounds [4 x i8], ptr %i.al, i64 %indvars.iv.i.prol ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = sub i32 %i.an, %gepdiff.i
  store i32 %i.ao, ptr %i.am, align 4
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter29.next = add i64 %prol.iter29, 1     ; 2 uses
  %prol.iter29.cmp.not = icmp eq i64 %prol.iter29.next, %xtraiter27
  br i1 %prol.iter29.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !52

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %i.z, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ap = sub nsw i64 %i.z, %i.d
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %.thread66.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ar = load ptr, ptr %i.b, align 8
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %indvars.iv.i ; 2 uses
  %i.at = load i32, ptr %i.as, align 4
  %i.au = sub i32 %i.at, %gepdiff.i
  store i32 %i.au, ptr %i.as, align 4
  %i.av = load ptr, ptr %i.b, align 8
  %i.aw = getelementptr [4 x i8], ptr %i.av, i64 %indvars.iv.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 4      ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = sub i32 %i.ay, %gepdiff.i
  store i32 %i.az, ptr %i.ax, align 4
  %i.ba = load ptr, ptr %i.b, align 8
  %i.bb = getelementptr [4 x i8], ptr %i.ba, i64 %indvars.iv.i
  %i.bc = getelementptr i8, ptr %i.bb, i64 8      ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = sub i32 %i.bd, %gepdiff.i
  store i32 %i.be, ptr %i.bc, align 4
  %i.bf = load ptr, ptr %i.b, align 8
  %i.bg = getelementptr [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 12     ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = sub i32 %i.bi, %gepdiff.i
  store i32 %i.bj, ptr %i.bh, align 4
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count81.i
  br i1 %exitcond.not.i.3, label %.thread66.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %bb.f
  %i.bk = mul i64 %i.af, %i.w
  %.not.i = icmp ne i64 %i.bk, 0
  %or.cond58.not.i = select i1 %i.ag, i1 %.not.i, i1 false
  br i1 %or.cond58.not.i, label %bb.h, label %.thread66.i

bb.h:                                             ; preds = %.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %i.ad, i64 %i.af, i1 false)
  br i1 %.lcssa, label %.lr.ph76.i.preheader, label %.thread66.i

.lr.ph76.i.preheader:                             ; preds = %bb.h
  %i.bl = sub nsw i64 %i.d, %i.z
  %xtraiter = and i64 %i.bl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph76.i.prol.loopexit, label %.lr.ph76.i.prol

.lr.ph76.i.prol:                                  ; preds = %.lr.ph76.i.preheader, %.lr.ph76.i.prol
  %indvars.iv78.i.prol = phi i64 [ %indvars.iv.next79.i.prol, %.lr.ph76.i.prol ], [ %i.z, %.lr.ph76.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph76.i.prol ], [ 0, %.lr.ph76.i.preheader ]
  %i.bm = load ptr, ptr %i.b, align 8
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv78.i.prol ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = sub i32 %i.bo, %gepdiff.i
  store i32 %i.bp, ptr %i.bn, align 4
  %indvars.iv.next79.i.prol = add nsw i64 %indvars.iv78.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph76.i.prol.loopexit, label %.lr.ph76.i.prol, !llvm.loop !53

.lr.ph76.i.prol.loopexit:                         ; preds = %.lr.ph76.i.prol, %.lr.ph76.i.preheader
  %indvars.iv78.i.unr = phi i64 [ %i.z, %.lr.ph76.i.preheader ], [ %indvars.iv.next79.i.prol, %.lr.ph76.i.prol ]
  %i.bq = sub nsw i64 %i.z, %i.d
  %i.br = icmp ugt i64 %i.bq, -4
  br i1 %i.br, label %.thread66.i, label %.lr.ph76.i

.lr.ph76.i:                                       ; preds = %.lr.ph76.i.prol.loopexit, %.lr.ph76.i
  %indvars.iv78.i = phi i64 [ %indvars.iv.next79.i.3, %.lr.ph76.i ], [ %indvars.iv78.i.unr, %.lr.ph76.i.prol.loopexit ] ; 5 uses
  %i.bs = load ptr, ptr %i.b, align 8
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %indvars.iv78.i ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = sub i32 %i.bu, %gepdiff.i
  store i32 %i.bv, ptr %i.bt, align 4
  %i.bw = load ptr, ptr %i.b, align 8
  %i.bx = getelementptr [4 x i8], ptr %i.bw, i64 %indvars.iv78.i
  %i.by = getelementptr i8, ptr %i.bx, i64 4      ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = sub i32 %i.bz, %gepdiff.i
  store i32 %i.ca, ptr %i.by, align 4
  %i.cb = load ptr, ptr %i.b, align 8
  %i.cc = getelementptr [4 x i8], ptr %i.cb, i64 %indvars.iv78.i
  %i.cd = getelementptr i8, ptr %i.cc, i64 8      ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = sub i32 %i.ce, %gepdiff.i
  store i32 %i.cf, ptr %i.cd, align 4
  %i.cg = load ptr, ptr %i.b, align 8
  %i.ch = getelementptr [4 x i8], ptr %i.cg, i64 %indvars.iv78.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 12     ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = sub i32 %i.cj, %gepdiff.i
  store i32 %i.ck, ptr %i.ci, align 4
  %indvars.iv.next79.i.3 = add nsw i64 %indvars.iv78.i, 4 ; 2 uses
  %exitcond82.not.i.3 = icmp eq i64 %indvars.iv.next79.i.3, %wide.trip.count81.i
  br i1 %exitcond82.not.i.3, label %.thread66.i, label %.lr.ph76.i

.thread66.i:                                      ; preds = %.lr.ph76.i.prol.loopexit, %.lr.ph76.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.g, %bb.h, %.loopexit.i, %bb.e
  %.0526373.i = phi i64 [ %i.af, %.loopexit.i ], [ 0, %bb.e ], [ %i.af, %bb.h ], [ %i.af, %.lr.ph.i.prol.loopexit ], [ %i.af, %bb.g ], [ %i.af, %.lr.ph.i ], [ %i.af, %.lr.ph76.i ], [ %i.af, %.lr.ph76.i.prol.loopexit ]
  %i.cl = add i64 %.0526373.i, %i.w
  store i64 %i.cl, ptr %i.c, align 8
  br label %zip_central_dir_move.exit

zip_central_dir_move.exit:                        ; preds = %.critedge2, %.thread66.i
  %i.cm = icmp slt i32 %.2.lcssa, %2
  br i1 %i.cm, label %.preheader71, label %.preheader68.lr.ph

.preheader68:                                     ; preds = %._crit_edge, %.preheader68.lr.ph
  %.05689 = phi i32 [ 0, %.preheader68.lr.ph ], [ %i.en, %._crit_edge ] ; 3 uses
  %.388 = phi i32 [ 0, %.preheader68.lr.ph ], [ %.5.lcssa, %._crit_edge ] ; 2 uses
  %i.cn = sext i32 %.388 to i64
  %i.co = add nsw i32 %.388, 1
  %smax100 = tail call i32 @llvm.smax.i32(i32 %2, i32 %i.co)
  br label %bb.i

bb.i:                                             ; preds = %.preheader68, %bb.j
  %indvars.iv98 = phi i64 [ %i.cn, %.preheader68 ], [ %indvars.iv.next99, %bb.j ] ; 3 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv98
  %i.cq = load i32, ptr %i.cp, align 4
  %.not = icmp eq i32 %i.cq, 0
  br i1 %.not, label %bb.j, label %.critedge4.split.loop.exit136

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next99 = add nsw i64 %indvars.iv98, 1 ; 2 uses
  %i.cr = icmp slt i64 %indvars.iv.next99, %i.h
  br i1 %i.cr, label %bb.i, label %.critedge4

.critedge4.split.loop.exit136:                    ; preds = %bb.i
  %i.cs = trunc nsw i64 %indvars.iv98 to i32
  br label %.critedge4

.critedge4:                                       ; preds = %bb.j, %.critedge4.split.loop.exit136
  %.4.lcssa = phi i32 [ %i.cs, %.critedge4.split.loop.exit136 ], [ %smax100, %bb.j ] ; 7 uses
  %i.ct = icmp eq i32 %.4.lcssa, %2
  br i1 %i.ct, label %.critedge4._crit_edge, label %.preheader

.preheader:                                       ; preds = %.critedge4
  %i.cu = icmp slt i32 %.4.lcssa, %2
  br i1 %i.cu, label %.lr.ph81.preheader, label %.critedge6

.lr.ph81.preheader:                               ; preds = %.preheader
  %i.cv = sext i32 %.4.lcssa to i64
  br label %.lr.ph81

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %bb.k
  %indvars.iv102 = phi i64 [ %i.cv, %.lr.ph81.preheader ], [ %indvars.iv.next103, %bb.k ] ; 3 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv102
  %i.cx = load i32, ptr %i.cw, align 4
  %.not59 = icmp eq i32 %i.cx, 0
  br i1 %.not59, label %.critedge6.loopexit, label %bb.k

bb.k:                                             ; preds = %.lr.ph81
  %indvars.iv.next103 = add nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond105.not = icmp eq i64 %indvars.iv.next103, %i.h
  br i1 %exitcond105.not, label %._crit_edge.thread, label %.lr.ph81

.critedge6.loopexit:                              ; preds = %.lr.ph81
  %i.cy = trunc nsw i64 %indvars.iv102 to i32
  br label %.critedge6

.critedge6:                                       ; preds = %.critedge6.loopexit, %.preheader
  %.5.lcssa = phi i32 [ %.4.lcssa, %.preheader ], [ %i.cy, %.critedge6.loopexit ] ; 6 uses
  %i.cz = icmp slt i32 %.5.lcssa, %2
  br i1 %i.cz, label %.lr.ph87.preheader, label %._crit_edge.thread

.lr.ph87.preheader:                               ; preds = %.critedge6
  %i.da = sext i32 %.5.lcssa to i64               ; 2 uses
  %i.db = sext i32 %.4.lcssa to i64               ; 5 uses
  %i.dc = sub i32 %2, %.5.lcssa                   ; 2 uses
  %wide.trip.count = zext i32 %i.dc to i64        ; 2 uses
  %xtraiter30 = and i64 %wide.trip.count, 3       ; 3 uses
  %i.dd = add i32 %i.dc, -1
  %i.de = icmp ult i32 %i.dd, 3
  br i1 %i.de, label %.lr.ph87.epil.preheader, label %.lr.ph87.preheader.new

.lr.ph87.preheader.new:                           ; preds = %.lr.ph87.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph87

.lr.ph87:                                         ; preds = %.lr.ph87, %.lr.ph87.preheader.new
  %indvars.iv108 = phi i64 [ 0, %.lr.ph87.preheader.new ], [ %indvars.iv.next109.3, %.lr.ph87 ] ; 5 uses
  %indvars.iv106 = phi i64 [ %i.da, %.lr.ph87.preheader.new ], [ %indvars.iv.next107.3, %.lr.ph87 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph87.preheader.new ], [ %niter.next.3, %.lr.ph87 ]
  %i.df = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.df, i64 %indvars.iv106
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = getelementptr [4 x i8], ptr %i.df, i64 %indvars.iv108
  %i.dj = getelementptr [4 x i8], ptr %i.di, i64 %i.db
  store i32 %i.dh, ptr %i.dj, align 4
  %i.dk = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.dl = getelementptr [4 x i8], ptr %i.dk, i64 %indvars.iv106
  %i.dm = getelementptr i8, ptr %i.dl, i64 4
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = getelementptr [4 x i8], ptr %i.dk, i64 %indvars.iv108
  %i.dp = getelementptr i8, ptr %i.do, i64 4
  %i.dq = getelementptr [4 x i8], ptr %i.dp, i64 %i.db
  store i32 %i.dn, ptr %i.dq, align 4
  %i.dr = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ds = getelementptr [4 x i8], ptr %i.dr, i64 %indvars.iv106
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = getelementptr [4 x i8], ptr %i.dr, i64 %indvars.iv108
  %i.dw = getelementptr i8, ptr %i.dv, i64 8
  %i.dx = getelementptr [4 x i8], ptr %i.dw, i64 %i.db
  store i32 %i.du, ptr %i.dx, align 4
  %i.dy = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.dz = getelementptr [4 x i8], ptr %i.dy, i64 %indvars.iv106
  %i.ea = getelementptr i8, ptr %i.dz, i64 12
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = getelementptr [4 x i8], ptr %i.dy, i64 %indvars.iv108
  %i.ed = getelementptr i8, ptr %i.ec, i64 12
  %i.ee = getelementptr [4 x i8], ptr %i.ed, i64 %i.db
  store i32 %i.eb, ptr %i.ee, align 4
  %indvars.iv.next109.3 = add nuw nsw i64 %indvars.iv108, 4 ; 2 uses
  %indvars.iv.next107.3 = add nsw i64 %indvars.iv106, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph87

._crit_edge.thread:                               ; preds = %.critedge6, %bb.k
  %.5.lcssa118.ph = phi i32 [ %2, %bb.k ], [ %.5.lcssa, %.critedge6 ]
  %i.ef = sub i32 %.05689, %.4.lcssa
  %i.eg = add i32 %i.ef, %.5.lcssa118.ph
  br label %.critedge4._crit_edge

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph87
  %lcmp.mod31.not = icmp eq i64 %xtraiter30, 0
  br i1 %lcmp.mod31.not, label %._crit_edge, label %.lr.ph87.epil.preheader

.lr.ph87.epil.preheader:                          ; preds = %._crit_edge.unr-lcssa, %.lr.ph87.preheader
  %indvars.iv108.epil.init = phi i64 [ 0, %.lr.ph87.preheader ], [ %indvars.iv.next109.3, %._crit_edge.unr-lcssa ]
  %indvars.iv106.epil.init = phi i64 [ %i.da, %.lr.ph87.preheader ], [ %indvars.iv.next107.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod32 = icmp ne i64 %xtraiter30, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %.lr.ph87.epil

.lr.ph87.epil:                                    ; preds = %.lr.ph87.epil, %.lr.ph87.epil.preheader
  %indvars.iv108.epil = phi i64 [ %indvars.iv108.epil.init, %.lr.ph87.epil.preheader ], [ %indvars.iv.next109.epil, %.lr.ph87.epil ] ; 2 uses
  %indvars.iv106.epil = phi i64 [ %indvars.iv106.epil.init, %.lr.ph87.epil.preheader ], [ %indvars.iv.next107.epil, %.lr.ph87.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph87.epil.preheader ], [ %epil.iter.next, %.lr.ph87.epil ]
  %i.eh = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %indvars.iv106.epil
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = getelementptr [4 x i8], ptr %i.eh, i64 %indvars.iv108.epil
  %i.el = getelementptr [4 x i8], ptr %i.ek, i64 %i.db
  store i32 %i.ej, ptr %i.el, align 4
  %indvars.iv.next109.epil = add nuw nsw i64 %indvars.iv108.epil, 1
  %indvars.iv.next107.epil = add nsw i64 %indvars.iv106.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter30
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph87.epil, !llvm.loop !54

._crit_edge:                                      ; preds = %.lr.ph87.epil, %._crit_edge.unr-lcssa
  %i.em = sub i32 %.05689, %.4.lcssa
  %i.en = add i32 %i.em, %.5.lcssa
  br label %.preheader68

.critedge4._crit_edge:                            ; preds = %.critedge4, %bb.a, %._crit_edge.thread
  %.056.lcssa = phi i32 [ %i.eg, %._crit_edge.thread ], [ 0, %bb.a ], [ %.05689, %.critedge4 ]
  %i.eo = sub nsw i32 %2, %.056.lcssa
  %i.ep = sext i32 %i.eo to i64
  %i.eq = shl nsw i64 %i.ep, 2
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.eq, ptr %i.er, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #31

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind
declare i32 @symlink(ptr noundef, ptr noundef) local_unnamed_addr #26

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #33

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #33

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #33

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #36 = { nounwind }
attributes #37 = { nounwind allocsize(0) }
attributes #38 = { nounwind allocsize(1) }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { nounwind allocsize(0,1) }
attributes #41 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"llvm.loop.unroll.disable"}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = !{!"llvm.loop.unswitch.partial.disable"}
!8 = !{ptr @mz_zip_reader_end_internal}
!9 = !{ptr @mz_zip_array_ensure_capacity}
!10 = !{ptr @mz_zip_writer_init_v2}
!11 = !{ptr @mz_zip_writer_end_internal}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !5}
!14 = !{ptr @mz_deflateEnd}
!15 = !{ptr @mz_compress2, ptr @mz_deflateEnd}
!16 = !{ptr @mz_inflateInit2}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !5}
!21 = !{ptr @mz_inflateEnd}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{null}
!27 = !{ptr @mz_zip_writer_init_heap_v2}
!28 = !{ptr @mz_zip_reader_extract_to_heap}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.peeled.count", i32 1}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !12, !6}
!44 = distinct !{!44, !5}
!45 = distinct !{!45, !5}
!46 = distinct !{!46, !5}
!47 = distinct !{!47, !5}
!48 = distinct !{!48, !5}
!49 = distinct !{!49, !6, !12}
!50 = distinct !{!50, !12, !6}
!51 = distinct !{!51, !5}
!52 = distinct !{!52, !5}
!53 = distinct !{!53, !5}
!54 = distinct !{!54, !5}
end_hunk_10

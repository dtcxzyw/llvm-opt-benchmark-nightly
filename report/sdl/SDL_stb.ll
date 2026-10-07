Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_stb?download=true
inline.NumInlined: 380
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 86
begin_hunk_0_@tdefl_flush_block:bb.a
  %i.ch = lshr i32 %i.ce, 8                       ; 2 uses
  store i32 %i.ch, ptr %i.az, align 8
  %i.ci = add i32 %i.cd, -8                       ; 3 uses
  store i32 %i.ci, ptr %i.aw, align 4
  %i.cj = icmp ugt i32 %i.ci, 7
  br i1 %i.cj, label %bb.l, label %.loopexit342, !llvm.loop !281

.loopexit342:                                     ; preds = %bb.n, %..loopexit342_crit_edge, %bb.h
  %.pre418 = phi ptr [ %.pre418.pre, %..loopexit342_crit_edge ], [ %.pre418.pre512, %bb.h ], [ %i.cg, %bb.n ] ; 2 uses
  %i.ck = icmp eq i32 %1, 4                       ; 2 uses
  %i.cl = zext i1 %i.ck to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 51 uses
  %i.cn = load i32, ptr %i.cm, align 4            ; 2 uses
  %i.co = shl nuw i32 %i.cl, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 51 uses
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = or i32 %i.cq, %i.co                     ; 3 uses
  store i32 %i.cr, ptr %i.cp, align 8
  %i.cs = add i32 %i.cn, 1                        ; 4 uses
  store i32 %i.cs, ptr %i.cm, align 4
  %i.ct = icmp ugt i32 %i.cs, 7
  br i1 %i.ct, label %.lr.ph344.preheader, label %._crit_edge345

.lr.ph344.preheader:                              ; preds = %.loopexit342
  %.pre415 = load ptr, ptr %i.ac, align 8
  br label %.lr.ph344

.lr.ph344:                                        ; preds = %.lr.ph344.preheader, %bb.p
  %i.cu = phi i32 [ %i.cs, %.lr.ph344.preheader ], [ %i.dg, %bb.p ]
  %i.cv = phi i32 [ %i.cr, %.lr.ph344.preheader ], [ %i.df, %bb.p ] ; 2 uses
  %i.cw = phi ptr [ %.pre415, %.lr.ph344.preheader ], [ %i.dd, %bb.p ] ; 2 uses
  %i.cx = phi ptr [ %.pre418, %.lr.ph344.preheader ], [ %i.de, %bb.p ] ; 4 uses
  %i.cy = icmp ult ptr %i.cx, %i.cw
  br i1 %i.cy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph344
  %i.cz = trunc i32 %i.cv to i8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  store ptr %i.da, ptr %i.aa, align 8
  store i8 %i.cz, ptr %i.cx, align 1
  %.pre412 = load ptr, ptr %i.aa, align 8
  %.pre414 = load ptr, ptr %i.ac, align 8
  %.pre416 = load i32, ptr %i.cp, align 8
  %.pre417 = load i32, ptr %i.cm, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph344
  %i.db = phi i32 [ %.pre417, %bb.o ], [ %i.cu, %.lr.ph344 ]
  %i.dc = phi i32 [ %.pre416, %bb.o ], [ %i.cv, %.lr.ph344 ]
  %i.dd = phi ptr [ %.pre414, %bb.o ], [ %i.cw, %.lr.ph344 ]
  %i.de = phi ptr [ %.pre412, %bb.o ], [ %i.cx, %.lr.ph344 ] ; 2 uses
  %i.df = lshr i32 %i.dc, 8                       ; 3 uses
  store i32 %i.df, ptr %i.cp, align 8
  %i.dg = add i32 %i.db, -8                       ; 4 uses
  store i32 %i.dg, ptr %i.cm, align 4
  %i.dh = icmp ugt i32 %i.dg, 7
  br i1 %i.dh, label %.lr.ph344, label %._crit_edge345, !llvm.loop !282

._crit_edge345:                                   ; preds = %bb.p, %.loopexit342
  %i.di = phi i32 [ %i.cr, %.loopexit342 ], [ %i.df, %bb.p ] ; 4 uses
  %.pre420 = phi ptr [ %.pre418, %.loopexit342 ], [ %i.de, %bb.p ] ; 5 uses
  %storemerge302.lcssa = phi i32 [ %i.cs, %.loopexit342 ], [ %i.dg, %bb.p ] ; 3 uses
  br i1 %i.l, label %.thread, label %bb.q

bb.q:                                             ; preds = %._crit_edge345
  %i.dj = load i32, ptr %i.a, align 8
  %i.dk = and i32 %i.dj, 262144
  %.not303 = icmp eq i32 %i.dk, 0
  br i1 %.not303, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = icmp ult i32 %i.dm, 48
  %i.do = zext i1 %i.dn to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dp = phi i32 [ 1, %bb.q ], [ %i.do, %bb.r ]
  %i.dq = tail call fastcc i32 @tdefl_compress_block(ptr noundef %0, i32 noundef %i.dp)
  %i.dr = icmp eq i32 %i.dq, 0                    ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.dt = load i32, ptr %i.ds, align 4            ; 2 uses
  %.not304 = icmp eq i32 %i.dt, 0
  br i1 %.not304, label %bb.ag, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.du = load ptr, ptr %i.aa, align 8
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %.pre420 to i64
  %reass.sub = sub i64 %i.dv, %i.dw
  %i.dx = add i64 %reass.sub, 1
  %i.dy = zext i32 %i.dt to i64
  %.not305 = icmp slt i64 %i.dx, %i.dy
  br i1 %.not305, label %bb.ag, label %.thread

.thread:                                          ; preds = %._crit_edge345, %bb.t
  %.0274332 = phi i1 [ %i.dr, %bb.t ], [ true, %._crit_edge345 ]
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = sub i32 %i.ea, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ef = load i32, ptr %i.ee, align 4
  %.not306 = icmp ugt i32 %i.ed, %i.ef
  br i1 %.not306, label %bb.ag, label %bb.u

bb.u:                                             ; preds = %.thread
  store ptr %.pre420, ptr %i.aa, align 8
  store i32 %i.di, ptr %i.cp, align 8
  %i.eg = add nuw nsw i32 %storemerge302.lcssa, 2 ; 2 uses
  store i32 %i.eg, ptr %i.cm, align 4
  %i.eh = icmp samesign ugt i32 %storemerge302.lcssa, 5
  br i1 %i.eh, label %.lr.ph348.preheader, label %.preheader340

.lr.ph348.preheader:                              ; preds = %bb.u
  %.pre422 = load ptr, ptr %i.ac, align 8
  br label %.lr.ph348

.lr.ph348:                                        ; preds = %.lr.ph348.preheader, %bb.w
  %i.ei = phi i32 [ %i.eg, %.lr.ph348.preheader ], [ %i.eu, %bb.w ]
  %i.ej = phi i32 [ %i.di, %.lr.ph348.preheader ], [ %i.et, %bb.w ] ; 2 uses
  %i.ek = phi ptr [ %.pre422, %.lr.ph348.preheader ], [ %i.er, %bb.w ] ; 2 uses
  %i.el = phi ptr [ %.pre420, %.lr.ph348.preheader ], [ %i.es, %bb.w ] ; 4 uses
  %i.em = icmp ult ptr %i.el, %i.ek
  br i1 %i.em, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph348
  %i.en = trunc i32 %i.ej to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 1
  store ptr %i.eo, ptr %i.aa, align 8
  store i8 %i.en, ptr %i.el, align 1
  %.pre419 = load ptr, ptr %i.aa, align 8
  %.pre421 = load ptr, ptr %i.ac, align 8
  %.pre423 = load i32, ptr %i.cp, align 8
  %.pre424 = load i32, ptr %i.cm, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph348
  %i.ep = phi i32 [ %.pre424, %bb.v ], [ %i.ei, %.lr.ph348 ]
  %i.eq = phi i32 [ %.pre423, %bb.v ], [ %i.ej, %.lr.ph348 ]
  %i.er = phi ptr [ %.pre421, %bb.v ], [ %i.ek, %.lr.ph348 ]
  %i.es = phi ptr [ %.pre419, %bb.v ], [ %i.el, %.lr.ph348 ] ; 3 uses
  %i.et = lshr i32 %i.eq, 8                       ; 4 uses
  store i32 %i.et, ptr %i.cp, align 8
  %i.eu = add i32 %i.ep, -8                       ; 4 uses
  store i32 %i.eu, ptr %i.cm, align 4
  %i.ev = icmp ugt i32 %i.eu, 7
  br i1 %i.ev, label %.lr.ph348, label %._crit_edge349, !llvm.loop !283

._crit_edge349:                                   ; preds = %bb.w
  %i.ew = icmp eq i32 %i.eu, 0
  br i1 %i.ew, label %.lr.ph352, label %.preheader340

.preheader340:                                    ; preds = %bb.u, %._crit_edge349
  %i.ex = phi i32 [ %i.et, %._crit_edge349 ], [ %i.di, %bb.u ]
  %.pre426646 = phi ptr [ %i.es, %._crit_edge349 ], [ %.pre420, %bb.u ]
  store i32 8, ptr %i.cm, align 4
  %.pre428 = load ptr, ptr %i.ac, align 8
  br label %bb.x

bb.x:                                             ; preds = %.preheader340, %bb.z
  %i.ey = phi i32 [ 8, %.preheader340 ], [ %i.fk, %bb.z ]
  %i.ez = phi i32 [ %i.ex, %.preheader340 ], [ %i.fj, %bb.z ] ; 2 uses
  %i.fa = phi ptr [ %.pre428, %.preheader340 ], [ %i.fh, %bb.z ] ; 2 uses
  %i.fb = phi ptr [ %.pre426646, %.preheader340 ], [ %i.fi, %bb.z ] ; 4 uses
  %i.fc = icmp ult ptr %i.fb, %i.fa
  br i1 %i.fc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fd = trunc i32 %i.ez to i8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  store ptr %i.fe, ptr %i.aa, align 8
  store i8 %i.fd, ptr %i.fb, align 1
  %.pre425 = load ptr, ptr %i.aa, align 8
  %.pre427 = load ptr, ptr %i.ac, align 8
  %.pre429 = load i32, ptr %i.cp, align 8
  %.pre430 = load i32, ptr %i.cm, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ff = phi i32 [ %.pre430, %bb.y ], [ %i.ey, %bb.x ]
  %i.fg = phi i32 [ %.pre429, %bb.y ], [ %i.ez, %bb.x ]
  %i.fh = phi ptr [ %.pre427, %bb.y ], [ %i.fa, %bb.x ]
  %i.fi = phi ptr [ %.pre425, %bb.y ], [ %i.fb, %bb.x ] ; 2 uses
  %i.fj = lshr i32 %i.fg, 8                       ; 3 uses
  store i32 %i.fj, ptr %i.cp, align 8
  %i.fk = add i32 %i.ff, -8                       ; 4 uses
  store i32 %i.fk, ptr %i.cm, align 4
  %i.fl = icmp ugt i32 %i.fk, 7
  br i1 %i.fl, label %bb.x, label %.lr.ph352, !llvm.loop !284

.lr.ph365:                                        ; preds = %._crit_edge353.1
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %.lr.ph358

.lr.ph352:                                        ; preds = %bb.z, %._crit_edge349
  %.pre432 = phi ptr [ %i.es, %._crit_edge349 ], [ %i.fi, %bb.z ] ; 3 uses
  %i.fn = phi i32 [ %i.et, %._crit_edge349 ], [ %i.fj, %bb.z ]
  %i.fo = phi i32 [ 0, %._crit_edge349 ], [ %i.fk, %bb.z ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 6 uses
  %i.fq = load i32, ptr %i.fp, align 4            ; 2 uses
  %i.fr = and i32 %i.fq, 65535
  %i.fs = shl nuw nsw i32 %i.fr, %i.fo
  %i.ft = or i32 %i.fn, %i.fs                     ; 3 uses
  store i32 %i.ft, ptr %i.cp, align 8
  %i.fu = or disjoint i32 %i.fo, 16               ; 3 uses
  store i32 %i.fu, ptr %i.cm, align 4
  %i.fv = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.fw = icmp ult ptr %.pre432, %i.fv
  br i1 %i.fw, label %.lr.ph352.split, label %.lr.ph352.split.us.prol

.lr.ph352.split.us.prol:                          ; preds = %.lr.ph352, %.lr.ph352.split.us.prol
  %2 = phi i32 [ %4, %.lr.ph352.split.us.prol ], [ %i.fu, %.lr.ph352 ]
  %3 = phi i32 [ %i.fx, %.lr.ph352.split.us.prol ], [ %i.ft, %.lr.ph352 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph352.split.us.prol ], [ 0, %.lr.ph352 ]
  %i.fx = lshr i32 %3, 8                          ; 2 uses
  %4 = add i32 %2, -8                             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, 2
  br i1 %prol.iter.cmp.not, label %.lr.ph352.1, label %.lr.ph352.split.us.prol, !llvm.loop !285

.lr.ph352.split:                                  ; preds = %.lr.ph352, %bb.ab
  %i.fy = phi i32 [ %i.gk, %bb.ab ], [ %i.fu, %.lr.ph352 ]
  %i.fz = phi i32 [ %i.gj, %bb.ab ], [ %i.ft, %.lr.ph352 ] ; 2 uses
  %i.ga = phi ptr [ %i.gh, %bb.ab ], [ %i.fv, %.lr.ph352 ] ; 2 uses
  %i.gb = phi ptr [ %i.gi, %bb.ab ], [ %.pre432, %.lr.ph352 ] ; 4 uses
  %i.gc = icmp ult ptr %i.gb, %i.ga
  br i1 %i.gc, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph352.split
  %i.gd = trunc i32 %i.fz to i8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  store ptr %i.ge, ptr %i.aa, align 8
  store i8 %i.gd, ptr %i.gb, align 1
  %.pre431 = load ptr, ptr %i.aa, align 8
  %.pre433 = load ptr, ptr %i.ac, align 8
  %.pre435 = load i32, ptr %i.cp, align 8
  %.pre436 = load i32, ptr %i.cm, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph352.split
  %i.gf = phi i32 [ %.pre436, %bb.aa ], [ %i.fy, %.lr.ph352.split ]
  %i.gg = phi i32 [ %.pre435, %bb.aa ], [ %i.fz, %.lr.ph352.split ]
  %i.gh = phi ptr [ %.pre433, %bb.aa ], [ %i.ga, %.lr.ph352.split ]
  %i.gi = phi ptr [ %.pre431, %bb.aa ], [ %i.gb, %.lr.ph352.split ] ; 2 uses
  %i.gj = lshr i32 %i.gg, 8                       ; 3 uses
  store i32 %i.gj, ptr %i.cp, align 8
  %i.gk = add i32 %i.gf, -8                       ; 4 uses
  store i32 %i.gk, ptr %i.cm, align 4
  %i.gl = icmp ugt i32 %i.gk, 7
  br i1 %i.gl, label %.lr.ph352.split, label %._crit_edge353.loopexit, !llvm.loop !286

._crit_edge353.loopexit:                          ; preds = %bb.ab
  %.pre437 = load i32, ptr %i.fp, align 4
  br label %.lr.ph352.1

.lr.ph352.1:                                      ; preds = %.lr.ph352.split.us.prol, %._crit_edge353.loopexit
  %.pre439 = phi ptr [ %i.gi, %._crit_edge353.loopexit ], [ %.pre432, %.lr.ph352.split.us.prol ] ; 3 uses
  %i.gm = phi i32 [ %i.gj, %._crit_edge353.loopexit ], [ %i.fx, %.lr.ph352.split.us.prol ]
  %i.gn = phi i32 [ %i.gk, %._crit_edge353.loopexit ], [ %4, %.lr.ph352.split.us.prol ] ; 2 uses
  %i.go = phi i32 [ %.pre437, %._crit_edge353.loopexit ], [ %i.fq, %.lr.ph352.split.us.prol ] ; 2 uses
  %i.gp = xor i32 %i.go, 65535                    ; 2 uses
  store i32 %i.gp, ptr %i.fp, align 4
  %i.gq = and i32 %i.gp, 65535
  %i.gr = shl nuw nsw i32 %i.gq, %i.gn
  %i.gs = or i32 %i.gm, %i.gr                     ; 3 uses
  store i32 %i.gs, ptr %i.cp, align 8
  %i.gt = or disjoint i32 %i.gn, 16               ; 3 uses
  store i32 %i.gt, ptr %i.cm, align 4
  %i.gu = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.gv = icmp ult ptr %.pre439, %i.gu
  br i1 %i.gv, label %.lr.ph352.split.1, label %.lr.ph352.split.us.1

.lr.ph352.split.us.1:                             ; preds = %.lr.ph352.1, %.lr.ph352.split.us.1
  %i.gw = phi i32 [ %i.gz, %.lr.ph352.split.us.1 ], [ %i.gt, %.lr.ph352.1 ]
  %i.gx = phi i32 [ %i.gy, %.lr.ph352.split.us.1 ], [ %i.gs, %.lr.ph352.1 ]
  %i.gy = lshr i32 %i.gx, 8                       ; 3 uses
  %i.gz = add i32 %i.gw, -8                       ; 4 uses
  %i.ha = icmp ugt i32 %i.gz, 7
  br i1 %i.ha, label %.lr.ph352.split.us.1, label %._crit_edge353.split.us.1, !llvm.loop !287

._crit_edge353.split.us.1:                        ; preds = %.lr.ph352.split.us.1
  store i32 %i.gy, ptr %i.cp, align 8
  store i32 %i.gz, ptr %i.cm, align 4
  br label %._crit_edge353.1

.lr.ph352.split.1:                                ; preds = %.lr.ph352.1, %bb.ad
  %i.hb = phi i32 [ %i.hn, %bb.ad ], [ %i.gt, %.lr.ph352.1 ]
  %i.hc = phi i32 [ %i.hm, %bb.ad ], [ %i.gs, %.lr.ph352.1 ] ; 2 uses
  %i.hd = phi ptr [ %i.hk, %bb.ad ], [ %i.gu, %.lr.ph352.1 ] ; 2 uses
  %i.he = phi ptr [ %i.hl, %bb.ad ], [ %.pre439, %.lr.ph352.1 ] ; 4 uses
  %i.hf = icmp ult ptr %i.he, %i.hd
  br i1 %i.hf, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph352.split.1
  %i.hg = trunc i32 %i.hc to i8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 1
  store ptr %i.hh, ptr %i.aa, align 8
  store i8 %i.hg, ptr %i.he, align 1
  %.pre438 = load ptr, ptr %i.aa, align 8
  %.pre440 = load ptr, ptr %i.ac, align 8
  %.pre442 = load i32, ptr %i.cp, align 8
  %.pre443 = load i32, ptr %i.cm, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph352.split.1
  %i.hi = phi i32 [ %.pre443, %bb.ac ], [ %i.hb, %.lr.ph352.split.1 ]
  %i.hj = phi i32 [ %.pre442, %bb.ac ], [ %i.hc, %.lr.ph352.split.1 ]
  %i.hk = phi ptr [ %.pre440, %bb.ac ], [ %i.hd, %.lr.ph352.split.1 ]
  %i.hl = phi ptr [ %.pre438, %bb.ac ], [ %i.he, %.lr.ph352.split.1 ] ; 2 uses
  %i.hm = lshr i32 %i.hj, 8                       ; 3 uses
  store i32 %i.hm, ptr %i.cp, align 8
  %i.hn = add i32 %i.hi, -8                       ; 4 uses
  store i32 %i.hn, ptr %i.cm, align 4
  %i.ho = icmp ugt i32 %i.hn, 7
  br i1 %i.ho, label %.lr.ph352.split.1, label %._crit_edge353.loopexit.1, !llvm.loop !286

._crit_edge353.loopexit.1:                        ; preds = %bb.ad
  %.pre444 = load i32, ptr %i.fp, align 4
  %i.hp = xor i32 %.pre444, 65535
  br label %._crit_edge353.1

._crit_edge353.1:                                 ; preds = %._crit_edge353.loopexit.1, %._crit_edge353.split.us.1
  %i.hq = phi ptr [ %i.hl, %._crit_edge353.loopexit.1 ], [ %.pre439, %._crit_edge353.split.us.1 ] ; 2 uses
  %i.hr = phi i32 [ %i.hm, %._crit_edge353.loopexit.1 ], [ %i.gy, %._crit_edge353.split.us.1 ]
  %i.hs = phi i32 [ %i.hn, %._crit_edge353.loopexit.1 ], [ %i.gz, %._crit_edge353.split.us.1 ]
  %i.ht = phi i32 [ %i.hp, %._crit_edge353.loopexit.1 ], [ %i.go, %._crit_edge353.split.us.1 ] ; 3 uses
  store i32 %i.ht, ptr %i.fp, align 4
  %.not388 = icmp eq i32 %i.ht, 0
  br i1 %.not388, label %.loopexit339, label %.lr.ph365

.lr.ph358:                                        ; preds = %._crit_edge359, %.lr.ph365
  %.pre446 = phi ptr [ %i.hq, %.lr.ph365 ], [ %.pre446515, %._crit_edge359 ] ; 3 uses
  %i.hu = phi ptr [ %i.hq, %.lr.ph365 ], [ %i.iz, %._crit_edge359 ] ; 2 uses
  %i.hv = phi i32 [ %i.ht, %.lr.ph365 ], [ %i.ja, %._crit_edge359 ]
  %i.hw = phi i32 [ %i.hr, %.lr.ph365 ], [ %i.jb, %._crit_edge359 ]
  %i.hx = phi i32 [ %i.hs, %.lr.ph365 ], [ %i.jc, %._crit_edge359 ] ; 4 uses
  %.1364 = phi i32 [ 0, %.lr.ph365 ], [ %i.jd, %._crit_edge359 ] ; 2 uses
  %i.hy = load i32, ptr %i.eb, align 8
  %i.hz = add i32 %i.hy, %.1364
  %i.ia = and i32 %i.hz, 32767
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1
  %i.ie = zext i8 %i.id to i32
  %i.if = shl nuw nsw i32 %i.ie, %i.hx
  %i.ig = or i32 %i.hw, %i.if                     ; 3 uses
  store i32 %i.ig, ptr %i.cp, align 8
  %i.ih = add nuw nsw i32 %i.hx, 8                ; 2 uses
  store i32 %i.ih, ptr %i.cm, align 4
  %i.ii = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ij = icmp ult ptr %i.hu, %i.ii
  br i1 %i.ij, label %.lr.ph358.split, label %._crit_edge359.split.us

._crit_edge359.split.us:                          ; preds = %.lr.ph358
  %i.ik = lshr i32 %i.ig, 8                       ; 2 uses
  store i32 %i.ik, ptr %i.cp, align 8
  store i32 %i.hx, ptr %i.cm, align 4
  br label %._crit_edge359

.lr.ph358.split:                                  ; preds = %.lr.ph358, %bb.af
  %.pre446516 = phi ptr [ %.pre446517, %bb.af ], [ %.pre446, %.lr.ph358 ]
  %i.il = phi i32 [ %i.ix, %bb.af ], [ %i.ih, %.lr.ph358 ]
  %i.im = phi i32 [ %i.iw, %bb.af ], [ %i.ig, %.lr.ph358 ] ; 2 uses
  %i.in = phi ptr [ %i.iu, %bb.af ], [ %i.ii, %.lr.ph358 ] ; 2 uses
  %i.io = phi ptr [ %i.iv, %bb.af ], [ %.pre446, %.lr.ph358 ] ; 4 uses
  %i.ip = icmp ult ptr %i.io, %i.in
  br i1 %i.ip, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph358.split
  %i.iq = trunc i32 %i.im to i8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 1
  store ptr %i.ir, ptr %i.aa, align 8
  store i8 %i.iq, ptr %i.io, align 1
  %.pre445 = load ptr, ptr %i.aa, align 8         ; 2 uses
  %.pre447 = load ptr, ptr %i.ac, align 8
  %.pre449 = load i32, ptr %i.cp, align 8
  %.pre450 = load i32, ptr %i.cm, align 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph358.split
  %.pre446517 = phi ptr [ %.pre445, %bb.ae ], [ %.pre446516, %.lr.ph358.split ] ; 2 uses
  %i.is = phi i32 [ %.pre450, %bb.ae ], [ %i.il, %.lr.ph358.split ]
  %i.it = phi i32 [ %.pre449, %bb.ae ], [ %i.im, %.lr.ph358.split ]
  %i.iu = phi ptr [ %.pre447, %bb.ae ], [ %i.in, %.lr.ph358.split ]
  %i.iv = phi ptr [ %.pre445, %bb.ae ], [ %i.io, %.lr.ph358.split ] ; 2 uses
  %i.iw = lshr i32 %i.it, 8                       ; 3 uses
  store i32 %i.iw, ptr %i.cp, align 8
  %i.ix = add i32 %i.is, -8                       ; 4 uses
  store i32 %i.ix, ptr %i.cm, align 4
  %i.iy = icmp ugt i32 %i.ix, 7
  br i1 %i.iy, label %.lr.ph358.split, label %._crit_edge359.loopexit, !llvm.loop !288

._crit_edge359.loopexit:                          ; preds = %bb.af
  %.pre451 = load i32, ptr %i.fp, align 4
  br label %._crit_edge359

._crit_edge359:                                   ; preds = %._crit_edge359.loopexit, %._crit_edge359.split.us
  %.pre446515 = phi ptr [ %.pre446517, %._crit_edge359.loopexit ], [ %.pre446, %._crit_edge359.split.us ]
  %i.iz = phi ptr [ %i.iv, %._crit_edge359.loopexit ], [ %i.hu, %._crit_edge359.split.us ]
  %i.ja = phi i32 [ %.pre451, %._crit_edge359.loopexit ], [ %i.hv, %._crit_edge359.split.us ] ; 2 uses
  %i.jb = phi i32 [ %i.iw, %._crit_edge359.loopexit ], [ %i.ik, %._crit_edge359.split.us ]
  %i.jc = phi i32 [ %i.ix, %._crit_edge359.loopexit ], [ %i.hx, %._crit_edge359.split.us ]
  %i.jd = add nuw i32 %.1364, 1                   ; 2 uses
  %i.je = icmp ult i32 %i.jd, %i.ja
  br i1 %i.je, label %.lr.ph358, label %.loopexit339, !llvm.loop !289

bb.ag:                                            ; preds = %.thread, %bb.t, %bb.s
  %.0274331 = phi i1 [ %.0274332, %.thread ], [ %i.dr, %bb.t ], [ %i.dr, %bb.s ]
  br i1 %.0274331, label %bb.ah, label %.loopexit339

bb.ah:                                            ; preds = %bb.ag
  store ptr %.pre420, ptr %i.aa, align 8
  store i32 %i.di, ptr %i.cp, align 8
  store i32 %storemerge302.lcssa, ptr %i.cm, align 4
  %i.jf = tail call fastcc i32 @tdefl_compress_block(ptr noundef %0, i32 noundef 1) ; 0 uses
  br label %.loopexit339

.loopexit339:                                     ; preds = %._crit_edge359, %._crit_edge353.1, %bb.ag, %bb.ah
  %.not312 = icmp eq i32 %1, 0
  br i1 %.not312, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %.loopexit339
  %i.jg = load i32, ptr %i.cm, align 4            ; 2 uses
  br i1 %i.ck, label %bb.aj, label %bb.av

bb.aj:                                            ; preds = %bb.ai
  %.not318 = icmp eq i32 %i.jg, 0
  br i1 %.not318, label %.loopexit334, label %.preheader

.preheader:                                       ; preds = %bb.aj
  store i32 8, ptr %i.cm, align 4
  %.pre480 = load ptr, ptr %i.aa, align 8
  %.pre482 = load ptr, ptr %i.ac, align 8
  %.pre484.pre = load i32, ptr %i.cp, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader, %bb.am
  %.pre484 = phi i32 [ %.pre484.pre, %.preheader ], [ %i.jr, %bb.am ] ; 2 uses
  %i.jh = phi i32 [ 8, %.preheader ], [ %i.js, %bb.am ]
  %i.ji = phi ptr [ %.pre482, %.preheader ], [ %i.jp, %bb.am ] ; 2 uses
  %i.jj = phi ptr [ %.pre480, %.preheader ], [ %i.jq, %bb.am ] ; 4 uses
  %i.jk = icmp ult ptr %i.jj, %i.ji
  br i1 %i.jk, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.jl = trunc i32 %.pre484 to i8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 1
  store ptr %i.jm, ptr %i.aa, align 8
  store i8 %i.jl, ptr %i.jj, align 1
  %.pre479 = load ptr, ptr %i.aa, align 8
  %.pre481 = load ptr, ptr %i.ac, align 8
  %.pre483 = load i32, ptr %i.cp, align 8
  %.pre485 = load i32, ptr %i.cm, align 4
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.jn = phi i32 [ %.pre485, %bb.al ], [ %i.jh, %bb.ak ]
  %i.jo = phi i32 [ %.pre483, %bb.al ], [ %.pre484, %bb.ak ]
  %i.jp = phi ptr [ %.pre481, %bb.al ], [ %i.ji, %bb.ak ]
  %i.jq = phi ptr [ %.pre479, %bb.al ], [ %i.jj, %bb.ak ]
  %i.jr = lshr i32 %i.jo, 8                       ; 2 uses
  store i32 %i.jr, ptr %i.cp, align 8
  %i.js = add i32 %i.jn, -8                       ; 4 uses
  store i32 %i.js, ptr %i.cm, align 4
  %i.jt = icmp ugt i32 %i.js, 7
  br i1 %i.jt, label %bb.ak, label %.loopexit334, !llvm.loop !290

.loopexit334:                                     ; preds = %bb.am, %bb.aj
  %i.ju = phi i32 [ 0, %bb.aj ], [ %i.js, %bb.am ] ; 3 uses
  %i.jv = load i32, ptr %i.a, align 8
  %i.jw = and i32 %i.jv, 4096
  %.not320 = icmp eq i32 %i.jw, 0
  br i1 %.not320, label %.loopexit, label %.lr.ph380

.lr.ph380:                                        ; preds = %.loopexit334
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jy = load i32, ptr %i.jx, align 8            ; 4 uses
  %i.jz = lshr i32 %i.jy, 24
  %i.ka = shl nuw nsw i32 %i.jz, %i.ju
  %i.kb = load i32, ptr %i.cp, align 8
  %i.kc = or i32 %i.kb, %i.ka                     ; 3 uses
  store i32 %i.kc, ptr %i.cp, align 8
  %i.kd = or disjoint i32 %i.ju, 8                ; 2 uses
  store i32 %i.kd, ptr %i.cm, align 4
  %i.ke = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.kf = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.kg = icmp ult ptr %i.ke, %i.kf
  br i1 %i.kg, label %.lr.ph380.split, label %._crit_edge381.split.us

._crit_edge381.split.us:                          ; preds = %.lr.ph380
  %i.kh = lshr i32 %i.kc, 8
  br label %.lr.ph380.1

.lr.ph380.split:                                  ; preds = %.lr.ph380, %bb.ao
  %i.ki = phi i32 [ %i.ku, %bb.ao ], [ %i.kd, %.lr.ph380 ]
  %i.kj = phi i32 [ %i.kt, %bb.ao ], [ %i.kc, %.lr.ph380 ] ; 2 uses
  %i.kk = phi ptr [ %i.kr, %bb.ao ], [ %i.kf, %.lr.ph380 ] ; 2 uses
  %i.kl = phi ptr [ %i.ks, %bb.ao ], [ %i.ke, %.lr.ph380 ] ; 4 uses
  %i.km = icmp ult ptr %i.kl, %i.kk
  br i1 %i.km, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.lr.ph380.split
  %i.kn = trunc i32 %i.kj to i8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 1
  store ptr %i.ko, ptr %i.aa, align 8
  store i8 %i.kn, ptr %i.kl, align 1
  %.pre486 = load ptr, ptr %i.aa, align 8
  %.pre488 = load ptr, ptr %i.ac, align 8
  %.pre490 = load i32, ptr %i.cp, align 8
  %.pre491 = load i32, ptr %i.cm, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.lr.ph380.split
  %i.kp = phi i32 [ %.pre491, %bb.an ], [ %i.ki, %.lr.ph380.split ]
  %i.kq = phi i32 [ %.pre490, %bb.an ], [ %i.kj, %.lr.ph380.split ]
  %i.kr = phi ptr [ %.pre488, %bb.an ], [ %i.kk, %.lr.ph380.split ]
  %i.ks = phi ptr [ %.pre486, %bb.an ], [ %i.kl, %.lr.ph380.split ]
  %i.kt = lshr i32 %i.kq, 8                       ; 3 uses
  store i32 %i.kt, ptr %i.cp, align 8
  %i.ku = add i32 %i.kp, -8                       ; 4 uses
  store i32 %i.ku, ptr %i.cm, align 4
  %i.kv = icmp ugt i32 %i.ku, 7
  br i1 %i.kv, label %.lr.ph380.split, label %.lr.ph380.1, !llvm.loop !291

.lr.ph380.1:                                      ; preds = %bb.ao, %._crit_edge381.split.us
  %i.kw = phi i32 [ %i.kh, %._crit_edge381.split.us ], [ %i.kt, %bb.ao ]
  %i.kx = phi i32 [ %i.ju, %._crit_edge381.split.us ], [ %i.ku, %bb.ao ] ; 3 uses
  %i.ky = lshr i32 %i.jy, 16
  %i.kz = and i32 %i.ky, 255
  %i.la = shl nuw nsw i32 %i.kz, %i.kx
  %i.lb = or i32 %i.kw, %i.la                     ; 3 uses
  store i32 %i.lb, ptr %i.cp, align 8
  %i.lc = add nuw nsw i32 %i.kx, 8                ; 2 uses
  store i32 %i.lc, ptr %i.cm, align 4
  %i.ld = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.le = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.lf = icmp ult ptr %i.ld, %i.le
  br i1 %i.lf, label %.lr.ph380.split.1, label %._crit_edge381.split.us.1

._crit_edge381.split.us.1:                        ; preds = %.lr.ph380.1
  %i.lg = lshr i32 %i.lb, 8
  br label %.lr.ph380.2

.lr.ph380.split.1:                                ; preds = %.lr.ph380.1, %bb.aq
  %i.lh = phi i32 [ %i.lt, %bb.aq ], [ %i.lc, %.lr.ph380.1 ]
  %i.li = phi i32 [ %i.ls, %bb.aq ], [ %i.lb, %.lr.ph380.1 ] ; 2 uses
  %i.lj = phi ptr [ %i.lq, %bb.aq ], [ %i.le, %.lr.ph380.1 ] ; 2 uses
  %i.lk = phi ptr [ %i.lr, %bb.aq ], [ %i.ld, %.lr.ph380.1 ] ; 4 uses
  %i.ll = icmp ult ptr %i.lk, %i.lj
  br i1 %i.ll, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph380.split.1
  %i.lm = trunc i32 %i.li to i8
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 1
  store ptr %i.ln, ptr %i.aa, align 8
  store i8 %i.lm, ptr %i.lk, align 1
  %.pre492 = load ptr, ptr %i.aa, align 8
  %.pre494 = load ptr, ptr %i.ac, align 8
  %.pre496 = load i32, ptr %i.cp, align 8
  %.pre497 = load i32, ptr %i.cm, align 4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph380.split.1
  %i.lo = phi i32 [ %.pre497, %bb.ap ], [ %i.lh, %.lr.ph380.split.1 ]
  %i.lp = phi i32 [ %.pre496, %bb.ap ], [ %i.li, %.lr.ph380.split.1 ]
  %i.lq = phi ptr [ %.pre494, %bb.ap ], [ %i.lj, %.lr.ph380.split.1 ]
  %i.lr = phi ptr [ %.pre492, %bb.ap ], [ %i.lk, %.lr.ph380.split.1 ]
  %i.ls = lshr i32 %i.lp, 8                       ; 3 uses
  store i32 %i.ls, ptr %i.cp, align 8
  %i.lt = add i32 %i.lo, -8                       ; 4 uses
  store i32 %i.lt, ptr %i.cm, align 4
  %i.lu = icmp ugt i32 %i.lt, 7
  br i1 %i.lu, label %.lr.ph380.split.1, label %.lr.ph380.2, !llvm.loop !291

.lr.ph380.2:                                      ; preds = %bb.aq, %._crit_edge381.split.us.1
  %i.lv = phi i32 [ %i.lg, %._crit_edge381.split.us.1 ], [ %i.ls, %bb.aq ]
  %i.lw = phi i32 [ %i.kx, %._crit_edge381.split.us.1 ], [ %i.lt, %bb.aq ] ; 3 uses
  %i.lx = lshr i32 %i.jy, 8
  %i.ly = and i32 %i.lx, 255
  %i.lz = shl nuw nsw i32 %i.ly, %i.lw
  %i.ma = or i32 %i.lv, %i.lz                     ; 3 uses
  store i32 %i.ma, ptr %i.cp, align 8
  %i.mb = add nuw nsw i32 %i.lw, 8                ; 2 uses
  store i32 %i.mb, ptr %i.cm, align 4
  %i.mc = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.md = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.me = icmp ult ptr %i.mc, %i.md
  br i1 %i.me, label %.lr.ph380.split.2, label %._crit_edge381.split.us.2

._crit_edge381.split.us.2:                        ; preds = %.lr.ph380.2
  %i.mf = lshr i32 %i.ma, 8
  br label %.lr.ph380.3

.lr.ph380.split.2:                                ; preds = %.lr.ph380.2, %bb.as
  %i.mg = phi i32 [ %i.ms, %bb.as ], [ %i.mb, %.lr.ph380.2 ]
  %i.mh = phi i32 [ %i.mr, %bb.as ], [ %i.ma, %.lr.ph380.2 ] ; 2 uses
  %i.mi = phi ptr [ %i.mp, %bb.as ], [ %i.md, %.lr.ph380.2 ] ; 2 uses
  %i.mj = phi ptr [ %i.mq, %bb.as ], [ %i.mc, %.lr.ph380.2 ] ; 4 uses
  %i.mk = icmp ult ptr %i.mj, %i.mi
  br i1 %i.mk, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph380.split.2
  %i.ml = trunc i32 %i.mh to i8
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 1
  store ptr %i.mm, ptr %i.aa, align 8
  store i8 %i.ml, ptr %i.mj, align 1
  %.pre498 = load ptr, ptr %i.aa, align 8
  %.pre500 = load ptr, ptr %i.ac, align 8
  %.pre502 = load i32, ptr %i.cp, align 8
  %.pre503 = load i32, ptr %i.cm, align 4
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph380.split.2
  %i.mn = phi i32 [ %.pre503, %bb.ar ], [ %i.mg, %.lr.ph380.split.2 ]
  %i.mo = phi i32 [ %.pre502, %bb.ar ], [ %i.mh, %.lr.ph380.split.2 ]
  %i.mp = phi ptr [ %.pre500, %bb.ar ], [ %i.mi, %.lr.ph380.split.2 ]
  %i.mq = phi ptr [ %.pre498, %bb.ar ], [ %i.mj, %.lr.ph380.split.2 ]
  %i.mr = lshr i32 %i.mo, 8                       ; 3 uses
  store i32 %i.mr, ptr %i.cp, align 8
  %i.ms = add i32 %i.mn, -8                       ; 4 uses
  store i32 %i.ms, ptr %i.cm, align 4
  %i.mt = icmp ugt i32 %i.ms, 7
  br i1 %i.mt, label %.lr.ph380.split.2, label %.lr.ph380.3, !llvm.loop !291

.lr.ph380.3:                                      ; preds = %bb.as, %._crit_edge381.split.us.2
  %i.mu = phi i32 [ %i.mf, %._crit_edge381.split.us.2 ], [ %i.mr, %bb.as ]
  %i.mv = phi i32 [ %i.lw, %._crit_edge381.split.us.2 ], [ %i.ms, %bb.as ] ; 3 uses
  %i.mw = and i32 %i.jy, 255
  %i.mx = shl nuw nsw i32 %i.mw, %i.mv
  %i.my = or i32 %i.mu, %i.mx                     ; 3 uses
  store i32 %i.my, ptr %i.cp, align 8
  %i.mz = add nuw nsw i32 %i.mv, 8                ; 2 uses
  store i32 %i.mz, ptr %i.cm, align 4
  %i.na = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.nb = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.nc = icmp ult ptr %i.na, %i.nb
  br i1 %i.nc, label %.lr.ph380.split.3, label %._crit_edge381.split.us.3

._crit_edge381.split.us.3:                        ; preds = %.lr.ph380.3
  %i.nd = lshr i32 %i.my, 8
  br label %.loopexit.sink.split

.lr.ph380.split.3:                                ; preds = %.lr.ph380.3, %bb.au
  %i.ne = phi i32 [ %i.nq, %bb.au ], [ %i.mz, %.lr.ph380.3 ]
  %i.nf = phi i32 [ %i.np, %bb.au ], [ %i.my, %.lr.ph380.3 ] ; 2 uses
  %i.ng = phi ptr [ %i.nn, %bb.au ], [ %i.nb, %.lr.ph380.3 ] ; 2 uses
  %i.nh = phi ptr [ %i.no, %bb.au ], [ %i.na, %.lr.ph380.3 ] ; 4 uses
  %i.ni = icmp ult ptr %i.nh, %i.ng
  br i1 %i.ni, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph380.split.3
  %i.nj = trunc i32 %i.nf to i8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 1
  store ptr %i.nk, ptr %i.aa, align 8
  store i8 %i.nj, ptr %i.nh, align 1
  %.pre504 = load ptr, ptr %i.aa, align 8
  %.pre506 = load ptr, ptr %i.ac, align 8
  %.pre508 = load i32, ptr %i.cp, align 8
  %.pre509 = load i32, ptr %i.cm, align 4
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph380.split.3
  %i.nl = phi i32 [ %.pre509, %bb.at ], [ %i.ne, %.lr.ph380.split.3 ]
  %i.nm = phi i32 [ %.pre508, %bb.at ], [ %i.nf, %.lr.ph380.split.3 ]
  %i.nn = phi ptr [ %.pre506, %bb.at ], [ %i.ng, %.lr.ph380.split.3 ]
  %i.no = phi ptr [ %.pre504, %bb.at ], [ %i.nh, %.lr.ph380.split.3 ]
  %i.np = lshr i32 %i.nm, 8                       ; 2 uses
  store i32 %i.np, ptr %i.cp, align 8
  %i.nq = add i32 %i.nl, -8                       ; 3 uses
  store i32 %i.nq, ptr %i.cm, align 4
  %i.nr = icmp ugt i32 %i.nq, 7
  br i1 %i.nr, label %.lr.ph380.split.3, label %.loopexit, !llvm.loop !291

bb.av:                                            ; preds = %bb.ai
  %i.ns = add i32 %i.jg, 3                        ; 4 uses
  store i32 %i.ns, ptr %i.cm, align 4
  %i.nt = icmp ugt i32 %i.ns, 7
  br i1 %i.nt, label %.lr.ph367.preheader, label %._crit_edge368

.lr.ph367.preheader:                              ; preds = %bb.av
  %.pre453 = load ptr, ptr %i.aa, align 8
  %.pre455 = load ptr, ptr %i.ac, align 8
  %.pre457.pre = load i32, ptr %i.cp, align 8
  br label %.lr.ph367

.lr.ph367:                                        ; preds = %.lr.ph367.preheader, %bb.ax
  %.pre457 = phi i32 [ %.pre457.pre, %.lr.ph367.preheader ], [ %i.oe, %bb.ax ] ; 2 uses
  %i.nu = phi i32 [ %i.ns, %.lr.ph367.preheader ], [ %i.of, %bb.ax ]
  %i.nv = phi ptr [ %.pre455, %.lr.ph367.preheader ], [ %i.oc, %bb.ax ] ; 2 uses
  %i.nw = phi ptr [ %.pre453, %.lr.ph367.preheader ], [ %i.od, %bb.ax ] ; 4 uses
  %i.nx = icmp ult ptr %i.nw, %i.nv
  br i1 %i.nx, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.lr.ph367
  %i.ny = trunc i32 %.pre457 to i8
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nw, i64 1
  store ptr %i.nz, ptr %i.aa, align 8
  store i8 %i.ny, ptr %i.nw, align 1
  %.pre452 = load ptr, ptr %i.aa, align 8
  %.pre454 = load ptr, ptr %i.ac, align 8
  %.pre456 = load i32, ptr %i.cp, align 8
  %.pre458 = load i32, ptr %i.cm, align 4
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.lr.ph367
  %i.oa = phi i32 [ %.pre458, %bb.aw ], [ %i.nu, %.lr.ph367 ]
  %i.ob = phi i32 [ %.pre456, %bb.aw ], [ %.pre457, %.lr.ph367 ]
  %i.oc = phi ptr [ %.pre454, %bb.aw ], [ %i.nv, %.lr.ph367 ]
  %i.od = phi ptr [ %.pre452, %bb.aw ], [ %i.nw, %.lr.ph367 ]
  %i.oe = lshr i32 %i.ob, 8                       ; 2 uses
  store i32 %i.oe, ptr %i.cp, align 8
  %i.of = add i32 %i.oa, -8                       ; 4 uses
  store i32 %i.of, ptr %i.cm, align 4
  %i.og = icmp ugt i32 %i.of, 7
  br i1 %i.og, label %.lr.ph367, label %._crit_edge368, !llvm.loop !292

._crit_edge368:                                   ; preds = %bb.ax, %bb.av
  %storemerge313.lcssa = phi i32 [ %i.ns, %bb.av ], [ %i.of, %bb.ax ]
  %.not314 = icmp eq i32 %storemerge313.lcssa, 0
  br i1 %.not314, label %._crit_edge368..loopexit337_crit_edge, label %.preheader336

._crit_edge368..loopexit337_crit_edge:            ; preds = %._crit_edge368
  %.pre466 = load i32, ptr %i.cp, align 8
  br label %.lr.ph371

.preheader336:                                    ; preds = %._crit_edge368
  store i32 8, ptr %i.cm, align 4
  %.pre460 = load ptr, ptr %i.aa, align 8
  %.pre462 = load ptr, ptr %i.ac, align 8
  %.pre464.pre = load i32, ptr %i.cp, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %.preheader336, %bb.ba
  %.pre464 = phi i32 [ %.pre464.pre, %.preheader336 ], [ %i.or, %bb.ba ] ; 2 uses
  %i.oh = phi i32 [ 8, %.preheader336 ], [ %i.os, %bb.ba ]
  %i.oi = phi ptr [ %.pre462, %.preheader336 ], [ %i.op, %bb.ba ] ; 2 uses
  %i.oj = phi ptr [ %.pre460, %.preheader336 ], [ %i.oq, %bb.ba ] ; 4 uses
  %i.ok = icmp ult ptr %i.oj, %i.oi
  br i1 %i.ok, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ol = trunc i32 %.pre464 to i8
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 1
  store ptr %i.om, ptr %i.aa, align 8
  store i8 %i.ol, ptr %i.oj, align 1
  %.pre459 = load ptr, ptr %i.aa, align 8
  %.pre461 = load ptr, ptr %i.ac, align 8
  %.pre463 = load i32, ptr %i.cp, align 8
  %.pre465 = load i32, ptr %i.cm, align 4
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.on = phi i32 [ %.pre465, %bb.az ], [ %i.oh, %bb.ay ] ; 2 uses
  %i.oo = phi i32 [ %.pre463, %bb.az ], [ %.pre464, %bb.ay ]
  %i.op = phi ptr [ %.pre461, %bb.az ], [ %i.oi, %bb.ay ]
  %i.oq = phi ptr [ %.pre459, %bb.az ], [ %i.oj, %bb.ay ]
  %i.or = lshr i32 %i.oo, 8                       ; 3 uses
  store i32 %i.or, ptr %i.cp, align 8
  %i.os = add i32 %i.on, -8                       ; 3 uses
  store i32 %i.os, ptr %i.cm, align 4
  %i.ot = icmp ugt i32 %i.os, 7
  br i1 %i.ot, label %bb.ay, label %.loopexit337.loopexit, !llvm.loop !293

.loopexit337.loopexit:                            ; preds = %bb.ba
  %i.ou = add nuw nsw i32 %i.on, 8
  br label %.lr.ph371

.lr.ph371:                                        ; preds = %.loopexit337.loopexit, %._crit_edge368..loopexit337_crit_edge
  %.promoted373 = phi i32 [ %i.or, %.loopexit337.loopexit ], [ %.pre466, %._crit_edge368..loopexit337_crit_edge ] ; 3 uses
  %i.ov = phi i32 [ %i.ou, %.loopexit337.loopexit ], [ 16, %._crit_edge368..loopexit337_crit_edge ] ; 3 uses
  store i32 %.promoted373, ptr %i.cp, align 8
  store i32 %i.ov, ptr %i.cm, align 4
  %i.ow = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ox = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.oy = icmp ult ptr %i.ow, %i.ox
  br i1 %i.oy, label %.lr.ph371.split, label %.lr.ph371.split.us

.lr.ph371.split.us:                               ; preds = %.lr.ph371, %.lr.ph371.split.us
  %i.oz = phi i32 [ %i.pc, %.lr.ph371.split.us ], [ %i.ov, %.lr.ph371 ]
  %i.pa = phi i32 [ %i.pb, %.lr.ph371.split.us ], [ %.promoted373, %.lr.ph371 ]
  %i.pb = lshr i32 %i.pa, 8                       ; 2 uses
  %i.pc = add i32 %i.oz, -8                       ; 3 uses
  %i.pd = icmp ugt i32 %i.pc, 7
  br i1 %i.pd, label %.lr.ph371.split.us, label %.lr.ph371.1, !llvm.loop !294

.lr.ph371.split:                                  ; preds = %.lr.ph371, %bb.bc
  %i.pe = phi i32 [ %i.pq, %bb.bc ], [ %i.ov, %.lr.ph371 ]
  %i.pf = phi i32 [ %i.pp, %bb.bc ], [ %.promoted373, %.lr.ph371 ] ; 2 uses
  %i.pg = phi ptr [ %i.pn, %bb.bc ], [ %i.ox, %.lr.ph371 ] ; 2 uses
  %i.ph = phi ptr [ %i.po, %bb.bc ], [ %i.ow, %.lr.ph371 ] ; 4 uses
  %i.pi = icmp ult ptr %i.ph, %i.pg
  br i1 %i.pi, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph371.split
  %i.pj = trunc i32 %i.pf to i8
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ph, i64 1
  store ptr %i.pk, ptr %i.aa, align 8
  store i8 %i.pj, ptr %i.ph, align 1
  %.pre467 = load ptr, ptr %i.aa, align 8
  %.pre469 = load ptr, ptr %i.ac, align 8
  %.pre471 = load i32, ptr %i.cp, align 8
  %.pre472 = load i32, ptr %i.cm, align 4
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.lr.ph371.split
  %i.pl = phi i32 [ %.pre472, %bb.bb ], [ %i.pe, %.lr.ph371.split ]
  %i.pm = phi i32 [ %.pre471, %bb.bb ], [ %i.pf, %.lr.ph371.split ]
  %i.pn = phi ptr [ %.pre469, %bb.bb ], [ %i.pg, %.lr.ph371.split ]
  %i.po = phi ptr [ %.pre467, %bb.bb ], [ %i.ph, %.lr.ph371.split ]
  %i.pp = lshr i32 %i.pm, 8                       ; 3 uses
  store i32 %i.pp, ptr %i.cp, align 8
  %i.pq = add i32 %i.pl, -8                       ; 4 uses
  store i32 %i.pq, ptr %i.cm, align 4
  %i.pr = icmp ugt i32 %i.pq, 7
  br i1 %i.pr, label %.lr.ph371.split, label %.lr.ph371.1, !llvm.loop !295

.lr.ph371.1:                                      ; preds = %.lr.ph371.split.us, %bb.bc
  %i.ps = phi i32 [ %i.pp, %bb.bc ], [ %i.pb, %.lr.ph371.split.us ]
  %i.pt = phi i32 [ %i.pq, %bb.bc ], [ %i.pc, %.lr.ph371.split.us ] ; 2 uses
  %i.pu = shl nuw nsw i32 65535, %i.pt
  %i.pv = or i32 %i.ps, %i.pu                     ; 3 uses
  store i32 %i.pv, ptr %i.cp, align 8
  %i.pw = or disjoint i32 %i.pt, 16               ; 3 uses
  store i32 %i.pw, ptr %i.cm, align 4
  %i.px = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.py = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.pz = icmp ult ptr %i.px, %i.py
  br i1 %i.pz, label %.lr.ph371.split.1, label %.lr.ph371.split.us.1.prol

.lr.ph371.split.us.1.prol:                        ; preds = %.lr.ph371.1, %.lr.ph371.split.us.1.prol
  %5 = phi i32 [ %7, %.lr.ph371.split.us.1.prol ], [ %i.pw, %.lr.ph371.1 ]
  %6 = phi i32 [ %i.qa, %.lr.ph371.split.us.1.prol ], [ %i.pv, %.lr.ph371.1 ]
  %prol.iter782 = phi i32 [ %prol.iter782.next, %.lr.ph371.split.us.1.prol ], [ 0, %.lr.ph371.1 ]
  %i.qa = lshr i32 %6, 8                          ; 2 uses
  %7 = add i32 %5, -8                             ; 2 uses
  %prol.iter782.next = add i32 %prol.iter782, 1   ; 2 uses
  %prol.iter782.cmp.not = icmp eq i32 %prol.iter782.next, 2
  br i1 %prol.iter782.cmp.not, label %.loopexit.sink.split, label %.lr.ph371.split.us.1.prol, !llvm.loop !296

.lr.ph371.split.1:                                ; preds = %.lr.ph371.1, %bb.be
  %i.qb = phi i32 [ %i.qn, %bb.be ], [ %i.pw, %.lr.ph371.1 ]
  %i.qc = phi i32 [ %i.qm, %bb.be ], [ %i.pv, %.lr.ph371.1 ] ; 2 uses
  %i.qd = phi ptr [ %i.qk, %bb.be ], [ %i.py, %.lr.ph371.1 ] ; 2 uses
  %i.qe = phi ptr [ %i.ql, %bb.be ], [ %i.px, %.lr.ph371.1 ] ; 4 uses
  %i.qf = icmp ult ptr %i.qe, %i.qd
  br i1 %i.qf, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph371.split.1
  %i.qg = trunc i32 %i.qc to i8
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 1
  store ptr %i.qh, ptr %i.aa, align 8
  store i8 %i.qg, ptr %i.qe, align 1
  %.pre473 = load ptr, ptr %i.aa, align 8
  %.pre475 = load ptr, ptr %i.ac, align 8
  %.pre477 = load i32, ptr %i.cp, align 8
  %.pre478 = load i32, ptr %i.cm, align 4
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph371.split.1
  %i.qi = phi i32 [ %.pre478, %bb.bd ], [ %i.qb, %.lr.ph371.split.1 ]
  %i.qj = phi i32 [ %.pre477, %bb.bd ], [ %i.qc, %.lr.ph371.split.1 ]
  %i.qk = phi ptr [ %.pre475, %bb.bd ], [ %i.qd, %.lr.ph371.split.1 ]
  %i.ql = phi ptr [ %.pre473, %bb.bd ], [ %i.qe, %.lr.ph371.split.1 ]
  %i.qm = lshr i32 %i.qj, 8                       ; 2 uses
  store i32 %i.qm, ptr %i.cp, align 8
  %i.qn = add i32 %i.qi, -8                       ; 3 uses
  store i32 %i.qn, ptr %i.cm, align 4
  %i.qo = icmp ugt i32 %i.qn, 7
  br i1 %i.qo, label %.lr.ph371.split.1, label %.loopexit, !llvm.loop !295

.loopexit.sink.split:                             ; preds = %.lr.ph371.split.us.1.prol, %._crit_edge381.split.us.3
  %.lcssa655.sink = phi i32 [ %i.nd, %._crit_edge381.split.us.3 ], [ %i.qa, %.lr.ph371.split.us.1.prol ]
  %.lcssa654.sink = phi i32 [ %i.mv, %._crit_edge381.split.us.3 ], [ %7, %.lr.ph371.split.us.1.prol ]
  store i32 %.lcssa655.sink, ptr %i.cp, align 8
  store i32 %.lcssa654.sink, ptr %i.cm, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.be, %bb.au, %.loopexit.sink.split, %.loopexit339, %.loopexit334
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 33226
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 37546
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 37547
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(640) %i.qp, i8 0, i64 640, i1 false)
  store ptr %i.qr, ptr %i.ap, align 8
  store ptr %i.qq, ptr %i.af, align 8
  store i32 8, ptr %i.aj, align 8
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.qt = load i32, ptr %i.qs, align 4
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.qv = load i32, ptr %i.qu, align 8
  %i.qw = add i32 %i.qv, %i.qt
  store i32 %i.qw, ptr %i.qu, align 8
  store i32 0, ptr %i.qs, align 4
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.qy = load i32, ptr %i.qx, align 4
  %i.qz = add i32 %i.qy, 1
  store i32 %i.qz, ptr %i.qx, align 4
  %i.ra = load ptr, ptr %i.aa, align 8
  %i.rb = ptrtoint ptr %i.ra to i64
  %i.rc = ptrtoint ptr %i.z to i64
  %i.rd = sub i64 %i.rb, %i.rc                    ; 2 uses
  %i.re = trunc i64 %i.rd to i32                  ; 4 uses
  %.not321 = icmp eq i32 %i.re, 0
  br i1 %.not321, label %bb.bm, label %bb.bf

bb.bf:                                            ; preds = %.loopexit
  %i.rf = load ptr, ptr %0, align 8
  %.not322 = icmp eq ptr %i.rf, null
  br i1 %.not322, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.rh = load ptr, ptr %i.rg, align 8
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.rj = load ptr, ptr %i.ri, align 8
  %i.rk = ptrtoint ptr %i.rh to i64
  %i.rl = ptrtoint ptr %i.rj to i64
  %i.rm = sub i64 %i.rk, %i.rl
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ro = load ptr, ptr %i.rn, align 8
  store i64 %i.rm, ptr %i.ro, align 8
  %i.rp = load ptr, ptr %0, align 8
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 234154
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.rs = load ptr, ptr %i.rr, align 8
  %i.rt = tail call i32 %i.rp(ptr noundef nonnull %i.rq, i32 noundef %i.re, ptr noundef %i.rs) #13
  %.not326 = icmp eq i32 %i.rt, 0
  br i1 %.not326, label %bb.bh, label %bb.bm

bb.bh:                                            ; preds = %bb.bg
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 -1, ptr %i.ru, align 4
  br label %bb.bn

bb.bi:                                            ; preds = %bb.bf
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 234154 ; 2 uses
  %i.rw = icmp eq ptr %i.z, %i.rv
  %sext323 = shl i64 %i.rd, 32
  %i.rx = ashr exact i64 %sext323, 32             ; 2 uses
  br i1 %i.rw, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.rz = load ptr, ptr %i.ry, align 8
  %i.sa = load i64, ptr %i.rz, align 8
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.sc = load i64, ptr %i.sb, align 8            ; 2 uses
  %i.sd = sub i64 %i.sa, %i.sc
  %. = tail call i64 @llvm.umin.i64(i64 %i.rx, i64 %i.sd) ; 2 uses
  %i.se = trunc i64 %. to i32                     ; 3 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.sg = load ptr, ptr %i.sf, align 8
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 %i.sc
  %sext324 = shl i64 %., 32
  %i.si = ashr exact i64 %sext324, 32             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sh, ptr nonnull align 2 %i.rv, i64 %i.si, i1 false)
  %i.sj = load i64, ptr %i.sb, align 8
  %i.sk = add i64 %i.si, %i.sj
  store i64 %i.sk, ptr %i.sb, align 8
  %.not325 = icmp eq i32 %i.re, %i.se
  br i1 %.not325, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.sl = sub nsw i32 %i.re, %i.se
  store i32 %i.se, ptr %i.ad, align 8
  store i32 %i.sl, ptr %i.ae, align 4
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bi
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.sn = load i64, ptr %i.sm, align 8
  %i.so = add i64 %i.sn, %i.rx
  store i64 %i.so, ptr %i.sm, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bj, %bb.bk, %bb.bg, %bb.bl, %.loopexit
  %i.sp = load i32, ptr %i.ae, align 4
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bh
  %.0275 = phi i32 [ %i.sp, %bb.bm ], [ -1, %bb.bh ]
  ret i32 %.0275
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tdefl_compress_block(ptr nofree noundef nonnull %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #10 {
bb.a:
  %i.a = alloca [320 x i8], align 16              ; 5 uses
  %i.b = alloca [320 x i8], align 16              ; 24 uses
  %i.c = alloca [33 x i32], align 16              ; 49 uses
  %i.d = alloca [33 x i32], align 16              ; 18 uses
  %i.e = alloca [33 x i32], align 16              ; 21 uses
  %i.f = alloca [33 x i32], align 16              ; 18 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 36682      ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %i.g, i8 8, i64 144, i1 false)
  %scevgep.i = getelementptr i8, ptr %0, i64 36826
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %scevgep.i, i8 9, i64 112, i1 false)
  %scevgep73.i = getelementptr i8, ptr %0, i64 36938
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %scevgep73.i, i8 7, i64 24, i1 false)
  %scevgep74.i = getelementptr i8, ptr %0, i64 36962
  store i64 578721382704613384, ptr %scevgep74.i, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36970 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.h, i8 5, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
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
  br i1 %exitcond.not.i.i.3, label %.loopexit.loopexit.i.i, label %bb.c, !llvm.loop !5

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
  br i1 %niter.ncmp.3.not, label %.unr-lcssa, label %bb.f, !llvm.loop !6

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
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.g, !llvm.loop !297

.epilog-lcssa:                                    ; preds = %bb.g, %.unr-lcssa
  %.lcssa337 = phi i32 [ %i.dx, %.unr-lcssa ], [ %i.eb, %bb.g ]
  %i.ed = trunc i32 %.lcssa337 to i16
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %indvars.iv150.i.i
  store i16 %i.ed, ptr %i.ee, align 2
  br label %bb.h

bb.h:                                             ; preds = %.epilog-lcssa, %bb.d
  %indvars.iv.next151.i.i = add nuw nsw i64 %indvars.iv150.i.i, 1 ; 2 uses
  %exitcond154.not.i.i = icmp eq i64 %indvars.iv.next151.i.i, 288
  br i1 %exitcond154.not.i.i, label %tdefl_optimize_huffman_table.exit.i, label %bb.d, !llvm.loop !7

tdefl_optimize_huffman_table.exit.i:              ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
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
  br i1 %niter350.ncmp.3.not, label %.unr-lcssa341, label %bb.k, !llvm.loop !6

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
  br i1 %epil.iter344.cmp.not, label %.epilog-lcssa346, label %bb.l, !llvm.loop !298

.epilog-lcssa346:                                 ; preds = %bb.l, %.unr-lcssa341
  %.lcssa336 = phi i32 [ %i.pc, %.unr-lcssa341 ], [ %i.pg, %bb.l ]
  %i.pi = trunc i32 %.lcssa336 to i16
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %i.og, i64 %indvars.iv150.i41.i
  store i16 %i.pi, ptr %i.pj, align 2
  br label %bb.m

bb.m:                                             ; preds = %.epilog-lcssa346, %bb.i
  %indvars.iv.next151.i45.i = add nuw nsw i64 %indvars.iv150.i41.i, 1 ; 2 uses
  %exitcond154.not.i46.i = icmp eq i64 %indvars.iv.next151.i45.i, 32
  br i1 %exitcond154.not.i46.i, label %tdefl_optimize_huffman_table.exit47.i, label %bb.i, !llvm.loop !7

tdefl_optimize_huffman_table.exit47.i:            ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
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
  br i1 %i.qh, label %bb.n, label %tdefl_start_static_block.exit, !llvm.loop !299

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
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
  %i.sa = load i8, ptr %i.rz, align 2
  %.not.21.i = icmp eq i8 %i.sa, 0
  br i1 %.not.21.i, label %bb.am, label %bb.at

bb.am:                                            ; preds = %bb.al
  %i.sb = getelementptr i8, ptr %0, i64 36945
  %i.sc = load i8, ptr %i.sb, align 1
  %.not.22.i = icmp eq i8 %i.sc, 0
  br i1 %.not.22.i, label %bb.an, label %bb.at

bb.an:                                            ; preds = %bb.am
  %i.sd = getelementptr i8, ptr %0, i64 36944
  %i.se = load i8, ptr %i.sd, align 2
  %.not.23.i = icmp eq i8 %i.se, 0
  br i1 %.not.23.i, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %bb.an
  %i.sf = getelementptr i8, ptr %0, i64 36943
  %i.sg = load i8, ptr %i.sf, align 1
  %.not.24.i = icmp eq i8 %i.sg, 0
  br i1 %.not.24.i, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.sh = getelementptr i8, ptr %0, i64 36942
  %i.si = load i8, ptr %i.sh, align 2
  %.not.25.i = icmp eq i8 %i.si, 0
  br i1 %.not.25.i, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.sj = getelementptr i8, ptr %0, i64 36941
  %i.sk = load i8, ptr %i.sj, align 1
  %.not.26.i = icmp eq i8 %i.sk, 0
  br i1 %.not.26.i, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.sl = getelementptr i8, ptr %0, i64 36940
  %i.sm = load i8, ptr %i.sl, align 2
  %.not.27.i = icmp eq i8 %i.sm, 0
  br i1 %.not.27.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.sn = getelementptr i8, ptr %0, i64 36939
  %i.so = load i8, ptr %i.sn, align 1
  %.not.28.i = icmp eq i8 %i.so, 0
  %spec.select.i = select i1 %.not.28.i, i32 257, i32 258
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.0282.lcssa.i = phi i32 [ 286, %bb.q ], [ 268, %bb.ai ], [ 285, %bb.r ], [ %spec.select.i, %bb.as ], [ 284, %bb.s ], [ 271, %bb.af ], [ 283, %bb.t ], [ 259, %bb.ar ], [ 282, %bb.u ], [ 265, %bb.al ], [ 281, %bb.v ], [ 260, %bb.aq ], [ 280, %bb.w ], [ 270, %bb.ag ], [ 279, %bb.x ], [ 261, %bb.ap ], [ 278, %bb.y ], [ 267, %bb.aj ], [ 277, %bb.z ], [ 262, %bb.ao ], [ 276, %bb.aa ], [ 269, %bb.ah ], [ 275, %bb.ab ], [ 263, %bb.an ], [ 274, %bb.ac ], [ 266, %bb.ak ], [ 273, %bb.ad ], [ 264, %bb.am ], [ 272, %bb.ae ] ; 3 uses
  %i.sp = getelementptr i8, ptr %0, i64 36999
  %i.sq = load i8, ptr %i.sp, align 1
  %.not297.i = icmp eq i8 %i.sq, 0
  br i1 %.not297.i, label %bb.au, label %.lr.ph.i

bb.au:                                            ; preds = %bb.at
  %i.sr = getelementptr i8, ptr %0, i64 36998
  %i.ss = load i8, ptr %i.sr, align 2
  %.not297.1.i = icmp eq i8 %i.ss, 0
  br i1 %.not297.1.i, label %bb.av, label %.lr.ph.i

bb.av:                                            ; preds = %bb.au
  %i.st = getelementptr i8, ptr %0, i64 36997
  %i.su = load i8, ptr %i.st, align 1
  %.not297.2.i = icmp eq i8 %i.su, 0
  br i1 %.not297.2.i, label %bb.aw, label %.lr.ph.i
end_hunk_0
begin_hunk_1_@tdefl_compress_block:bb.a

bb.bw:                                            ; preds = %bb.cl, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.cl ] ; 2 uses
  %.0337.i = phi i8 [ -1, %.lr.ph.i ], [ %i.vg, %bb.cl ] ; 5 uses
  %.0262336.i = phi i32 [ 0, %.lr.ph.i ], [ %.6.i, %bb.cl ] ; 13 uses
  %.0264335.i = phi i32 [ 0, %.lr.ph.i ], [ %.4268.i, %bb.cl ] ; 8 uses
  %.0270334.i = phi i32 [ 0, %.lr.ph.i ], [ %.14.i, %bb.cl ] ; 12 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.vg = load i8, ptr %i.vf, align 1             ; 7 uses
  %.not310.i = icmp eq i8 %i.vg, 0
  br i1 %.not310.i, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  %.not311.i = icmp eq i32 %.0262336.i, 0
  br i1 %.not311.i, label %.loopexit322.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.vh = icmp ult i32 %.0262336.i, 3
  br i1 %i.vh, label %.loopexit322.loopexit.i, label %bb.bz

.loopexit322.loopexit.i:                          ; preds = %bb.by
  %i.vi = zext i8 %.0337.i to i64
  %i.vj = getelementptr inbounds nuw [2 x i8], ptr %i.va, i64 %i.vi ; 2 uses
  %i.vk = load i16, ptr %i.vj, align 2
  %i.vl = trunc nuw nsw i32 %.0262336.i to i16
  %i.vm = add i16 %i.vk, %i.vl
  store i16 %i.vm, ptr %i.vj, align 2
  %i.vn = zext i32 %.0270334.i to i64
  %scevgep403.i = getelementptr i8, ptr %i.b, i64 %i.vn
  %i.vo = zext nneg i32 %.0262336.i to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep403.i, i8 %.0337.i, i64 %i.vo, i1 false)
  %i.vp = add i32 %.0270334.i, %.0262336.i
  br label %.loopexit322.i

bb.bz:                                            ; preds = %bb.by
  %i.vq = load i16, ptr %i.ve, align 2
  %i.vr = add i16 %i.vq, 1
  store i16 %i.vr, ptr %i.ve, align 2
  %i.vs = add nuw i32 %.0270334.i, 1
  %i.vt = zext i32 %.0270334.i to i64
  %i.vu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.vt
  store i8 16, ptr %i.vu, align 1
  %i.vv = trunc i32 %.0262336.i to i8
  %i.vw = add i8 %i.vv, -3
  %i.vx = add nuw i32 %.0270334.i, 2
  %i.vy = zext i32 %i.vs to i64
  %i.vz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.vy
  store i8 %i.vw, ptr %i.vz, align 1
  br label %.loopexit322.i

.loopexit322.i:                                   ; preds = %bb.bz, %.loopexit322.loopexit.i, %bb.bx
  %.3273.i = phi i32 [ %.0270334.i, %bb.bx ], [ %i.vx, %bb.bz ], [ %i.vp, %.loopexit322.loopexit.i ] ; 4 uses
  %i.wa = add i32 %.0264335.i, 1                  ; 2 uses
  %i.wb = icmp eq i32 %i.wa, 138
  br i1 %i.wb, label %bb.ca, label %bb.cl

bb.ca:                                            ; preds = %.loopexit322.i
  %i.wc = load i16, ptr %i.vc, align 2
  %i.wd = add i16 %i.wc, 1
  store i16 %i.wd, ptr %i.vc, align 2
  %i.we = add nuw i32 %.3273.i, 1
  %i.wf = zext i32 %.3273.i to i64
  %i.wg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wf
  store i8 18, ptr %i.wg, align 1
  %i.wh = add nuw i32 %.3273.i, 2
  %i.wi = zext i32 %i.we to i64
  %i.wj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wi
  store i8 127, ptr %i.wj, align 1
  br label %bb.cl

bb.cb:                                            ; preds = %bb.bw
  %.not313.i = icmp eq i32 %.0264335.i, 0
  br i1 %.not313.i, label %.loopexit324.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.wk = icmp ult i32 %.0264335.i, 3
  br i1 %i.wk, label %.loopexit324.loopexit.i, label %bb.cd

.loopexit324.loopexit.i:                          ; preds = %bb.cc
  %i.wl = load i16, ptr %i.va, align 2
  %i.wm = trunc nuw nsw i32 %.0264335.i to i16
  %i.wn = add i16 %i.wl, %i.wm
  store i16 %i.wn, ptr %i.va, align 2
  %i.wo = zext i32 %.0270334.i to i64
  %scevgep.i4 = getelementptr i8, ptr %i.b, i64 %i.wo
  %i.wp = zext nneg i32 %.0264335.i to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i4, i8 0, i64 %i.wp, i1 false)
  %i.wq = add i32 %.0270334.i, %.0264335.i
  br label %.loopexit324.i

bb.cd:                                            ; preds = %bb.cc
  %i.wr = icmp ult i32 %.0264335.i, 11
  %i.ws = add nuw i32 %.0270334.i, 1
  %i.wt = zext i32 %.0270334.i to i64
  %i.wu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wt ; 2 uses
  %i.wv = trunc i32 %.0264335.i to i8             ; 2 uses
  %i.ww = add nuw i32 %.0270334.i, 2              ; 2 uses
  %i.wx = zext i32 %i.ws to i64
  %i.wy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wx ; 2 uses
  br i1 %i.wr, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.wz = load i16, ptr %i.vd, align 2
  %i.xa = add i16 %i.wz, 1
  store i16 %i.xa, ptr %i.vd, align 2
  store i8 17, ptr %i.wu, align 1
  %i.xb = add nsw i8 %i.wv, -3
  store i8 %i.xb, ptr %i.wy, align 1
  br label %.loopexit324.i

bb.cf:                                            ; preds = %bb.cd
  %i.xc = load i16, ptr %i.vc, align 2
  %i.xd = add i16 %i.xc, 1
  store i16 %i.xd, ptr %i.vc, align 2
  store i8 18, ptr %i.wu, align 1
  %i.xe = add i8 %i.wv, -11
  store i8 %i.xe, ptr %i.wy, align 1
  br label %.loopexit324.i

.loopexit324.i:                                   ; preds = %bb.cf, %bb.ce, %.loopexit324.loopexit.i, %bb.cb
  %.8.i = phi i32 [ %.0270334.i, %bb.cb ], [ %i.ww, %bb.cf ], [ %i.ww, %bb.ce ], [ %i.wq, %.loopexit324.loopexit.i ] ; 10 uses
  %.not315.i = icmp eq i8 %i.vg, %.0337.i
  br i1 %.not315.i, label %bb.cj, label %bb.cg

bb.cg:                                            ; preds = %.loopexit324.i
  %.not316.i = icmp eq i32 %.0262336.i, 0
  br i1 %.not316.i, label %.loopexit323.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.xf = icmp ult i32 %.0262336.i, 3
  br i1 %i.xf, label %.loopexit323.loopexit.i, label %bb.ci

.loopexit323.loopexit.i:                          ; preds = %bb.ch
  %i.xg = zext i8 %.0337.i to i64
  %i.xh = getelementptr inbounds nuw [2 x i8], ptr %i.va, i64 %i.xg ; 2 uses
  %i.xi = load i16, ptr %i.xh, align 2
  %i.xj = trunc nuw nsw i32 %.0262336.i to i16
  %i.xk = add i16 %i.xi, %i.xj
  store i16 %i.xk, ptr %i.xh, align 2
  %i.xl = zext i32 %.8.i to i64
  %scevgep401.i = getelementptr i8, ptr %i.b, i64 %i.xl
  %i.xm = zext nneg i32 %.0262336.i to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep401.i, i8 %.0337.i, i64 %i.xm, i1 false)
  %i.xn = add i32 %.8.i, %.0262336.i
  br label %.loopexit323.i

bb.ci:                                            ; preds = %bb.ch
  %i.xo = load i16, ptr %i.ve, align 2
  %i.xp = add i16 %i.xo, 1
  store i16 %i.xp, ptr %i.ve, align 2
  %i.xq = add nuw i32 %.8.i, 1
  %i.xr = zext i32 %.8.i to i64
  %i.xs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xr
  store i8 16, ptr %i.xs, align 1
  %i.xt = trunc i32 %.0262336.i to i8
  %i.xu = add i8 %i.xt, -3
  %i.xv = add nuw i32 %.8.i, 2
  %i.xw = zext i32 %i.xq to i64
  %i.xx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xw
  store i8 %i.xu, ptr %i.xx, align 1
  br label %.loopexit323.i

.loopexit323.i:                                   ; preds = %bb.ci, %.loopexit323.loopexit.i, %bb.cg
  %.11.i = phi i32 [ %.8.i, %bb.cg ], [ %i.xv, %bb.ci ], [ %i.xn, %.loopexit323.loopexit.i ] ; 2 uses
  %i.xy = zext i8 %i.vg to i64
  %i.xz = getelementptr inbounds nuw [2 x i8], ptr %i.va, i64 %i.xy ; 2 uses
  %i.ya = load i16, ptr %i.xz, align 2
  %i.yb = add i16 %i.ya, 1
  store i16 %i.yb, ptr %i.xz, align 2
  %i.yc = add nuw i32 %.11.i, 1
  %i.yd = zext i32 %.11.i to i64
  %i.ye = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.yd
  store i8 %i.vg, ptr %i.ye, align 1
  br label %bb.cl

bb.cj:                                            ; preds = %.loopexit324.i
  %i.yf = add i32 %.0262336.i, 1                  ; 2 uses
  %i.yg = icmp eq i32 %i.yf, 6
  br i1 %i.yg, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.yh = load i16, ptr %i.ve, align 2
  %i.yi = add i16 %i.yh, 1
  store i16 %i.yi, ptr %i.ve, align 2
  %i.yj = add nuw i32 %.8.i, 1
  %i.yk = zext i32 %.8.i to i64
  %i.yl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.yk
  store i8 16, ptr %i.yl, align 1
  %i.ym = zext i32 %i.yj to i64
  %i.yn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ym
  store i8 3, ptr %i.yn, align 1
  %i.yo = add nuw i32 %.8.i, 2
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %.loopexit323.i, %bb.ca, %.loopexit322.i
  %.14.i = phi i32 [ %i.yc, %.loopexit323.i ], [ %i.yo, %bb.ck ], [ %.8.i, %bb.cj ], [ %i.wh, %bb.ca ], [ %.3273.i, %.loopexit322.i ] ; 12 uses
  %.4268.i = phi i32 [ 0, %.loopexit323.i ], [ 0, %bb.ck ], [ 0, %bb.cj ], [ 0, %bb.ca ], [ %i.wa, %.loopexit322.i ] ; 8 uses
  %.6.i = phi i32 [ 0, %.loopexit323.i ], [ 0, %bb.ck ], [ %i.yf, %bb.cj ], [ 0, %bb.ca ], [ 0, %.loopexit322.i ] ; 7 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.bw, !llvm.loop !300

._crit_edge.i:                                    ; preds = %bb.cl
  %.not298.i = icmp eq i32 %.6.i, 0
  br i1 %.not298.i, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %._crit_edge.i
  %i.yp = icmp ult i32 %.6.i, 3
  br i1 %i.yp, label %.loopexit320.loopexit384.i, label %bb.cn

.loopexit320.loopexit384.i:                       ; preds = %bb.cm
  %i.yq = zext i8 %i.vg to i64
  %i.yr = getelementptr inbounds nuw [2 x i8], ptr %i.va, i64 %i.yq ; 2 uses
  %i.ys = load i16, ptr %i.yr, align 2
  %i.yt = trunc nuw nsw i32 %.6.i to i16
  %i.yu = add i16 %i.ys, %i.yt
  store i16 %i.yu, ptr %i.yr, align 2
  %i.yv = zext i32 %.14.i to i64
  %scevgep405.i = getelementptr i8, ptr %i.b, i64 %i.yv
  %i.yw = zext nneg i32 %.6.i to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep405.i, i8 %i.vg, i64 %i.yw, i1 false)
  %i.yx = add i32 %.6.i, %.14.i
  br label %.loopexit320.i

bb.cn:                                            ; preds = %bb.cm
  %i.yy = load i16, ptr %i.ve, align 2
  %i.yz = add i16 %i.yy, 1
  store i16 %i.yz, ptr %i.ve, align 2
  %i.za = add nuw i32 %.14.i, 1
  %i.zb = zext i32 %.14.i to i64
  %i.zc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.zb
  store i8 16, ptr %i.zc, align 1
  %i.zd = trunc i32 %.6.i to i8
  %i.ze = add i8 %i.zd, -3
  %i.zf = add nuw i32 %.14.i, 2
  %i.zg = zext i32 %i.za to i64
  %i.zh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.zg
  store i8 %i.ze, ptr %i.zh, align 1
  br label %.loopexit320.i

bb.co:                                            ; preds = %._crit_edge.i
  %.not299.i = icmp eq i32 %.4268.i, 0
  br i1 %.not299.i, label %.loopexit320.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.zi = icmp ult i32 %.4268.i, 3
  br i1 %i.zi, label %.loopexit320.loopexit.i, label %bb.cq

.loopexit320.loopexit.i:                          ; preds = %bb.cp
  %i.zj = load i16, ptr %i.va, align 2
  %i.zk = trunc nuw nsw i32 %.4268.i to i16
  %i.zl = add i16 %i.zj, %i.zk
  store i16 %i.zl, ptr %i.va, align 2
  %i.zm = zext i32 %.14.i to i64
  %scevgep409.i = getelementptr i8, ptr %i.b, i64 %i.zm
  %i.zn = zext nneg i32 %.4268.i to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep409.i, i8 0, i64 %i.zn, i1 false)
  %i.zo = add i32 %.4268.i, %.14.i
  br label %.loopexit320.i

bb.cq:                                            ; preds = %bb.cp
  %i.zp = icmp ult i32 %.4268.i, 11
  %i.zq = add nuw i32 %.14.i, 1
  %i.zr = zext i32 %.14.i to i64
  %i.zs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.zr ; 2 uses
  %i.zt = trunc i32 %.4268.i to i8                ; 2 uses
  %i.zu = add nuw i32 %.14.i, 2                   ; 2 uses
  %i.zv = zext i32 %i.zq to i64
  %i.zw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.zv ; 2 uses
  br i1 %i.zp, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.zx = load i16, ptr %i.vd, align 2
  %i.zy = add i16 %i.zx, 1
  store i16 %i.zy, ptr %i.vd, align 2
  store i8 17, ptr %i.zs, align 1
  %i.zz = add nsw i8 %i.zt, -3
  store i8 %i.zz, ptr %i.zw, align 1
  br label %.loopexit320.i

bb.cs:                                            ; preds = %bb.cq
  %i.aaa = load i16, ptr %i.vc, align 2
  %i.aab = add i16 %i.aaa, 1
  store i16 %i.aab, ptr %i.vc, align 2
  store i8 18, ptr %i.zs, align 1
  %i.aac = add i8 %i.zt, -11
  store i8 %i.aac, ptr %i.zw, align 1
  br label %.loopexit320.i

.loopexit320.i:                                   ; preds = %bb.cs, %bb.cr, %.loopexit320.loopexit.i, %bb.co, %bb.cn, %.loopexit320.loopexit384.i
  %.19.i = phi i32 [ %i.zf, %bb.cn ], [ %.14.i, %bb.co ], [ %i.zo, %.loopexit320.loopexit.i ], [ %i.zu, %bb.cs ], [ %i.zu, %bb.cr ], [ %i.yx, %.loopexit320.loopexit384.i ] ; 2 uses
  tail call fastcc void @tdefl_optimize_huffman_table(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 19, i32 noundef 7, i32 noundef 0)
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 25 uses
  %i.aae = load i32, ptr %i.aad, align 4          ; 2 uses
  %i.aaf = shl i32 2, %i.aae
  %i.aag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 25 uses
  %i.aah = load i32, ptr %i.aag, align 8
  %i.aai = or i32 %i.aah, %i.aaf                  ; 3 uses
  store i32 %i.aai, ptr %i.aag, align 8
  %i.aaj = add i32 %i.aae, 2                      ; 4 uses
  store i32 %i.aaj, ptr %i.aad, align 4
  %i.aak = icmp ugt i32 %i.aaj, 7
  br i1 %i.aak, label %.lr.ph346.i, label %._crit_edge347.i

.lr.ph346.i:                                      ; preds = %.loopexit320.i
  %i.aal = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.pre418.i = load ptr, ptr %i.aal, align 8
  %.pre420.i = load ptr, ptr %i.aam, align 8
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cv, %.lr.ph346.i
  %i.aan = phi i32 [ %i.aaj, %.lr.ph346.i ], [ %i.aaz, %bb.cv ]
  %i.aao = phi i32 [ %i.aai, %.lr.ph346.i ], [ %i.aay, %bb.cv ] ; 2 uses
  %i.aap = phi ptr [ %.pre420.i, %.lr.ph346.i ], [ %i.aaw, %bb.cv ] ; 2 uses
  %i.aaq = phi ptr [ %.pre418.i, %.lr.ph346.i ], [ %i.aax, %bb.cv ] ; 4 uses
  %i.aar = icmp ult ptr %i.aaq, %i.aap
  br i1 %i.aar, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.aas = trunc i32 %i.aao to i8
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aaq, i64 1
  store ptr %i.aat, ptr %i.aal, align 8
  store i8 %i.aas, ptr %i.aaq, align 1
  %.pre.i3 = load ptr, ptr %i.aal, align 8
  %.pre419.i = load ptr, ptr %i.aam, align 8
  %.pre421.i = load i32, ptr %i.aag, align 8
  %.pre422.i = load i32, ptr %i.aad, align 4
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.aau = phi i32 [ %.pre422.i, %bb.cu ], [ %i.aan, %bb.ct ]
  %i.aav = phi i32 [ %.pre421.i, %bb.cu ], [ %i.aao, %bb.ct ]
  %i.aaw = phi ptr [ %.pre419.i, %bb.cu ], [ %i.aap, %bb.ct ]
  %i.aax = phi ptr [ %.pre.i3, %bb.cu ], [ %i.aaq, %bb.ct ]
  %i.aay = lshr i32 %i.aav, 8                     ; 3 uses
  store i32 %i.aay, ptr %i.aag, align 8
  %i.aaz = add i32 %i.aau, -8                     ; 4 uses
  store i32 %i.aaz, ptr %i.aad, align 4
  %i.aba = icmp ugt i32 %i.aaz, 7
  br i1 %i.aba, label %bb.ct, label %._crit_edge347.i, !llvm.loop !301

._crit_edge347.i:                                 ; preds = %bb.cv, %.loopexit320.i
  %i.abb = phi i32 [ %i.aai, %.loopexit320.i ], [ %i.aay, %bb.cv ]
  %storemerge.lcssa.i = phi i32 [ %i.aaj, %.loopexit320.i ], [ %i.aaz, %bb.cv ] ; 3 uses
  %i.abc = add nsw i32 %.0282.lcssa.i, -257
  %i.abd = shl nuw nsw i32 %i.abc, %storemerge.lcssa.i
  %i.abe = or i32 %i.abd, %i.abb                  ; 3 uses
  store i32 %i.abe, ptr %i.aag, align 8
  %i.abf = add nuw nsw i32 %storemerge.lcssa.i, 5 ; 3 uses
  store i32 %i.abf, ptr %i.aad, align 4
  %i.abg = icmp samesign ugt i32 %storemerge.lcssa.i, 2
  br i1 %i.abg, label %.lr.ph350.i, label %._crit_edge351.i

.lr.ph350.i:                                      ; preds = %._crit_edge347.i
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.pre424.i = load ptr, ptr %i.abh, align 8
  %.pre426.i = load ptr, ptr %i.abi, align 8
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cy, %.lr.ph350.i
  %i.abj = phi i32 [ %i.abf, %.lr.ph350.i ], [ %i.abv, %bb.cy ]
  %i.abk = phi i32 [ %i.abe, %.lr.ph350.i ], [ %i.abu, %bb.cy ] ; 2 uses
  %i.abl = phi ptr [ %.pre426.i, %.lr.ph350.i ], [ %i.abs, %bb.cy ] ; 2 uses
  %i.abm = phi ptr [ %.pre424.i, %.lr.ph350.i ], [ %i.abt, %bb.cy ] ; 4 uses
  %i.abn = icmp ult ptr %i.abm, %i.abl
  br i1 %i.abn, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.abo = trunc i32 %i.abk to i8
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abm, i64 1
  store ptr %i.abp, ptr %i.abh, align 8
  store i8 %i.abo, ptr %i.abm, align 1
  %.pre423.i = load ptr, ptr %i.abh, align 8
  %.pre425.i = load ptr, ptr %i.abi, align 8
  %.pre427.i = load i32, ptr %i.aag, align 8
  %.pre428.i = load i32, ptr %i.aad, align 4
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.abq = phi i32 [ %.pre428.i, %bb.cx ], [ %i.abj, %bb.cw ]
  %i.abr = phi i32 [ %.pre427.i, %bb.cx ], [ %i.abk, %bb.cw ]
  %i.abs = phi ptr [ %.pre425.i, %bb.cx ], [ %i.abl, %bb.cw ]
  %i.abt = phi ptr [ %.pre423.i, %bb.cx ], [ %i.abm, %bb.cw ]
  %i.abu = lshr i32 %i.abr, 8                     ; 3 uses
  store i32 %i.abu, ptr %i.aag, align 8
  %i.abv = add i32 %i.abq, -8                     ; 4 uses
  store i32 %i.abv, ptr %i.aad, align 4
  %i.abw = icmp ugt i32 %i.abv, 7
  br i1 %i.abw, label %bb.cw, label %._crit_edge351.i, !llvm.loop !302

._crit_edge351.i:                                 ; preds = %bb.cy, %._crit_edge347.i
  %i.abx = phi i32 [ %i.abe, %._crit_edge347.i ], [ %i.abu, %bb.cy ]
  %storemerge302.lcssa.i = phi i32 [ %i.abf, %._crit_edge347.i ], [ %i.abv, %bb.cy ] ; 3 uses
  %i.aby = add nsw i32 %.0281.lcssa.i, -1
  %i.abz = shl nuw nsw i32 %i.aby, %storemerge302.lcssa.i
  %i.aca = or i32 %i.abz, %i.abx                  ; 3 uses
  store i32 %i.aca, ptr %i.aag, align 8
  %i.acb = add nuw nsw i32 %storemerge302.lcssa.i, 5 ; 3 uses
  store i32 %i.acb, ptr %i.aad, align 4
  %i.acc = icmp samesign ugt i32 %storemerge302.lcssa.i, 2
  br i1 %i.acc, label %.lr.ph354.i, label %.preheader319.i

.lr.ph354.i:                                      ; preds = %._crit_edge351.i
  %i.acd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.pre430.i = load ptr, ptr %i.acd, align 8
  %.pre432.i = load ptr, ptr %i.ace, align 8
  br label %bb.cz

.preheader319.i:                                  ; preds = %bb.db, %._crit_edge351.i
  %i.acf = phi i32 [ %i.aca, %._crit_edge351.i ], [ %i.acu, %bb.db ]
  %storemerge303.lcssa.i = phi i32 [ %i.acb, %._crit_edge351.i ], [ %i.acv, %bb.db ] ; 3 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %0, i64 37258 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %0, i64 37273
  %i.aci = load i8, ptr %i.ach, align 1
  %.not304.i = icmp eq i8 %i.aci, 0
  br i1 %.not304.i, label %bb.dc, label %bb.dq

bb.cz:                                            ; preds = %bb.db, %.lr.ph354.i
  %i.acj = phi i32 [ %i.acb, %.lr.ph354.i ], [ %i.acv, %bb.db ]
  %i.ack = phi i32 [ %i.aca, %.lr.ph354.i ], [ %i.acu, %bb.db ] ; 2 uses
  %i.acl = phi ptr [ %.pre432.i, %.lr.ph354.i ], [ %i.acs, %bb.db ] ; 2 uses
  %i.acm = phi ptr [ %.pre430.i, %.lr.ph354.i ], [ %i.act, %bb.db ] ; 4 uses
  %i.acn = icmp ult ptr %i.acm, %i.acl
  br i1 %i.acn, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.aco = trunc i32 %i.ack to i8
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acm, i64 1
  store ptr %i.acp, ptr %i.acd, align 8
  store i8 %i.aco, ptr %i.acm, align 1
  %.pre429.i = load ptr, ptr %i.acd, align 8
  %.pre431.i = load ptr, ptr %i.ace, align 8
  %.pre433.i = load i32, ptr %i.aag, align 8
  %.pre434.i = load i32, ptr %i.aad, align 4
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.acq = phi i32 [ %.pre434.i, %bb.da ], [ %i.acj, %bb.cz ]
  %i.acr = phi i32 [ %.pre433.i, %bb.da ], [ %i.ack, %bb.cz ]
  %i.acs = phi ptr [ %.pre431.i, %bb.da ], [ %i.acl, %bb.cz ]
  %i.act = phi ptr [ %.pre429.i, %bb.da ], [ %i.acm, %bb.cz ]
  %i.acu = lshr i32 %i.acr, 8                     ; 3 uses
  store i32 %i.acu, ptr %i.aag, align 8
  %i.acv = add i32 %i.acq, -8                     ; 4 uses
  store i32 %i.acv, ptr %i.aad, align 4
  %i.acw = icmp ugt i32 %i.acv, 7
  br i1 %i.acw, label %bb.cz, label %.preheader319.i, !llvm.loop !303

bb.dc:                                            ; preds = %.preheader319.i
  %i.acx = getelementptr inbounds nuw i8, ptr %0, i64 37259
  %i.acy = load i8, ptr %i.acx, align 1
  %.not304.1.i = icmp eq i8 %i.acy, 0
  br i1 %.not304.1.i, label %bb.dd, label %bb.dq

bb.dd:                                            ; preds = %bb.dc
  %i.acz = getelementptr inbounds nuw i8, ptr %0, i64 37272
  %i.ada = load i8, ptr %i.acz, align 8
  %.not304.2.i = icmp eq i8 %i.ada, 0
  br i1 %.not304.2.i, label %bb.de, label %bb.dq

bb.de:                                            ; preds = %bb.dd
  %i.adb = getelementptr inbounds nuw i8, ptr %0, i64 37260
  %i.adc = load i8, ptr %i.adb, align 4
  %.not304.3.i = icmp eq i8 %i.adc, 0
  br i1 %.not304.3.i, label %bb.df, label %bb.dq

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
  br i1 %i.aey, label %bb.dr, label %.preheader318.i, !llvm.loop !304

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
  br i1 %i.aft, label %.lr.ph360.split.us.i, label %._crit_edge361.split.us.i, !llvm.loop !305

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
  br i1 %i.agh, label %.lr.ph360.split.i, label %._crit_edge361.i, !llvm.loop !306

._crit_edge361.i:                                 ; preds = %bb.dw, %._crit_edge361.split.us.i, %bb.du
  %i.agi = phi i32 [ %i.afj, %bb.du ], [ %i.afr, %._crit_edge361.split.us.i ], [ %i.agf, %bb.dw ] ; 3 uses
  %i.agj = phi i32 [ %i.afk, %bb.du ], [ %i.afs, %._crit_edge361.split.us.i ], [ %i.agg, %bb.dw ] ; 3 uses
  %indvars.iv.next414.i = add nuw nsw i64 %indvars.iv413.i, 1 ; 2 uses
  %exitcond417.not.i = icmp eq i64 %indvars.iv.next414.i, %wide.trip.count416.i
  br i1 %exitcond417.not.i, label %.preheader.i, label %bb.du, !llvm.loop !307

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
  br i1 %prol.iter.cmp.not, label %.lr.ph366.split.us.i.prol.loopexit, label %.lr.ph366.split.us.i.prol, !llvm.loop !308

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
  br i1 %i.ahp, label %.lr.ph366.split.us.i, label %._crit_edge367.split.us.i, !llvm.loop !309

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
  br i1 %i.aid, label %.lr.ph366.split.i, label %._crit_edge367.i, !llvm.loop !310

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
  %i.aim = getelementptr i8, ptr @.str.38, i64 %i.agq
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
  br i1 %prol.iter356.cmp.not, label %.lr.ph374.split.us.i.prol.loopexit, label %.lr.ph374.split.us.i.prol, !llvm.loop !311

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
  br i1 %i.aji, label %.lr.ph374.split.us.i, label %..loopexit_crit_edge.split.us.i, !llvm.loop !312

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
  br i1 %i.ajw, label %.lr.ph374.split.i, label %.loopexit.i, !llvm.loop !313

.loopexit.i:                                      ; preds = %bb.ec, %..loopexit_crit_edge.split.us.i, %bb.ea, %._crit_edge367.i
  %i.ajx = phi i32 [ %i.aie, %._crit_edge367.i ], [ %.lcssa314, %..loopexit_crit_edge.split.us.i ], [ %i.air, %bb.ea ], [ %i.aju, %bb.ec ] ; 2 uses
  %i.ajy = phi i32 [ %i.aif, %._crit_edge367.i ], [ %.lcssa313, %..loopexit_crit_edge.split.us.i ], [ %i.ais, %bb.ea ], [ %i.ajv, %bb.ec ] ; 2 uses
  %.1.i = phi i32 [ %i.agm, %._crit_edge367.i ], [ %i.aih, %..loopexit_crit_edge.split.us.i ], [ %i.aih, %bb.ea ], [ %i.aih, %bb.ec ] ; 2 uses
  %i.ajz = icmp ult i32 %.1.i, %.19.i
  br i1 %i.ajz, label %bb.dx, label %tdefl_start_dynamic_block.exit, !llvm.loop !314

tdefl_start_dynamic_block.exit:                   ; preds = %.loopexit.i, %.preheader.i
  %.pre189.i96 = phi i32 [ %i.agi, %.preheader.i ], [ %i.ajx, %.loopexit.i ]
  %.pre187.i94 = phi i32 [ %i.agj, %.preheader.i ], [ %i.ajy, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
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
  br i1 %i.amd, label %.lr.ph.i9, label %._crit_edge.i7, !llvm.loop !315

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
  br i1 %i.anb, label %.lr.ph131.i, label %._crit_edge132.i, !llvm.loop !316

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
  br i1 %i.ant, label %.lr.ph135.preheader.i, label %._crit_edge136.i

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
  br i1 %i.aoh, label %.lr.ph135.i, label %._crit_edge136.i, !llvm.loop !317

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
  br i1 %i.apc, label %.lr.ph139.i, label %.loopexit.i8, !llvm.loop !318

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
  br i1 %i.aqd, label %.lr.ph141.i, label %.loopexit.i8, !llvm.loop !319

.loopexit.i8:                                     ; preds = %bb.eo, %bb.er, %bb.ep, %._crit_edge136.i
  %i.aqe = phi i32 [ %i.apn, %bb.ep ], [ %i.aom, %._crit_edge136.i ], [ %i.aqb, %bb.er ], [ %i.apa, %bb.eo ] ; 2 uses
  %i.aqf = phi i32 [ %i.apo, %bb.ep ], [ %i.aon, %._crit_edge136.i ], [ %i.aqc, %bb.er ], [ %i.apb, %bb.eo ] ; 2 uses
  %.2.i = phi ptr [ %i.apd, %bb.ep ], [ %i.alb, %._crit_edge136.i ], [ %i.apd, %bb.er ], [ %i.alb, %bb.eo ] ; 2 uses
  %i.aqg = lshr i32 %.1113.i, 1
  %i.aqh = load ptr, ptr %i.akb, align 8
  %i.aqi = icmp ult ptr %.2.i, %i.aqh
  br i1 %i.aqi, label %bb.ed, label %._crit_edge146.i, !llvm.loop !320

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
  br i1 %prol.iter361.cmp.not, label %.lr.ph148.split.us.i.prol.loopexit, label %.lr.ph148.split.us.i.prol, !llvm.loop !321

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
  br i1 %i.arn, label %.lr.ph148.split.us.i, label %._crit_edge149.split.us.i, !llvm.loop !322

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
  br i1 %i.asb, label %.lr.ph148.split.i, label %tdefl_compress_lz_codes.exit, !llvm.loop !323

tdefl_compress_lz_codes.exit:                     ; preds = %bb.et, %._crit_edge146.._crit_edge149_crit_edge.i, %._crit_edge149.split.us.i
  %i.asc = phi ptr [ %.pre199.i, %._crit_edge146.._crit_edge149_crit_edge.i ], [ %i.ara, %._crit_edge149.split.us.i ], [ %i.arx, %bb.et ]
  %i.asd = phi ptr [ %.pre197.i, %._crit_edge146.._crit_edge149_crit_edge.i ], [ %i.aqz, %._crit_edge149.split.us.i ], [ %i.ary, %bb.et ]
  %i.ase = icmp ult ptr %i.asd, %i.asc
  %i.asf = zext i1 %i.ase to i32
  ret i32 %i.asf
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @tdefl_optimize_huffman_table(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 3) %1, i32 noundef range(i32 19, 289) %2, i32 noundef range(i32 7, 16) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #7 {
bb.a:
  %i.a = alloca [512 x i32], align 16             ; 16 uses
  %i.b = alloca [256 x i32], align 16             ; 15 uses
  %i.c = alloca [33 x i32], align 16              ; 32 uses
  %i.d = alloca [33 x i32], align 16              ; 9 uses
  %5 = alloca [288 x %struct.tdefl_sym_freq], align 16 ; 9 uses
  %6 = alloca [288 x %struct.tdefl_sym_freq], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
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
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !5

.new:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
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
  br i1 %niter202.ncmp.1, label %.unr-lcssa, label %bb.c, !llvm.loop !324

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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  %.not.i = icmp eq i32 %.1.lcssa, 0
  br i1 %.not.i, label %.critedge.preheader.split.split.i.preheader, label %.lr.ph.preheader.i

.critedge.preheader.split.split.i.preheader:      ; preds = %.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
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
  %i.bw = freeze i32 %.pre.i
  %i.bx = icmp eq i32 %.1.lcssa, %i.bw
  %spec.select.i = select i1 %i.bx, i64 1, i64 2
  %xtraiter209 = and i64 %wide.trip.count.i, 1
  %i.by = icmp eq i64 %i.bg, 0
  %unroll_iter213 = and i64 %wide.trip.count.i, 4294967294
  %lcmp.mod211.not = icmp eq i64 %xtraiter209, 0
  %lcmp.mod212 = trunc i32 %.1.lcssa to i1
  br label %.critedge.preheader.split.split.us.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %niter208 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter208.next.1, %.lr.ph.i ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i
  %i.ca = load i16, ptr %i.bz, align 8
  %i.cb = zext i16 %i.ca to i32                   ; 2 uses
  %i.cc = and i32 %i.cb, 255
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4
  %i.ch = lshr i32 %i.cb, 8
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1024 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 4
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i16, ptr %i.co, align 4
  %i.cq = zext i16 %i.cp to i32                   ; 2 uses
  %i.cr = and i32 %i.cq, 255
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cs ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 4
  %i.cw = lshr i32 %i.cq, 8
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1024 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.cz, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter208.next.1 = add i64 %niter208, 2         ; 2 uses
  %niter208.ncmp.1 = icmp eq i64 %niter208.next.1, %unroll_iter207
  br i1 %niter208.ncmp.1, label %.preheader45.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !325

.critedge.preheader.split.split.us.i:             ; preds = %._crit_edge.us.i, %.preheader45.i
  %indvars.iv68.i = phi i64 [ 0, %.preheader45.i ], [ %indvars.iv.next69.i, %._crit_edge.us.i ] ; 2 uses
  %.03854.us.i = phi i32 [ 0, %.preheader45.i ], [ %i.fe, %._crit_edge.us.i ] ; 4 uses
  %.03953.us.i = phi ptr [ %6, %.preheader45.i ], [ %.04052.us.i, %._crit_edge.us.i ] ; 47 uses
  %.04052.us.i = phi ptr [ %5, %.preheader45.i ], [ %.03953.us.i, %._crit_edge.us.i ] ; 4 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv68.i, 10
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.critedge.preheader.split.split.us.i
  %indvars.iv59.i = phi i64 [ 0, %.critedge.preheader.split.split.us.i ], [ %indvars.iv.next60.i.3, %bb.i ] ; 6 uses
  %.03748.us.i = phi i32 [ 0, %.critedge.preheader.split.split.us.i ], [ %i.ds, %bb.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv59.i
  store i32 %.03748.us.i, ptr %i.dd, align 16
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv59.i
  %i.df = load i32, ptr %i.de, align 16
  %i.dg = add i32 %i.df, %.03748.us.i             ; 2 uses
  %indvars.iv.next60.i = or disjoint i64 %indvars.iv59.i, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next60.i
  store i32 %i.dg, ptr %i.dh, align 4
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next60.i
  %i.dj = load i32, ptr %i.di, align 4
  %i.dk = add i32 %i.dj, %i.dg                    ; 2 uses
  %indvars.iv.next60.i.1 = or disjoint i64 %indvars.iv59.i, 2 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next60.i.1
  store i32 %i.dk, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next60.i.1
  %i.dn = load i32, ptr %i.dm, align 8
  %i.do = add i32 %i.dn, %i.dk                    ; 2 uses
  %indvars.iv.next60.i.2 = or disjoint i64 %indvars.iv59.i, 3 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next60.i.2
  store i32 %i.do, ptr %i.dp, align 4
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next60.i.2
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = add i32 %i.dr, %i.do
  %indvars.iv.next60.i.3 = add nuw nsw i64 %indvars.iv59.i, 4 ; 2 uses
  %exitcond62.not.i.3 = icmp eq i64 %indvars.iv.next60.i.3, 256
  br i1 %exitcond62.not.i.3, label %.preheader.us.i.preheader, label %bb.i, !llvm.loop !326

.preheader.us.i.preheader:                        ; preds = %bb.i
  br i1 %i.by, label %.preheader.us.i.epil.preheader, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %.preheader.us.i
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i.1, %.preheader.us.i ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %niter214 = phi i64 [ %niter214.next.1, %.preheader.us.i ], [ 0, %.preheader.us.i.preheader ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv63.i ; 2 uses
  %i.du = load i16, ptr %i.dt, align 8
  %i.dv = zext i16 %i.du to i32
  %i.dw = lshr i32 %i.dv, %.03854.us.i
  %i.dx = and i32 %i.dw, 255
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dy ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4            ; 2 uses
  %i.eb = add i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dz, align 4
  %i.ec = zext i32 %i.ea to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.ec
  %i.ee = load i32, ptr %i.dt, align 8
  store i32 %i.ee, ptr %i.ed, align 4
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv63.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4 ; 2 uses
  %i.eh = load i16, ptr %i.eg, align 4
  %i.ei = zext i16 %i.eh to i32
  %i.ej = lshr i32 %i.ei, %.03854.us.i
  %i.ek = and i32 %i.ej, 255
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4            ; 2 uses
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.em, align 4
  %i.ep = zext i32 %i.en to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.ep
  %i.er = load i32, ptr %i.eg, align 4
  store i32 %i.er, ptr %i.eq, align 4
  %indvars.iv.next64.i.1 = add nuw nsw i64 %indvars.iv63.i, 2 ; 2 uses
  %niter214.next.1 = add i64 %niter214, 2         ; 2 uses
  %niter214.ncmp.1 = icmp eq i64 %niter214.next.1, %unroll_iter213
  br i1 %niter214.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.preheader.us.i, !llvm.loop !327

._crit_edge.us.i.unr-lcssa:                       ; preds = %.preheader.us.i
  br i1 %lcmp.mod211.not, label %._crit_edge.us.i, label %.preheader.us.i.epil.preheader

.preheader.us.i.epil.preheader:                   ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i.preheader
  %indvars.iv63.i.epil.init = phi i64 [ 0, %.preheader.us.i.preheader ], [ %indvars.iv.next64.i.1, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod212)
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv63.i.epil.init ; 2 uses
  %i.et = load i16, ptr %i.es, align 4
  %i.eu = zext i16 %i.et to i32
  %i.ev = lshr i32 %i.eu, %.03854.us.i
  %i.ew = and i32 %i.ev, 255
  %i.ex = zext nneg i32 %i.ew to i64
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1 ; 2 uses
  %i.fe = add nuw nsw i32 %.03854.us.i, 8
  %exitcond72.not.i = icmp eq i64 %indvars.iv.next69.i, %spec.select.i
  br i1 %exitcond72.not.i, label %tdefl_radix_sort_syms.exit, label %.critedge.preheader.split.split.us.i, !llvm.loop !328

tdefl_radix_sort_syms.exit.thread:                ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
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
  br i1 %exitcond76.not.i.3, label %tdefl_radix_sort_syms.exit.thread, label %bb.j, !llvm.loop !326

tdefl_radix_sort_syms.exit:                       ; preds = %._crit_edge.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
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
  br i1 %exitcond.not.i88, label %._crit_edge.i, label %.lr.ph.i84, !llvm.loop !329

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
  br i1 %prol.iter.cmp.not, label %.lr.ph96.i.prol.loopexit, label %.lr.ph96.i.prol, !llvm.loop !330

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
  br i1 %.not140.i.3, label %.preheader.i81.preheader, label %.lr.ph96.i, !llvm.loop !331

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
  br i1 %exitcond118.not.i, label %.critedge.i, label %.lr.ph99.i, !llvm.loop !332

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
  br i1 %prol.iter219.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !333

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
  br i1 %i.jv, label %.lr.ph107.i.new, label %._crit_edge108.loopexit.i, !llvm.loop !334

._crit_edge108.loopexit.i:                        ; preds = %.lr.ph107.i.new, %.prol.loopexit
  %indvars.iv.next120.i.lcssa = phi i64 [ %indvars.iv.next120.i.lcssa.unr, %.prol.loopexit ], [ %indvars.iv.next120.i.3, %.lr.ph107.i.new ]
  %i.jw = trunc nsw i64 %indvars.iv.next120.i.lcssa to i32
  br label %._crit_edge108.i

._crit_edge108.i:                                 ; preds = %._crit_edge108.loopexit.i, %.critedge.i
  %.3.lcssa.i = phi i32 [ %.2111.i, %.critedge.i ], [ %i.jw, %._crit_edge108.loopexit.i ]
  %i.jx = shl nuw nsw i32 %.1.lcssa.i, 1
  %i.jy = add nuw nsw i32 %.0113.i, 1
  %.not89.i = icmp eq i32 %.1.lcssa.i, 0
  br i1 %.not89.i, label %tdefl_calculate_minimum_redundancy.exit, label %.preheader.i81, !llvm.loop !335

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
  br i1 %niter225.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !336

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
  br i1 %epil.iter221.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !337

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
  br i1 %exitcond.not.i91, label %.preheader34.i.preheader, label %scalar.ph, !llvm.loop !338

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
  br i1 %epil.iter227.cmp.not, label %.preheader.i92, label %.preheader34.i.epil, !llvm.loop !339

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
  br i1 %niter232.ncmp.3.not, label %.preheader.i92.unr-lcssa, label %.preheader34.i, !llvm.loop !340

.lr.ph.i93:                                       ; preds = %.preheader.i92, %.loopexit.i
  %i.nr = phi i32 [ %i.ob, %.loopexit.i ], [ %.lcssa182, %.preheader.i92 ]
  %.143.i = phi i32 [ %i.oc, %.loopexit.i ], [ %.lcssa190, %.preheader.i92 ]
  %i.ns = add nsw i32 %i.nr, -1                   ; 2 uses
  store i32 %i.ns, ptr %i.lk, align 4
  br label %bb.v

bb.u:                                             ; preds = %bb.v
  %i.nt = icmp sgt i64 %indvars.iv51.i183, 2
  br i1 %i.nt, label %bb.v, label %.loopexit.i, !llvm.loop !341

bb.v:                                             ; preds = %.lr.ph.i93, %bb.u
  %indvars.iv51.i183 = phi i64 [ %i.lj, %.lr.ph.i93 ], [ %indvars.iv.next52.i, %bb.u ] ; 3 uses
  %indvars.iv.next52.i = add nsw i64 %indvars.iv51.i183, -1 ; 3 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next52.i
  %i.nv = load i32, ptr %i.nu, align 4            ; 2 uses
  %.not32.i = icmp eq i32 %i.nv, 0
  br i1 %.not32.i, label %bb.u, label %bb.w, !llvm.loop !341

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
  br i1 %.not.i94, label %tdefl_huffman_enforce_max_code_size.exit, label %.lr.ph.i93, !llvm.loop !342

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
  br i1 %prol.iter237.cmp.not, label %.prol.loopexit234, label %.prol.preheader233, !llvm.loop !343

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
  br i1 %i.pq, label %.lr.ph109.new, label %._crit_edge110.loopexit, !llvm.loop !344

._crit_edge110.loopexit:                          ; preds = %.lr.ph109.new, %.prol.loopexit234
  %indvars.iv.next138.lcssa = phi i64 [ %indvars.iv.next138.lcssa.unr, %.prol.loopexit234 ], [ %indvars.iv.next138.3, %.lr.ph109.new ]
  %i.pr = trunc nsw i64 %indvars.iv.next138.lcssa to i32
  br label %._crit_edge110

._crit_edge110:                                   ; preds = %._crit_edge110.loopexit, %bb.x
  %.172.lcssa = phi i32 [ %.071112, %bb.x ], [ %i.pr, %._crit_edge110.loopexit ]
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %bb.y, label %bb.x, !llvm.loop !345

bb.y:                                             ; preds = %._crit_edge110
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
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
  br i1 %epil.iter.cmp.not, label %.loopexit.loopexit, label %bb.z, !llvm.loop !346

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
  br i1 %epil.iter240.cmp.not, label %.preheader, label %bb.aa, !llvm.loop !347

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
  br i1 %niter244.ncmp.3, label %.preheader.unr-lcssa, label %bb.ab, !llvm.loop !348

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
  br i1 %niter255.ncmp.3.not, label %.unr-lcssa246, label %bb.ae, !llvm.loop !6

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
  br i1 %epil.iter249.cmp.not, label %.epilog-lcssa251, label %bb.af, !llvm.loop !349

.epilog-lcssa251:                                 ; preds = %bb.af, %.unr-lcssa246
  %.lcssa = phi i32 [ %i.sg, %.unr-lcssa246 ], [ %i.sk, %bb.af ]
  %i.sm = trunc i32 %.lcssa to i16
  %i.sn = getelementptr inbounds nuw [2 x i8], ptr %i.qm, i64 %indvars.iv150
  store i16 %i.sm, ptr %i.sn, align 2
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ac, %.epilog-lcssa251
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count153
  br i1 %exitcond154.not, label %bb.ah, label %bb.ac, !llvm.loop !7

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umax.v16i32(<16 x i32>, <16 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(1) }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}

!0 = distinct !{!0, !11}
!1 = distinct !{!1, !11}
!2 = distinct !{!2, !11}
!3 = distinct !{ptr @stbi__get8, null}
!4 = distinct !{!4, !11}
!5 = distinct !{!5, !11}
!6 = distinct !{!6, !11}
!7 = distinct !{!7, !11}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!"branch_weights", i32 4, i32 12}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{!"llvm.loop.unswitch.partial.disable"}
!17 = !{!"branch_weights", i32 4, i32 28}
!18 = distinct !{!18, i1 false, !"LVerDomain"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !11, !12, !13}
!22 = distinct !{!22, !11, !12, !13}
!23 = distinct !{!23, !11, !12}
!24 = !{!19}
!25 = !{!20}
!26 = distinct !{!26, i1 false, !"LVerDomain"}
!27 = distinct !{!27, !26}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !11, !12, !13}
!30 = distinct !{!30, !11, !12, !13}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !11, !12}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = !{!27}
!38 = !{!28}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
!41 = distinct !{null, null, null, ptr @stbi__get8, null}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{null, null, null}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !11}
!48 = distinct !{!48, !11, !16}
!49 = distinct !{!49, !11}
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11, !16}
!52 = distinct !{!52, !11}
!53 = distinct !{!53, !11}
!54 = distinct !{!54, !11}
!55 = distinct !{!55, !11}
!56 = distinct !{!56, !11}
!57 = distinct !{!57, !11}
!58 = distinct !{!58, !11, !16}
!59 = distinct !{!59, !11}
!60 = distinct !{!60, !11}
!61 = distinct !{!61, !11, !16}
!62 = distinct !{null, null, null, null}
!63 = distinct !{null, null, null, ptr @stbi__get8, null}
!64 = distinct !{!64, !11}
!65 = distinct !{!65, !11}
!66 = distinct !{!66, i1 false, !"LVerDomain"}
!67 = distinct !{!67, !66}
!68 = distinct !{!68, !66}
!69 = distinct !{!69, !11, !12}
!70 = distinct !{null, null, null}
!71 = distinct !{!71, !11}
!72 = distinct !{!72, !11}
!73 = distinct !{!73, !11}
!74 = distinct !{!74, !11}
!75 = distinct !{!75, !11}
!76 = distinct !{!76, !11}
!77 = distinct !{!77, !11}
!78 = distinct !{!78, !11}
!79 = distinct !{null}
!80 = distinct !{!80, !11}
!81 = distinct !{!81, !11}
!82 = distinct !{!82, !11}
!83 = distinct !{!83, !11}
!84 = distinct !{!84, !11}
!85 = distinct !{!85, !11}
!86 = distinct !{!86, !11}
!87 = distinct !{!87, !11}
!88 = distinct !{!88, !11}
!89 = distinct !{!89, !11}
!90 = distinct !{!90, !11}
!91 = distinct !{!91, !11}
!92 = !{!67}
!93 = !{!68}
!94 = distinct !{!94, !11}
!95 = distinct !{!95, !11}
!96 = distinct !{!96, !11}
!97 = distinct !{!97, i1 false, !"LVerDomain"}
!98 = distinct !{!98, !97}
!99 = distinct !{!99, !97}
!100 = distinct !{!100, !97}
!101 = distinct !{!101, !11, !12, !13}
!102 = distinct !{!102, !11, !12}
!103 = !{!98}
!104 = !{!99}
!105 = !{!100}
!106 = !{!98, !99}
!107 = distinct !{!107, !11, !12, !13}
!108 = distinct !{!108, !11, !12, !13}
!109 = distinct !{!109, !11, !12}
!110 = distinct !{!110, i1 false, !"LVerDomain"}
!111 = distinct !{!111, !110}
!112 = distinct !{!112, !110}
!113 = distinct !{!113, !11, !12, !13}
!114 = distinct !{!114, !11, !12}
!115 = !{!111}
!116 = !{!112}
!117 = distinct !{!117, !11, !12, !13}
!118 = distinct !{!118, !11, !12, !13}
!119 = distinct !{!119, !11, !13, !12}
!120 = distinct !{!120, !11}
!121 = distinct !{!121, !11}
!122 = distinct !{null}
!123 = distinct !{!123, !11}
!124 = distinct !{!124, !11}
!125 = distinct !{!125, !11}
!126 = distinct !{!126, !11}
!127 = distinct !{!127, !11}
!128 = distinct !{!128, !11}
!129 = distinct !{!129, !11}
!130 = distinct !{!130, !11}
!131 = distinct !{null}
!132 = distinct !{!132, !11}
!133 = distinct !{!133, !15}
!134 = distinct !{!134, !11}
!135 = distinct !{!135, !11}
!136 = distinct !{!136, !11}
!137 = distinct !{!137, !11}
!138 = distinct !{null}
!139 = distinct !{!139, !11}
!140 = distinct !{!140, !11}
!141 = distinct !{!141, !11, !16}
!142 = distinct !{!142, !11}
!143 = distinct !{!143, !11}
!144 = distinct !{!144, !11}
!145 = distinct !{!145, !11}
!146 = distinct !{!146, !11}
!147 = distinct !{!147, !11}
!148 = distinct !{null, null, ptr @stbi__get8, null}
!149 = distinct !{null, null, null, null, ptr @stbi__get8, null}
!150 = distinct !{null, null, null, null}
!151 = distinct !{null, null, null, ptr @stbi__get8, null}
!152 = distinct !{!152, !11}
!153 = distinct !{!153, !11}
!154 = distinct !{!154, !11}
!155 = distinct !{!155, !11}
!156 = distinct !{!156, !11}
!157 = distinct !{null, null, null, null}
!158 = distinct !{!158, !11}
!159 = distinct !{!159, !15}
!160 = distinct !{!160, !11}
!161 = distinct !{!161, !11}
!162 = distinct !{!162, !11}
!163 = distinct !{!163, !11}
!164 = distinct !{!164, !11, !12, !13}
!165 = distinct !{!165, !11, !12, !13}
!166 = distinct !{!166, !15}
!167 = distinct !{!167, !11, !12}
!168 = distinct !{!168, !11}
!169 = distinct !{!169, !11}
!170 = distinct !{!170, !11}
!171 = distinct !{!171, !11}
!172 = distinct !{!172, !11}
!173 = distinct !{!173, !11}
!174 = distinct !{!174, !11}
!175 = distinct !{!175, !11}
!176 = distinct !{!176, !15}
!177 = distinct !{!177, !15}
!178 = distinct !{!178, !11}
!179 = distinct !{!179, !11}
!180 = distinct !{!180, !15}
!181 = distinct !{null, null, null}
!182 = distinct !{!182, !11, !12, !13}
!183 = distinct !{!183, !11, !12, !13}
!184 = distinct !{!184, !11, !12, !13}
!185 = distinct !{!185, !11, !12, !13}
!186 = distinct !{!186, !11, !12, !13}
!187 = distinct !{!187, !11, !12, !13}
!188 = distinct !{!188, !15}
!189 = distinct !{!189, !11, !12, !13}
!190 = distinct !{!190, !11, !12, !13}
!191 = distinct !{!191, !15}
!192 = distinct !{!192, !15}
!193 = distinct !{!193, !11, !12, !13}
!194 = distinct !{!194, !11, !12, !13}
!195 = distinct !{!195, !11, !13, !12}
!196 = distinct !{!196, !11}
!197 = distinct !{!197, !11}
!198 = distinct !{!198, !11, !13, !12}
!199 = distinct !{!199, !11}
!200 = distinct !{!200, !11}
!201 = distinct !{!201, !11}
!202 = distinct !{!202, !11, !13, !12}
!203 = distinct !{!203, !11, !13, !12}
!204 = distinct !{!204, !11, !13, !12}
!205 = distinct !{!205, !11, !13, !12}
!206 = distinct !{!206, !11}
!207 = distinct !{!207, !11}
!208 = !{!"branch_weights", i32 8, i32 8}
!209 = distinct !{!209, !11, !12, !13}
!210 = distinct !{!210, !11, !12, !13}
!211 = distinct !{!211, !11, !13, !12}
!212 = distinct !{!212, !11}
!213 = distinct !{!213, !11}
!214 = distinct !{!214, !11, !13, !12}
!215 = distinct !{!215, !11}
!216 = distinct !{!216, !11}
!217 = distinct !{!217, !11}
!218 = distinct !{!218, !11}
!219 = distinct !{!219, !11}
!220 = distinct !{!220, !11}
!221 = distinct !{!221, !11}
!222 = distinct !{!222, !11}
!223 = distinct !{!223, !11}
!224 = distinct !{!224, !11}
!225 = distinct !{!225, !15}
!226 = distinct !{!226, !11}
!227 = distinct !{!227, !11, !12}
!228 = distinct !{!228, !11}
!229 = distinct !{!229, !11, !12, !13}
!230 = distinct !{!230, !11, !12, !13}
!231 = distinct !{!231, !15}
!232 = distinct !{!232, !11, !12, !13}
!233 = distinct !{!233, !11, !12, !13}
!234 = distinct !{!234, !11, !12, !13}
!235 = distinct !{!235, !11, !12, !13}
!236 = distinct !{!236, !15}
!237 = distinct !{!237, !11, !12, !13}
!238 = distinct !{!238, !11, !12, !13}
!239 = distinct !{!239, !11, !12}
!240 = distinct !{!240, !11, !12}
!241 = distinct !{!241, !11, !12, !13}
!242 = distinct !{!242, !11, !12, !13}
!243 = distinct !{!243, !11, !12}
!244 = distinct !{!244, !11, !12}
!245 = distinct !{!245, !11, !12, !13}
!246 = distinct !{!246, !11, !12, !13}
!247 = distinct !{!247, !11, !12}
!248 = distinct !{!248, !11, !12}
!249 = distinct !{!249, !11, !12, !13}
!250 = distinct !{!250, !11, !12, !13}
!251 = distinct !{!251, !11, !12}
!252 = distinct !{!252, !11}
!253 = distinct !{!253, !11}
!254 = distinct !{!254, !11}
!255 = distinct !{!255, !15}
!256 = distinct !{!256, !11}
!257 = distinct !{!257, !11}
!258 = distinct !{!258, i1 false, !"LVerDomain"}
!259 = distinct !{!259, !258}
!260 = distinct !{!260, !258}
!261 = distinct !{!261, !11, !12, !13}
!262 = distinct !{!262, !15}
!263 = distinct !{!263, !11, !12}
!264 = distinct !{!264, !11}
!265 = distinct !{!265, !11}
!266 = distinct !{!266, !11}
!267 = distinct !{!267, !15}
!268 = distinct !{!268, !11}
!269 = !{!"branch_weights", i32 8, i32 24}
!270 = !{!259}
!271 = !{!260}
!272 = distinct !{!272, !11}
!273 = distinct !{!273, !11}
!274 = distinct !{!274, !11}
!275 = distinct !{!275, !11}
!276 = distinct !{!276, !15}
!277 = distinct !{!277, !11}
!278 = distinct !{!278, !11}
!279 = distinct !{!279, !11}
!280 = distinct !{!280, !11}
!281 = distinct !{!281, !11}
!282 = distinct !{!282, !11}
!283 = distinct !{!283, !11}
!284 = distinct !{!284, !11}
!285 = distinct !{!285, !15}
!286 = distinct !{!286, !11, !16}
!287 = distinct !{!287, !11}
!288 = distinct !{!288, !11, !16}
!289 = distinct !{!289, !11}
!290 = distinct !{!290, !11}
!291 = distinct !{!291, !11, !16}
!292 = distinct !{!292, !11}
!293 = distinct !{!293, !11}
!294 = distinct !{!294, !11}
!295 = distinct !{!295, !11, !16}
!296 = distinct !{!296, !15}
!297 = distinct !{!297, !15}
!298 = distinct !{!298, !15}
!299 = distinct !{!299, !11}
!300 = distinct !{!300, !11}
!301 = distinct !{!301, !11}
!302 = distinct !{!302, !11}
!303 = distinct !{!303, !11}
!304 = distinct !{!304, !11}
!305 = distinct !{!305, !11}
!306 = distinct !{!306, !11, !16}
!307 = distinct !{!307, !11}
!308 = distinct !{!308, !15}
!309 = distinct !{!309, !11}
!310 = distinct !{!310, !11, !16}
!311 = distinct !{!311, !15}
!312 = distinct !{!312, !11}
!313 = distinct !{!313, !11, !16}
!314 = distinct !{!314, !11}
!315 = distinct !{!315, !11}
!316 = distinct !{!316, !11}
!317 = distinct !{!317, !11}
!318 = distinct !{!318, !11}
!319 = distinct !{!319, !11}
!320 = distinct !{!320, !11}
!321 = distinct !{!321, !15}
!322 = distinct !{!322, !11}
!323 = distinct !{!323, !11, !16}
!324 = distinct !{!324, !11}
!325 = distinct !{!325, !11}
!326 = distinct !{!326, !11}
!327 = distinct !{!327, !11}
!328 = distinct !{!328, !11}
!329 = distinct !{!329, !11}
!330 = distinct !{!330, !15}
!331 = distinct !{!331, !11}
!332 = distinct !{!332, !11}
!333 = distinct !{!333, !15}
!334 = distinct !{!334, !11}
!335 = distinct !{!335, !11}
!336 = distinct !{!336, !11}
!337 = distinct !{!337, !15}
!338 = distinct !{!338, !11, !13, !12}
!339 = distinct !{!339, !15}
!340 = distinct !{!340, !11}
!341 = distinct !{!341, !11}
!342 = distinct !{!342, !11}
!343 = distinct !{!343, !15}
!344 = distinct !{!344, !11}
!345 = distinct !{!345, !11}
!346 = distinct !{!346, !15}
!347 = distinct !{!347, !15}
!348 = distinct !{!348, !11}
!349 = distinct !{!349, !15}
end_hunk_1

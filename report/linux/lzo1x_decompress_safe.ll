inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@lzo1x_decompress_safe:bb.a
  %i.bb = load i8, ptr %.7303.prol, align 1
  %i.bc = getelementptr i8, ptr %.3288.prol, i64 1 ; 3 uses
  store i8 %i.bb, ptr %.3288.prol, align 1
  %i.bd = add i64 %.3316.prol, -1                 ; 2 uses
  %prol.iter1017.next = add i64 %prol.iter1017, 1 ; 2 uses
  %prol.iter1017.cmp.not = icmp eq i64 %prol.iter1017.next, %xtraiter1015
  br i1 %prol.iter1017.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !16

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.lcssa908.unr = phi ptr [ poison, %.preheader.preheader ], [ %i.ba, %.preheader.prol ]
  %.lcssa.unr = phi ptr [ poison, %.preheader.preheader ], [ %i.bc, %.preheader.prol ]
  %.3316.unr = phi i64 [ %.2315, %.preheader.preheader ], [ %i.bd, %.preheader.prol ]
  %.7303.unr = phi ptr [ %.5301, %.preheader.preheader ], [ %i.ba, %.preheader.prol ]
  %.3288.unr = phi ptr [ %.1286, %.preheader.preheader ], [ %i.bc, %.preheader.prol ]
  %i.be = icmp ult i64 %.2315, 8
  br i1 %i.be, label %.preheader434.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.3316 = phi i64 [ %i.cd, %.preheader ], [ %.3316.unr, %.preheader.prol.loopexit ]
  %.7303 = phi ptr [ %i.ca, %.preheader ], [ %.7303.unr, %.preheader.prol.loopexit ] ; 9 uses
  %.3288 = phi ptr [ %i.cc, %.preheader ], [ %.3288.unr, %.preheader.prol.loopexit ] ; 9 uses
  %i.bf = getelementptr i8, ptr %.7303, i64 1
  %i.bg = load i8, ptr %.7303, align 1
  %i.bh = getelementptr i8, ptr %.3288, i64 1
  store i8 %i.bg, ptr %.3288, align 1
  %i.bi = getelementptr i8, ptr %.7303, i64 2
  %i.bj = load i8, ptr %i.bf, align 1
  %i.bk = getelementptr i8, ptr %.3288, i64 2
  store i8 %i.bj, ptr %i.bh, align 1
  %i.bl = getelementptr i8, ptr %.7303, i64 3
  %i.bm = load i8, ptr %i.bi, align 1
  %i.bn = getelementptr i8, ptr %.3288, i64 3
  store i8 %i.bm, ptr %i.bk, align 1
  %i.bo = getelementptr i8, ptr %.7303, i64 4
  %i.bp = load i8, ptr %i.bl, align 1
  %i.bq = getelementptr i8, ptr %.3288, i64 4
  store i8 %i.bp, ptr %i.bn, align 1
  %i.br = getelementptr i8, ptr %.7303, i64 5
  %i.bs = load i8, ptr %i.bo, align 1
  %i.bt = getelementptr i8, ptr %.3288, i64 5
  store i8 %i.bs, ptr %i.bq, align 1
  %i.bu = getelementptr i8, ptr %.7303, i64 6
  %i.bv = load i8, ptr %i.br, align 1
  %i.bw = getelementptr i8, ptr %.3288, i64 6
  store i8 %i.bv, ptr %i.bt, align 1
  %i.bx = getelementptr i8, ptr %.7303, i64 7
  %i.by = load i8, ptr %i.bu, align 1
  %i.bz = getelementptr i8, ptr %.3288, i64 7
  store i8 %i.by, ptr %i.bw, align 1
  %i.ca = getelementptr i8, ptr %.7303, i64 8     ; 2 uses
  %i.cb = load i8, ptr %i.bx, align 1
  %i.cc = getelementptr i8, ptr %.3288, i64 8     ; 2 uses
  store i8 %i.cb, ptr %i.bz, align 1
  %i.cd = add i64 %.3316, -8                      ; 2 uses
  %.not378.7 = icmp eq i64 %i.cd, 0
  br i1 %.not378.7, label %.preheader434.loopexit, label %.preheader, !llvm.loop !18

.loopexit.loopexit:                               ; preds = %bb.o
  %i.ce = getelementptr i8, ptr %.1286, i64 %.2315
  br label %.preheader434

bb.r:                                             ; preds = %bb.h
  %i.cf = and i64 %i.w, 3
  %i.cg = getelementptr i8, ptr %.0285, i64 -1
  %i.ch = lshr i64 %i.w, 2
  %i.ci = sub nsw i64 0, %i.ch
  %i.cj = getelementptr i8, ptr %i.cg, i64 %i.ci
  %i.ck = getelementptr i8, ptr %.1297, i64 2
  %i.cl = load i8, ptr %i.u, align 1
  %i.cm = zext i8 %i.cl to i64
  %.neg373 = mul nsw i64 %i.cm, -4
  %i.cn = getelementptr i8, ptr %i.cj, i64 %.neg373 ; 3 uses
  %i.co = icmp ult ptr %i.cn, %2
  br i1 %i.co, label %.loopexit436, label %bb.s, !prof !10

bb.s:                                             ; preds = %bb.r
  %i.cp = ptrtoint ptr %.0285 to i64              ; 2 uses
  %i.cq = sub i64 %i.o, %i.cp
  %i.cr = icmp ult i64 %i.cq, 2
  br i1 %i.cr, label %.thread414, label %bb.t, !prof !10

bb.t:                                             ; preds = %bb.s
  %i.cs = load i8, ptr %i.cn, align 1
  store i8 %i.cs, ptr %.0285, align 1
  %i.ct = getelementptr i8, ptr %i.cn, i64 1
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = getelementptr i8, ptr %.0285, i64 1
  store i8 %i.cu, ptr %i.cv, align 1
  %i.cw = getelementptr i8, ptr %.0285, i64 2
  br label %.thread409

bb.u:                                             ; preds = %bb.h
  %i.cx = getelementptr i8, ptr %.0285, i64 -2049
  %i.cy = lshr i64 %i.w, 2
  %i.cz = sub nsw i64 0, %i.cy
  %i.da = getelementptr i8, ptr %i.cx, i64 %i.cz
  %i.db = getelementptr i8, ptr %.1297, i64 2
  %i.dc = load i8, ptr %i.u, align 1
  %i.dd = zext i8 %i.dc to i64
  %.neg369 = mul nsw i64 %i.dd, -4
  %i.de = getelementptr i8, ptr %i.da, i64 %.neg369
  br label %bb.ap

bb.v:                                             ; preds = %bb.g
  %i.df = icmp ugt i8 %i.v, 63
  br i1 %i.df, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dg = getelementptr i8, ptr %.0285, i64 -1
  %i.dh = lshr i64 %i.w, 2
  %i.di = and i64 %i.dh, 7
  %i.dj = sub nsw i64 0, %i.di
  %i.dk = getelementptr i8, ptr %i.dg, i64 %i.dj
  %i.dl = getelementptr i8, ptr %.1297, i64 2
  %i.dm = load i8, ptr %i.u, align 1
  %i.dn = zext i8 %i.dm to i64
  %.neg = mul nsw i64 %i.dn, -8
  %i.do = getelementptr i8, ptr %i.dk, i64 %.neg
  %i.dp = lshr i64 %i.w, 5
  %i.dq = add nuw nsw i64 %i.dp, 1
  br label %bb.ap

bb.x:                                             ; preds = %bb.v
  %i.dr = icmp samesign ugt i8 %i.v, 31
  br i1 %i.dr, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.ds = and i64 %i.w, 31                        ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %.preheader430, label %bb.ac, !prof !10

.preheader430:                                    ; preds = %bb.y, %bb.z
  %.9305 = phi ptr [ %i.dw, %bb.z ], [ %i.u, %bb.y ] ; 4 uses
  %i.du = load i8, ptr %.9305, align 1            ; 2 uses
  %i.dv = icmp eq i8 %i.du, 0
  br i1 %i.dv, label %bb.z, label %bb.aa, !prof !10

bb.z:                                             ; preds = %.preheader430
  %i.dw = getelementptr i8, ptr %.9305, i64 1     ; 2 uses
  %.not367 = icmp eq ptr %i.a, %i.dw
  br i1 %.not367, label %.thread389, label %.preheader430, !prof !10, !llvm.loop !19

bb.aa:                                            ; preds = %.preheader430
  %i.dx = ptrtoint ptr %.9305 to i64
  %i.dy = ptrtoint ptr %i.u to i64
  %i.dz = sub i64 %i.dx, %i.dy                    ; 2 uses
  %i.ea = icmp ugt i64 %i.dz, 72340172838076671
  br i1 %i.ea, label %.thread, label %bb.ab, !prof !10

bb.ab:                                            ; preds = %bb.aa
  %i.eb = mul nuw i64 %i.dz, 255
  %i.ec = getelementptr i8, ptr %.9305, i64 1     ; 2 uses
  %i.ed = zext i8 %i.du to i64
  %i.ee = add nuw nsw i64 %i.ed, 31
  %i.ef = add nuw i64 %i.ee, %i.eb
  %i.eg = ptrtoint ptr %i.ec to i64
  %i.eh = sub i64 %i.n, %i.eg
  %i.ei = icmp ult i64 %i.eh, 2
  br i1 %i.ei, label %.thread389, label %bb.ac, !prof !10

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %.5318.in = phi i64 [ %i.ds, %bb.y ], [ %i.ef, %bb.ab ]
  %.11307 = phi ptr [ %i.u, %bb.y ], [ %i.ec, %bb.ab ] ; 2 uses
  %.5318 = add nuw i64 %.5318.in, 2
  %i.ej = getelementptr i8, ptr %.0285, i64 -1
  %.11307.val = load i16, ptr %.11307, align 1
  %i.ek = zext i16 %.11307.val to i64             ; 2 uses
  %i.el = getelementptr i8, ptr %.11307, i64 2
  %i.em = lshr i64 %i.ek, 2
  %i.en = sub nsw i64 0, %i.em
  %i.eo = getelementptr i8, ptr %i.ej, i64 %i.en
  br label %bb.ap

bb.ad:                                            ; preds = %bb.x
  %i.ep = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.eq = sub i64 %i.n, %i.ep                     ; 2 uses
  %i.er = icmp ult i64 %i.eq, 2
  br i1 %i.er, label %.thread389, label %bb.ae, !prof !10

bb.ae:                                            ; preds = %bb.ad
  %.val381 = load i16, ptr %i.u, align 1
  %i.es = zext i16 %.val381 to i64                ; 3 uses
  %i.et = and i64 %i.es, 65532
  %i.eu = icmp ne i64 %i.et, 65532
  %i.ev = and i64 %i.w, 24
  %i.ew = icmp ne i64 %i.ev, 24
  %or.cond.not424 = or i1 %i.ew, %i.eu
  %brmerge = select i1 %or.cond.not424, i1 true, i1 %.0333, !prof !20
  br i1 %brmerge, label %bb.ai, label %bb.af, !prof !21

bb.af:                                            ; preds = %bb.ae
  %.not365 = icmp eq i64 %i.eq, 2
  br i1 %.not365, label %.thread389, label %bb.ag, !prof !10

bb.ag:                                            ; preds = %bb.af
  %i.ex = and i64 %i.w, 7
  %i.ey = getelementptr i8, ptr %.1297, i64 3
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = zext i8 %i.ez to i64
  %i.fb = shl nuw nsw i64 %i.fa, 3
  %4 = add nuw nsw i64 %i.ex, 4
  %i.fc = add nuw nsw i64 %4, %i.fb               ; 3 uses
  %i.fd = ptrtoint ptr %.0285 to i64              ; 2 uses
  %i.fe = sub i64 %i.o, %i.fd
  %.not366 = icmp ult i64 %i.fe, %i.fc
  br i1 %.not366, label %.thread414, label %bb.ah, !prof !10

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %.0285, i8 0, i64 %i.fc, i1 false)
  %i.ff = getelementptr i8, ptr %.0285, i64 %i.fc
  %i.fg = and i64 %i.es, 3
  %i.fh = getelementptr i8, ptr %.1297, i64 4
  br label %.thread409

bb.ai:                                            ; preds = %bb.ae
  %i.fi = shl nuw nsw i64 %i.w, 11
  %i.fj = and i64 %i.fi, 16384
  %i.fk = and i64 %i.w, 7                         ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %.preheader432, label %bb.an, !prof !10

.preheader432:                                    ; preds = %bb.ai, %bb.aj
  %.12308 = phi ptr [ %i.fo, %bb.aj ], [ %i.u, %bb.ai ] ; 5 uses
  %i.fm = load i8, ptr %.12308, align 1           ; 2 uses
  %i.fn = icmp eq i8 %i.fm, 0
  br i1 %i.fn, label %bb.aj, label %bb.ak, !prof !10

bb.aj:                                            ; preds = %.preheader432
  %i.fo = getelementptr i8, ptr %.12308, i64 1    ; 2 uses
  %.not363 = icmp eq ptr %i.a, %i.fo
  br i1 %.not363, label %.thread389, label %.preheader432, !prof !10, !llvm.loop !22

bb.ak:                                            ; preds = %.preheader432
  %i.fp = ptrtoint ptr %.12308 to i64
  %i.fq = sub i64 %i.fp, %i.ep                    ; 2 uses
  %i.fr = icmp ugt i64 %i.fq, 72340172838076671
  br i1 %i.fr, label %.thread, label %bb.al, !prof !10

bb.al:                                            ; preds = %bb.ak
  %i.fs = getelementptr i8, ptr %.12308, i64 1    ; 2 uses
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = sub i64 %i.n, %i.ft
  %i.fv = icmp ult i64 %i.fu, 2
  br i1 %i.fv, label %.thread389, label %bb.am, !prof !10

bb.am:                                            ; preds = %bb.al
  %i.fw = mul nuw i64 %i.fq, 255
  %i.fx = zext i8 %i.fm to i64
  %i.fy = add nuw nsw i64 %i.fx, 7
  %i.fz = add nuw i64 %i.fy, %i.fw
  %.val = load i16, ptr %i.fs, align 1
  %i.ga = zext i16 %.val to i64
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ai
  %.1324 = phi i64 [ %i.ga, %bb.am ], [ %i.es, %bb.ai ] ; 2 uses
  %.7320.in = phi i64 [ %i.fz, %bb.am ], [ %i.fk, %bb.ai ]
  %i.gb = phi ptr [ %.12308, %bb.am ], [ %.1297, %bb.ai ]
  %.7320 = add nuw i64 %.7320.in, 2               ; 2 uses
  %i.gc = getelementptr i8, ptr %i.gb, i64 3      ; 3 uses
  %i.gd = lshr i64 %.1324, 2
  %i.ge = or disjoint i64 %i.gd, %i.fj            ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 0
  br i1 %i.gf, label %bb.bb, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gg = sub nsw i64 0, %i.ge
  %i.gh = getelementptr i8, ptr %.0285, i64 %i.gg
  %i.gi = getelementptr i8, ptr %i.gh, i64 -16384
  br label %bb.ap

bb.ap:                                            ; preds = %bb.w, %bb.ao, %bb.ac, %bb.u
  %.0329 = phi ptr [ %i.de, %bb.u ], [ %i.do, %bb.w ], [ %i.eo, %bb.ac ], [ %i.gi, %bb.ao ] ; 7 uses
  %.2325.in = phi i64 [ %i.w, %bb.u ], [ %i.w, %bb.w ], [ %i.ek, %bb.ac ], [ %.1324, %bb.ao ]
  %.8321 = phi i64 [ 3, %bb.u ], [ %i.dq, %bb.w ], [ %.5318, %bb.ac ], [ %.7320, %bb.ao ] ; 4 uses
  %.15311 = phi ptr [ %i.db, %bb.u ], [ %i.dl, %bb.w ], [ %i.el, %bb.ac ], [ %i.gc, %bb.ao ] ; 6 uses
  %.2325 = and i64 %.2325.in, 3                   ; 6 uses
  %i.gj = icmp ult ptr %.0329, %2
  br i1 %i.gj, label %.loopexit436, label %bb.aq, !prof !10

bb.aq:                                            ; preds = %bb.ap
  %i.gk = ptrtoint ptr %.0285 to i64              ; 4 uses
  %i.gl = ptrtoint ptr %.0329 to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = icmp sgt i64 %i.gm, 7
  %i.go = getelementptr i8, ptr %.0285, i64 %.8321 ; 6 uses
  %i.gp = sub i64 %i.o, %i.gk                     ; 3 uses
  br i1 %i.gn, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.gq = add nuw i64 %.8321, 15
  %.not371 = icmp ult i64 %i.gp, %i.gq
  br i1 %.not371, label %bb.at, label %.preheader429, !prof !10

.preheader429:                                    ; preds = %bb.ar, %.preheader429
  %.1330 = phi ptr [ %i.gu, %.preheader429 ], [ %.0329, %bb.ar ] ; 3 uses
  %.5290 = phi ptr [ %i.gt, %.preheader429 ], [ %.0285, %bb.ar ] ; 3 uses
  %.0.copyload12 = load i64, ptr %.1330, align 1
  store i64 %.0.copyload12, ptr %.5290, align 1
  %i.gr = getelementptr i8, ptr %.5290, i64 8
  %i.gs = getelementptr i8, ptr %.1330, i64 8
  %.0.copyload8 = load i64, ptr %i.gs, align 1
  store i64 %.0.copyload8, ptr %i.gr, align 1
  %i.gt = getelementptr i8, ptr %.5290, i64 16    ; 2 uses
  %i.gu = getelementptr i8, ptr %.1330, i64 16
  %i.gv = icmp ult ptr %i.gt, %i.go
  br i1 %i.gv, label %.preheader429, label %bb.as, !llvm.loop !23

bb.as:                                            ; preds = %.preheader429
  %i.gw = ptrtoint ptr %.15311 to i64
  %i.gx = sub i64 %i.n, %i.gw
  %i.gy = icmp ugt i64 %i.gx, 5
  br i1 %i.gy, label %bb.au, label %.thread409

bb.at:                                            ; preds = %bb.ar
  %.not372 = icmp ult i64 %i.gp, %.8321
  br i1 %.not372, label %.thread414, label %.preheader427, !prof !10

.preheader427:                                    ; preds = %bb.at, %.preheader427
  %.2331 = phi ptr [ %i.gz, %.preheader427 ], [ %.0329, %bb.at ] ; 2 uses
  %.6291 = phi ptr [ %i.hb, %.preheader427 ], [ %.0285, %bb.at ] ; 2 uses
  %i.gz = getelementptr i8, ptr %.2331, i64 1
  %i.ha = load i8, ptr %.2331, align 1
  %i.hb = getelementptr i8, ptr %.6291, i64 1     ; 3 uses
  store i8 %i.ha, ptr %.6291, align 1
  %i.hc = icmp ult ptr %i.hb, %i.go
  br i1 %i.hc, label %.preheader427, label %.thread409, !llvm.loop !24

bb.au:                                            ; preds = %bb.as
  %.0.copyload4 = load i32, ptr %.15311, align 1
  store i32 %.0.copyload4, ptr %i.go, align 1
  %i.hd = getelementptr i8, ptr %i.go, i64 %.2325
  %i.he = getelementptr i8, ptr %.15311, i64 %.2325
  br label %bb.g

bb.av:                                            ; preds = %bb.aq
  %.not370 = icmp ult i64 %i.gp, %.8321
  br i1 %.not370, label %.thread414, label %bb.aw, !prof !10

bb.aw:                                            ; preds = %bb.av
  %i.hf = load i8, ptr %.0329, align 1
  store i8 %i.hf, ptr %.0285, align 1
  %i.hg = getelementptr i8, ptr %.0329, i64 1
  %i.hh = load i8, ptr %i.hg, align 1
  %i.hi = getelementptr i8, ptr %.0285, i64 1
  store i8 %i.hh, ptr %i.hi, align 1
  %i.hj = getelementptr i8, ptr %.0285, i64 2
  %i.hk = getelementptr i8, ptr %.0329, i64 2
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %bb.aw
  %.3332 = phi ptr [ %i.hk, %bb.aw ], [ %i.hl, %bb.ax ] ; 2 uses
  %.9294 = phi ptr [ %i.hj, %bb.aw ], [ %i.hn, %bb.ax ] ; 2 uses
  %i.hl = getelementptr i8, ptr %.3332, i64 1
  %i.hm = load i8, ptr %.3332, align 1
  %i.hn = getelementptr i8, ptr %.9294, i64 1     ; 3 uses
  store i8 %i.hm, ptr %.9294, align 1
  %i.ho = icmp ult ptr %i.hn, %i.go
  br i1 %i.ho, label %bb.ax, label %.thread409, !llvm.loop !25

.thread409:                                       ; preds = %bb.as, %bb.ax, %.preheader427, %bb.f, %bb.ah, %bb.t
  %.3326 = phi i64 [ %i.fg, %bb.ah ], [ %i.cf, %bb.t ], [ %i.s, %bb.f ], [ %.2325, %.preheader427 ], [ %.2325, %bb.ax ], [ %.2325, %bb.as ] ; 12 uses
  %.18 = phi ptr [ %i.fh, %bb.ah ], [ %i.ck, %bb.t ], [ %i.q, %bb.f ], [ %.15311, %.preheader427 ], [ %.15311, %bb.ax ], [ %.15311, %bb.as ] ; 6 uses
  %.12 = phi ptr [ %i.ff, %bb.ah ], [ %i.cw, %bb.t ], [ %2, %bb.f ], [ %i.hb, %.preheader427 ], [ %i.hn, %bb.ax ], [ %i.go, %bb.as ] ; 7 uses
  %i.hp = ptrtoint ptr %i.a to i64
  %i.hq = ptrtoint ptr %.18 to i64
  %i.hr = sub i64 %i.hp, %i.hq                    ; 2 uses
  %i.hs = icmp ugt i64 %i.hr, 5
  %i.ht = ptrtoint ptr %i.c to i64
  %i.hu = ptrtoint ptr %.12 to i64                ; 2 uses
  %i.hv = sub i64 %i.ht, %i.hu                    ; 2 uses
  %i.hw = icmp ugt i64 %i.hv, 3
  %i.hx = select i1 %i.hs, i1 %i.hw, i1 false, !prof !11
  br i1 %i.hx, label %bb.ay, label %bb.az, !prof !11

bb.ay:                                            ; preds = %.thread409
  %.0.copyload = load i32, ptr %.18, align 1
  store i32 %.0.copyload, ptr %.12, align 1
  %i.hy = getelementptr i8, ptr %.12, i64 %.3326
  %i.hz = getelementptr i8, ptr %.18, i64 %.3326
  br label %.preheader434

bb.az:                                            ; preds = %.thread409
  %i.ia = add nuw nsw i64 %.3326, 3
  %.not = icmp ult i64 %i.hr, %i.ia
  br i1 %.not, label %.thread389, label %bb.ba, !prof !10

bb.ba:                                            ; preds = %bb.az
  %.not360 = icmp ult i64 %i.hv, %.3326
  br i1 %.not360, label %.thread414, label %.preheader438, !prof !10

.preheader438:                                    ; preds = %bb.ba
  %.not361539 = icmp eq i64 %.3326, 0
  br i1 %.not361539, label %.preheader434, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader438
  %xtraiter = and i64 %.3326, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.13542.prol = phi ptr [ %i.id, %.lr.ph.prol ], [ %.12, %.lr.ph.preheader ] ; 2 uses
  %.19541.prol = phi ptr [ %i.ib, %.lr.ph.prol ], [ %.18, %.lr.ph.preheader ] ; 2 uses
  %.9322540.prol = phi i64 [ %i.ie, %.lr.ph.prol ], [ %.3326, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ib = getelementptr i8, ptr %.19541.prol, i64 1 ; 3 uses
  %i.ic = load i8, ptr %.19541.prol, align 1
  %i.id = getelementptr i8, ptr %.13542.prol, i64 1 ; 3 uses
  store i8 %i.ic, ptr %.13542.prol, align 1
  %i.ie = add nsw i64 %.9322540.prol, -1          ; 2 uses
end_hunk_0

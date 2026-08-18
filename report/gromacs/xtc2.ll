inline.NumInlined: 79
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 37
begin_hunk_0_@Ptngc_unpack_array_xtc2:bb.a

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ci = phi ptr [ %i.ca, %bb.n ], [ %i.cg, %bb.o ] ; 2 uses
  %i.cj = phi i32 [ %i.ce, %bb.n ], [ 0, %bb.o ]
  %.117.i142 = phi i32 [ %i.cf, %bb.n ], [ 128, %bb.o ] ; 2 uses
  %.1.i143 = phi i8 [ %.026.i138, %bb.n ], [ %i.ch, %bb.o ] ; 2 uses
  %i.ck = add nsw i32 %.in.i137, -2               ; 3 uses
  %i.cl = shl i32 %.01824.i140, 2
  %i.cm = select i1 %.not734, i32 0, i32 2
  %i.cn = or disjoint i32 %i.cl, %i.cm
  %i.co = zext i8 %.1.i143 to i32
  %i.cp = and i32 %.117.i142, %i.co
  %i.cq = icmp ne i32 %i.cp, 0                    ; 2 uses
  %i.cr = zext i1 %i.cq to i32
  %i.cs = or disjoint i32 %i.cn, %i.cr            ; 2 uses
  %i.ct = add nsw i32 %i.cj, 1                    ; 2 uses
  store i32 %i.ct, ptr %i.h, align 4, !tbaa !8
  %i.cu = lshr i32 %.117.i142, 1                  ; 2 uses
  %.not21.i141.1 = icmp eq i32 %i.cu, 0
  br i1 %.not21.i141.1, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ci, i64 1 ; 4 uses
  store ptr %i.cv, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %.not22.i145.1 = icmp eq i32 %i.ck, 0
  br i1 %.not22.i145.1, label %readbits.exit146, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !52
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.cx = phi ptr [ %i.ci, %bb.p ], [ %i.cv, %bb.r ] ; 2 uses
  %i.cy = phi i32 [ %i.ct, %bb.p ], [ 0, %bb.r ]  ; 2 uses
  %.117.i142.1 = phi i32 [ %i.cu, %bb.p ], [ 128, %bb.r ]
  %.1.i143.1 = phi i8 [ %.1.i143, %bb.p ], [ %i.cw, %bb.r ]
  %.not.i144.1 = icmp eq i32 %i.ck, 0
  br i1 %.not.i144.1, label %readbits.exit146, label %bb.n, !llvm.loop !53

readbits.exit146:                                 ; preds = %bb.s, %bb.q
  %i.cz = phi i32 [ 0, %bb.q ], [ %i.cy, %bb.s ]  ; 4 uses
  %i.da = phi ptr [ %i.cv, %bb.q ], [ %i.cx, %bb.s ] ; 3 uses
  %i.db = add nsw i32 %i.cs, 1
  %i.dc = sdiv i32 %i.db, 2                       ; 2 uses
  %i.dd = sub nsw i32 0, %i.dc
  %spec.select.i147 = select i1 %i.cq, i32 %i.dc, i32 %i.dd ; 4 uses
  %i.de = load i8, ptr %i.da, align 1, !tbaa !52
  %i.df = lshr i32 128, %i.cz
  %i.dg = zext i8 %i.de to i32                    ; 2 uses
  %i.dh = and i32 %i.df, %i.dg
  %.not540 = icmp eq i32 %i.dh, 0
  %i.di = add nsw i32 %i.cz, 1
  %i.dj = lshr i32 64, %i.cz
  %.not21.i152 = icmp ugt i32 %i.cz, 6
  br i1 %.not21.i152, label %bb.t, label %bb.u

bb.t:                                             ; preds = %readbits.exit146
  %i.dk = getelementptr inbounds nuw i8, ptr %i.da, i64 1 ; 3 uses
  store ptr %i.dk, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !52
  %.pre468 = zext i8 %i.dl to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %readbits.exit146
  %.pre-phi469 = phi i32 [ %.pre468, %bb.t ], [ %i.dg, %readbits.exit146 ] ; 3 uses
  %i.dm = phi ptr [ %i.dk, %bb.t ], [ %i.da, %readbits.exit146 ] ; 3 uses
  %i.dn = phi i32 [ 0, %bb.t ], [ %i.di, %readbits.exit146 ]
  %.117.i153 = phi i32 [ 128, %bb.t ], [ %i.dj, %readbits.exit146 ] ; 3 uses
  %i.do = select i1 %.not540, i32 0, i32 2
  %i.dp = and i32 %.117.i153, %.pre-phi469
  %i.dq = icmp ne i32 %i.dp, 0
  %i.dr = zext i1 %i.dq to i32
  %i.ds = or disjoint i32 %i.do, %i.dr
  %i.dt = lshr i32 %.117.i153, 1                  ; 2 uses
  %.not21.i152.1 = icmp eq i32 %i.dt, 0
  br i1 %.not21.i152.1, label %.thread, label %bb.v

.thread:                                          ; preds = %bb.u
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 1 ; 3 uses
  store ptr %i.du, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !52  ; 2 uses
  %.pre470 = zext i8 %i.dv to i32
  %.not541563 = icmp sgt i8 %i.dv, -1
  br label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.dw = and i32 %i.dt, %.pre-phi469
  %.not541 = icmp eq i32 %i.dw, 0                 ; 2 uses
  %i.dx = add nuw nsw i32 %i.dn, 2
  %i.dy = lshr i32 %.117.i153, 2                  ; 2 uses
  %.not21.i152.2 = icmp eq i32 %i.dy, 0
  br i1 %.not21.i152.2, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dm, i64 1 ; 3 uses
  store ptr %i.dz, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !52
  %.pre472 = zext i8 %i.ea to i32
  br label %bb.x

bb.x:                                             ; preds = %.thread, %bb.w, %bb.v
  %.not541565 = phi i1 [ %.not541, %bb.w ], [ %.not541, %bb.v ], [ %.not541563, %.thread ]
  %.pre-phi473 = phi i32 [ %.pre472, %bb.w ], [ %.pre-phi469, %bb.v ], [ %.pre470, %.thread ] ; 3 uses
  %i.eb = phi ptr [ %i.dz, %bb.w ], [ %i.dm, %bb.v ], [ %i.du, %.thread ] ; 3 uses
  %i.ec = phi i32 [ 0, %bb.w ], [ %i.dx, %bb.v ], [ 1, %.thread ]
  %.117.i153.2 = phi i32 [ 128, %bb.w ], [ %i.dy, %bb.v ], [ 64, %.thread ] ; 3 uses
  %i.ed = shl nuw nsw i32 %i.ds, 2
  %i.ee = select i1 %.not541565, i32 0, i32 2
  %i.ef = or disjoint i32 %i.ed, %i.ee
  %i.eg = and i32 %.117.i153.2, %.pre-phi473
  %i.eh = icmp ne i32 %i.eg, 0
  %i.ei = zext i1 %i.eh to i32
  %i.ej = or disjoint i32 %i.ef, %i.ei
  %i.ek = lshr i32 %.117.i153.2, 1                ; 2 uses
  %.not21.i152.3 = icmp eq i32 %i.ek, 0
  br i1 %.not21.i152.3, label %.thread566, label %bb.y

.thread566:                                       ; preds = %bb.x
  %i.el = getelementptr inbounds nuw i8, ptr %i.eb, i64 1 ; 3 uses
  store ptr %i.el, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.em = load i8, ptr %i.el, align 1, !tbaa !52  ; 2 uses
  %.pre474 = zext i8 %i.em to i32
  %.not542569 = icmp sgt i8 %i.em, -1
  br label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.en = and i32 %i.ek, %.pre-phi473
  %.not542 = icmp eq i32 %i.en, 0                 ; 2 uses
  %i.eo = add nuw nsw i32 %i.ec, 2
  %i.ep = lshr i32 %.117.i153.2, 2                ; 2 uses
  %.not21.i152.4 = icmp eq i32 %i.ep, 0
  br i1 %.not21.i152.4, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eb, i64 1 ; 3 uses
  store ptr %i.eq, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !52
  %.pre476 = zext i8 %i.er to i32
  br label %bb.aa

bb.aa:                                            ; preds = %.thread566, %bb.z, %bb.y
  %.not542571 = phi i1 [ %.not542, %bb.z ], [ %.not542, %bb.y ], [ %.not542569, %.thread566 ]
  %.pre-phi477 = phi i32 [ %.pre476, %bb.z ], [ %.pre-phi473, %bb.y ], [ %.pre474, %.thread566 ] ; 3 uses
  %i.es = phi ptr [ %i.eq, %bb.z ], [ %i.eb, %bb.y ], [ %i.el, %.thread566 ] ; 3 uses
  %i.et = phi i32 [ 0, %bb.z ], [ %i.eo, %bb.y ], [ 1, %.thread566 ]
  %.117.i153.4 = phi i32 [ 128, %bb.z ], [ %i.ep, %bb.y ], [ 64, %.thread566 ] ; 3 uses
  %i.eu = shl nuw nsw i32 %i.ej, 2
  %i.ev = select i1 %.not542571, i32 0, i32 2
  %i.ew = or disjoint i32 %i.eu, %i.ev
  %i.ex = and i32 %.117.i153.4, %.pre-phi477
  %i.ey = icmp ne i32 %i.ex, 0
  %i.ez = zext i1 %i.ey to i32
  %i.fa = or disjoint i32 %i.ew, %i.ez
  %i.fb = lshr i32 %.117.i153.4, 1                ; 2 uses
  %.not21.i152.5 = icmp eq i32 %i.fb, 0
  br i1 %.not21.i152.5, label %.thread572, label %bb.ab

.thread572:                                       ; preds = %bb.aa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.es, i64 1 ; 3 uses
  store ptr %i.fc, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !52  ; 2 uses
  %.pre478 = zext i8 %i.fd to i32
  %.not543575 = icmp sgt i8 %i.fd, -1
  br label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.fe = and i32 %i.fb, %.pre-phi477
  %.not543 = icmp eq i32 %i.fe, 0                 ; 2 uses
  %i.ff = add nuw nsw i32 %i.et, 2
  %i.fg = lshr i32 %.117.i153.4, 2                ; 2 uses
  %.not21.i152.6 = icmp eq i32 %i.fg, 0
  br i1 %.not21.i152.6, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fh = getelementptr inbounds nuw i8, ptr %i.es, i64 1 ; 3 uses
  store ptr %i.fh, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !52
  %.pre480 = zext i8 %i.fi to i32
  br label %bb.ad

bb.ad:                                            ; preds = %.thread572, %bb.ac, %bb.ab
  %.not543577 = phi i1 [ %.not543, %bb.ac ], [ %.not543, %bb.ab ], [ %.not543575, %.thread572 ]
  %.pre-phi481 = phi i32 [ %.pre480, %bb.ac ], [ %.pre-phi477, %bb.ab ], [ %.pre478, %.thread572 ]
  %i.fj = phi ptr [ %i.fh, %bb.ac ], [ %i.es, %bb.ab ], [ %i.fc, %.thread572 ] ; 2 uses
  %i.fk = phi i32 [ 0, %bb.ac ], [ %i.ff, %bb.ab ], [ 1, %.thread572 ]
  %.117.i153.6 = phi i32 [ 128, %bb.ac ], [ %i.fg, %bb.ab ], [ 64, %.thread572 ] ; 2 uses
  %i.fl = shl nuw nsw i32 %i.fa, 2
  %i.fm = select i1 %.not543577, i32 0, i32 2
  %i.fn = or disjoint i32 %i.fl, %i.fm
  %i.fo = and i32 %.117.i153.6, %.pre-phi481
  %i.fp = icmp ne i32 %i.fo, 0
  %i.fq = zext i1 %i.fp to i32
  %i.fr = or disjoint i32 %i.fn, %i.fq            ; 3 uses
  %i.fs = add nuw nsw i32 %i.fk, 1                ; 2 uses
  store i32 %i.fs, ptr %i.h, align 4, !tbaa !8
  %.not21.i152.7 = icmp samesign ult i32 %.117.i153.6, 2
  br i1 %.not21.i152.7, label %bb.ae, label %readbits.exit157

bb.ae:                                            ; preds = %bb.ad
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fj, i64 1 ; 2 uses
  store ptr %i.ft, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  br label %readbits.exit157

readbits.exit157:                                 ; preds = %bb.ad, %bb.ae
  %i.fu = phi i32 [ 0, %bb.ae ], [ %i.fs, %bb.ad ] ; 4 uses
  %i.fv = phi ptr [ %i.ft, %bb.ae ], [ %i.fj, %bb.ad ] ; 3 uses
  store i32 %i.fr, ptr %i.i, align 4, !tbaa !8
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !52
  %i.fx = lshr i32 128, %i.fu
  %i.fy = zext i8 %i.fw to i32                    ; 2 uses
  %i.fz = and i32 %i.fx, %i.fy
  %.not544 = icmp eq i32 %i.fz, 0
  %i.ga = add nuw nsw i32 %i.fu, 1
  %i.gb = lshr i32 64, %i.fu
  %.not21.i162 = icmp samesign ugt i32 %i.fu, 6
  br i1 %.not21.i162, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %readbits.exit157
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 1 ; 3 uses
  store ptr %i.gc, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !52
  %.pre454 = zext i8 %i.gd to i32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %readbits.exit157
  %.pre-phi455 = phi i32 [ %.pre454, %bb.af ], [ %i.fy, %readbits.exit157 ] ; 3 uses
  %i.ge = phi ptr [ %i.gc, %bb.af ], [ %i.fv, %readbits.exit157 ] ; 3 uses
  %i.gf = phi i32 [ 0, %bb.af ], [ %i.ga, %readbits.exit157 ]
  %.117.i163 = phi i32 [ 128, %bb.af ], [ %i.gb, %readbits.exit157 ] ; 3 uses
  %i.gg = select i1 %.not544, i32 0, i32 2
  %i.gh = and i32 %.117.i163, %.pre-phi455
  %i.gi = icmp ne i32 %i.gh, 0
  %i.gj = zext i1 %i.gi to i32
  %i.gk = or disjoint i32 %i.gg, %i.gj
  %i.gl = lshr i32 %.117.i163, 1                  ; 2 uses
  %.not21.i162.1 = icmp eq i32 %i.gl, 0
  br i1 %.not21.i162.1, label %.thread578, label %bb.ah

.thread578:                                       ; preds = %bb.ag
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ge, i64 1 ; 3 uses
  store ptr %i.gm, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !52  ; 2 uses
  %.pre456 = zext i8 %i.gn to i32
  %.not545581 = icmp sgt i8 %i.gn, -1
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.go = and i32 %i.gl, %.pre-phi455
  %.not545 = icmp eq i32 %i.go, 0                 ; 2 uses
  %i.gp = add nuw nsw i32 %i.gf, 2
  %i.gq = lshr i32 %.117.i163, 2                  ; 2 uses
  %.not21.i162.2 = icmp eq i32 %i.gq, 0
  br i1 %.not21.i162.2, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ge, i64 1 ; 3 uses
  store ptr %i.gr, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !52
  %.pre458 = zext i8 %i.gs to i32
  br label %bb.aj

bb.aj:                                            ; preds = %.thread578, %bb.ai, %bb.ah
  %.not545583 = phi i1 [ %.not545, %bb.ai ], [ %.not545, %bb.ah ], [ %.not545581, %.thread578 ]
  %.pre-phi459 = phi i32 [ %.pre458, %bb.ai ], [ %.pre-phi455, %bb.ah ], [ %.pre456, %.thread578 ] ; 3 uses
  %i.gt = phi ptr [ %i.gr, %bb.ai ], [ %i.ge, %bb.ah ], [ %i.gm, %.thread578 ] ; 3 uses
  %i.gu = phi i32 [ 0, %bb.ai ], [ %i.gp, %bb.ah ], [ 1, %.thread578 ]
  %.117.i163.2 = phi i32 [ 128, %bb.ai ], [ %i.gq, %bb.ah ], [ 64, %.thread578 ] ; 3 uses
  %i.gv = shl nuw nsw i32 %i.gk, 2
  %i.gw = select i1 %.not545583, i32 0, i32 2
  %i.gx = or disjoint i32 %i.gv, %i.gw
  %i.gy = and i32 %.117.i163.2, %.pre-phi459
  %i.gz = icmp ne i32 %i.gy, 0
  %i.ha = zext i1 %i.gz to i32
  %i.hb = or disjoint i32 %i.gx, %i.ha
  %i.hc = lshr i32 %.117.i163.2, 1                ; 2 uses
  %.not21.i162.3 = icmp eq i32 %i.hc, 0
  br i1 %.not21.i162.3, label %.thread584, label %bb.ak

.thread584:                                       ; preds = %bb.aj
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gt, i64 1 ; 3 uses
  store ptr %i.hd, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !52  ; 2 uses
  %.pre460 = zext i8 %i.he to i32
  %.not546587 = icmp sgt i8 %i.he, -1
  br label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.hf = and i32 %i.hc, %.pre-phi459
  %.not546 = icmp eq i32 %i.hf, 0                 ; 2 uses
  %i.hg = add nuw nsw i32 %i.gu, 2
  %i.hh = lshr i32 %.117.i163.2, 2                ; 2 uses
  %.not21.i162.4 = icmp eq i32 %i.hh, 0
  br i1 %.not21.i162.4, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gt, i64 1 ; 3 uses
  store ptr %i.hi, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !52
  %.pre462 = zext i8 %i.hj to i32
  br label %bb.am

bb.am:                                            ; preds = %.thread584, %bb.al, %bb.ak
  %.not546589 = phi i1 [ %.not546, %bb.al ], [ %.not546, %bb.ak ], [ %.not546587, %.thread584 ]
  %.pre-phi463 = phi i32 [ %.pre462, %bb.al ], [ %.pre-phi459, %bb.ak ], [ %.pre460, %.thread584 ] ; 3 uses
  %i.hk = phi ptr [ %i.hi, %bb.al ], [ %i.gt, %bb.ak ], [ %i.hd, %.thread584 ] ; 3 uses
  %i.hl = phi i32 [ 0, %bb.al ], [ %i.hg, %bb.ak ], [ 1, %.thread584 ]
  %.117.i163.4 = phi i32 [ 128, %bb.al ], [ %i.hh, %bb.ak ], [ 64, %.thread584 ] ; 3 uses
  %i.hm = shl nuw nsw i32 %i.hb, 2
  %i.hn = select i1 %.not546589, i32 0, i32 2
  %i.ho = or disjoint i32 %i.hm, %i.hn
  %i.hp = and i32 %.117.i163.4, %.pre-phi463
  %i.hq = icmp ne i32 %i.hp, 0
  %i.hr = zext i1 %i.hq to i32
  %i.hs = or disjoint i32 %i.ho, %i.hr
  %i.ht = lshr i32 %.117.i163.4, 1                ; 2 uses
  %.not21.i162.5 = icmp eq i32 %i.ht, 0
  br i1 %.not21.i162.5, label %.thread590, label %bb.an

.thread590:                                       ; preds = %bb.am
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hk, i64 1 ; 3 uses
  store ptr %i.hu, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !52  ; 2 uses
  %.pre464 = zext i8 %i.hv to i32
  %.not547593 = icmp sgt i8 %i.hv, -1
  br label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.hw = and i32 %i.ht, %.pre-phi463
  %.not547 = icmp eq i32 %i.hw, 0                 ; 2 uses
  %i.hx = add nuw nsw i32 %i.hl, 2
  %i.hy = lshr i32 %.117.i163.4, 2                ; 2 uses
  %.not21.i162.6 = icmp eq i32 %i.hy, 0
  br i1 %.not21.i162.6, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hk, i64 1 ; 3 uses
  store ptr %i.hz, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !52
  %.pre466 = zext i8 %i.ia to i32
  br label %bb.ap

bb.ap:                                            ; preds = %.thread590, %bb.ao, %bb.an
  %.not547595 = phi i1 [ %.not547, %bb.ao ], [ %.not547, %bb.an ], [ %.not547593, %.thread590 ]
  %.pre-phi467 = phi i32 [ %.pre466, %bb.ao ], [ %.pre-phi463, %bb.an ], [ %.pre464, %.thread590 ]
  %i.ib = phi ptr [ %i.hz, %bb.ao ], [ %i.hk, %bb.an ], [ %i.hu, %.thread590 ] ; 2 uses
  %i.ic = phi i32 [ 0, %bb.ao ], [ %i.hx, %bb.an ], [ 1, %.thread590 ]
  %.117.i163.6 = phi i32 [ 128, %bb.ao ], [ %i.hy, %bb.an ], [ 64, %.thread590 ] ; 2 uses
  %i.id = shl nuw nsw i32 %i.hs, 2
  %i.ie = select i1 %.not547595, i32 0, i32 2
  %i.if = or disjoint i32 %i.id, %i.ie
  %i.ig = and i32 %.117.i163.6, %.pre-phi467
  %i.ih = icmp ne i32 %i.ig, 0
  %i.ii = zext i1 %i.ih to i32
  %i.ij = or disjoint i32 %i.if, %i.ii            ; 3 uses
  %i.ik = add nuw nsw i32 %i.ic, 1                ; 2 uses
  store i32 %i.ik, ptr %i.h, align 4, !tbaa !8
  %.not21.i162.7 = icmp samesign ult i32 %.117.i163.6, 2
  br i1 %.not21.i162.7, label %bb.aq, label %readbits.exit167

bb.aq:                                            ; preds = %bb.ap
  %i.il = getelementptr inbounds nuw i8, ptr %i.ib, i64 1 ; 2 uses
  store ptr %i.il, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  br label %readbits.exit167

readbits.exit167:                                 ; preds = %bb.ap, %bb.aq
  %i.im = phi i32 [ 0, %bb.aq ], [ %i.ik, %bb.ap ] ; 4 uses
  %i.in = phi ptr [ %i.il, %bb.aq ], [ %i.ib, %bb.ap ] ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %i.ij, ptr %i.io, align 4, !tbaa !8
  %i.ip = load i8, ptr %i.in, align 1, !tbaa !52
  %i.iq = lshr i32 128, %i.im
  %i.ir = zext i8 %i.ip to i32                    ; 2 uses
  %i.is = and i32 %i.iq, %i.ir
  %.not548 = icmp eq i32 %i.is, 0
  %i.it = add nuw nsw i32 %i.im, 1
  %i.iu = lshr i32 64, %i.im
  %.not21.i172 = icmp samesign ugt i32 %i.im, 6
  br i1 %.not21.i172, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %readbits.exit167
  %i.iv = getelementptr inbounds nuw i8, ptr %i.in, i64 1 ; 3 uses
  store ptr %i.iv, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !52
  %.pre440 = zext i8 %i.iw to i32
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %readbits.exit167
  %.pre-phi441 = phi i32 [ %.pre440, %bb.ar ], [ %i.ir, %readbits.exit167 ] ; 3 uses
  %i.ix = phi ptr [ %i.iv, %bb.ar ], [ %i.in, %readbits.exit167 ] ; 3 uses
  %i.iy = phi i32 [ 0, %bb.ar ], [ %i.it, %readbits.exit167 ]
  %.117.i173 = phi i32 [ 128, %bb.ar ], [ %i.iu, %readbits.exit167 ] ; 3 uses
  %i.iz = select i1 %.not548, i32 0, i32 2
  %i.ja = and i32 %.117.i173, %.pre-phi441
  %i.jb = icmp ne i32 %i.ja, 0
  %i.jc = zext i1 %i.jb to i32
  %i.jd = or disjoint i32 %i.iz, %i.jc
  %i.je = lshr i32 %.117.i173, 1                  ; 2 uses
  %.not21.i172.1 = icmp eq i32 %i.je, 0
  br i1 %.not21.i172.1, label %.thread596, label %bb.at

.thread596:                                       ; preds = %bb.as
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ix, i64 1 ; 3 uses
  store ptr %i.jf, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !52  ; 2 uses
  %.pre442 = zext i8 %i.jg to i32
  %.not549599 = icmp sgt i8 %i.jg, -1
  br label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.jh = and i32 %i.je, %.pre-phi441
  %.not549 = icmp eq i32 %i.jh, 0                 ; 2 uses
  %i.ji = add nuw nsw i32 %i.iy, 2
  %i.jj = lshr i32 %.117.i173, 2                  ; 2 uses
  %.not21.i172.2 = icmp eq i32 %i.jj, 0
  br i1 %.not21.i172.2, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ix, i64 1 ; 3 uses
  store ptr %i.jk, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !52
  %.pre444 = zext i8 %i.jl to i32
  br label %bb.av

bb.av:                                            ; preds = %.thread596, %bb.au, %bb.at
  %.not549601 = phi i1 [ %.not549, %bb.au ], [ %.not549, %bb.at ], [ %.not549599, %.thread596 ]
  %.pre-phi445 = phi i32 [ %.pre444, %bb.au ], [ %.pre-phi441, %bb.at ], [ %.pre442, %.thread596 ] ; 3 uses
  %i.jm = phi ptr [ %i.jk, %bb.au ], [ %i.ix, %bb.at ], [ %i.jf, %.thread596 ] ; 3 uses
  %i.jn = phi i32 [ 0, %bb.au ], [ %i.ji, %bb.at ], [ 1, %.thread596 ]
  %.117.i173.2 = phi i32 [ 128, %bb.au ], [ %i.jj, %bb.at ], [ 64, %.thread596 ] ; 3 uses
  %i.jo = shl nuw nsw i32 %i.jd, 2
  %i.jp = select i1 %.not549601, i32 0, i32 2
  %i.jq = or disjoint i32 %i.jo, %i.jp
  %i.jr = and i32 %.117.i173.2, %.pre-phi445
  %i.js = icmp ne i32 %i.jr, 0
  %i.jt = zext i1 %i.js to i32
  %i.ju = or disjoint i32 %i.jq, %i.jt
  %i.jv = lshr i32 %.117.i173.2, 1                ; 2 uses
  %.not21.i172.3 = icmp eq i32 %i.jv, 0
  br i1 %.not21.i172.3, label %.thread602, label %bb.aw

.thread602:                                       ; preds = %bb.av
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jm, i64 1 ; 3 uses
  store ptr %i.jw, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !52  ; 2 uses
  %.pre446 = zext i8 %i.jx to i32
  %.not550605 = icmp sgt i8 %i.jx, -1
  br label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.jy = and i32 %i.jv, %.pre-phi445
  %.not550 = icmp eq i32 %i.jy, 0                 ; 2 uses
  %i.jz = add nuw nsw i32 %i.jn, 2
  %i.ka = lshr i32 %.117.i173.2, 2                ; 2 uses
  %.not21.i172.4 = icmp eq i32 %i.ka, 0
  br i1 %.not21.i172.4, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jm, i64 1 ; 3 uses
  store ptr %i.kb, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !52
  %.pre448 = zext i8 %i.kc to i32
  br label %bb.ay

bb.ay:                                            ; preds = %.thread602, %bb.ax, %bb.aw
  %.not550607 = phi i1 [ %.not550, %bb.ax ], [ %.not550, %bb.aw ], [ %.not550605, %.thread602 ]
  %.pre-phi449 = phi i32 [ %.pre448, %bb.ax ], [ %.pre-phi445, %bb.aw ], [ %.pre446, %.thread602 ] ; 3 uses
  %i.kd = phi ptr [ %i.kb, %bb.ax ], [ %i.jm, %bb.aw ], [ %i.jw, %.thread602 ] ; 3 uses
  %i.ke = phi i32 [ 0, %bb.ax ], [ %i.jz, %bb.aw ], [ 1, %.thread602 ]
  %.117.i173.4 = phi i32 [ 128, %bb.ax ], [ %i.ka, %bb.aw ], [ 64, %.thread602 ] ; 3 uses
  %i.kf = shl nuw nsw i32 %i.ju, 2
  %i.kg = select i1 %.not550607, i32 0, i32 2
  %i.kh = or disjoint i32 %i.kf, %i.kg
  %i.ki = and i32 %.117.i173.4, %.pre-phi449
  %i.kj = icmp ne i32 %i.ki, 0
  %i.kk = zext i1 %i.kj to i32
  %i.kl = or disjoint i32 %i.kh, %i.kk
  %i.km = lshr i32 %.117.i173.4, 1                ; 2 uses
  %.not21.i172.5 = icmp eq i32 %i.km, 0
  br i1 %.not21.i172.5, label %.thread608, label %bb.az

.thread608:                                       ; preds = %bb.ay
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kd, i64 1 ; 3 uses
  store ptr %i.kn, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !52  ; 2 uses
  %.pre450 = zext i8 %i.ko to i32
  %.not551611 = icmp sgt i8 %i.ko, -1
  br label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.kp = and i32 %i.km, %.pre-phi449
  %.not551 = icmp eq i32 %i.kp, 0                 ; 2 uses
  %i.kq = add nuw nsw i32 %i.ke, 2
  %i.kr = lshr i32 %.117.i173.4, 2                ; 2 uses
  %.not21.i172.6 = icmp eq i32 %i.kr, 0
  br i1 %.not21.i172.6, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kd, i64 1 ; 3 uses
  store ptr %i.ks, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !52
  %.pre452 = zext i8 %i.kt to i32
  br label %bb.bb

bb.bb:                                            ; preds = %.thread608, %bb.ba, %bb.az
  %.not551613 = phi i1 [ %.not551, %bb.ba ], [ %.not551, %bb.az ], [ %.not551611, %.thread608 ]
  %.pre-phi453 = phi i32 [ %.pre452, %bb.ba ], [ %.pre-phi449, %bb.az ], [ %.pre450, %.thread608 ]
  %i.ku = phi ptr [ %i.ks, %bb.ba ], [ %i.kd, %bb.az ], [ %i.kn, %.thread608 ] ; 2 uses
  %i.kv = phi i32 [ 0, %bb.ba ], [ %i.kq, %bb.az ], [ 1, %.thread608 ]
  %.117.i173.6 = phi i32 [ 128, %bb.ba ], [ %i.kr, %bb.az ], [ 64, %.thread608 ] ; 2 uses
  %i.kw = shl nuw nsw i32 %i.kl, 2
  %i.kx = select i1 %.not551613, i32 0, i32 2
  %i.ky = or disjoint i32 %i.kw, %i.kx
  %i.kz = and i32 %.117.i173.6, %.pre-phi453
  %i.la = icmp ne i32 %i.kz, 0
  %i.lb = zext i1 %i.la to i32
  %i.lc = or disjoint i32 %i.ky, %i.lb            ; 3 uses
  %i.ld = add nuw nsw i32 %i.kv, 1                ; 2 uses
  store i32 %i.ld, ptr %i.h, align 4, !tbaa !8
  %.not21.i172.7 = icmp samesign ult i32 %.117.i173.6, 2
  br i1 %.not21.i172.7, label %bb.bc, label %readbits.exit177

bb.bc:                                            ; preds = %bb.bb
  %i.le = getelementptr inbounds nuw i8, ptr %i.ku, i64 1 ; 2 uses
  store ptr %i.le, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  br label %readbits.exit177

readbits.exit177:                                 ; preds = %bb.bb, %bb.bc
  %i.lf = phi i32 [ 0, %bb.bc ], [ %i.ld, %bb.bb ] ; 4 uses
  %i.lg = phi ptr [ %i.le, %bb.bc ], [ %i.ku, %bb.bb ] ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.lc, ptr %i.lh, align 4, !tbaa !8
  %i.li = load i8, ptr %i.lg, align 1, !tbaa !52
  %i.lj = lshr i32 128, %i.lf
  %i.lk = zext i8 %i.li to i32                    ; 2 uses
  %i.ll = and i32 %i.lj, %i.lk
  %.not552 = icmp eq i32 %i.ll, 0
  %i.lm = add nuw nsw i32 %i.lf, 1
  %i.ln = lshr i32 64, %i.lf
  %.not21.i182 = icmp samesign ugt i32 %i.lf, 6
  br i1 %.not21.i182, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %readbits.exit177
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lg, i64 1 ; 3 uses
  store ptr %i.lo, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !52
  %.pre426 = zext i8 %i.lp to i32
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %readbits.exit177
  %.pre-phi427 = phi i32 [ %.pre426, %bb.bd ], [ %i.lk, %readbits.exit177 ] ; 3 uses
  %i.lq = phi ptr [ %i.lo, %bb.bd ], [ %i.lg, %readbits.exit177 ] ; 3 uses
  %i.lr = phi i32 [ 0, %bb.bd ], [ %i.lm, %readbits.exit177 ]
  %.117.i183 = phi i32 [ 128, %bb.bd ], [ %i.ln, %readbits.exit177 ] ; 3 uses
  %i.ls = select i1 %.not552, i32 0, i32 2
  %i.lt = and i32 %.117.i183, %.pre-phi427
  %i.lu = icmp ne i32 %i.lt, 0
  %i.lv = zext i1 %i.lu to i32
  %i.lw = or disjoint i32 %i.ls, %i.lv
  %i.lx = lshr i32 %.117.i183, 1                  ; 2 uses
  %.not21.i182.1 = icmp eq i32 %i.lx, 0
  br i1 %.not21.i182.1, label %.thread614, label %bb.bf

.thread614:                                       ; preds = %bb.be
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lq, i64 1 ; 3 uses
  store ptr %i.ly, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !52  ; 2 uses
  %.pre428 = zext i8 %i.lz to i32
  %.not553617 = icmp sgt i8 %i.lz, -1
  br label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.ma = and i32 %i.lx, %.pre-phi427
  %.not553 = icmp eq i32 %i.ma, 0                 ; 2 uses
  %i.mb = add nuw nsw i32 %i.lr, 2
  %i.mc = lshr i32 %.117.i183, 2                  ; 2 uses
  %.not21.i182.2 = icmp eq i32 %i.mc, 0
  br i1 %.not21.i182.2, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.md = getelementptr inbounds nuw i8, ptr %i.lq, i64 1 ; 3 uses
  store ptr %i.md, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.me = load i8, ptr %i.md, align 1, !tbaa !52
  %.pre430 = zext i8 %i.me to i32
  br label %bb.bh

bb.bh:                                            ; preds = %.thread614, %bb.bg, %bb.bf
  %.not553619 = phi i1 [ %.not553, %bb.bg ], [ %.not553, %bb.bf ], [ %.not553617, %.thread614 ]
  %.pre-phi431 = phi i32 [ %.pre430, %bb.bg ], [ %.pre-phi427, %bb.bf ], [ %.pre428, %.thread614 ] ; 3 uses
  %i.mf = phi ptr [ %i.md, %bb.bg ], [ %i.lq, %bb.bf ], [ %i.ly, %.thread614 ] ; 3 uses
  %i.mg = phi i32 [ 0, %bb.bg ], [ %i.mb, %bb.bf ], [ 1, %.thread614 ]
  %.117.i183.2 = phi i32 [ 128, %bb.bg ], [ %i.mc, %bb.bf ], [ 64, %.thread614 ] ; 3 uses
  %i.mh = shl nuw nsw i32 %i.lw, 2
  %i.mi = select i1 %.not553619, i32 0, i32 2
  %i.mj = or disjoint i32 %i.mh, %i.mi
  %i.mk = and i32 %.117.i183.2, %.pre-phi431
  %i.ml = icmp ne i32 %i.mk, 0
  %i.mm = zext i1 %i.ml to i32
  %i.mn = or disjoint i32 %i.mj, %i.mm
  %i.mo = lshr i32 %.117.i183.2, 1                ; 2 uses
  %.not21.i182.3 = icmp eq i32 %i.mo, 0
  br i1 %.not21.i182.3, label %.thread620, label %bb.bi

.thread620:                                       ; preds = %bb.bh
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mf, i64 1 ; 3 uses
  store ptr %i.mp, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !52  ; 2 uses
  %.pre432 = zext i8 %i.mq to i32
  %.not554623 = icmp sgt i8 %i.mq, -1
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.mr = and i32 %i.mo, %.pre-phi431
  %.not554 = icmp eq i32 %i.mr, 0                 ; 2 uses
  %i.ms = add nuw nsw i32 %i.mg, 2
  %i.mt = lshr i32 %.117.i183.2, 2                ; 2 uses
  %.not21.i182.4 = icmp eq i32 %i.mt, 0
  br i1 %.not21.i182.4, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mf, i64 1 ; 3 uses
  store ptr %i.mu, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !52
  %.pre434 = zext i8 %i.mv to i32
  br label %bb.bk

bb.bk:                                            ; preds = %.thread620, %bb.bj, %bb.bi
  %.not554625 = phi i1 [ %.not554, %bb.bj ], [ %.not554, %bb.bi ], [ %.not554623, %.thread620 ]
  %.pre-phi435 = phi i32 [ %.pre434, %bb.bj ], [ %.pre-phi431, %bb.bi ], [ %.pre432, %.thread620 ] ; 3 uses
  %i.mw = phi ptr [ %i.mu, %bb.bj ], [ %i.mf, %bb.bi ], [ %i.mp, %.thread620 ] ; 3 uses
  %i.mx = phi i32 [ 0, %bb.bj ], [ %i.ms, %bb.bi ], [ 1, %.thread620 ]
  %.117.i183.4 = phi i32 [ 128, %bb.bj ], [ %i.mt, %bb.bi ], [ 64, %.thread620 ] ; 3 uses
  %i.my = shl nuw nsw i32 %i.mn, 2
  %i.mz = select i1 %.not554625, i32 0, i32 2
  %i.na = or disjoint i32 %i.my, %i.mz
  %i.nb = and i32 %.117.i183.4, %.pre-phi435
  %i.nc = icmp ne i32 %i.nb, 0
  %i.nd = zext i1 %i.nc to i32
  %i.ne = or disjoint i32 %i.na, %i.nd
  %i.nf = lshr i32 %.117.i183.4, 1                ; 2 uses
  %.not21.i182.5 = icmp eq i32 %i.nf, 0
  br i1 %.not21.i182.5, label %.thread626, label %bb.bl

.thread626:                                       ; preds = %bb.bk
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mw, i64 1 ; 3 uses
  store ptr %i.ng, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !52  ; 2 uses
  %.pre436 = zext i8 %i.nh to i32
  %.not555629 = icmp sgt i8 %i.nh, -1
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.ni = and i32 %i.nf, %.pre-phi435
  %.not555 = icmp eq i32 %i.ni, 0                 ; 2 uses
  %i.nj = add nuw nsw i32 %i.mx, 2
  %i.nk = lshr i32 %.117.i183.4, 2                ; 2 uses
  %.not21.i182.6 = icmp eq i32 %i.nk, 0
  br i1 %.not21.i182.6, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mw, i64 1 ; 3 uses
  store ptr %i.nl, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !52
  %.pre438 = zext i8 %i.nm to i32
  br label %bb.bn

bb.bn:                                            ; preds = %.thread626, %bb.bm, %bb.bl
  %.not555631 = phi i1 [ %.not555, %bb.bm ], [ %.not555, %bb.bl ], [ %.not555629, %.thread626 ]
  %.pre-phi439 = phi i32 [ %.pre438, %bb.bm ], [ %.pre-phi435, %bb.bl ], [ %.pre436, %.thread626 ]
  %i.nn = phi ptr [ %i.nl, %bb.bm ], [ %i.mw, %bb.bl ], [ %i.ng, %.thread626 ]
  %i.no = phi i32 [ 0, %bb.bm ], [ %i.nj, %bb.bl ], [ 1, %.thread626 ]
  %.117.i183.6 = phi i32 [ 128, %bb.bm ], [ %i.nk, %bb.bl ], [ 64, %.thread626 ] ; 2 uses
  %i.np = shl nuw nsw i32 %i.ne, 2
  %i.nq = select i1 %.not555631, i32 0, i32 2
  %i.nr = or disjoint i32 %i.np, %i.nq
  %i.ns = and i32 %.117.i183.6, %.pre-phi439
  %i.nt = icmp ne i32 %i.ns, 0
  %i.nu = zext i1 %i.nt to i32
  %i.nv = or disjoint i32 %i.nr, %i.nu
  %i.nw = add nuw nsw i32 %i.no, 1
  store i32 %i.nw, ptr %i.h, align 4, !tbaa !8
  %.not21.i182.7 = icmp samesign ult i32 %.117.i183.6, 2
  br i1 %.not21.i182.7, label %bb.bo, label %readbits.exit187

bb.bo:                                            ; preds = %bb.bn
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nn, i64 1
  store ptr %i.nx, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  br label %readbits.exit187

readbits.exit187:                                 ; preds = %bb.bn, %bb.bo
  %i.ny = call fastcc i32 @compute_magic_bits(ptr noundef %i.i) ; 4 uses
  %.off346 = add i32 %3, 2
  %.not323 = icmp ult i32 %.off346, 5
  br i1 %.not323, label %._crit_edge345, label %.lr.ph344

.lr.ph344:                                        ; preds = %readbits.exit187
  %i.nz = icmp samesign ugt i32 %i.ny, 7
  %i.oa = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.oc = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.od = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.of = zext nneg i32 %i.lc to i64
  %4 = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %i.of
  %5 = zext nneg i32 %i.ij to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %5
  %7 = zext nneg i32 %i.fr to i64
  %i.og = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %7
  %i.oh = zext nneg i32 %i.lc to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %i.oh
  %9 = zext nneg i32 %i.ij to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %9
  %11 = zext nneg i32 %i.fr to i64
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %11
  %i.oj = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 2 uses
  %i.om = insertelement <2 x i32> poison, i32 %spec.select.i136, i64 0
  %i.on = insertelement <2 x i32> %i.om, i32 %spec.select.i147, i64 1
  %i.oo = insertelement <2 x i32> poison, i32 %spec.select.i, i64 0
  %i.op = insertelement <2 x i32> %i.oo, i32 %spec.select.i136, i64 1
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph344, %bb.dy
  %.0101341 = phi ptr [ %2, %.lr.ph344 ], [ %.5, %bb.dy ] ; 10 uses
  %.0109340 = phi i32 [ 0, %.lr.ph344 ], [ %.2111, %bb.dy ] ; 11 uses
  %.0112337 = phi i32 [ 0, %.lr.ph344 ], [ %.1113, %bb.dy ] ; 7 uses
  %.0114336 = phi i32 [ %i.m, %.lr.ph344 ], [ %.3117, %bb.dy ] ; 7 uses
  %.sroa.071.0333 = phi i32 [ %spec.select.i, %.lr.ph344 ], [ %.sroa.071.5, %bb.dy ] ; 5 uses
  %.0118324 = phi i32 [ %i.nv, %.lr.ph344 ], [ %.1119, %bb.dy ] ; 10 uses
  %i.oq = phi <2 x i32> [ %i.on, %.lr.ph344 ], [ %i.adf, %bb.dy ] ; 5 uses
  %i.or = load ptr, ptr %i.g, align 8, !tbaa !11  ; 3 uses
  %i.os = load i8, ptr %i.or, align 1, !tbaa !52
  %i.ot = load i32, ptr %i.h, align 4, !tbaa !8   ; 3 uses
  %i.ou = lshr i32 128, %i.ot
  %i.ov = zext i8 %i.os to i32
  %i.ow = and i32 %i.ou, %i.ov
  %.not54.i.not = icmp eq i32 %i.ow, 0            ; 2 uses
  %i.ox = add nsw i32 %i.ot, 1                    ; 2 uses
  store i32 %i.ox, ptr %i.h, align 4, !tbaa !8
  %.not21.i.i = icmp ugt i32 %i.ot, 6
  br i1 %.not21.i.i, label %bb.bq, label %readbits.exit.i

bb.bq:                                            ; preds = %bb.bp
  %i.oy = getelementptr inbounds nuw i8, ptr %i.or, i64 1 ; 2 uses
  store ptr %i.oy, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  br label %readbits.exit.i

readbits.exit.i:                                  ; preds = %bb.bq, %bb.bp
  %i.oz = phi i32 [ 0, %bb.bq ], [ %i.ox, %bb.bp ] ; 3 uses
  %i.pa = phi ptr [ %i.oy, %bb.bq ], [ %i.or, %bb.bp ] ; 3 uses
  br i1 %.not54.i.not, label %bb.br, label %.lr.ph.i

bb.br:                                            ; preds = %readbits.exit.i
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !52
  %i.pc = lshr i32 128, %i.oz
  %i.pd = zext i8 %i.pb to i32
  %i.pe = and i32 %i.pc, %i.pd
  %.not.i188 = icmp eq i32 %i.pe, 0
  %i.pf = add nuw nsw i32 %i.oz, 1                ; 2 uses
  store i32 %i.pf, ptr %i.h, align 4, !tbaa !8
  %.not21.i21.i = icmp samesign ugt i32 %i.oz, 6
  br i1 %.not21.i21.i, label %bb.bs, label %readbits.exit26.i

bb.bs:                                            ; preds = %bb.br
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pa, i64 1 ; 2 uses
  store ptr %i.pg, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  br label %readbits.exit26.i

readbits.exit26.i:                                ; preds = %bb.bs, %bb.br
  %i.ph = phi i32 [ 0, %bb.bs ], [ %i.pf, %bb.br ] ; 4 uses
  %i.pi = phi ptr [ %i.pg, %bb.bs ], [ %i.pa, %bb.br ] ; 5 uses
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !52
  %i.pk = lshr i32 128, %i.ph
  %i.pl = zext i8 %i.pj to i32                    ; 3 uses
  %i.pm = and i32 %i.pk, %i.pl
  %.not559 = icmp eq i32 %i.pm, 0                 ; 2 uses
  %i.pn = add nuw nsw i32 %i.ph, 1                ; 2 uses
  %i.po = lshr i32 64, %i.ph                      ; 2 uses
  %.not21.i239 = icmp samesign ugt i32 %i.ph, 6   ; 2 uses
  br i1 %.not.i188, label %bb.dl, label %bb.bt

bb.bt:                                            ; preds = %readbits.exit26.i
  br i1 %.not21.i239, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pi, i64 1 ; 3 uses
  store ptr %i.pp, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !52
  %.pre.i = zext i8 %i.pq to i32
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pre-phi.i = phi i32 [ %.pre.i, %bb.bu ], [ %i.pl, %bb.bt ]
  %i.pr = phi ptr [ %i.pp, %bb.bu ], [ %i.pi, %bb.bt ] ; 2 uses
  %i.ps = phi i32 [ 0, %bb.bu ], [ %i.pn, %bb.bt ]
  %.117.i32.i = phi i32 [ 128, %bb.bu ], [ %i.po, %bb.bt ] ; 2 uses
  %i.pt = select i1 %.not559, i32 0, i32 2
  %i.pu = and i32 %.117.i32.i, %.pre-phi.i
  %i.pv = icmp ne i32 %i.pu, 0
  %i.pw = zext i1 %i.pv to i32
  %i.px = or disjoint i32 %i.pt, %i.pw
  %i.py = add nuw nsw i32 %i.ps, 1                ; 2 uses
  store i32 %i.py, ptr %i.h, align 4, !tbaa !8
  %.not21.i31.1.i = icmp samesign ult i32 %.117.i32.i, 2
  br i1 %.not21.i31.1.i, label %bb.bw, label %readbits.exit36.i

bb.bw:                                            ; preds = %bb.bv
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pr, i64 1 ; 2 uses
  store ptr %i.pz, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  br label %readbits.exit36.i

readbits.exit36.i:                                ; preds = %bb.bw, %bb.bv
  %i.qa = phi i32 [ 0, %bb.bw ], [ %i.py, %bb.bv ] ; 8 uses
  %i.qb = phi ptr [ %i.pz, %bb.bw ], [ %i.pr, %bb.bv ] ; 6 uses
  switch i32 %i.px, label %default.unreachable [
    i32 0, label %.lr.ph.i
    i32 1, label %.thread275
    i32 2, label %bb.dv
    i32 3, label %bb.bx
  ]

bb.bx:                                            ; preds = %readbits.exit36.i
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !52
  %i.qd = lshr i32 128, %i.qa
  %i.qe = zext i8 %i.qc to i32
  %i.qf = and i32 %i.qd, %i.qe
  %.not56.i = icmp eq i32 %i.qf, 0
  %i.qg = add nuw nsw i32 %i.qa, 1                ; 2 uses
  store i32 %i.qg, ptr %i.h, align 4, !tbaa !8
  %.not21.i41.i = icmp samesign ugt i32 %i.qa, 6
  br i1 %.not21.i41.i, label %bb.by, label %readbits.exit46.i

bb.by:                                            ; preds = %bb.bx
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qb, i64 1 ; 2 uses
  store ptr %i.qh, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  br label %readbits.exit46.i

readbits.exit46.i:                                ; preds = %bb.by, %bb.bx
  %i.qi = phi i32 [ 0, %bb.by ], [ %i.qg, %bb.bx ] ; 4 uses
  %i.qj = phi ptr [ %i.qh, %bb.by ], [ %i.qb, %bb.bx ] ; 3 uses
  br i1 %.not56.i, label %bb.du, label %bb.co

default.unreachable:                              ; preds = %readbits.exit36.i
  unreachable

.lr.ph.i:                                         ; preds = %readbits.exit.i, %readbits.exit36.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.j, i8 0, i64 72, i1 false), !tbaa !52
  call fastcc void @readmanybits(ptr noundef %i.g, ptr noundef %i.h, i32 noundef %i.ny, ptr noundef %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.e, ptr noundef nonnull align 16 dereferenceable(72) %i.j, i64 72, i1 false)
  store i32 0, ptr %i.ob, align 8, !tbaa !8
  %i.qk = load i32, ptr %8, align 4, !tbaa !8
  %i.ql = call i32 @Ptngc_largeint_div(i32 noundef %i.qk, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef 19) #11 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.e, ptr noundef nonnull align 16 dereferenceable(76) %i.f, i64 76, i1 false)
  store i32 %i.ql, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !8
  %12 = load i32, ptr %10, align 4, !tbaa !8
  %i.qm = call i32 @Ptngc_largeint_div(i32 noundef %12, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef 19) #11 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.e, ptr noundef nonnull align 16 dereferenceable(76) %i.f, i64 76, i1 false)
  store i32 %i.qm, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !8
  %13 = load i32, ptr %i.oi, align 4, !tbaa !8
  %i.qn = call i32 @Ptngc_largeint_div(i32 noundef %13, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef 19) #11 ; 3 uses
  store i32 %i.qn, ptr %i.k, align 16, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  %i.qo = insertelement <2 x i32> poison, i32 %i.qm, i64 0
  %i.qp = insertelement <2 x i32> %i.qo, i32 %i.ql, i64 1 ; 2 uses
  br i1 %.not54.i.not, label %.loopexit.thread, label %.thread275

.thread275:                                       ; preds = %readbits.exit36.i, %.lr.ph.i
  %.sroa.0.0 = phi i32 [ %i.qn, %.lr.ph.i ], [ 0, %readbits.exit36.i ] ; 2 uses
  %.sroa.10.0 = phi i32 [ %i.qm, %.lr.ph.i ], [ 0, %readbits.exit36.i ] ; 2 uses
  %.sroa.14.0 = phi i32 [ %i.ql, %.lr.ph.i ], [ 0, %readbits.exit36.i ] ; 2 uses
  %i.qq = phi i1 [ true, %.lr.ph.i ], [ false, %readbits.exit36.i ]
  %.not124274279 = phi i1 [ false, %.lr.ph.i ], [ true, %readbits.exit36.i ] ; 2 uses
  %i.qr = phi <2 x i32> [ %i.qp, %.lr.ph.i ], [ zeroinitializer, %readbits.exit36.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #11
  store i32 %.0118324, ptr %i.l, align 4, !tbaa !8
  store i32 %.0118324, ptr %i.oc, align 4, !tbaa !8
  store i32 %.0118324, ptr %i.od, align 4, !tbaa !8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.j, i8 0, i64 72, i1 false), !tbaa !52
  %i.qs = sext i32 %.0118324 to i64
  %i.qt = getelementptr inbounds [32 x i8], ptr @magic_bits, i64 %i.qs
  %i.qu = zext nneg i32 %.0109340 to i64
  %i.qv = getelementptr [4 x i8], ptr %i.qt, i64 %i.qu
  %i.qw = getelementptr i8, ptr %i.qv, i64 -4
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !8
  call fastcc void @readmanybits(ptr noundef %i.g, ptr noundef %i.h, i32 noundef %i.qx, ptr noundef %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.c, ptr noundef nonnull align 16 dereferenceable(72) %i.j, i64 72, i1 false)
  store i32 0, ptr %i.oe, align 8, !tbaa !8
  %.not.i192 = icmp eq i32 %.0109340, 0
  br i1 %.not.i192, label %.loopexit681, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.thread275
  %i.qy = mul nuw nsw i32 %.0109340, 3
  %i.qz = zext nneg i32 %i.qy to i64
  br label %.lr.ph.i193

.lr.ph.i193:                                      ; preds = %.lr.ph.i193, %.lr.ph.preheader.i
  %indvars.iv26.i194 = phi i64 [ %i.qz, %.lr.ph.preheader.i ], [ %indvars.iv.next27.i195, %.lr.ph.i193 ] ; 2 uses
  %indvars.iv.next27.i195 = add nsw i64 %indvars.iv26.i194, -1 ; 3 uses
  %i.ra = trunc nuw nsw i64 %indvars.iv.next27.i195 to i32
  %i.rb = urem i32 %i.ra, 3
  %i.rc = zext nneg i32 %i.rb to i64
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.rc
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !8
  %i.rf = sext i32 %i.re to i64
  %i.rg = getelementptr inbounds [4 x i8], ptr @magic, i64 %i.rf
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !8
  %i.ri = call i32 @Ptngc_largeint_div(i32 noundef %i.rh, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 19) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.c, ptr noundef nonnull align 16 dereferenceable(76) %i.d, i64 76, i1 false)
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next27.i195
  store i32 %i.ri, ptr %i.rj, align 4, !tbaa !8
  %i.rk = icmp samesign ugt i64 %indvars.iv26.i194, 1
  br i1 %i.rk, label %.lr.ph.i193, label %.loopexit681, !llvm.loop !54

.loopexit681:                                     ; preds = %.lr.ph.i193, %.thread275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #11
  %i.rl = icmp ne i32 %.0112337, 0
  %or.cond5 = select i1 %i.qq, i1 %i.rl, i1 false
  br i1 %or.cond5, label %.preheader286.preheader, label %.loopexit

.preheader286.preheader:                          ; preds = %.loopexit681
  %i.rm = load i32, ptr %i.k, align 16, !tbaa !8  ; 3 uses
  %i.rn = add nsw i32 %i.rm, 1
  %i.ro = sdiv i32 %i.rn, 2                       ; 2 uses
  %i.rp = and i32 %i.rm, 1
  %i.rq = icmp eq i32 %i.rp, 0
  %i.rr = sub nsw i32 0, %i.ro
  %spec.select.i197 = select i1 %i.rq, i32 %i.rr, i32 %i.ro ; 5 uses
  %i.rs = load i32, ptr %i.oj, align 4, !tbaa !8  ; 2 uses
  %i.rt = add nsw i32 %i.rs, 1
  %i.ru = sdiv i32 %i.rt, 2                       ; 2 uses
  %i.rv = and i32 %i.rs, 1
  %i.rw = icmp eq i32 %i.rv, 0
  %i.rx = sub nsw i32 0, %i.ru
  %spec.select.i198 = select i1 %i.rw, i32 %i.rx, i32 %i.ru
  %i.ry = add nsw i32 %spec.select.i197, %.sroa.0.0
  %i.rz = add nsw i32 %spec.select.i198, %spec.select.i197 ; 4 uses
  %i.sa = icmp slt i32 %spec.select.i197, 0
  br i1 %i.sa, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.preheader286.preheader
  %i.sb = shl nsw i32 %spec.select.i197, 1
  %i.sc = xor i32 %i.sb, -1
  br label %positive_int.exit

bb.ca:                                            ; preds = %.preheader286.preheader
  %.off = add i32 %i.rm, 2
  %.not283 = icmp ult i32 %.off, 3
  %i.sd = shl nuw nsw i32 %spec.select.i197, 1
  %spec.select284 = select i1 %.not283, i32 0, i32 %i.sd
  br label %positive_int.exit

positive_int.exit:                                ; preds = %bb.ca, %bb.bz
  %.0.i199 = phi i32 [ %i.sc, %bb.bz ], [ %spec.select284, %bb.ca ]
  store i32 %.0.i199, ptr %i.k, align 16, !tbaa !8
  %i.se = icmp sgt i32 %i.rz, 0
  br i1 %i.se, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %positive_int.exit
  %i.sf = shl nuw i32 %i.rz, 1
  %i.sg = add i32 %i.sf, -1
  br label %positive_int.exit201

bb.cc:                                            ; preds = %positive_int.exit
  %i.sh = icmp slt i32 %i.rz, 0
  br i1 %i.sh, label %bb.cd, label %positive_int.exit201

bb.cd:                                            ; preds = %bb.cc
  %i.si = xor i32 %i.rz, -1
  %i.sj = shl nuw nsw i32 %i.si, 1
  %i.sk = add nuw nsw i32 %i.sj, 2
  br label %positive_int.exit201

positive_int.exit201:                             ; preds = %bb.cb, %bb.cc, %bb.cd
  %.0.i200 = phi i32 [ %i.sg, %bb.cb ], [ %i.sk, %bb.cd ], [ 0, %bb.cc ]
  store i32 %.0.i200, ptr %i.oj, align 4, !tbaa !8
  %i.sl = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !8 ; 3 uses
  %i.sm = add nsw i32 %i.sl, 1
  %i.sn = sdiv i32 %i.sm, 2                       ; 2 uses
  %i.so = and i32 %i.sl, 1
  %i.sp = icmp eq i32 %i.so, 0
  %i.sq = sub nsw i32 0, %i.sn
  %spec.select.i197.1 = select i1 %i.sp, i32 %i.sq, i32 %i.sn ; 5 uses
  %i.sr = load i32, ptr %i.ok, align 16, !tbaa !8 ; 2 uses
  %i.ss = add nsw i32 %i.sr, 1
  %i.st = sdiv i32 %i.ss, 2                       ; 2 uses
  %i.su = and i32 %i.sr, 1
  %i.sv = icmp eq i32 %i.su, 0
  %i.sw = sub nsw i32 0, %i.st
  %spec.select.i198.1 = select i1 %i.sv, i32 %i.sw, i32 %i.st
  %i.sx = add nsw i32 %spec.select.i197.1, %.sroa.10.0 ; 2 uses
  %i.sy = add nsw i32 %spec.select.i198.1, %spec.select.i197.1 ; 4 uses
  %i.sz = icmp slt i32 %spec.select.i197.1, 0
  br i1 %i.sz, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %positive_int.exit201
  %.off.1 = add i32 %i.sl, 2
  %.not283.1 = icmp ult i32 %.off.1, 3
  %i.ta = shl nuw nsw i32 %spec.select.i197.1, 1
  %spec.select284.1 = select i1 %.not283.1, i32 0, i32 %i.ta
  br label %positive_int.exit.1

bb.cf:                                            ; preds = %positive_int.exit201
  %i.tb = shl nsw i32 %spec.select.i197.1, 1
  %i.tc = xor i32 %i.tb, -1
  br label %positive_int.exit.1

positive_int.exit.1:                              ; preds = %bb.cf, %bb.ce
  %.0.i199.1 = phi i32 [ %i.tc, %bb.cf ], [ %spec.select284.1, %bb.ce ]
  store i32 %.0.i199.1, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !8
  %i.td = icmp sgt i32 %i.sy, 0
  br i1 %i.td, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %positive_int.exit.1
  %i.te = icmp slt i32 %i.sy, 0
  br i1 %i.te, label %bb.ch, label %positive_int.exit201.1

bb.ch:                                            ; preds = %bb.cg
  %i.tf = xor i32 %i.sy, -1
  %i.tg = shl nuw nsw i32 %i.tf, 1
  %i.th = add nuw nsw i32 %i.tg, 2
  br label %positive_int.exit201.1

bb.ci:                                            ; preds = %positive_int.exit.1
  %i.ti = shl nuw i32 %i.sy, 1
  %i.tj = add i32 %i.ti, -1
  br label %positive_int.exit201.1

positive_int.exit201.1:                           ; preds = %bb.ci, %bb.ch, %bb.cg
  %.0.i200.1 = phi i32 [ %i.tj, %bb.ci ], [ %i.th, %bb.ch ], [ 0, %bb.cg ]
  store i32 %.0.i200.1, ptr %i.ok, align 16, !tbaa !8
  %i.tk = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !8 ; 3 uses
  %i.tl = add nsw i32 %i.tk, 1
  %i.tm = sdiv i32 %i.tl, 2                       ; 2 uses
  %i.tn = and i32 %i.tk, 1
  %i.to = icmp eq i32 %i.tn, 0
  %i.tp = sub nsw i32 0, %i.tm
  %spec.select.i197.2 = select i1 %i.to, i32 %i.tp, i32 %i.tm ; 5 uses
  %i.tq = load i32, ptr %i.ol, align 4, !tbaa !8  ; 2 uses
  %i.tr = add nsw i32 %i.tq, 1
  %i.ts = sdiv i32 %i.tr, 2                       ; 2 uses
  %i.tt = and i32 %i.tq, 1
  %i.tu = icmp eq i32 %i.tt, 0
  %i.tv = sub nsw i32 0, %i.ts
  %spec.select.i198.2 = select i1 %i.tu, i32 %i.tv, i32 %i.ts
  %i.tw = add nsw i32 %spec.select.i197.2, %.sroa.14.0 ; 2 uses
  %i.tx = add nsw i32 %spec.select.i198.2, %spec.select.i197.2 ; 4 uses
  %i.ty = icmp slt i32 %spec.select.i197.2, 0
  br i1 %i.ty, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %positive_int.exit201.1
  %.off.2 = add i32 %i.tk, 2
  %.not283.2 = icmp ult i32 %.off.2, 3
  %i.tz = shl nuw nsw i32 %spec.select.i197.2, 1
  %spec.select284.2 = select i1 %.not283.2, i32 0, i32 %i.tz
  br label %positive_int.exit.2

bb.ck:                                            ; preds = %positive_int.exit201.1
  %i.ua = shl nsw i32 %spec.select.i197.2, 1
  %i.ub = xor i32 %i.ua, -1
  br label %positive_int.exit.2

positive_int.exit.2:                              ; preds = %bb.ck, %bb.cj
  %.0.i199.2 = phi i32 [ %i.ub, %bb.ck ], [ %spec.select284.2, %bb.cj ]
  store i32 %.0.i199.2, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !8
  %i.uc = icmp sgt i32 %i.tx, 0
  br i1 %i.uc, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %positive_int.exit.2
  %i.ud = icmp slt i32 %i.tx, 0
  br i1 %i.ud, label %bb.cm, label %positive_int.exit201.2

bb.cm:                                            ; preds = %bb.cl
  %i.ue = xor i32 %i.tx, -1
  %i.uf = shl nuw nsw i32 %i.ue, 1
  %i.ug = add nuw nsw i32 %i.uf, 2
  br label %positive_int.exit201.2

bb.cn:                                            ; preds = %positive_int.exit.2
  %i.uh = shl nuw i32 %i.tx, 1
  %i.ui = add i32 %i.uh, -1
  br label %positive_int.exit201.2

positive_int.exit201.2:                           ; preds = %bb.cn, %bb.cm, %bb.cl
  %.0.i200.2 = phi i32 [ %i.ui, %bb.cn ], [ %i.ug, %bb.cm ], [ 0, %bb.cl ]
  store i32 %.0.i200.2, ptr %i.ol, align 4, !tbaa !8
  %i.uj = insertelement <2 x i32> poison, i32 %i.sx, i64 0
  %i.uk = insertelement <2 x i32> %i.uj, i32 %i.tw, i64 1
  br i1 %.not124274279, label %.preheader285, label %.loopexit.thread

.loopexit:                                        ; preds = %.loopexit681
  br i1 %.not124274279, label %.preheader285, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.lr.ph.i, %.loopexit, %positive_int.exit201.2
  %.sroa.14.2650 = phi i32 [ %i.tw, %positive_int.exit201.2 ], [ %.sroa.14.0, %.loopexit ], [ %i.ql, %.lr.ph.i ]
  %.sroa.10.2649 = phi i32 [ %i.sx, %positive_int.exit201.2 ], [ %.sroa.10.0, %.loopexit ], [ %i.qm, %.lr.ph.i ]
  %.sroa.0.2648 = phi i32 [ %i.ry, %positive_int.exit201.2 ], [ %.sroa.0.0, %.loopexit ], [ %i.qn, %.lr.ph.i ] ; 3 uses
  %.not125282639646 = phi i1 [ false, %positive_int.exit201.2 ], [ false, %.loopexit ], [ true, %.lr.ph.i ]
  %i.ul = phi <2 x i32> [ %i.uk, %positive_int.exit201.2 ], [ %i.qr, %.loopexit ], [ %i.qp, %.lr.ph.i ] ; 2 uses
  %i.um = add nsw i32 %.sroa.0.2648, %spec.select.i
  %i.un = getelementptr inbounds nuw i8, ptr %.0101341, i64 4
  store i32 %i.um, ptr %.0101341, align 4, !tbaa !8
  %i.uo = add nsw i32 %.sroa.10.2649, %spec.select.i136
  %i.up = getelementptr inbounds nuw i8, ptr %.0101341, i64 8
  store i32 %i.uo, ptr %i.un, align 4, !tbaa !8
  %i.uq = add nsw i32 %.sroa.14.2650, %spec.select.i147
  %i.ur = getelementptr inbounds nuw i8, ptr %.0101341, i64 12 ; 2 uses
  store i32 %i.uq, ptr %i.up, align 4, !tbaa !8
  %i.us = add nsw i32 %.0114336, -1               ; 2 uses
  br i1 %.not125282639646, label %bb.dy, label %.preheader285

.preheader285:                                    ; preds = %positive_int.exit201.2, %.loopexit, %.loopexit.thread
  %.1662 = phi ptr [ %i.ur, %.loopexit.thread ], [ %.0101341, %.loopexit ], [ %.0101341, %positive_int.exit201.2 ] ; 2 uses
  %.1115661 = phi i32 [ %i.us, %.loopexit.thread ], [ %.0114336, %.loopexit ], [ %.0114336, %positive_int.exit201.2 ]
  %.sroa.071.1660 = phi i32 [ %.sroa.0.2648, %.loopexit.thread ], [ %.sroa.071.0333, %.loopexit ], [ %.sroa.071.0333, %positive_int.exit201.2 ] ; 2 uses
  %i.ut = phi <2 x i32> [ %i.ul, %.loopexit.thread ], [ %i.oq, %.loopexit ], [ %i.oq, %positive_int.exit201.2 ] ; 2 uses
  %i.uu = icmp sgt i32 %.0109340, 0
  br i1 %i.uu, label %.lr.ph.preheader, label %._crit_edge318

.lr.ph.preheader:                                 ; preds = %.preheader285
  %wide.trip.count = zext nneg i32 %.0109340 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.2317 = phi ptr [ %.1662, %.lr.ph.preheader ], [ %i.vt, %.lr.ph ] ; 3 uses
  %.sroa.071.2315 = phi i32 [ %.sroa.071.1660, %.lr.ph.preheader ], [ %i.ve, %.lr.ph ]
  %i.uv = phi <2 x i32> [ %i.ut, %.lr.ph.preheader ], [ %i.vm, %.lr.ph ]
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.uw = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx ; 2 uses
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !8  ; 2 uses
  %i.uy = add nsw i32 %i.ux, 1
  %i.uz = sdiv i32 %i.uy, 2                       ; 2 uses
  %i.va = and i32 %i.ux, 1
  %i.vb = icmp eq i32 %i.va, 0
  %i.vc = sub nsw i32 0, %i.uz
  %spec.select.i202 = select i1 %i.vb, i32 %i.vc, i32 %i.uz
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uw, i64 4
  %i.ve = add nsw i32 %spec.select.i202, %.sroa.071.2315 ; 3 uses
  %i.vf = load <2 x i32>, ptr %i.vd, align 4, !tbaa !8 ; 2 uses
  %i.vg = add nsw <2 x i32> %i.vf, splat (i32 1)
  %i.vh = sdiv <2 x i32> %i.vg, splat (i32 2)     ; 2 uses
  %i.vi = and <2 x i32> %i.vf, splat (i32 1)
  %i.vj = icmp eq <2 x i32> %i.vi, zeroinitializer
  %i.vk = sub nsw <2 x i32> zeroinitializer, %i.vh
  %i.vl = select <2 x i1> %i.vj, <2 x i32> %i.vk, <2 x i32> %i.vh
  %i.vm = add nsw <2 x i32> %i.vl, %i.uv          ; 4 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %.2317, i64 8
  %i.vo = shufflevector <2 x i32> %i.vm, <2 x i32> poison, <2 x i32> <i32 poison, i32 0>
  %i.vp = insertelement <2 x i32> %i.vo, i32 %i.ve, i64 0
  %i.vq = add nsw <2 x i32> %i.vp, %i.op
  store <2 x i32> %i.vq, ptr %.2317, align 4, !tbaa !8
  %i.vr = extractelement <2 x i32> %i.vm, i64 1
  %i.vs = add nsw i32 %i.vr, %spec.select.i147
  %i.vt = getelementptr inbounds nuw i8, ptr %.2317, i64 12 ; 2 uses
  store i32 %i.vs, ptr %i.vn, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond374.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond374.not, label %._crit_edge318, label %.lr.ph, !llvm.loop !55

._crit_edge318:                                   ; preds = %.lr.ph, %.preheader285
  %.sroa.071.2.lcssa = phi i32 [ %.sroa.071.1660, %.preheader285 ], [ %i.ve, %.lr.ph ]
  %.2.lcssa = phi ptr [ %.1662, %.preheader285 ], [ %i.vt, %.lr.ph ]
  %i.vu = phi <2 x i32> [ %i.ut, %.preheader285 ], [ %i.vm, %.lr.ph ]
  %i.vv = sub nsw i32 %.1115661, %.0109340
  br label %bb.dy

bb.co:                                            ; preds = %readbits.exit46.i
  %i.vw = load i8, ptr %i.qj, align 1, !tbaa !52
  %i.vx = lshr i32 128, %i.qi
  %i.vy = zext i8 %i.vw to i32                    ; 2 uses
  %i.vz = and i32 %i.vx, %i.vy
  %.not556 = icmp eq i32 %i.vz, 0
  %i.wa = add nuw nsw i32 %i.qi, 1
  %i.wb = lshr i32 64, %i.qi
  %.not21.i210 = icmp samesign ugt i32 %i.qi, 6
  br i1 %.not21.i210, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.wc = getelementptr inbounds nuw i8, ptr %i.qj, i64 1 ; 3 uses
  store ptr %i.wc, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !52
  %.pre420 = zext i8 %i.wd to i32
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.pre-phi421 = phi i32 [ %.pre420, %bb.cp ], [ %i.vy, %bb.co ] ; 3 uses
  %i.we = phi ptr [ %i.wc, %bb.cp ], [ %i.qj, %bb.co ] ; 3 uses
  %i.wf = phi i32 [ 0, %bb.cp ], [ %i.wa, %bb.co ]
  %.117.i211 = phi i32 [ 128, %bb.cp ], [ %i.wb, %bb.co ] ; 3 uses
  %i.wg = select i1 %.not556, i32 0, i32 2
  %i.wh = and i32 %.117.i211, %.pre-phi421
  %i.wi = icmp ne i32 %i.wh, 0
  %i.wj = zext i1 %i.wi to i32
  %i.wk = or disjoint i32 %i.wg, %i.wj
  %i.wl = lshr i32 %.117.i211, 1                  ; 2 uses
  %.not21.i210.1 = icmp eq i32 %i.wl, 0
  br i1 %.not21.i210.1, label %.thread663, label %bb.cr

.thread663:                                       ; preds = %bb.cq
  %i.wm = getelementptr inbounds nuw i8, ptr %i.we, i64 1 ; 3 uses
  store ptr %i.wm, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.wn = load i8, ptr %i.wm, align 1, !tbaa !52  ; 2 uses
  %.pre422 = zext i8 %i.wn to i32
  %.not557666 = icmp sgt i8 %i.wn, -1
  br label %bb.ct

bb.cr:                                            ; preds = %bb.cq
  %i.wo = and i32 %i.wl, %.pre-phi421
  %.not557 = icmp eq i32 %i.wo, 0                 ; 2 uses
  %.reass = add nuw nsw i32 %i.wf, 2
  %i.wp = lshr i32 %.117.i211, 2                  ; 2 uses
  %.not21.i210.2 = icmp eq i32 %i.wp, 0
  br i1 %.not21.i210.2, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.wq = getelementptr inbounds nuw i8, ptr %i.we, i64 1 ; 3 uses
  store ptr %i.wq, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !52
  %.pre424 = zext i8 %i.wr to i32
  br label %bb.ct

bb.ct:                                            ; preds = %.thread663, %bb.cs, %bb.cr
  %.not557668 = phi i1 [ %.not557, %bb.cs ], [ %.not557, %bb.cr ], [ %.not557666, %.thread663 ]
  %.pre-phi425 = phi i32 [ %.pre424, %bb.cs ], [ %.pre-phi421, %bb.cr ], [ %.pre422, %.thread663 ]
  %i.ws = phi ptr [ %i.wq, %bb.cs ], [ %i.we, %bb.cr ], [ %i.wm, %.thread663 ]
  %i.wt = phi i32 [ 0, %bb.cs ], [ %.reass, %bb.cr ], [ 1, %.thread663 ]
  %.117.i211.2 = phi i32 [ 128, %bb.cs ], [ %i.wp, %bb.cr ], [ 64, %.thread663 ] ; 2 uses
  %i.wu = shl nuw nsw i32 %i.wk, 2
  %i.wv = select i1 %.not557668, i32 0, i32 2
  %i.ww = or disjoint i32 %i.wu, %i.wv
  %i.wx = and i32 %.117.i211.2, %.pre-phi425
  %i.wy = icmp ne i32 %i.wx, 0
  %i.wz = zext i1 %i.wy to i32
  %i.xa = or disjoint i32 %i.ww, %i.wz
  %i.xb = add nuw nsw i32 %i.wt, 1
  store i32 %i.xb, ptr %i.h, align 4, !tbaa !8
  %.not21.i210.3 = icmp samesign ult i32 %.117.i211.2, 2
  br i1 %.not21.i210.3, label %bb.cu, label %.preheader.preheader

bb.cu:                                            ; preds = %bb.ct
  %i.xc = getelementptr inbounds nuw i8, ptr %i.ws, i64 1
  store ptr %i.xc, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.cu, %bb.ct
  %i.xd = add nuw nsw i32 %i.xa, 3                ; 2 uses
  %i.xe = load i32, ptr %4, align 4, !tbaa !8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %readmanybits.exit
  %.4306 = phi ptr [ %i.aba, %readmanybits.exit ], [ %.0101341, %.preheader.preheader ] ; 4 uses
  %.0104305 = phi i32 [ %i.abb, %readmanybits.exit ], [ 0, %.preheader.preheader ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.j, i8 0, i64 72, i1 false), !tbaa !52
  br i1 %i.nz, label %.lr.ph.i217.preheader, label %._crit_edge.i

.lr.ph.i217.preheader:                            ; preds = %.preheader
  %.promoted = load ptr, ptr %i.g, align 8, !tbaa !11
  %.promoted304 = load i32, ptr %i.h, align 4, !tbaa !8
  br label %.lr.ph.i217

.lr.ph.i217:                                      ; preds = %.lr.ph.i217.preheader, %readbits.exit.i223
  %i.xf = phi i32 [ %i.zu, %readbits.exit.i223 ], [ %.promoted304, %.lr.ph.i217.preheader ] ; 4 uses
  %i.xg = phi ptr [ %i.zv, %readbits.exit.i223 ], [ %.promoted, %.lr.ph.i217.preheader ] ; 3 uses
  %.022.i = phi ptr [ %i.zw, %readbits.exit.i223 ], [ %i.j, %.lr.ph.i217.preheader ] ; 2 uses
  %.0921.i = phi i32 [ %i.zx, %readbits.exit.i223 ], [ %i.ny, %.lr.ph.i217.preheader ] ; 2 uses
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !52
  %i.xi = lshr i32 128, %i.xf
  %i.xj = zext i8 %i.xh to i32                    ; 2 uses
  %i.xk = and i32 %i.xi, %i.xj
  %.not54.i218 = icmp eq i32 %i.xk, 0
  %i.xl = add nuw nsw i32 %i.xf, 1
  %i.xm = lshr i32 64, %i.xf
  %.not21.i.i219 = icmp ugt i32 %i.xf, 6
  br i1 %.not21.i.i219, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %.lr.ph.i217
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xg, i64 1 ; 3 uses
  store ptr %i.xn, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !52
  %.pre.i224 = zext i8 %i.xo to i32
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %.lr.ph.i217
  %i.xp = phi ptr [ %i.xn, %bb.cv ], [ %i.xg, %.lr.ph.i217 ] ; 3 uses
  %.pre-phi.i220 = phi i32 [ %.pre.i224, %bb.cv ], [ %i.xj, %.lr.ph.i217 ] ; 3 uses
  %i.xq = phi i32 [ 0, %bb.cv ], [ %i.xl, %.lr.ph.i217 ]
  %.117.i.i = phi i32 [ 128, %bb.cv ], [ %i.xm, %.lr.ph.i217 ] ; 3 uses
  %i.xr = select i1 %.not54.i218, i8 0, i8 2
  %i.xs = and i32 %.117.i.i, %.pre-phi.i220
  %i.xt = icmp ne i32 %i.xs, 0
  %i.xu = zext i1 %i.xt to i8
  %i.xv = or disjoint i8 %i.xr, %i.xu
  %i.xw = lshr i32 %.117.i.i, 1                   ; 2 uses
  %.not21.i.1.i = icmp eq i32 %i.xw, 0
  br i1 %.not21.i.1.i, label %.thread.i, label %bb.cx

.thread.i:                                        ; preds = %bb.cw
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xp, i64 1 ; 3 uses
  store ptr %i.xx, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !52  ; 2 uses
  %.pre33.i = zext i8 %i.xy to i32
  %.not5560.i = icmp sgt i8 %i.xy, -1
  br label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  %i.xz = and i32 %i.xw, %.pre-phi.i220
  %.not55.i221 = icmp eq i32 %i.xz, 0             ; 2 uses
  %.reass.i = add nuw nsw i32 %i.xq, 2
  %i.ya = lshr i32 %.117.i.i, 2                   ; 2 uses
  %.not21.i.2.i = icmp eq i32 %i.ya, 0
  br i1 %.not21.i.2.i, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xp, i64 1 ; 3 uses
  store ptr %i.yb, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !52
  %.pre35.i = zext i8 %i.yc to i32
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %.thread.i
  %i.yd = phi ptr [ %i.yb, %bb.cy ], [ %i.xp, %bb.cx ], [ %i.xx, %.thread.i ] ; 3 uses
  %.not5562.i = phi i1 [ %.not55.i221, %bb.cy ], [ %.not55.i221, %bb.cx ], [ %.not5560.i, %.thread.i ]
  %.pre-phi36.i = phi i32 [ %.pre35.i, %bb.cy ], [ %.pre-phi.i220, %bb.cx ], [ %.pre33.i, %.thread.i ] ; 3 uses
  %i.ye = phi i32 [ 0, %bb.cy ], [ %.reass.i, %bb.cx ], [ 1, %.thread.i ]
  %.117.i.2.i = phi i32 [ 128, %bb.cy ], [ %i.ya, %bb.cx ], [ 64, %.thread.i ] ; 3 uses
  %i.yf = shl nuw nsw i8 %i.xv, 2
  %i.yg = select i1 %.not5562.i, i8 0, i8 2
  %i.yh = or disjoint i8 %i.yg, %i.yf
  %i.yi = and i32 %.117.i.2.i, %.pre-phi36.i
  %i.yj = icmp ne i32 %i.yi, 0
  %i.yk = zext i1 %i.yj to i8
  %i.yl = or disjoint i8 %i.yh, %i.yk
  %i.ym = lshr i32 %.117.i.2.i, 1                 ; 2 uses
  %.not21.i.3.i = icmp eq i32 %i.ym, 0
  br i1 %.not21.i.3.i, label %.thread63.i, label %bb.da

.thread63.i:                                      ; preds = %bb.cz
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yd, i64 1 ; 3 uses
  store ptr %i.yn, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.yo = load i8, ptr %i.yn, align 1, !tbaa !52  ; 2 uses
  %.pre37.i = zext i8 %i.yo to i32
  %.not5666.i = icmp sgt i8 %i.yo, -1
  br label %bb.dc

bb.da:                                            ; preds = %bb.cz
  %i.yp = and i32 %i.ym, %.pre-phi36.i
  %.not56.i222 = icmp eq i32 %i.yp, 0             ; 2 uses
  %.reass77.i = add nuw nsw i32 %i.ye, 2
  %i.yq = lshr i32 %.117.i.2.i, 2                 ; 2 uses
  %.not21.i.4.i = icmp eq i32 %i.yq, 0
  br i1 %.not21.i.4.i, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yd, i64 1 ; 3 uses
  store ptr %i.yr, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.ys = load i8, ptr %i.yr, align 1, !tbaa !52
  %.pre39.i = zext i8 %i.ys to i32
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %.thread63.i
  %i.yt = phi ptr [ %i.yr, %bb.db ], [ %i.yd, %bb.da ], [ %i.yn, %.thread63.i ] ; 3 uses
  %.not5668.i = phi i1 [ %.not56.i222, %bb.db ], [ %.not56.i222, %bb.da ], [ %.not5666.i, %.thread63.i ]
  %.pre-phi40.i = phi i32 [ %.pre39.i, %bb.db ], [ %.pre-phi36.i, %bb.da ], [ %.pre37.i, %.thread63.i ] ; 3 uses
  %i.yu = phi i32 [ 0, %bb.db ], [ %.reass77.i, %bb.da ], [ 1, %.thread63.i ]
  %.117.i.4.i = phi i32 [ 128, %bb.db ], [ %i.yq, %bb.da ], [ 64, %.thread63.i ] ; 3 uses
  %i.yv = shl nuw nsw i8 %i.yl, 2
  %i.yw = select i1 %.not5668.i, i8 0, i8 2
  %i.yx = or disjoint i8 %i.yw, %i.yv
  %i.yy = and i32 %.117.i.4.i, %.pre-phi40.i
  %i.yz = icmp ne i32 %i.yy, 0
  %i.za = zext i1 %i.yz to i8
  %i.zb = or disjoint i8 %i.yx, %i.za
  %i.zc = lshr i32 %.117.i.4.i, 1                 ; 2 uses
  %.not21.i.5.i = icmp eq i32 %i.zc, 0
  br i1 %.not21.i.5.i, label %.thread69.i, label %bb.dd

.thread69.i:                                      ; preds = %bb.dc
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yt, i64 1 ; 3 uses
  store ptr %i.zd, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !52  ; 2 uses
  %.pre41.i = zext i8 %i.ze to i32
  %.not5772.i = icmp sgt i8 %i.ze, -1
  br label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %i.zf = and i32 %i.zc, %.pre-phi40.i
  %.not57.i = icmp eq i32 %i.zf, 0                ; 2 uses
  %.reass78.i = add nuw nsw i32 %i.yu, 2
  %i.zg = lshr i32 %.117.i.4.i, 2                 ; 2 uses
  %.not21.i.6.i = icmp eq i32 %i.zg, 0
  br i1 %.not21.i.6.i, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yt, i64 1 ; 3 uses
  store ptr %i.zh, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.zi = load i8, ptr %i.zh, align 1, !tbaa !52
  %.pre43.i = zext i8 %i.zi to i32
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %.thread69.i
  %i.zj = phi ptr [ %i.zh, %bb.de ], [ %i.yt, %bb.dd ], [ %i.zd, %.thread69.i ] ; 2 uses
  %.not5774.i = phi i1 [ %.not57.i, %bb.de ], [ %.not57.i, %bb.dd ], [ %.not5772.i, %.thread69.i ]
  %.pre-phi44.i = phi i32 [ %.pre43.i, %bb.de ], [ %.pre-phi40.i, %bb.dd ], [ %.pre41.i, %.thread69.i ]
  %i.zk = phi i32 [ 0, %bb.de ], [ %.reass78.i, %bb.dd ], [ 1, %.thread69.i ]
  %.117.i.6.i = phi i32 [ 128, %bb.de ], [ %i.zg, %bb.dd ], [ 64, %.thread69.i ] ; 2 uses
  %i.zl = shl nuw i8 %i.zb, 2
  %i.zm = select i1 %.not5774.i, i8 0, i8 2
  %i.zn = or disjoint i8 %i.zm, %i.zl
  %i.zo = and i32 %.117.i.6.i, %.pre-phi44.i
  %i.zp = icmp ne i32 %i.zo, 0
  %i.zq = zext i1 %i.zp to i8
  %i.zr = or disjoint i8 %i.zn, %i.zq
  %i.zs = add nuw nsw i32 %i.zk, 1                ; 2 uses
  store i32 %i.zs, ptr %i.h, align 4, !tbaa !8
  %.not21.i.7.i = icmp samesign ult i32 %.117.i.6.i, 2
  br i1 %.not21.i.7.i, label %bb.dg, label %readbits.exit.i223

bb.dg:                                            ; preds = %bb.df
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zj, i64 1 ; 2 uses
  store ptr %i.zt, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  br label %readbits.exit.i223

readbits.exit.i223:                               ; preds = %bb.dg, %bb.df
  %i.zu = phi i32 [ 0, %bb.dg ], [ %i.zs, %bb.df ]
  %i.zv = phi ptr [ %i.zt, %bb.dg ], [ %i.zj, %bb.df ]
  %i.zw = getelementptr inbounds nuw i8, ptr %.022.i, i64 1 ; 2 uses
  store i8 %i.zr, ptr %.022.i, align 1, !tbaa !52
  %i.zx = add nsw i32 %.0921.i, -8                ; 2 uses
  %i.zy = icmp sgt i32 %.0921.i, 15
  br i1 %i.zy, label %.lr.ph.i217, label %._crit_edge.i, !llvm.loop !56

._crit_edge.i:                                    ; preds = %readbits.exit.i223, %.preheader
  %.09.lcssa.i = phi i32 [ %i.ny, %.preheader ], [ %i.zx, %readbits.exit.i223 ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %i.j, %.preheader ], [ %i.zw, %readbits.exit.i223 ]
  %.not.i216 = icmp eq i32 %.09.lcssa.i, 0
  br i1 %.not.i216, label %readmanybits.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i
  %i.zz = load ptr, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !52
  %i.aab = load i32, ptr %i.h, align 4, !tbaa !8  ; 2 uses
  %i.aac = lshr i32 128, %i.aab
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dk, %.lr.ph.i.i
  %i.aad = phi ptr [ %i.zz, %.lr.ph.i.i ], [ %i.aaq, %bb.dk ] ; 2 uses
  %i.aae = phi i32 [ %i.aab, %.lr.ph.i.i ], [ %i.aar, %bb.dk ]
  %.in.i10.i = phi i32 [ %.09.lcssa.i, %.lr.ph.i.i ], [ %i.aaf, %bb.dk ]
  %.026.i11.i = phi i8 [ %i.aaa, %.lr.ph.i.i ], [ %.1.i16.i, %bb.dk ] ; 2 uses
  %.01625.i12.i = phi i32 [ %i.aac, %.lr.ph.i.i ], [ %.117.i15.i, %bb.dk ] ; 2 uses
  %.01824.i13.i = phi i8 [ 0, %.lr.ph.i.i ], [ %i.aal, %bb.dk ]
  %i.aaf = add nsw i32 %.in.i10.i, -1             ; 3 uses
  %i.aag = shl i8 %.01824.i13.i, 1
  %i.aah = zext i8 %.026.i11.i to i32
  %i.aai = and i32 %.01625.i12.i, %i.aah
  %i.aaj = icmp ne i32 %i.aai, 0
  %i.aak = zext i1 %i.aaj to i8
  %i.aal = or disjoint i8 %i.aag, %i.aak          ; 2 uses
  %i.aam = add nsw i32 %i.aae, 1                  ; 2 uses
  store i32 %i.aam, ptr %i.h, align 4, !tbaa !8
  %i.aan = lshr i32 %.01625.i12.i, 1              ; 2 uses
  %.not21.i14.i = icmp eq i32 %i.aan, 0
  br i1 %.not21.i14.i, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %bb.dh
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aad, i64 1 ; 3 uses
  store ptr %i.aao, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %.not22.i18.i = icmp eq i32 %i.aaf, 0
  br i1 %.not22.i18.i, label %readbits.exit19.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !52
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.dh
  %i.aaq = phi ptr [ %i.aad, %bb.dh ], [ %i.aao, %bb.dj ]
  %i.aar = phi i32 [ %i.aam, %bb.dh ], [ 0, %bb.dj ]
  %.117.i15.i = phi i32 [ %i.aan, %bb.dh ], [ 128, %bb.dj ]
  %.1.i16.i = phi i8 [ %.026.i11.i, %bb.dh ], [ %i.aap, %bb.dj ]
  %.not.i17.i = icmp eq i32 %i.aaf, 0
  br i1 %.not.i17.i, label %readbits.exit19.i, label %bb.dh, !llvm.loop !53

readbits.exit19.i:                                ; preds = %bb.dk, %bb.di
  store i8 %i.aal, ptr %.0.lcssa.i, align 1, !tbaa !52
  br label %readmanybits.exit

readmanybits.exit:                                ; preds = %._crit_edge.i, %readbits.exit19.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.a, ptr noundef nonnull align 16 dereferenceable(72) %i.j, i64 72, i1 false)
  store i32 0, ptr %i.oa, align 8, !tbaa !8
  %i.aas = call i32 @Ptngc_largeint_div(i32 noundef %i.xe, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 19) #11 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.a, ptr noundef nonnull align 16 dereferenceable(76) %i.b, i64 76, i1 false)
  store i32 %i.aas, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !8
  %14 = load i32, ptr %6, align 4, !tbaa !8
  %i.aat = call i32 @Ptngc_largeint_div(i32 noundef %14, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 19) #11 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.a, ptr noundef nonnull align 16 dereferenceable(76) %i.b, i64 76, i1 false)
  store i32 %i.aat, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !8
  %15 = load i32, ptr %i.og, align 4, !tbaa !8
  %i.aau = call i32 @Ptngc_largeint_div(i32 noundef %15, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 19) #11 ; 3 uses
  store i32 %i.aau, ptr %i.k, align 16, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.aav = add nsw i32 %i.aau, %spec.select.i
  %i.aaw = getelementptr inbounds nuw i8, ptr %.4306, i64 4
  store i32 %i.aav, ptr %.4306, align 4, !tbaa !8
  %i.aax = add nsw i32 %i.aat, %spec.select.i136
  %i.aay = getelementptr inbounds nuw i8, ptr %.4306, i64 8
  store i32 %i.aax, ptr %i.aaw, align 4, !tbaa !8
  %i.aaz = add nsw i32 %i.aas, %spec.select.i147
  %i.aba = getelementptr inbounds nuw i8, ptr %.4306, i64 12 ; 2 uses
  store i32 %i.aaz, ptr %i.aay, align 4, !tbaa !8
  %i.abb = add nuw nsw i32 %.0104305, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.abb, %i.xd
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !57

._crit_edge:                                      ; preds = %readmanybits.exit
  %i.abc = sub nsw i32 %.0114336, %i.xd
  %i.abd = insertelement <2 x i32> poison, i32 %i.aat, i64 0
  %i.abe = insertelement <2 x i32> %i.abd, i32 %i.aas, i64 1
  br label %bb.dy

bb.dl:                                            ; preds = %readbits.exit26.i
  br i1 %.not21.i239, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.abf = getelementptr inbounds nuw i8, ptr %i.pi, i64 1 ; 3 uses
  store ptr %i.abf, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.abg = load i8, ptr %i.abf, align 1, !tbaa !52
  %.pre = zext i8 %i.abg to i32
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.pre-phi = phi i32 [ %.pre, %bb.dm ], [ %i.pl, %bb.dl ] ; 3 uses
  %i.abh = phi ptr [ %i.abf, %bb.dm ], [ %i.pi, %bb.dl ] ; 3 uses
  %i.abi = phi i32 [ 0, %bb.dm ], [ %i.pn, %bb.dl ]
  %.117.i240 = phi i32 [ 128, %bb.dm ], [ %i.po, %bb.dl ] ; 3 uses
  %i.abj = select i1 %.not559, i32 0, i32 2
  %i.abk = and i32 %.117.i240, %.pre-phi
  %i.abl = icmp ne i32 %i.abk, 0
  %i.abm = zext i1 %i.abl to i32
  %i.abn = or disjoint i32 %i.abj, %i.abm
  %i.abo = lshr i32 %.117.i240, 1                 ; 2 uses
  %.not21.i239.1 = icmp eq i32 %i.abo, 0
  br i1 %.not21.i239.1, label %.thread669, label %bb.do

.thread669:                                       ; preds = %bb.dn
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abh, i64 1 ; 3 uses
  store ptr %i.abp, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.abq = load i8, ptr %i.abp, align 1, !tbaa !52 ; 2 uses
  %.pre414 = zext i8 %i.abq to i32
  %.not560672 = icmp sgt i8 %i.abq, -1
  br label %bb.dq

bb.do:                                            ; preds = %bb.dn
  %i.abr = and i32 %i.abo, %.pre-phi
  %.not560 = icmp eq i32 %i.abr, 0                ; 2 uses
  %.reass699 = add nuw nsw i32 %i.abi, 2
  %i.abs = lshr i32 %.117.i240, 2                 ; 2 uses
  %.not21.i239.2 = icmp eq i32 %i.abs, 0
  br i1 %.not21.i239.2, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abh, i64 1 ; 3 uses
  store ptr %i.abt, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.abu = load i8, ptr %i.abt, align 1, !tbaa !52
  %.pre416 = zext i8 %i.abu to i32
  br label %bb.dq

bb.dq:                                            ; preds = %.thread669, %bb.dp, %bb.do
  %.not560674 = phi i1 [ %.not560, %bb.dp ], [ %.not560, %bb.do ], [ %.not560672, %.thread669 ]
  %.pre-phi417 = phi i32 [ %.pre416, %bb.dp ], [ %.pre-phi, %bb.do ], [ %.pre414, %.thread669 ]
  %i.abv = phi ptr [ %i.abt, %bb.dp ], [ %i.abh, %bb.do ], [ %i.abp, %.thread669 ]
  %i.abw = phi i32 [ 0, %bb.dp ], [ %.reass699, %bb.do ], [ 1, %.thread669 ]
  %.117.i240.2 = phi i32 [ 128, %bb.dp ], [ %i.abs, %bb.do ], [ 64, %.thread669 ] ; 2 uses
  %i.abx = shl nuw nsw i32 %i.abn, 2
  %i.aby = select i1 %.not560674, i32 0, i32 2
  %i.abz = or disjoint i32 %i.abx, %i.aby
  %i.aca = and i32 %.117.i240.2, %.pre-phi417
  %i.acb = icmp ne i32 %i.aca, 0
  %i.acc = zext i1 %i.acb to i32
  %i.acd = or disjoint i32 %i.abz, %i.acc         ; 3 uses
  %i.ace = add nuw nsw i32 %i.abw, 1
  store i32 %i.ace, ptr %i.h, align 4, !tbaa !8
  %.not21.i239.3 = icmp samesign ult i32 %.117.i240.2, 2
  br i1 %.not21.i239.3, label %bb.dr, label %readbits.exit245

bb.dr:                                            ; preds = %bb.dq
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abv, i64 1
  store ptr %i.acf, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  br label %readbits.exit245

readbits.exit245:                                 ; preds = %bb.dq, %bb.dr
  %i.acg = icmp eq i32 %i.acd, 15
  br i1 %i.acg, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %readbits.exit245
  %.lhs.trunc = trunc nuw nsw i32 %i.acd to i8
  %i.ach = urem i8 %.lhs.trunc, 3
  %.zext = zext nneg i8 %i.ach to i32
  %.lhs.trunc679 = trunc nuw nsw i32 %i.acd to i8
  %i.aci = udiv i8 %.lhs.trunc679, 3
  %narrow = add nuw nsw i8 %i.aci, 1
  %i.acj = zext nneg i8 %narrow to i32
  %i.ack = add nsw i32 %.zext, -1
  br label %bb.dt

bb.dt:                                            ; preds = %readbits.exit245, %bb.ds
  %.1110 = phi i32 [ %i.acj, %bb.ds ], [ 6, %readbits.exit245 ]
  %.0102 = phi i32 [ %i.ack, %bb.ds ], [ 0, %readbits.exit245 ]
  %i.acl = add nsw i32 %.0102, %.0118324
  br label %bb.dy

bb.du:                                            ; preds = %readbits.exit46.i
  %i.acm = sub nuw nsw i32 1, %.0112337
  br label %bb.dy

bb.dv:                                            ; preds = %readbits.exit36.i
  %i.acn = load i8, ptr %i.qb, align 1, !tbaa !52
  %i.aco = lshr i32 128, %i.qa
  %i.acp = zext i8 %i.acn to i32                  ; 2 uses
  %i.acq = and i32 %i.aco, %i.acp
  %.not558 = icmp eq i32 %i.acq, 0
  %.not21.i251 = icmp samesign ugt i32 %i.qa, 6
  br i1 %.not21.i251, label %.thread675, label %bb.dw

.thread675:                                       ; preds = %bb.dv
  %i.acr = getelementptr inbounds nuw i8, ptr %i.qb, i64 1 ; 2 uses
  store ptr %i.acr, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.acs = load i8, ptr %i.acr, align 1, !tbaa !52 ; 2 uses
  %i.act = icmp slt i8 %i.acs, 0
  %.lobit = lshr i8 %i.acs, 7
  %i.acu = zext nneg i8 %.lobit to i32
  br label %readbits.exit257.sink.split

bb.dw:                                            ; preds = %bb.dv
  %i.acv = lshr i32 64, %i.qa
  %i.acw = and i32 %i.acv, %i.acp
  %i.acx = icmp ne i32 %i.acw, 0                  ; 3 uses
  %i.acy = zext i1 %i.acx to i32                  ; 2 uses
  %.reass698 = add nuw nsw i32 %i.qa, 2
  store i32 %.reass698, ptr %i.h, align 4, !tbaa !8
  %.not21.i251.1 = icmp eq i32 %i.qa, 6
  br i1 %.not21.i251.1, label %bb.dx, label %readbits.exit257

bb.dx:                                            ; preds = %bb.dw
  %i.acz = getelementptr inbounds nuw i8, ptr %i.qb, i64 1
  store ptr %i.acz, ptr %i.g, align 8, !tbaa !11
  br label %readbits.exit257.sink.split

readbits.exit257.sink.split:                      ; preds = %bb.dx, %.thread675
  %.sink = phi i32 [ 1, %.thread675 ], [ 0, %bb.dx ]
  %.ph = phi i32 [ %i.acu, %.thread675 ], [ %i.acy, %bb.dx ]
  %.ph700 = phi i1 [ %i.act, %.thread675 ], [ %i.acx, %bb.dx ]
  store i32 %.sink, ptr %i.h, align 4, !tbaa !8
  br label %readbits.exit257

readbits.exit257:                                 ; preds = %readbits.exit257.sink.split, %bb.dw
  %i.ada = phi i32 [ %i.acy, %bb.dw ], [ %.ph, %readbits.exit257.sink.split ]
  %i.adb = phi i1 [ %i.acx, %bb.dw ], [ %.ph700, %readbits.exit257.sink.split ]
  %i.adc = select i1 %i.adb, i32 2, i32 1
  %i.add = xor i32 %i.ada, -1
  %spec.select = select i1 %.not558, i32 %i.adc, i32 %i.add
  %i.ade = add nsw i32 %spec.select, %.0118324
  br label %bb.dy

bb.dy:                                            ; preds = %.loopexit.thread, %._crit_edge318, %._crit_edge, %bb.du, %readbits.exit257, %bb.dt
  %.1119 = phi i32 [ %i.ade, %readbits.exit257 ], [ %.0118324, %._crit_edge ], [ %i.acl, %bb.dt ], [ %.0118324, %bb.du ], [ %.0118324, %._crit_edge318 ], [ %.0118324, %.loopexit.thread ]
  %.sroa.071.5 = phi i32 [ %.sroa.071.0333, %readbits.exit257 ], [ %i.aau, %._crit_edge ], [ %.sroa.071.0333, %bb.dt ], [ %.sroa.071.0333, %bb.du ], [ %.sroa.071.2.lcssa, %._crit_edge318 ], [ %.sroa.0.2648, %.loopexit.thread ]
  %.3117 = phi i32 [ %.0114336, %readbits.exit257 ], [ %i.abc, %._crit_edge ], [ %.0114336, %bb.dt ], [ %.0114336, %bb.du ], [ %i.vv, %._crit_edge318 ], [ %i.us, %.loopexit.thread ] ; 2 uses
  %.1113 = phi i32 [ %.0112337, %readbits.exit257 ], [ %.0112337, %._crit_edge ], [ %.0112337, %bb.dt ], [ %i.acm, %bb.du ], [ %.0112337, %._crit_edge318 ], [ %.0112337, %.loopexit.thread ]
  %.2111 = phi i32 [ %.0109340, %readbits.exit257 ], [ %.0109340, %._crit_edge ], [ %.1110, %bb.dt ], [ %.0109340, %bb.du ], [ %.0109340, %._crit_edge318 ], [ %.0109340, %.loopexit.thread ]
  %.5 = phi ptr [ %.0101341, %readbits.exit257 ], [ %i.aba, %._crit_edge ], [ %.0101341, %bb.dt ], [ %.0101341, %bb.du ], [ %.2.lcssa, %._crit_edge318 ], [ %i.ur, %.loopexit.thread ]
  %i.adf = phi <2 x i32> [ %i.oq, %readbits.exit257 ], [ %i.abe, %._crit_edge ], [ %i.oq, %bb.dt ], [ %i.oq, %bb.du ], [ %i.vu, %._crit_edge318 ], [ %i.ul, %.loopexit.thread ]
  %.not = icmp eq i32 %.3117, 0
  br i1 %.not, label %._crit_edge345, label %bb.bp, !llvm.loop !58

._crit_edge345:                                   ; preds = %bb.dy, %readbits.exit187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @readmanybits(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #8 {
bb.a:
  %i.a = icmp sgt i32 %2, 7
  br i1 %i.a, label %.lr.ph, label %._crit_edge

end_hunk_0

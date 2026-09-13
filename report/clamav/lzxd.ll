Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/lzxd?download=true
inline.NumInlined: 32
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@lzxd_decompress:bb.a
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.mk ; 2 uses
  store ptr %i.ml, ptr %i.ac, align 8, !tbaa !43
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %.lr.ph3310
  %.281217 = phi ptr [ %i.mj, %bb.cs ], [ %.2712163305, %.lr.ph3310 ] ; 2 uses
  %.281156 = phi ptr [ %i.ml, %bb.cs ], [ %.2711553306, %.lr.ph3310 ] ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.281217, i64 1 ; 2 uses
  %i.mn = load i8, ptr %.281217, align 1, !tbaa !41
  %.not1545 = icmp ult ptr %i.mm, %.281156
  br i1 %.not1545, label %bb.da, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.mo = load ptr, ptr %0, align 8, !tbaa !18
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !46
  %i.mr = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.ms = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.mt = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.mu = tail call i32 %i.mq(ptr noundef %i.mr, ptr noundef %i.ms, i32 noundef %i.mt) #5, !inline_history !47 ; 3 uses
  %i.mv = icmp slt i32 %i.mu, 0
  br i1 %i.mv, label %bb.cy, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.mw = icmp eq i32 %i.mu, 0
  br i1 %i.mw, label %bb.cw, label %bb.cz

bb.cw:                                            ; preds = %bb.cv
  %i.mx = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1593 = icmp eq i8 %i.mx, 0
  br i1 %.not.i1593, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.my = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 1
  store i8 0, ptr %i.mz, align 1, !tbaa !41
  %i.na = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.na, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cw, %bb.cu
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.cz:                                            ; preds = %bb.cx, %bb.cv
  %.0.i1591 = phi i32 [ 2, %bb.cx ], [ %i.mu, %bb.cv ]
  %i.nb = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.nb, ptr %i.ab, align 8, !tbaa !42
  %i.nc = zext nneg i32 %.0.i1591 to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.nc ; 2 uses
  store ptr %i.nd, ptr %i.ac, align 8, !tbaa !43
  br label %bb.da

bb.da:                                            ; preds = %bb.ct, %bb.cz
  %.291218 = phi ptr [ %i.nb, %bb.cz ], [ %i.mm, %bb.ct ] ; 2 uses
  %.291157 = phi ptr [ %i.nd, %bb.cz ], [ %.281156, %bb.ct ] ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.291218, i64 1 ; 2 uses
  %i.nf = load i8, ptr %.291218, align 1, !tbaa !41
  %i.ng = zext i8 %i.nf to i32
  %i.nh = shl nuw nsw i32 %i.ng, 8
  %i.ni = zext i8 %i.mn to i32
  %i.nj = or disjoint i32 %i.nh, %i.ni
  %i.nk = sub nuw i32 16, %.1510603308
  %i.nl = shl nuw i32 %i.nj, %i.nk
  %i.nm = or i32 %i.nl, %.1510823307              ; 2 uses
  %i.nn = add nuw nsw i32 %.1510603308, 16        ; 2 uses
  %i.no = icmp slt i32 %.1510603308, 0
  br i1 %i.no, label %.lr.ph3310, label %._crit_edge3311

._crit_edge3311:                                  ; preds = %bb.da, %._crit_edge3300
  %.271216.lcssa = phi ptr [ %.231212.lcssa, %._crit_edge3300 ], [ %i.ne, %bb.da ] ; 2 uses
  %.271155.lcssa = phi ptr [ %.231151.lcssa, %._crit_edge3300 ], [ %.291157, %bb.da ] ; 2 uses
  %.151082.lcssa = phi i32 [ %i.lt, %._crit_edge3300 ], [ %i.nm, %bb.da ] ; 2 uses
  %.151060.lcssa = phi i32 [ %i.lu, %._crit_edge3300 ], [ %i.nn, %bb.da ] ; 2 uses
  %i.np = shl i32 %.151082.lcssa, 16              ; 2 uses
  %i.nq = add nsw i32 %.151060.lcssa, -16         ; 2 uses
  %i.nr = icmp slt i32 %.151060.lcssa, 24
  br i1 %i.nr, label %.lr.ph3321, label %._crit_edge3322

.lr.ph3321:                                       ; preds = %._crit_edge3311, %bb.do
  %.1710623319 = phi i32 [ %i.pj, %bb.do ], [ %i.nq, %._crit_edge3311 ] ; 3 uses
  %.1710843318 = phi i32 [ %i.pi, %bb.do ], [ %i.np, %._crit_edge3311 ]
  %.3111593317 = phi ptr [ %.331161, %bb.do ], [ %.271155.lcssa, %._crit_edge3311 ] ; 2 uses
  %.3112203316 = phi ptr [ %i.pa, %bb.do ], [ %.271216.lcssa, %._crit_edge3311 ] ; 2 uses
  %.not1539 = icmp ult ptr %.3112203316, %.3111593317
  br i1 %.not1539, label %bb.dh, label %bb.db

bb.db:                                            ; preds = %.lr.ph3321
  %i.ns = load ptr, ptr %0, align 8, !tbaa !18
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !46
  %i.nv = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.nw = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.nx = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.ny = tail call i32 %i.nu(ptr noundef %i.nv, ptr noundef %i.nw, i32 noundef %i.nx) #5, !inline_history !47 ; 3 uses
  %i.nz = icmp slt i32 %i.ny, 0
  br i1 %i.nz, label %bb.df, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.oa = icmp eq i32 %i.ny, 0
  br i1 %i.oa, label %bb.dd, label %bb.dg

bb.dd:                                            ; preds = %bb.dc
  %i.ob = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1597 = icmp eq i8 %i.ob, 0
  br i1 %.not.i1597, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.oc = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 1
  store i8 0, ptr %i.od, align 1, !tbaa !41
  %i.oe = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.oe, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.dg

bb.df:                                            ; preds = %bb.dd, %bb.db
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.dg:                                            ; preds = %bb.de, %bb.dc
  %.0.i1595 = phi i32 [ 2, %bb.de ], [ %i.ny, %bb.dc ]
  %i.of = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.of, ptr %i.ab, align 8, !tbaa !42
  %i.og = zext nneg i32 %.0.i1595 to i64
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.og ; 2 uses
  store ptr %i.oh, ptr %i.ac, align 8, !tbaa !43
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %.lr.ph3321
  %.321221 = phi ptr [ %i.of, %bb.dg ], [ %.3112203316, %.lr.ph3321 ] ; 2 uses
  %.321160 = phi ptr [ %i.oh, %bb.dg ], [ %.3111593317, %.lr.ph3321 ] ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.321221, i64 1 ; 2 uses
  %i.oj = load i8, ptr %.321221, align 1, !tbaa !41
  %.not1541 = icmp ult ptr %i.oi, %.321160
  br i1 %.not1541, label %bb.do, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ok = load ptr, ptr %0, align 8, !tbaa !18
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !46
  %i.on = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.oo = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.op = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.oq = tail call i32 %i.om(ptr noundef %i.on, ptr noundef %i.oo, i32 noundef %i.op) #5, !inline_history !47 ; 3 uses
  %i.or = icmp slt i32 %i.oq, 0
  br i1 %i.or, label %bb.dm, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.os = icmp eq i32 %i.oq, 0
  br i1 %i.os, label %bb.dk, label %bb.dn

bb.dk:                                            ; preds = %bb.dj
  %i.ot = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1601 = icmp eq i8 %i.ot, 0
  br i1 %.not.i1601, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.ou = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 1
  store i8 0, ptr %i.ov, align 1, !tbaa !41
  %i.ow = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.ow, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dk, %bb.di
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.dn:                                            ; preds = %bb.dl, %bb.dj
  %.0.i1599 = phi i32 [ 2, %bb.dl ], [ %i.oq, %bb.dj ]
  %i.ox = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.ox, ptr %i.ab, align 8, !tbaa !42
  %i.oy = zext nneg i32 %.0.i1599 to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.oy ; 2 uses
  store ptr %i.oz, ptr %i.ac, align 8, !tbaa !43
  br label %bb.do

bb.do:                                            ; preds = %bb.dh, %bb.dn
  %.331222 = phi ptr [ %i.ox, %bb.dn ], [ %i.oi, %bb.dh ] ; 2 uses
  %.331161 = phi ptr [ %i.oz, %bb.dn ], [ %.321160, %bb.dh ] ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.331222, i64 1 ; 2 uses
  %i.pb = load i8, ptr %.331222, align 1, !tbaa !41
  %i.pc = zext i8 %i.pb to i32
  %i.pd = shl nuw nsw i32 %i.pc, 8
  %i.pe = zext i8 %i.oj to i32
  %i.pf = or disjoint i32 %i.pd, %i.pe
  %i.pg = sub nuw i32 16, %.1710623319
  %i.ph = shl nuw i32 %i.pf, %i.pg
  %i.pi = or i32 %i.ph, %.1710843318              ; 2 uses
  %i.pj = add nuw nsw i32 %.1710623319, 16        ; 2 uses
  %i.pk = icmp slt i32 %.1710623319, -8
  br i1 %i.pk, label %.lr.ph3321, label %._crit_edge3322

._crit_edge3322:                                  ; preds = %bb.do, %._crit_edge3311
  %.311220.lcssa = phi ptr [ %.271216.lcssa, %._crit_edge3311 ], [ %i.pa, %bb.do ] ; 5 uses
  %.311159.lcssa = phi ptr [ %.271155.lcssa, %._crit_edge3311 ], [ %.331161, %bb.do ] ; 5 uses
  %.171084.lcssa = phi i32 [ %i.np, %._crit_edge3311 ], [ %i.pi, %bb.do ] ; 2 uses
  %.171062.lcssa = phi i32 [ %i.nq, %._crit_edge3311 ], [ %i.pj, %bb.do ] ; 2 uses
  %i.pl = lshr i32 %.171084.lcssa, 24
  %i.pm = shl i32 %.171084.lcssa, 8               ; 2 uses
  %i.pn = add nsw i32 %.171062.lcssa, -8          ; 2 uses
  %i.po = lshr i32 %.151082.lcssa, 8
  %i.pp = and i32 %i.po, 16776960
  %i.pq = or disjoint i32 %i.pl, %i.pp            ; 2 uses
  store i32 %i.pq, ptr %i.bq, align 8, !tbaa !70
  store i32 %i.pq, ptr %i.bd, align 4, !tbaa !40
  %i.pr = load i8, ptr %i.bf, align 1, !tbaa !69
  switch i8 %i.pr, label %bb.gj [
    i8 2, label %.preheader1887
    i8 1, label %bb.dz
    i8 3, label %bb.en
  ]

.preheader1887:                                   ; preds = %._crit_edge3322, %._crit_edge3336
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge3336 ], [ 0, %._crit_edge3322 ] ; 2 uses
  %.1910643344 = phi i32 [ %i.qq, %._crit_edge3336 ], [ %i.pn, %._crit_edge3322 ] ; 3 uses
  %.1910863343 = phi i32 [ %i.qp, %._crit_edge3336 ], [ %i.pm, %._crit_edge3322 ] ; 2 uses
  %.3511633342 = phi ptr [ %.361164.lcssa, %._crit_edge3336 ], [ %.311159.lcssa, %._crit_edge3322 ] ; 2 uses
  %.3512243341 = phi ptr [ %.361225.lcssa, %._crit_edge3336 ], [ %.311220.lcssa, %._crit_edge3322 ] ; 2 uses
  %i.ps = icmp slt i32 %.1910643344, 3
  br i1 %i.ps, label %.lr.ph3335, label %._crit_edge3336

.lr.ph3335:                                       ; preds = %.preheader1887, %bb.dw
  %.2010653334 = phi i32 [ %i.qm, %bb.dw ], [ %.1910643344, %.preheader1887 ] ; 3 uses
  %.2010873333 = phi i32 [ %i.ql, %bb.dw ], [ %.1910863343, %.preheader1887 ]
  %.3611643332 = phi ptr [ %.381166, %bb.dw ], [ %.3511633342, %.preheader1887 ] ; 2 uses
  %.3612253331 = phi ptr [ %i.qd, %bb.dw ], [ %.3512243341, %.preheader1887 ] ; 2 uses
  %.not1535 = icmp ult ptr %.3612253331, %.3611643332
  br i1 %.not1535, label %bb.ds, label %bb.dp

bb.dp:                                            ; preds = %.lr.ph3335
  %i.pt = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1536 = icmp eq i32 %i.pt, 0
  br i1 %.not1536, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.pu = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.dr:                                            ; preds = %bb.dp
  %i.pv = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.pw = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %.lr.ph3335
  %.371226 = phi ptr [ %i.pv, %bb.dr ], [ %.3612253331, %.lr.ph3335 ] ; 2 uses
  %.371165 = phi ptr [ %i.pw, %bb.dr ], [ %.3611643332, %.lr.ph3335 ] ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.371226, i64 1 ; 2 uses
  %i.py = load i8, ptr %.371226, align 1, !tbaa !41
  %.not1537 = icmp ult ptr %i.px, %.371165
  br i1 %.not1537, label %bb.dw, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.pz = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1538 = icmp eq i32 %i.pz, 0
  br i1 %.not1538, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.qa = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.dv:                                            ; preds = %bb.dt
  %i.qb = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.qc = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.dw

bb.dw:                                            ; preds = %bb.ds, %bb.dv
  %.381227 = phi ptr [ %i.qb, %bb.dv ], [ %i.px, %bb.ds ] ; 2 uses
  %.381166 = phi ptr [ %i.qc, %bb.dv ], [ %.371165, %bb.ds ] ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.381227, i64 1 ; 2 uses
  %i.qe = load i8, ptr %.381227, align 1, !tbaa !41
  %i.qf = zext i8 %i.qe to i32
  %i.qg = shl nuw nsw i32 %i.qf, 8
  %i.qh = zext i8 %i.py to i32
  %i.qi = or disjoint i32 %i.qg, %i.qh
  %i.qj = sub i32 16, %.2010653334
  %i.qk = shl nuw i32 %i.qi, %i.qj
  %i.ql = or i32 %i.qk, %.2010873333              ; 2 uses
  %i.qm = add nuw nsw i32 %.2010653334, 16        ; 2 uses
  %i.qn = icmp slt i32 %.2010653334, -13
  br i1 %i.qn, label %.lr.ph3335, label %._crit_edge3336

._crit_edge3336:                                  ; preds = %bb.dw, %.preheader1887
  %.361225.lcssa = phi ptr [ %.3512243341, %.preheader1887 ], [ %i.qd, %bb.dw ] ; 2 uses
  %.361164.lcssa = phi ptr [ %.3511633342, %.preheader1887 ], [ %.381166, %bb.dw ] ; 2 uses
  %.201087.lcssa = phi i32 [ %.1910863343, %.preheader1887 ], [ %i.ql, %bb.dw ] ; 2 uses
  %.201065.lcssa = phi i32 [ %.1910643344, %.preheader1887 ], [ %i.qm, %bb.dw ]
  %i.qo = lshr i32 %.201087.lcssa, 29
  %i.qp = shl i32 %.201087.lcssa, 3               ; 2 uses
  %i.qq = add nsw i32 %.201065.lcssa, -3          ; 2 uses
  %i.qr = trunc nuw nsw i32 %i.qo to i8
  %i.qs = getelementptr inbounds nuw i8, ptr %i.bs, i64 %indvars.iv
  store i8 %i.qr, ptr %i.qs, align 1, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.dx, label %.preheader1887

bb.dx:                                            ; preds = %._crit_edge3336
  %i.qt = tail call fastcc i32 @make_decode_table(i32 noundef 8, i32 noundef 7, ptr noundef %i.bs, ptr noundef %i.bt)
  %.not1476 = icmp eq i32 %i.qt, 0
  br i1 %.not1476, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  store i32 11, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.dz:                                            ; preds = %bb.dx, %._crit_edge3322
  %.401229 = phi ptr [ %.361225.lcssa, %bb.dx ], [ %.311220.lcssa, %._crit_edge3322 ]
  %.401168 = phi ptr [ %.361164.lcssa, %bb.dx ], [ %.311159.lcssa, %._crit_edge3322 ]
  %.221089 = phi i32 [ %i.qp, %bb.dx ], [ %i.pm, %._crit_edge3322 ]
  %.22 = phi i32 [ %i.qq, %bb.dx ], [ %i.pn, %._crit_edge3322 ]
  store ptr %.401229, ptr %i.ab, align 8, !tbaa !42
  store ptr %.401168, ptr %i.ac, align 8, !tbaa !43
  store i32 %.221089, ptr %i.ad, align 8, !tbaa !44
  store i32 %.22, ptr %i.ae, align 4, !tbaa !45
  %i.qu = tail call fastcc i32 @lzxd_read_lens(ptr noundef %0, ptr noundef %i.bg, i32 noundef 0, i32 noundef 256)
  %.not1477 = icmp eq i32 %i.qu, 0
  br i1 %.not1477, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.qv = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.eb:                                            ; preds = %bb.dz
  %i.qw = load i32, ptr %i.bu, align 8, !tbaa !33
  %i.qx = add i32 %i.qw, 256
  %i.qy = tail call fastcc i32 @lzxd_read_lens(ptr noundef %0, ptr noundef %i.bg, i32 noundef 256, i32 noundef %i.qx)
  %.not1478 = icmp eq i32 %i.qy, 0
  br i1 %.not1478, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.qz = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.ed:                                            ; preds = %bb.eb
  %i.ra = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !71
  %i.rb = load <2 x i32>, ptr %i.ad, align 8, !tbaa !32
  %i.rc = tail call fastcc i32 @make_decode_table(i32 noundef 2576, i32 noundef 12, ptr noundef %i.bg, ptr noundef %i.bv)
  %.not1479 = icmp eq i32 %i.rc, 0
  br i1 %.not1479, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  store i32 11, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.ef:                                            ; preds = %bb.ed
  %i.rd = load i8, ptr %i.bw, align 8, !tbaa !41
  %.not1480 = icmp eq i8 %i.rd, 0
  br i1 %.not1480, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  store i8 1, ptr %i.br, align 4, !tbaa !72
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  store <2 x ptr> %i.ra, ptr %i.ab, align 8, !tbaa !71
  store <2 x i32> %i.rb, ptr %i.ad, align 8, !tbaa !32
  %i.re = tail call fastcc i32 @lzxd_read_lens(ptr noundef %0, ptr noundef %i.bh, i32 noundef 0, i32 noundef 249)
  %.not1481 = icmp eq i32 %i.re, 0
  br i1 %.not1481, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.rf = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.ej:                                            ; preds = %bb.eh
  %i.rg = load ptr, ptr %i.ab, align 8, !tbaa !42 ; 2 uses
  %i.rh = load ptr, ptr %i.ac, align 8, !tbaa !43 ; 2 uses
  %i.ri = load i32, ptr %i.ad, align 8, !tbaa !44 ; 2 uses
  %i.rj = load i32, ptr %i.ae, align 4, !tbaa !45 ; 2 uses
  store i8 0, ptr %i.bx, align 2, !tbaa !73
  %i.rk = tail call fastcc i32 @make_decode_table(i32 noundef 250, i32 noundef 12, ptr noundef %i.bh, ptr noundef %i.by)
  %.not1482 = icmp eq i32 %i.rk, 0
  br i1 %.not1482, label %bb.gk, label %.preheader1890

.preheader1890.1:                                 ; preds = %.preheader1890
  %i.rl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv3643
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 1
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !41
  %.not1534.1 = icmp eq i8 %i.rn, 0
  br i1 %.not1534.1, label %.preheader1890.2, label %bb.el

.preheader1890.2:                                 ; preds = %.preheader1890.1
  %i.ro = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv3643
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 2
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !41
  %.not1534.2 = icmp eq i8 %i.rq, 0
  br i1 %.not1534.2, label %.preheader1890.3, label %bb.el

.preheader1890.3:                                 ; preds = %.preheader1890.2
  %i.rr = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv3643
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 3
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !41
  %.not1534.3 = icmp eq i8 %i.rt, 0
  br i1 %.not1534.3, label %.preheader1890.4, label %bb.el

.preheader1890.4:                                 ; preds = %.preheader1890.3
  %i.ru = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv3643
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 4
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !41
  %.not1534.4 = icmp eq i8 %i.rw, 0
  br i1 %.not1534.4, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %.preheader1890.4
  %indvars.iv.next3644.4 = add nuw nsw i64 %indvars.iv3643, 5 ; 2 uses
  %exitcond3646.not.4 = icmp eq i64 %indvars.iv.next3644.4, 250
  br i1 %exitcond3646.not.4, label %bb.em, label %.preheader1890

.preheader1890:                                   ; preds = %bb.ej, %bb.ek
  %indvars.iv3643 = phi i64 [ %indvars.iv.next3644.4, %bb.ek ], [ 0, %bb.ej ] ; 6 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv3643
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !41
  %.not1534 = icmp eq i8 %i.ry, 0
  br i1 %.not1534, label %.preheader1890.1, label %bb.el

bb.el:                                            ; preds = %.preheader1890.4, %.preheader1890.3, %.preheader1890.2, %.preheader1890.1, %.preheader1890
  store i32 11, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.em:                                            ; preds = %bb.ek
  store i8 1, ptr %i.bx, align 2, !tbaa !73
  br label %bb.gk

bb.en:                                            ; preds = %._crit_edge3322
  store i8 1, ptr %i.br, align 4, !tbaa !72
  %or.cond28 = icmp eq i32 %.171062.lcssa, 8
  br i1 %or.cond28, label %bb.ep, label %bb.ex

bb.eo:                                            ; preds = %bb.ew, %bb.et
  %.431232 = phi ptr [ %i.sh, %bb.ew ], [ %i.se, %bb.et ]
  %.431171 = phi ptr [ %i.si, %bb.ew ], [ %.421170, %bb.et ]
  %i.rz = getelementptr inbounds nuw i8, ptr %.431232, i64 1
  br label %bb.ex

bb.ep:                                            ; preds = %bb.en
  %.not1470 = icmp ult ptr %.311220.lcssa, %.311159.lcssa
  br i1 %.not1470, label %bb.et, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.sa = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1471 = icmp eq i32 %i.sa, 0
  br i1 %.not1471, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.sb = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.es:                                            ; preds = %bb.eq
  %i.sc = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.sd = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.ep
  %.421231 = phi ptr [ %i.sc, %bb.es ], [ %.311220.lcssa, %bb.ep ]
  %.421170 = phi ptr [ %i.sd, %bb.es ], [ %.311159.lcssa, %bb.ep ] ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.421231, i64 1 ; 2 uses
  %.not1472 = icmp ult ptr %i.se, %.421170
  br i1 %.not1472, label %bb.eo, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.sf = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1473 = icmp eq i32 %i.sf, 0
  br i1 %.not1473, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.sg = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.ew:                                            ; preds = %bb.eu
  %i.sh = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.si = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.eo

bb.ex:                                            ; preds = %bb.eo, %bb.en
  %.451234 = phi ptr [ %i.rz, %bb.eo ], [ %.311220.lcssa, %bb.en ] ; 2 uses
  %.451173 = phi ptr [ %.431171, %bb.eo ], [ %.311159.lcssa, %bb.en ] ; 2 uses
  %.not1474 = icmp ult ptr %.451234, %.451173
  br i1 %.not1474, label %bb.fb, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.sj = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1475 = icmp eq i32 %i.sj, 0
  br i1 %.not1475, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.gg, %bb.gd, %bb.ga, %bb.fx, %bb.fu, %bb.fr, %bb.fo, %bb.fl, %bb.fi, %bb.ff, %bb.fc, %bb.ey
  %i.sk = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.fa:                                            ; preds = %bb.ey
  %i.sl = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.sm = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ex
  %.471236 = phi ptr [ %i.sl, %bb.fa ], [ %.451234, %bb.ex ] ; 2 uses
  %.471175 = phi ptr [ %i.sm, %bb.fa ], [ %.451173, %bb.ex ] ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %.471236, i64 1 ; 2 uses
  %i.so = load i8, ptr %.471236, align 1, !tbaa !41
  %.sroa.0.0.insert.ext = zext i8 %i.so to i32
  %.not1474.1 = icmp ult ptr %i.sn, %.471175
  br i1 %.not1474.1, label %bb.fe, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.sp = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1475.1 = icmp eq i32 %i.sp, 0
  br i1 %.not1475.1, label %bb.fd, label %bb.ez

bb.fd:                                            ; preds = %bb.fc
  %i.sq = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.sr = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fb
  %.471236.1 = phi ptr [ %i.sq, %bb.fd ], [ %i.sn, %bb.fb ] ; 2 uses
  %.471175.1 = phi ptr [ %i.sr, %bb.fd ], [ %.471175, %bb.fb ] ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.471236.1, i64 1 ; 2 uses
  %i.st = load i8, ptr %.471236.1, align 1, !tbaa !41
  %.sroa.0.1.insert.ext = zext i8 %i.st to i32
  %.sroa.0.1.insert.shift = shl nuw nsw i32 %.sroa.0.1.insert.ext, 8
  %.sroa.0.1.insert.insert = or disjoint i32 %.sroa.0.1.insert.shift, %.sroa.0.0.insert.ext
  %.not1474.2 = icmp ult ptr %i.ss, %.471175.1
  br i1 %.not1474.2, label %bb.fh, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.su = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1475.2 = icmp eq i32 %i.su, 0
  br i1 %.not1475.2, label %bb.fg, label %bb.ez

bb.fg:                                            ; preds = %bb.ff
  %i.sv = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.sw = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.fe
  %.471236.2 = phi ptr [ %i.sv, %bb.fg ], [ %i.ss, %bb.fe ] ; 2 uses
  %.471175.2 = phi ptr [ %i.sw, %bb.fg ], [ %.471175.1, %bb.fe ] ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.471236.2, i64 1 ; 2 uses
  %i.sy = load i8, ptr %.471236.2, align 1, !tbaa !41
  %.sroa.0.2.insert.ext = zext i8 %i.sy to i32
  %.sroa.0.2.insert.shift = shl nuw nsw i32 %.sroa.0.2.insert.ext, 16
  %.sroa.0.2.insert.insert = or disjoint i32 %.sroa.0.1.insert.insert, %.sroa.0.2.insert.shift
  %.not1474.3 = icmp ult ptr %i.sx, %.471175.2
  br i1 %.not1474.3, label %bb.fk, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.sz = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1475.3 = icmp eq i32 %i.sz, 0
  br i1 %.not1475.3, label %bb.fj, label %bb.ez

bb.fj:                                            ; preds = %bb.fi
  %i.ta = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.tb = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fh
  %.471236.3 = phi ptr [ %i.ta, %bb.fj ], [ %i.sx, %bb.fh ] ; 2 uses
  %.471175.3 = phi ptr [ %i.tb, %bb.fj ], [ %.471175.2, %bb.fh ] ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.471236.3, i64 1 ; 2 uses
  %i.td = load i8, ptr %.471236.3, align 1, !tbaa !41
  %.sroa.0.3.insert.ext = zext i8 %i.td to i32
  %.sroa.0.3.insert.shift = shl nuw i32 %.sroa.0.3.insert.ext, 24
  %.sroa.0.3.insert.insert = or disjoint i32 %.sroa.0.2.insert.insert, %.sroa.0.3.insert.shift
  %.not1474.4 = icmp ult ptr %i.tc, %.471175.3
  br i1 %.not1474.4, label %bb.fn, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.te = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1475.4 = icmp eq i32 %i.te, 0
  br i1 %.not1475.4, label %bb.fm, label %bb.ez

bb.fm:                                            ; preds = %bb.fl
  %i.tf = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.tg = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fk
  %.471236.4 = phi ptr [ %i.tf, %bb.fm ], [ %i.tc, %bb.fk ] ; 2 uses
  %.471175.4 = phi ptr [ %i.tg, %bb.fm ], [ %.471175.3, %bb.fk ] ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.471236.4, i64 1 ; 2 uses
  %i.ti = load i8, ptr %.471236.4, align 1, !tbaa !41
  %.sroa.7.4.insert.ext = zext i8 %i.ti to i32
  %.not1474.5 = icmp ult ptr %i.th, %.471175.4
  br i1 %.not1474.5, label %bb.fq, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.tj = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1475.5 = icmp eq i32 %i.tj, 0
  br i1 %.not1475.5, label %bb.fp, label %bb.ez

bb.fp:                                            ; preds = %bb.fo
  %i.tk = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.tl = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fn
  %.471236.5 = phi ptr [ %i.tk, %bb.fp ], [ %i.th, %bb.fn ] ; 2 uses
  %.471175.5 = phi ptr [ %i.tl, %bb.fp ], [ %.471175.4, %bb.fn ] ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.471236.5, i64 1 ; 2 uses
  %i.tn = load i8, ptr %.471236.5, align 1, !tbaa !41
  %.sroa.7.5.insert.ext = zext i8 %i.tn to i32
  %.sroa.7.5.insert.shift = shl nuw nsw i32 %.sroa.7.5.insert.ext, 8
  %.sroa.7.5.insert.insert = or disjoint i32 %.sroa.7.5.insert.shift, %.sroa.7.4.insert.ext
  %.not1474.6 = icmp ult ptr %i.tm, %.471175.5
  br i1 %.not1474.6, label %bb.ft, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.to = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1475.6 = icmp eq i32 %i.to, 0
  br i1 %.not1475.6, label %bb.fs, label %bb.ez

bb.fs:                                            ; preds = %bb.fr
  %i.tp = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.tq = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fq
  %.471236.6 = phi ptr [ %i.tp, %bb.fs ], [ %i.tm, %bb.fq ] ; 2 uses
  %.471175.6 = phi ptr [ %i.tq, %bb.fs ], [ %.471175.5, %bb.fq ] ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.471236.6, i64 1 ; 2 uses
  %i.ts = load i8, ptr %.471236.6, align 1, !tbaa !41
  %.sroa.7.6.insert.ext = zext i8 %i.ts to i32
  %.sroa.7.6.insert.shift = shl nuw nsw i32 %.sroa.7.6.insert.ext, 16
  %.sroa.7.6.insert.insert = or disjoint i32 %.sroa.7.5.insert.insert, %.sroa.7.6.insert.shift
  %.not1474.7 = icmp ult ptr %i.tr, %.471175.6
  br i1 %.not1474.7, label %bb.fw, label %bb.fu

end_hunk_0

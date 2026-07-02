inline.NumInlined: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@decompTest:bb.a
bb.dn:                                            ; preds = %bb.dm, %bb.dm, %bb.dm, %bb.dm
  %switch.tableidx = add i32 %i.mi, -1            ; 3 uses
  %i.mk = icmp ult i32 %switch.tableidx, 6
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 57, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond60 = select i1 %i.mk, i1 %switch.lobit, i1 false
  br i1 %or.cond60, label %switch.lookup, label %bb.do

switch.lookup:                                    ; preds = %bb.dn
  %i.ml = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.decompTest, i64 %i.ml
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %switch.lookup, %bb.dm
  %.0664 = phi i32 [ %i.mi, %bb.dm ], [ %switch.ext, %switch.lookup ], [ %i.mi, %bb.dn ] ; 3 uses
  %.b733 = load i1, ptr @noRealloc, align 4
  %not..b733 = xor i1 %.b733, true
  %or.cond77 = and i1 %or.cond5, %not..b733
  br i1 %or.cond77, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %bb.do
  %i.mm = call noalias ptr @malloc(i64 noundef %i.lv) #26 ; 2 uses
  %i.mn = icmp eq ptr %i.mm, null
  br i1 %i.mn, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.mo = tail call ptr @__errno_location() #25
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !4
  %i.mq = call ptr @strerror(i32 noundef %i.mp) #22
  %i.mr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 772, ptr noundef nonnull @.str.260, ptr noundef %i.mq) ; 0 uses
  br label %.thread921

bb.dr:                                            ; preds = %bb.dp, %bb.do
  %.1 = phi ptr [ %i.mm, %bb.dp ], [ null, %bb.do ] ; 9 uses
  %i.ms = load i32, ptr @quiet, align 4, !tbaa !4
  switch i32 %i.ms, label %bb.ei [
    i32 0, label %bb.ds
    i32 1, label %bb.eb
  ]

bb.ds:                                            ; preds = %bb.dr
  %.b744 = load i1, ptr @doTile, align 4
  %i.mt = select i1 %.b744, ptr @.str.262, ptr @.str.116
  %i.mu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.261, ptr noundef nonnull %i.mt, i32 noundef %spec.select, i32 noundef %.1649) ; 0 uses
  %i.mv = load i32, ptr @sf, align 8, !tbaa !25   ; 5 uses
  %i.mw = icmp ne i32 %i.mv, 1
  %i.mx = load i32, ptr getelementptr inbounds nuw (i8, ptr @sf, i64 4), align 4 ; 8 uses
  %i.my = icmp ne i32 %i.mx, 1
  %or.cond79 = select i1 %i.mw, i1 true, i1 %i.my
  %i.mz = load i32, ptr @cr, align 16             ; 2 uses
  %i.na = icmp ne i32 %i.mz, 0                    ; 2 uses
  %or.cond81 = select i1 %or.cond79, i1 true, i1 %i.na
  %i.nb = load i32, ptr getelementptr inbounds nuw (i8, ptr @cr, i64 4), align 4 ; 2 uses
  %i.nc = icmp ne i32 %i.nb, 0                    ; 2 uses
  %or.cond83 = select i1 %or.cond81, i1 true, i1 %i.nc
  %i.nd = load i32, ptr getelementptr inbounds nuw (i8, ptr @cr, i64 8), align 8 ; 2 uses
  %i.ne = icmp ne i32 %i.nd, 0                    ; 3 uses
  %or.cond85 = select i1 %or.cond83, i1 true, i1 %i.ne
  %i.nf = load i32, ptr getelementptr inbounds nuw (i8, ptr @cr, i64 12), align 4 ; 2 uses
  %i.ng = icmp ne i32 %i.nf, 0                    ; 3 uses
  %or.cond87 = select i1 %or.cond85, i1 true, i1 %i.ng
  br i1 %or.cond87, label %bb.dt, label %bb.ea

bb.dt:                                            ; preds = %bb.ds
  %or.cond89 = select i1 %i.na, i1 true, i1 %i.nc
  %or.cond91 = select i1 %or.cond89, i1 true, i1 %i.ne
  %or.cond93 = select i1 %or.cond91, i1 true, i1 %i.ng
  br i1 %or.cond93, label %bb.du, label %bb.dy

bb.du:                                            ; preds = %bb.dt
  br i1 %i.ne, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.nh = mul nsw i32 %i.mv, %i.hi
  %i.ni = add i32 %i.mx, -1
  %i.nj = add i32 %i.ni, %i.nh
  %i.nk = sdiv i32 %i.nj, %i.mx
  %i.nl = sub nsw i32 %i.nk, %i.mz
  br label %bb.dw

bb.dw:                                            ; preds = %bb.du, %bb.dv
  %.ph = phi i32 [ %i.nd, %bb.du ], [ %i.nl, %bb.dv ] ; 2 uses
  br i1 %i.ng, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.nm = mul nsw i32 %i.mv, %i.hj
  %i.nn = add i32 %i.mx, -1
  %i.no = add i32 %i.nn, %i.nm
  %i.np = sdiv i32 %i.no, %i.mx
  %i.nq = sub nsw i32 %i.np, %i.nb
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dt
  %i.nr = mul nsw i32 %i.mv, %i.hi
  %i.ns = add i32 %i.mx, -1                       ; 2 uses
  %i.nt = add i32 %i.ns, %i.nr
  %i.nu = sdiv i32 %i.nt, %i.mx
  %i.nv = mul nsw i32 %i.mv, %i.hj
  %i.nw = add i32 %i.ns, %i.nv
  %i.nx = sdiv i32 %i.nw, %i.mx
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dw, %bb.dx, %bb.dy
  %i.ny = phi i32 [ %i.nu, %bb.dy ], [ %.ph, %bb.dx ], [ %.ph, %bb.dw ]
  %i.nz = phi i32 [ %i.nx, %bb.dy ], [ %i.nq, %bb.dx ], [ %i.nf, %bb.dw ]
  %i.oa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.263, i32 noundef %i.ny, i32 noundef %i.nz) ; 0 uses
  br label %bb.ea

bb.ea:                                            ; preds = %bb.ds, %bb.dz
  %putchar805 = call i32 @putchar(i32 10)         ; 0 uses
  br label %bb.ei

bb.eb:                                            ; preds = %bb.dr
  %i.ob = load i32, ptr @pf, align 4, !tbaa !4
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr inbounds [8 x i8], ptr @pixFormatStr, i64 %i.oc
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !10
  %.b736 = load i1, ptr @bottomUp, align 4
  %i.of = select i1 %.b736, ptr @.str.265, ptr @.str.266
  %i.og = call fastcc ptr @formatName(i32 noundef %.fr, i32 noundef %i.iy, ptr noundef %i.c)
  %i.oh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.264, ptr noundef %i.oe, ptr noundef nonnull %i.of, ptr noundef %i.og) ; 0 uses
  %i.oi = load i32, ptr @cr, align 16, !tbaa !20  ; 2 uses
  %i.oj = icmp ne i32 %i.oi, 0
  %i.ok = load i32, ptr getelementptr inbounds nuw (i8, ptr @cr, i64 4), align 4 ; 2 uses
  %i.ol = icmp ne i32 %i.ok, 0
  %or.cond101 = select i1 %i.oj, i1 true, i1 %i.ol
  %i.om = load i32, ptr getelementptr inbounds nuw (i8, ptr @cr, i64 8), align 8 ; 2 uses
  %i.on = icmp ne i32 %i.om, 0                    ; 2 uses
  %or.cond103 = select i1 %or.cond101, i1 true, i1 %i.on
  %i.oo = load i32, ptr getelementptr inbounds nuw (i8, ptr @cr, i64 12), align 4 ; 2 uses
  %i.op = icmp ne i32 %i.oo, 0                    ; 2 uses
  %or.cond105 = select i1 %or.cond103, i1 true, i1 %i.op
  br i1 %or.cond105, label %bb.ec, label %bb.eg

bb.ec:                                            ; preds = %bb.eb
  br i1 %i.on, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.oq = load i32, ptr @sf, align 8, !tbaa !25
  %i.or = mul nsw i32 %i.oq, %spec.select
  %i.os = load i32, ptr getelementptr inbounds nuw (i8, ptr @sf, i64 4), align 4, !tbaa !32 ; 2 uses
  %i.ot = add i32 %i.os, -1
  %i.ou = add i32 %i.ot, %i.or
  %i.ov = sdiv i32 %i.ou, %i.os
  %i.ow = sub nsw i32 %i.ov, %i.oi
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ec, %bb.ed
  %.ph914 = phi i32 [ %i.om, %bb.ec ], [ %i.ow, %bb.ed ] ; 2 uses
  br i1 %i.op, label %bb.eh, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ox = load i32, ptr @sf, align 8, !tbaa !25
  %i.oy = mul nsw i32 %i.ox, %.1649
  %i.oz = load i32, ptr getelementptr inbounds nuw (i8, ptr @sf, i64 4), align 4, !tbaa !32 ; 2 uses
  %i.pa = add i32 %i.oz, -1
  %i.pb = add i32 %i.pa, %i.oy
  %i.pc = sdiv i32 %i.pb, %i.oz
  %i.pd = sub nsw i32 %i.pc, %i.ok
  br label %bb.eh

bb.eg:                                            ; preds = %bb.eb
  %i.pe = load i32, ptr @sf, align 8, !tbaa !25   ; 2 uses
  %i.pf = mul nsw i32 %i.pe, %spec.select
  %i.pg = load i32, ptr getelementptr inbounds nuw (i8, ptr @sf, i64 4), align 4, !tbaa !32 ; 3 uses
  %i.ph = add i32 %i.pg, -1                       ; 2 uses
  %i.pi = add i32 %i.ph, %i.pf
  %i.pj = sdiv i32 %i.pi, %i.pg
  %i.pk = mul nsw i32 %i.pe, %.1649
  %i.pl = add i32 %i.ph, %i.pk
  %i.pm = sdiv i32 %i.pl, %i.pg
  br label %bb.eh

bb.eh:                                            ; preds = %bb.ee, %bb.ef, %bb.eg
  %i.pn = phi i32 [ %i.pj, %bb.eg ], [ %.ph914, %bb.ef ], [ %.ph914, %bb.ee ]
  %i.po = phi i32 [ %i.pm, %bb.eg ], [ %i.pd, %bb.ef ], [ %i.oo, %bb.ee ]
  %i.pp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.267, i32 noundef %i.pn, i32 noundef %i.po) ; 0 uses
  br label %bb.ei

bb.ei:                                            ; preds = %bb.dr, %bb.eh, %bb.ea
  br i1 %or.cond5, label %bb.ej, label %bb.fq

bb.ej:                                            ; preds = %bb.ei
  %i.pq = mul nsw i64 %i.ls, 40
  %i.pr = mul i64 %i.pq, %i.lu
  %i.ps = call noalias ptr @malloc(i64 noundef %i.pr) #26 ; 8 uses
  %i.pt = icmp eq ptr %i.ps, null
  br i1 %i.pt, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.pu = tail call ptr @__errno_location() #25
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !4
  %i.pw = call ptr @strerror(i32 noundef %i.pv) #22
  %i.px = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 790, ptr noundef nonnull @.str.268, ptr noundef %i.pw) ; 0 uses
  br label %.thread921

bb.el:                                            ; preds = %bb.ej
  %i.py = load i32, ptr @xformOp, align 4, !tbaa !4 ; 4 uses
  switch i32 %i.py, label %bb.en [
    i32 7, label %bb.em
    i32 5, label %bb.em
    i32 4, label %bb.em
    i32 3, label %bb.em
  ]

bb.em:                                            ; preds = %bb.el, %bb.el, %bb.el, %bb.el
  br label %bb.en

bb.en:                                            ; preds = %bb.el, %bb.em
  %.0661 = phi i32 [ %spec.select, %bb.em ], [ %.1649, %bb.el ] ; 6 uses
  %.0658 = phi i32 [ %.1649, %bb.em ], [ %spec.select, %bb.el ] ; 6 uses
  %.0655 = phi i32 [ %i.hi, %bb.em ], [ %i.hj, %bb.el ] ; 3 uses
  %.0652 = phi i32 [ %i.hj, %bb.em ], [ %i.hi, %bb.el ] ; 5 uses
  br i1 %i.li, label %switch.early.test, label %bb.ep

switch.early.test:                                ; preds = %bb.en
  switch i32 %i.py, label %bb.eo [
    i32 0, label %bb.er
    i32 3, label %bb.er
  ]

bb.eo:                                            ; preds = %switch.early.test
  %i.pz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 800, ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.257) ; 0 uses
  br label %.thread921

bb.ep:                                            ; preds = %bb.en
  switch i32 %i.py, label %bb.er [
    i32 6, label %bb.eq
    i32 5, label %bb.eq
    i32 4, label %bb.eq
    i32 1, label %bb.eq
  ]

bb.eq:                                            ; preds = %bb.ep, %bb.ep, %bb.ep, %bb.ep
  %i.qa = sext i32 %.0664 to i64
  %i.qb = getelementptr inbounds [4 x i8], ptr @tjMCUWidth, i64 %i.qa
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !4
  %i.qd = srem i32 %.0652, %i.qc
  %i.qe = sub nsw i32 %.0652, %i.qd
  br label %bb.er

bb.er:                                            ; preds = %switch.early.test, %switch.early.test, %bb.ep, %bb.eq
  %.1653 = phi i32 [ %i.qe, %bb.eq ], [ %.0652, %bb.ep ], [ %.0652, %switch.early.test ], [ %.0652, %switch.early.test ] ; 4 uses
  switch i32 %i.py, label %bb.et [
    i32 7, label %bb.es
    i32 6, label %bb.es
    i32 4, label %bb.es
    i32 2, label %bb.es
  ]

bb.es:                                            ; preds = %bb.er, %bb.er, %bb.er, %bb.er
  %i.qf = sext i32 %.0664 to i64
  %i.qg = getelementptr inbounds [4 x i8], ptr @tjMCUHeight, i64 %i.qf
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !4
  %i.qi = srem i32 %.0655, %i.qh
  %i.qj = sub nsw i32 %.0655, %i.qi
  br label %bb.et

bb.et:                                            ; preds = %bb.er, %bb.es
  %.1656 = phi i32 [ %i.qj, %bb.es ], [ %.0655, %bb.er ] ; 4 uses
  %i.qk = add i32 %.0658, -1
  %i.ql = add i32 %i.qk, %.1653
  %i.qm = sdiv i32 %i.ql, %.0658                  ; 3 uses
  %i.qn = add i32 %.0661, -1
  %i.qo = add i32 %i.qn, %.1656
  %i.qp = sdiv i32 %i.qo, %.0661                  ; 3 uses
  %i.qq = icmp sgt i32 %i.qp, 0
  %i.qr = icmp sgt i32 %i.qm, 0
  %or.cond1055 = select i1 %i.qq, i1 %i.qr, i1 false
  br i1 %or.cond1055, label %.preheader977, label %.preheader978

.preheader978:                                    ; preds = %._crit_edge, %bb.et
  %i.qs = mul i32 %i.qp, %i.qm                    ; 5 uses
  %i.qt = icmp slt i32 %i.qs, 1
  %i.qu = load ptr, ptr %i.a, align 8
  %i.qv = load i64, ptr %i.b, align 8
  %i.qw = zext i32 %i.qs to i64                   ; 4 uses
  %i.qx = shl nuw nsw i64 %i.qw, 3
  br label %.outer

.preheader977:                                    ; preds = %bb.et, %._crit_edge
  %.06291041 = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.et ]
  %.06321040 = phi i32 [ %i.sl, %._crit_edge ], [ 0, %bb.et ] ; 2 uses
  %i.qy = mul nsw i32 %.06321040, %.0661          ; 2 uses
  %i.qz = sub nsw i32 %.1656, %i.qy
  %i.ra = call i32 @llvm.smin.i32(i32 %.0661, i32 %i.qz)
  %sext = shl i64 %.06291041, 32
  %i.rb = ashr exact i64 %sext, 32
  br label %bb.eu

bb.eu:                                            ; preds = %.preheader977, %bb.fd
  %indvars.iv = phi i64 [ %i.rb, %.preheader977 ], [ %indvars.iv.next, %bb.fd ] ; 4 uses
  %.06331038 = phi i32 [ 0, %.preheader977 ], [ %i.sk, %bb.fd ] ; 2 uses
  %i.rc = mul nsw i32 %.06331038, %.0658          ; 2 uses
  %i.rd = sub nsw i32 %.1653, %i.rc
  %.0658. = call i32 @llvm.smin.i32(i32 %.0658, i32 %i.rd)
  %i.re = getelementptr inbounds [40 x i8], ptr %i.ps, i64 %indvars.iv ; 8 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  store i32 %.0658., ptr %i.rf, align 8, !tbaa !45
  %i.rg = getelementptr inbounds nuw i8, ptr %i.re, i64 12
  store i32 %i.ra, ptr %i.rg, align 4, !tbaa !47
  store i32 %i.rc, ptr %i.re, align 8, !tbaa !48
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 4
  store i32 %i.qy, ptr %i.rh, align 4, !tbaa !49
  %1 = load i32, ptr @xformOp, align 4, !tbaa !4
  %i.ri = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  store i32 %1, ptr %i.ri, align 8, !tbaa !50
  %2 = load i32, ptr @xformOpt, align 4, !tbaa !4 ; 2 uses
  %i.rj = or i32 %2, 2
  %i.rk = getelementptr inbounds nuw i8, ptr %i.re, i64 20
  store i32 %i.rj, ptr %i.rk, align 4, !tbaa !51
  %3 = load ptr, ptr @customFilter, align 8, !tbaa !8
  %i.rl = getelementptr inbounds nuw i8, ptr %i.re, i64 32
  store ptr %3, ptr %i.rl, align 8, !tbaa !52
  %i.rm = and i32 %2, 16
  %i.rn = icmp ne i32 %i.rm, 0
  %.b = load i1, ptr @noRealloc, align 4
  %or.cond135.not = select i1 %i.rn, i1 true, i1 %.b
  br i1 %or.cond135.not, label %bb.fd, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.ro = call i64 @tj3TransformBufSize(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.re) #22 ; 3 uses
  %i.rp = icmp eq i64 %i.ro, 0
  br i1 %i.rp, label %bb.ew, label %.thread917

bb.ew:                                            ; preds = %bb.ev
  %i.rq = call i32 @tj3GetErrorCode(ptr noundef nonnull %i.aw) #22
  %i.rr = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.aw) #22 ; 4 uses
  %i.rs = call i32 @tj3Get(ptr noundef nonnull %i.aw, i32 noundef 0) #22
  %i.rt = icmp eq i32 %i.rs, 0
  %i.ru = icmp eq i32 %i.rq, 0                    ; 2 uses
  %or.cond137 = select i1 %i.rt, i1 %i.ru, i1 false
  br i1 %or.cond137, label %bb.ex, label %bb.fa

bb.ex:                                            ; preds = %bb.ew
  %i.rv = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.rr, i64 noundef 200) #23
  %.not813 = icmp eq i32 %i.rv, 0
  br i1 %.not813, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %.b752 = load i1, ptr @tjErrorCode, align 4
  %i.rw = load i32, ptr @tjErrorLine, align 4
  %i.rx = icmp eq i32 %i.rw, 822
  %or.cond139.not = select i1 %.b752, i1 %i.rx, i1 false
  br i1 %or.cond139.not, label %.thread917, label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %i.ry = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.rr, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 822, ptr @tjErrorLine, align 4, !tbaa !4
  %i.rz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, i32 noundef 822, ptr noundef nonnull %i.rr) ; 0 uses
  br label %.thread917

bb.fa:                                            ; preds = %bb.ew
  %i.sa = select i1 %i.ru, ptr @.str.111, ptr @.str.112
  %i.sb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, ptr noundef nonnull %i.sa, i32 noundef 822, ptr noundef %i.rr) ; 0 uses
  br label %.thread921

.thread917:                                       ; preds = %bb.ez, %bb.ey, %bb.ev
  %i.sc = call ptr @tj3Alloc(i64 noundef %i.ro) #22 ; 2 uses
  %i.sd = getelementptr inbounds [8 x i8], ptr %calloc1178, i64 %indvars.iv
  store ptr %i.sc, ptr %i.sd, align 8, !tbaa !10
  %i.se = icmp eq ptr %i.sc, null
  br i1 %i.se, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %.thread917
  %i.sf = tail call ptr @__errno_location() #25
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !4
  %i.sh = call ptr @strerror(i32 noundef %i.sg) #22
  %i.si = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 824, ptr noundef nonnull @.str.269, ptr noundef %i.sh) ; 0 uses
  br label %.thread921

bb.fc:                                            ; preds = %.thread917
  %i.sj = getelementptr inbounds [8 x i8], ptr %.1, i64 %indvars.iv
  store i64 %i.ro, ptr %i.sj, align 8, !tbaa !43
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.eu
  %i.sk = add nuw nsw i32 %.06331038, 1           ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i32 %i.sk, %i.qm
  br i1 %exitcond.not, label %._crit_edge, label %bb.eu, !llvm.loop !53

._crit_edge:                                      ; preds = %bb.fd
  %i.sl = add nuw nsw i32 %.06321040, 1           ; 2 uses
  %exitcond1116.not = icmp eq i32 %i.sl, %i.qp
  br i1 %exitcond1116.not, label %.preheader978, label %.preheader977, !llvm.loop !54

bb.fe:                                            ; preds = %.outer, %bb.fm
  %.0626 = phi double [ %i.tj, %bb.fm ], [ %.0626.ph, %.outer ]
  %i.sm = call double @getTime() #22
  %.b732 = load i1, ptr @noRealloc, align 4
  br i1 %.b732, label %.loopexit, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %.b743 = load i1, ptr @doTile, align 4
  %i.sn = load i32, ptr @xformOp, align 4
  %i.so = icmp eq i32 %i.sn, 0
  %not..b743 = xor i1 %.b743, true
  %or.cond141 = select i1 %not..b743, i1 %i.so, i1 false
  %i.sp = load i32, ptr @xformOpt, align 4
  %i.sq = icmp eq i32 %i.sp, 0
  %or.cond143 = select i1 %or.cond141, i1 %i.sq, i1 false
  %i.sr = load ptr, ptr @customFilter, align 8
  %i.ss = icmp eq ptr %i.sr, null
  %or.cond145 = select i1 %or.cond143, i1 %i.ss, i1 false
  %brmerge1057 = select i1 %or.cond145, i1 true, i1 %i.qt
  br i1 %brmerge1057, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ff
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %calloc, ptr align 8 %.1, i64 %i.qx, i1 false), !tbaa !43
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.preheader, %bb.ff, %bb.fe
  %i.st = call i32 @tj3Transform(ptr noundef nonnull %i.aw, ptr noundef %i.qu, i64 noundef %i.qv, i32 noundef %i.qs, ptr noundef nonnull %calloc1178, ptr noundef nonnull %calloc, ptr noundef nonnull %i.ps) #22
  %i.su = icmp eq i32 %i.st, -1
  br i1 %i.su, label %bb.fg, label %.thread925

bb.fg:                                            ; preds = %.loopexit
  %i.sv = call i32 @tj3GetErrorCode(ptr noundef nonnull %i.aw) #22
  %i.sw = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.aw) #22 ; 4 uses
  %i.sx = call i32 @tj3Get(ptr noundef nonnull %i.aw, i32 noundef 0) #22
  %i.sy = icmp eq i32 %i.sx, 0
  %i.sz = icmp eq i32 %i.sv, 0                    ; 2 uses
  %or.cond147 = select i1 %i.sy, i1 %i.sz, i1 false
  br i1 %or.cond147, label %bb.fh, label %bb.fk

bb.fh:                                            ; preds = %bb.fg
  %i.ta = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.sw, i64 noundef 200) #23
  %.not806 = icmp eq i32 %i.ta, 0
  br i1 %.not806, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %.b751 = load i1, ptr @tjErrorCode, align 4
  %i.tb = load i32, ptr @tjErrorLine, align 4
  %i.tc = icmp eq i32 %i.tb, 841
  %or.cond149.not = select i1 %.b751, i1 %i.tc, i1 false
  br i1 %or.cond149.not, label %.thread925, label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.td = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.sw, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 841, ptr @tjErrorLine, align 4, !tbaa !4
  %i.te = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, i32 noundef 841, ptr noundef nonnull %i.sw) ; 0 uses
  br label %.thread925

bb.fk:                                            ; preds = %bb.fg
  %i.tf = select i1 %i.sz, ptr @.str.111, ptr @.str.112
  %i.tg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, ptr noundef nonnull %i.tf, i32 noundef 841, ptr noundef %i.sw) ; 0 uses
  br label %.thread921

.thread925:                                       ; preds = %bb.fi, %bb.fj, %.loopexit
  %i.th = call double @getTime() #22
  %i.ti = fsub double %i.th, %i.sm
  %i.tj = fadd double %.0626, %i.ti               ; 8 uses
  br i1 %i.tn, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %.thread925
  %i.tk = add nuw nsw i32 %.0636.ph, 1
  %i.tl = load double, ptr @benchTime, align 8, !tbaa !14
  %i.tm = fcmp ult double %i.tj, %i.tl
  br i1 %i.tm, label %.outer.backedge, label %bb.fn

.outer.backedge:                                  ; preds = %bb.fm, %bb.fl
  %.0636.ph.be = phi i32 [ %i.tk, %bb.fl ], [ 0, %bb.fm ]
  %.0626.ph.be = phi double [ %i.tj, %bb.fl ], [ 0.000000e+00, %bb.fm ]
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %.preheader978
  %.0636.ph = phi i32 [ -1, %.preheader978 ], [ %.0636.ph.be, %.outer.backedge ] ; 2 uses
  %.0626.ph = phi double [ 0.000000e+00, %.preheader978 ], [ %.0626.ph.be, %.outer.backedge ]
  %i.tn = icmp sgt i32 %.0636.ph, -1
  br label %bb.fe

bb.fm:                                            ; preds = %.thread925
  %i.to = load double, ptr @warmup, align 8, !tbaa !14
  %i.tp = fcmp ult double %i.tj, %i.to
  br i1 %i.tp, label %bb.fe, label %.outer.backedge

bb.fn:                                            ; preds = %bb.fl
  call void @free(ptr noundef nonnull %i.ps) #22
  %i.tq = icmp sgt i32 %i.qs, 0
  br i1 %i.tq, label %.lr.ph1046.preheader, label %._crit_edge1047

.lr.ph1046.preheader:                             ; preds = %bb.fn
  %min.iters.check = icmp ult i32 %i.qs, 4
  br i1 %min.iters.check, label %.lr.ph1046.preheader61, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph1046.preheader
  %n.vec = and i64 %i.qw, 2147483644              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.tt, %vector.body ]
  %vec.phi57 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.tu, %vector.body ]
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %calloc, i64 %index ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 16
  %wide.load = load <2 x i64>, ptr %i.tr, align 8, !tbaa !43
  %wide.load58 = load <2 x i64>, ptr %i.ts, align 8, !tbaa !43
  %i.tt = add <2 x i64> %wide.load, %vec.phi      ; 2 uses
  %i.tu = add <2 x i64> %wide.load58, %vec.phi57  ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.tv = icmp eq i64 %index.next, %n.vec
  br i1 %i.tv, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.tu, %i.tt
  %i.tw = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.qw
  br i1 %cmp.n, label %._crit_edge1047, label %.lr.ph1046.preheader61

.lr.ph1046.preheader61:                           ; preds = %.lr.ph1046.preheader, %middle.block
  %indvars.iv1120.ph = phi i64 [ 0, %.lr.ph1046.preheader ], [ %n.vec, %middle.block ]
  %.06221044.ph = phi i64 [ 0, %.lr.ph1046.preheader ], [ %i.tw, %middle.block ]
  br label %.lr.ph1046

.lr.ph1046:                                       ; preds = %.lr.ph1046.preheader61, %.lr.ph1046
  %indvars.iv1120 = phi i64 [ %indvars.iv.next1121, %.lr.ph1046 ], [ %indvars.iv1120.ph, %.lr.ph1046.preheader61 ] ; 2 uses
  %.06221044 = phi i64 [ %i.tz, %.lr.ph1046 ], [ %.06221044.ph, %.lr.ph1046.preheader61 ]
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %calloc, i64 %indvars.iv1120
  %i.ty = load i64, ptr %i.tx, align 8, !tbaa !43
  %i.tz = add i64 %i.ty, %.06221044               ; 2 uses
  %indvars.iv.next1121 = add nuw nsw i64 %indvars.iv1120, 1 ; 2 uses
  %exitcond1123.not = icmp eq i64 %indvars.iv.next1121, %i.qw
  br i1 %exitcond1123.not, label %._crit_edge1047, label %.lr.ph1046, !llvm.loop !56

._crit_edge1047:                                  ; preds = %.lr.ph1046, %middle.block, %bb.fn
  %.0622.lcssa = phi i64 [ 0, %bb.fn ], [ %i.tw, %middle.block ], [ %i.tz, %.lr.ph1046 ] ; 3 uses
  %i.ua = load i32, ptr @quiet, align 4, !tbaa !4
  %.not808 = icmp eq i32 %i.ua, 0
  br i1 %.not808, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %._crit_edge1047
  %i.ub = fdiv double %i.ll, %i.tj
  %i.uc = call fastcc ptr @sigfig(double noundef %i.ub, ptr noundef %i.c, i32 noundef 80) ; 0 uses
  %i.ud = load i32, ptr @quiet, align 4, !tbaa !4
  %i.ue = icmp eq i32 %i.ud, 2
  %i.uf = select i1 %i.ue, ptr @str.129, ptr @.str.271
  %i.ug = uitofp i64 %.0622.lcssa to double
  %i.uh = fdiv double %i.ln, %i.ug
  %i.ui = call fastcc ptr @sigfig(double noundef %i.uh, ptr noundef %i.d, i32 noundef 80) ; 0 uses
  %i.uj = load i32, ptr @quiet, align 4, !tbaa !4
  %i.uk = icmp eq i32 %i.uj, 2
  %i.ul = select i1 %i.uk, ptr @str.129, ptr @.str.271
  %i.um = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.270, ptr noundef nonnull %i.c, ptr noundef nonnull %i.uf, ptr noundef nonnull %i.d, ptr noundef nonnull %i.ul) ; 0 uses
  br label %bb.ft

bb.fp:                                            ; preds = %._crit_edge1047
  %i.un = fdiv double 1.000000e+00, %i.tj
  %i.uo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.272, double noundef %i.un) ; 0 uses
  %i.up = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.273, i64 noundef %.0622.lcssa) ; 0 uses
  %i.uq = uitofp i64 %.0622.lcssa to double       ; 2 uses
  %i.ur = fdiv double %i.ln, %i.uq
  %i.us = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.274, double noundef %i.ur) ; 0 uses
  %i.ut = fdiv double %i.ll, %i.tj
  %i.uu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.275, double noundef %i.ut) ; 0 uses
  %i.uv = fmul nnan double %i.uq, 8.000000e+00
  %i.uw = fdiv double %i.uv, 1.000000e+06
  %i.ux = fdiv double %i.uw, %i.tj
  %i.uy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.276, double noundef %i.ux) ; 0 uses
  br label %bb.ft

bb.fq:                                            ; preds = %bb.ei
  %i.uz = load i32, ptr @quiet, align 4, !tbaa !4
  %i.va = icmp eq i32 %i.uz, 1
  br i1 %i.va, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.vb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.277) ; 0 uses
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %i.vc = load ptr, ptr %calloc1178, align 8, !tbaa !10
  call void @tj3Free(ptr noundef %i.vc) #22
  store ptr null, ptr %calloc1178, align 8, !tbaa !10
  br label %bb.ft
end_hunk_0

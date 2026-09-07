Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/mprintf?download=true
inline.NumInlined: 11
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@formatf:bb.a
  %i.lu = getelementptr i8, ptr %i.lt, i64 8
  store ptr %i.lu, ptr %i.iw, align 8
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.lv = phi ptr [ %i.lr, %bb.co ], [ %i.lt, %bb.cp ]
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !53
  %i.lx = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store i64 %i.lw, ptr %i.lx, align 8, !tbaa !15
  br label %bb.dd

bb.cr:                                            ; preds = %bb.bs
  %i.ly = load i32, ptr %3, align 8               ; 3 uses
  %i.lz = icmp ult i32 %i.ly, 41
  br i1 %i.lz, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.ma = load ptr, ptr %i.ix, align 8
  %i.mb = zext nneg i32 %i.ly to i64
  %i.mc = getelementptr i8, ptr %i.ma, i64 %i.mb
  %i.md = add nuw nsw i32 %i.ly, 8
  store i32 %i.md, ptr %3, align 8
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cr
  %i.me = load ptr, ptr %i.iw, align 8            ; 2 uses
  %i.mf = getelementptr i8, ptr %i.me, i64 8
  store ptr %i.mf, ptr %i.iw, align 8
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.mg = phi ptr [ %i.mc, %bb.cs ], [ %i.me, %bb.ct ]
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !16
  %i.mi = zext i32 %i.mh to i64
  %i.mj = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store i64 %i.mi, ptr %i.mj, align 8, !tbaa !15
  br label %bb.dd

bb.cv:                                            ; preds = %bb.bs, %bb.bs, %bb.bs
  %i.mk = load i32, ptr %3, align 8               ; 3 uses
  %i.ml = icmp ult i32 %i.mk, 41
  br i1 %i.ml, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.mm = load ptr, ptr %i.ix, align 8
  %i.mn = zext nneg i32 %i.mk to i64
  %i.mo = getelementptr i8, ptr %i.mm, i64 %i.mn
  %i.mp = add nuw nsw i32 %i.mk, 8
  store i32 %i.mp, ptr %3, align 8
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  %i.mq = load ptr, ptr %i.iw, align 8            ; 2 uses
  %i.mr = getelementptr i8, ptr %i.mq, i64 8
  store ptr %i.mr, ptr %i.iw, align 8
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.ms = phi ptr [ %i.mo, %bb.cw ], [ %i.mq, %bb.cx ]
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !16
  %i.mu = sext i32 %i.mt to i64
  %i.mv = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store i64 %i.mu, ptr %i.mv, align 8, !tbaa !15
  br label %bb.dd

bb.cz:                                            ; preds = %bb.bs
  %i.mw = load i32, ptr %i.iv, align 4            ; 3 uses
  %i.mx = icmp ult i32 %i.mw, 161
  br i1 %i.mx, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.my = load ptr, ptr %i.ix, align 8
  %i.mz = zext nneg i32 %i.mw to i64
  %i.na = getelementptr i8, ptr %i.my, i64 %i.mz
  %i.nb = add nuw nsw i32 %i.mw, 16
  store i32 %i.nb, ptr %i.iv, align 4
  br label %bb.dc

bb.db:                                            ; preds = %bb.cz
  %i.nc = load ptr, ptr %i.iw, align 8            ; 2 uses
  %i.nd = getelementptr i8, ptr %i.nc, i64 8
  store ptr %i.nd, ptr %i.iw, align 8
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.ne = phi ptr [ %i.na, %bb.da ], [ %i.nc, %bb.db ]
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !55
  %i.ng = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store double %i.nf, ptr %i.ng, align 8, !tbaa !15
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.cy, %bb.cu, %bb.cq, %bb.cm, %bb.ci, %bb.ce, %bb.ca, %bb.bw, %bb.bs
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %parsefmt.exit, label %bb.br, !llvm.loop !31

parsefmt.exit.thread:                             ; preds = %bb.bl, %bb.bk, %bb.bi, %bb.bh, %bb.bb, %bb.bc, %bb.j, %bb.d, %bb.br, %parse_flags.exit.thread.i, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #11
  br label %._crit_edge373

parsefmt.exit:                                    ; preds = %bb.dd, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #11
  %i.nh = icmp sgt i32 %.4.i, 0
  br i1 %i.nh, label %.lr.ph372, label %._crit_edge373

.lr.ph372:                                        ; preds = %parsefmt.exit
  %i.ni = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %wide.trip.count = zext nneg i32 %.4.i to i64
  br label %bb.de

bb.de:                                            ; preds = %.lr.ph372, %.thread108
  %indvars.iv = phi i64 [ 0, %.lr.ph372 ], [ %indvars.iv.next, %.thread108 ] ; 2 uses
  %i.nm = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %indvars.iv ; 8 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 12
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !45
  %i.np = zext i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.np ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !48 ; 3 uses
  %.not51 = icmp eq i64 %i.ns, 0
  br i1 %.not51, label %._crit_edge613, label %bb.df

._crit_edge613:                                   ; preds = %bb.de
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !46
  br label %bb.dk

bb.df:                                            ; preds = %bb.de
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  %i.nu = load ptr, ptr %i.nt, align 16, !tbaa !47
  %.promoted = load i32, ptr %i.l, align 4        ; 2 uses
  %i.nv = trunc i64 %i.ns to i32
  %i.nw = add i32 %.promoted, %i.nv
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.di
  %.0346 = phi ptr [ %i.nu, %bb.df ], [ %i.oa, %bb.di ] ; 2 uses
  %.044345 = phi i64 [ %i.ns, %bb.df ], [ %i.oc, %bb.di ]
  %i.nx = phi i32 [ %.promoted, %bb.df ], [ %i.ob, %bb.di ] ; 3 uses
  %i.ny = load i8, ptr %.0346, align 1, !tbaa !15 ; 2 uses
  %.not53 = icmp eq i8 %i.ny, 0
  br i1 %.not53, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.nz = call i32 %1(i8 noundef zeroext %i.ny, ptr noundef %0) #11, !callees !20
  %.not55 = icmp eq i32 %i.nz, 0
  br i1 %.not55, label %bb.di, label %.thread114

bb.di:                                            ; preds = %bb.dh
  %i.oa = getelementptr inbounds nuw i8, ptr %.0346, i64 1
  %i.ob = add nsw i32 %i.nx, 1
  %i.oc = add i64 %.044345, -1                    ; 2 uses
  %.not52 = icmp eq i64 %i.oc, 0
  br i1 %.not52, label %bb.dj, label %bb.dg, !llvm.loop !32

bb.dj:                                            ; preds = %bb.dg, %bb.di
  %.lcssa343 = phi i32 [ %i.nx, %bb.dg ], [ %i.nw, %bb.di ]
  store i32 %.lcssa343, ptr %i.l, align 4
  %i.od = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !46 ; 2 uses
  %i.of = and i32 %i.oe, 1048576
  %.not54 = icmp eq i32 %i.of, 0
  br i1 %.not54, label %bb.dk, label %.thread108

bb.dk:                                            ; preds = %._crit_edge613, %bb.dj
  %i.og = phi i32 [ %.pre, %._crit_edge613 ], [ %i.oe, %bb.dj ] ; 5 uses
  store i32 %i.og, ptr %i.ni, align 4, !tbaa !22
  %i.oh = and i32 %i.og, 16384
  %.not56 = icmp eq i32 %i.oh, 0
  %i.oi = load i32, ptr %i.nm, align 16, !tbaa !51 ; 3 uses
  br i1 %.not56, label %bb.dn, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.oj = sext i32 %i.oi to i64
  %i.ok = getelementptr inbounds [16 x i8], ptr %5, i64 %i.oj
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !15
  %i.on = trunc i64 %i.om to i32                  ; 4 uses
  store i32 %i.on, ptr %6, align 4, !tbaa !23
  %i.oo = icmp slt i32 %i.on, 0
  br i1 %i.oo, label %bb.dm, label %bb.do

bb.dm:                                            ; preds = %bb.dl
  %storemerge = call i32 @llvm.ssub.sat.i32(i32 0, i32 %i.on) ; 2 uses
  store i32 %storemerge, ptr %6, align 4, !tbaa !23
  %i.op = and i32 %i.og, -261
  %i.oq = or disjoint i32 %i.op, 4                ; 2 uses
  store i32 %i.oq, ptr %i.ni, align 4, !tbaa !22
  br label %bb.do

bb.dn:                                            ; preds = %bb.dk
  store i32 %i.oi, ptr %6, align 4, !tbaa !23
  br label %bb.do

bb.do:                                            ; preds = %bb.dl, %bb.dm, %bb.dn
  %i.or = phi i32 [ %i.og, %bb.dl ], [ %i.oq, %bb.dm ], [ %i.og, %bb.dn ] ; 22 uses
  %i.os = phi i32 [ %i.on, %bb.dl ], [ %storemerge, %bb.dm ], [ %i.oi, %bb.dn ] ; 8 uses
  %i.ot = and i32 %i.or, 65536
  %.not57 = icmp eq i32 %i.ot, 0
  br i1 %.not57, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.ou = getelementptr inbounds nuw i8, ptr %i.nm, i64 4
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !52
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr inbounds [16 x i8], ptr %5, i64 %i.ow
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !15
  %i.pa = trunc i64 %i.oz to i32
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.pa, i32 -1)
  br label %bb.ds

bb.dq:                                            ; preds = %bb.do
  %i.pb = and i32 %i.or, 32768
  %.not58 = icmp eq i32 %i.pb, 0
  br i1 %.not58, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.pc = getelementptr inbounds nuw i8, ptr %i.nm, i64 4
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !52
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dq, %bb.dp, %bb.dr
  %spec.store.select.sink = phi i32 [ %spec.store.select, %bb.dp ], [ %i.pd, %bb.dr ], [ -1, %bb.dq ] ; 7 uses
  store i32 %spec.store.select.sink, ptr %i.nj, align 4
  %i.pe = load i32, ptr %i.nq, align 16, !tbaa !50
  switch i32 %i.pe, label %.thread108 [
    i32 6, label %bb.dt
    i32 7, label %bb.dt
    i32 8, label %bb.dt
    i32 3, label %bb.du
    i32 4, label %bb.du
    i32 5, label %bb.du
    i32 0, label %bb.dv
    i32 1, label %bb.em
    i32 9, label %bb.ew
    i32 2, label %bb.fq
  ]

bb.dt:                                            ; preds = %bb.ds, %bb.ds, %bb.ds
  %i.pf = or i32 %i.or, 512
  store i32 %i.pf, ptr %i.ni, align 4, !tbaa !22
  %i.pg = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !15
  %i.pi = call fastcc zeroext i1 @out_number(ptr noundef %0, ptr noundef %1, ptr noundef %6, i64 noundef %i.ph, i64 noundef 0, ptr noundef %i.m, ptr noundef %i.l)
  br i1 %i.pi, label %.thread114.loopexit374, label %.thread108

bb.du:                                            ; preds = %bb.ds, %bb.ds, %bb.ds
  %i.pj = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !15 ; 2 uses
  %i.pl = call fastcc zeroext i1 @out_number(ptr noundef %0, ptr noundef %1, ptr noundef %6, i64 noundef %i.pk, i64 noundef %i.pk, ptr noundef %i.m, ptr noundef %i.l)
  br i1 %i.pl, label %.thread114.loopexit374, label %.thread108

bb.dv:                                            ; preds = %bb.ds
  %i.pm = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !15 ; 6 uses
  %.not.i = icmp eq ptr %i.pn, null
  %i.po = icmp eq i32 %spec.store.select.sink, -1 ; 2 uses
  br i1 %.not.i, label %bb.dw, label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  %i.pp = icmp sgt i32 %spec.store.select.sink, 4
  %or.cond.i = or i1 %i.po, %i.pp
  br i1 %or.cond.i, label %bb.dx, label %bb.ec

bb.dx:                                            ; preds = %bb.dw
  %i.pq = and i32 %i.or, -9
  br label %bb.ec

bb.dy:                                            ; preds = %bb.dv
  br i1 %i.po, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.pr = sext i32 %spec.store.select.sink to i64
  br label %bb.ec

bb.ea:                                            ; preds = %bb.dy
  %i.ps = load i8, ptr %i.pn, align 1, !tbaa !15
  %i.pt = icmp eq i8 %i.ps, 0
  br i1 %i.pt, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.pu = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.pn) #12
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea, %bb.dz, %bb.dx, %bb.dw
  %.044.i = phi ptr [ %i.pn, %bb.dz ], [ @.str, %bb.dw ], [ %i.pn, %bb.eb ], [ @nilstr, %bb.dx ], [ %i.pn, %bb.ea ]
  %.042.i = phi i32 [ %i.or, %bb.dz ], [ %i.or, %bb.dw ], [ %i.or, %bb.eb ], [ %i.pq, %bb.dx ], [ %i.or, %bb.ea ] ; 2 uses
  %.0.i = phi i64 [ %i.pr, %bb.dz ], [ 0, %bb.dw ], [ %i.pu, %bb.eb ], [ 5, %bb.dx ], [ 0, %bb.ea ] ; 4 uses
  %i.pv = call i64 @llvm.umin.i64(i64 %.0.i, i64 2147483647)
  %i.pw = trunc nuw nsw i64 %i.pv to i32          ; 2 uses
  %i.px = sub nsw i32 %i.os, %i.pw                ; 3 uses
  %i.py = and i32 %.042.i, 8
  %.not49.i = icmp eq i32 %i.py, 0                ; 2 uses
  br i1 %.not49.i, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.pz = call i32 %1(i8 noundef zeroext 34, ptr noundef %0) #11, !callees !20, !inline_history !33
  %.not50.i = icmp eq i32 %i.pz, 0
  br i1 %.not50.i, label %bb.ee, label %.thread114.loopexit374

bb.ee:                                            ; preds = %bb.ed
  %i.qa = load i32, ptr %i.l, align 4, !tbaa !16
  %i.qb = add nsw i32 %i.qa, 1
  store i32 %i.qb, ptr %i.l, align 4, !tbaa !16
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ec
  %i.qc = and i32 %.042.i, 4
  %.not51.i = icmp ne i32 %i.qc, 0                ; 2 uses
  br i1 %.not51.i, label %.loopexit61.i, label %.preheader60.i

.preheader60.i:                                   ; preds = %bb.ef
  %i.qd = add nsw i32 %i.px, -1                   ; 2 uses
  %i.qe = icmp sgt i32 %i.px, 0
  br i1 %i.qe, label %.lr.ph.i73.preheader, label %.loopexit61.i

.lr.ph.i73.preheader:                             ; preds = %.preheader60.i
  %.promoted363 = load i32, ptr %i.l, align 4     ; 2 uses
  %i.qf = add i32 %i.os, %.promoted363
  %7 = sub i32 %i.qf, %i.pw
  br label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %.lr.ph.i73.preheader, %bb.eg
  %i.qg = phi i32 [ %i.qj, %bb.eg ], [ %.promoted363, %.lr.ph.i73.preheader ] ; 2 uses
  %i.qh = phi i32 [ %i.qk, %bb.eg ], [ %i.qd, %.lr.ph.i73.preheader ] ; 2 uses
  %i.qi = call i32 %1(i8 noundef zeroext 32, ptr noundef %0) #11, !callees !20, !inline_history !33
  %.not52.i = icmp eq i32 %i.qi, 0
  br i1 %.not52.i, label %bb.eg, label %.thread114

bb.eg:                                            ; preds = %.lr.ph.i73
  %i.qj = add nsw i32 %i.qg, 1
  %i.qk = add nsw i32 %i.qh, -1
  %i.ql = icmp sgt i32 %i.qh, 0
  br i1 %i.ql, label %.lr.ph.i73, label %.loopexit61.i.loopexit, !llvm.loop !34

.loopexit61.i.loopexit:                           ; preds = %bb.eg
  store i32 %7, ptr %i.l, align 4
  br label %.loopexit61.i

.loopexit61.i:                                    ; preds = %.loopexit61.i.loopexit, %.preheader60.i, %bb.ef
  %.141.i = phi i32 [ %i.px, %bb.ef ], [ %i.qd, %.preheader60.i ], [ -1, %.loopexit61.i.loopexit ] ; 3 uses
  %.not5364.i = icmp eq i64 %.0.i, 0
  br i1 %.not5364.i, label %.critedge.i, label %.lr.ph67.i.preheader

.lr.ph67.i.preheader:                             ; preds = %.loopexit61.i
  %.promoted366 = load i32, ptr %i.l, align 4     ; 2 uses
  %i.qm = trunc i64 %.0.i to i32
  %i.qn = add i32 %.promoted366, %i.qm
  br label %.lr.ph67.i

.lr.ph67.i:                                       ; preds = %.lr.ph67.i.preheader, %bb.ei
  %i.qo = phi i32 [ %i.qs, %bb.ei ], [ %.promoted366, %.lr.ph67.i.preheader ] ; 3 uses
  %.166.i = phi i64 [ %i.qt, %bb.ei ], [ %.0.i, %.lr.ph67.i.preheader ]
  %.14565.i = phi ptr [ %i.qr, %bb.ei ], [ %.044.i, %.lr.ph67.i.preheader ] ; 2 uses
  %i.qp = load i8, ptr %.14565.i, align 1, !tbaa !15 ; 2 uses
  %.not54.i = icmp eq i8 %i.qp, 0
  br i1 %.not54.i, label %.critedge.i.loopexit, label %bb.eh

bb.eh:                                            ; preds = %.lr.ph67.i
  %i.qq = call i32 %1(i8 noundef zeroext %i.qp, ptr noundef %0) #11, !callees !20, !inline_history !33
  %.not57.i = icmp eq i32 %i.qq, 0
  br i1 %.not57.i, label %bb.ei, label %.thread114

bb.ei:                                            ; preds = %bb.eh
  %i.qr = getelementptr inbounds nuw i8, ptr %.14565.i, i64 1
  %i.qs = add nsw i32 %i.qo, 1
  %i.qt = add i64 %.166.i, -1                     ; 2 uses
  %.not53.i = icmp eq i64 %i.qt, 0
  br i1 %.not53.i, label %.critedge.i.loopexit, label %.lr.ph67.i, !llvm.loop !35

.critedge.i.loopexit:                             ; preds = %.lr.ph67.i, %bb.ei
  %i.qu = phi i32 [ %i.qo, %.lr.ph67.i ], [ %i.qn, %bb.ei ]
  store i32 %i.qu, ptr %i.l, align 4
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %.loopexit61.i
  %i.qv = icmp sgt i32 %.141.i, 0
  %or.cond71.i = select i1 %.not51.i, i1 %i.qv, i1 false
  br i1 %or.cond71.i, label %.lr.ph69.i.preheader, label %.loopexit.i72

.lr.ph69.i.preheader:                             ; preds = %.critedge.i
  %.promoted368 = load i32, ptr %i.l, align 4     ; 2 uses
  %i.qw = add i32 %.141.i, %.promoted368
  br label %.lr.ph69.i

.lr.ph69.i:                                       ; preds = %.lr.ph69.i.preheader, %bb.ej
  %i.qx = phi i32 [ %i.ra, %bb.ej ], [ %.promoted368, %.lr.ph69.i.preheader ] ; 2 uses
  %.in.i = phi i32 [ %i.qz, %bb.ej ], [ %.141.i, %.lr.ph69.i.preheader ] ; 2 uses
  %i.qy = call i32 %1(i8 noundef zeroext 32, ptr noundef %0) #11, !callees !20, !inline_history !33
  %.not56.i = icmp eq i32 %i.qy, 0
  br i1 %.not56.i, label %bb.ej, label %.thread114

bb.ej:                                            ; preds = %.lr.ph69.i
  %i.qz = add nsw i32 %.in.i, -1
  %i.ra = add nsw i32 %i.qx, 1
  %i.rb = icmp sgt i32 %.in.i, 1
  br i1 %i.rb, label %.lr.ph69.i, label %.loopexit.i72.loopexit, !llvm.loop !36

.loopexit.i72.loopexit:                           ; preds = %bb.ej
  store i32 %i.qw, ptr %i.l, align 4
  br label %.loopexit.i72

.loopexit.i72:                                    ; preds = %.loopexit.i72.loopexit, %.critedge.i
  br i1 %.not49.i, label %.thread108, label %bb.ek

bb.ek:                                            ; preds = %.loopexit.i72
  %i.rc = call i32 %1(i8 noundef zeroext 34, ptr noundef %0) #11, !callees !20, !inline_history !33
  %.not55.i = icmp eq i32 %i.rc, 0
  br i1 %.not55.i, label %bb.el, label %.thread114.loopexit374

bb.el:                                            ; preds = %bb.ek
  %i.rd = load i32, ptr %i.l, align 4, !tbaa !16
  %i.re = add nsw i32 %i.rd, 1
  store i32 %i.re, ptr %i.l, align 4, !tbaa !16
  br label %.thread108

bb.em:                                            ; preds = %bb.ds
  %i.rf = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !15 ; 2 uses
  %.not.i74 = icmp eq ptr %i.rg, null
  br i1 %.not.i74, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.rh = ptrtoint ptr %i.rg to i64
  %i.ri = or i32 %i.or, 2056
  store i32 %i.ri, ptr %i.ni, align 4, !tbaa !22
  %i.rj = call fastcc zeroext i1 @out_number(ptr noundef %0, ptr noundef readonly %1, ptr noundef nonnull %6, i64 noundef %i.rh, i64 noundef 0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.l)
  br i1 %i.rj, label %.thread114.loopexit374, label %.thread108

bb.eo:                                            ; preds = %bb.em
  %i.rk = add i32 %i.os, -5                       ; 2 uses
  %i.rl = and i32 %i.or, 4
  %.not38.i = icmp eq i32 %i.rl, 0                ; 2 uses
  br i1 %.not38.i, label %.loopexit46.i, label %.preheader45.i

.preheader45.i:                                   ; preds = %bb.eo
  %i.rm = add nsw i32 %i.os, -6                   ; 2 uses
  %i.rn = icmp sgt i32 %i.os, 5
  br i1 %i.rn, label %.lr.ph.i79.preheader, label %.loopexit46.i

.lr.ph.i79.preheader:                             ; preds = %.preheader45.i
  %.promoted357 = load i32, ptr %i.l, align 4     ; 2 uses
  %i.ro = add i32 %i.rk, %.promoted357
  br label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %.lr.ph.i79.preheader, %bb.ep
  %i.rp = phi i32 [ %i.rs, %bb.ep ], [ %.promoted357, %.lr.ph.i79.preheader ] ; 2 uses
  %i.rq = phi i32 [ %i.rt, %bb.ep ], [ %i.rm, %.lr.ph.i79.preheader ] ; 2 uses
  %i.rr = call i32 %1(i8 noundef zeroext 32, ptr noundef %0) #11, !callees !20, !inline_history !37
  %.not42.i = icmp eq i32 %i.rr, 0
  br i1 %.not42.i, label %bb.ep, label %.thread114

bb.ep:                                            ; preds = %.lr.ph.i79
  %i.rs = add nsw i32 %i.rp, 1
  %i.rt = add nsw i32 %i.rq, -1
  %i.ru = icmp sgt i32 %i.rq, 0
  br i1 %i.ru, label %.lr.ph.i79, label %.loopexit46.i.loopexit, !llvm.loop !38

.loopexit46.i.loopexit:                           ; preds = %bb.ep
  store i32 %i.ro, ptr %i.l, align 4
  br label %.loopexit46.i

.loopexit46.i:                                    ; preds = %.loopexit46.i.loopexit, %.preheader45.i, %bb.eo
  %.1.i76 = phi i32 [ %i.rk, %bb.eo ], [ %i.rm, %.preheader45.i ], [ -1, %.loopexit46.i.loopexit ] ; 3 uses
  %i.rv = call i32 %1(i8 noundef zeroext 40, ptr noundef %0) #11, !callees !20, !inline_history !37
  %.not41.i = icmp eq i32 %i.rv, 0
  br i1 %.not41.i, label %bb.eq, label %.thread114.loopexit374

bb.eq:                                            ; preds = %.loopexit46.i
  %i.rw = load i32, ptr %i.l, align 4, !tbaa !16  ; 5 uses
  %i.rx = add nsw i32 %i.rw, 1
  store i32 %i.rx, ptr %i.l, align 4, !tbaa !16
  %i.ry = call i32 %1(i8 noundef zeroext 110, ptr noundef %0) #11, !callees !20, !inline_history !37
  %.not41.1.i = icmp eq i32 %i.ry, 0
  br i1 %.not41.1.i, label %bb.er, label %.thread114.loopexit374

bb.er:                                            ; preds = %bb.eq
  %i.rz = add nsw i32 %i.rw, 2
  store i32 %i.rz, ptr %i.l, align 4, !tbaa !16
  %i.sa = call i32 %1(i8 noundef zeroext 105, ptr noundef %0) #11, !callees !20, !inline_history !37
  %.not41.2.i = icmp eq i32 %i.sa, 0
  br i1 %.not41.2.i, label %bb.es, label %.thread114.loopexit374

bb.es:                                            ; preds = %bb.er
  %i.sb = add nsw i32 %i.rw, 3
  store i32 %i.sb, ptr %i.l, align 4, !tbaa !16
  %i.sc = call i32 %1(i8 noundef zeroext 108, ptr noundef %0) #11, !callees !20, !inline_history !37
  %.not41.3.i = icmp eq i32 %i.sc, 0
  br i1 %.not41.3.i, label %bb.et, label %.thread114.loopexit374

bb.et:                                            ; preds = %bb.es
  %i.sd = add nsw i32 %i.rw, 4
  store i32 %i.sd, ptr %i.l, align 4, !tbaa !16
  %i.se = call i32 %1(i8 noundef zeroext 41, ptr noundef %0) #11, !callees !20, !inline_history !37
  %.not41.4.i = icmp eq i32 %i.se, 0
  br i1 %.not41.4.i, label %bb.eu, label %.thread114.loopexit374

bb.eu:                                            ; preds = %bb.et
  %i.sf = add nsw i32 %i.rw, 5                    ; 3 uses
  store i32 %i.sf, ptr %i.l, align 4, !tbaa !16
  %i.sg = icmp sgt i32 %.1.i76, 0
  %or.cond.i77 = select i1 %.not38.i, i1 %i.sg, i1 false
  br i1 %or.cond.i77, label %.lr.ph50.i.preheader, label %.thread108

.lr.ph50.i.preheader:                             ; preds = %bb.eu
  %i.sh = add i32 %.1.i76, %i.sf
  br label %.lr.ph50.i

.lr.ph50.i:                                       ; preds = %.lr.ph50.i.preheader, %bb.ev
  %i.si = phi i32 [ %i.sl, %bb.ev ], [ %i.sf, %.lr.ph50.i.preheader ] ; 2 uses
  %.in.i78 = phi i32 [ %i.sk, %bb.ev ], [ %.1.i76, %.lr.ph50.i.preheader ] ; 2 uses
  %i.sj = call i32 %1(i8 noundef zeroext 32, ptr noundef %0) #11, !callees !20, !inline_history !37
  %.not40.i = icmp eq i32 %i.sj, 0
  br i1 %.not40.i, label %bb.ev, label %.thread114

bb.ev:                                            ; preds = %.lr.ph50.i
  %i.sk = add nsw i32 %.in.i78, -1
  %i.sl = add nsw i32 %i.si, 1
  %i.sm = icmp sgt i32 %.in.i78, 1
  br i1 %i.sm, label %.lr.ph50.i, label %.thread108.loopexit, !llvm.loop !39

bb.ew:                                            ; preds = %bb.ds
  %i.sn = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.so = load double, ptr %i.sn, align 8, !tbaa !15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 16 dereferenceable(32) @__const.out_double.fmt, i64 32, i1 false)
  %i.sp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #12, !inline_history !40
  %i.sq = sub i64 32, %i.sp                       ; 3 uses
  %i.sr = and i32 %i.or, 4
  %.not.i80 = icmp eq i32 %i.sr, 0
  br i1 %.not.i80, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  store i8 45, ptr %i.nk, align 1, !tbaa !15
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
end_hunk_0

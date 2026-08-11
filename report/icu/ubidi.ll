inline.NumInlined: 71
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ubidi_setPara_78:bb.a
  %.0167.ph233.be.i = phi i32 [ %i.mx, %bb.co ], [ %i.mx, %bb.cn ], [ %i.nl, %bb.ct ], [ %.0167.ph233307.i, %bb.cq ] ; 2 uses
  %i.nd = icmp slt i32 %.2179.i, %i.hw
  br i1 %i.nd, label %.lr.ph.i, label %.outer227._crit_edge.i, !llvm.loop !85

bb.cp:                                            ; preds = %bb.ck
  switch i8 %i.lh, label %.backedge.i [
    i8 22, label %bb.cq
    i8 7, label %bb.cu
  ]

bb.cq:                                            ; preds = %bb.cp
  %i.ne = icmp eq i32 %.1173.ph231306.i, 2
  %i.nf = icmp slt i32 %.0167.ph233307.i, 126     ; 2 uses
  %or.cond15.i = select i1 %i.ne, i1 %i.nf, i1 false
  %i.ng = or i32 %.1186.i, 1048576
  %spec.select218.i = select i1 %or.cond15.i, i32 %i.ng, i32 %.1186.i ; 2 uses
  %i.nh = icmp sgt i32 %.0167.ph233307.i, -1
  br i1 %i.nh, label %bb.cr, label %.outer227.backedge.i

bb.cr:                                            ; preds = %bb.cq
  br i1 %i.nf, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.ni = zext nneg i32 %.0167.ph233307.i to i64
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ni
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !62
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.5.i290 = phi i32 [ %i.nk, %bb.cs ], [ %.1173.ph231306.i, %bb.cr ]
  %i.nl = add nsw i32 %.0167.ph233307.i, -1
  br label %.outer227.backedge.i

bb.cu:                                            ; preds = %bb.cp
  %i.nm = icmp slt i32 %.2179.i, %i.hw            ; 2 uses
  %i.nn = icmp eq i32 %.1196.i, 13
  %or.cond7.i = and i1 %i.nn, %i.nm
  br i1 %or.cond7.i, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.no = sext i32 %.2179.i to i64
  %i.np = getelementptr inbounds [2 x i8], ptr %i.hx, i64 %i.no
  %i.nq = load i16, ptr %i.np, align 2, !tbaa !40
  %i.nr = icmp eq i16 %i.nq, 10
  br i1 %i.nr, label %.backedge.i, label %bb.cw

.backedge.i:                                      ; preds = %bb.cv, %bb.cp
  %i.ns = icmp slt i32 %.2179.i, %i.hw
  br i1 %i.ns, label %bb.br, label %.outer227._crit_edge.i, !llvm.loop !85

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.lcssa364.i = phi i1 [ true, %bb.cv ], [ %i.nm, %bb.cu ]
  %i.nt = load ptr, ptr %i.hi, align 8, !tbaa !43 ; 2 uses
  %i.nu = load i32, ptr %i.gn, align 8, !tbaa !42 ; 3 uses
  %i.nv = sext i32 %i.nu to i64
  %i.nw = getelementptr [8 x i8], ptr %i.nt, i64 %i.nv ; 2 uses
  %i.nx = getelementptr i8, ptr %i.nw, i64 -8
  store i32 %.2179.i, ptr %i.nx, align 4, !tbaa !44
  %i.ny = icmp eq i8 %.1169.ph232.ph324.i, 1
  %or.cond10.i = select i1 %i.ic, i1 %i.ny, i1 false
  br i1 %or.cond10.i, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.nz = getelementptr i8, ptr %i.nw, i64 -4
  store i32 1, ptr %i.nz, align 4, !tbaa !48
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.oa = load i32, ptr %i.id, align 8, !tbaa !39
  %i.ob = and i32 %i.oa, 4
  %.not211.i = icmp eq i32 %i.ob, 0
  br i1 %.not211.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  store i32 %.2179.i, ptr %i.gi, align 4, !tbaa !54
  store i32 %.1182.i, ptr %i.kf, align 8, !tbaa !86
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  br i1 %.lcssa364.i, label %bb.db, label %.outer227.outer.backedge.i

bb.db:                                            ; preds = %bb.da
  %i.oc = add nsw i32 %i.nu, 1                    ; 2 uses
  store i32 %i.oc, ptr %i.gn, align 8, !tbaa !42
  %i.od = icmp eq ptr %i.nt, %i.kg
  br i1 %i.od, label %bb.dc, label %bb.di

bb.dc:                                            ; preds = %bb.db
  %i.oe = icmp slt i32 %i.nu, 10
  br i1 %i.oe, label %_ZL14checkParaCountP5UBiDi.exit.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.of = load ptr, ptr %i.hf, align 8, !tbaa !26 ; 3 uses
  %i.og = icmp eq ptr %i.of, null
  br i1 %i.og, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.oh = tail call noalias dereferenceable_or_null(160) ptr @uprv_malloc_78(i64 noundef 160) #17 ; 3 uses
  store ptr %i.oh, ptr %i.hf, align 8, !tbaa !26
  %.not22.i.i.i = icmp eq ptr %i.oh, null
  br i1 %.not22.i.i.i, label %bb.dz, label %.sink.split.i.i.i

bb.df:                                            ; preds = %bb.dd
  %i.oi = load i32, ptr %i.kh, align 8, !tbaa !27
  %.not.i.i.i = icmp slt i32 %i.oi, 160
  br i1 %.not.i.i.i, label %bb.dg, label %ubidi_getMemory_78.exit.i.i

bb.dg:                                            ; preds = %bb.df
  %i.oj = tail call dereferenceable_or_null(160) ptr @uprv_realloc_78(ptr noundef nonnull %i.of, i64 noundef 160) #18 ; 3 uses
  %.not20.i.i.i = icmp eq ptr %i.oj, null
  br i1 %.not20.i.i.i, label %bb.dz, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  store ptr %i.oj, ptr %i.hf, align 8, !tbaa !26
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.dh, %bb.de
  %i.ok = phi ptr [ %i.oj, %bb.dh ], [ %i.oh, %bb.de ]
  store i32 160, ptr %i.kh, align 8, !tbaa !27
  br label %ubidi_getMemory_78.exit.i.i

ubidi_getMemory_78.exit.i.i:                      ; preds = %.sink.split.i.i.i, %bb.df
  %i.ol = phi ptr [ %i.ok, %.sink.split.i.i.i ], [ %i.of, %bb.df ] ; 2 uses
  store ptr %i.ol, ptr %i.hi, align 8, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %i.ol, ptr noundef nonnull align 8 dereferenceable(80) %i.kg, i64 80, i1 false)
  br label %_ZL14checkParaCountP5UBiDi.exit.i

bb.di:                                            ; preds = %bb.db
  %i.om = shl i32 %i.oc, 4                        ; 4 uses
  %i.on = load ptr, ptr %i.hf, align 8, !tbaa !26 ; 3 uses
  %i.oo = icmp eq ptr %i.on, null
  br i1 %i.oo, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.op = sext i32 %i.om to i64
  %i.oq = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.op) #17 ; 3 uses
  store ptr %i.oq, ptr %i.hf, align 8, !tbaa !26
  %.not22.i21.i.i = icmp eq ptr %i.oq, null
  br i1 %.not22.i21.i.i, label %bb.dz, label %.sink.split.i20.i.i

bb.dk:                                            ; preds = %bb.di
  %i.or = load i32, ptr %i.kh, align 8, !tbaa !27
  %.not.i17.i.i = icmp sgt i32 %i.om, %i.or
  br i1 %.not.i17.i.i, label %bb.dl, label %ubidi_getMemory_78.exit22.i.i

bb.dl:                                            ; preds = %bb.dk
  %i.os = sext i32 %i.om to i64
  %i.ot = tail call ptr @uprv_realloc_78(ptr noundef nonnull %i.on, i64 noundef %i.os) #18 ; 3 uses
  %.not20.i19.i.i = icmp eq ptr %i.ot, null
  br i1 %.not20.i19.i.i, label %bb.dz, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  store ptr %i.ot, ptr %i.hf, align 8, !tbaa !26
  br label %.sink.split.i20.i.i

.sink.split.i20.i.i:                              ; preds = %bb.dm, %bb.dj
  %i.ou = phi ptr [ %i.ot, %bb.dm ], [ %i.oq, %bb.dj ]
  store i32 %i.om, ptr %i.kh, align 8, !tbaa !27
  br label %ubidi_getMemory_78.exit22.i.i

ubidi_getMemory_78.exit22.i.i:                    ; preds = %.sink.split.i20.i.i, %bb.dk
  %i.ov = phi ptr [ %i.ou, %.sink.split.i20.i.i ], [ %i.on, %bb.dk ]
  store ptr %i.ov, ptr %i.hi, align 8, !tbaa !43
  br label %_ZL14checkParaCountP5UBiDi.exit.i

_ZL14checkParaCountP5UBiDi.exit.i:                ; preds = %ubidi_getMemory_78.exit22.i.i, %ubidi_getMemory_78.exit.i.i, %bb.dc
  br i1 %i.hz, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %_ZL14checkParaCountP5UBiDi.exit.i
  %i.ow = load ptr, ptr %i.hi, align 8, !tbaa !43
  %i.ox = load i32, ptr %i.gn, align 8, !tbaa !42
  %i.oy = sext i32 %i.ox to i64
  %i.oz = getelementptr [8 x i8], ptr %i.ow, i64 %i.oy
  %i.pa = getelementptr i8, ptr %i.oz, i64 -4
  store i32 %i.ki, ptr %i.pa, align 4, !tbaa !48
  br label %.outer227.outer.backedge.i

bb.do:                                            ; preds = %_ZL14checkParaCountP5UBiDi.exit.i
  %i.pb = load i8, ptr %i.gj, align 1, !tbaa !69
  %i.pc = zext i8 %i.pb to i32
  %i.pd = load ptr, ptr %i.hi, align 8, !tbaa !43
  %i.pe = load i32, ptr %i.gn, align 8, !tbaa !42
  %i.pf = sext i32 %i.pe to i64
  %i.pg = getelementptr [8 x i8], ptr %i.pd, i64 %i.pf
  %i.ph = getelementptr i8, ptr %i.pg, i64 -4
  store i32 %i.pc, ptr %i.ph, align 4, !tbaa !48
  br label %.outer227.outer.backedge.i

.outer227._crit_edge.i:                           ; preds = %.outer.i, %.outer227.outer.backedge.i, %.outer227.backedge.i, %.backedge.i
  %.0183.ph.lcssa287.i = phi i32 [ %.0183.ph339.i, %.outer227.outer.backedge.i ], [ %.0183.ph339.i, %.backedge.i ], [ %.0183.ph339.i, %.outer227.backedge.i ], [ %spec.select217.i, %.outer.i ] ; 3 uses
  %.1169.ph232.ph.lcssa286.i = phi i8 [ %.1169.ph232.ph.be.i, %.outer227.outer.backedge.i ], [ %.1169.ph232.ph324.i, %.backedge.i ], [ %.1169.ph232.ph324.i, %.outer227.backedge.i ], [ 1, %.outer.i ] ; 3 uses
  %.1173.ph231.lcssa284.i = phi i32 [ %.1173.ph231.ph.be.i, %.outer227.outer.backedge.i ], [ %.1173.ph231306.i, %.backedge.i ], [ %.1173.ph231.be.i, %.outer227.backedge.i ], [ %.3175.i, %.outer.i ]
  %.0167.ph233.lcssa281.i = phi i32 [ %.0167.ph233.ph.be.i, %.outer227.outer.backedge.i ], [ %.0167.ph233307.i, %.backedge.i ], [ %.0167.ph233.be.i, %.outer227.backedge.i ], [ %.0167.ph233307.i, %.outer.i ] ; 3 uses
  %.0185.lcssa.i = phi i32 [ %.0185.ph228.ph.be.i, %.outer227.outer.backedge.i ], [ %.1186.i, %.backedge.i ], [ %.0185.ph228.be.i, %.outer227.backedge.i ], [ %.5190.i, %.outer.i ] ; 3 uses
  %i.pi = icmp sgt i32 %.0167.ph233.lcssa281.i, -1
  br i1 %i.pi, label %.lr.ph354.preheader.i, label %.loopexit.i

.lr.ph354.preheader.i:                            ; preds = %.outer227._crit_edge.i
  %i.pj = tail call i32 @llvm.umin.i32(i32 %.0167.ph233.lcssa281.i, i32 125)
  %i.pk = icmp samesign ugt i32 %.0167.ph233.lcssa281.i, 125
  %6 = zext nneg i32 %i.pj to i64
  %spec.select700 = select i1 %i.pk, i32 2, i32 %.1173.ph231.lcssa284.i
  br label %.lr.ph354.i

.lr.ph354.i:                                      ; preds = %.lr.ph354.preheader.i, %select.unfold.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %select.unfold.i ], [ %6, %.lr.ph354.preheader.i ] ; 3 uses
  %.10351.i = phi i32 [ %i.po, %select.unfold.i ], [ %spec.select700, %.lr.ph354.preheader.i ]
  %i.pl = icmp eq i32 %.10351.i, 2
  br i1 %i.pl, label %bb.dp, label %select.unfold.i

bb.dp:                                            ; preds = %.lr.ph354.i
  %i.pm = or i32 %.0185.lcssa.i, 1048576
  br label %.loopexit.i

select.unfold.i:                                  ; preds = %.lr.ph354.i
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !62
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.pp = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.pp, label %.lr.ph354.i, label %.loopexit.i, !llvm.loop !87

.loopexit.i:                                      ; preds = %select.unfold.i, %bb.dp, %.outer227._crit_edge.i, %bb.bq
  %.0181.lcssa449.i = phi i32 [ %.1182.i, %bb.dp ], [ %.1182.i, %.outer227._crit_edge.i ], [ 0, %bb.bq ], [ %.1182.i, %select.unfold.i ]
  %.1169.ph232.ph.lcssa286448.i = phi i8 [ %.1169.ph232.ph.lcssa286.i, %bb.dp ], [ %.1169.ph232.ph.lcssa286.i, %.outer227._crit_edge.i ], [ %.0168.i, %bb.bq ], [ %.1169.ph232.ph.lcssa286.i, %select.unfold.i ]
  %.0183.ph.lcssa287447.i = phi i32 [ %.0183.ph.lcssa287.i, %bb.dp ], [ %.0183.ph.lcssa287.i, %.outer227._crit_edge.i ], [ -1, %bb.bq ], [ %.0183.ph.lcssa287.i, %select.unfold.i ]
  %.7192.i = phi i32 [ %i.pm, %bb.dp ], [ %.0185.lcssa.i, %.outer227._crit_edge.i ], [ 0, %bb.bq ], [ %.0185.lcssa.i, %select.unfold.i ] ; 3 uses
  %i.pq = load i32, ptr %i.id, align 8, !tbaa !39
  %i.pr = and i32 %i.pq, 4
  %.not206.i = icmp eq i32 %i.pr, 0
  br i1 %.not206.i, label %bb.ds, label %bb.dq

bb.dq:                                            ; preds = %.loopexit.i
  %i.ps = load i32, ptr %i.gi, align 4, !tbaa !54
  %i.pt = icmp slt i32 %i.ps, %i.hw
  br i1 %i.pt, label %bb.dr, label %bb.dt

bb.dr:                                            ; preds = %bb.dq
  %i.pu = load i32, ptr %i.gn, align 8, !tbaa !42
  %i.pv = add nsw i32 %i.pu, -1
  store i32 %i.pv, ptr %i.gn, align 8, !tbaa !42
  br label %bb.dt

bb.ds:                                            ; preds = %.loopexit.i
  %i.pw = load ptr, ptr %i.hi, align 8, !tbaa !43
  %i.px = load i32, ptr %i.gn, align 8, !tbaa !42
  %i.py = sext i32 %i.px to i64
  %i.pz = getelementptr [8 x i8], ptr %i.pw, i64 %i.py
  %i.qa = getelementptr i8, ptr %i.pz, i64 -8
  store i32 %i.hw, ptr %i.qa, align 4, !tbaa !44
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i32 %.0181.lcssa449.i, ptr %i.qb, align 8, !tbaa !86
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr, %bb.dq
  %i.qc = icmp eq i8 %.1169.ph232.ph.lcssa286448.i, 1
  %or.cond13.i = select i1 %i.ic, i1 %i.qc, i1 false
  br i1 %or.cond13.i, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.qd = load ptr, ptr %i.hi, align 8, !tbaa !43
  %i.qe = load i32, ptr %i.gn, align 8, !tbaa !42
  %i.qf = sext i32 %i.qe to i64
  %i.qg = getelementptr [8 x i8], ptr %i.qd, i64 %i.qf
  %i.qh = getelementptr i8, ptr %i.qg, i64 -4
  store i32 1, ptr %i.qh, align 4, !tbaa !48
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  br i1 %i.hz, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.qi = load ptr, ptr %i.hi, align 8, !tbaa !43
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 4
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !48
  %i.ql = trunc i32 %i.qk to i8
  store i8 %i.ql, ptr %i.gj, align 1, !tbaa !69
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.qm = load i32, ptr %i.gn, align 8, !tbaa !42 ; 3 uses
  %i.qn = icmp sgt i32 %i.qm, 0
  br i1 %i.qn, label %.lr.ph358.i, label %.loopexit347

.lr.ph358.i:                                      ; preds = %bb.dx
  %i.qo = load ptr, ptr %i.hi, align 8, !tbaa !43 ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.qm to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.qp = icmp ult i32 %i.qm, 4
  br i1 %i.qp, label %.epil.preheader, label %.lr.ph358.i.new

.lr.ph358.i.new:                                  ; preds = %.lr.ph358.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dy, %.lr.ph358.i.new
  %indvars.iv419.i = phi i64 [ 0, %.lr.ph358.i.new ], [ %indvars.iv.next420.i.3, %bb.dy ] ; 5 uses
  %.8193355.i = phi i32 [ %.7192.i, %.lr.ph358.i.new ], [ %i.rv, %bb.dy ]
  %niter = phi i64 [ 0, %.lr.ph358.i.new ], [ %niter.next.3, %bb.dy ]
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %indvars.iv419.i
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 4
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !48
  %i.qt = and i32 %i.qs, 1
  %i.qu = zext nneg i32 %i.qt to i64
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr @_ZL6flagLR, i64 %i.qu
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !27
  %i.qx = or i32 %i.qw, %.8193355.i
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %indvars.iv419.i
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 12
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !48
  %i.rb = and i32 %i.ra, 1
  %i.rc = zext nneg i32 %i.rb to i64
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr @_ZL6flagLR, i64 %i.rc
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !27
  %i.rf = or i32 %i.re, %i.qx
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %indvars.iv419.i
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 20
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !48
  %i.rj = and i32 %i.ri, 1
  %i.rk = zext nneg i32 %i.rj to i64
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr @_ZL6flagLR, i64 %i.rk
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !27
  %i.rn = or i32 %i.rm, %i.rf
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %indvars.iv419.i
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 28
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !48
  %i.rr = and i32 %i.rq, 1
  %i.rs = zext nneg i32 %i.rr to i64
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr @_ZL6flagLR, i64 %i.rs
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !27
  %i.rv = or i32 %i.ru, %i.rn                     ; 3 uses
  %indvars.iv.next420.i.3 = add nuw nsw i64 %indvars.iv419.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit347.loopexit.unr-lcssa, label %bb.dy, !llvm.loop !88

bb.dz:                                            ; preds = %bb.de, %bb.dg, %bb.dl, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  store i32 7, ptr %5, align 4, !tbaa !25
  br label %bb.gv

bb.ea:                                            ; preds = %bb.ax, %bb.at, %bb.aw, %bb.au
  store i32 7, ptr %5, align 4, !tbaa !25
  br label %bb.gv

.loopexit347.loopexit.unr-lcssa:                  ; preds = %bb.dy
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit347, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit347.loopexit.unr-lcssa, %.lr.ph358.i
  %indvars.iv419.i.epil.init = phi i64 [ 0, %.lr.ph358.i ], [ %indvars.iv.next420.i.3, %.loopexit347.loopexit.unr-lcssa ]
  %.8193355.i.epil.init = phi i32 [ %.7192.i, %.lr.ph358.i ], [ %i.rv, %.loopexit347.loopexit.unr-lcssa ]
  %lcmp.mod843 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod843)
  br label %bb.eb

bb.eb:                                            ; preds = %bb.eb, %.epil.preheader
  %indvars.iv419.i.epil = phi i64 [ %indvars.iv419.i.epil.init, %.epil.preheader ], [ %indvars.iv.next420.i.epil, %bb.eb ] ; 2 uses
  %.8193355.i.epil = phi i32 [ %.8193355.i.epil.init, %.epil.preheader ], [ %i.sd, %bb.eb ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.eb ]
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %indvars.iv419.i.epil
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 4
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !48
  %i.rz = and i32 %i.ry, 1
  %i.sa = zext nneg i32 %i.rz to i64
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr @_ZL6flagLR, i64 %i.sa
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !27
  %i.sd = or i32 %i.sc, %.8193355.i.epil          ; 2 uses
  %indvars.iv.next420.i.epil = add nuw nsw i64 %indvars.iv419.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit347, label %bb.eb, !llvm.loop !89

.loopexit347:                                     ; preds = %.loopexit347.loopexit.unr-lcssa, %bb.eb, %bb.dx
  %.8193.lcssa.i = phi i32 [ %.7192.i, %bb.dx ], [ %i.rv, %.loopexit347.loopexit.unr-lcssa ], [ %i.sd, %bb.eb ] ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.sf = load i8, ptr %i.se, align 4, !tbaa !91
  %.not207.i = icmp ne i8 %i.sf, 0
  %i.sg = and i32 %.8193.lcssa.i, 128
  %.not208.i = icmp ne i32 %i.sg, 0
  %or.cond.not.i = select i1 %.not207.i, i1 %.not208.i, i1 false
  %i.sh = zext i1 %or.cond.not.i to i32
  %.9194.i = or i32 %.8193.lcssa.i, %i.sh
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  store i32 %.9194.i, ptr %i.si, align 4, !tbaa !78
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %.0183.ph.lcssa287447.i, ptr %i.sj, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.sk = load ptr, ptr %i.go, align 8, !tbaa !79 ; 4 uses
  %i.sl = load i32, ptr %i.gi, align 4, !tbaa !54 ; 10 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 3 uses
  store i32 %i.sl, ptr %i.sm, align 4, !tbaa !55
  %i.sn = icmp eq ptr %4, null                    ; 2 uses
  br i1 %i.sn, label %bb.ec, label %bb.ef

bb.ec:                                            ; preds = %.loopexit347
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.sq = load i8, ptr %i.hl, align 8, !tbaa !8
  %i.sr = tail call signext i8 @ubidi_getMemory_78(ptr noundef nonnull %i.so, ptr noundef nonnull %i.sp, i8 noundef signext %i.sq, i32 noundef %i.sl)
  %.not262 = icmp eq i8 %i.sr, 0
  br i1 %.not262, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.ss = load ptr, ptr %i.so, align 8, !tbaa !31
  store ptr %i.ss, ptr %i.gp, align 8, !tbaa !73
  %i.st = tail call fastcc noundef i32 @_ZL21resolveExplicitLevelsP5UBiDiP10UErrorCode(ptr noundef %0, ptr noundef %5)
  %i.su = load i32, ptr %5, align 4, !tbaa !25
  %i.sv = icmp slt i32 %i.su, 1
  br i1 %i.sv, label %bb.eg, label %bb.gv

bb.ee:                                            ; preds = %bb.ec
  store i32 7, ptr %5, align 4, !tbaa !25
  br label %bb.gv

bb.ef:                                            ; preds = %.loopexit347
  store ptr %4, ptr %i.gp, align 8, !tbaa !73
  %i.sw = tail call fastcc noundef i32 @_ZL19checkExplicitLevelsP5UBiDiP10UErrorCode(ptr noundef %0, ptr noundef %5)
end_hunk_0

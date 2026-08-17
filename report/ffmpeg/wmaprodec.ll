inline.NumInlined: 107
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@decode_frame:bb.a
.lr.ph122.i.new:                                  ; preds = %.lr.ph122.i
  %unroll_iter460 = and i64 %wide.trip.count152.i, 252
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph122.i.new
  %indvars.iv150.i = phi i64 [ 0, %.lr.ph122.i.new ], [ %indvars.iv.next151.i.3, %bb.y ] ; 6 uses
  %.0121.i = phi i16 [ 0, %.lr.ph122.i.new ], [ %i.nc, %bb.y ] ; 2 uses
  %niter461 = phi i64 [ 0, %.lr.ph122.i.new ], [ %niter461.next.3, %bb.y ]
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %i.mk, i64 %indvars.iv150.i
  store i16 %.0121.i, ptr %i.mn, align 2, !tbaa !116
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %indvars.iv150.i
  %i.mp = load i16, ptr %i.mo, align 2, !tbaa !116
  %i.mq = add i16 %i.mp, %.0121.i                 ; 2 uses
  %indvars.iv.next151.i = or disjoint i64 %indvars.iv150.i, 1 ; 2 uses
  %i.mr = getelementptr inbounds nuw [2 x i8], ptr %i.mk, i64 %indvars.iv.next151.i
  store i16 %i.mq, ptr %i.mr, align 2, !tbaa !116
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %indvars.iv.next151.i
  %i.mt = load i16, ptr %i.ms, align 2, !tbaa !116
  %i.mu = add i16 %i.mt, %i.mq                    ; 2 uses
  %indvars.iv.next151.i.1 = or disjoint i64 %indvars.iv150.i, 2 ; 2 uses
  %i.mv = getelementptr inbounds nuw [2 x i8], ptr %i.mk, i64 %indvars.iv.next151.i.1
  store i16 %i.mu, ptr %i.mv, align 2, !tbaa !116
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %indvars.iv.next151.i.1
  %i.mx = load i16, ptr %i.mw, align 2, !tbaa !116
  %i.my = add i16 %i.mx, %i.mu                    ; 2 uses
  %indvars.iv.next151.i.2 = or disjoint i64 %indvars.iv150.i, 3 ; 2 uses
  %i.mz = getelementptr inbounds nuw [2 x i8], ptr %i.mk, i64 %indvars.iv.next151.i.2
  store i16 %i.my, ptr %i.mz, align 2, !tbaa !116
  %i.na = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %indvars.iv.next151.i.2
  %i.nb = load i16, ptr %i.na, align 2, !tbaa !116
  %i.nc = add i16 %i.nb, %i.my                    ; 2 uses
  %indvars.iv.next151.i.3 = add nuw nsw i64 %indvars.iv150.i, 4 ; 2 uses
  %niter461.next.3 = add i64 %niter461, 4         ; 2 uses
  %niter461.ncmp.3 = icmp eq i64 %niter461.next.3, %unroll_iter460
  br i1 %niter461.ncmp.3, label %._crit_edge123.i.loopexit.unr-lcssa, label %bb.y, !llvm.loop !164

._crit_edge123.i.loopexit.unr-lcssa:              ; preds = %bb.y
  %lcmp.mod458.not = icmp eq i64 %xtraiter456, 0
  br i1 %lcmp.mod458.not, label %._crit_edge123.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge123.i.loopexit.unr-lcssa, %.lr.ph122.i
  %indvars.iv150.i.epil.init = phi i64 [ 0, %.lr.ph122.i ], [ %indvars.iv.next151.i.3, %._crit_edge123.i.loopexit.unr-lcssa ]
  %.0121.i.epil.init = phi i16 [ 0, %.lr.ph122.i ], [ %i.nc, %._crit_edge123.i.loopexit.unr-lcssa ]
  %lcmp.mod459 = icmp ne i64 %xtraiter456, 0
  tail call void @llvm.assume(i1 %lcmp.mod459)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader
  %indvars.iv150.i.epil = phi i64 [ %indvars.iv150.i.epil.init, %.epil.preheader ], [ %indvars.iv.next151.i.epil, %bb.z ] ; 3 uses
  %.0121.i.epil = phi i16 [ %.0121.i.epil.init, %.epil.preheader ], [ %i.ng, %bb.z ] ; 2 uses
  %epil.iter457 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter457.next, %bb.z ]
  %i.nd = getelementptr inbounds nuw [2 x i8], ptr %i.mk, i64 %indvars.iv150.i.epil
  store i16 %.0121.i.epil, ptr %i.nd, align 2, !tbaa !116
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %indvars.iv150.i.epil
  %i.nf = load i16, ptr %i.ne, align 2, !tbaa !116
  %i.ng = add i16 %i.nf, %.0121.i.epil
  %indvars.iv.next151.i.epil = add nuw nsw i64 %indvars.iv150.i.epil, 1
  %epil.iter457.next = add i64 %epil.iter457, 1   ; 2 uses
  %epil.iter457.cmp.not = icmp eq i64 %epil.iter457.next, %xtraiter456
  br i1 %epil.iter457.cmp.not, label %._crit_edge123.i, label %bb.z, !llvm.loop !165

._crit_edge123.i:                                 ; preds = %._crit_edge123.i.loopexit.unr-lcssa, %bb.z, %.preheader.i
  %indvars.iv.next155.i = add nuw nsw i64 %indvars.iv154.i, 1 ; 2 uses
  %exitcond158.not.i = icmp eq i64 %indvars.iv.next155.i, %wide.trip.count138.i
  br i1 %exitcond158.not.i, label %.loopexit144, label %.preheader.i, !llvm.loop !166

.loopexit146:                                     ; preds = %bb.i, %decode_subframe_length.exit.i, %bb.o, %bb.u, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 68252
  store i8 1, ptr %i.nh, align 4, !tbaa !42
  br label %bb.gn

.loopexit144:                                     ; preds = %._crit_edge123.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %.not307 = icmp eq i8 %i.ab, 1
  %.pre.pre = load i32, ptr %i.bx, align 8, !tbaa !141 ; 5 uses
  %.pre220.pre = load ptr, ptr %i.e, align 8, !tbaa !138 ; 6 uses
  %.pre221.pre = load i32, ptr %i.by, align 8, !tbaa !140 ; 11 uses
  br i1 %.not307, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %.loopexit144
  %i.ni = lshr i32 %.pre.pre, 3
  %i.nj = zext nneg i32 %i.ni to i64
  %i.nk = getelementptr inbounds nuw i8, ptr %.pre220.pre, i64 %i.nj
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !53
  %i.nm = icmp slt i32 %.pre.pre, %.pre221.pre
  %i.nn = zext i1 %i.nm to i32
  %spec.select.i108 = add i32 %.pre.pre, %i.nn    ; 6 uses
  %i.no = zext i8 %i.nl to i32
  %i.np = and i32 %.pre.pre, 7
  store i32 %spec.select.i108, ptr %i.bx, align 8, !tbaa !141
  %i.nq = lshr exact i32 128, %i.np
  %i.nr = and i32 %i.nq, %i.no
  %.not86 = icmp eq i32 %i.nr, 0
  br i1 %.not86, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ns = lshr i32 %spec.select.i108, 3
  %i.nt = zext nneg i32 %i.ns to i64
  %i.nu = getelementptr inbounds nuw i8, ptr %.pre220.pre, i64 %i.nt
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !53
  %i.nw = icmp slt i32 %spec.select.i108, %.pre221.pre
  %i.nx = zext i1 %i.nw to i32
  %spec.select.i109 = add i32 %spec.select.i108, %i.nx ; 3 uses
  %i.ny = zext i8 %i.nv to i32
  %i.nz = and i32 %spec.select.i108, 7
  store i32 %spec.select.i109, ptr %i.bx, align 8, !tbaa !141
  %i.oa = lshr exact i32 128, %i.nz
  %i.ob = and i32 %i.oa, %i.ny
  %.not87 = icmp eq i32 %i.ob, 0
  br i1 %.not87, label %bb.ae, label %.preheader143

.preheader143:                                    ; preds = %bb.ab
  %i.oc = zext nneg i8 %i.ab to i32               ; 2 uses
  %i.od = mul nuw nsw i32 %i.oc, %i.oc            ; 2 uses
  %xtraiter463 = and i32 %i.od, 3                 ; 3 uses
  %unroll_iter468 = and i32 %i.od, 16380
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.preheader143
  %i.oe = phi i32 [ %spec.select.i109, %.preheader143 ], [ %i.om, %bb.ac ]
  %niter469 = phi i32 [ 0, %.preheader143 ], [ %niter469.next.3, %bb.ac ]
  %i.of = add i32 %i.oe, 4
  %i.og = tail call i32 @llvm.umin.i32(i32 %.pre221.pre, i32 %i.of)
  %i.oh = add i32 %i.og, 4
  %i.oi = tail call i32 @llvm.umin.i32(i32 %.pre221.pre, i32 %i.oh)
  %i.oj = add i32 %i.oi, 4
  %i.ok = tail call i32 @llvm.umin.i32(i32 %.pre221.pre, i32 %i.oj)
  %i.ol = add i32 %i.ok, 4
  %i.om = tail call i32 @llvm.umin.i32(i32 %.pre221.pre, i32 %i.ol) ; 3 uses
  %niter469.next.3 = add i32 %niter469, 4         ; 2 uses
  %niter469.ncmp.3 = icmp eq i32 %niter469.next.3, %unroll_iter468
  br i1 %niter469.ncmp.3, label %.loopexit.unr-lcssa, label %bb.ac, !llvm.loop !167

.loopexit.unr-lcssa:                              ; preds = %bb.ac
  %lcmp.mod465.not = icmp eq i32 %xtraiter463, 0
  br i1 %lcmp.mod465.not, label %.loopexit, label %.epil.preheader462

.epil.preheader462:                               ; preds = %.loopexit.unr-lcssa
  %lcmp.mod467 = icmp ne i32 %xtraiter463, 0
  tail call void @llvm.assume(i1 %lcmp.mod467)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.epil.preheader462
  %i.on = phi i32 [ %i.om, %.epil.preheader462 ], [ %i.op, %bb.ad ]
  %epil.iter464 = phi i32 [ 0, %.epil.preheader462 ], [ %epil.iter464.next, %bb.ad ]
  %i.oo = add i32 %i.on, 4
  %i.op = tail call i32 @llvm.umin.i32(i32 %.pre221.pre, i32 %i.oo) ; 2 uses
  %epil.iter464.next = add i32 %epil.iter464, 1   ; 2 uses
  %epil.iter464.cmp.not = icmp eq i32 %epil.iter464.next, %xtraiter463
  br i1 %epil.iter464.cmp.not, label %.loopexit, label %bb.ad, !llvm.loop !168

.loopexit:                                        ; preds = %bb.ad, %.loopexit.unr-lcssa
  %.lcssa451 = phi i32 [ %i.om, %.loopexit.unr-lcssa ], [ %i.op, %bb.ad ] ; 2 uses
  store i32 %.lcssa451, ptr %i.bx, align 8, !tbaa !141
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit144.thread, %.loopexit, %bb.ab, %bb.aa, %.loopexit144
  %.pre221.pre273 = phi i32 [ %.pre221.pre, %.loopexit ], [ %.pre221.pre, %bb.ab ], [ %.pre221.pre, %bb.aa ], [ %.pre221.pre, %.loopexit144 ], [ %.pre221.pre271, %.loopexit144.thread ] ; 6 uses
  %.pre220.pre272 = phi ptr [ %.pre220.pre, %.loopexit ], [ %.pre220.pre, %bb.ab ], [ %.pre220.pre, %bb.aa ], [ %.pre220.pre, %.loopexit144 ], [ %.pre220.pre270, %.loopexit144.thread ] ; 6 uses
  %.pre = phi i32 [ %.lcssa451, %.loopexit ], [ %spec.select.i109, %bb.ab ], [ %spec.select.i108, %bb.aa ], [ %.pre.pre, %.loopexit144 ], [ %.pre.pre269, %.loopexit144.thread ] ; 4 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 65845
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !108
  %.not88 = icmp eq i8 %i.or, 0
  br i1 %.not88, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.os = lshr i32 %.pre, 3
  %i.ot = zext nneg i32 %i.os to i64
  %i.ou = getelementptr inbounds nuw i8, ptr %.pre220.pre272, i64 %i.ot
  %i.ov = load i32, ptr %i.ou, align 1, !tbaa !53
  %i.ow = tail call i32 @llvm.bswap.i32(i32 %i.ov)
  %i.ox = and i32 %.pre, 7
  %i.oy = shl i32 %i.ow, %i.ox
  %i.oz = lshr i32 %i.oy, 24
  %i.pa = add i32 %.pre, 8
  %i.pb = tail call i32 @llvm.umin.i32(i32 %.pre221.pre273, i32 %i.pa) ; 2 uses
  store i32 %i.pb, ptr %i.bx, align 8, !tbaa !141
  %i.pc = trunc nuw i32 %i.oz to i8
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 68292
  store i8 %i.pc, ptr %i.pd, align 4, !tbaa !169
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.pe = phi i32 [ %i.pb, %bb.af ], [ %.pre, %bb.ae ] ; 4 uses
  %i.pf = lshr i32 %i.pe, 3
  %i.pg = zext nneg i32 %i.pf to i64
  %i.ph = getelementptr inbounds nuw i8, ptr %.pre220.pre272, i64 %i.pg
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !53
  %i.pj = icmp slt i32 %i.pe, %.pre221.pre273
  %i.pk = zext i1 %i.pj to i32
  %spec.select.i110 = add i32 %i.pe, %i.pk        ; 5 uses
  %i.pl = zext i8 %i.pi to i32
  %i.pm = and i32 %i.pe, 7
  store i32 %spec.select.i110, ptr %i.bx, align 8, !tbaa !141
  %i.pn = lshr exact i32 128, %i.pm
  %i.po = and i32 %i.pn, %i.pl
  %.not89 = icmp eq i32 %i.po, 0
  br i1 %.not89, label %3, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.pp = lshr i32 %spec.select.i110, 3
  %i.pq = zext nneg i32 %i.pp to i64
  %i.pr = getelementptr inbounds nuw i8, ptr %.pre220.pre272, i64 %i.pq
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !53
  %i.pt = icmp slt i32 %spec.select.i110, %.pre221.pre273
  %i.pu = zext i1 %i.pt to i32
  %spec.select.i111 = add i32 %spec.select.i110, %i.pu ; 5 uses
  %i.pv = zext i8 %i.ps to i32
  %i.pw = and i32 %spec.select.i110, 7
  store i32 %spec.select.i111, ptr %i.bx, align 8, !tbaa !141
  %i.px = lshr exact i32 128, %i.pw
  %i.py = and i32 %i.px, %i.pv
  %.not90 = icmp eq i32 %i.py, 0
  br i1 %.not90, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.pz = shl nuw nsw i32 %i.bs, 1
  %.not.i97 = icmp sgt i16 %i.br, -1              ; 2 uses
  %spec.select.i98 = select i1 %.not.i97, i32 %i.pz, i32 1 ; 3 uses
  %spec.select12.i99 = select i1 %.not.i97, i32 0, i32 16 ; 2 uses
  %.not11.i100 = icmp samesign ult i32 %spec.select.i98, 256 ; 2 uses
  %i.qa = lshr i32 %spec.select.i98, 8
  %i.qb = or disjoint i32 %spec.select12.i99, 8
  %.110.i101 = select i1 %.not11.i100, i32 %spec.select.i98, i32 %i.qa
  %.1.i102 = select i1 %.not11.i100, i32 %spec.select12.i99, i32 %i.qb
  %i.qc = zext nneg i32 %.110.i101 to i64
  %i.qd = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.qc
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !53
  %i.qf = zext i8 %i.qe to i32
  %i.qg = add nuw nsw i32 %.1.i102, %i.qf         ; 2 uses
  %i.qh = lshr i32 %spec.select.i111, 3
  %i.qi = zext nneg i32 %i.qh to i64
  %i.qj = getelementptr inbounds nuw i8, ptr %.pre220.pre272, i64 %i.qi
  %i.qk = load i32, ptr %i.qj, align 1, !tbaa !53
  %i.ql = tail call i32 @llvm.bswap.i32(i32 %i.qk)
  %i.qm = and i32 %spec.select.i111, 7
  %i.qn = shl i32 %i.ql, %i.qm
  %i.qo = sub nsw i32 32, %i.qg
  %i.qp = lshr i32 %i.qn, %i.qo
  %i.qq = add i32 %i.qg, %spec.select.i111
  %i.qr = tail call i32 @llvm.umin.i32(i32 %.pre221.pre273, i32 %i.qq) ; 2 uses
  store i32 %i.qr, ptr %i.bx, align 8, !tbaa !141
  %i.qs = trunc i32 %i.qp to i16
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 65850
  store i16 %i.qs, ptr %i.qt, align 2, !tbaa !77
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.qu = phi i32 [ %i.qr, %bb.ai ], [ %spec.select.i111, %bb.ah ] ; 4 uses
  %i.qv = lshr i32 %i.qu, 3
  %i.qw = zext nneg i32 %i.qv to i64
  %i.qx = getelementptr inbounds nuw i8, ptr %.pre220.pre272, i64 %i.qw
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !53
  %i.qz = icmp slt i32 %i.qu, %.pre221.pre273
  %i.ra = zext i1 %i.qz to i32
  %spec.select.i112 = add i32 %i.qu, %i.ra        ; 4 uses
  %i.rb = zext i8 %i.qy to i32
  %i.rc = and i32 %i.qu, 7
  store i32 %spec.select.i112, ptr %i.bx, align 8, !tbaa !141
  %i.rd = lshr exact i32 128, %i.rc
  %i.re = and i32 %i.rd, %i.rb
  %.not91 = icmp eq i32 %i.re, 0
  br i1 %.not91, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.rf = shl nuw nsw i32 %i.bs, 1
  %.not.i = icmp sgt i16 %i.br, -1                ; 2 uses
  %spec.select.i = select i1 %.not.i, i32 %i.rf, i32 1 ; 3 uses
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.rg = lshr i32 %spec.select.i, 8
  %i.rh = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.rg
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.rh
  %i.ri = zext nneg i32 %.110.i to i64
  %i.rj = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ri
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !53
  %i.rl = zext i8 %i.rk to i32
  %i.rm = add nuw nsw i32 %.1.i, %i.rl            ; 2 uses
  %i.rn = lshr i32 %spec.select.i112, 3
  %i.ro = zext nneg i32 %i.rn to i64
  %i.rp = getelementptr inbounds nuw i8, ptr %.pre220.pre272, i64 %i.ro
  %i.rq = load i32, ptr %i.rp, align 1, !tbaa !53
  %i.rr = tail call i32 @llvm.bswap.i32(i32 %i.rq)
  %i.rs = and i32 %spec.select.i112, 7
  %i.rt = shl i32 %i.rr, %i.rs
  %i.ru = sub nsw i32 32, %i.rm
  %i.rv = lshr i32 %i.rt, %i.ru
  %i.rw = add i32 %i.rm, %spec.select.i112
  %i.rx = tail call i32 @llvm.umin.i32(i32 %.pre221.pre273, i32 %i.rw)
  store i32 %i.rx, ptr %i.bx, align 8, !tbaa !141
  %i.ry = trunc i32 %i.rv to i16
  br label %bb.al

3:                                                ; preds = %bb.ag
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 65852
  store i16 0, ptr %4, align 4, !tbaa !79
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %3
  %.sink308 = phi i64 [ 65850, %3 ], [ 65852, %bb.ak ]
  %.sink = phi i16 [ 0, %3 ], [ %i.ry, %bb.ak ]
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 %.sink308
  store i16 %.sink, ptr %i.rz, align 2, !tbaa !116
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 68294 ; 3 uses
  store i8 0, ptr %i.sa, align 2, !tbaa !170
  br i1 %i.ad, label %.lr.ph.preheader, label %.lr.ph171

.lr.ph.preheader:                                 ; preds = %bb.am
  %xtraiter470 = and i64 %wide.trip.count138.i, 3 ; 3 uses
  %i.sb = icmp ult i8 %i.ab, 4
  br i1 %i.sb, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter474 = and i64 %wide.trip.count138.i, 124
  br label %.lr.ph

.lr.ph171.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod472.not = icmp eq i64 %xtraiter470, 0
  br i1 %lcmp.mod472.not, label %.lr.ph171, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph171.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.lr.ph171.loopexit.unr-lcssa ]
  %lcmp.mod473 = icmp ne i64 %xtraiter470, 0
  tail call void @llvm.assume(i1 %lcmp.mod473)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter471 = phi i64 [ %epil.iter471.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.sc = getelementptr inbounds nuw [49584 x i8], ptr %i.cc, i64 %indvars.iv.epil ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 134
  store i16 0, ptr %i.sd, align 2, !tbaa !171
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 132
  store i8 0, ptr %i.se, align 4, !tbaa !172
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 144
  store i8 0, ptr %i.sf, align 16, !tbaa !173
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter471.next = add i64 %epil.iter471, 1   ; 2 uses
  %epil.iter471.cmp.not = icmp eq i64 %epil.iter471.next, %xtraiter470
  br i1 %epil.iter471.cmp.not, label %.lr.ph171, label %.lr.ph.epil, !llvm.loop !174

.lr.ph171:                                        ; preds = %.lr.ph171.loopexit.unr-lcssa, %.lr.ph.epil, %bb.am
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 68248
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 68299 ; 11 uses
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 68300 ; 24 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 68320 ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 65862
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 68308 ; 9 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 65870
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 68312 ; 5 uses
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 68190
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 68296 ; 14 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 68321 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 68240 ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 68322 ; 6 uses
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 68328 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 65846
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 68309 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 66334
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 32880
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 32944
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 65856
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 33008 ; 3 uses
  br label %bb.an

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter475 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter475.next.3, %.lr.ph ]
  %i.tc = getelementptr inbounds nuw [49584 x i8], ptr %i.cc, i64 %indvars.iv ; 3 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 134
  store i16 0, ptr %i.td, align 2, !tbaa !171
  %i.te = getelementptr inbounds nuw i8, ptr %i.tc, i64 132
  store i8 0, ptr %i.te, align 4, !tbaa !172
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tc, i64 144
  store i8 0, ptr %i.tf, align 16, !tbaa !173
  %i.tg = getelementptr inbounds nuw [49584 x i8], ptr %i.cc, i64 %indvars.iv ; 3 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 49718
  store i16 0, ptr %i.th, align 2, !tbaa !171
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tg, i64 49716
  store i8 0, ptr %i.ti, align 4, !tbaa !172
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tg, i64 49728
  store i8 0, ptr %i.tj, align 16, !tbaa !173
  %i.tk = getelementptr inbounds nuw [49584 x i8], ptr %i.cc, i64 %indvars.iv ; 3 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 99302
  store i16 0, ptr %i.tl, align 2, !tbaa !171
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 99300
  store i8 0, ptr %i.tm, align 4, !tbaa !172
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tk, i64 99312
  store i8 0, ptr %i.tn, align 16, !tbaa !173
  %i.to = getelementptr inbounds nuw [49584 x i8], ptr %i.cc, i64 %indvars.iv ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 148886
  store i16 0, ptr %i.tp, align 2, !tbaa !171
  %i.tq = getelementptr inbounds nuw i8, ptr %i.to, i64 148884
  store i8 0, ptr %i.tq, align 4, !tbaa !172
  %i.tr = getelementptr inbounds nuw i8, ptr %i.to, i64 148896
  store i8 0, ptr %i.tr, align 16, !tbaa !173
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter475.next.3 = add i64 %niter475, 4         ; 2 uses
  %niter475.ncmp.3 = icmp eq i64 %niter475.next.3, %unroll_iter474
  br i1 %niter475.ncmp.3, label %.lr.ph171.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !175

.preheader135:                                    ; preds = %decode_subframe.exit
  %i.ts = load i8, ptr %i.aa, align 2, !tbaa !43
  %i.tt = icmp sgt i8 %i.ts, 0
  br i1 %i.tt, label %.lr.ph173, label %._crit_edge

.lr.ph173:                                        ; preds = %.preheader135
  %i.tu = getelementptr inbounds nuw i8, ptr %1, i64 96
  br label %bb.gc

bb.an:                                            ; preds = %.lr.ph171, %decode_subframe.exit
  %i.tv = load i16, ptr %i.bq, align 8, !tbaa !30 ; 2 uses
  %i.tw = zext i16 %i.tv to i32                   ; 8 uses
  %i.tx = load i8, ptr %i.aa, align 2, !tbaa !43  ; 5 uses
  %i.ty = sext i8 %i.tx to i32                    ; 2 uses
  %i.tz = mul nsw i32 %i.ty, %i.tw                ; 2 uses
  %.val339.i = load i32, ptr %i.bx, align 8, !tbaa !141
  store i32 %.val339.i, ptr %i.sg, align 8, !tbaa !176
  %i.ua = icmp sgt i8 %i.tx, 0
  br i1 %i.ua, label %.lr.ph.i119, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.an
  store i8 0, ptr %i.sh, align 1, !tbaa !177
  br label %._crit_edge413.i

.lr.ph.i119:                                      ; preds = %bb.an
  %wide.trip.count.i120 = zext nneg i32 %i.ty to i64 ; 2 uses
  %xtraiter477 = and i64 %wide.trip.count.i120, 1
  %i.ub = icmp eq i8 %i.tx, 1
  br i1 %i.ub, label %.epil.preheader476, label %.lr.ph.i119.new

.lr.ph.i119.new:                                  ; preds = %.lr.ph.i119
  %unroll_iter483 = and i64 %wide.trip.count.i120, 126
  br label %bb.ao

bb.ao:                                            ; preds = %bb.as, %.lr.ph.i119.new
  %indvars.iv.i121 = phi i64 [ 0, %.lr.ph.i119.new ], [ %indvars.iv.next.i122.1, %bb.as ] ; 3 uses
  %.0259407.i = phi i32 [ %i.tw, %.lr.ph.i119.new ], [ %.1260.i.1, %bb.as ] ; 2 uses
  %.0261406.i = phi i32 [ %i.tw, %.lr.ph.i119.new ], [ %.1262.i.1, %bb.as ]
  %niter484 = phi i64 [ 0, %.lr.ph.i119.new ], [ %niter484.next.1, %bb.as ]
  %i.uc = getelementptr inbounds nuw [49584 x i8], ptr %i.cc, i64 %indvars.iv.i121 ; 4 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 136
  store i8 0, ptr %i.ud, align 8, !tbaa !178
  %i.ue = getelementptr inbounds nuw i8, ptr %i.uc, i64 134
  %i.uf = load i16, ptr %i.ue, align 2, !tbaa !171
  %i.ug = zext i16 %i.uf to i32                   ; 2 uses
  %i.uh = icmp samesign ugt i32 %.0259407.i, %i.ug
  br i1 %i.uh, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uc, i64 4
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uc, i64 132
  %i.uk = load i8, ptr %i.uj, align 4, !tbaa !172
  %i.ul = zext i8 %i.uk to i64
  %i.um = getelementptr inbounds nuw [2 x i8], ptr %i.ui, i64 %i.ul
  %i.un = load i16, ptr %i.um, align 2, !tbaa !116
  %i.uo = zext i16 %i.un to i32
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.1262.i = phi i32 [ %i.uo, %bb.ap ], [ %.0261406.i, %bb.ao ]
  %.1260.i = phi i32 [ %i.ug, %bb.ap ], [ %.0259407.i, %bb.ao ] ; 2 uses
  %i.up = getelementptr inbounds nuw [49584 x i8], ptr %i.cc, i64 %indvars.iv.i121 ; 4 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 49720
  store i8 0, ptr %i.uq, align 8, !tbaa !178
  %i.ur = getelementptr inbounds nuw i8, ptr %i.up, i64 49718
  %i.us = load i16, ptr %i.ur, align 2, !tbaa !171
  %i.ut = zext i16 %i.us to i32                   ; 2 uses
  %i.uu = icmp samesign ugt i32 %.1260.i, %i.ut
  br i1 %i.uu, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.uv = getelementptr inbounds nuw i8, ptr %i.up, i64 49588
  %i.uw = getelementptr inbounds nuw i8, ptr %i.up, i64 49716
  %i.ux = load i8, ptr %i.uw, align 4, !tbaa !172
  %i.uy = zext i8 %i.ux to i64
  %i.uz = getelementptr inbounds nuw [2 x i8], ptr %i.uv, i64 %i.uy
  %i.va = load i16, ptr %i.uz, align 2, !tbaa !116
  %i.vb = zext i16 %i.va to i32
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.1262.i.1 = phi i32 [ %i.vb, %bb.ar ], [ %.1262.i, %bb.aq ] ; 3 uses
  %.1260.i.1 = phi i32 [ %i.ut, %bb.ar ], [ %.1260.i, %bb.aq ] ; 3 uses
  %indvars.iv.next.i122.1 = add nuw nsw i64 %indvars.iv.i121, 2 ; 2 uses
  %niter484.next.1 = add i64 %niter484, 2         ; 2 uses
  %niter484.ncmp.1 = icmp eq i64 %niter484.next.1, %unroll_iter483
  br i1 %niter484.ncmp.1, label %._crit_edge.i124.unr-lcssa, label %bb.ao, !llvm.loop !179

._crit_edge.i124.unr-lcssa:                       ; preds = %bb.as
  %lcmp.mod479.not = icmp eq i64 %xtraiter477, 0
  br i1 %lcmp.mod479.not, label %._crit_edge.i124, label %.epil.preheader476

.epil.preheader476:                               ; preds = %._crit_edge.i124.unr-lcssa, %.lr.ph.i119
  %indvars.iv.i121.epil.init = phi i64 [ 0, %.lr.ph.i119 ], [ %indvars.iv.next.i122.1, %._crit_edge.i124.unr-lcssa ]
  %.0259407.i.epil.init = phi i32 [ %i.tw, %.lr.ph.i119 ], [ %.1260.i.1, %._crit_edge.i124.unr-lcssa ] ; 2 uses
  %.0261406.i.epil.init = phi i32 [ %i.tw, %.lr.ph.i119 ], [ %.1262.i.1, %._crit_edge.i124.unr-lcssa ]
  %lcmp.mod482 = trunc i8 %i.tx to i1
  call void @llvm.assume(i1 %lcmp.mod482)
  %i.vc = getelementptr inbounds nuw [49584 x i8], ptr %i.cc, i64 %indvars.iv.i121.epil.init ; 4 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 136
  store i8 0, ptr %i.vd, align 8, !tbaa !178
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/covMinSop?download=true
inline.NumInlined: 98
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Min_SopMinimize:bb.a
  br i1 %.not14.i260.i, label %Min_CubeIsContained.exit.i266.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dq = getelementptr inbounds nuw i8, ptr %.01122.i259.i, i64 12
  %i.dr = getelementptr inbounds nuw i8, ptr %.01122.i259.i, i64 8
  %i.ds = load i32, ptr %i.dr, align 8
  %i.dt = lshr i32 %i.ds, 10
  %i.du = and i32 %i.dt, 4095                     ; 2 uses
  %.not13.i.i261.i = icmp eq i32 %i.du, 0
  br i1 %.not13.i.i261.i, label %Min_CoverContainsCube.exit275.i, label %.lr.ph.i.i262.i

.lr.ph.i.i262.i:                                  ; preds = %bb.u
  %wide.trip.count.i.i263.i = zext nneg i32 %i.du to i64
  br label %bb.w

bb.v:                                             ; preds = %bb.w
  %indvars.iv.next.i.i273.i = add nuw nsw i64 %indvars.iv.i.i264.i, 1 ; 2 uses
  %exitcond.not.i.i274.i = icmp eq i64 %indvars.iv.next.i.i273.i, %wide.trip.count.i.i263.i
  br i1 %exitcond.not.i.i274.i, label %Min_CoverContainsCube.exit275.i, label %bb.w, !llvm.loop !0

bb.w:                                             ; preds = %bb.v, %.lr.ph.i.i262.i
  %indvars.iv.i.i264.i = phi i64 [ 0, %.lr.ph.i.i262.i ], [ %indvars.iv.next.i.i273.i, %bb.v ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv.i.i264.i
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !26
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.i.i264.i
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !26 ; 2 uses
  %i.dz = and i32 %i.dy, %i.dw
  %.not.i.i265.i = icmp eq i32 %i.dz, %i.dy
  br i1 %.not.i.i265.i, label %bb.v, label %Min_CubeIsContained.exit.i266.i

Min_CubeIsContained.exit.i266.i:                  ; preds = %bb.w, %bb.t
  %.011.i267.i = load ptr, ptr %.01122.i259.i, align 8, !tbaa !21 ; 2 uses
  %.not13.i268.i = icmp eq ptr %.011.i267.i, null
  br i1 %.not13.i268.i, label %._crit_edge.i269.i, label %bb.t, !llvm.loop !37

._crit_edge.i269.i:                               ; preds = %Min_CubeIsContained.exit.i266.i, %bb.s
  %indvars.iv.next.i270.i = add nuw nsw i64 %indvars.iv.i255.i, 1 ; 2 uses
  %exitcond.not.i271.i = icmp eq i64 %indvars.iv.next.i270.i, %wide.trip.count.i254.i
  br i1 %exitcond.not.i271.i, label %Min_CoverContainsCube.exit275.thread.i, label %bb.s, !llvm.loop !38

Min_CoverContainsCube.exit275.thread.i:           ; preds = %._crit_edge.i269.i
  store i32 %i.dj, ptr %i.bx, align 4, !tbaa !26
  br i1 %.not359.i, label %.thread357.i, label %bb.z

Min_CoverContainsCube.exit275.i:                  ; preds = %bb.u, %bb.v
  store i32 %i.dj, ptr %i.bx, align 4, !tbaa !26
  br i1 %i.dh, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %Min_CoverContainsCube.exit275.i
  %.val253.i = load ptr, ptr %i.h, align 8, !tbaa !27
  tail call void @Extra_MmFixedEntryRecycle(ptr noundef %.val253.i, ptr noundef nonnull %.2227.i) #10
  %i.ea = xor i32 %i.bs, 3
  %i.eb = shl nuw i32 %i.ea, %i.bq
  %i.ec = load i32, ptr %i.bo, align 4, !tbaa !26
  %i.ed = xor i32 %i.ec, %i.eb
  store i32 %i.ed, ptr %i.bo, align 4, !tbaa !26
  %i.ee = xor i32 %i.cb, 3
  %i.ef = shl nuw i32 %i.ee, %i.bz
  %i.eg = load i32, ptr %i.bx, align 4, !tbaa !26
  %i.eh = xor i32 %i.eg, %i.ef
  store i32 %i.eh, ptr %i.bx, align 4, !tbaa !26
  %i.ei = load i32, ptr %i.ba, align 8            ; 2 uses
  %i.ej = and i32 %i.ei, -4194304
  %i.ek = add i32 %i.ej, -8388608
  %i.el = and i32 %i.ei, 4194303
  %i.em = or disjoint i32 %i.ek, %i.el
  store i32 %i.em, ptr %i.ba, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %i.en = tail call i32 @Min_SopAddCubeInt(ptr noundef nonnull %0, ptr noundef nonnull %.1231.i)
  %.not.i.i = icmp eq i32 %i.en, 0
  br i1 %.not.i.i, label %.outer.i.backedge, label %bb.y, !llvm.loop !1

bb.z:                                             ; preds = %Min_CoverContainsCube.exit275.thread.i
  %i.eo = xor i32 %i.bs, 3
  %i.ep = shl nuw i32 %i.eo, %i.bq
  %i.eq = load i32, ptr %i.bo, align 4, !tbaa !26
  %i.er = xor i32 %i.eq, %i.ep
  store i32 %i.er, ptr %i.bo, align 4, !tbaa !26
  %i.es = load i32, ptr %i.ba, align 8
  %i.et = add i32 %i.es, -4194304
  store i32 %i.et, ptr %i.ba, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %bb.z
  %i.eu = tail call i32 @Min_SopAddCubeInt(ptr noundef %0, ptr noundef nonnull %.1231.i)
  %.not.i276.i = icmp eq i32 %i.eu, 0
  br i1 %.not.i276.i, label %Min_SopAddCube.exit277.i, label %bb.aa, !llvm.loop !1

Min_SopAddCube.exit277.i:                         ; preds = %bb.aa
  %i.ev = xor i32 %i.ck, 3
  %i.ew = shl nuw i32 %i.ev, %i.bz
  %i.ex = load i32, ptr %i.ch, align 4, !tbaa !26
  %i.ey = xor i32 %i.ex, %i.ew
  store i32 %i.ey, ptr %i.ch, align 4, !tbaa !26
  %i.ez = getelementptr inbounds nuw i8, ptr %.2227.i, i64 8 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 8
  %i.fb = add i32 %i.fa, -4194304
  store i32 %i.fb, ptr %i.ez, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %Min_SopAddCube.exit277.i
  %i.fc = tail call i32 @Min_SopAddCubeInt(ptr noundef %0, ptr noundef nonnull %.2227.i)
  %.not.i278.i = icmp eq i32 %i.fc, 0
  br i1 %.not.i278.i, label %.outer.i.backedge, label %bb.ab, !llvm.loop !1

bb.ac:                                            ; preds = %Min_CoverContainsCube.exit275.i
  %i.fd = xor i32 %i.cb, 3
  %i.fe = shl nuw i32 %i.fd, %i.bz
  %i.ff = xor i32 %i.dj, %i.fe
  store i32 %i.ff, ptr %i.bx, align 4, !tbaa !26
  %i.fg = load i32, ptr %i.ba, align 8
  %i.fh = add i32 %i.fg, -4194304
  store i32 %i.fh, ptr %i.ba, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %bb.ac
  %i.fi = tail call i32 @Min_SopAddCubeInt(ptr noundef %0, ptr noundef nonnull %.1231.i)
  %.not.i280.i = icmp eq i32 %i.fi, 0
  br i1 %.not.i280.i, label %Min_SopAddCube.exit281.i, label %bb.ad, !llvm.loop !1

Min_SopAddCube.exit281.i:                         ; preds = %bb.ad
  %i.fj = xor i32 %i.cg, 3
  %i.fk = shl nuw i32 %i.fj, %i.bq
  %i.fl = load i32, ptr %i.cd, align 4, !tbaa !26
  %i.fm = xor i32 %i.fl, %i.fk
  store i32 %i.fm, ptr %i.cd, align 4, !tbaa !26
  %i.fn = getelementptr inbounds nuw i8, ptr %.2227.i, i64 8 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 8
  %i.fp = add i32 %i.fo, -4194304
  store i32 %i.fp, ptr %i.fn, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %Min_SopAddCube.exit281.i
  %i.fq = tail call i32 @Min_SopAddCubeInt(ptr noundef %0, ptr noundef nonnull %.2227.i)
  %.not.i282.i = icmp eq i32 %i.fq, 0
  br i1 %.not.i282.i, label %.outer.i.backedge, label %bb.ae, !llvm.loop !1

.thread357.i:                                     ; preds = %Min_CoverContainsCube.exit275.thread.i, %.thread357.i
  %i.fr = tail call i32 @Min_SopAddCubeInt(ptr noundef %0, ptr noundef nonnull %.1231.i)
  %.not.i284.i = icmp eq i32 %i.fr, 0
  br i1 %.not.i284.i, label %Min_SopAddCube.exit285.i, label %.thread357.i, !llvm.loop !1

Min_SopAddCube.exit285.i:                         ; preds = %.thread357.i, %Min_SopAddCube.exit285.i
  %i.fs = tail call i32 @Min_SopAddCubeInt(ptr noundef %0, ptr noundef nonnull %.2227.i)
  %.not.i286.i = icmp eq i32 %i.fs, 0
  br i1 %.not.i286.i, label %.outer.i.backedge, label %Min_SopAddCube.exit285.i, !llvm.loop !1

bb.af:                                            ; preds = %.loopexit373.i
  br i1 %or.cond.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.2232.i = phi ptr [ %.2227.i, %bb.ag ], [ %.1231.i, %bb.af ] ; 12 uses
  %.3.i = phi ptr [ %.1231.i, %bb.ag ], [ %.2227.i, %bb.af ] ; 9 uses
  %.0221.i = phi i32 [ %i.cg, %bb.ag ], [ %i.bs, %bb.af ] ; 2 uses
  %.0219.i = phi i32 [ %i.ck, %bb.ag ], [ %i.cb, %bb.af ] ; 2 uses
  %.0217.i = phi i32 [ %i.bs, %bb.ag ], [ %i.cg, %bb.af ] ; 2 uses
  %.0215.i = phi i32 [ %i.cb, %bb.ag ], [ %i.ck, %bb.af ] ; 2 uses
  %.not248.i = icmp eq i32 %.0221.i, 3
  br i1 %.not248.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.bt, ptr %i.a, align 4, !tbaa !26
  store i32 %i.bj, ptr %i.b, align 4, !tbaa !26
  %i.ft = icmp eq i32 %.0219.i, 3
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pre-phi57 = phi i32 [ %i.bz, %bb.ai ], [ %i.bq, %bb.ah ] ; 2 uses
  %.pre-phi = phi i64 [ %i.bw, %bb.ai ], [ %i.bn, %bb.ah ] ; 2 uses
  %.1222.i = phi i1 [ %i.ft, %bb.ai ], [ true, %bb.ah ]
  %.1220.i = phi i32 [ %.0221.i, %bb.ai ], [ %.0219.i, %bb.ah ] ; 3 uses
  %.1218.i = phi i32 [ %.0215.i, %bb.ai ], [ %.0217.i, %bb.ah ] ; 5 uses
  %.1216.i = phi i32 [ %.0217.i, %bb.ai ], [ %.0215.i, %bb.ah ] ; 2 uses
  %i.fu = icmp eq i32 %.1216.i, 3
  %or.cond11.i = select i1 %.1222.i, i1 %i.fu, i1 false
  br i1 %or.cond11.i, label %bb.ak, label %bb.aw

bb.ak:                                            ; preds = %bb.aj
  %i.fv = shl nuw i32 %.1218.i, %.pre-phi57
  %i.fw = getelementptr inbounds nuw i8, ptr %.2232.i, i64 12 ; 8 uses
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %.pre-phi ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !26
  %i.fz = xor i32 %i.fy, %i.fv
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !26
  %i.ga = load i32, ptr %i.b, align 4, !tbaa !26  ; 2 uses
  %i.gb = shl nsw i32 %i.ga, 1
  %i.gc = and i32 %i.gb, 30
  %i.gd = shl nuw i32 3, %i.gc
  %i.ge = ashr i32 %i.ga, 4
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.gf ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !26
  %i.gi = xor i32 %i.gd, %i.gh
  store i32 %i.gi, ptr %i.gg, align 4, !tbaa !26
  %i.gj = getelementptr inbounds nuw i8, ptr %.2232.i, i64 8 ; 11 uses
  %i.gk = load i32, ptr %i.gj, align 8
  %i.gl = add i32 %i.gk, 4194304                  ; 2 uses
  store i32 %i.gl, ptr %i.gj, align 8
  %i.gm = lshr i32 %i.gl, 22
  %i.gn = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.go = add nuw nsw i32 %i.gm, 1
  %wide.trip.count.i288.i = zext nneg i32 %i.go to i64
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge.i303.i, %bb.ak
  %indvars.iv.i289.i = phi i64 [ 0, %bb.ak ], [ %indvars.iv.next.i304.i, %._crit_edge.i303.i ] ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.i289.i
  %.01120.i290.i = load ptr, ptr %i.gp, align 8, !tbaa !21 ; 2 uses
  %.not1321.i291.i = icmp eq ptr %.01120.i290.i, null
  br i1 %.not1321.i291.i, label %._crit_edge.i303.i, label %.lr.ph.i292.i

.lr.ph.i292.i:                                    ; preds = %bb.al
  %i.gq = load ptr, ptr %i.g, align 8, !tbaa !20
  br label %bb.am

bb.am:                                            ; preds = %Min_CubeIsContained.exit.i300.i, %.lr.ph.i292.i
  %.01122.i293.i = phi ptr [ %.01120.i290.i, %.lr.ph.i292.i ], [ %.011.i301.i, %Min_CubeIsContained.exit.i300.i ] ; 4 uses
  %.not14.i294.i = icmp eq ptr %.01122.i293.i, %i.gq
  br i1 %.not14.i294.i, label %Min_CubeIsContained.exit.i300.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gr = getelementptr inbounds nuw i8, ptr %.01122.i293.i, i64 12
  %i.gs = getelementptr inbounds nuw i8, ptr %.01122.i293.i, i64 8
  %i.gt = load i32, ptr %i.gs, align 8
  %i.gu = lshr i32 %i.gt, 10
  %i.gv = and i32 %i.gu, 4095                     ; 2 uses
  %.not13.i.i295.i = icmp eq i32 %i.gv, 0
  br i1 %.not13.i.i295.i, label %Min_CoverContainsCube.exit309.i, label %.lr.ph.i.i296.i

.lr.ph.i.i296.i:                                  ; preds = %bb.an
  %wide.trip.count.i.i297.i = zext nneg i32 %i.gv to i64
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ap
  %indvars.iv.next.i.i307.i = add nuw nsw i64 %indvars.iv.i.i298.i, 1 ; 2 uses
  %exitcond.not.i.i308.i = icmp eq i64 %indvars.iv.next.i.i307.i, %wide.trip.count.i.i297.i
  br i1 %exitcond.not.i.i308.i, label %Min_CoverContainsCube.exit309.i, label %bb.ap, !llvm.loop !0

bb.ap:                                            ; preds = %bb.ao, %.lr.ph.i.i296.i
  %indvars.iv.i.i298.i = phi i64 [ 0, %.lr.ph.i.i296.i ], [ %indvars.iv.next.i.i307.i, %bb.ao ] ; 3 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv.i.i298.i
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !26
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv.i.i298.i
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !26 ; 2 uses
  %i.ha = and i32 %i.gz, %i.gx
  %.not.i.i299.i = icmp eq i32 %i.ha, %i.gz
  br i1 %.not.i.i299.i, label %bb.ao, label %Min_CubeIsContained.exit.i300.i

Min_CubeIsContained.exit.i300.i:                  ; preds = %bb.ap, %bb.am
  %.011.i301.i = load ptr, ptr %.01122.i293.i, align 8, !tbaa !21 ; 2 uses
  %.not13.i302.i = icmp eq ptr %.011.i301.i, null
  br i1 %.not13.i302.i, label %._crit_edge.i303.i, label %bb.am, !llvm.loop !37

._crit_edge.i303.i:                               ; preds = %Min_CubeIsContained.exit.i300.i, %bb.al
  %indvars.iv.next.i304.i = add nuw nsw i64 %indvars.iv.i289.i, 1 ; 2 uses
  %exitcond.not.i305.i = icmp eq i64 %indvars.iv.next.i304.i, %wide.trip.count.i288.i
  br i1 %exitcond.not.i305.i, label %Min_CoverContainsCube.exit309.i, label %bb.al, !llvm.loop !38

Min_CoverContainsCube.exit309.i:                  ; preds = %._crit_edge.i303.i, %bb.an, %bb.ao
  %.not250.i = phi i1 [ false, %bb.ao ], [ false, %bb.an ], [ true, %._crit_edge.i303.i ]
  %i.hb = load i32, ptr %i.a, align 4, !tbaa !26  ; 2 uses
  %i.hc = shl nsw i32 %i.hb, 1
  %i.hd = and i32 %i.hc, 30
  %i.he = shl nuw i32 %.1218.i, %i.hd
  %i.hf = ashr i32 %i.hb, 4
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.hg ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !26
  %i.hj = xor i32 %i.he, %i.hi
  store i32 %i.hj, ptr %i.hh, align 4, !tbaa !26
  %i.hk = load i32, ptr %i.b, align 4, !tbaa !26  ; 2 uses
  %i.hl = shl nsw i32 %i.hk, 1
  %i.hm = and i32 %i.hl, 30
  %i.hn = shl nuw i32 3, %i.hm
  %i.ho = ashr i32 %i.hk, 4
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.hp ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !26
  %i.hs = xor i32 %i.hn, %i.hr
  store i32 %i.hs, ptr %i.hq, align 4, !tbaa !26
  %i.ht = load i32, ptr %i.gj, align 8
  %i.hu = add i32 %i.ht, -4194304
  store i32 %i.hu, ptr %i.gj, align 8
  br i1 %.not250.i, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %Min_CoverContainsCube.exit309.i
  %.val252.i = load ptr, ptr %i.h, align 8, !tbaa !27
  tail call void @Extra_MmFixedEntryRecycle(ptr noundef %.val252.i, ptr noundef nonnull %.3.i) #10
  %i.hv = load i32, ptr %i.b, align 4, !tbaa !26  ; 2 uses
  %i.hw = xor i32 %.1220.i, 3
  %i.hx = shl nsw i32 %i.hv, 1
  %i.hy = and i32 %i.hx, 30
  %i.hz = shl nuw i32 %i.hw, %i.hy
  %i.ia = ashr i32 %i.hv, 4
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.ib ; 2 uses
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !26
  %i.ie = xor i32 %i.hz, %i.id
  store i32 %i.ie, ptr %i.ic, align 4, !tbaa !26
  %i.if = load i32, ptr %i.gj, align 8
  %i.ig = add i32 %i.if, -4194304
  store i32 %i.ig, ptr %i.gj, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %bb.aq
  %i.ih = tail call i32 @Min_SopAddCubeInt(ptr noundef nonnull %0, ptr noundef nonnull %.2232.i)
  %.not.i310.i = icmp eq i32 %i.ih, 0
  br i1 %.not.i310.i, label %.outer.i.backedge, label %bb.ar, !llvm.loop !1

bb.as:                                            ; preds = %Min_CoverContainsCube.exit309.i
  %i.ii = load i32, ptr %i.a, align 4, !tbaa !26  ; 2 uses
  %i.ij = shl nsw i32 %i.ii, 1
  %i.ik = and i32 %i.ij, 30
  %i.il = shl nuw i32 %.1218.i, %i.ik
  %i.im = ashr i32 %i.ii, 4
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.in ; 2 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !26
  %i.iq = xor i32 %i.il, %i.ip
  store i32 %i.iq, ptr %i.io, align 4, !tbaa !26
  %i.ir = load i32, ptr %i.gj, align 8
  %i.is = add i32 %i.ir, 4194304
  store i32 %i.is, ptr %i.gj, align 8
  %i.it = load i32, ptr %i.c, align 8, !tbaa !18
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %bb.as
  %i.iu = tail call i32 @Min_SopAddCubeInt(ptr noundef nonnull %0, ptr noundef nonnull %.2232.i)
  %.not.i312.i = icmp eq i32 %i.iu, 0
  br i1 %.not.i312.i, label %Min_SopAddCube.exit313.i, label %bb.at, !llvm.loop !1

Min_SopAddCube.exit313.i:                         ; preds = %bb.at
  %i.iv = load i32, ptr %i.c, align 8, !tbaa !18  ; 2 uses
  %.not251.i = icmp sgt i32 %i.iv, %i.it
  br i1 %.not251.i, label %bb.au, label %.preheader.i

.preheader.i:                                     ; preds = %Min_SopAddCube.exit313.i, %.preheader.i
  %i.iw = tail call i32 @Min_SopAddCubeInt(ptr noundef nonnull %0, ptr noundef nonnull %.3.i)
  %.not.i314.i = icmp eq i32 %i.iw, 0
  br i1 %.not.i314.i, label %.outer.i.backedge, label %.preheader.i, !llvm.loop !1

bb.au:                                            ; preds = %Min_SopAddCube.exit313.i
  %i.ix = load ptr, ptr %.2232.i, align 8, !tbaa !23
  %i.iy = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.iz = load i32, ptr %i.gj, align 8
  %i.ja = lshr i32 %i.iz, 22
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.jb
  store ptr %i.ix, ptr %i.jc, align 8, !tbaa !21
  %i.jd = add nsw i32 %i.iv, -1
  store i32 %i.jd, ptr %i.c, align 8, !tbaa !18
  %i.je = load i32, ptr %i.a, align 4, !tbaa !26  ; 2 uses
  %i.jf = shl nsw i32 %i.je, 1
  %i.jg = and i32 %i.jf, 30
  %i.jh = shl nuw i32 %.1218.i, %i.jg
  %i.ji = ashr i32 %i.je, 4
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.jj ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !26
  %i.jm = xor i32 %i.jh, %i.jl
  store i32 %i.jm, ptr %i.jk, align 4, !tbaa !26
  %i.jn = load i32, ptr %i.gj, align 8
  %i.jo = add i32 %i.jn, -4194304
  store i32 %i.jo, ptr %i.gj, align 8
  %i.jp = load i32, ptr %i.b, align 4, !tbaa !26  ; 2 uses
  %i.jq = shl nsw i32 %i.jp, 1
  %i.jr = and i32 %i.jq, 30
  %i.js = shl nuw i32 %.1220.i, %i.jr
  %i.jt = getelementptr inbounds nuw i8, ptr %.3.i, i64 12
  %i.ju = ashr i32 %i.jp, 4
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.jt, i64 %i.jv ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !26
  %i.jy = xor i32 %i.js, %i.jx
  store i32 %i.jy, ptr %i.jw, align 4, !tbaa !26
  %i.jz = getelementptr inbounds nuw i8, ptr %.3.i, i64 8 ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 8
  %i.kb = add i32 %i.ka, 4194304
  store i32 %i.kb, ptr %i.jz, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %bb.au
  %i.kc = tail call i32 @Min_SopAddCubeInt(ptr noundef nonnull %0, ptr noundef nonnull %.2232.i)
  %.not.i316.i = icmp eq i32 %i.kc, 0
  br i1 %.not.i316.i, label %Min_SopAddCube.exit317.i, label %bb.av, !llvm.loop !1

Min_SopAddCube.exit317.i:                         ; preds = %bb.av, %Min_SopAddCube.exit317.i
  %i.kd = tail call i32 @Min_SopAddCubeInt(ptr noundef nonnull %0, ptr noundef nonnull %.3.i)
  %.not.i318.i = icmp eq i32 %i.kd, 0
  br i1 %.not.i318.i, label %.outer.i.backedge, label %Min_SopAddCube.exit317.i, !llvm.loop !1

bb.aw:                                            ; preds = %bb.aj
  %i.ke = shl nuw i32 3, %.pre-phi57
  %i.kf = getelementptr inbounds nuw i8, ptr %.3.i, i64 12 ; 5 uses
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %.pre-phi ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !26
  %i.ki = xor i32 %i.kh, %i.ke
  store i32 %i.ki, ptr %i.kg, align 4, !tbaa !26
  %i.kj = getelementptr inbounds nuw i8, ptr %.3.i, i64 8 ; 3 uses
  %i.kk = load i32, ptr %i.kj, align 8
  %i.kl = lshr i32 %i.kk, 22
  %i.km = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.kn = add nuw nsw i32 %i.kl, 1
  %wide.trip.count.i320.i = zext nneg i32 %i.kn to i64
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge.i335.i, %bb.aw
  %indvars.iv.i321.i = phi i64 [ 0, %bb.aw ], [ %indvars.iv.next.i336.i, %._crit_edge.i335.i ] ; 2 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %indvars.iv.i321.i
  %.01120.i322.i = load ptr, ptr %i.ko, align 8, !tbaa !21 ; 2 uses
  %.not1321.i323.i = icmp eq ptr %.01120.i322.i, null
  br i1 %.not1321.i323.i, label %._crit_edge.i335.i, label %.lr.ph.i324.i

.lr.ph.i324.i:                                    ; preds = %bb.ax
  %i.kp = load ptr, ptr %i.g, align 8, !tbaa !20
  br label %bb.ay

bb.ay:                                            ; preds = %Min_CubeIsContained.exit.i332.i, %.lr.ph.i324.i
  %.01122.i325.i = phi ptr [ %.01120.i322.i, %.lr.ph.i324.i ], [ %.011.i333.i, %Min_CubeIsContained.exit.i332.i ] ; 4 uses
  %.not14.i326.i = icmp eq ptr %.01122.i325.i, %i.kp
  br i1 %.not14.i326.i, label %Min_CubeIsContained.exit.i332.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kq = getelementptr inbounds nuw i8, ptr %.01122.i325.i, i64 12
  %i.kr = getelementptr inbounds nuw i8, ptr %.01122.i325.i, i64 8
  %i.ks = load i32, ptr %i.kr, align 8
  %i.kt = lshr i32 %i.ks, 10
  %i.ku = and i32 %i.kt, 4095                     ; 2 uses
  %.not13.i.i327.i = icmp eq i32 %i.ku, 0
  br i1 %.not13.i.i327.i, label %.critedge.i, label %.lr.ph.i.i328.i

.lr.ph.i.i328.i:                                  ; preds = %bb.az
  %wide.trip.count.i.i329.i = zext nneg i32 %i.ku to i64
  br label %bb.bb

bb.ba:                                            ; preds = %bb.bb
  %indvars.iv.next.i.i339.i = add nuw nsw i64 %indvars.iv.i.i330.i, 1 ; 2 uses
  %exitcond.not.i.i340.i = icmp eq i64 %indvars.iv.next.i.i339.i, %wide.trip.count.i.i329.i
  br i1 %exitcond.not.i.i340.i, label %.critedge.i, label %bb.bb, !llvm.loop !0

bb.bb:                                            ; preds = %bb.ba, %.lr.ph.i.i328.i
  %indvars.iv.i.i330.i = phi i64 [ 0, %.lr.ph.i.i328.i ], [ %indvars.iv.next.i.i339.i, %bb.ba ] ; 3 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv.i.i330.i
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !26
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %indvars.iv.i.i330.i
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !26 ; 2 uses
  %i.kz = and i32 %i.ky, %i.kw
  %.not.i.i331.i = icmp eq i32 %i.kz, %i.ky
  br i1 %.not.i.i331.i, label %bb.ba, label %Min_CubeIsContained.exit.i332.i

Min_CubeIsContained.exit.i332.i:                  ; preds = %bb.bb, %bb.ay
  %.011.i333.i = load ptr, ptr %.01122.i325.i, align 8, !tbaa !21 ; 2 uses
  %.not13.i334.i = icmp eq ptr %.011.i333.i, null
  br i1 %.not13.i334.i, label %._crit_edge.i335.i, label %bb.ay, !llvm.loop !37

._crit_edge.i335.i:                               ; preds = %Min_CubeIsContained.exit.i332.i, %bb.ax
  %indvars.iv.next.i336.i = add nuw nsw i64 %indvars.iv.i321.i, 1 ; 2 uses
  %exitcond.not.i337.i = icmp eq i64 %indvars.iv.next.i336.i, %wide.trip.count.i320.i
  br i1 %exitcond.not.i337.i, label %Min_CoverContainsCube.exit341.i, label %bb.ax, !llvm.loop !38

Min_CoverContainsCube.exit341.i:                  ; preds = %._crit_edge.i335.i
  %i.la = load i32, ptr %i.a, align 4, !tbaa !26  ; 2 uses
  %i.lb = shl nsw i32 %i.la, 1
  %i.lc = and i32 %i.lb, 30
  %i.ld = shl nuw i32 3, %i.lc
  %i.le = ashr i32 %i.la, 4
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %i.lf ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !26
  %i.li = xor i32 %i.ld, %i.lh
  store i32 %i.li, ptr %i.lg, align 4, !tbaa !26
  %i.lj = load i32, ptr %i.a, align 4, !tbaa !26  ; 2 uses
  %i.lk = shl nsw i32 %i.lj, 1
  %i.ll = and i32 %i.lk, 30
  %i.lm = shl nuw i32 %.1218.i, %i.ll
  %i.ln = getelementptr inbounds nuw i8, ptr %.2232.i, i64 12
  %i.lo = ashr i32 %i.lj, 4
  %i.lp = sext i32 %i.lo to i64
  %i.lq = getelementptr inbounds [4 x i8], ptr %i.ln, i64 %i.lp ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !26
  %i.ls = xor i32 %i.lm, %i.lr
  store i32 %i.ls, ptr %i.lq, align 4, !tbaa !26
  %i.lt = getelementptr inbounds nuw i8, ptr %.2232.i, i64 8 ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 8
  %i.lv = add i32 %i.lu, 4194304
  store i32 %i.lv, ptr %i.lt, align 8
  %i.lw = load i32, ptr %i.b, align 4, !tbaa !26  ; 2 uses
  %i.lx = xor i32 %.1216.i, 3
  %i.ly = shl nsw i32 %i.lw, 1
  %i.lz = and i32 %i.ly, 30
  %i.ma = shl nuw i32 %i.lx, %i.lz
  %i.mb = ashr i32 %i.lw, 4
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %i.mc ; 2 uses
  %i.me = load i32, ptr %i.md, align 4, !tbaa !26
  %i.mf = xor i32 %i.ma, %i.me
  store i32 %i.mf, ptr %i.md, align 4, !tbaa !26
  %i.mg = load i32, ptr %i.kj, align 8
  %i.mh = add i32 %i.mg, -4194304
  store i32 %i.mh, ptr %i.kj, align 8
  br label %bb.bd

.critedge.i:                                      ; preds = %bb.az, %bb.ba
  %i.mi = load i32, ptr %i.a, align 4, !tbaa !26  ; 2 uses
  %i.mj = shl nsw i32 %i.mi, 1
  %i.mk = and i32 %i.mj, 30
  %i.ml = shl nuw i32 3, %i.mk
  %i.mm = ashr i32 %i.mi, 4
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %i.mn ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !26
  %i.mq = xor i32 %i.ml, %i.mp
  store i32 %i.mq, ptr %i.mo, align 4, !tbaa !26
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !27
  tail call void @Extra_MmFixedEntryRecycle(ptr noundef %.val.i, ptr noundef nonnull %.3.i) #10
  %i.mr = load i32, ptr %i.b, align 4, !tbaa !26  ; 2 uses
  %i.ms = xor i32 %.1220.i, 3
  %i.mt = shl nsw i32 %i.mr, 1
  %i.mu = and i32 %i.mt, 30
  %i.mv = shl nuw i32 %i.ms, %i.mu
  %i.mw = getelementptr inbounds nuw i8, ptr %.2232.i, i64 12
  %i.mx = ashr i32 %i.mr, 4
  %i.my = sext i32 %i.mx to i64
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.my ; 2 uses
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !26
  %i.nb = xor i32 %i.mv, %i.na
  store i32 %i.nb, ptr %i.mz, align 4, !tbaa !26
  %i.nc = getelementptr inbounds nuw i8, ptr %.2232.i, i64 8 ; 2 uses
  %i.nd = load i32, ptr %i.nc, align 8
  %i.ne = add i32 %i.nd, -4194304
  store i32 %i.ne, ptr %i.nc, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.critedge.i
  %i.nf = tail call i32 @Min_SopAddCubeInt(ptr noundef nonnull %0, ptr noundef nonnull %.2232.i)
  %.not.i342.i = icmp eq i32 %i.nf, 0
  br i1 %.not.i342.i, label %.outer.i.backedge, label %bb.bc, !llvm.loop !1

bb.bd:                                            ; preds = %bb.bd, %Min_CoverContainsCube.exit341.i
  %i.ng = tail call i32 @Min_SopAddCubeInt(ptr noundef %0, ptr noundef nonnull %.2232.i)
  %.not.i344.i = icmp eq i32 %i.ng, 0
  br i1 %.not.i344.i, label %Min_SopAddCube.exit345.i, label %bb.bd, !llvm.loop !1

Min_SopAddCube.exit345.i:                         ; preds = %bb.bd, %Min_SopAddCube.exit345.i
  %i.nh = tail call i32 @Min_SopAddCubeInt(ptr noundef %0, ptr noundef nonnull %.3.i)
  %.not.i346.i = icmp eq i32 %i.nh, 0
  br i1 %.not.i346.i, label %.outer.i.backedge, label %Min_SopAddCube.exit345.i, !llvm.loop !1

Min_SopRewrite.exit:                              ; preds = %.preheader375.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.ni = load i32, ptr %i.c, align 8, !tbaa !18  ; 2 uses
  %i.nj = sub nsw i32 %i.k, %i.ni
  %i.nk = sitofp i32 %i.nj to double
  %i.nl = fmul nnan double %i.nk, 1.000000e+02
  %i.nm = sitofp i32 %i.k to double
  %i.nn = fdiv double %i.nl, %i.nm
  %i.no = fcmp ogt double %i.nn, 3.000000e+00
  br i1 %i.no, label %bb.b, label %.loopexit, !llvm.loop !39

.loopexit:                                        ; preds = %Min_SopRewrite.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Min_SopAddCubeInt(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8              ; 6 uses
  %i.e = lshr i32 %i.d, 22                        ; 3 uses
  %i.f = zext nneg i32 %i.e to i64                ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.f ; 3 uses
  %.072154 = load ptr, ptr %i.g, align 8, !tbaa !21 ; 4 uses
  %.not155 = icmp eq ptr %.072154, null           ; 2 uses
  br i1 %.not155, label %.preheader134, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = lshr i32 %i.d, 10
  %i.j = and i32 %i.i, 4095                       ; 2 uses
  %.not11.i = icmp eq i32 %i.j, 0
  %wide.trip.count.i = zext nneg i32 %i.j to i64
  br i1 %.not11.i, label %.loopexit135, label %.lr.ph.i

Min_CubesAreEqual.exit.loopexit:                  ; preds = %bb.c
  %.072 = load ptr, ptr %.072156, align 8, !tbaa !21 ; 2 uses
  %.not = icmp eq ptr %.072, null
  br i1 %.not, label %.preheader134, label %.lr.ph.i, !llvm.loop !40

.preheader134:                                    ; preds = %Min_CubesAreEqual.exit.loopexit, %bb.a
  %.not181 = icmp eq i32 %i.e, 0
  br i1 %.not181, label %.preheader, label %.lr.ph162

.lr.ph162:                                        ; preds = %.preheader134
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %bb.d

.lr.ph.i:                                         ; preds = %.lr.ph, %Min_CubesAreEqual.exit.loopexit
  %.072156 = phi ptr [ %.072, %Min_CubesAreEqual.exit.loopexit ], [ %.072154, %.lr.ph ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.072156, i64 12
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit135, label %bb.c, !llvm.loop !2

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.o = load i32, ptr %i.n, align 4, !tbaa !26
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !26
  %.not.i = icmp eq i32 %i.o, %i.q
  br i1 %.not.i, label %bb.b, label %Min_CubesAreEqual.exit.loopexit

.loopexit135:                                     ; preds = %bb.b, %.lr.ph
  %i.r = getelementptr i8, ptr %0, i64 8
  %.val92 = load ptr, ptr %i.r, align 8, !tbaa !27
  tail call void @Extra_MmFixedEntryRecycle(ptr noundef %.val92, ptr noundef %1) #10
  br label %bb.q

.preheader:                                       ; preds = %._crit_edge, %.preheader134
  br i1 %.not155, label %._crit_edge168, label %.lr.ph167

.lr.ph167:                                        ; preds = %.preheader
  %i.s = lshr i32 %i.d, 10
  %i.t = and i32 %i.s, 4095                       ; 2 uses
  %.not4.i = icmp eq i32 %i.t, 0
  %i.u = getelementptr i8, ptr %1, i64 12         ; 9 uses
  %wide.trip.count.i100 = zext nneg i32 %i.t to i64 ; 3 uses
  br i1 %.not4.i, label %._crit_edge.thread.i, label %.lr.ph.i99

bb.d:                                             ; preds = %.lr.ph162, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph162 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %.173157 = load ptr, ptr %i.v, align 8, !tbaa !21 ; 2 uses
  %.not86158 = icmp eq ptr %.173157, null
  br i1 %.not86158, label %._crit_edge, label %.lr.ph160

.lr.ph160:                                        ; preds = %bb.d
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph160, %Min_CubeIsContained.exit
  %.173159 = phi ptr [ %.173157, %.lr.ph160 ], [ %.173, %Min_CubeIsContained.exit ] ; 4 uses
  %.not87 = icmp eq ptr %.173159, %i.w
  br i1 %.not87, label %Min_CubeIsContained.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.173159, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %.173159, i64 8
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = lshr i32 %i.z, 10
  %i.ab = and i32 %i.aa, 4095                     ; 2 uses
  %.not13.i = icmp eq i32 %i.ab, 0
  br i1 %.not13.i, label %.loopexit132, label %.lr.ph.i93

.lr.ph.i93:                                       ; preds = %bb.f
  %wide.trip.count.i94 = zext nneg i32 %i.ab to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next.i97 = add nuw nsw i64 %indvars.iv.i95, 1 ; 2 uses
  %exitcond.not.i98 = icmp eq i64 %indvars.iv.next.i97, %wide.trip.count.i94
  br i1 %exitcond.not.i98, label %.loopexit132, label %bb.h, !llvm.loop !0

bb.h:                                             ; preds = %bb.g, %.lr.ph.i93
  %indvars.iv.i95 = phi i64 [ 0, %.lr.ph.i93 ], [ %indvars.iv.next.i97, %bb.g ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i95
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !26
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i95
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !26 ; 2 uses
  %i.ag = and i32 %i.af, %i.ad
  %.not.i96 = icmp eq i32 %i.ag, %i.af
  br i1 %.not.i96, label %bb.g, label %Min_CubeIsContained.exit

end_hunk_0

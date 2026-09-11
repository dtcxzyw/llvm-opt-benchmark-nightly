Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/huf_decompress?download=true
inline.NumInlined: 722
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 38
begin_hunk_0_@HUF_decompress1X2_usingDTable_internal:bb.a
  %i.dh = add i32 %i.ct, %i.dg                    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 3
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !30
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dk ; 2 uses
  %i.dm = and i32 %i.dh, 63
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = shl i64 %.sroa.0.5.i, %i.dn
  %i.dp = lshr i64 %i.do, %i.bu
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.dp ; 3 uses
  %i.dr = load i16, ptr %i.dq, align 2
  store i16 %i.dr, ptr %i.dl, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  %i.dt = load i8, ptr %i.ds, align 2, !tbaa !29
  %i.du = zext i8 %i.dt to i32
  %i.dv = add i32 %i.dh, %i.du                    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 3
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !30
  %i.dy = zext i8 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dy ; 2 uses
  %i.ea = and i32 %i.dv, 63
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = shl i64 %.sroa.0.5.i, %i.eb
  %i.ed = lshr i64 %i.ec, %i.bu
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.ed ; 3 uses
  %i.ef = load i16, ptr %i.ee, align 2
  store i16 %i.ef, ptr %i.dz, align 1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  %i.eh = load i8, ptr %i.eg, align 2, !tbaa !29
  %i.ei = zext i8 %i.eh to i32
  %i.ej = add i32 %i.dv, %i.ei                    ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 3
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !30
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.em ; 2 uses
  %i.eo = and i32 %i.ej, 63
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = shl i64 %.sroa.0.5.i, %i.ep
  %i.er = lshr i64 %i.eq, %i.bu
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.er ; 3 uses
  %i.et = load i16, ptr %i.es, align 2
  store i16 %i.et, ptr %i.en, align 1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  %i.ev = load i8, ptr %i.eu, align 2, !tbaa !29
  %i.ew = zext i8 %i.ev to i32
  %i.ex = add i32 %i.ej, %i.ew                    ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 3
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !30
  %i.fa = zext i8 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.fa ; 2 uses
  %i.fc = icmp ugt i32 %i.ex, 64
  br i1 %i.fc, label %BIT_reloadDStream.exit29.i, label %bb.p, !prof !31, !llvm.loop !0

bb.u:                                             ; preds = %bb.y, %.lr.ph.i
  %.1.i5222.i = phi ptr [ %0, %.lr.ph.i ], [ %i.hs, %bb.y ] ; 5 uses
  %.sroa.9790.3.idx221.i = phi i64 [ %.sroa.9790.9177.idx296.i, %.lr.ph.i ], [ %.sroa.9790.6.idx.i, %bb.y ] ; 5 uses
  %.sroa.31.4220.i = phi i32 [ %.sroa.31.12176298.i, %.lr.ph.i ], [ %i.ho, %bb.y ] ; 5 uses
  %.sroa.0.3219.i = phi i64 [ %.sroa.0.10175299.i, %.lr.ph.i ], [ %.sroa.0.6.i, %bb.y ]
  %.not.i9.i = icmp slt i64 %.sroa.9790.3.idx221.i, 8
  br i1 %.not.i9.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fd = lshr i32 %.sroa.31.4220.i, 3
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = and i32 %.sroa.31.4220.i, 7
  br label %BIT_reloadDStream.exit15.i

bb.w:                                             ; preds = %bb.u
  %i.fg = icmp eq i64 %.sroa.9790.3.idx221.i, 0
  br i1 %i.fg, label %BIT_reloadDStream.exit29.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fh = lshr i32 %.sroa.31.4220.i, 3
  %i.fi = zext nneg i32 %i.fh to i64              ; 2 uses
  %i.fj = icmp sge i64 %.sroa.9790.3.idx221.i, %i.fi
  %.021.i11195.i = tail call i64 @llvm.smin.i64(i64 %.sroa.9790.3.idx221.i, i64 %i.fi) ; 2 uses
  %.021.i11.i = trunc i64 %.021.i11195.i to i32
  %i.fk = and i64 %.021.i11195.i, 4294967295
  %i.fl = shl i32 %.021.i11.i, 3
  %i.fm = sub i32 %.sroa.31.4220.i, %i.fl
  br label %BIT_reloadDStream.exit15.i

BIT_reloadDStream.exit15.i:                       ; preds = %bb.x, %bb.v
  %.sroa.31.8.i = phi i32 [ %i.ff, %bb.v ], [ %i.fm, %bb.x ] ; 3 uses
  %.pn.i = phi i64 [ %i.fe, %bb.v ], [ %i.fk, %bb.x ]
  %.022.i10.i = phi i1 [ true, %bb.v ], [ %i.fj, %bb.x ]
  %.sroa.9790.6.idx.i = sub nsw i64 %.sroa.9790.3.idx221.i, %.pn.i ; 3 uses
  %.sroa.9790.6.i = getelementptr inbounds i8, ptr %2, i64 %.sroa.9790.6.idx.i
  %.sroa.0.6.i = load i64, ptr %.sroa.9790.6.i, align 1, !tbaa !26 ; 7 uses
  %i.fn = icmp ult ptr %.1.i5222.i, %i.bw
  %i.fo = and i1 %i.fn, %.022.i10.i
  br i1 %i.fo, label %bb.y, label %BIT_reloadDStream.exit29.i.loopexit73.split.loop.exit

bb.y:                                             ; preds = %BIT_reloadDStream.exit15.i
  %i.fp = and i32 %.sroa.31.8.i, 63
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = shl i64 %.sroa.0.6.i, %i.fq
  %i.fs = lshr i64 %i.fr, %i.bu
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.fs ; 3 uses
  %i.fu = load i16, ptr %i.ft, align 2
  store i16 %i.fu, ptr %.1.i5222.i, align 1
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 2
  %i.fw = load i8, ptr %i.fv, align 2, !tbaa !29
  %i.fx = zext i8 %i.fw to i32
  %i.fy = add i32 %.sroa.31.8.i, %i.fx            ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 3
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !30
  %i.gb = zext i8 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %.1.i5222.i, i64 %i.gb ; 2 uses
  %i.gd = and i32 %i.fy, 63
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = shl i64 %.sroa.0.6.i, %i.ge
  %i.gg = lshr i64 %i.gf, %i.bu
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.gg ; 3 uses
  %i.gi = load i16, ptr %i.gh, align 2
  store i16 %i.gi, ptr %i.gc, align 1
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  %i.gk = load i8, ptr %i.gj, align 2, !tbaa !29
  %i.gl = zext i8 %i.gk to i32
  %i.gm = add i32 %i.fy, %i.gl                    ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gh, i64 3
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !30
  %i.gp = zext i8 %i.go to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gp ; 2 uses
  %i.gr = and i32 %i.gm, 63
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = shl i64 %.sroa.0.6.i, %i.gs
  %i.gu = lshr i64 %i.gt, %i.bu
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.gu ; 3 uses
  %i.gw = load i16, ptr %i.gv, align 2
  store i16 %i.gw, ptr %i.gq, align 1
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 2
  %i.gy = load i8, ptr %i.gx, align 2, !tbaa !29
  %i.gz = zext i8 %i.gy to i32
  %i.ha = add i32 %i.gm, %i.gz                    ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gv, i64 3
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !30
  %i.hd = zext i8 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.hd ; 2 uses
  %i.hf = and i32 %i.ha, 63
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = shl i64 %.sroa.0.6.i, %i.hg
  %i.hi = lshr i64 %i.hh, %i.bu
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.hi ; 3 uses
  %i.hk = load i16, ptr %i.hj, align 2
  store i16 %i.hk, ptr %i.he, align 1
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 2
  %i.hm = load i8, ptr %i.hl, align 2, !tbaa !29
  %i.hn = zext i8 %i.hm to i32
  %i.ho = add i32 %i.ha, %i.hn                    ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 3
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !30
  %i.hr = zext i8 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hr ; 2 uses
  %i.ht = icmp ugt i32 %i.ho, 64
  br i1 %i.ht, label %BIT_reloadDStream.exit29.i, label %bb.u, !prof !31, !llvm.loop !1

bb.z:                                             ; preds = %bb.n
  %.not.i23.i = icmp slt i64 %3, 16
  br i1 %.not.i23.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hu = lshr i32 %i.ay, 3
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = sub nsw i64 0, %i.hv
  %i.hx = getelementptr inbounds i8, ptr %.ptr190.i, i64 %i.hw ; 2 uses
  %i.hy = and i32 %i.ay, 7
  %.val.i61.i = load i64, ptr %i.hx, align 1, !tbaa !26
  br label %BIT_reloadDStream.exit29.i

bb.ab:                                            ; preds = %bb.z
  %i.hz = icmp eq i64 %.add.i, 0
  br i1 %i.hz, label %BIT_reloadDStream.exit29.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ia = lshr i32 %i.ay, 3
  %i.ib = zext nneg i32 %i.ia to i64
  %.021.i25191.i = tail call i64 @llvm.smin.i64(i64 %.add.i, i64 %i.ib) ; 2 uses
  %.021.i25.i = trunc i64 %.021.i25191.i to i32
  %i.ic = and i64 %.021.i25191.i, 4294967295
  %i.id = sub nsw i64 0, %i.ic
  %i.ie = getelementptr inbounds i8, ptr %.ptr190.i, i64 %i.id ; 2 uses
  %i.if = shl i32 %.021.i25.i, 3
  %i.ig = sub i32 %i.ay, %i.if
  %.val30.i = load i64, ptr %i.ie, align 1, !tbaa !26
  br label %BIT_reloadDStream.exit29.i

BIT_reloadDStream.exit29.i.loopexit.split.loop.exit: ; preds = %BIT_reloadDStream.exit.i
  %.sroa.9790.5.i.le = getelementptr inbounds i8, ptr %2, i64 %.sroa.9790.5.idx.i
  br label %BIT_reloadDStream.exit29.i

BIT_reloadDStream.exit29.i.loopexit73.split.loop.exit: ; preds = %BIT_reloadDStream.exit15.i
  %.sroa.9790.6.i.le = getelementptr inbounds i8, ptr %2, i64 %.sroa.9790.6.idx.i
  br label %BIT_reloadDStream.exit29.i

BIT_reloadDStream.exit29.i:                       ; preds = %bb.y, %bb.w, %bb.t, %bb.r, %BIT_reloadDStream.exit29.i.loopexit73.split.loop.exit, %BIT_reloadDStream.exit29.i.loopexit.split.loop.exit, %bb.ac, %bb.ab, %bb.aa, %.thread.i
  %i.ih = phi i64 [ %i.bc, %bb.ab ], [ %i.bc, %bb.aa ], [ %i.bn, %BIT_reloadDStream.exit29.i.loopexit.split.loop.exit ], [ %i.bc, %bb.ac ], [ %i.bl, %.thread.i ], [ %i.bn, %bb.t ], [ %i.bn, %BIT_reloadDStream.exit29.i.loopexit73.split.loop.exit ], [ %i.bn, %bb.r ], [ %i.bn, %bb.w ], [ %i.bn, %bb.y ]
  %.sroa.3.0.extract.shift.i304.i = phi i32 [ %.sroa.3.0.extract.shift.i.i, %bb.ab ], [ %.sroa.3.0.extract.shift.i.i, %bb.aa ], [ %.sroa.3.0.extract.shift.i303.i.a, %BIT_reloadDStream.exit29.i.loopexit.split.loop.exit ], [ %.sroa.3.0.extract.shift.i.i, %bb.ac ], [ %.sroa.3.0.extract.shift.i294.i, %.thread.i ], [ %.sroa.3.0.extract.shift.i303.i.a, %bb.t ], [ %.sroa.3.0.extract.shift.i303.i.a, %BIT_reloadDStream.exit29.i.loopexit73.split.loop.exit ], [ %.sroa.3.0.extract.shift.i303.i.a, %bb.r ], [ %.sroa.3.0.extract.shift.i303.i.a, %bb.w ], [ %.sroa.3.0.extract.shift.i303.i.a, %bb.y ] ; 2 uses
  %i.ii = phi ptr [ %i.bb, %bb.ab ], [ %i.bb, %bb.aa ], [ %i.bo, %BIT_reloadDStream.exit29.i.loopexit.split.loop.exit ], [ %i.bb, %bb.ac ], [ %i.bk, %.thread.i ], [ %i.bo, %bb.t ], [ %i.bo, %BIT_reloadDStream.exit29.i.loopexit73.split.loop.exit ], [ %i.bo, %bb.r ], [ %i.bo, %bb.w ], [ %i.bo, %bb.y ] ; 3 uses
  %i.ij = phi ptr [ %i.ba, %bb.ab ], [ %i.ba, %bb.aa ], [ %i.bp, %BIT_reloadDStream.exit29.i.loopexit.split.loop.exit ], [ %i.ba, %bb.ac ], [ %i.bj, %.thread.i ], [ %i.bp, %bb.t ], [ %i.bp, %BIT_reloadDStream.exit29.i.loopexit73.split.loop.exit ], [ %i.bp, %bb.r ], [ %i.bp, %bb.w ], [ %i.bp, %bb.y ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %.val.i.i, %bb.ab ], [ %.val.i61.i, %bb.aa ], [ %.sroa.0.5.i, %BIT_reloadDStream.exit29.i.loopexit.split.loop.exit ], [ %.val30.i, %bb.ac ], [ %.sroa.0.9.i, %.thread.i ], [ %.sroa.0.5.i, %bb.t ], [ %.sroa.0.6.i, %BIT_reloadDStream.exit29.i.loopexit73.split.loop.exit ], [ %.sroa.0.4236.i, %bb.r ], [ %.sroa.0.6.i, %bb.y ], [ %.sroa.0.3219.i, %bb.w ] ; 2 uses
  %.sroa.31.0.i = phi i32 [ %i.ay, %bb.ab ], [ %i.hy, %bb.aa ], [ %.sroa.31.7.i, %BIT_reloadDStream.exit29.i.loopexit.split.loop.exit ], [ %i.ig, %bb.ac ], [ %i.bi, %.thread.i ], [ %i.ex, %bb.t ], [ %.sroa.31.8.i, %BIT_reloadDStream.exit29.i.loopexit73.split.loop.exit ], [ %.sroa.31.5237.i, %bb.r ], [ %i.ho, %bb.y ], [ %.sroa.31.4220.i, %bb.w ] ; 4 uses
  %.sroa.9790.0.i = phi ptr [ %.ptr190.i, %bb.ab ], [ %i.hx, %bb.aa ], [ %.sroa.9790.5.i.le, %BIT_reloadDStream.exit29.i.loopexit.split.loop.exit ], [ %i.ie, %bb.ac ], [ %2, %.thread.i ], [ @BIT_reloadDStream.zeroFilled, %bb.t ], [ %.sroa.9790.6.i.le, %BIT_reloadDStream.exit29.i.loopexit73.split.loop.exit ], [ %2, %bb.r ], [ @BIT_reloadDStream.zeroFilled, %bb.y ], [ %2, %bb.w ] ; 2 uses
  %.4.i.i = phi ptr [ %0, %bb.ab ], [ %0, %bb.aa ], [ %.0.i239.i, %BIT_reloadDStream.exit29.i.loopexit.split.loop.exit ], [ %0, %bb.ac ], [ %0, %.thread.i ], [ %i.fb, %bb.t ], [ %.1.i5222.i, %BIT_reloadDStream.exit29.i.loopexit73.split.loop.exit ], [ %.0.i239.i, %bb.r ], [ %i.hs, %bb.y ], [ %.1.i5222.i, %bb.w ] ; 4 uses
  %i.ik = ptrtoint ptr %.4.i.i to i64
  %i.il = sub i64 %i.ih, %i.ik
  %i.im = icmp ugt i64 %i.il, 1
  br i1 %i.im, label %.preheader202.i, label %.loopexit.i

.preheader202.i:                                  ; preds = %BIT_reloadDStream.exit29.i
  %i.in = getelementptr inbounds i8, ptr %i.ij, i64 -2 ; 3 uses
  %i.io = ptrtoint ptr %2 to i64
  %i.ip = sub nsw i32 0, %.sroa.3.0.extract.shift.i304.i
  %i.iq = and i32 %i.ip, 63
  %i.ir = zext nneg i32 %i.iq to i64              ; 2 uses
  %i.is = icmp ugt i32 %.sroa.31.0.i, 64
  br i1 %i.is, label %.preheader.i, label %.lr.ph, !prof !32

.lr.ph:                                           ; preds = %.preheader202.i, %bb.af
  %.5.i.i40 = phi ptr [ %i.jn, %bb.af ], [ %.4.i.i, %.preheader202.i ] ; 4 uses
  %.sroa.9790.2.i39 = phi ptr [ %.sroa.9790.7.i, %bb.af ], [ %.sroa.9790.0.i, %.preheader202.i ] ; 4 uses
  %.sroa.31.2.i38 = phi i32 [ %i.jj, %bb.af ], [ %.sroa.31.0.i, %.preheader202.i ] ; 3 uses
  %.not.i16.i = icmp ult ptr %.sroa.9790.2.i39, %i.d
  %6 = lshr i32 %.sroa.31.2.i38, 3                ; 2 uses
  %7 = zext nneg i32 %6 to i64
  %8 = sub nsw i64 0, %7
  %9 = getelementptr inbounds i8, ptr %.sroa.9790.2.i39, i64 %8 ; 2 uses
  br i1 %.not.i16.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph
  %i.it = and i32 %.sroa.31.2.i38, 7
  br label %BIT_reloadDStream.exit22.i

bb.ae:                                            ; preds = %.lr.ph
  %10 = icmp uge ptr %9, %2                       ; 2 uses
  %11 = ptrtoint ptr %.sroa.9790.2.i39 to i64
  %i.iu = sub i64 %11, %i.io
  %12 = trunc i64 %i.iu to i32
  %.021.i18.i = select i1 %10, i32 %6, i32 %12    ; 2 uses
  %13 = zext i32 %.021.i18.i to i64
  %i.iv = sub nsw i64 0, %13
  %14 = getelementptr inbounds i8, ptr %.sroa.9790.2.i39, i64 %i.iv
  %i.iw = shl i32 %.021.i18.i, 3
  %i.ix = sub i32 %.sroa.31.2.i38, %i.iw
  br label %BIT_reloadDStream.exit22.i

BIT_reloadDStream.exit22.i:                       ; preds = %bb.ae, %bb.ad
  %.sroa.31.9.i = phi i32 [ %i.it, %bb.ad ], [ %i.ix, %bb.ae ] ; 3 uses
  %.sroa.9790.7.i = phi ptr [ %9, %bb.ad ], [ %14, %bb.ae ] ; 3 uses
  %.022.i17.i = phi i1 [ true, %bb.ad ], [ %10, %bb.ae ]
  %.sroa.0.7.i = load i64, ptr %.sroa.9790.7.i, align 1, !tbaa !26 ; 3 uses
  %i.iy = icmp ule ptr %.5.i.i40, %i.in
  %i.iz = and i1 %i.iy, %.022.i17.i
  br i1 %i.iz, label %bb.af, label %.preheader.i

.preheader.i:                                     ; preds = %bb.af, %BIT_reloadDStream.exit22.i, %.preheader202.i
  %.5.i.i.lcssa = phi ptr [ %.4.i.i, %.preheader202.i ], [ %.5.i.i40, %BIT_reloadDStream.exit22.i ], [ %i.jn, %bb.af ] ; 3 uses
  %.sroa.9790.7329.i = phi ptr [ @BIT_reloadDStream.zeroFilled, %.preheader202.i ], [ %.sroa.9790.7.i, %BIT_reloadDStream.exit22.i ], [ @BIT_reloadDStream.zeroFilled, %bb.af ] ; 2 uses
  %.sroa.31.9328.i = phi i32 [ %.sroa.31.0.i, %.preheader202.i ], [ %.sroa.31.9.i, %BIT_reloadDStream.exit22.i ], [ %i.jj, %bb.af ] ; 2 uses
  %.sroa.0.7327.i = phi i64 [ %.sroa.0.0.i, %.preheader202.i ], [ %.sroa.0.7.i, %BIT_reloadDStream.exit22.i ], [ %.sroa.0.7.i, %bb.af ] ; 3 uses
  %.not.i4245.i = icmp ugt ptr %.5.i.i.lcssa, %i.in
  br i1 %.not.i4245.i, label %.loopexit.i, label %.lr.ph248.i

bb.af:                                            ; preds = %BIT_reloadDStream.exit22.i
  %i.ja = and i32 %.sroa.31.9.i, 63
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = shl i64 %.sroa.0.7.i, %i.jb
  %i.jd = lshr i64 %i.jc, %i.ir
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.jd ; 3 uses
  %i.jf = load i16, ptr %i.je, align 2
  store i16 %i.jf, ptr %.5.i.i40, align 1
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 2
  %i.jh = load i8, ptr %i.jg, align 2, !tbaa !29
  %i.ji = zext i8 %i.jh to i32
  %i.jj = add i32 %.sroa.31.9.i, %i.ji            ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.je, i64 3
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !30
  %i.jm = zext i8 %i.jl to i64
  %i.jn = getelementptr inbounds nuw i8, ptr %.5.i.i40, i64 %i.jm ; 2 uses
  %i.jo = icmp ugt i32 %i.jj, 64
  br i1 %i.jo, label %.preheader.i, label %.lr.ph, !prof !31, !llvm.loop !2

.lr.ph248.i:                                      ; preds = %.preheader.i, %.lr.ph248.i
  %.6.i247.i = phi ptr [ %i.kc, %.lr.ph248.i ], [ %.5.i.i.lcssa, %.preheader.i ] ; 2 uses
  %.sroa.31.3246.i = phi i32 [ %i.jy, %.lr.ph248.i ], [ %.sroa.31.9328.i, %.preheader.i ] ; 2 uses
  %i.jp = and i32 %.sroa.31.3246.i, 63
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = shl i64 %.sroa.0.7327.i, %i.jq
  %i.js = lshr i64 %i.jr, %i.ir
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.js ; 3 uses
  %i.ju = load i16, ptr %i.jt, align 2
  store i16 %i.ju, ptr %.6.i247.i, align 1
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 2
  %i.jw = load i8, ptr %i.jv, align 2, !tbaa !29
  %i.jx = zext i8 %i.jw to i32
  %i.jy = add i32 %.sroa.31.3246.i, %i.jx         ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jt, i64 3
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !30
  %i.kb = zext i8 %i.ka to i64
  %i.kc = getelementptr inbounds nuw i8, ptr %.6.i247.i, i64 %i.kb ; 3 uses
  %.not.i4.i = icmp ugt ptr %i.kc, %i.in
  br i1 %.not.i4.i, label %.loopexit.i, label %.lr.ph248.i, !llvm.loop !3

.loopexit.i:                                      ; preds = %.lr.ph248.i, %.preheader.i, %BIT_reloadDStream.exit29.i
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %BIT_reloadDStream.exit29.i ], [ %.sroa.0.7327.i, %.preheader.i ], [ %.sroa.0.7327.i, %.lr.ph248.i ]
  %.sroa.31.1.i = phi i32 [ %.sroa.31.0.i, %BIT_reloadDStream.exit29.i ], [ %.sroa.31.9328.i, %.preheader.i ], [ %i.jy, %.lr.ph248.i ] ; 6 uses
  %.sroa.9790.1.i = phi ptr [ %.sroa.9790.0.i, %BIT_reloadDStream.exit29.i ], [ %.sroa.9790.7329.i, %.preheader.i ], [ %.sroa.9790.7329.i, %.lr.ph248.i ]
  %.7.i.i = phi ptr [ %.4.i.i, %BIT_reloadDStream.exit29.i ], [ %.5.i.i.lcssa, %.preheader.i ], [ %i.kc, %.lr.ph248.i ] ; 2 uses
  %i.kd = icmp ult ptr %.7.i.i, %i.ij
  br i1 %i.kd, label %bb.ag, label %HUF_decodeStreamX2.exit.i

bb.ag:                                            ; preds = %.loopexit.i
  %i.ke = and i32 %.sroa.31.1.i, 63
  %i.kf = zext nneg i32 %i.ke to i64
  %i.kg = shl i64 %.sroa.0.1.i, %i.kf
  %i.kh = sub nsw i32 0, %.sroa.3.0.extract.shift.i304.i
  %i.ki = and i32 %i.kh, 63
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = lshr i64 %i.kg, %i.kj
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.kk ; 4 uses
  %i.km = load i8, ptr %i.kl, align 2
  store i8 %i.km, ptr %.7.i.i, align 1
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 3
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !30
  %i.kp = icmp eq i8 %i.ko, 1
  br i1 %i.kp, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kl, i64 2
  %i.kr = load i8, ptr %i.kq, align 2, !tbaa !29
  %i.ks = zext i8 %i.kr to i32
  %i.kt = add i32 %.sroa.31.1.i, %i.ks
  br label %HUF_decodeStreamX2.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.ku = icmp ult i32 %.sroa.31.1.i, 64
  br i1 %i.ku, label %bb.aj, label %HUF_decodeStreamX2.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kl, i64 2
  %i.kw = load i8, ptr %i.kv, align 2, !tbaa !29
  %i.kx = zext i8 %i.kw to i32
  %i.ky = add nuw nsw i32 %.sroa.31.1.i, %i.kx
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.ky, i32 64)
  br label %HUF_decodeStreamX2.exit.i

HUF_decodeStreamX2.exit.i:                        ; preds = %bb.aj, %bb.ai, %bb.ah, %.loopexit.i
  %.sroa.31.6.i = phi i32 [ %.sroa.31.1.i, %.loopexit.i ], [ %i.kt, %bb.ah ], [ %.sroa.31.1.i, %bb.ai ], [ %spec.select.i, %bb.aj ]
  %i.kz = icmp eq ptr %.sroa.9790.1.i, %2
  %.sroa.31.6.fr.i = freeze i32 %.sroa.31.6.i
  %.not.i = icmp eq i32 %.sroa.31.6.fr.i, 64
  %or.cond.i = and i1 %i.kz, %.not.i
  %spec.select201.i = select i1 %or.cond.i, i64 %1, i64 -20
  br label %HUF_decompress1X2_usingDTable_internal_default.exit

HUF_decompress1X2_usingDTable_internal_default.exit: ; preds = %HUF_decodeStreamX2.exit.i, %BIT_initDStream.exit.i, %bb.m, %bb.e, %bb.c, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ %3, %BIT_initDStream.exit.i ], [ %spec.select201.i, %HUF_decodeStreamX2.exit.i ], [ -1, %bb.e ], [ -20, %bb.m ], [ -72, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @HUF_selectDecoder(i64 noundef %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp ult i64 %1, %0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = shl i64 %1, 4
  %i.b = udiv i64 %i.a, %0
  %i.c = and i64 %i.b, 4294967295
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %i.c, %bb.b ], [ 15, %bb.a ]
  %i.e = lshr i64 %0, 8
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr @algoTime, i64 %i.d ; 4 uses
  %i.h = load i32, ptr %i.g, align 16, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !35
  %i.k = mul i32 %i.j, %i.f
  %i.l = add i32 %i.k, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !35
  %i.q = mul i32 %i.p, %i.f
  %i.r = add i32 %i.q, %i.n                       ; 2 uses
  %i.s = lshr i32 %i.r, 5
  %i.t = add i32 %i.s, %i.r
  %i.u = icmp ult i32 %i.t, %i.l
  %i.v = zext i1 %i.u to i32
  ret i32 %i.v
}

; Function Attrs: nounwind uwtable
define i64 @HUF_decompress1X_DCtx_wksp(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %HUF_decompress1X2_DCtx_wksp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %4, %2
  br i1 %i.b, label %HUF_decompress1X2_DCtx_wksp.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i64 %4, %2
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %3, i64 %2, i1 false)
  br label %HUF_decompress1X2_DCtx_wksp.exit

bb.e:                                             ; preds = %bb.c
  %i.d = icmp eq i64 %4, 1
  br i1 %i.d, label %bb.f, label %HUF_selectDecoder.exit

bb.f:                                             ; preds = %bb.e
  %i.e = load i8, ptr %3, align 1, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.e, i64 %2, i1 false)
  br label %HUF_decompress1X2_DCtx_wksp.exit

HUF_selectDecoder.exit:                           ; preds = %bb.e
  %i.f = shl i64 %4, 4
  %i.g = udiv i64 %i.f, %2
  %i.h = and i64 %i.g, 4294967295
  %i.i = lshr i64 %2, 8
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr @algoTime, i64 %i.h ; 4 uses
  %i.l = load i32, ptr %i.k, align 16, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !35
  %i.o = mul i32 %i.n, %i.j
  %i.p = add i32 %i.o, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !35
  %i.u = mul i32 %i.t, %i.j
  %i.v = add i32 %i.u, %i.r                       ; 2 uses
  %i.w = lshr i32 %i.v, 5
  %i.x = add i32 %i.w, %i.v
  %.not = icmp ult i32 %i.x, %i.p
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %HUF_selectDecoder.exit
  %i.y = tail call i64 @HUF_readDTableX2_wksp(ptr noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) ; 5 uses
  %i.z = icmp ult i64 %i.y, -119
  br i1 %i.z, label %bb.h, label %HUF_decompress1X2_DCtx_wksp.exit

bb.h:                                             ; preds = %bb.g
  %.not23.i = icmp ult i64 %i.y, %4
  br i1 %.not23.i, label %bb.i, label %HUF_decompress1X2_DCtx_wksp.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %i.y
  %i.ab = sub nuw i64 %4, %i.y
  %i.ac = tail call fastcc i64 @HUF_decompress1X2_usingDTable_internal(ptr noundef %1, i64 noundef %2, ptr noundef %i.aa, i64 noundef %i.ab, ptr noundef %0, i32 noundef %7)
  br label %HUF_decompress1X2_DCtx_wksp.exit

bb.j:                                             ; preds = %HUF_selectDecoder.exit
  %i.ad = tail call i64 @HUF_readDTableX1_wksp(ptr noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) ; 5 uses
  %i.ae = icmp ult i64 %i.ad, -119
  br i1 %i.ae, label %bb.k, label %HUF_decompress1X2_DCtx_wksp.exit

bb.k:                                             ; preds = %bb.j
  %.not23.i36 = icmp ult i64 %i.ad, %4
  br i1 %.not23.i36, label %bb.l, label %HUF_decompress1X2_DCtx_wksp.exit

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 %i.ad
  %i.ag = sub nuw i64 %4, %i.ad
  %i.ah = tail call fastcc i64 @HUF_decompress1X1_usingDTable_internal(ptr noundef %1, i64 noundef %2, ptr noundef %i.af, i64 noundef %i.ag, ptr noundef %0, i32 noundef %7)
  br label %HUF_decompress1X2_DCtx_wksp.exit

HUF_decompress1X2_DCtx_wksp.exit:                 ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.b, %bb.a, %bb.f, %bb.d
  %.0 = phi i64 [ -20, %bb.b ], [ -70, %bb.a ], [ %2, %bb.d ], [ %2, %bb.f ], [ -72, %bb.h ], [ %i.ac, %bb.i ], [ %i.y, %bb.g ], [ %i.ah, %bb.l ], [ %i.ad, %bb.j ], [ -72, %bb.k ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @HUF_decompress1X1_DCtx_wksp(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @HUF_readDTableX1_wksp(ptr noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) ; 5 uses
  %i.b = icmp ult i64 %i.a, -119
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not23 = icmp ult i64 %i.a, %4
  br i1 %.not23, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %i.a
  %i.d = sub nuw i64 %4, %i.a
  %i.e = tail call fastcc i64 @HUF_decompress1X1_usingDTable_internal(ptr noundef %1, i64 noundef %2, ptr noundef %i.c, i64 noundef %i.d, ptr noundef %0, i32 noundef %7)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ %i.e, %bb.c ], [ %i.a, %bb.a ], [ -72, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUF_decompress1X_usingDTable(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %.val = load i32, ptr %4, align 4
  %i.a = and i32 %.val, 65280
end_hunk_0
begin_hunk_1_@HUF_decompress1X2_usingDTable_internal_bmi2:bb.a
  %i.dn = add i32 %i.cz, %i.dm                    ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 3
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !30
  %i.dq = zext i8 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dq ; 2 uses
  %i.ds = and i32 %i.dn, 63
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = shl i64 %.sroa.0.5, %i.dt
  %i.dv = lshr i64 %i.du, %i.bs
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.dv ; 3 uses
  %i.dx = load i16, ptr %i.dw, align 2
  store i16 %i.dx, ptr %i.dr, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 2
  %i.dz = load i8, ptr %i.dy, align 2, !tbaa !29
  %i.ea = zext i8 %i.dz to i32
  %i.eb = add i32 %i.dn, %i.ea                    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 3
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !30
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ee ; 2 uses
  %i.eg = and i32 %i.eb, 63
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = shl i64 %.sroa.0.5, %i.eh
  %i.ej = lshr i64 %i.ei, %i.bs
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ej ; 3 uses
  %i.el = load i16, ptr %i.ek, align 2
  store i16 %i.el, ptr %i.ef, align 1
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  %i.en = load i8, ptr %i.em, align 2, !tbaa !29
  %i.eo = zext i8 %i.en to i32
  %i.ep = add i32 %i.eb, %i.eo                    ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 3
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !30
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.es ; 2 uses
  %i.eu = and i32 %i.ep, 63
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = shl i64 %.sroa.0.5, %i.ev
  %i.ex = lshr i64 %i.ew, %i.bs
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ex ; 3 uses
  %i.ez = load i16, ptr %i.ey, align 2
  store i16 %i.ez, ptr %i.et, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  %i.fb = load i8, ptr %i.fa, align 2, !tbaa !29
  %i.fc = zext i8 %i.fb to i32
  %i.fd = add i32 %i.ep, %i.fc                    ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 3
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !30
  %i.fg = zext i8 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.fg ; 2 uses
  %i.fi = icmp ugt i32 %i.fd, 64
  br i1 %i.fi, label %BIT_reloadDStream.exit29, label %bb.n, !prof !31, !llvm.loop !0

bb.s:                                             ; preds = %.lr.ph, %bb.w
  %.1.i5222 = phi ptr [ %0, %.lr.ph ], [ %i.hy, %bb.w ] ; 5 uses
  %.sroa.9790.3.idx221 = phi i64 [ %.sroa.9790.9177.idx296, %.lr.ph ], [ %.sroa.9790.6.idx, %bb.w ] ; 5 uses
  %.sroa.31.4220 = phi i32 [ %.sroa.31.12176298, %.lr.ph ], [ %i.hu, %bb.w ] ; 5 uses
  %.sroa.0.3219 = phi i64 [ %.sroa.0.10175299, %.lr.ph ], [ %.sroa.0.6, %bb.w ]
  %.not.i9 = icmp slt i64 %.sroa.9790.3.idx221, 8
  br i1 %.not.i9, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fj = lshr i32 %.sroa.31.4220, 3
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = and i32 %.sroa.31.4220, 7
  br label %BIT_reloadDStream.exit15

bb.u:                                             ; preds = %bb.s
  %i.fm = icmp eq i64 %.sroa.9790.3.idx221, 0
  br i1 %i.fm, label %BIT_reloadDStream.exit29, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fn = lshr i32 %.sroa.31.4220, 3
  %i.fo = zext nneg i32 %i.fn to i64              ; 2 uses
  %i.fp = icmp sge i64 %.sroa.9790.3.idx221, %i.fo
  %.021.i11195 = tail call i64 @llvm.smin.i64(i64 %.sroa.9790.3.idx221, i64 %i.fo) ; 2 uses
  %.021.i11 = trunc i64 %.021.i11195 to i32
  %i.fq = and i64 %.021.i11195, 4294967295
  %i.fr = shl i32 %.021.i11, 3
  %i.fs = sub i32 %.sroa.31.4220, %i.fr
  br label %BIT_reloadDStream.exit15

BIT_reloadDStream.exit15:                         ; preds = %bb.t, %bb.v
  %.sroa.31.8 = phi i32 [ %i.fl, %bb.t ], [ %i.fs, %bb.v ] ; 3 uses
  %.pn = phi i64 [ %i.fk, %bb.t ], [ %i.fq, %bb.v ]
  %.022.i10 = phi i1 [ true, %bb.t ], [ %i.fp, %bb.v ]
  %.sroa.9790.6.idx = sub nsw i64 %.sroa.9790.3.idx221, %.pn ; 3 uses
  %.sroa.9790.6 = getelementptr inbounds i8, ptr %2, i64 %.sroa.9790.6.idx
  %.sroa.0.6 = load i64, ptr %.sroa.9790.6, align 1, !tbaa !26 ; 7 uses
  %i.ft = icmp ult ptr %.1.i5222, %i.bt
  %i.fu = and i1 %i.ft, %.022.i10
  br i1 %i.fu, label %bb.w, label %BIT_reloadDStream.exit29.loopexit331.split.loop.exit

bb.w:                                             ; preds = %BIT_reloadDStream.exit15
  %i.fv = and i32 %.sroa.31.8, 63
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = shl i64 %.sroa.0.6, %i.fw
  %i.fy = lshr i64 %i.fx, %i.bs
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.fy ; 3 uses
  %i.ga = load i16, ptr %i.fz, align 2
  store i16 %i.ga, ptr %.1.i5222, align 1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 2
  %i.gc = load i8, ptr %i.gb, align 2, !tbaa !29
  %i.gd = zext i8 %i.gc to i32
  %i.ge = add i32 %.sroa.31.8, %i.gd              ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fz, i64 3
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !30
  %i.gh = zext i8 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %.1.i5222, i64 %i.gh ; 2 uses
  %i.gj = and i32 %i.ge, 63
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = shl i64 %.sroa.0.6, %i.gk
  %i.gm = lshr i64 %i.gl, %i.bs
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.gm ; 3 uses
  %i.go = load i16, ptr %i.gn, align 2
  store i16 %i.go, ptr %i.gi, align 1
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 2
  %i.gq = load i8, ptr %i.gp, align 2, !tbaa !29
  %i.gr = zext i8 %i.gq to i32
  %i.gs = add i32 %i.ge, %i.gr                    ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 3
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !30
  %i.gv = zext i8 %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gv ; 2 uses
  %i.gx = and i32 %i.gs, 63
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = shl i64 %.sroa.0.6, %i.gy
  %i.ha = lshr i64 %i.gz, %i.bs
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.ha ; 3 uses
  %i.hc = load i16, ptr %i.hb, align 2
  store i16 %i.hc, ptr %i.gw, align 1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 2
  %i.he = load i8, ptr %i.hd, align 2, !tbaa !29
  %i.hf = zext i8 %i.he to i32
  %i.hg = add i32 %i.gs, %i.hf                    ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 3
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !30
  %i.hj = zext i8 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.hj ; 2 uses
  %i.hl = and i32 %i.hg, 63
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = shl i64 %.sroa.0.6, %i.hm
  %i.ho = lshr i64 %i.hn, %i.bs
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.ho ; 3 uses
  %i.hq = load i16, ptr %i.hp, align 2
  store i16 %i.hq, ptr %i.hk, align 1
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 2
  %i.hs = load i8, ptr %i.hr, align 2, !tbaa !29
  %i.ht = zext i8 %i.hs to i32
  %i.hu = add i32 %i.hg, %i.ht                    ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 3
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !30
  %i.hx = zext i8 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hx ; 2 uses
  %i.hz = icmp ugt i32 %i.hu, 64
  br i1 %i.hz, label %BIT_reloadDStream.exit29, label %bb.s, !prof !31, !llvm.loop !1

bb.x:                                             ; preds = %bb.l
  %.not.i23 = icmp slt i64 %3, 16
  br i1 %.not.i23, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ia = lshr i32 %i.aw, 3
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = sub nsw i64 0, %i.ib
  %i.id = getelementptr inbounds i8, ptr %.sroa.9790.9177.ptr.ptr.ptr, i64 %i.ic ; 2 uses
  %i.ie = and i32 %i.aw, 7
  %.val.i61 = load i64, ptr %i.id, align 1, !tbaa !26
  br label %BIT_reloadDStream.exit29

bb.z:                                             ; preds = %bb.x
  %i.if = icmp eq i64 %.add, 0
  br i1 %i.if, label %BIT_reloadDStream.exit29, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ig = lshr i32 %i.aw, 3
  %i.ih = zext nneg i32 %i.ig to i64
  %.021.i25191 = tail call i64 @llvm.smin.i64(i64 %.add, i64 %i.ih) ; 2 uses
  %.021.i25 = trunc i64 %.021.i25191 to i32
  %i.ii = and i64 %.021.i25191, 4294967295
  %i.ij = sub nsw i64 0, %i.ii
  %i.ik = getelementptr inbounds i8, ptr %.sroa.9790.9177.ptr.ptr.ptr, i64 %i.ij ; 2 uses
  %i.il = shl i32 %.021.i25, 3
  %i.im = sub i32 %i.aw, %i.il
  %.val30 = load i64, ptr %i.ik, align 1, !tbaa !26
  br label %BIT_reloadDStream.exit29

BIT_reloadDStream.exit29.loopexit.split.loop.exit: ; preds = %BIT_reloadDStream.exit
  %.sroa.9790.5.le = getelementptr inbounds i8, ptr %2, i64 %.sroa.9790.5.idx
  br label %BIT_reloadDStream.exit29

BIT_reloadDStream.exit29.loopexit331.split.loop.exit: ; preds = %BIT_reloadDStream.exit15
  %.sroa.9790.6.le = getelementptr inbounds i8, ptr %2, i64 %.sroa.9790.6.idx
  br label %BIT_reloadDStream.exit29

BIT_reloadDStream.exit29:                         ; preds = %bb.u, %bb.w, %bb.p, %bb.r, %BIT_reloadDStream.exit29.loopexit331.split.loop.exit, %BIT_reloadDStream.exit29.loopexit.split.loop.exit, %.thread, %bb.z, %bb.aa, %bb.y
  %i.in = phi i64 [ %i.ba, %bb.z ], [ %i.ba, %bb.y ], [ %i.bl, %BIT_reloadDStream.exit29.loopexit.split.loop.exit ], [ %i.ba, %bb.aa ], [ %i.bj, %.thread ], [ %i.bl, %bb.p ], [ %i.bl, %BIT_reloadDStream.exit29.loopexit331.split.loop.exit ], [ %i.bl, %bb.r ], [ %i.bl, %bb.w ], [ %i.bl, %bb.u ]
  %.sroa.3.0.extract.shift.i304 = phi i32 [ %.sroa.3.0.extract.shift.i, %bb.z ], [ %.sroa.3.0.extract.shift.i, %bb.y ], [ %.sroa.3.0.extract.shift.i303.a, %BIT_reloadDStream.exit29.loopexit.split.loop.exit ], [ %.sroa.3.0.extract.shift.i, %bb.aa ], [ %.sroa.3.0.extract.shift.i294, %.thread ], [ %.sroa.3.0.extract.shift.i303.a, %bb.p ], [ %.sroa.3.0.extract.shift.i303.a, %BIT_reloadDStream.exit29.loopexit331.split.loop.exit ], [ %.sroa.3.0.extract.shift.i303.a, %bb.r ], [ %.sroa.3.0.extract.shift.i303.a, %bb.w ], [ %.sroa.3.0.extract.shift.i303.a, %bb.u ] ; 2 uses
  %i.io = phi ptr [ %i.az, %bb.z ], [ %i.az, %bb.y ], [ %i.bm, %BIT_reloadDStream.exit29.loopexit.split.loop.exit ], [ %i.az, %bb.aa ], [ %i.bi, %.thread ], [ %i.bm, %bb.p ], [ %i.bm, %BIT_reloadDStream.exit29.loopexit331.split.loop.exit ], [ %i.bm, %bb.r ], [ %i.bm, %bb.w ], [ %i.bm, %bb.u ] ; 3 uses
  %i.ip = phi ptr [ %i.ay, %bb.z ], [ %i.ay, %bb.y ], [ %i.bn, %BIT_reloadDStream.exit29.loopexit.split.loop.exit ], [ %i.ay, %bb.aa ], [ %i.bh, %.thread ], [ %i.bn, %bb.p ], [ %i.bn, %BIT_reloadDStream.exit29.loopexit331.split.loop.exit ], [ %i.bn, %bb.r ], [ %i.bn, %bb.w ], [ %i.bn, %bb.u ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %.val.i, %bb.z ], [ %.val.i61, %bb.y ], [ %.sroa.0.5, %BIT_reloadDStream.exit29.loopexit.split.loop.exit ], [ %.val30, %bb.aa ], [ %.sroa.0.9, %.thread ], [ %.sroa.0.4236, %bb.p ], [ %.sroa.0.6, %BIT_reloadDStream.exit29.loopexit331.split.loop.exit ], [ %.sroa.0.5, %bb.r ], [ %.sroa.0.3219, %bb.u ], [ %.sroa.0.6, %bb.w ] ; 2 uses
  %.sroa.31.0 = phi i32 [ %i.aw, %bb.z ], [ %i.ie, %bb.y ], [ %.sroa.31.7, %BIT_reloadDStream.exit29.loopexit.split.loop.exit ], [ %i.im, %bb.aa ], [ %i.bg, %.thread ], [ %.sroa.31.5237, %bb.p ], [ %.sroa.31.8, %BIT_reloadDStream.exit29.loopexit331.split.loop.exit ], [ %i.fd, %bb.r ], [ %.sroa.31.4220, %bb.u ], [ %i.hu, %bb.w ] ; 4 uses
  %.sroa.9790.0 = phi ptr [ %.sroa.9790.9177.ptr.ptr.ptr, %bb.z ], [ %i.id, %bb.y ], [ %.sroa.9790.5.le, %BIT_reloadDStream.exit29.loopexit.split.loop.exit ], [ %i.ik, %bb.aa ], [ %2, %.thread ], [ %2, %bb.p ], [ %.sroa.9790.6.le, %BIT_reloadDStream.exit29.loopexit331.split.loop.exit ], [ @BIT_reloadDStream.zeroFilled, %bb.r ], [ %2, %bb.u ], [ @BIT_reloadDStream.zeroFilled, %bb.w ] ; 2 uses
  %.4.i = phi ptr [ %0, %bb.z ], [ %0, %bb.y ], [ %.0.i239, %BIT_reloadDStream.exit29.loopexit.split.loop.exit ], [ %0, %bb.aa ], [ %0, %.thread ], [ %.0.i239, %bb.p ], [ %.1.i5222, %BIT_reloadDStream.exit29.loopexit331.split.loop.exit ], [ %i.fh, %bb.r ], [ %.1.i5222, %bb.u ], [ %i.hy, %bb.w ] ; 4 uses
  %i.iq = ptrtoint ptr %.4.i to i64
  %i.ir = sub i64 %i.in, %i.iq
  %i.is = icmp ugt i64 %i.ir, 1
  br i1 %i.is, label %.preheader202, label %.loopexit

.preheader202:                                    ; preds = %BIT_reloadDStream.exit29
  %i.it = getelementptr inbounds i8, ptr %i.ip, i64 -2 ; 3 uses
  %i.iu = ptrtoint ptr %2 to i64
  %i.iv = sub nsw i32 0, %.sroa.3.0.extract.shift.i304
  %i.iw = and i32 %i.iv, 63
  %i.ix = zext nneg i32 %i.iw to i64              ; 2 uses
  %i.iy = icmp ugt i32 %.sroa.31.0, 64
  br i1 %i.iy, label %.preheader, label %.lr.ph371, !prof !32

.lr.ph371:                                        ; preds = %.preheader202, %bb.ad
  %.5.i370 = phi ptr [ %i.jt, %bb.ad ], [ %.4.i, %.preheader202 ] ; 4 uses
  %.sroa.9790.2369 = phi ptr [ %.sroa.9790.7, %bb.ad ], [ %.sroa.9790.0, %.preheader202 ] ; 4 uses
  %.sroa.31.2368 = phi i32 [ %i.jp, %bb.ad ], [ %.sroa.31.0, %.preheader202 ] ; 3 uses
  %.not.i16 = icmp ult ptr %.sroa.9790.2369, %i.b
  %5 = lshr i32 %.sroa.31.2368, 3                 ; 2 uses
  %6 = zext nneg i32 %5 to i64
  %7 = sub nsw i64 0, %6
  %8 = getelementptr inbounds i8, ptr %.sroa.9790.2369, i64 %7 ; 2 uses
  br i1 %.not.i16, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph371
  %i.iz = and i32 %.sroa.31.2368, 7
  br label %BIT_reloadDStream.exit22

bb.ac:                                            ; preds = %.lr.ph371
  %9 = icmp uge ptr %8, %2                        ; 2 uses
  %10 = ptrtoint ptr %.sroa.9790.2369 to i64
  %i.ja = sub i64 %10, %i.iu
  %11 = trunc i64 %i.ja to i32
  %.021.i18 = select i1 %9, i32 %5, i32 %11       ; 2 uses
  %12 = zext i32 %.021.i18 to i64
  %i.jb = sub nsw i64 0, %12
  %13 = getelementptr inbounds i8, ptr %.sroa.9790.2369, i64 %i.jb
  %i.jc = shl i32 %.021.i18, 3
  %i.jd = sub i32 %.sroa.31.2368, %i.jc
  br label %BIT_reloadDStream.exit22

BIT_reloadDStream.exit22:                         ; preds = %bb.ab, %bb.ac
  %.sroa.31.9 = phi i32 [ %i.iz, %bb.ab ], [ %i.jd, %bb.ac ] ; 3 uses
  %.sroa.9790.7 = phi ptr [ %8, %bb.ab ], [ %13, %bb.ac ] ; 3 uses
  %.022.i17 = phi i1 [ true, %bb.ab ], [ %9, %bb.ac ]
  %.sroa.0.7 = load i64, ptr %.sroa.9790.7, align 1, !tbaa !26 ; 3 uses
  %i.je = icmp ule ptr %.5.i370, %i.it
  %i.jf = and i1 %i.je, %.022.i17
  br i1 %i.jf, label %bb.ad, label %.preheader

.preheader:                                       ; preds = %BIT_reloadDStream.exit22, %bb.ad, %.preheader202
  %.5.i.lcssa = phi ptr [ %.4.i, %.preheader202 ], [ %.5.i370, %BIT_reloadDStream.exit22 ], [ %i.jt, %bb.ad ] ; 3 uses
  %.sroa.9790.7329 = phi ptr [ @BIT_reloadDStream.zeroFilled, %.preheader202 ], [ %.sroa.9790.7, %BIT_reloadDStream.exit22 ], [ @BIT_reloadDStream.zeroFilled, %bb.ad ] ; 2 uses
  %.sroa.31.9328 = phi i32 [ %.sroa.31.0, %.preheader202 ], [ %.sroa.31.9, %BIT_reloadDStream.exit22 ], [ %i.jp, %bb.ad ] ; 2 uses
  %.sroa.0.7327 = phi i64 [ %.sroa.0.0, %.preheader202 ], [ %.sroa.0.7, %bb.ad ], [ %.sroa.0.7, %BIT_reloadDStream.exit22 ] ; 3 uses
  %.not.i4245 = icmp ugt ptr %.5.i.lcssa, %i.it
  br i1 %.not.i4245, label %.loopexit, label %.lr.ph248

bb.ad:                                            ; preds = %BIT_reloadDStream.exit22
  %i.jg = and i32 %.sroa.31.9, 63
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = shl i64 %.sroa.0.7, %i.jh
  %i.jj = lshr i64 %i.ji, %i.ix
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.jj ; 3 uses
  %i.jl = load i16, ptr %i.jk, align 2
  store i16 %i.jl, ptr %.5.i370, align 1
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 2
  %i.jn = load i8, ptr %i.jm, align 2, !tbaa !29
  %i.jo = zext i8 %i.jn to i32
  %i.jp = add i32 %.sroa.31.9, %i.jo              ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jk, i64 3
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !30
  %i.js = zext i8 %i.jr to i64
  %i.jt = getelementptr inbounds nuw i8, ptr %.5.i370, i64 %i.js ; 2 uses
  %i.ju = icmp ugt i32 %i.jp, 64
  br i1 %i.ju, label %.preheader, label %.lr.ph371, !prof !31, !llvm.loop !2

.lr.ph248:                                        ; preds = %.preheader, %.lr.ph248
  %.6.i247 = phi ptr [ %i.ki, %.lr.ph248 ], [ %.5.i.lcssa, %.preheader ] ; 2 uses
  %.sroa.31.3246 = phi i32 [ %i.ke, %.lr.ph248 ], [ %.sroa.31.9328, %.preheader ] ; 2 uses
  %i.jv = and i32 %.sroa.31.3246, 63
  %i.jw = zext nneg i32 %i.jv to i64
  %i.jx = shl i64 %.sroa.0.7327, %i.jw
  %i.jy = lshr i64 %i.jx, %i.ix
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.jy ; 3 uses
  %i.ka = load i16, ptr %i.jz, align 2
  store i16 %i.ka, ptr %.6.i247, align 1
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 2
  %i.kc = load i8, ptr %i.kb, align 2, !tbaa !29
  %i.kd = zext i8 %i.kc to i32
  %i.ke = add i32 %.sroa.31.3246, %i.kd           ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jz, i64 3
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !30
  %i.kh = zext i8 %i.kg to i64
  %i.ki = getelementptr inbounds nuw i8, ptr %.6.i247, i64 %i.kh ; 3 uses
  %.not.i4 = icmp ugt ptr %i.ki, %i.it
  br i1 %.not.i4, label %.loopexit, label %.lr.ph248, !llvm.loop !3

.loopexit:                                        ; preds = %.lr.ph248, %.preheader, %BIT_reloadDStream.exit29
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %BIT_reloadDStream.exit29 ], [ %.sroa.0.7327, %.preheader ], [ %.sroa.0.7327, %.lr.ph248 ]
  %.sroa.31.1 = phi i32 [ %.sroa.31.0, %BIT_reloadDStream.exit29 ], [ %.sroa.31.9328, %.preheader ], [ %i.ke, %.lr.ph248 ] ; 6 uses
  %.sroa.9790.1 = phi ptr [ %.sroa.9790.0, %BIT_reloadDStream.exit29 ], [ %.sroa.9790.7329, %.preheader ], [ %.sroa.9790.7329, %.lr.ph248 ]
  %.7.i = phi ptr [ %.4.i, %BIT_reloadDStream.exit29 ], [ %.5.i.lcssa, %.preheader ], [ %i.ki, %.lr.ph248 ] ; 2 uses
  %i.kj = icmp ult ptr %.7.i, %i.ip
  br i1 %i.kj, label %bb.ae, label %HUF_decodeStreamX2.exit

bb.ae:                                            ; preds = %.loopexit
  %i.kk = and i32 %.sroa.31.1, 63
  %i.kl = zext nneg i32 %i.kk to i64
  %i.km = shl i64 %.sroa.0.1, %i.kl
  %i.kn = sub nsw i32 0, %.sroa.3.0.extract.shift.i304
  %i.ko = and i32 %i.kn, 63
  %i.kp = zext nneg i32 %i.ko to i64
  %i.kq = lshr i64 %i.km, %i.kp
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.kq ; 4 uses
  %i.ks = load i8, ptr %i.kr, align 2
  store i8 %i.ks, ptr %.7.i, align 1
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 3
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !30
  %i.kv = icmp eq i8 %i.ku, 1
  br i1 %i.kv, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kr, i64 2
  %i.kx = load i8, ptr %i.kw, align 2, !tbaa !29
  %i.ky = zext i8 %i.kx to i32
  %i.kz = add i32 %.sroa.31.1, %i.ky
  br label %HUF_decodeStreamX2.exit

bb.ag:                                            ; preds = %bb.ae
  %i.la = icmp ult i32 %.sroa.31.1, 64
  br i1 %i.la, label %bb.ah, label %HUF_decodeStreamX2.exit

bb.ah:                                            ; preds = %bb.ag
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kr, i64 2
  %i.lc = load i8, ptr %i.lb, align 2, !tbaa !29
  %i.ld = zext i8 %i.lc to i32
  %i.le = add nuw nsw i32 %.sroa.31.1, %i.ld
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.le, i32 64)
  br label %HUF_decodeStreamX2.exit

HUF_decodeStreamX2.exit:                          ; preds = %bb.ag, %bb.af, %bb.ah, %.loopexit
  %.sroa.31.6 = phi i32 [ %.sroa.31.1, %.loopexit ], [ %i.kz, %bb.af ], [ %.sroa.31.1, %bb.ag ], [ %spec.select, %bb.ah ]
  %i.lf = icmp eq ptr %.sroa.9790.1, %2
  %.sroa.31.6.fr = freeze i32 %.sroa.31.6
  %.not = icmp eq i32 %.sroa.31.6.fr, 64
  %or.cond = and i1 %i.lf, %.not
  %spec.select201 = select i1 %or.cond, i64 %1, i64 -20
  br label %HUF_decompress1X2_usingDTable_internal_body.exit

HUF_decompress1X2_usingDTable_internal_body.exit: ; preds = %HUF_decodeStreamX2.exit, %bb.k, %bb.a, %bb.c, %BIT_initDStream.exit
  %.1.i = phi i64 [ %3, %BIT_initDStream.exit ], [ %spec.select201, %HUF_decodeStreamX2.exit ], [ -1, %bb.c ], [ -20, %bb.k ], [ -72, %bb.a ]
  ret i64 %.1.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i64 1, 0) i64 @BIT_initDStream(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 12), (16, 40)) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.b, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.d, align 8, !tbaa !43
  %i.e = icmp ugt i64 %2, 7
  br i1 %i.e, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !45
  %.val = load i64, ptr %i.g, align 1, !tbaa !26
  store i64 %.val, ptr %0, align 8, !tbaa !47
  %i.i = getelementptr i8, ptr %i.f, i64 -1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !20    ; 2 uses
  %.not51 = icmp eq i8 %i.j, 0
  br i1 %.not51, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.k = zext i8 %i.j to i32
  %i.l = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.k, i1 true)
  %i.m = xor i32 %i.l, 31
  %i.n = sub nuw nsw i32 8, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.n, ptr %i.o, align 8, !tbaa !44
  br label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.p, align 8, !tbaa !44
  br label %bb.p

bb.f:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.q, align 8, !tbaa !45
  %i.r = load i8, ptr %1, align 1, !tbaa !20
  %i.s = zext i8 %i.r to i64                      ; 7 uses
  store i64 %i.s, ptr %0, align 8, !tbaa !47
  switch i64 %2, label %bb.m [
    i64 7, label %bb.g
    i64 6, label %bb.h
    i64 5, label %bb.i
    i64 4, label %bb.j
    i64 3, label %bb.k
    i64 2, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.u = load i8, ptr %i.t, align 1, !tbaa !20
  %i.v = zext i8 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 48
  %i.x = or disjoint i64 %i.w, %i.s               ; 2 uses
  store i64 %i.x, ptr %0, align 8, !tbaa !47
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = phi i64 [ %i.x, %bb.g ], [ %i.s, %bb.f ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !20
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 40
  %i.ad = add nuw nsw i64 %i.ac, %i.y             ; 2 uses
  store i64 %i.ad, ptr %0, align 8, !tbaa !47
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.ae = phi i64 [ %i.ad, %bb.h ], [ %i.s, %bb.f ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !20
  %i.ah = zext i8 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 32
  %i.aj = add nuw nsw i64 %i.ai, %i.ae            ; 2 uses
  store i64 %i.aj, ptr %0, align 8, !tbaa !47
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.ak = phi i64 [ %i.aj, %bb.i ], [ %i.s, %bb.f ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !20
  %i.an = zext i8 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 24
  %i.ap = add nuw nsw i64 %i.ao, %i.ak            ; 2 uses
  store i64 %i.ap, ptr %0, align 8, !tbaa !47
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %i.aq = phi i64 [ %i.ap, %bb.j ], [ %i.s, %bb.f ]
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !20
  %i.at = zext i8 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 16
  %i.av = add nuw nsw i64 %i.au, %i.aq            ; 2 uses
  store i64 %i.av, ptr %0, align 8, !tbaa !47
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %i.aw = phi i64 [ %i.av, %bb.k ], [ %i.s, %bb.f ]
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !20
  %i.az = zext i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 8
  %i.bb = add nuw nsw i64 %i.ba, %i.aw
  store i64 %i.bb, ptr %0, align 8, !tbaa !47
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.l
  %i.bc = getelementptr i8, ptr %1, i64 %2
  %i.bd = getelementptr i8, ptr %i.bc, i64 -1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !20  ; 2 uses
  %.not = icmp eq i8 %i.be, 0
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.bf, align 8, !tbaa !44
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bg = zext i8 %i.be to i32
  %i.bh = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.bg, i1 true)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = trunc nuw nsw i64 %2 to i32
  %i.bk = shl nuw nsw i32 %i.bj, 3
  %i.bl = sub nsw i32 %i.bh, %i.bk
  %i.bm = add nsw i32 %i.bl, 41
  store i32 %i.bm, ptr %i.bi, align 8, !tbaa !44
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread, %bb.n, %bb.e, %bb.b
  %.2 = phi i64 [ -72, %bb.b ], [ -20, %bb.n ], [ -1, %bb.e ], [ %2, %.thread ], [ %2, %bb.o ]
  ret i64 %.2
}

end_hunk_1
begin_hunk_2_@HUF_decompress4X2_usingDTable_internal_bmi2:bb.a
  store ptr %i.bfw, ptr %i.beu, align 8, !tbaa !45
  %i.bfx = shl i32 %.021.i322.i, 3
  %i.bfy = sub i32 %i.bfb, %i.bfx
  br label %BIT_reloadDStream.exit326.i

BIT_reloadDStream.exit326.i:                      ; preds = %bb.eg, %bb.ee
  %storemerge1131 = phi i32 [ %i.bfi, %bb.ee ], [ %i.bfy, %bb.eg ] ; 3 uses
  %.val19.sink.in = phi ptr [ %i.bfh, %bb.ee ], [ %i.bfw, %bb.eg ]
  %.022.i321.i = phi i1 [ true, %bb.ee ], [ %i.bfp, %bb.eg ]
  store i32 %storemerge1131, ptr %i.bes, align 8, !tbaa !44
  %.val19.sink = load i64, ptr %.val19.sink.in, align 1, !tbaa !26
  store i64 %.val19.sink, ptr %5, align 8, !tbaa !47
  %i.bfz = icmp ule ptr %.5.i.i1126, %i.bet
  %i.bga = and i1 %i.bfz, %.022.i321.i
  br i1 %i.bga, label %bb.eh, label %.preheader

.preheader:                                       ; preds = %bb.ef, %BIT_reloadDStream.exit326.i, %._crit_edge1128
  %.5.i.i1054 = phi ptr [ %.5.i.i.lcssa, %._crit_edge1128 ], [ %.5.i.i1126, %BIT_reloadDStream.exit326.i ], [ %.5.i.i1126, %bb.ef ] ; 3 uses
  %.val143990 = phi i32 [ %.lcssa1055, %._crit_edge1128 ], [ %i.bfb, %bb.ef ], [ %storemerge1131, %BIT_reloadDStream.exit326.i ] ; 2 uses
  %.not.i.i842 = icmp ugt ptr %.5.i.i1054, %i.bet
  br i1 %.not.i.i842, label %.loopexit, label %.lr.ph844

bb.eh:                                            ; preds = %BIT_reloadDStream.exit326.i
  %.val142 = load i64, ptr %5, align 8, !tbaa !47
  %i.bgb = and i32 %storemerge1131, 63
  %i.bgc = zext nneg i32 %i.bgb to i64
  %i.bgd = shl i64 %.val142, %i.bgc
  %i.bge = lshr i64 %i.bgd, %i.bez
  %i.bgf = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bge ; 3 uses
  %i.bgg = load i16, ptr %i.bgf, align 2
  store i16 %i.bgg, ptr %.5.i.i1126, align 1
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bgf, i64 2
  %i.bgi = load i8, ptr %i.bgh, align 2, !tbaa !29
  %i.bgj = zext i8 %i.bgi to i32
  %i.bgk = load i32, ptr %i.bes, align 8, !tbaa !44
  %i.bgl = add i32 %i.bgk, %i.bgj                 ; 4 uses
  store i32 %i.bgl, ptr %i.bes, align 8, !tbaa !44
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgf, i64 3
  %i.bgn = load i8, ptr %i.bgm, align 1, !tbaa !30
  %i.bgo = zext i8 %i.bgn to i64
  %i.bgp = getelementptr inbounds nuw i8, ptr %.5.i.i1126, i64 %i.bgo ; 2 uses
  %i.bgq = icmp ugt i32 %i.bgl, 64
  br i1 %i.bgq, label %._crit_edge1128, label %.lr.ph1127, !prof !31, !llvm.loop !2

.lr.ph844:                                        ; preds = %.preheader, %.lr.ph844
  %.val145 = phi i32 [ %i.bhb, %.lr.ph844 ], [ %.val143990, %.preheader ]
  %.6.i.i843 = phi ptr [ %i.bhf, %.lr.ph844 ], [ %.5.i.i1054, %.preheader ] ; 2 uses
  %.val144 = load i64, ptr %5, align 8, !tbaa !47
  %i.bgr = and i32 %.val145, 63
  %i.bgs = zext nneg i32 %i.bgr to i64
  %i.bgt = shl i64 %.val144, %i.bgs
  %i.bgu = lshr i64 %i.bgt, %i.bez
  %i.bgv = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bgu ; 3 uses
  %i.bgw = load i16, ptr %i.bgv, align 2
  store i16 %i.bgw, ptr %.6.i.i843, align 1
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.bgv, i64 2
  %i.bgy = load i8, ptr %i.bgx, align 2, !tbaa !29
  %i.bgz = zext i8 %i.bgy to i32
  %i.bha = load i32, ptr %i.bes, align 8, !tbaa !44
  %i.bhb = add i32 %i.bha, %i.bgz                 ; 3 uses
  store i32 %i.bhb, ptr %i.bes, align 8, !tbaa !44
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bgv, i64 3
  %i.bhd = load i8, ptr %i.bhc, align 1, !tbaa !30
  %i.bhe = zext i8 %i.bhd to i64
  %i.bhf = getelementptr inbounds nuw i8, ptr %.6.i.i843, i64 %i.bhe ; 3 uses
  %.not.i.i = icmp ugt ptr %i.bhf, %i.bet
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph844, !llvm.loop !3

.loopexit:                                        ; preds = %.lr.ph844, %.preheader, %BIT_reloadDStream.exit333.i
  %.val147 = phi i32 [ %i.beo, %BIT_reloadDStream.exit333.i ], [ %.val143990, %.preheader ], [ %i.bhb, %.lr.ph844 ] ; 2 uses
  %.7.i.i = phi ptr [ %.4.i.i, %BIT_reloadDStream.exit333.i ], [ %.5.i.i1054, %.preheader ], [ %i.bhf, %.lr.ph844 ] ; 2 uses
  %i.bhg = icmp ult ptr %.7.i.i, %i.c
  br i1 %i.bhg, label %bb.ei, label %HUF_decodeStreamX2.exit.i

bb.ei:                                            ; preds = %.loopexit
  %.val146 = load i64, ptr %5, align 8, !tbaa !47
  %i.bhh = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bhi = and i32 %.val147, 63
  %i.bhj = zext nneg i32 %i.bhi to i64
  %i.bhk = shl i64 %.val146, %i.bhj
  %i.bhl = sub nsw i32 0, %.sroa.3.0.extract.shift.i
  %i.bhm = and i32 %i.bhl, 63
  %i.bhn = zext nneg i32 %i.bhm to i64
  %i.bho = lshr i64 %i.bhk, %i.bhn
  %i.bhp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bho ; 4 uses
  %i.bhq = load i8, ptr %i.bhp, align 2
  store i8 %i.bhq, ptr %.7.i.i, align 1
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhp, i64 3
  %i.bhs = load i8, ptr %i.bhr, align 1, !tbaa !30
  %i.bht = icmp eq i8 %i.bhs, 1
  br i1 %i.bht, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bhp, i64 2
  %i.bhv = load i8, ptr %i.bhu, align 2, !tbaa !29
  %i.bhw = zext i8 %i.bhv to i32
  %i.bhx = load i32, ptr %i.bhh, align 8, !tbaa !44
  %i.bhy = add i32 %i.bhx, %i.bhw
  br label %HUF_decodeStreamX2.exit.i

bb.ek:                                            ; preds = %bb.ei
  %i.bhz = load i32, ptr %i.bhh, align 8, !tbaa !44 ; 3 uses
  %i.bia = icmp ult i32 %i.bhz, 64
  br i1 %i.bia, label %bb.el, label %HUF_decodeStreamX2.exit.i

bb.el:                                            ; preds = %bb.ek
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bhp, i64 2
  %i.bic = load i8, ptr %i.bib, align 2, !tbaa !29
  %i.bid = zext i8 %i.bic to i32
  %i.bie = add nuw nsw i32 %i.bhz, %i.bid
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.bie, i32 64)
  br label %HUF_decodeStreamX2.exit.i

HUF_decodeStreamX2.exit.i:                        ; preds = %bb.ej, %bb.ek, %bb.el, %.loopexit
  %i.bif = phi i32 [ %i.bhy, %bb.ej ], [ %i.bhz, %bb.ek ], [ %spec.store.select, %bb.el ], [ %.val147, %.loopexit ]
  %i.big = icmp ne ptr %.sroa.116466.3, %i.o
  %i.bih = icmp ne i32 %.sroa.36432.4, 64
  %narrow.not626 = select i1 %i.big, i1 true, i1 %i.bih
  %i.bii = icmp ne ptr %.sroa.116344.3, %i.p
  %i.bij = icmp ne i32 %.sroa.36310.4, 64
  %narrow618.not629 = select i1 %i.bii, i1 true, i1 %i.bij
  %.not = or i1 %narrow.not626, %narrow618.not629
  %i.bik = icmp ne ptr %.sroa.116224.3, %i.q
  %i.bil = icmp ne i32 %.sroa.36.4, 64
  %narrow619.not632 = select i1 %i.bik, i1 true, i1 %i.bil
  %.not623 = or i1 %.not, %narrow619.not632
  %i.bim = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bin = load ptr, ptr %i.bim, align 8, !tbaa !45
  %i.bio = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bip = load ptr, ptr %i.bio, align 8, !tbaa !48
  %i.biq = icmp ne ptr %i.bin, %i.bip
  %i.bir = icmp ne i32 %i.bif, 64
  %narrow620.not635 = select i1 %i.biq, i1 true, i1 %i.bir
  %.not621 = or i1 %.not623, %narrow620.not635
  %spec.select.i = select i1 %.not621, i64 -20, i64 %1
  br label %BIT_initDStream.exit.thread

BIT_initDStream.exit.thread:                      ; preds = %bb.ak, %bb.aa, %bb.ac, %bb.y, %bb.o, %bb.q, %bb.m, %bb.c, %bb.e, %HUF_decodeStreamX2.exit.i, %.loopexit670, %bb.am, %bb.b
  %.5.i = phi i64 [ %spec.select.i, %HUF_decodeStreamX2.exit.i ], [ -20, %bb.b ], [ -1, %bb.q ], [ -20, %.loopexit670 ], [ -1, %bb.e ], [ %i.gh, %bb.am ], [ -20, %bb.m ], [ -72, %bb.c ], [ -20, %bb.y ], [ -72, %bb.o ], [ -20, %bb.ak ], [ -72, %bb.aa ], [ -1, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %HUF_decompress4X2_usingDTable_internal_body.exit

HUF_decompress4X2_usingDTable_internal_body.exit: ; preds = %bb.a, %BIT_initDStream.exit.thread
  %.6.i = phi i64 [ %.5.i, %BIT_initDStream.exit.thread ], [ -20, %bb.a ]
  ret i64 %.6.i
}

declare hidden void @HUF_decompress4X2_usingDTable_internal_fast_asm_loop(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal fastcc i64 @HUF_decompress4X2_usingDTable_internal_fast(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #12 {
bb.a:
  %6 = alloca %struct.HUF_DecompressFastArgs, align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 8 uses
  %.idx.i = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.c = call fastcc i64 @HUF_DecompressFastArgs_init(ptr noundef %6, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  call void %5(ptr noundef nonnull %6) #16, !callees !141
  %i.e = add i64 %1, 3
  %i.f = lshr i64 %i.e, 2                         ; 2 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 104
  br label %bb.d

bb.c:                                             ; preds = %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond, label %.thread, label %bb.d, !llvm.loop !140

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %.044169 = phi ptr [ %0, %bb.b ], [ %.1, %bb.c ] ; 2 uses
  %i.l = ptrtoint ptr %.044169 to i64
  %i.m = sub i64 %i.g, %i.l
  %.not54 = icmp ugt i64 %i.f, %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %.044169, i64 %i.f
  %.1 = select i1 %.not54, ptr %i.b, ptr %i.n     ; 7 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !53   ; 6 uses
  %i.q = icmp ugt ptr %i.p, %.1
  br i1 %i.q, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !53   ; 10 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !53
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = icmp ult ptr %i.s, %i.v
  br i1 %i.w, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val.i = load i64, ptr %i.s, align 1, !tbaa !26
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.y = load i64, ptr %i.x, align 8, !tbaa !26
  %i.z = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.y, i1 true) ; 2 uses
  %i.aa = trunc nuw nsw i64 %i.z to i32           ; 5 uses
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !51  ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ad = ptrtoint ptr %.1 to i64                 ; 2 uses
  %i.ae = ptrtoint ptr %i.p to i64                ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = icmp ugt i64 %i.af, 7
  br i1 %i.ag, label %.preheader160, label %bb.k

.preheader160:                                    ; preds = %bb.f
  %i.ah = ptrtoint ptr %i.ab to i64
  %i.ai = getelementptr inbounds i8, ptr %.1, i64 -9
  br label %bb.g

bb.g:                                             ; preds = %.preheader160, %bb.j
  %.0.i164 = phi ptr [ %i.p, %.preheader160 ], [ %i.dm, %bb.j ] ; 4 uses
  %.sroa.17.4162 = phi i32 [ %i.aa, %.preheader160 ], [ %i.di, %bb.j ] ; 3 uses
  %.sroa.62131.2161 = phi ptr [ %i.s, %.preheader160 ], [ %.sroa.62131.3, %bb.j ] ; 4 uses
  %.not.i59 = icmp ult ptr %.sroa.62131.2161, %i.ac
  %7 = lshr i32 %.sroa.17.4162, 3                 ; 3 uses
  br i1 %.not.i59, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = and i32 %.sroa.17.4162, 7
  br label %BIT_reloadDStream.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = zext nneg i32 %7 to i64
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds i8, ptr %.sroa.62131.2161, i64 %i.al
  %i.an = icmp uge ptr %i.am, %i.ab               ; 2 uses
  %i.ao = ptrtoint ptr %.sroa.62131.2161 to i64
  %i.ap = sub i64 %i.ao, %i.ah
  %i.aq = trunc i64 %i.ap to i32
  %.021.i = select i1 %i.an, i32 %7, i32 %i.aq    ; 2 uses
  %i.ar = shl i32 %.021.i, 3
  %i.as = sub i32 %.sroa.17.4162, %i.ar
  br label %BIT_reloadDStream.exit

BIT_reloadDStream.exit:                           ; preds = %bb.h, %bb.i
  %.pn158.in = phi i32 [ %7, %bb.h ], [ %.021.i, %bb.i ]
  %.sroa.17.5 = phi i32 [ %i.aj, %bb.h ], [ %i.as, %bb.i ] ; 3 uses
  %.022.i = phi i1 [ true, %bb.h ], [ %i.an, %bb.i ]
  %.pn158 = zext i32 %.pn158.in to i64
  %.pn = sub nsw i64 0, %.pn158
  %.sroa.62131.3 = getelementptr inbounds i8, ptr %.sroa.62131.2161, i64 %.pn ; 3 uses
  %.sroa.0.4 = load i64, ptr %.sroa.62131.3, align 1, !tbaa !26 ; 6 uses
  %i.at = icmp ult ptr %.0.i164, %i.ai
  %i.au = and i1 %i.at, %.022.i
  br i1 %i.au, label %bb.j, label %BIT_reloadDStream.exit74.loopexit

bb.j:                                             ; preds = %BIT_reloadDStream.exit
  %i.av = and i32 %.sroa.17.5, 63
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl i64 %.sroa.0.4, %i.aw
  %i.ay = lshr i64 %i.ax, 53
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ay ; 3 uses
  %i.ba = load i16, ptr %i.az, align 2
  store i16 %i.ba, ptr %.0.i164, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !29
  %i.bd = zext i8 %i.bc to i32
  %i.be = add i32 %.sroa.17.5, %i.bd              ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 3
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !30
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i164, i64 %i.bh ; 2 uses
  %i.bj = and i32 %i.be, 63
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = shl i64 %.sroa.0.4, %i.bk
  %i.bm = lshr i64 %i.bl, 53
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bm ; 3 uses
  %i.bo = load i16, ptr %i.bn, align 2
  store i16 %i.bo, ptr %i.bi, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.bq = load i8, ptr %i.bp, align 2, !tbaa !29
  %i.br = zext i8 %i.bq to i32
  %i.bs = add i32 %i.be, %i.br                    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 3
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !30
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bv ; 2 uses
  %i.bx = and i32 %i.bs, 63
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = shl i64 %.sroa.0.4, %i.by
  %i.ca = lshr i64 %i.bz, 53
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ca ; 3 uses
  %i.cc = load i16, ptr %i.cb, align 2
  store i16 %i.cc, ptr %i.bw, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.ce = load i8, ptr %i.cd, align 2, !tbaa !29
  %i.cf = zext i8 %i.ce to i32
  %i.cg = add i32 %i.bs, %i.cf                    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 3
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !30
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cj ; 2 uses
  %i.cl = and i32 %i.cg, 63
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = shl i64 %.sroa.0.4, %i.cm
  %i.co = lshr i64 %i.cn, 53
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.co ; 3 uses
  %i.cq = load i16, ptr %i.cp, align 2
  store i16 %i.cq, ptr %i.ck, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  %i.cs = load i8, ptr %i.cr, align 2, !tbaa !29
  %i.ct = zext i8 %i.cs to i32
  %i.cu = add i32 %i.cg, %i.ct                    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 3
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !30
  %i.cx = zext i8 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cx ; 2 uses
  %i.cz = and i32 %i.cu, 63
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = shl i64 %.sroa.0.4, %i.da
  %i.dc = lshr i64 %i.db, 53
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dc ; 3 uses
  %i.de = load i16, ptr %i.dd, align 2
  store i16 %i.de, ptr %i.cy, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 2
  %i.dg = load i8, ptr %i.df, align 2, !tbaa !29
  %i.dh = zext i8 %i.dg to i32
  %i.di = add i32 %i.cu, %i.dh                    ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 3
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !30
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dl ; 2 uses
  %i.dn = icmp ugt i32 %i.di, 64
  br i1 %i.dn, label %BIT_reloadDStream.exit74.loopexit, label %bb.g, !prof !54, !llvm.loop !0

bb.k:                                             ; preds = %bb.f
  %.not.i68 = icmp ult ptr %i.s, %i.ac
  br i1 %.not.i68, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.do = lshr i64 %i.z, 3
  %i.dp = sub nsw i64 0, %i.do
  %i.dq = getelementptr inbounds i8, ptr %i.s, i64 %i.dp ; 2 uses
  %i.dr = and i32 %i.aa, 7
  %.val.i95 = load i64, ptr %i.dq, align 1, !tbaa !26
  br label %BIT_reloadDStream.exit74

bb.m:                                             ; preds = %bb.k
  %i.ds = icmp eq ptr %i.s, %i.ab
  br i1 %i.ds, label %BIT_reloadDStream.exit74, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dt = lshr i32 %i.aa, 3                       ; 2 uses
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = sub nsw i64 0, %i.du
  %i.dw = getelementptr inbounds i8, ptr %i.s, i64 %i.dv
  %i.dx = icmp ult ptr %i.dw, %i.ab
  %i.dy = ptrtoint ptr %i.s to i64
  %i.dz = ptrtoint ptr %i.ab to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = trunc i64 %i.ea to i32
  %.021.i70 = select i1 %i.dx, i32 %i.eb, i32 %i.dt ; 2 uses
  %i.ec = zext i32 %.021.i70 to i64
  %i.ed = sub nsw i64 0, %i.ec
  %i.ee = getelementptr inbounds i8, ptr %i.s, i64 %i.ed ; 2 uses
  %i.ef = shl i32 %.021.i70, 3
  %i.eg = sub i32 %i.aa, %i.ef
  %.val = load i64, ptr %i.ee, align 1, !tbaa !26
  br label %BIT_reloadDStream.exit74

BIT_reloadDStream.exit74.loopexit:                ; preds = %BIT_reloadDStream.exit, %bb.j
  %.sroa.62131.0.ph.ph = phi ptr [ @BIT_reloadDStream.zeroFilled, %bb.j ], [ %.sroa.62131.3, %BIT_reloadDStream.exit ]
  %.sroa.17.0.ph.ph = phi i32 [ %i.di, %bb.j ], [ %.sroa.17.5, %BIT_reloadDStream.exit ]
  %.4.i.ph.ph = phi ptr [ %i.dm, %bb.j ], [ %.0.i164, %BIT_reloadDStream.exit ] ; 2 uses
  %.pre = ptrtoint ptr %.4.i.ph.ph to i64
  %.pre173 = sub i64 %i.ad, %.pre
  br label %BIT_reloadDStream.exit74

BIT_reloadDStream.exit74:                         ; preds = %BIT_reloadDStream.exit74.loopexit, %bb.m, %bb.n, %bb.l
  %.pre-phi174 = phi i64 [ %.pre173, %BIT_reloadDStream.exit74.loopexit ], [ %i.af, %bb.m ], [ %i.af, %bb.n ], [ %i.af, %bb.l ]
  %.sroa.62131.0 = phi ptr [ %.sroa.62131.0.ph.ph, %BIT_reloadDStream.exit74.loopexit ], [ %i.s, %bb.m ], [ %i.ee, %bb.n ], [ %i.dq, %bb.l ]
  %.sroa.17.0 = phi i32 [ %.sroa.17.0.ph.ph, %BIT_reloadDStream.exit74.loopexit ], [ %i.aa, %bb.m ], [ %i.eg, %bb.n ], [ %i.dr, %bb.l ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.4, %BIT_reloadDStream.exit74.loopexit ], [ %.val.i, %bb.m ], [ %.val, %bb.n ], [ %.val.i95, %bb.l ] ; 2 uses
  %.4.i = phi ptr [ %.4.i.ph.ph, %BIT_reloadDStream.exit74.loopexit ], [ %i.p, %bb.m ], [ %i.p, %bb.n ], [ %i.p, %bb.l ] ; 3 uses
  %i.eh = icmp ugt i64 %.pre-phi174, 1
  br i1 %i.eh, label %.preheader159, label %.loopexit

.preheader159:                                    ; preds = %BIT_reloadDStream.exit74
  %i.ei = getelementptr inbounds i8, ptr %.1, i64 -2 ; 3 uses
  %i.ej = ptrtoint ptr %i.ab to i64
  %i.ek = icmp ugt i32 %.sroa.17.0, 64
  br i1 %i.ek, label %.preheader, label %.lr.ph197, !prof !32

.lr.ph197:                                        ; preds = %.preheader159, %bb.q
  %.5.i196 = phi ptr [ %i.ff, %bb.q ], [ %.4.i, %.preheader159 ] ; 4 uses
  %.sroa.17.2194 = phi i32 [ %i.fb, %bb.q ], [ %.sroa.17.0, %.preheader159 ] ; 3 uses
  %.sroa.62131.1193 = phi ptr [ %.sroa.62131.4, %bb.q ], [ %.sroa.62131.0, %.preheader159 ] ; 4 uses
  %.not.i61 = icmp ult ptr %.sroa.62131.1193, %i.ac
  %8 = lshr i32 %.sroa.17.2194, 3                 ; 2 uses
  %9 = zext nneg i32 %8 to i64
  %10 = sub nsw i64 0, %9
  %11 = getelementptr inbounds i8, ptr %.sroa.62131.1193, i64 %10 ; 2 uses
  br i1 %.not.i61, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph197
  %i.el = and i32 %.sroa.17.2194, 7
  br label %BIT_reloadDStream.exit67

bb.p:                                             ; preds = %.lr.ph197
  %12 = icmp uge ptr %11, %i.ab                   ; 2 uses
  %13 = ptrtoint ptr %.sroa.62131.1193 to i64
  %i.em = sub i64 %13, %i.ej
  %14 = trunc i64 %i.em to i32
  %.021.i63 = select i1 %12, i32 %8, i32 %14      ; 2 uses
  %15 = zext i32 %.021.i63 to i64
  %i.en = sub nsw i64 0, %15
  %16 = getelementptr inbounds i8, ptr %.sroa.62131.1193, i64 %i.en
  %i.eo = shl i32 %.021.i63, 3
  %i.ep = sub i32 %.sroa.17.2194, %i.eo
  br label %BIT_reloadDStream.exit67

BIT_reloadDStream.exit67:                         ; preds = %bb.o, %bb.p
  %.sroa.62131.4 = phi ptr [ %11, %bb.o ], [ %16, %bb.p ] ; 2 uses
  %.sroa.17.6 = phi i32 [ %i.el, %bb.o ], [ %i.ep, %bb.p ] ; 3 uses
  %.022.i62 = phi i1 [ true, %bb.o ], [ %12, %bb.p ]
  %.sroa.0.5 = load i64, ptr %.sroa.62131.4, align 1, !tbaa !26 ; 3 uses
  %i.eq = icmp ule ptr %.5.i196, %i.ei
  %i.er = and i1 %i.eq, %.022.i62
  br i1 %i.er, label %bb.q, label %.preheader

.preheader:                                       ; preds = %BIT_reloadDStream.exit67, %bb.q, %.preheader159
  %.5.i.lcssa = phi ptr [ %.4.i, %.preheader159 ], [ %.5.i196, %BIT_reloadDStream.exit67 ], [ %i.ff, %bb.q ] ; 3 uses
  %.sroa.0.5187 = phi i64 [ %.sroa.0.0, %.preheader159 ], [ %.sroa.0.5, %bb.q ], [ %.sroa.0.5, %BIT_reloadDStream.exit67 ] ; 3 uses
  %.sroa.17.6186 = phi i32 [ %.sroa.17.0, %.preheader159 ], [ %.sroa.17.6, %BIT_reloadDStream.exit67 ], [ %i.fb, %bb.q ] ; 2 uses
  %.not.i165 = icmp ugt ptr %.5.i.lcssa, %i.ei
  br i1 %.not.i165, label %.loopexit, label %.lr.ph

bb.q:                                             ; preds = %BIT_reloadDStream.exit67
  %i.es = and i32 %.sroa.17.6, 63
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = shl i64 %.sroa.0.5, %i.et
  %i.ev = lshr i64 %i.eu, 53
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ev ; 3 uses
  %i.ex = load i16, ptr %i.ew, align 2
  store i16 %i.ex, ptr %.5.i196, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 2
  %i.ez = load i8, ptr %i.ey, align 2, !tbaa !29
  %i.fa = zext i8 %i.ez to i32
  %i.fb = add i32 %.sroa.17.6, %i.fa              ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 3
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !30
  %i.fe = zext i8 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %.5.i196, i64 %i.fe ; 2 uses
  %i.fg = icmp ugt i32 %i.fb, 64
  br i1 %i.fg, label %.preheader, label %.lr.ph197, !prof !31, !llvm.loop !2

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.6.i167 = phi ptr [ %i.fu, %.lr.ph ], [ %.5.i.lcssa, %.preheader ] ; 2 uses
  %.sroa.17.3166 = phi i32 [ %i.fq, %.lr.ph ], [ %.sroa.17.6186, %.preheader ] ; 2 uses
  %i.fh = and i32 %.sroa.17.3166, 63
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = shl i64 %.sroa.0.5187, %i.fi
  %i.fk = lshr i64 %i.fj, 53
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fk ; 3 uses
  %i.fm = load i16, ptr %i.fl, align 2
  store i16 %i.fm, ptr %.6.i167, align 1
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  %i.fo = load i8, ptr %i.fn, align 2, !tbaa !29
  %i.fp = zext i8 %i.fo to i32
  %i.fq = add i32 %.sroa.17.3166, %i.fp           ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 3
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !30
  %i.ft = zext i8 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %.6.i167, i64 %i.ft ; 3 uses
  %.not.i = icmp ugt ptr %i.fu, %i.ei
  br i1 %.not.i, label %.loopexit, label %.lr.ph, !llvm.loop !3

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %BIT_reloadDStream.exit74
  %.sroa.17.1 = phi i32 [ %.sroa.17.0, %BIT_reloadDStream.exit74 ], [ %.sroa.17.6186, %.preheader ], [ %i.fq, %.lr.ph ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %BIT_reloadDStream.exit74 ], [ %.sroa.0.5187, %.preheader ], [ %.sroa.0.5187, %.lr.ph ]
  %.7.i = phi ptr [ %.4.i, %BIT_reloadDStream.exit74 ], [ %.5.i.lcssa, %.preheader ], [ %i.fu, %.lr.ph ] ; 4 uses
  %i.fv = icmp ult ptr %.7.i, %.1
  br i1 %i.fv, label %HUF_decodeLastSymbolX2.exit, label %bb.r

HUF_decodeLastSymbolX2.exit:                      ; preds = %.loopexit
  %i.fw = and i32 %.sroa.17.1, 63
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = shl i64 %.sroa.0.1, %i.fx
  %i.fz = lshr i64 %i.fy, 53
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 2
  store i8 %i.gb, ptr %.7.i, align 1
  %i.gc = getelementptr inbounds nuw i8, ptr %.7.i, i64 1
  br label %bb.r

bb.r:                                             ; preds = %HUF_decodeLastSymbolX2.exit, %.loopexit
  %.8.i = phi ptr [ %i.gc, %HUF_decodeLastSymbolX2.exit ], [ %.7.i, %.loopexit ]
  %i.gd = ptrtoint ptr %.8.i to i64
  %i.ge = sub i64 %i.gd, %i.ae
  %i.gf = load ptr, ptr %i.o, align 8, !tbaa !53
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.ge ; 2 uses
  store ptr %i.gg, ptr %i.o, align 8, !tbaa !53
  %.not56 = icmp eq ptr %i.gg, %.1
  br i1 %.not56, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.r, %bb.c, %bb.e, %bb.d, %bb.a
  %.6 = phi i64 [ %i.c, %bb.a ], [ -20, %bb.d ], [ -20, %bb.e ], [ %1, %bb.c ], [ -20, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret i64 %.6
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i64 -20, 2) i64 @HUF_DecompressFastArgs_init(ptr nofree noundef nonnull writeonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.val = load i32, ptr %5, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %4, 10
  br i1 %i.d, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %.val, 16711680
  %.not = icmp eq i32 %i.e, 720896
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.val83 = load i16, ptr %3, align 1, !tbaa !39  ; 2 uses
  %i.f = zext i16 %.val83 to i64                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 2
  %.val82 = load i16, ptr %i.g, align 1, !tbaa !39 ; 2 uses
  %i.h = zext i16 %.val82 to i64                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.val81 = load i16, ptr %i.i, align 1, !tbaa !39 ; 2 uses
  %i.j = zext i16 %.val81 to i64                  ; 2 uses
  %i.k = add nuw nsw i64 %i.f, 6
  %i.l = add nuw nsw i64 %i.k, %i.h
  %i.m = add nuw nsw i64 %i.l, %i.j               ; 2 uses
  %i.n = sub i64 %4, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 6 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.o, ptr %i.p, align 8, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.q, ptr %i.r, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.h ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.s, ptr %i.t, align 8, !tbaa !53
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.j ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.u, ptr %i.v, align 8, !tbaa !53
  %i.w = icmp ugt i16 %.val83, 7
  %i.x = icmp ugt i16 %.val82, 7
  %or.cond.not95 = select i1 %i.w, i1 %i.x, i1 false
  %i.y = icmp ugt i16 %.val81, 7
  %or.cond3.not92 = select i1 %or.cond.not95, i1 %i.y, i1 false
  %i.z = icmp ugt i64 %i.n, 7
  %or.cond5.not = select i1 %or.cond3.not92, i1 %i.z, i1 false ; 2 uses
  %i.aa = icmp ule i64 %i.m, %4
  %.074 = select i1 %or.cond5.not, i64 -20, i64 0
  %cond = select i1 %or.cond5.not, i1 %i.aa, i1 false
  br i1 %cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 2 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !53
  %i.ac = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !53
  %i.ae = getelementptr inbounds i8, ptr %i.u, i64 -8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !53
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !53
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.aj, align 8, !tbaa !53
  %i.ak = add i64 %2, 3
  %i.al = lshr i64 %i.ak, 2                       ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.am, ptr %i.an, align 8, !tbaa !53
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !53
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.al
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !53
  %i.as = mul nuw nsw i64 %i.al, 3
  %.not79 = icmp sgt i64 %2, %i.as
  br i1 %.not79, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds i8, ptr %i.q, i64 -1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !20  ; 2 uses
  %.not.i = icmp eq i8 %i.au, 0
  %i.av = zext i8 %i.au to i32
  %i.aw = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.av, i1 true)
  %i.ax = xor i32 %i.aw, 31
  %i.ay = sub nuw nsw i32 8, %i.ax
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = select i1 %.not.i, i64 0, i64 %i.az
  %.val.i = load i64, ptr %i.ab, align 1, !tbaa !26
  %i.bb = or i64 %.val.i, 1
  %i.bc = shl i64 %i.bb, %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !26
  %i.be = getelementptr inbounds i8, ptr %i.s, i64 -1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !20  ; 2 uses
  %.not.i84 = icmp eq i8 %i.bf, 0
  %i.bg = zext i8 %i.bf to i32
  %i.bh = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.bg, i1 true)
  %i.bi = xor i32 %i.bh, 31
  %i.bj = sub nuw nsw i32 8, %i.bi
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = select i1 %.not.i84, i64 0, i64 %i.bk
  %.val.i85 = load i64, ptr %i.ac, align 1, !tbaa !26
  %i.bm = or i64 %.val.i85, 1
  %i.bn = shl i64 %i.bm, %i.bl
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !26
  %i.bp = getelementptr inbounds i8, ptr %i.u, i64 -1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !20  ; 2 uses
  %.not.i86 = icmp eq i8 %i.bq, 0
  %i.br = zext i8 %i.bq to i32
  %i.bs = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.br, i1 true)
  %i.bt = xor i32 %i.bs, 31
  %i.bu = sub nuw nsw i32 8, %i.bt
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = select i1 %.not.i86, i64 0, i64 %i.bv
  %.val.i87 = load i64, ptr %i.ae, align 1, !tbaa !26
  %i.bx = or i64 %.val.i87, 1
  %i.by = shl i64 %i.bx, %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !26
  %i.ca = getelementptr inbounds i8, ptr %i.ag, i64 -1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !20  ; 2 uses
  %.not.i88 = icmp eq i8 %i.cb, 0
  %i.cc = zext i8 %i.cb to i32
  %i.cd = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.cc, i1 true)
  %i.ce = xor i32 %i.cd, 31
  %i.cf = sub nuw nsw i32 8, %i.ce
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = select i1 %.not.i88, i64 0, i64 %i.cg
  %.val.i89 = load i64, ptr %i.ah, align 1, !tbaa !26
  %i.ci = or i64 %.val.i89, 1
  %i.cj = shl i64 %i.ci, %i.ch
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !26
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %3, ptr %i.cl, align 8, !tbaa !51
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.b, ptr %i.cm, align 8, !tbaa !52
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.a, ptr %i.cn, align 8, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.b, %bb.a, %bb.d, %bb.f
  %.1 = phi i64 [ %.074, %bb.d ], [ 1, %bb.f ], [ 0, %bb.a ], [ -20, %bb.b ], [ 0, %bb.c ], [ 0, %bb.e ]
  ret i64 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @HUF_decompress4X1_usingDTable_internal_fast_c_loop(ptr nofree noundef captures(none) %0) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0142.0.copyload = load i64, ptr %i.g, align 8
end_hunk_2
begin_hunk_3_@HUF_decompress4X1_usingDTable_internal_bmi2:bb.a

bb.ch:                                            ; preds = %bb.cf
  %i.agj = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !48 ; 3 uses
  %i.agl = icmp eq ptr %i.agb, %i.agk
  br i1 %i.agl, label %BIT_reloadDStream.exit.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.agm = lshr i32 %i.acy, 3                     ; 2 uses
  %i.agn = zext nneg i32 %i.agm to i64
  %i.ago = sub nsw i64 0, %i.agn
  %i.agp = getelementptr inbounds i8, ptr %i.agb, i64 %i.ago
  %i.agq = icmp ult ptr %i.agp, %i.agk
  %i.agr = ptrtoint ptr %i.agb to i64
  %i.ags = ptrtoint ptr %i.agk to i64
  %i.agt = sub i64 %i.agr, %i.ags
  %i.agu = trunc i64 %i.agt to i32
  %.021.i.i.i = select i1 %i.agq, i32 %i.agu, i32 %i.agm ; 2 uses
  %i.agv = zext i32 %.021.i.i.i to i64
  %i.agw = sub nsw i64 0, %i.agv
  %i.agx = getelementptr inbounds i8, ptr %i.agb, i64 %i.agw ; 3 uses
  store ptr %i.agx, ptr %i.aga, align 8, !tbaa !45
  %i.agy = shl i32 %.021.i.i.i, 3
  %i.agz = sub i32 %i.acy, %i.agy                 ; 2 uses
  store i32 %i.agz, ptr %i.acx, align 8, !tbaa !44
  %.val11 = load i64, ptr %i.agx, align 1, !tbaa !26
  store i64 %.val11, ptr %5, align 8, !tbaa !47
  br label %BIT_reloadDStream.exit.i.i

BIT_reloadDStream.exit.i.i:                       ; preds = %bb.ca, %BIT_reloadDStream.exit43.i.i, %bb.ch, %._crit_edge, %bb.ce, %bb.cg, %bb.ci
  %i.aha = phi i32 [ %i.adg, %._crit_edge ], [ %i.acy, %bb.ce ], [ %i.agz, %bb.ci ], [ %i.acy, %bb.ch ], [ %i.agi, %bb.cg ], [ %i.adj, %bb.ca ], [ %.val81, %BIT_reloadDStream.exit43.i.i ]
  %i.ahb = phi ptr [ @BIT_reloadDStream.zeroFilled, %._crit_edge ], [ @BIT_reloadDStream.zeroFilled, %bb.ce ], [ %i.agx, %bb.ci ], [ %i.agb, %bb.ch ], [ %i.agh, %bb.cg ], [ %i.adi, %bb.ca ], [ %storemerge.in, %BIT_reloadDStream.exit43.i.i ]
  %.3.i.i = phi ptr [ %.0.i.i.lcssa, %._crit_edge ], [ %.3149.i, %bb.ce ], [ %.3149.i, %bb.ci ], [ %.3149.i, %bb.ch ], [ %.3149.i, %bb.cg ], [ %.0.i.i478, %BIT_reloadDStream.exit43.i.i ], [ %.0.i.i478, %bb.ca ] ; 6 uses
  %i.ahc = icmp ult ptr %.3.i.i, %i.d
  br i1 %i.ahc, label %.lr.ph482, label %HUF_decodeStreamX1.exit.i

.lr.ph482:                                        ; preds = %BIT_reloadDStream.exit.i.i
  %.3.i.i495 = ptrtoaddr ptr %.3.i.i to i64       ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  %i.ahe = sub nsw i32 0, %.sroa.3.0.extract.shift.i
  %i.ahf = and i32 %i.ahe, 63
  %i.ahg = zext nneg i32 %i.ahf to i64            ; 3 uses
  %i.ahh = add i64 %1, %i.a                       ; 2 uses
  %i.ahi = sub i64 %i.ahh, %.3.i.i495             ; 2 uses
  %scevgep496 = getelementptr i8, ptr %.3.i.i, i64 %i.ahi
  %.neg590 = add i64 %.3.i.i495, 1
  %xtraiter587 = and i64 %i.ahi, 1
  %lcmp.mod588.not = icmp eq i64 %xtraiter587, 0
  br i1 %lcmp.mod588.not, label %.prol.loopexit586, label %.prol.loopexit586.unr-lcssa

.prol.loopexit586.unr-lcssa:                      ; preds = %.lr.ph482
  %.val82.prol = load i64, ptr %5, align 8, !tbaa !47
  %.val83.prol = load i32, ptr %i.ahd, align 8, !tbaa !44 ; 2 uses
  %i.ahj = and i32 %.val83.prol, 63
  %i.ahk = zext nneg i32 %i.ahj to i64
  %i.ahl = shl i64 %.val82.prol, %i.ahk
  %i.ahm = lshr i64 %i.ahl, %i.ahg
  %i.ahn = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ahm ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 1
  %i.ahp = load i8, ptr %i.aho, align 1, !tbaa !37
  %i.ahq = load i8, ptr %i.ahn, align 1, !tbaa !38
  %i.ahr = zext i8 %i.ahq to i32
  %i.ahs = add i32 %.val83.prol, %i.ahr
  store i32 %i.ahs, ptr %i.ahd, align 8, !tbaa !44
  %i.aht = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 1
  store i8 %i.ahp, ptr %.3.i.i, align 1, !tbaa !20
  br label %.prol.loopexit586

.prol.loopexit586:                                ; preds = %.prol.loopexit586.unr-lcssa, %.lr.ph482
  %.6.i.i481.unr = phi ptr [ %.3.i.i, %.lr.ph482 ], [ %i.aht, %.prol.loopexit586.unr-lcssa ]
  %i.ahu = icmp eq i64 %i.ahh, %.neg590
  br i1 %i.ahu, label %HUF_decodeStreamX1.exit.i.loopexit, label %.lr.ph482.new

.lr.ph482.new:                                    ; preds = %.prol.loopexit586, %.lr.ph482.new
  %.6.i.i481 = phi ptr [ %i.aiq, %.lr.ph482.new ], [ %.6.i.i481.unr, %.prol.loopexit586 ] ; 3 uses
  %.val82 = load i64, ptr %5, align 8, !tbaa !47
  %.val83 = load i32, ptr %i.ahd, align 8, !tbaa !44 ; 2 uses
  %i.ahv = and i32 %.val83, 63
  %i.ahw = zext nneg i32 %i.ahv to i64
  %i.ahx = shl i64 %.val82, %i.ahw
  %i.ahy = lshr i64 %i.ahx, %i.ahg
  %i.ahz = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ahy ; 2 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 1
  %i.aib = load i8, ptr %i.aia, align 1, !tbaa !37
  %i.aic = load i8, ptr %i.ahz, align 1, !tbaa !38
  %i.aid = zext i8 %i.aic to i32
  %i.aie = add i32 %.val83, %i.aid
  store i32 %i.aie, ptr %i.ahd, align 8, !tbaa !44
  %i.aif = getelementptr inbounds nuw i8, ptr %.6.i.i481, i64 1
  store i8 %i.aib, ptr %.6.i.i481, align 1, !tbaa !20
  %.val82.1 = load i64, ptr %5, align 8, !tbaa !47
  %.val83.1 = load i32, ptr %i.ahd, align 8, !tbaa !44 ; 2 uses
  %i.aig = and i32 %.val83.1, 63
  %i.aih = zext nneg i32 %i.aig to i64
  %i.aii = shl i64 %.val82.1, %i.aih
  %i.aij = lshr i64 %i.aii, %i.ahg
  %i.aik = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.aij ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 1
  %i.aim = load i8, ptr %i.ail, align 1, !tbaa !37
  %i.ain = load i8, ptr %i.aik, align 1, !tbaa !38
  %i.aio = zext i8 %i.ain to i32
  %i.aip = add i32 %.val83.1, %i.aio
  store i32 %i.aip, ptr %i.ahd, align 8, !tbaa !44
  %i.aiq = getelementptr inbounds nuw i8, ptr %.6.i.i481, i64 2 ; 2 uses
  store i8 %i.aim, ptr %i.aif, align 1, !tbaa !20
  %exitcond497.not.1 = icmp eq ptr %i.aiq, %scevgep496
  br i1 %exitcond497.not.1, label %HUF_decodeStreamX1.exit.i.loopexit, label %.lr.ph482.new, !llvm.loop !5

HUF_decodeStreamX1.exit.i.loopexit:               ; preds = %.lr.ph482.new, %.prol.loopexit586
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.pre499 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !45
  %.pre501 = load i32, ptr %i.ahd, align 8
  br label %HUF_decodeStreamX1.exit.i

HUF_decodeStreamX1.exit.i:                        ; preds = %HUF_decodeStreamX1.exit.i.loopexit, %BIT_reloadDStream.exit.i.i
  %i.air = phi i32 [ %.pre501, %HUF_decodeStreamX1.exit.i.loopexit ], [ %i.aha, %BIT_reloadDStream.exit.i.i ]
  %i.ais = phi ptr [ %.pre499, %HUF_decodeStreamX1.exit.i.loopexit ], [ %i.ahb, %BIT_reloadDStream.exit.i.i ]
  %i.ait = icmp ne ptr %.sroa.69266.2, %i.p
  %i.aiu = icmp ne i32 %.sroa.25248.3.lcssa, 64
  %narrow.not363 = select i1 %i.ait, i1 true, i1 %i.aiu
  %i.aiv = icmp ne ptr %.sroa.69200.2, %i.q
  %i.aiw = icmp ne i32 %.sroa.25182.3.lcssa, 64
  %narrow355.not366 = select i1 %i.aiv, i1 true, i1 %i.aiw
  %.not = or i1 %narrow.not363, %narrow355.not366
  %i.aix = icmp ne ptr %.sroa.69136.2, %i.r
  %i.aiy = icmp ne i32 %.sroa.25.3.lcssa, 64
  %narrow356.not369 = select i1 %i.aix, i1 true, i1 %i.aiy
  %.not360 = or i1 %.not, %narrow356.not369
  %i.aiz = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !48
  %i.ajb = icmp ne ptr %i.ais, %i.aja
  %i.ajc = icmp ne i32 %i.air, 64
  %narrow357.not372 = select i1 %i.ajb, i1 true, i1 %i.ajc
  %.not358 = or i1 %.not360, %narrow357.not372
  %spec.select.i = select i1 %.not358, i64 -20, i64 %1
  br label %BIT_initDStream.exit.thread

BIT_initDStream.exit.thread:                      ; preds = %bb.ak, %bb.aa, %bb.ac, %bb.y, %bb.o, %bb.q, %bb.m, %bb.c, %bb.e, %HUF_decodeStreamX1.exit.i, %.loopexit, %bb.am, %bb.b
  %.5.i = phi i64 [ %spec.select.i, %HUF_decodeStreamX1.exit.i ], [ -20, %bb.b ], [ -1, %bb.q ], [ -20, %.loopexit ], [ -1, %bb.e ], [ %i.gh, %bb.am ], [ -20, %bb.m ], [ -72, %bb.c ], [ -20, %bb.y ], [ -72, %bb.o ], [ -20, %bb.ak ], [ -72, %bb.aa ], [ -1, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %HUF_decompress4X1_usingDTable_internal_body.exit

HUF_decompress4X1_usingDTable_internal_body.exit: ; preds = %bb.a, %BIT_initDStream.exit.thread
  %.6.i = phi i64 [ %.5.i, %BIT_initDStream.exit.thread ], [ -20, %bb.a ]
  ret i64 %.6.i
}

declare hidden void @HUF_decompress4X1_usingDTable_internal_fast_asm_loop(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal fastcc i64 @HUF_decompress4X1_usingDTable_internal_fast(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #12 {
bb.a:
  %6 = alloca %struct.HUF_DecompressFastArgs, align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 7 uses
  %.idx.i = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.c = call fastcc i64 @HUF_DecompressFastArgs_init(ptr noundef %6, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  call void %5(ptr noundef nonnull %6) #16, !callees !144
  %i.e = add i64 %1, 3
  %i.f = lshr i64 %i.e, 2                         ; 2 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 104
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond125 = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond125, label %.thread, label %bb.d, !llvm.loop !143

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %.044121 = phi ptr [ %0, %bb.b ], [ %.1, %bb.c ] ; 2 uses
  %i.l = ptrtoint ptr %.044121 to i64
  %i.m = sub i64 %i.g, %i.l
  %.not54 = icmp ugt i64 %i.f, %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %.044121, i64 %i.f
  %.1 = select i1 %.not54, ptr %i.b, ptr %i.n     ; 7 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !53   ; 6 uses
  %i.q = icmp ugt ptr %i.p, %.1
  br i1 %i.q, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !53   ; 9 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !53
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = icmp ult ptr %i.s, %i.v
  br i1 %i.w, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val.i = load i64, ptr %i.s, align 1, !tbaa !26
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.y = load i64, ptr %i.x, align 8, !tbaa !26
  %i.z = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.y, i1 true) ; 2 uses
  %i.aa = trunc nuw nsw i64 %i.z to i32           ; 5 uses
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !51  ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = ptrtoint ptr %.1 to i64                 ; 3 uses
  %i.ae = ptrtoint ptr %i.p to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 3
  br i1 %i.ag, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.f
  %i.ah = ptrtoint ptr %i.ab to i64
  %i.ai = getelementptr inbounds i8, ptr %.1, i64 -3
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.j
  %.0.i118 = phi ptr [ %i.p, %.preheader ], [ %i.cm, %bb.j ] ; 7 uses
  %.sroa.12.3116 = phi i32 [ %i.aa, %.preheader ], [ %i.cl, %bb.j ] ; 3 uses
  %.sroa.3892.0115 = phi ptr [ %i.s, %.preheader ], [ %.sroa.3892.1, %bb.j ] ; 4 uses
  %.not.i37.i = icmp ult ptr %.sroa.3892.0115, %i.ac
  %7 = lshr i32 %.sroa.12.3116, 3                 ; 3 uses
  br i1 %.not.i37.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = and i32 %.sroa.12.3116, 7
  br label %BIT_reloadDStream.exit43.i

bb.i:                                             ; preds = %bb.g
  %i.ak = zext nneg i32 %7 to i64
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds i8, ptr %.sroa.3892.0115, i64 %i.al
  %i.an = icmp uge ptr %i.am, %i.ab               ; 2 uses
  %i.ao = ptrtoint ptr %.sroa.3892.0115 to i64
  %i.ap = sub i64 %i.ao, %i.ah
  %i.aq = trunc i64 %i.ap to i32
  %.021.i39.i = select i1 %i.an, i32 %7, i32 %i.aq ; 2 uses
  %i.ar = shl i32 %.021.i39.i, 3
  %i.as = sub i32 %.sroa.12.3116, %i.ar
  br label %BIT_reloadDStream.exit43.i

BIT_reloadDStream.exit43.i:                       ; preds = %bb.i, %bb.h
  %.pn114.in = phi i32 [ %7, %bb.h ], [ %.021.i39.i, %bb.i ]
  %.sroa.12.4 = phi i32 [ %i.aj, %bb.h ], [ %i.as, %bb.i ] ; 3 uses
  %.022.i38.i = phi i1 [ true, %bb.h ], [ %i.an, %bb.i ]
  %.pn114 = zext i32 %.pn114.in to i64
  %.pn = sub nsw i64 0, %.pn114
  %.sroa.3892.1 = getelementptr inbounds i8, ptr %.sroa.3892.0115, i64 %.pn ; 2 uses
  %.sroa.0.3 = load i64, ptr %.sroa.3892.1, align 1, !tbaa !26 ; 6 uses
  %i.at = icmp ult ptr %.0.i118, %i.ai
  %i.au = and i1 %i.at, %.022.i38.i
  br i1 %i.au, label %bb.j, label %BIT_reloadDStream.exit.i

bb.j:                                             ; preds = %BIT_reloadDStream.exit43.i
  %i.av = and i32 %.sroa.12.4, 63
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl i64 %.sroa.0.3, %i.aw
  %i.ay = lshr i64 %i.ax, 53
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !37
  %i.bc = load i8, ptr %i.az, align 1, !tbaa !38
  %i.bd = zext i8 %i.bc to i32
  %i.be = add i32 %.sroa.12.4, %i.bd              ; 2 uses
  store i8 %i.bb, ptr %.0.i118, align 1, !tbaa !20
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i118, i64 1
  %i.bg = and i32 %i.be, 63
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl i64 %.sroa.0.3, %i.bh
  %i.bj = lshr i64 %i.bi, 53
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !37
  %i.bn = load i8, ptr %i.bk, align 1, !tbaa !38
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add i32 %i.be, %i.bo                    ; 2 uses
  store i8 %i.bm, ptr %i.bf, align 1, !tbaa !20
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i118, i64 2
  %i.br = and i32 %i.bp, 63
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl i64 %.sroa.0.3, %i.bs
  %i.bu = lshr i64 %i.bt, 53
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !37
  %i.by = load i8, ptr %i.bv, align 1, !tbaa !38
  %i.bz = zext i8 %i.by to i32
  %i.ca = add i32 %i.bp, %i.bz                    ; 2 uses
  store i8 %i.bx, ptr %i.bq, align 1, !tbaa !20
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i118, i64 3
  %i.cc = and i32 %i.ca, 63
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = shl i64 %.sroa.0.3, %i.cd
  %i.cf = lshr i64 %i.ce, 53
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !37
  %i.cj = load i8, ptr %i.cg, align 1, !tbaa !38
  %i.ck = zext i8 %i.cj to i32
  %i.cl = add i32 %i.ca, %i.ck                    ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i118, i64 4 ; 2 uses
  store i8 %i.ci, ptr %i.cb, align 1, !tbaa !20
  %i.cn = icmp ugt i32 %i.cl, 64
  br i1 %i.cn, label %BIT_reloadDStream.exit.i, label %bb.g, !prof !54, !llvm.loop !4

bb.k:                                             ; preds = %bb.f
  %.not.i.i = icmp ult ptr %i.s, %i.ac
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.co = lshr i64 %i.z, 3
  %i.cp = sub nsw i64 0, %i.co
  %i.cq = getelementptr inbounds i8, ptr %i.s, i64 %i.cp
  %i.cr = and i32 %i.aa, 7
  %.val.i72 = load i64, ptr %i.cq, align 1, !tbaa !26
  br label %BIT_reloadDStream.exit.i

bb.m:                                             ; preds = %bb.k
  %i.cs = icmp eq ptr %i.s, %i.ab
  br i1 %i.cs, label %BIT_reloadDStream.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = lshr i32 %i.aa, 3                       ; 2 uses
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = sub nsw i64 0, %i.cu
  %i.cw = getelementptr inbounds i8, ptr %i.s, i64 %i.cv
  %i.cx = icmp ult ptr %i.cw, %i.ab
  %i.cy = ptrtoint ptr %i.s to i64
  %i.cz = ptrtoint ptr %i.ab to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = trunc i64 %i.da to i32
  %.021.i.i = select i1 %i.cx, i32 %i.db, i32 %i.ct ; 2 uses
  %i.dc = zext i32 %.021.i.i to i64
  %i.dd = sub nsw i64 0, %i.dc
  %i.de = getelementptr inbounds i8, ptr %i.s, i64 %i.dd
  %i.df = shl i32 %.021.i.i, 3
  %i.dg = sub i32 %i.aa, %i.df
  %.val59 = load i64, ptr %i.de, align 1, !tbaa !26
  br label %BIT_reloadDStream.exit.i

BIT_reloadDStream.exit.i:                         ; preds = %bb.j, %BIT_reloadDStream.exit43.i, %bb.m, %bb.l, %bb.n
  %.sroa.12.1 = phi i32 [ %i.aa, %bb.m ], [ %i.dg, %bb.n ], [ %i.cr, %bb.l ], [ %.sroa.12.4, %BIT_reloadDStream.exit43.i ], [ %i.cl, %bb.j ] ; 3 uses
  %.sroa.0.1 = phi i64 [ %.val.i, %bb.m ], [ %.val59, %bb.n ], [ %.val.i72, %bb.l ], [ %.sroa.0.3, %BIT_reloadDStream.exit43.i ], [ %.sroa.0.3, %bb.j ] ; 3 uses
  %.3.i = phi ptr [ %i.p, %bb.m ], [ %i.p, %bb.n ], [ %i.p, %bb.l ], [ %.0.i118, %BIT_reloadDStream.exit43.i ], [ %i.cm, %bb.j ] ; 5 uses
  %i.dh = icmp ult ptr %.3.i, %.1
  br i1 %i.dh, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %BIT_reloadDStream.exit.i
  %.3.i131 = ptrtoaddr ptr %.3.i to i64           ; 2 uses
  %i.di = sub i64 %i.ad, %.3.i131
  %xtraiter = and i64 %i.di, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.dj = and i32 %.sroa.12.1, 63
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = shl i64 %.sroa.0.1, %i.dk
  %i.dm = lshr i64 %i.dl, 53
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !37
  %i.dq = load i8, ptr %i.dn, align 1, !tbaa !38
  %i.dr = zext i8 %i.dq to i32
  %i.ds = add i32 %.sroa.12.1, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %.3.i, i64 1
  store i8 %i.dp, ptr %.3.i, align 1, !tbaa !20
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.6.i120.unr = phi ptr [ %.3.i, %.lr.ph.preheader ], [ %i.dt, %.lr.ph.prol ]
  %.sroa.12.2119.unr = phi i32 [ %.sroa.12.1, %.lr.ph.preheader ], [ %i.ds, %.lr.ph.prol ]
  %i.du = add i64 %i.ad, -1
  %i.dv = icmp eq i64 %i.du, %.3.i131
  br i1 %i.dv, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.6.i120 = phi ptr [ %i.er, %.lr.ph ], [ %.6.i120.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.sroa.12.2119 = phi i32 [ %i.eq, %.lr.ph ], [ %.sroa.12.2119.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.dw = and i32 %.sroa.12.2119, 63
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = shl i64 %.sroa.0.1, %i.dx
  %i.dz = lshr i64 %i.dy, 53
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !37
  %i.ed = load i8, ptr %i.ea, align 1, !tbaa !38
  %i.ee = zext i8 %i.ed to i32
  %i.ef = add i32 %.sroa.12.2119, %i.ee           ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.6.i120, i64 1
  store i8 %i.ec, ptr %.6.i120, align 1, !tbaa !20
  %i.eh = and i32 %i.ef, 63
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = shl i64 %.sroa.0.1, %i.ei
  %i.ek = lshr i64 %i.ej, 53
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ek ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 1
  %i.en = load i8, ptr %i.em, align 1, !tbaa !37
  %i.eo = load i8, ptr %i.el, align 1, !tbaa !38
  %i.ep = zext i8 %i.eo to i32
  %i.eq = add i32 %i.ef, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %.6.i120, i64 2 ; 2 uses
  store i8 %i.en, ptr %i.eg, align 1, !tbaa !20
  %exitcond.not.1 = icmp eq ptr %i.er, %.1
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !5

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %BIT_reloadDStream.exit.i
  %i.es = load ptr, ptr %i.o, align 8, !tbaa !53
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.af ; 2 uses
  store ptr %i.et, ptr %i.o, align 8, !tbaa !53
  %.not56 = icmp eq ptr %i.et, %.1
  br i1 %.not56, label %bb.c, label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.c, %bb.e, %bb.d, %bb.a
  %.6 = phi i64 [ %i.c, %bb.a ], [ -20, %bb.d ], [ -20, %bb.e ], [ %1, %bb.c ], [ -20, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret i64 %.6
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }

!llvm.module.flags = !{!8, !9, !10, !11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{!0, !21}
!1 = distinct !{!1, !21}
!2 = distinct !{!2, !21}
!3 = distinct !{!3, !21}
!4 = distinct !{!4, !21}
!5 = distinct !{!5, !21}
!6 = distinct !{!6, !21}
!7 = distinct !{!7, !21}
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!14 = !{!"Simple C/C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!"__libc_errno", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!16, !16, i64 0}
!20 = !{!15, !15, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = !{!"long", !15, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"short", !15, i64 0}
!28 = !{!"", !27, i64 0, !15, i64 2, !15, i64 3}
!29 = !{!28, !15, i64 2}
!30 = !{!28, !15, i64 3}
!31 = !{!"branch_weights", i32 127, i32 255873}
!32 = !{!"branch_weights", i32 1, i32 127}
!33 = !{!"", !16, i64 0, !16, i64 4}
!34 = !{!33, !16, i64 0}
!35 = !{!33, !16, i64 4}
!36 = !{!"", !15, i64 0, !15, i64 1}
!37 = !{!36, !15, i64 1}
!38 = !{!36, !15, i64 0}
!39 = !{!27, !27, i64 0}
!40 = !{!"any pointer", !15, i64 0}
!41 = !{!"p1 omnipotent char", !40, i64 0}
!42 = !{!"", !25, i64 0, !16, i64 8, !41, i64 16, !41, i64 24, !41, i64 32}
!43 = !{!42, !41, i64 32}
!44 = !{!42, !16, i64 8}
!45 = !{!42, !41, i64 16}
!46 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!47 = !{!42, !25, i64 0}
!48 = !{!42, !41, i64 24}
!49 = !{!"", !15, i64 0, !15, i64 32, !15, i64 64, !40, i64 96, !41, i64 104, !41, i64 112, !15, i64 120}
!50 = !{!49, !40, i64 96}
!51 = !{!49, !41, i64 104}
!52 = !{!49, !41, i64 112}
!53 = !{!41, !41, i64 0}
!54 = !{!"branch_weights", i32 1, i32 1999}
!55 = distinct !{!55, !21, !22, !23}
!56 = distinct !{!56, !21, !22, !23}
!57 = distinct !{!57, !21, !23, !22}
!58 = distinct !{!58, !21}
!59 = distinct !{!59, !24}
!60 = distinct !{!60, !21}
!61 = distinct !{!61, !21}
!62 = distinct !{!62, !21}
!63 = distinct !{!63, !"LVerDomain"}
!64 = distinct !{!64, !63}
!65 = distinct !{!65, !63}
!66 = distinct !{!66, !21, !22, !23}
!67 = distinct !{!67, !21, !22, !23}
!68 = distinct !{!68, !24}
!69 = distinct !{!69, !21, !22}
!70 = distinct !{!70, !21}
!71 = distinct !{!71, !21}
!72 = distinct !{!72, !21}
!73 = distinct !{!73, !21}
!74 = distinct !{!74, !24}
!75 = distinct !{!75, !21}
!76 = distinct !{!76, !21}
!77 = !{!"branch_weights", i32 8, i32 24}
!78 = !{!64}
end_hunk_3

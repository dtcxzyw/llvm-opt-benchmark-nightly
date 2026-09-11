Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/huf_decompress?download=true
inline.NumInlined: 435
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 34
begin_hunk_0_@HUF_decompress1X2_usingDTable_internal:bb.a
  %i.dn = add i32 %i.cz, %i.dm                    ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 3
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !26
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
  %i.dz = load i8, ptr %i.dy, align 2, !tbaa !25
  %i.ea = zext i8 %i.dz to i32
  %i.eb = add i32 %i.dn, %i.ea                    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 3
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !26
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
  %i.en = load i8, ptr %i.em, align 2, !tbaa !25
  %i.eo = zext i8 %i.en to i32
  %i.ep = add i32 %i.eb, %i.eo                    ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 3
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !26
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
  %i.fb = load i8, ptr %i.fa, align 2, !tbaa !25
  %i.fc = zext i8 %i.fb to i32
  %i.fd = add i32 %i.ep, %i.fc                    ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 3
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !26
  %i.fg = zext i8 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.fg ; 2 uses
  %i.fi = icmp ugt i32 %i.fd, 64
  br i1 %i.fi, label %BIT_reloadDStream.exit29, label %bb.n, !prof !27, !llvm.loop !0

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
  %.sroa.0.6 = load i64, ptr %.sroa.9790.6, align 1, !tbaa !22 ; 7 uses
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
  %i.gc = load i8, ptr %i.gb, align 2, !tbaa !25
  %i.gd = zext i8 %i.gc to i32
  %i.ge = add i32 %.sroa.31.8, %i.gd              ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fz, i64 3
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !26
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
  %i.gq = load i8, ptr %i.gp, align 2, !tbaa !25
  %i.gr = zext i8 %i.gq to i32
  %i.gs = add i32 %i.ge, %i.gr                    ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 3
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !26
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
  %i.he = load i8, ptr %i.hd, align 2, !tbaa !25
  %i.hf = zext i8 %i.he to i32
  %i.hg = add i32 %i.gs, %i.hf                    ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 3
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !26
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
  %i.hs = load i8, ptr %i.hr, align 2, !tbaa !25
  %i.ht = zext i8 %i.hs to i32
  %i.hu = add i32 %i.hg, %i.ht                    ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 3
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !26
  %i.hx = zext i8 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hx ; 2 uses
  %i.hz = icmp ugt i32 %i.hu, 64
  br i1 %i.hz, label %BIT_reloadDStream.exit29, label %bb.s, !prof !27, !llvm.loop !1

bb.x:                                             ; preds = %bb.l
  %.not.i23 = icmp slt i64 %3, 16
  br i1 %.not.i23, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ia = lshr i32 %i.aw, 3
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = sub nsw i64 0, %i.ib
  %i.id = getelementptr inbounds i8, ptr %.sroa.9790.9177.ptr.ptr.ptr, i64 %i.ic ; 2 uses
  %i.ie = and i32 %i.aw, 7
  %.val.i61 = load i64, ptr %i.id, align 1, !tbaa !22
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
  %.val30 = load i64, ptr %i.ik, align 1, !tbaa !22
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
  br i1 %i.iy, label %.preheader, label %.lr.ph13, !prof !28

.lr.ph13:                                         ; preds = %.preheader202, %bb.ad
  %.5.i12 = phi ptr [ %i.jt, %bb.ad ], [ %.4.i, %.preheader202 ] ; 4 uses
  %.sroa.9790.211 = phi ptr [ %.sroa.9790.7, %bb.ad ], [ %.sroa.9790.0, %.preheader202 ] ; 4 uses
  %.sroa.31.210 = phi i32 [ %i.jp, %bb.ad ], [ %.sroa.31.0, %.preheader202 ] ; 3 uses
  %.not.i16 = icmp ult ptr %.sroa.9790.211, %i.b
  %5 = lshr i32 %.sroa.31.210, 3                  ; 2 uses
  %6 = zext nneg i32 %5 to i64
  %7 = sub nsw i64 0, %6
  %8 = getelementptr inbounds i8, ptr %.sroa.9790.211, i64 %7 ; 2 uses
  br i1 %.not.i16, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph13
  %i.iz = and i32 %.sroa.31.210, 7
  br label %BIT_reloadDStream.exit22

bb.ac:                                            ; preds = %.lr.ph13
  %9 = icmp uge ptr %8, %2                        ; 2 uses
  %10 = ptrtoint ptr %.sroa.9790.211 to i64
  %i.ja = sub i64 %10, %i.iu
  %11 = trunc i64 %i.ja to i32
  %.021.i18 = select i1 %9, i32 %5, i32 %11       ; 2 uses
  %12 = zext i32 %.021.i18 to i64
  %i.jb = sub nsw i64 0, %12
  %13 = getelementptr inbounds i8, ptr %.sroa.9790.211, i64 %i.jb
  %i.jc = shl i32 %.021.i18, 3
  %i.jd = sub i32 %.sroa.31.210, %i.jc
  br label %BIT_reloadDStream.exit22

BIT_reloadDStream.exit22:                         ; preds = %bb.ab, %bb.ac
  %.sroa.31.9 = phi i32 [ %i.iz, %bb.ab ], [ %i.jd, %bb.ac ] ; 3 uses
  %.sroa.9790.7 = phi ptr [ %8, %bb.ab ], [ %13, %bb.ac ] ; 3 uses
  %.022.i17 = phi i1 [ true, %bb.ab ], [ %9, %bb.ac ]
  %.sroa.0.7 = load i64, ptr %.sroa.9790.7, align 1, !tbaa !22 ; 3 uses
  %i.je = icmp ule ptr %.5.i12, %i.it
  %i.jf = and i1 %i.je, %.022.i17
  br i1 %i.jf, label %bb.ad, label %.preheader

.preheader:                                       ; preds = %BIT_reloadDStream.exit22, %bb.ad, %.preheader202
  %.5.i.lcssa = phi ptr [ %.4.i, %.preheader202 ], [ %.5.i12, %BIT_reloadDStream.exit22 ], [ %i.jt, %bb.ad ] ; 3 uses
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
  store i16 %i.jl, ptr %.5.i12, align 1
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 2
  %i.jn = load i8, ptr %i.jm, align 2, !tbaa !25
  %i.jo = zext i8 %i.jn to i32
  %i.jp = add i32 %.sroa.31.9, %i.jo              ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jk, i64 3
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !26
  %i.js = zext i8 %i.jr to i64
  %i.jt = getelementptr inbounds nuw i8, ptr %.5.i12, i64 %i.js ; 2 uses
  %i.ju = icmp ugt i32 %i.jp, 64
  br i1 %i.ju, label %.preheader, label %.lr.ph13, !prof !27, !llvm.loop !2

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
  %i.kc = load i8, ptr %i.kb, align 2, !tbaa !25
  %i.kd = zext i8 %i.kc to i32
  %i.ke = add i32 %.sroa.31.3246, %i.kd           ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jz, i64 3
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !26
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
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !26
  %i.kv = icmp eq i8 %i.ku, 1
  br i1 %i.kv, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kr, i64 2
  %i.kx = load i8, ptr %i.kw, align 2, !tbaa !25
  %i.ky = zext i8 %i.kx to i32
  %i.kz = add i32 %.sroa.31.1, %i.ky
  br label %HUF_decodeStreamX2.exit

bb.ag:                                            ; preds = %bb.ae
  %i.la = icmp ult i32 %.sroa.31.1, 64
  br i1 %i.la, label %bb.ah, label %HUF_decodeStreamX2.exit

bb.ah:                                            ; preds = %bb.ag
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kr, i64 2
  %i.lc = load i8, ptr %i.lb, align 2, !tbaa !25
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @HUF_selectDecoder(i64 noundef %0, i64 noundef %1) local_unnamed_addr #5 {
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
  %i.h = load i32, ptr %i.g, align 16, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !31
  %i.k = mul i32 %i.j, %i.f
  %i.l = add i32 %i.k, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !31
  %i.q = mul i32 %i.p, %i.f
  %i.r = add i32 %i.q, %i.n                       ; 2 uses
  %i.s = lshr i32 %i.r, 5
  %i.t = add i32 %i.s, %i.r
  %i.u = icmp ult i32 %i.t, %i.l
  %i.v = zext i1 %i.u to i32
  ret i32 %i.v
}

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_decompress1X_DCtx_wksp(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
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
  %i.e = load i8, ptr %3, align 1, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.e, i64 %2, i1 false)
  br label %HUF_decompress1X2_DCtx_wksp.exit

HUF_selectDecoder.exit:                           ; preds = %bb.e
  %i.f = shl i64 %4, 4
  %i.g = udiv i64 %i.f, %2
  %i.h = and i64 %i.g, 4294967295
  %i.i = lshr i64 %2, 8
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr @algoTime, i64 %i.h ; 4 uses
  %i.l = load i32, ptr %i.k, align 16, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !31
  %i.o = mul i32 %i.n, %i.j
  %i.p = add i32 %i.o, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !31
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
  %i.ac = tail call fastcc i64 @HUF_decompress1X2_usingDTable_internal(ptr noundef %1, i64 noundef %2, ptr noundef %i.aa, i64 noundef %i.ab, ptr noundef %0)
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
  %i.ah = tail call fastcc i64 @HUF_decompress1X1_usingDTable_internal(ptr noundef %1, i64 noundef %2, ptr noundef %i.af, i64 noundef %i.ag, ptr noundef %0)
  br label %HUF_decompress1X2_DCtx_wksp.exit

HUF_decompress1X2_DCtx_wksp.exit:                 ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.b, %bb.a, %bb.f, %bb.d
  %.0 = phi i64 [ -20, %bb.b ], [ -70, %bb.a ], [ %2, %bb.d ], [ %2, %bb.f ], [ -72, %bb.h ], [ %i.ac, %bb.i ], [ %i.y, %bb.g ], [ %i.ah, %bb.l ], [ %i.ad, %bb.j ], [ -72, %bb.k ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_decompress1X1_DCtx_wksp(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
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
  %i.e = tail call fastcc i64 @HUF_decompress1X1_usingDTable_internal(ptr noundef %1, i64 noundef %2, ptr noundef %i.c, i64 noundef %i.d, ptr noundef %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ %i.e, %bb.c ], [ %i.a, %bb.a ], [ -72, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @HUF_decompress1X_usingDTable(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %.val = load i32, ptr %4, align 4
  %i.a = and i32 %.val, 65280
end_hunk_0
begin_hunk_1_@HUF_decompress4X2_usingDTable_internal:bb.a
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dw ; 2 uses
  %i.dy = lshr i64 %i.dh, 53
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dy ; 3 uses
  %.sroa.045.0.copyload.i = load i16, ptr %i.dz, align 2, !tbaa !41
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 2
  %.sroa.446.0.copyload.i = load i8, ptr %.sroa.446.0..sroa_idx.i, align 2, !tbaa !16
  %.sroa.547.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 3
  %.sroa.547.0.copyload.i = load i8, ptr %.sroa.547.0..sroa_idx.i, align 1, !tbaa !16
  store i16 %.sroa.045.0.copyload.i, ptr %i.dj, align 1, !tbaa !41
  %i.ea = and i8 %.sroa.446.0.copyload.i, 63
  %i.eb = zext nneg i8 %i.ea to i64
  %i.ec = shl i64 %i.dh, %i.eb                    ; 2 uses
  %i.ed = zext i8 %.sroa.547.0.copyload.i to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.ed ; 2 uses
  %i.ef = lshr i64 %i.do, 53
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ef ; 3 uses
  %.sroa.041.0.copyload.i = load i16, ptr %i.eg, align 2, !tbaa !41
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %.sroa.442.0.copyload.i = load i8, ptr %.sroa.442.0..sroa_idx.i, align 2, !tbaa !16
  %.sroa.543.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  %.sroa.543.0.copyload.i = load i8, ptr %.sroa.543.0..sroa_idx.i, align 1, !tbaa !16
  store i16 %.sroa.041.0.copyload.i, ptr %i.dq, align 1, !tbaa !41
  %i.eh = and i8 %.sroa.442.0.copyload.i, 63
  %i.ei = zext nneg i8 %i.eh to i64
  %i.ej = shl i64 %i.do, %i.ei
  %i.ek = zext i8 %.sroa.543.0.copyload.i to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ek ; 2 uses
  %i.em = lshr i64 %i.dv, 53
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.em ; 3 uses
  %.sroa.037.0.copyload.i = load i16, ptr %i.en, align 2, !tbaa !41
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  %.sroa.438.0.copyload.i = load i8, ptr %.sroa.438.0..sroa_idx.i, align 2, !tbaa !16
  %.sroa.539.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.en, i64 3
  %.sroa.539.0.copyload.i = load i8, ptr %.sroa.539.0..sroa_idx.i, align 1, !tbaa !16
  store i16 %.sroa.037.0.copyload.i, ptr %i.dx, align 1, !tbaa !41
  %i.eo = and i8 %.sroa.438.0.copyload.i, 63
  %i.ep = zext nneg i8 %i.eo to i64
  %i.eq = shl i64 %i.dv, %i.ep
  %i.er = zext i8 %.sroa.539.0.copyload.i to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.er ; 2 uses
  %i.et = lshr i64 %i.ec, 53
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.et ; 3 uses
  %.sroa.033.0.copyload.i = load i16, ptr %i.eu, align 2, !tbaa !41
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 2
  %.sroa.434.0.copyload.i = load i8, ptr %.sroa.434.0..sroa_idx.i, align 2, !tbaa !16
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 3
  %.sroa.535.0.copyload.i = load i8, ptr %.sroa.535.0..sroa_idx.i, align 1, !tbaa !16
  store i16 %.sroa.033.0.copyload.i, ptr %i.ee, align 1, !tbaa !41
  %i.ev = and i8 %.sroa.434.0.copyload.i, 63
  %i.ew = zext nneg i8 %i.ev to i64
  %i.ex = shl i64 %i.ec, %i.ew
  %i.ey = zext i8 %.sroa.535.0.copyload.i to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ey ; 2 uses
  %i.fa = lshr i64 %.sroa.61.1.i, 53
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.fa ; 3 uses
  %.sroa.029.0.copyload.i = load i16, ptr %i.fb, align 2, !tbaa !41
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 2
  %.sroa.430.0.copyload.i = load i8, ptr %.sroa.430.0..sroa_idx.i, align 2, !tbaa !16
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 3
  %.sroa.531.0.copyload.i = load i8, ptr %.sroa.531.0..sroa_idx.i, align 1, !tbaa !16
  store i16 %.sroa.029.0.copyload.i, ptr %i.av, align 1, !tbaa !41
  %i.fc = and i8 %.sroa.430.0.copyload.i, 63
  %i.fd = zext nneg i8 %i.fc to i64
  %i.fe = shl i64 %.sroa.61.1.i, %i.fd            ; 2 uses
  %i.ff = zext i8 %.sroa.531.0.copyload.i to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ff ; 2 uses
  %i.fh = lshr i64 %i.fe, 53
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.fh ; 3 uses
  %.sroa.025.0.copyload.i = load i16, ptr %i.fi, align 2, !tbaa !41
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fi, i64 2
  %.sroa.426.0.copyload.i = load i8, ptr %.sroa.426.0..sroa_idx.i, align 2, !tbaa !16
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fi, i64 3
  %.sroa.527.0.copyload.i = load i8, ptr %.sroa.527.0..sroa_idx.i, align 1, !tbaa !16
  store i16 %.sroa.025.0.copyload.i, ptr %i.fg, align 1, !tbaa !41
  %i.fj = and i8 %.sroa.426.0.copyload.i, 63
  %i.fk = zext nneg i8 %i.fj to i64
  %i.fl = shl i64 %i.fe, %i.fk                    ; 2 uses
  %i.fm = zext i8 %.sroa.527.0.copyload.i to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fm ; 2 uses
  %i.fo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ej, i1 true) ; 2 uses
  %i.fp = and i64 %i.fo, 7
  %i.fq = lshr i64 %i.fo, 3
  %i.fr = sub nsw i64 0, %i.fq
  %i.fs = getelementptr inbounds i8, ptr %i.au, i64 %i.fr ; 3 uses
  %.val196.i = load i64, ptr %i.fs, align 1, !tbaa !22
  %i.ft = or i64 %.val196.i, 1
  %i.fu = shl i64 %i.ft, %i.fp                    ; 2 uses
  %i.fv = lshr i64 %i.fl, 53
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.fv ; 3 uses
  %.sroa.017.0.copyload.i = load i16, ptr %i.fw, align 2, !tbaa !41
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fw, i64 2
  %.sroa.418.0.copyload.i = load i8, ptr %.sroa.418.0..sroa_idx.i, align 2, !tbaa !16
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fw, i64 3
  %.sroa.519.0.copyload.i = load i8, ptr %.sroa.519.0..sroa_idx.i, align 1, !tbaa !16
  store i16 %.sroa.017.0.copyload.i, ptr %i.fn, align 1, !tbaa !41
  %i.fx = and i8 %.sroa.418.0.copyload.i, 63
  %i.fy = zext nneg i8 %i.fx to i64
  %i.fz = shl i64 %i.fl, %i.fy                    ; 2 uses
  %i.ga = zext i8 %.sroa.519.0.copyload.i to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.ga ; 2 uses
  %i.gc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.eq, i1 true) ; 2 uses
  %i.gd = and i64 %i.gc, 7
  %i.ge = lshr i64 %i.gc, 3
  %i.gf = sub nsw i64 0, %i.ge
  %i.gg = getelementptr inbounds i8, ptr %i.at, i64 %i.gf ; 3 uses
  %.val195.i = load i64, ptr %i.gg, align 1, !tbaa !22
  %i.gh = or i64 %.val195.i, 1
  %i.gi = shl i64 %i.gh, %i.gd                    ; 2 uses
  %i.gj = lshr i64 %i.fz, 53
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.gj ; 3 uses
  %.sroa.09.0.copyload.i = load i16, ptr %i.gk, align 2, !tbaa !41
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 2
  %.sroa.410.0.copyload.i = load i8, ptr %.sroa.410.0..sroa_idx.i, align 2, !tbaa !16
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 3
  %.sroa.511.0.copyload.i = load i8, ptr %.sroa.511.0..sroa_idx.i, align 1, !tbaa !16
  store i16 %.sroa.09.0.copyload.i, ptr %i.gb, align 1, !tbaa !41
  %i.gl = and i8 %.sroa.410.0.copyload.i, 63
  %i.gm = zext nneg i8 %i.gl to i64
  %i.gn = shl i64 %i.fz, %i.gm                    ; 2 uses
  %i.go = zext i8 %.sroa.511.0.copyload.i to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.go ; 2 uses
  %i.gq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ex, i1 true) ; 2 uses
  %i.gr = and i64 %i.gq, 7
  %i.gs = lshr i64 %i.gq, 3
  %i.gt = sub nsw i64 0, %i.gs
  %i.gu = getelementptr inbounds i8, ptr %i.as, i64 %i.gt ; 3 uses
  %.val194.i = load i64, ptr %i.gu, align 1, !tbaa !22
  %i.gv = or i64 %.val194.i, 1
  %i.gw = shl i64 %i.gv, %i.gr                    ; 2 uses
  %i.gx = lshr i64 %i.gn, 53
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.gx ; 3 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.gy, align 2, !tbaa !41
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 2
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 2, !tbaa !16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 3
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 1, !tbaa !16
  store i16 %.sroa.0.0.copyload.i, ptr %i.gp, align 1, !tbaa !41
  %i.gz = and i8 %.sroa.4.0.copyload.i, 63
  %i.ha = zext nneg i8 %i.gz to i64
  %i.hb = shl i64 %i.gn, %i.ha
  %i.hc = zext i8 %.sroa.5.0.copyload.i to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.hc ; 3 uses
  %i.he = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.hb, i1 true) ; 2 uses
  %i.hf = and i64 %i.he, 7
  %i.hg = lshr i64 %i.he, 3
  %i.hh = sub nsw i64 0, %i.hg
  %i.hi = getelementptr inbounds i8, ptr %i.ar, i64 %i.hh ; 3 uses
  %.val.i32 = load i64, ptr %i.hi, align 1, !tbaa !22
  %i.hj = or i64 %.val.i32, 1
  %i.hk = shl i64 %i.hj, %i.hf                    ; 2 uses
  %i.hl = icmp ult ptr %i.hd, %i.am
  br i1 %i.hl, label %.preheader.i31, label %.loopexit.i33, !llvm.loop !135

HUF_decompress4X2_usingDTable_internal_fast_c_loop.exit: ; preds = %bb.d
  store i64 %.sroa.0130.0.i, ptr %i.j, align 8
  store i64 %.sroa.23.0.i, ptr %.sroa.23.0..sroa_idx.i, align 8
  store i64 %.sroa.42.0.i, ptr %.sroa.42.0..sroa_idx.i, align 8
  store i64 %.sroa.61.0.i, ptr %.sroa.61.0..sroa_idx.i, align 8
  store ptr %.sroa.0284.0.i, ptr %7, align 8
  store ptr %.sroa.7286.0.i, ptr %.sroa.7286.0..sroa_idx.i, align 8
  store ptr %.sroa.11290.0.i, ptr %.sroa.11290.0..sroa_idx.i, align 8
  store ptr %.sroa.15294.0.i, ptr %.sroa.15294.0..sroa_idx.i, align 8
  store ptr %.sroa.0273.0.i, ptr %i.k, align 8
  store ptr %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8
  store ptr %.sroa.11.0.i, ptr %.sroa.11.0..sroa_idx.i, align 8
  store ptr %.sroa.15.0.i, ptr %.sroa.15.0..sroa_idx.i, align 8
  %i.hm = add i64 %1, 3
  %i.hn = lshr i64 %i.hm, 2                       ; 2 uses
  %i.ho = ptrtoint ptr %i.c to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %7, i64 120
  br label %bb.f

bb.e:                                             ; preds = %bb.t
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.i, label %HUF_decompress4X2_usingDTable_internal_fast.exit, label %bb.f, !llvm.loop !136

bb.f:                                             ; preds = %bb.e, %HUF_decompress4X2_usingDTable_internal_fast_c_loop.exit
  %indvars.iv.i = phi i64 [ 0, %HUF_decompress4X2_usingDTable_internal_fast_c_loop.exit ], [ %indvars.iv.next.i, %bb.e ] ; 5 uses
  %.04473.i = phi ptr [ %0, %HUF_decompress4X2_usingDTable_internal_fast_c_loop.exit ], [ %.1.i, %bb.e ] ; 2 uses
  %i.hq = ptrtoint ptr %.04473.i to i64
  %i.hr = sub i64 %i.ho, %i.hq
  %.not54.i = icmp ugt i64 %i.hn, %i.hr
  %i.hs = getelementptr inbounds nuw i8, ptr %.04473.i, i64 %i.hn
  %.1.i = select i1 %.not54.i, ptr %i.c, ptr %i.hs ; 7 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i ; 3 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !42 ; 6 uses
  %i.hv = icmp ugt ptr %i.hu, %.1.i
  br i1 %i.hv, label %HUF_decompress4X2_usingDTable_internal_fast.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.i
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !42 ; 10 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %indvars.iv.i
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !42
  %i.ia = getelementptr inbounds i8, ptr %i.hz, i64 -8
  %i.ib = icmp ult ptr %i.hx, %i.ia
  br i1 %i.ib, label %HUF_decompress4X2_usingDTable_internal_fast.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val.i.i = load i64, ptr %i.hx, align 1, !tbaa !22
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !22
  %i.ie = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.id, i1 true) ; 2 uses
  %i.if = trunc nuw nsw i64 %i.ie to i32          ; 5 uses
  %i.ig = load ptr, ptr %i.h, align 8, !tbaa !39  ; 8 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 3 uses
  %i.ii = ptrtoint ptr %.1.i to i64               ; 2 uses
  %i.ij = ptrtoint ptr %i.hu to i64               ; 2 uses
  %i.ik = sub i64 %i.ii, %i.ij                    ; 4 uses
  %i.il = icmp ugt i64 %i.ik, 7
  br i1 %i.il, label %.preheader64.i, label %bb.m

.preheader64.i:                                   ; preds = %bb.h
  %i.im = ptrtoint ptr %i.ig to i64
  %i.in = getelementptr inbounds i8, ptr %.1.i, i64 -9
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %.preheader64.i
  %.0.i68.i = phi ptr [ %i.hu, %.preheader64.i ], [ %i.lr, %bb.l ] ; 4 uses
  %.sroa.17.166.i = phi i32 [ %i.if, %.preheader64.i ], [ %i.ln, %bb.l ] ; 3 uses
  %.sroa.6235.165.i = phi ptr [ %i.hx, %.preheader64.i ], [ %.sroa.6235.2.i, %bb.l ] ; 4 uses
  %.not.i59.i = icmp ult ptr %.sroa.6235.165.i, %i.ih
  %8 = lshr i32 %.sroa.17.166.i, 3                ; 3 uses
  br i1 %.not.i59.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.io = and i32 %.sroa.17.166.i, 7
  br label %BIT_reloadDStream.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ip = zext nneg i32 %8 to i64
  %i.iq = sub nsw i64 0, %i.ip
  %i.ir = getelementptr inbounds i8, ptr %.sroa.6235.165.i, i64 %i.iq
  %i.is = icmp uge ptr %i.ir, %i.ig               ; 2 uses
  %i.it = ptrtoint ptr %.sroa.6235.165.i to i64
  %i.iu = sub i64 %i.it, %i.im
  %i.iv = trunc i64 %i.iu to i32
  %.021.i.i = select i1 %i.is, i32 %8, i32 %i.iv  ; 2 uses
  %i.iw = shl i32 %.021.i.i, 3
  %i.ix = sub i32 %.sroa.17.166.i, %i.iw
  br label %BIT_reloadDStream.exit.i

BIT_reloadDStream.exit.i:                         ; preds = %bb.k, %bb.j
  %.pn62.in.i = phi i32 [ %8, %bb.j ], [ %.021.i.i, %bb.k ]
  %.sroa.17.2.i = phi i32 [ %i.io, %bb.j ], [ %i.ix, %bb.k ] ; 3 uses
  %.022.i.i = phi i1 [ true, %bb.j ], [ %i.is, %bb.k ]
  %.pn62.i = zext i32 %.pn62.in.i to i64
  %.pn.i = sub nsw i64 0, %.pn62.i
  %.sroa.6235.2.i = getelementptr inbounds i8, ptr %.sroa.6235.165.i, i64 %.pn.i ; 3 uses
  %.sroa.0.2.i = load i64, ptr %.sroa.6235.2.i, align 1, !tbaa !22 ; 6 uses
  %i.iy = icmp ult ptr %.0.i68.i, %i.in
  %i.iz = and i1 %i.iy, %.022.i.i
  br i1 %i.iz, label %bb.l, label %BIT_reloadDStream.exit74.loopexit.i

bb.l:                                             ; preds = %BIT_reloadDStream.exit.i
  %i.ja = and i32 %.sroa.17.2.i, 63
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = shl i64 %.sroa.0.2.i, %i.jb
  %i.jd = lshr i64 %i.jc, 53
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jd ; 3 uses
  %i.jf = load i16, ptr %i.je, align 2
  store i16 %i.jf, ptr %.0.i68.i, align 1
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 2
  %i.jh = load i8, ptr %i.jg, align 2, !tbaa !25
  %i.ji = zext i8 %i.jh to i32
  %i.jj = add i32 %.sroa.17.2.i, %i.ji            ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.je, i64 3
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !26
  %i.jm = zext i8 %i.jl to i64
  %i.jn = getelementptr inbounds nuw i8, ptr %.0.i68.i, i64 %i.jm ; 2 uses
  %i.jo = and i32 %i.jj, 63
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = shl i64 %.sroa.0.2.i, %i.jp
  %i.jr = lshr i64 %i.jq, 53
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jr ; 3 uses
  %i.jt = load i16, ptr %i.js, align 2
  store i16 %i.jt, ptr %i.jn, align 1
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 2
  %i.jv = load i8, ptr %i.ju, align 2, !tbaa !25
  %i.jw = zext i8 %i.jv to i32
  %i.jx = add i32 %i.jj, %i.jw                    ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.js, i64 3
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !26
  %i.ka = zext i8 %i.jz to i64
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.ka ; 2 uses
  %i.kc = and i32 %i.jx, 63
  %i.kd = zext nneg i32 %i.kc to i64
  %i.ke = shl i64 %.sroa.0.2.i, %i.kd
  %i.kf = lshr i64 %i.ke, 53
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.kf ; 3 uses
  %i.kh = load i16, ptr %i.kg, align 2
  store i16 %i.kh, ptr %i.kb, align 1
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 2
  %i.kj = load i8, ptr %i.ki, align 2, !tbaa !25
  %i.kk = zext i8 %i.kj to i32
  %i.kl = add i32 %i.jx, %i.kk                    ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kg, i64 3
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !26
  %i.ko = zext i8 %i.kn to i64
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.ko ; 2 uses
  %i.kq = and i32 %i.kl, 63
  %i.kr = zext nneg i32 %i.kq to i64
  %i.ks = shl i64 %.sroa.0.2.i, %i.kr
  %i.kt = lshr i64 %i.ks, 53
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.kt ; 3 uses
  %i.kv = load i16, ptr %i.ku, align 2
  store i16 %i.kv, ptr %i.kp, align 1
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 2
  %i.kx = load i8, ptr %i.kw, align 2, !tbaa !25
  %i.ky = zext i8 %i.kx to i32
  %i.kz = add i32 %i.kl, %i.ky                    ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.ku, i64 3
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !26
  %i.lc = zext i8 %i.lb to i64
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.lc ; 2 uses
  %i.le = and i32 %i.kz, 63
  %i.lf = zext nneg i32 %i.le to i64
  %i.lg = shl i64 %.sroa.0.2.i, %i.lf
  %i.lh = lshr i64 %i.lg, 53
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.lh ; 3 uses
  %i.lj = load i16, ptr %i.li, align 2
  store i16 %i.lj, ptr %i.ld, align 1
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 2
  %i.ll = load i8, ptr %i.lk, align 2, !tbaa !25
  %i.lm = zext i8 %i.ll to i32
  %i.ln = add i32 %i.kz, %i.lm                    ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.li, i64 3
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !26
  %i.lq = zext i8 %i.lp to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lq ; 2 uses
  %i.ls = icmp ugt i32 %i.ln, 64
  br i1 %i.ls, label %BIT_reloadDStream.exit74.loopexit.i, label %bb.i, !prof !43, !llvm.loop !0

bb.m:                                             ; preds = %bb.h
  %.not.i68.i = icmp ult ptr %i.hx, %i.ih
  br i1 %.not.i68.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.lt = lshr i64 %i.ie, 3
  %i.lu = sub nsw i64 0, %i.lt
  %i.lv = getelementptr inbounds i8, ptr %i.hx, i64 %i.lu ; 2 uses
  %i.lw = and i32 %i.if, 7
  %.val.i95.i = load i64, ptr %i.lv, align 1, !tbaa !22
  br label %BIT_reloadDStream.exit74.i

bb.o:                                             ; preds = %bb.m
  %i.lx = icmp eq ptr %i.hx, %i.ig
  br i1 %i.lx, label %BIT_reloadDStream.exit74.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ly = lshr i32 %i.if, 3                       ; 2 uses
  %i.lz = zext nneg i32 %i.ly to i64
  %i.ma = sub nsw i64 0, %i.lz
  %i.mb = getelementptr inbounds i8, ptr %i.hx, i64 %i.ma
  %i.mc = icmp ult ptr %i.mb, %i.ig
  %i.md = ptrtoint ptr %i.hx to i64
  %i.me = ptrtoint ptr %i.ig to i64
  %i.mf = sub i64 %i.md, %i.me
  %i.mg = trunc i64 %i.mf to i32
  %.021.i70.i = select i1 %i.mc, i32 %i.mg, i32 %i.ly ; 2 uses
  %i.mh = zext i32 %.021.i70.i to i64
  %i.mi = sub nsw i64 0, %i.mh
  %i.mj = getelementptr inbounds i8, ptr %i.hx, i64 %i.mi ; 2 uses
  %i.mk = shl i32 %.021.i70.i, 3
  %i.ml = sub i32 %i.if, %i.mk
  %.val.i = load i64, ptr %i.mj, align 1, !tbaa !22
  br label %BIT_reloadDStream.exit74.i

BIT_reloadDStream.exit74.loopexit.i:              ; preds = %bb.l, %BIT_reloadDStream.exit.i
  %.sroa.6235.4.ph.ph.i = phi ptr [ @BIT_reloadDStream.zeroFilled, %bb.l ], [ %.sroa.6235.2.i, %BIT_reloadDStream.exit.i ]
  %.sroa.17.4.ph.ph.i = phi i32 [ %i.ln, %bb.l ], [ %.sroa.17.2.i, %BIT_reloadDStream.exit.i ]
  %.4.i.ph.ph.i = phi ptr [ %i.lr, %bb.l ], [ %.0.i68.i, %BIT_reloadDStream.exit.i ] ; 2 uses
  %.pre.i = ptrtoint ptr %.4.i.ph.ph.i to i64
  %.pre77.i = sub i64 %i.ii, %.pre.i
  br label %BIT_reloadDStream.exit74.i

BIT_reloadDStream.exit74.i:                       ; preds = %BIT_reloadDStream.exit74.loopexit.i, %bb.p, %bb.o, %bb.n
  %.pre-phi78.i = phi i64 [ %.pre77.i, %BIT_reloadDStream.exit74.loopexit.i ], [ %i.ik, %bb.o ], [ %i.ik, %bb.p ], [ %i.ik, %bb.n ]
  %.sroa.6235.4.i = phi ptr [ %.sroa.6235.4.ph.ph.i, %BIT_reloadDStream.exit74.loopexit.i ], [ %i.hx, %bb.o ], [ %i.mj, %bb.p ], [ %i.lv, %bb.n ]
  %.sroa.17.4.i = phi i32 [ %.sroa.17.4.ph.ph.i, %BIT_reloadDStream.exit74.loopexit.i ], [ %i.if, %bb.o ], [ %i.ml, %bb.p ], [ %i.lw, %bb.n ] ; 4 uses
  %.sroa.0.4.i = phi i64 [ %.sroa.0.2.i, %BIT_reloadDStream.exit74.loopexit.i ], [ %.val.i.i, %bb.o ], [ %.val.i, %bb.p ], [ %.val.i95.i, %bb.n ] ; 2 uses
  %.4.i.i = phi ptr [ %.4.i.ph.ph.i, %BIT_reloadDStream.exit74.loopexit.i ], [ %i.hu, %bb.o ], [ %i.hu, %bb.p ], [ %i.hu, %bb.n ] ; 3 uses
  %i.mm = icmp ugt i64 %.pre-phi78.i, 1
  br i1 %i.mm, label %.preheader63.i, label %.loopexit.i

.preheader63.i:                                   ; preds = %BIT_reloadDStream.exit74.i
  %i.mn = getelementptr inbounds i8, ptr %.1.i, i64 -2 ; 3 uses
  %i.mo = ptrtoint ptr %i.ig to i64
  %i.mp = icmp ugt i32 %.sroa.17.4.i, 64
  br i1 %i.mp, label %.preheader.i, label %.lr.ph, !prof !28

.lr.ph:                                           ; preds = %.preheader63.i, %bb.s
  %.5.i.i93 = phi ptr [ %i.nk, %bb.s ], [ %.4.i.i, %.preheader63.i ] ; 4 uses
  %.sroa.17.5.i91 = phi i32 [ %i.ng, %bb.s ], [ %.sroa.17.4.i, %.preheader63.i ] ; 3 uses
  %.sroa.6235.5.i90 = phi ptr [ %.sroa.6235.6.i, %bb.s ], [ %.sroa.6235.4.i, %.preheader63.i ] ; 4 uses
  %.not.i61.i = icmp ult ptr %.sroa.6235.5.i90, %i.ih
  %9 = lshr i32 %.sroa.17.5.i91, 3                ; 2 uses
  %10 = zext nneg i32 %9 to i64
  %11 = sub nsw i64 0, %10
  %12 = getelementptr inbounds i8, ptr %.sroa.6235.5.i90, i64 %11 ; 2 uses
  br i1 %.not.i61.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  %i.mq = and i32 %.sroa.17.5.i91, 7
  br label %BIT_reloadDStream.exit67.i

bb.r:                                             ; preds = %.lr.ph
  %13 = icmp uge ptr %12, %i.ig                   ; 2 uses
  %14 = ptrtoint ptr %.sroa.6235.5.i90 to i64
  %i.mr = sub i64 %14, %i.mo
  %15 = trunc i64 %i.mr to i32
  %.021.i63.i = select i1 %13, i32 %9, i32 %15    ; 2 uses
  %16 = zext i32 %.021.i63.i to i64
  %i.ms = sub nsw i64 0, %16
  %17 = getelementptr inbounds i8, ptr %.sroa.6235.5.i90, i64 %i.ms
  %i.mt = shl i32 %.021.i63.i, 3
  %i.mu = sub i32 %.sroa.17.5.i91, %i.mt
  br label %BIT_reloadDStream.exit67.i

BIT_reloadDStream.exit67.i:                       ; preds = %bb.r, %bb.q
  %.sroa.6235.6.i = phi ptr [ %12, %bb.q ], [ %17, %bb.r ] ; 2 uses
  %.sroa.17.6.i = phi i32 [ %i.mq, %bb.q ], [ %i.mu, %bb.r ] ; 3 uses
  %.022.i62.i = phi i1 [ true, %bb.q ], [ %13, %bb.r ]
  %.sroa.0.6.i = load i64, ptr %.sroa.6235.6.i, align 1, !tbaa !22 ; 3 uses
  %i.mv = icmp ule ptr %.5.i.i93, %i.mn
  %i.mw = and i1 %i.mv, %.022.i62.i
  br i1 %i.mw, label %bb.s, label %.preheader.i

.preheader.i:                                     ; preds = %bb.s, %BIT_reloadDStream.exit67.i, %.preheader63.i
  %.5.i.i.lcssa = phi ptr [ %.4.i.i, %.preheader63.i ], [ %.5.i.i93, %BIT_reloadDStream.exit67.i ], [ %i.nk, %bb.s ] ; 3 uses
  %.sroa.0.691.i = phi i64 [ %.sroa.0.4.i, %.preheader63.i ], [ %.sroa.0.6.i, %BIT_reloadDStream.exit67.i ], [ %.sroa.0.6.i, %bb.s ] ; 3 uses
  %.sroa.17.690.i = phi i32 [ %.sroa.17.4.i, %.preheader63.i ], [ %.sroa.17.6.i, %BIT_reloadDStream.exit67.i ], [ %i.ng, %bb.s ] ; 2 uses
  %.not.i69.i = icmp ugt ptr %.5.i.i.lcssa, %i.mn
  br i1 %.not.i69.i, label %.loopexit.i, label %.lr.ph.i

bb.s:                                             ; preds = %BIT_reloadDStream.exit67.i
  %i.mx = and i32 %.sroa.17.6.i, 63
  %i.my = zext nneg i32 %i.mx to i64
  %i.mz = shl i64 %.sroa.0.6.i, %i.my
  %i.na = lshr i64 %i.mz, 53
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.na ; 3 uses
  %i.nc = load i16, ptr %i.nb, align 2
  store i16 %i.nc, ptr %.5.i.i93, align 1
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 2
  %i.ne = load i8, ptr %i.nd, align 2, !tbaa !25
  %i.nf = zext i8 %i.ne to i32
  %i.ng = add i32 %.sroa.17.6.i, %i.nf            ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nb, i64 3
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !26
  %i.nj = zext i8 %i.ni to i64
  %i.nk = getelementptr inbounds nuw i8, ptr %.5.i.i93, i64 %i.nj ; 2 uses
  %i.nl = icmp ugt i32 %i.ng, 64
  br i1 %i.nl, label %.preheader.i, label %.lr.ph, !prof !27, !llvm.loop !2

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.6.i71.i = phi ptr [ %i.nz, %.lr.ph.i ], [ %.5.i.i.lcssa, %.preheader.i ] ; 2 uses
  %.sroa.17.770.i = phi i32 [ %i.nv, %.lr.ph.i ], [ %.sroa.17.690.i, %.preheader.i ] ; 2 uses
  %i.nm = and i32 %.sroa.17.770.i, 63
  %i.nn = zext nneg i32 %i.nm to i64
  %i.no = shl i64 %.sroa.0.691.i, %i.nn
  %i.np = lshr i64 %i.no, 53
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.np ; 3 uses
  %i.nr = load i16, ptr %i.nq, align 2
  store i16 %i.nr, ptr %.6.i71.i, align 1
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 2
  %i.nt = load i8, ptr %i.ns, align 2, !tbaa !25
  %i.nu = zext i8 %i.nt to i32
  %i.nv = add i32 %.sroa.17.770.i, %i.nu          ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nq, i64 3
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !26
  %i.ny = zext i8 %i.nx to i64
  %i.nz = getelementptr inbounds nuw i8, ptr %.6.i71.i, i64 %i.ny ; 3 uses
  %.not.i.i = icmp ugt ptr %i.nz, %i.mn
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !3

.loopexit.i:                                      ; preds = %.lr.ph.i, %.preheader.i, %BIT_reloadDStream.exit74.i
  %.sroa.17.8.i = phi i32 [ %.sroa.17.4.i, %BIT_reloadDStream.exit74.i ], [ %.sroa.17.690.i, %.preheader.i ], [ %i.nv, %.lr.ph.i ]
  %.sroa.0.7.i = phi i64 [ %.sroa.0.4.i, %BIT_reloadDStream.exit74.i ], [ %.sroa.0.691.i, %.preheader.i ], [ %.sroa.0.691.i, %.lr.ph.i ]
  %.7.i.i = phi ptr [ %.4.i.i, %BIT_reloadDStream.exit74.i ], [ %.5.i.i.lcssa, %.preheader.i ], [ %i.nz, %.lr.ph.i ] ; 4 uses
  %i.oa = icmp ult ptr %.7.i.i, %.1.i
  br i1 %i.oa, label %HUF_decodeLastSymbolX2.exit.i, label %bb.t

HUF_decodeLastSymbolX2.exit.i:                    ; preds = %.loopexit.i
  %i.ob = and i32 %.sroa.17.8.i, 63
  %i.oc = zext nneg i32 %i.ob to i64
  %i.od = shl i64 %.sroa.0.7.i, %i.oc
  %i.oe = lshr i64 %i.od, 53
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.oe
  %i.og = load i8, ptr %i.of, align 2
  store i8 %i.og, ptr %.7.i.i, align 1
  %i.oh = getelementptr inbounds nuw i8, ptr %.7.i.i, i64 1
  br label %bb.t

bb.t:                                             ; preds = %HUF_decodeLastSymbolX2.exit.i, %.loopexit.i
  %.8.i.i = phi ptr [ %i.oh, %HUF_decodeLastSymbolX2.exit.i ], [ %.7.i.i, %.loopexit.i ]
  %i.oi = ptrtoint ptr %.8.i.i to i64
  %i.oj = sub i64 %i.oi, %i.ij
  %i.ok = load ptr, ptr %i.ht, align 8, !tbaa !42
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oj ; 2 uses
  store ptr %i.ol, ptr %i.ht, align 8, !tbaa !42
  %.not56.i = icmp eq ptr %i.ol, %.1.i
  br i1 %.not56.i, label %bb.e, label %HUF_decompress4X2_usingDTable_internal_fast.exit.thread

HUF_decompress4X2_usingDTable_internal_fast.exit.thread: ; preds = %bb.f, %bb.g, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %HUF_decompress4X2_usingDTable_internal_default.exit

HUF_decompress4X2_usingDTable_internal_fast.exit: ; preds = %bb.e, %bb.b
  %.6.i = phi i64 [ %i.d, %bb.b ], [ %1, %bb.e ]  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %.not17 = icmp eq i64 %.6.i, 0
  br i1 %.not17, label %bb.u, label %HUF_decompress4X2_usingDTable_internal_default.exit

bb.u:                                             ; preds = %HUF_decompress4X2_usingDTable_internal_fast.exit, %bb.a
  %i.om = icmp ult i64 %3, 10
  %i.on = icmp ult i64 %1, 6
  %or.cond.i.i = or i1 %i.on, %i.om
  br i1 %or.cond.i.i, label %HUF_decompress4X2_usingDTable_internal_default.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 5 uses
  %i.op = getelementptr inbounds i8, ptr %i.oo, i64 -7 ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 64 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %.val150.i = load i16, ptr %2, align 1, !tbaa !41 ; 5 uses
  %i.or = zext i16 %.val150.i to i64              ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %2, i64 2
  %.val149.i = load i16, ptr %i.os, align 1, !tbaa !41 ; 5 uses
  %i.ot = zext i16 %.val149.i to i64              ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val148.i = load i16, ptr %i.ou, align 1, !tbaa !41 ; 5 uses
  %i.ov = zext i16 %.val148.i to i64              ; 2 uses
  %i.ow = add nuw nsw i64 %i.or, 6
  %i.ox = add nuw nsw i64 %i.ow, %i.ot
  %i.oy = add nuw nsw i64 %i.ox, %i.ov            ; 2 uses
  %i.oz = sub nuw i64 %3, %i.oy
  %i.pa = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 20 uses
  %i.pb = getelementptr i8, ptr %i.pa, i64 %i.or  ; 30 uses
  %i.pc = getelementptr i8, ptr %i.pb, i64 %i.ot  ; 30 uses
  %i.pd = getelementptr i8, ptr %i.pc, i64 %i.ov  ; 4 uses
  %i.pe = add i64 %1, 3
  %i.pf = lshr i64 %i.pe, 2                       ; 5 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 %i.pf ; 9 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 %i.pf ; 9 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.pf ; 9 uses
  %.val.i18 = load i32, ptr %4, align 4
  %.sroa.3.0.extract.shift.i.i = lshr i32 %.val.i18, 16 ; 18 uses
  %i.pj = and i32 %.sroa.3.0.extract.shift.i.i, 255 ; 4 uses
  %i.pk = icmp ugt i64 %i.oy, %3
  %i.pl = mul nuw nsw i64 %i.pf, 3
  %i.pm = icmp samesign ugt i64 %i.pl, %1
  %or.cond197.i.i = select i1 %i.pk, i1 true, i1 %i.pm
  br i1 %or.cond197.i.i, label %BIT_initDStream.exit.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.pn = icmp eq i16 %.val150.i, 0
  br i1 %i.pn, label %BIT_initDStream.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.po = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 5 uses
  %i.pp = icmp ugt i16 %.val150.i, 7
  br i1 %i.pp, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.pq = getelementptr i8, ptr %i.pb, i64 -1
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !16  ; 2 uses
  %.not51.i.i = icmp eq i8 %i.pr, 0
  br i1 %.not51.i.i, label %BIT_initDStream.exit.thread.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.y
  %i.ps = getelementptr inbounds i8, ptr %i.pb, i64 -8 ; 2 uses
  %.val.i.i29 = load i64, ptr %i.ps, align 1, !tbaa !22
  %i.pt = zext i8 %i.pr to i32
  %i.pu = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.pt, i1 true)
  %i.pv = xor i32 %i.pu, 31
  %i.pw = sub nuw nsw i32 8, %i.pv
  br label %bb.ai

bb.z:                                             ; preds = %bb.x
  %i.px = load i8, ptr %i.pa, align 1, !tbaa !16
  %i.py = zext i8 %i.px to i64                    ; 7 uses
  switch i16 %.val150.i, label %bb.ag [
    i16 7, label %bb.aa
    i16 6, label %bb.ab
    i16 5, label %bb.ac
    i16 4, label %bb.ad
    i16 3, label %bb.ae
    i16 2, label %bb.af
  ]

bb.aa:                                            ; preds = %bb.z
  %i.pz = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !16
  %i.qb = zext i8 %i.qa to i64
  %i.qc = shl nuw nsw i64 %i.qb, 48
  %i.qd = or disjoint i64 %i.qc, %i.py
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.qe = phi i64 [ %i.qd, %bb.aa ], [ %i.py, %bb.z ]
  %i.qf = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !16
  %i.qh = zext i8 %i.qg to i64
  %i.qi = shl nuw nsw i64 %i.qh, 40
  %i.qj = add nuw nsw i64 %i.qi, %i.qe
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %i.qk = phi i64 [ %i.qj, %bb.ab ], [ %i.py, %bb.z ]
  %i.ql = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !16
  %i.qn = zext i8 %i.qm to i64
  %i.qo = shl nuw nsw i64 %i.qn, 32
  %i.qp = add nuw nsw i64 %i.qo, %i.qk
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %i.qq = phi i64 [ %i.qp, %bb.ac ], [ %i.py, %bb.z ]
  %i.qr = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !16
  %i.qt = zext i8 %i.qs to i64
  %i.qu = shl nuw nsw i64 %i.qt, 24
  %i.qv = add nuw nsw i64 %i.qu, %i.qq
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.z
  %i.qw = phi i64 [ %i.qv, %bb.ad ], [ %i.py, %bb.z ]
  %i.qx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !16
  %i.qz = zext i8 %i.qy to i64
  %i.ra = shl nuw nsw i64 %i.qz, 16
  %i.rb = add nuw nsw i64 %i.ra, %i.qw
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.z
  %i.rc = phi i64 [ %i.rb, %bb.ae ], [ %i.py, %bb.z ]
  %i.rd = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !16
  %i.rf = zext i8 %i.re to i64
  %i.rg = shl nuw nsw i64 %i.rf, 8
  %i.rh = add nuw nsw i64 %i.rg, %i.rc
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.z
  %.sroa.0431.11.i = phi i64 [ %i.py, %bb.z ], [ %i.rh, %bb.af ]
  %i.ri = getelementptr i8, ptr %i.pb, i64 -1
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !16  ; 2 uses
  %.not.i151.i = icmp eq i8 %i.rj, 0
  br i1 %.not.i151.i, label %BIT_initDStream.exit.thread.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.rk = zext i8 %i.rj to i32
  %i.rl = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.rk, i1 true)
  %i.rm = shl nuw nsw i16 %.val150.i, 3
  %i.rn = zext nneg i16 %i.rm to i32
  %reass.sub = sub nsw i32 %i.rl, %i.rn
  %i.ro = add nsw i32 %reass.sub, 41
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.thread.i.i
  %.sroa.0431.12.i = phi i64 [ %.sroa.0431.11.i, %bb.ah ], [ %.val.i.i29, %.thread.i.i ] ; 2 uses
  %.sroa.36432.14.i = phi i32 [ %i.ro, %bb.ah ], [ %i.pw, %.thread.i.i ] ; 2 uses
  %.sroa.116466.11.i = phi ptr [ %i.pa, %bb.ah ], [ %i.ps, %.thread.i.i ] ; 2 uses
  %i.rp = icmp eq i16 %.val149.i, 0
  br i1 %i.rp, label %BIT_initDStream.exit.thread.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.rq = getelementptr inbounds nuw i8, ptr %i.pb, i64 8 ; 5 uses
  %i.rr = icmp ugt i16 %.val149.i, 7
  br i1 %i.rr, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.rs = getelementptr i8, ptr %i.pc, i64 -1
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !16  ; 2 uses
  %.not51.i155.i = icmp eq i8 %i.rt, 0
  br i1 %.not51.i155.i, label %BIT_initDStream.exit.thread.i, label %.thread.i156.i

.thread.i156.i:                                   ; preds = %bb.ak
end_hunk_1
begin_hunk_2_@HUF_decompress4X1_usingDTable_internal:bb.a
  %i.cy = lshr i16 %i.cu, 8
  %i.cz = trunc nuw i16 %i.cy to i8
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 2
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !16
  %i.db = lshr i64 %i.bw, 53
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.db
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !41 ; 2 uses
  %i.de = and i16 %i.dd, 63
  %i.df = zext nneg i16 %i.de to i64
  %i.dg = shl i64 %i.bw, %i.df                    ; 2 uses
  %i.dh = lshr i16 %i.dd, 8
  %i.di = trunc nuw i16 %i.dh to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i, i64 2
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !16
  %i.dk = lshr i64 %i.cf, 53
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.dk
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !41 ; 2 uses
  %i.dn = and i16 %i.dm, 63
  %i.do = zext nneg i16 %i.dn to i64
  %i.dp = shl i64 %i.cf, %i.do                    ; 2 uses
  %i.dq = lshr i16 %i.dm, 8
  %i.dr = trunc nuw i16 %i.dq to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.18.1.i, i64 2
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !16
  %i.dt = lshr i64 %i.co, 53
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.dt
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !41 ; 2 uses
  %i.dw = and i16 %i.dv, 63
  %i.dx = zext nneg i16 %i.dw to i64
  %i.dy = shl i64 %i.co, %i.dx                    ; 2 uses
  %i.dz = lshr i16 %i.dv, 8
  %i.ea = trunc nuw i16 %i.dz to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.25.1.i, i64 2
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !16
  %i.ec = lshr i64 %i.cx, 53
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ec
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !41 ; 2 uses
  %i.ef = and i16 %i.ee, 63
  %i.eg = zext nneg i16 %i.ef to i64
  %i.eh = shl i64 %i.cx, %i.eg                    ; 2 uses
  %i.ei = lshr i16 %i.ee, 8
  %i.ej = trunc nuw i16 %i.ei to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 3
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !16
  %i.el = lshr i64 %i.dg, 53
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.el
  %i.en = load i16, ptr %i.em, align 2, !tbaa !41 ; 2 uses
  %i.eo = and i16 %i.en, 63
  %i.ep = zext nneg i16 %i.eo to i64
  %i.eq = shl i64 %i.dg, %i.ep                    ; 2 uses
  %i.er = lshr i16 %i.en, 8
  %i.es = trunc nuw i16 %i.er to i8
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i, i64 3
  store i8 %i.es, ptr %i.et, align 1, !tbaa !16
  %i.eu = lshr i64 %i.dp, 53
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.eu
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !41 ; 2 uses
  %i.ex = and i16 %i.ew, 63
  %i.ey = zext nneg i16 %i.ex to i64
  %i.ez = shl i64 %i.dp, %i.ey                    ; 2 uses
  %i.fa = lshr i16 %i.ew, 8
  %i.fb = trunc nuw i16 %i.fa to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.18.1.i, i64 3
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !16
  %i.fd = lshr i64 %i.dy, 53
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.fd
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !41 ; 2 uses
  %i.fg = and i16 %i.ff, 63
  %i.fh = zext nneg i16 %i.fg to i64
  %i.fi = shl i64 %i.dy, %i.fh                    ; 2 uses
  %i.fj = lshr i16 %i.ff, 8
  %i.fk = trunc nuw i16 %i.fj to i8
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.25.1.i, i64 3
  store i8 %i.fk, ptr %i.fl, align 1, !tbaa !16
  %i.fm = lshr i64 %i.eh, 53
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.fm
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !41 ; 2 uses
  %i.fp = and i16 %i.fo, 63
  %i.fq = zext nneg i16 %i.fp to i64
  %i.fr = shl i64 %i.eh, %i.fq
  %i.fs = lshr i16 %i.fo, 8
  %i.ft = trunc nuw i16 %i.fs to i8
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 4
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !16
  %i.fv = lshr i64 %i.eq, 53
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.fv
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !41 ; 2 uses
  %i.fy = and i16 %i.fx, 63
  %i.fz = zext nneg i16 %i.fy to i64
  %i.ga = shl i64 %i.eq, %i.fz
  %i.gb = lshr i16 %i.fx, 8
  %i.gc = trunc nuw i16 %i.gb to i8
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i, i64 4
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !16
  %i.ge = lshr i64 %i.ez, 53
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ge
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !41 ; 2 uses
  %i.gh = and i16 %i.gg, 63
  %i.gi = zext nneg i16 %i.gh to i64
  %i.gj = shl i64 %i.ez, %i.gi
  %i.gk = lshr i16 %i.gg, 8
  %i.gl = trunc nuw i16 %i.gk to i8
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.18.1.i, i64 4
  store i8 %i.gl, ptr %i.gm, align 1, !tbaa !16
  %i.gn = lshr i64 %i.fi, 53
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.gn
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !41 ; 2 uses
  %i.gq = and i16 %i.gp, 63
  %i.gr = zext nneg i16 %i.gq to i64
  %i.gs = shl i64 %i.fi, %i.gr
  %i.gt = lshr i16 %i.gp, 8
  %i.gu = trunc nuw i16 %i.gt to i8
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.25.1.i, i64 4
  store i8 %i.gu, ptr %i.gv, align 1, !tbaa !16
  %i.gw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fr, i1 true) ; 2 uses
  %i.gx = and i64 %i.gw, 7
  %i.gy = lshr i64 %i.gw, 3
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 5 ; 2 uses
  %i.ha = sub nsw i64 0, %i.gy
  %i.hb = getelementptr inbounds i8, ptr %.sroa.0.1296.i, i64 %i.ha ; 3 uses
  %.val207.i = load i64, ptr %i.hb, align 1, !tbaa !22
  %i.hc = or i64 %.val207.i, 1
  %i.hd = shl i64 %i.hc, %i.gx                    ; 2 uses
  %i.he = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ga, i1 true) ; 2 uses
  %i.hf = and i64 %i.he, 7
  %i.hg = lshr i64 %i.he, 3
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i, i64 5 ; 2 uses
  %i.hi = sub nsw i64 0, %i.hg
  %i.hj = getelementptr inbounds i8, ptr %.sroa.8.1.i, i64 %i.hi ; 3 uses
  %.val206.i = load i64, ptr %i.hj, align 1, !tbaa !22
  %i.hk = or i64 %.val206.i, 1
  %i.hl = shl i64 %i.hk, %i.hf                    ; 2 uses
  %i.hm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gj, i1 true) ; 2 uses
  %i.hn = and i64 %i.hm, 7
  %i.ho = lshr i64 %i.hm, 3
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.18.1.i, i64 5 ; 2 uses
  %i.hq = sub nsw i64 0, %i.ho
  %i.hr = getelementptr inbounds i8, ptr %.sroa.12.1.i, i64 %i.hq ; 3 uses
  %.val205.i = load i64, ptr %i.hr, align 1, !tbaa !22
  %i.hs = or i64 %.val205.i, 1
  %i.ht = shl i64 %i.hs, %i.hn                    ; 2 uses
  %i.hu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gs, i1 true) ; 2 uses
  %i.hv = and i64 %i.hu, 7
  %i.hw = lshr i64 %i.hu, 3
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.25.1.i, i64 5 ; 3 uses
  %i.hy = sub nsw i64 0, %i.hw
  %i.hz = getelementptr inbounds i8, ptr %.sroa.16.1.i, i64 %i.hy ; 3 uses
  %.val.i31 = load i64, ptr %i.hz, align 1, !tbaa !22
  %i.ia = or i64 %.val.i31, 1
  %i.ib = shl i64 %i.ia, %i.hv                    ; 2 uses
  %i.ic = icmp ult ptr %i.hx, %i.x
  br i1 %i.ic, label %.preheader.i30, label %.loopexit.i32, !llvm.loop !138

HUF_decompress4X1_usingDTable_internal_fast_c_loop.exit: ; preds = %bb.d
  store i64 %.sroa.0142.0.i, ptr %i.l, align 8
  store i64 %.sroa.23.0.i, ptr %.sroa.23.0..sroa_idx.i, align 8
  store i64 %.sroa.42.0.i, ptr %.sroa.42.0..sroa_idx.i, align 8
  store i64 %.sroa.61.0.i, ptr %.sroa.61.0..sroa_idx.i, align 8
  store ptr %.sroa.0.0295.i, ptr %7, align 8
  store ptr %.sroa.8.0.i, ptr %.sroa.8.0..sroa_idx.i, align 8
  store ptr %.sroa.12.0.i, ptr %.sroa.12.0..sroa_idx.i, align 8
  store ptr %.sroa.16.0.i, ptr %.sroa.16.0..sroa_idx.i, align 8
  store ptr %.sroa.0.0.i27, ptr %i.m, align 8
  store ptr %.sroa.11.0.i, ptr %.sroa.11.0..sroa_idx.i, align 8
  store ptr %.sroa.18.0.i, ptr %.sroa.18.0..sroa_idx.i, align 8
  store ptr %.sroa.25.0.i28, ptr %.sroa.25.0..sroa_idx.i, align 8
  %i.id = add i64 %1, 3
  %i.ie = lshr i64 %i.id, 2                       ; 2 uses
  %i.if = ptrtoint ptr %i.c to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %7, i64 120
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond53.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond53.i, label %HUF_decompress4X1_usingDTable_internal_fast.exit, label %bb.f, !llvm.loop !139

bb.f:                                             ; preds = %bb.e, %HUF_decompress4X1_usingDTable_internal_fast_c_loop.exit
  %indvars.iv.i = phi i64 [ 0, %HUF_decompress4X1_usingDTable_internal_fast_c_loop.exit ], [ %indvars.iv.next.i, %bb.e ] ; 5 uses
  %.04449.i = phi ptr [ %0, %HUF_decompress4X1_usingDTable_internal_fast_c_loop.exit ], [ %.1.i, %bb.e ] ; 2 uses
  %i.ih = ptrtoint ptr %.04449.i to i64
  %i.ii = sub i64 %i.if, %i.ih
  %.not54.i = icmp ugt i64 %i.ie, %i.ii
  %i.ij = getelementptr inbounds nuw i8, ptr %.04449.i, i64 %i.ie
  %.1.i = select i1 %.not54.i, ptr %i.c, ptr %i.ij ; 7 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i ; 3 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !42 ; 7 uses
  %i.im = icmp ugt ptr %i.il, %.1.i
  br i1 %i.im, label %HUF_decompress4X1_usingDTable_internal_fast.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.i
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !42 ; 9 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.i
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !42
  %i.ir = getelementptr inbounds i8, ptr %i.iq, i64 -8
  %i.is = icmp ult ptr %i.io, %i.ir
  br i1 %i.is, label %HUF_decompress4X1_usingDTable_internal_fast.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val.i.i = load i64, ptr %i.io, align 1, !tbaa !22
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !22
  %i.iv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.iu, i1 true) ; 2 uses
  %i.iw = trunc nuw nsw i64 %i.iv to i32          ; 5 uses
  %i.ix = load ptr, ptr %i.j, align 8, !tbaa !39  ; 6 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 2 uses
  %i.iz = ptrtoint ptr %.1.i to i64               ; 3 uses
  %i.ja = ptrtoint ptr %i.il to i64
  %i.jb = sub i64 %i.iz, %i.ja                    ; 2 uses
  %i.jc = icmp sgt i64 %i.jb, 3
  br i1 %i.jc, label %.preheader.i, label %bb.m

.preheader.i:                                     ; preds = %bb.h
  %i.jd = ptrtoint ptr %i.ix to i64
  %i.je = getelementptr inbounds i8, ptr %.1.i, i64 -3
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %.preheader.i
  %.0.i46.i = phi ptr [ %i.il, %.preheader.i ], [ %i.li, %bb.l ] ; 7 uses
  %.sroa.12.144.i = phi i32 [ %i.iw, %.preheader.i ], [ %i.lh, %bb.l ] ; 3 uses
  %.sroa.3820.143.i = phi ptr [ %i.io, %.preheader.i ], [ %.sroa.3820.2.i, %bb.l ] ; 4 uses
  %.not.i37.i.i = icmp ult ptr %.sroa.3820.143.i, %i.iy
  %8 = lshr i32 %.sroa.12.144.i, 3                ; 3 uses
  br i1 %.not.i37.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.jf = and i32 %.sroa.12.144.i, 7
  br label %BIT_reloadDStream.exit43.i.i

bb.k:                                             ; preds = %bb.i
  %i.jg = zext nneg i32 %8 to i64
  %i.jh = sub nsw i64 0, %i.jg
  %i.ji = getelementptr inbounds i8, ptr %.sroa.3820.143.i, i64 %i.jh
  %i.jj = icmp uge ptr %i.ji, %i.ix               ; 2 uses
  %i.jk = ptrtoint ptr %.sroa.3820.143.i to i64
  %i.jl = sub i64 %i.jk, %i.jd
  %i.jm = trunc i64 %i.jl to i32
  %.021.i39.i.i = select i1 %i.jj, i32 %8, i32 %i.jm ; 2 uses
  %i.jn = shl i32 %.021.i39.i.i, 3
  %i.jo = sub i32 %.sroa.12.144.i, %i.jn
  br label %BIT_reloadDStream.exit43.i.i

BIT_reloadDStream.exit43.i.i:                     ; preds = %bb.k, %bb.j
  %.pn42.in.i = phi i32 [ %8, %bb.j ], [ %.021.i39.i.i, %bb.k ]
  %.sroa.12.2.i = phi i32 [ %i.jf, %bb.j ], [ %i.jo, %bb.k ] ; 3 uses
  %.022.i38.i.i = phi i1 [ true, %bb.j ], [ %i.jj, %bb.k ]
  %.pn42.i = zext i32 %.pn42.in.i to i64
  %.pn.i = sub nsw i64 0, %.pn42.i
  %.sroa.3820.2.i = getelementptr inbounds i8, ptr %.sroa.3820.143.i, i64 %.pn.i ; 2 uses
  %.sroa.0.2.i = load i64, ptr %.sroa.3820.2.i, align 1, !tbaa !22 ; 6 uses
  %i.jp = icmp ult ptr %.0.i46.i, %i.je
  %i.jq = and i1 %i.jp, %.022.i38.i.i
  br i1 %i.jq, label %bb.l, label %BIT_reloadDStream.exit.i.i

bb.l:                                             ; preds = %BIT_reloadDStream.exit43.i.i
  %i.jr = and i32 %.sroa.12.2.i, 63
  %i.js = zext nneg i32 %i.jr to i64
  %i.jt = shl i64 %.sroa.0.2.i, %i.js
  %i.ju = lshr i64 %i.jt, 53
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ju ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 1
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !33
  %i.jy = load i8, ptr %i.jv, align 1, !tbaa !34
  %i.jz = zext i8 %i.jy to i32
  %i.ka = add i32 %.sroa.12.2.i, %i.jz            ; 2 uses
  store i8 %i.jx, ptr %.0.i46.i, align 1, !tbaa !16
  %i.kb = getelementptr inbounds nuw i8, ptr %.0.i46.i, i64 1
  %i.kc = and i32 %i.ka, 63
  %i.kd = zext nneg i32 %i.kc to i64
  %i.ke = shl i64 %.sroa.0.2.i, %i.kd
  %i.kf = lshr i64 %i.ke, 53
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.kf ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 1
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !33
  %i.kj = load i8, ptr %i.kg, align 1, !tbaa !34
  %i.kk = zext i8 %i.kj to i32
  %i.kl = add i32 %i.ka, %i.kk                    ; 2 uses
  store i8 %i.ki, ptr %i.kb, align 1, !tbaa !16
  %i.km = getelementptr inbounds nuw i8, ptr %.0.i46.i, i64 2
  %i.kn = and i32 %i.kl, 63
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = shl i64 %.sroa.0.2.i, %i.ko
  %i.kq = lshr i64 %i.kp, 53
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.kq ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 1
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !33
  %i.ku = load i8, ptr %i.kr, align 1, !tbaa !34
  %i.kv = zext i8 %i.ku to i32
  %i.kw = add i32 %i.kl, %i.kv                    ; 2 uses
  store i8 %i.kt, ptr %i.km, align 1, !tbaa !16
  %i.kx = getelementptr inbounds nuw i8, ptr %.0.i46.i, i64 3
  %i.ky = and i32 %i.kw, 63
  %i.kz = zext nneg i32 %i.ky to i64
  %i.la = shl i64 %.sroa.0.2.i, %i.kz
  %i.lb = lshr i64 %i.la, 53
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.lb ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 1
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !33
  %i.lf = load i8, ptr %i.lc, align 1, !tbaa !34
  %i.lg = zext i8 %i.lf to i32
  %i.lh = add i32 %i.kw, %i.lg                    ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.0.i46.i, i64 4 ; 2 uses
  store i8 %i.le, ptr %i.kx, align 1, !tbaa !16
  %i.lj = icmp ugt i32 %i.lh, 64
  br i1 %i.lj, label %BIT_reloadDStream.exit.i.i, label %bb.i, !prof !43, !llvm.loop !4

bb.m:                                             ; preds = %bb.h
  %.not.i.i.i = icmp ult ptr %i.io, %i.iy
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.lk = lshr i64 %i.iv, 3
  %i.ll = sub nsw i64 0, %i.lk
  %i.lm = getelementptr inbounds i8, ptr %i.io, i64 %i.ll
  %i.ln = and i32 %i.iw, 7
  %.val.i72.i = load i64, ptr %i.lm, align 1, !tbaa !22
  br label %BIT_reloadDStream.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.lo = icmp eq ptr %i.io, %i.ix
  br i1 %i.lo, label %BIT_reloadDStream.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.lp = lshr i32 %i.iw, 3                       ; 2 uses
  %i.lq = zext nneg i32 %i.lp to i64
  %i.lr = sub nsw i64 0, %i.lq
  %i.ls = getelementptr inbounds i8, ptr %i.io, i64 %i.lr
  %i.lt = icmp ult ptr %i.ls, %i.ix
  %i.lu = ptrtoint ptr %i.io to i64
  %i.lv = ptrtoint ptr %i.ix to i64
  %i.lw = sub i64 %i.lu, %i.lv
  %i.lx = trunc i64 %i.lw to i32
  %.021.i.i.i = select i1 %i.lt, i32 %i.lx, i32 %i.lp ; 2 uses
  %i.ly = zext i32 %.021.i.i.i to i64
  %i.lz = sub nsw i64 0, %i.ly
  %i.ma = getelementptr inbounds i8, ptr %i.io, i64 %i.lz
  %i.mb = shl i32 %.021.i.i.i, 3
  %i.mc = sub i32 %i.iw, %i.mb
  %.val59.i = load i64, ptr %i.ma, align 1, !tbaa !22
  br label %BIT_reloadDStream.exit.i.i

BIT_reloadDStream.exit.i.i:                       ; preds = %bb.l, %BIT_reloadDStream.exit43.i.i, %bb.p, %bb.o, %bb.n
  %.sroa.12.4.i = phi i32 [ %i.iw, %bb.o ], [ %i.mc, %bb.p ], [ %i.ln, %bb.n ], [ %i.lh, %bb.l ], [ %.sroa.12.2.i, %BIT_reloadDStream.exit43.i.i ] ; 3 uses
  %.sroa.0.4.i = phi i64 [ %.val.i.i, %bb.o ], [ %.val59.i, %bb.p ], [ %.val.i72.i, %bb.n ], [ %.sroa.0.2.i, %BIT_reloadDStream.exit43.i.i ], [ %.sroa.0.2.i, %bb.l ] ; 3 uses
  %.3.i.i = phi ptr [ %i.il, %bb.o ], [ %i.il, %bb.p ], [ %i.il, %bb.n ], [ %i.li, %bb.l ], [ %.0.i46.i, %BIT_reloadDStream.exit43.i.i ] ; 5 uses
  %i.md = icmp ult ptr %.3.i.i, %.1.i
  br i1 %i.md, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %BIT_reloadDStream.exit.i.i
  %.3.i.i200 = ptrtoaddr ptr %.3.i.i to i64       ; 2 uses
  %i.me = sub i64 %i.iz, %.3.i.i200
  %xtraiter = and i64 %i.me, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.mf = and i32 %.sroa.12.4.i, 63
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = shl i64 %.sroa.0.4.i, %i.mg
  %i.mi = lshr i64 %i.mh, 53
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.mi ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 1
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !33
  %i.mm = load i8, ptr %i.mj, align 1, !tbaa !34
  %i.mn = zext i8 %i.mm to i32
  %i.mo = add i32 %.sroa.12.4.i, %i.mn
  %i.mp = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 1
  store i8 %i.ml, ptr %.3.i.i, align 1, !tbaa !16
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.6.i48.i.unr = phi ptr [ %.3.i.i, %.lr.ph.i.preheader ], [ %i.mp, %.lr.ph.i.prol ]
  %.sroa.12.547.i.unr = phi i32 [ %.sroa.12.4.i, %.lr.ph.i.preheader ], [ %i.mo, %.lr.ph.i.prol ]
  %i.mq = add i64 %i.iz, -1
  %i.mr = icmp eq i64 %i.mq, %.3.i.i200
  br i1 %i.mr, label %._crit_edge.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.6.i48.i = phi ptr [ %i.nn, %.lr.ph.i ], [ %.6.i48.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.12.547.i = phi i32 [ %i.nm, %.lr.ph.i ], [ %.sroa.12.547.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.ms = and i32 %.sroa.12.547.i, 63
  %i.mt = zext nneg i32 %i.ms to i64
  %i.mu = shl i64 %.sroa.0.4.i, %i.mt
  %i.mv = lshr i64 %i.mu, 53
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.mv ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 1
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !33
  %i.mz = load i8, ptr %i.mw, align 1, !tbaa !34
  %i.na = zext i8 %i.mz to i32
  %i.nb = add i32 %.sroa.12.547.i, %i.na          ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.6.i48.i, i64 1
  store i8 %i.my, ptr %.6.i48.i, align 1, !tbaa !16
  %i.nd = and i32 %i.nb, 63
  %i.ne = zext nneg i32 %i.nd to i64
  %i.nf = shl i64 %.sroa.0.4.i, %i.ne
  %i.ng = lshr i64 %i.nf, 53
  %i.nh = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ng ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 1
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !33
  %i.nk = load i8, ptr %i.nh, align 1, !tbaa !34
  %i.nl = zext i8 %i.nk to i32
  %i.nm = add i32 %i.nb, %i.nl
  %i.nn = getelementptr inbounds nuw i8, ptr %.6.i48.i, i64 2 ; 2 uses
  store i8 %i.nj, ptr %i.nc, align 1, !tbaa !16
  %exitcond.not.i.1 = icmp eq ptr %i.nn, %.1.i
  br i1 %exitcond.not.i.1, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !5

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.pre.i = load ptr, ptr %i.ik, align 8, !tbaa !42
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %BIT_reloadDStream.exit.i.i
  %i.no = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.il, %BIT_reloadDStream.exit.i.i ]
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.jb ; 2 uses
  store ptr %i.np, ptr %i.ik, align 8, !tbaa !42
  %.not56.i = icmp eq ptr %i.np, %.1.i
  br i1 %.not56.i, label %bb.e, label %HUF_decompress4X1_usingDTable_internal_fast.exit.thread

HUF_decompress4X1_usingDTable_internal_fast.exit.thread: ; preds = %bb.f, %bb.g, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %HUF_decompress4X1_usingDTable_internal_default.exit

HUF_decompress4X1_usingDTable_internal_fast.exit: ; preds = %bb.e, %bb.b
  %.6.i = phi i64 [ %i.d, %bb.b ], [ %1, %bb.e ]  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %.not17 = icmp eq i64 %.6.i, 0
  br i1 %.not17, label %bb.q, label %HUF_decompress4X1_usingDTable_internal_default.exit

bb.q:                                             ; preds = %HUF_decompress4X1_usingDTable_internal_fast.exit, %bb.a
  %i.nq = ptrtoaddr ptr %0 to i64                 ; 5 uses
  %i.nr = icmp ult i64 %3, 10
  %i.ns = icmp ult i64 %1, 6
  %or.cond.i.i = or i1 %i.ns, %i.nr
  br i1 %or.cond.i.i, label %HUF_decompress4X1_usingDTable_internal_default.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.nu = getelementptr inbounds i8, ptr %i.nt, i64 -3 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 42 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %.val86.i = load i16, ptr %2, align 1, !tbaa !41 ; 5 uses
  %i.nw = zext i16 %.val86.i to i64               ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %2, i64 2
  %.val85.i = load i16, ptr %i.nx, align 1, !tbaa !41 ; 5 uses
  %i.ny = zext i16 %.val85.i to i64               ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val84.i = load i16, ptr %i.nz, align 1, !tbaa !41 ; 5 uses
  %i.oa = zext i16 %.val84.i to i64               ; 2 uses
  %i.ob = add nuw nsw i64 %i.nw, 6
  %i.oc = add nuw nsw i64 %i.ob, %i.ny
  %i.od = add nuw nsw i64 %i.oc, %i.oa            ; 2 uses
  %i.oe = sub nuw i64 %3, %i.od
  %i.of = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 12 uses
  %i.og = getelementptr i8, ptr %i.of, i64 %i.nw  ; 22 uses
  %i.oh = getelementptr i8, ptr %i.og, i64 %i.ny  ; 22 uses
  %i.oi = getelementptr i8, ptr %i.oh, i64 %i.oa  ; 4 uses
  %i.oj = add i64 %1, 3
  %i.ok = lshr i64 %i.oj, 2                       ; 8 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 %i.ok ; 7 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.ok ; 8 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.ok ; 8 uses
  %.val.i = load i32, ptr %4, align 4
  %.sroa.3.0.extract.shift.i.i = lshr i32 %.val.i, 16 ; 9 uses
  %i.oo = icmp ugt i64 %i.od, %3
  %i.op = mul nuw nsw i64 %i.ok, 3
  %i.oq = icmp samesign ugt i64 %i.op, %1
  %or.cond181.i.i = select i1 %i.oo, i1 true, i1 %i.oq
  br i1 %or.cond181.i.i, label %BIT_initDStream.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.or = icmp eq i16 %.val86.i, 0
  br i1 %i.or, label %BIT_initDStream.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.os = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 3 uses
  %i.ot = icmp ugt i16 %.val86.i, 7
  br i1 %i.ot, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ou = getelementptr i8, ptr %i.og, i64 -1
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !16  ; 2 uses
  %.not51.i.i = icmp eq i8 %i.ov, 0
  br i1 %.not51.i.i, label %BIT_initDStream.exit.thread.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.u
  %i.ow = getelementptr inbounds i8, ptr %i.og, i64 -8 ; 2 uses
  %.val.i.i26 = load i64, ptr %i.ow, align 1, !tbaa !22
  %i.ox = zext i8 %i.ov to i32
  %i.oy = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.ox, i1 true)
  %i.oz = xor i32 %i.oy, 31
  %i.pa = sub nuw nsw i32 8, %i.oz
  br label %bb.ae

bb.v:                                             ; preds = %bb.t
  %i.pb = load i8, ptr %i.of, align 1, !tbaa !16
  %i.pc = zext i8 %i.pb to i64                    ; 7 uses
  switch i16 %.val86.i, label %bb.ac [
    i16 7, label %bb.w
    i16 6, label %bb.x
    i16 5, label %bb.y
    i16 4, label %bb.z
    i16 3, label %bb.aa
    i16 2, label %bb.ab
  ]

bb.w:                                             ; preds = %bb.v
  %i.pd = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !16
  %i.pf = zext i8 %i.pe to i64
  %i.pg = shl nuw nsw i64 %i.pf, 48
  %i.ph = or disjoint i64 %i.pg, %i.pc
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.pi = phi i64 [ %i.ph, %bb.w ], [ %i.pc, %bb.v ]
  %i.pj = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !16
  %i.pl = zext i8 %i.pk to i64
  %i.pm = shl nuw nsw i64 %i.pl, 40
  %i.pn = add nuw nsw i64 %i.pm, %i.pi
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.po = phi i64 [ %i.pn, %bb.x ], [ %i.pc, %bb.v ]
  %i.pp = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !16
  %i.pr = zext i8 %i.pq to i64
  %i.ps = shl nuw nsw i64 %i.pr, 32
  %i.pt = add nuw nsw i64 %i.ps, %i.po
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %i.pu = phi i64 [ %i.pt, %bb.y ], [ %i.pc, %bb.v ]
  %i.pv = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !16
  %i.px = zext i8 %i.pw to i64
  %i.py = shl nuw nsw i64 %i.px, 24
  %i.pz = add nuw nsw i64 %i.py, %i.pu
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.v
  %i.qa = phi i64 [ %i.pz, %bb.z ], [ %i.pc, %bb.v ]
  %i.qb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !16
  %i.qd = zext i8 %i.qc to i64
end_hunk_2

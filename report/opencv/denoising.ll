Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/denoising?download=true
inline.NumInlined: 7167
inline.NumDeleted: 580
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiEclERKNS0_5RangeE:bb.a
.lr.ph82.i:                                       ; preds = %.preheader.i
  %i.cl = add nsw i32 %.084.i, %i.bj
  br label %bb.m

._crit_edge83.i:                                  ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.i, %.preheader.i
  %i.cm = phi i32 [ %i.cj, %.preheader.i ], [ %i.gj, %_ZN2cv7Array2dIiED2Ev.exit55.i ] ; 3 uses
  %i.cn = add nuw nsw i32 %.084.i, 1              ; 2 uses
  %i.co = icmp slt i32 %i.cn, %i.cm
  br i1 %i.co, label %.preheader.i, label %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit, !llvm.loop !1293

bb.m:                                             ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.i, %.lr.ph82.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph82.i ], [ %indvars.iv.next.i, %_ZN2cv7Array2dIiED2Ev.exit55.i ] ; 8 uses
  %i.cp = load i32, ptr %i.g, align 4, !tbaa !201
  %i.cq = mul nsw i32 %i.cp, %.084.i
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cr
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.i
  store i32 0, ptr %i.ct, align 4, !tbaa !91
  %i.cu = load i32, ptr %i.m, align 4, !tbaa !262 ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, 0
  br i1 %i.cv, label %_ZN2cv7Array2dIiED2Ev.exit.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN2cv7Array2dIiED2Ev.exit.i, %bb.m
  %i.cw = phi i32 [ %i.cu, %bb.m ], [ %i.do, %_ZN2cv7Array2dIiED2Ev.exit.i ]
  %i.cx = load i32, ptr %i.aq, align 8, !tbaa !280 ; 2 uses
  %i.cy = sub i32 %i.cl, %i.cx
  %i.cz = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.da = sub i32 %i.cz, %i.cx
  %i.db = load i32, ptr %i.as, align 4, !tbaa !281 ; 3 uses
  %.not78.i = icmp slt i32 %i.db, 0
  br i1 %.not78.i, label %_ZN2cv7Array2dIiED2Ev.exit55.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i
  %i.dc = sub nsw i32 0, %i.db
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.cg, i64 %indvars.iv.i
  br label %.lr.ph.i

_ZN2cv7Array2dIiED2Ev.exit.i:                     ; preds = %bb.m, %_ZN2cv7Array2dIiED2Ev.exit.i
  %.04974.i = phi i32 [ %i.dn, %_ZN2cv7Array2dIiED2Ev.exit.i ], [ 0, %bb.m ] ; 2 uses
  %i.dd = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !1318
  %i.de = mul nsw i32 %i.dd, %.04974.i
  %i.df = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !1318 ; 2 uses
  %i.dg = mul nsw i32 %i.de, %i.df
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.dh
  %i.dj = mul nsw i32 %i.df, %.084.i
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.dk
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.i
  store i32 0, ptr %i.dm, align 4, !tbaa !91
  %i.dn = add nuw nsw i32 %.04974.i, 1            ; 2 uses
  %i.do = load i32, ptr %i.m, align 4, !tbaa !262 ; 2 uses
  %i.dp = icmp slt i32 %i.dn, %i.do
  br i1 %i.dp, label %_ZN2cv7Array2dIiED2Ev.exit.i, label %._crit_edge.i, !llvm.loop !1296

.lr.ph.i:                                         ; preds = %._crit_edge77.i, %.lr.ph.preheader.i
  %i.dq = phi i32 [ %i.dv, %._crit_edge77.i ], [ %i.db, %.lr.ph.preheader.i ] ; 3 uses
  %.04879.i = phi i32 [ %i.dw, %._crit_edge77.i ], [ %i.dc, %.lr.ph.preheader.i ] ; 4 uses
  %.not5275.i = icmp slt i32 %i.dq, 0
  br i1 %.not5275.i, label %._crit_edge77.i, label %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i

_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i:             ; preds = %.lr.ph.i
  %i.dr = sub nsw i32 0, %i.dq
  %i.ds = add i32 %.04879.i, %i.bj
  %i.dt = add i32 %i.cy, %.04879.i
  %i.du = load ptr, ptr %i.au, align 8, !tbaa !194 ; 2 uses
  br label %_ZN2cv7Array2dIiED2Ev.exit53.i

._crit_edge77.i:                                  ; preds = %_ZN2cv7Array2dIiED2Ev.exit53.i, %.lr.ph.i
  %i.dv = phi i32 [ %i.dq, %.lr.ph.i ], [ %i.fq, %_ZN2cv7Array2dIiED2Ev.exit53.i ] ; 2 uses
  %i.dw = add nsw i32 %.04879.i, 1
  %.not.not.i = icmp slt i32 %.04879.i, %i.dv
  br i1 %.not.not.i, label %.lr.ph.i, label %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i, !llvm.loop !1297

_ZN2cv7Array2dIiED2Ev.exit53.i:                   ; preds = %_ZN2cv7Array2dIiED2Ev.exit53.i, %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i
  %.04776.i = phi i32 [ %i.dr, %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i ], [ %i.fp, %_ZN2cv7Array2dIiED2Ev.exit53.i ] ; 5 uses
  %i.dx = load i32, ptr %i.ar, align 8, !tbaa !259 ; 4 uses
  %i.dy = add i32 %i.ds, %i.dx
  %i.dz = add nsw i32 %i.dx, %.04776.i
  %i.ea = add i32 %i.dt, %i.dx
  %i.eb = add i32 %i.da, %.04776.i
  %i.ec = add i32 %i.eb, %i.dx
  %i.ed = load i32, ptr %i.at, align 4, !tbaa !195
  %i.ee = icmp slt i32 %i.ed, 2                   ; 2 uses
  %i.ef = load i64, ptr %i.av, align 8            ; 2 uses
  %i.eg = sext i32 %i.dy to i64
  %i.eh = mul i64 %i.ef, %i.eg
  %.sink.idx.i.i.i = select i1 %i.ee, i64 0, i64 %i.eh
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %i.du, i64 %.sink.idx.i.i.i
  %i.ei = sext i32 %i.dz to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %.sink.i.i.i, i64 %i.ei
  %i.ek = sext i32 %i.ea to i64
  %i.el = mul i64 %i.ef, %i.ek
  %.sink.idx.i5.i.i = select i1 %i.ee, i64 0, i64 %i.el
  %.sink.i6.i.i = getelementptr inbounds nuw i8, ptr %i.du, i64 %.sink.idx.i5.i.i
  %i.em = sext i32 %i.ec to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %.sink.i6.i.i, i64 %i.em
  %i.eo = load <4 x i8>, ptr %i.ej, align 1, !tbaa !28
  %i.ep = load <4 x i8>, ptr %i.en, align 1, !tbaa !28
  %i.eq = zext <4 x i8> %i.eo to <4 x i16>
  %i.er = zext <4 x i8> %i.ep to <4 x i16>
  %i.es = sub nsw <4 x i16> %i.eq, %i.er
  %i.et = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %i.es, i1 false)
  %i.eu = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.et)
  %i.ev = zext i16 %i.eu to i32                   ; 2 uses
  %i.ew = load i32, ptr %i.g, align 4, !tbaa !201
  %i.ex = mul nsw i32 %i.ew, %.084.i
  %i.ey = sext i32 %i.ex to i64
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ey ; 2 uses
  %i.ez = load i32, ptr %gep.i, align 4, !tbaa !91
  %i.fa = add nsw i32 %i.ez, %i.ev
  store i32 %i.fa, ptr %gep.i, align 4, !tbaa !91
  %i.fb = load i32, ptr %i.as, align 4, !tbaa !281
  %i.fc = add nsw i32 %i.fb, %.04776.i
  %i.fd = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !1319
  %i.fe = mul nsw i32 %i.fd, %i.fc
  %i.ff = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !1319 ; 2 uses
  %i.fg = mul nsw i32 %i.fe, %i.ff
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.fh
  %i.fj = mul nsw i32 %i.ff, %.084.i
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.fk
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv.i ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !91
  %i.fo = add nsw i32 %i.fn, %i.ev
  store i32 %i.fo, ptr %i.fm, align 4, !tbaa !91
  %i.fp = add nsw i32 %.04776.i, 1
  %i.fq = load i32, ptr %i.as, align 4, !tbaa !281 ; 2 uses
  %.not52.not.i = icmp slt i32 %.04776.i, %i.fq
  br i1 %.not52.not.i, label %_ZN2cv7Array2dIiED2Ev.exit53.i, label %._crit_edge77.i, !llvm.loop !1300

_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i:          ; preds = %._crit_edge77.i
  %.pre.i = load i32, ptr %i.m, align 4, !tbaa !262
  br label %_ZN2cv7Array2dIiED2Ev.exit55.i

_ZN2cv7Array2dIiED2Ev.exit55.i:                   ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i, %._crit_edge.i
  %i.fr = phi i32 [ %.pre.i, %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i ], [ %i.cw, %._crit_edge.i ]
  %i.fs = add nsw i32 %i.fr, -1
  %i.ft = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !1320
  %i.fu = mul nsw i32 %i.ft, %i.fs
  %i.fv = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !1320 ; 2 uses
  %i.fw = mul nsw i32 %i.fu, %i.fv
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.fx
  %i.fz = mul nsw i32 %i.fv, %.084.i
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.ga
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv.i
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !91
  %i.ge = load i32, ptr %i.ah, align 8, !tbaa !207, !noalias !1321
  %i.gf = mul nsw i32 %i.ge, %.084.i
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.gg
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.i
  store i32 %i.gd, ptr %i.gi, align 4, !tbaa !91
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gj = load i32, ptr %i.d, align 8, !tbaa !261 ; 2 uses
  %i.gk = sext i32 %i.gj to i64
  %i.gl = icmp slt i64 %indvars.iv.next.i, %i.gk
  br i1 %i.gl, label %bb.m, label %._crit_edge83.i, !llvm.loop !1305

bb.n:                                             ; preds = %bb.p
  %i.gm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.gn = load i8, ptr %i.ai, align 4, !tbaa !208, !range !210, !noundef !130
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.s, label %_ZN2cv7Array3dIiED2Ev.exit118

bb.o:                                             ; preds = %bb.k
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiE32calcDistSumsForElementInFirstRowEiiiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %i.a, i32 noundef %i.cb, i32 noundef %.1203, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(21) %3, ptr noundef nonnull align 8 dereferenceable(21) %4)
          to label %.loopexit unwind label %bb.n

bb.q:                                             ; preds = %bb.o
  %i.gp = load i32, ptr %i.ar, align 8, !tbaa !259 ; 2 uses
  %i.gq = add nsw i32 %i.gp, %i.bj                ; 3 uses
  %i.gr = sub nsw i32 %i.gq, %i.bz
  %i.gs = load ptr, ptr %i.au, align 8, !tbaa !194 ; 8 uses
  %i.gt = load i64, ptr %i.av, align 8            ; 4 uses
  %i.gu = load i32, ptr %i.d, align 8, !tbaa !261 ; 4 uses
  %i.gv = icmp sgt i32 %i.gu, 0
  br i1 %i.gv, label %.lr.ph171, label %.loopexit

.lr.ph171:                                        ; preds = %bb.q
  %i.gw = add nsw i32 %i.gp, %i.cb                ; 2 uses
  %i.gx = sub i32 %i.gw, %i.bz
  %i.gy = load i32, ptr %i.as, align 4, !tbaa !281 ; 4 uses
  %i.gz = add i32 %i.gx, %i.gy
  %i.ha = load i32, ptr %i.at, align 4, !tbaa !195
  %i.hb = icmp slt i32 %i.ha, 2                   ; 2 uses
  %i.hc = add nsw i32 %i.gq, %i.gy
  %i.hd = sext i32 %i.hc to i64
  %i.he = mul i64 %i.gt, %i.hd
  %.sink.idx.i114 = select i1 %i.hb, i64 0, i64 %i.he
  %.sink.i115 = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.sink.idx.i114
  %i.hf = add nsw i32 %i.gw, %i.gy
  %i.hg = sext i32 %i.hf to i64                   ; 2 uses
  %i.hh = getelementptr inbounds [4 x i8], ptr %.sink.i115, i64 %i.hg ; 4 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.hh, i64 3
  %6 = load i8, ptr %5, align 1, !tbaa !28
  %7 = getelementptr inbounds nuw i8, ptr %i.hh, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa !28
  %9 = getelementptr inbounds nuw i8, ptr %i.hh, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !28
  %11 = load i8, ptr %i.hh, align 1, !tbaa !28
  %i.hi = xor i32 %i.gy, -1
  %i.hj = add i32 %i.gq, %i.hi
  %i.hk = sext i32 %i.hj to i64
  %i.hl = mul i64 %i.gt, %i.hk
  %.sink.idx.i = select i1 %i.hb, i64 0, i64 %i.hl
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.sink.idx.i
  %i.hm = getelementptr inbounds [4 x i8], ptr %.sink.i, i64 %i.hg ; 4 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.hm, i64 3
  %13 = load i8, ptr %12, align 1, !tbaa !28
  %14 = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
  %15 = load i8, ptr %14, align 1, !tbaa !28
  %16 = getelementptr inbounds nuw i8, ptr %i.hm, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !28
  %18 = load i8, ptr %i.hm, align 1, !tbaa !28
  %i.hn = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.ho = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.hp = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %19 = zext i8 %11 to i32                        ; 2 uses
  %20 = zext i8 %10 to i32                        ; 2 uses
  %21 = zext i8 %8 to i32                         ; 2 uses
  %22 = zext i8 %6 to i32                         ; 2 uses
  %23 = zext i8 %18 to i32                        ; 2 uses
  %24 = zext i8 %17 to i32                        ; 2 uses
  %25 = zext i8 %15 to i32                        ; 2 uses
  %26 = zext i8 %13 to i32                        ; 2 uses
  %i.hq = sext i32 %i.gz to i64                   ; 6 uses
  %wide.trip.count = zext nneg i32 %i.gu to i64   ; 4 uses
  %i.hr = shl nuw nsw i64 %wide.trip.count, 2     ; 4 uses
  %scevgep = getelementptr i8, ptr %i.hn, i64 %i.hr
  %scevgep293 = getelementptr i8, ptr %i.ho, i64 %i.hr
  %scevgep295 = getelementptr i8, ptr %i.hp, i64 %i.hr
  %i.hs = shl nsw i64 %i.hq, 2                    ; 3 uses
  %scevgep297 = getelementptr i8, ptr %i.gs, i64 %i.hs
  %i.ht = add nsw i64 %i.hs, %i.hr                ; 2 uses
  %scevgep299 = getelementptr i8, ptr %i.gs, i64 %i.ht
  %scevgep301 = getelementptr i8, ptr %i.gs, i64 %i.hs
  %scevgep303 = getelementptr i8, ptr %i.gs, i64 %i.ht
  %min.iters.check = icmp ult i32 %i.gu, 8
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %19, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert336 = insertelement <4 x i32> poison, i32 %20, i64 0
  %broadcast.splat337 = shufflevector <4 x i32> %broadcast.splatinsert336, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert338 = insertelement <4 x i32> poison, i32 %21, i64 0
  %broadcast.splat339 = shufflevector <4 x i32> %broadcast.splatinsert338, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert340 = insertelement <4 x i32> poison, i32 %22, i64 0
  %broadcast.splat.a = shufflevector <4 x i32> %broadcast.splatinsert340, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert342 = insertelement <4 x i32> poison, i32 %23, i64 0
  %broadcast.splat343 = shufflevector <4 x i32> %broadcast.splatinsert342, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert344 = insertelement <4 x i32> poison, i32 %24, i64 0
  %broadcast.splat345 = shufflevector <4 x i32> %broadcast.splatinsert344, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert346 = insertelement <4 x i32> poison, i32 %25, i64 0
  %broadcast.splat347 = shufflevector <4 x i32> %broadcast.splatinsert346, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert348 = insertelement <4 x i32> poison, i32 %26, i64 0
  %broadcast.splat349 = shufflevector <4 x i32> %broadcast.splatinsert348, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph171, %._crit_edge
  %.091169 = phi i32 [ 0, %.lr.ph171 ], [ %i.or, %._crit_edge ] ; 5 uses
  %i.hu = load i32, ptr %i.g, align 4, !tbaa !201
  %i.hv = mul i32 %i.hu, %.091169
  %i.hw = sext i32 %i.hv to i64                   ; 2 uses
  %i.hx = getelementptr [4 x i8], ptr %i.hn, i64 %i.hw ; 6 uses
  %i.hy = load i32, ptr %i.q, align 4, !tbaa !206
  %i.hz = mul nsw i32 %i.hy, %.1203
  %i.ia = load i32, ptr %i.r, align 8, !tbaa !207 ; 2 uses
  %i.ib = mul nsw i32 %i.hz, %i.ia
  %i.ic = sext i32 %i.ib to i64                   ; 2 uses
  %i.id = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.ic
  %i.ie = mul nsw i32 %i.ia, %.091169
  %i.if = sext i32 %i.ie to i64                   ; 2 uses
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.if ; 6 uses
  %i.ih = load i32, ptr %i.ag, align 4, !tbaa !206
  %i.ii = mul i32 %i.ih, %i.cb
  %i.ij = load i32, ptr %i.ah, align 8, !tbaa !207 ; 2 uses
  %i.ik = mul i32 %i.ii, %i.ij
  %i.il = sext i32 %i.ik to i64                   ; 2 uses
  %i.im = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.il
  %i.in = mul nsw i32 %i.ij, %.091169
  %i.io = sext i32 %i.in to i64                   ; 2 uses
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.im, i64 %i.io ; 6 uses
  %i.iq = load i32, ptr %i.as, align 4, !tbaa !281 ; 2 uses
  %i.ir = xor i32 %i.iq, -1
  %i.is = add i32 %.091169, %i.gr                 ; 2 uses
  %i.it = add i32 %i.is, %i.ir
  %i.iu = sext i32 %i.it to i64
  %i.iv = mul i64 %i.gt, %i.iu                    ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.iv ; 5 uses
  %i.ix = add i32 %i.is, %i.iq
  %i.iy = sext i32 %i.ix to i64
  %i.iz = mul i64 %i.gt, %i.iy                    ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.iz ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.jb = shl nsw i64 %i.hw, 2
  %scevgep292 = getelementptr i8, ptr %scevgep, i64 %i.jb ; 4 uses
  %i.jc = add nsw i64 %i.ic, %i.if
  %i.jd = shl nsw i64 %i.jc, 2
  %scevgep294 = getelementptr i8, ptr %scevgep293, i64 %i.jd ; 4 uses
  %i.je = add nsw i64 %i.il, %i.io
  %i.jf = shl nsw i64 %i.je, 2
  %scevgep296 = getelementptr i8, ptr %scevgep295, i64 %i.jf ; 4 uses
  %scevgep298 = getelementptr i8, ptr %scevgep297, i64 %i.iz ; 3 uses
  %scevgep300 = getelementptr i8, ptr %scevgep299, i64 %i.iz ; 3 uses
  %scevgep302 = getelementptr i8, ptr %scevgep301, i64 %i.iv ; 3 uses
  %scevgep304 = getelementptr i8, ptr %scevgep303, i64 %i.iv ; 3 uses
  %bound0 = icmp ult ptr %i.hx, %scevgep294
  %bound1 = icmp ult ptr %i.ig, %scevgep292
  %found.conflict = and i1 %bound0, %bound1
  %bound0305 = icmp ult ptr %i.hx, %scevgep296
  %bound1306 = icmp ult ptr %i.ip, %scevgep292
  %found.conflict307 = and i1 %bound0305, %bound1306
  %conflict.rdx = or i1 %found.conflict, %found.conflict307
  %bound0308 = icmp ult ptr %i.hx, %scevgep300
  %bound1309 = icmp ult ptr %scevgep298, %scevgep292
  %found.conflict310 = and i1 %bound0308, %bound1309
  %conflict.rdx311 = or i1 %conflict.rdx, %found.conflict310
  %bound0312 = icmp ult ptr %i.hx, %scevgep304
  %bound1313 = icmp ult ptr %scevgep302, %scevgep292
  %found.conflict314 = and i1 %bound0312, %bound1313
  %conflict.rdx315 = or i1 %conflict.rdx311, %found.conflict314
  %bound0316 = icmp ult ptr %i.ig, %scevgep296
  %bound1317 = icmp ult ptr %i.ip, %scevgep294
  %found.conflict318 = and i1 %bound0316, %bound1317
  %conflict.rdx319 = or i1 %conflict.rdx315, %found.conflict318
  %bound0320 = icmp ult ptr %i.ig, %scevgep300
  %bound1321 = icmp ult ptr %scevgep298, %scevgep294
  %found.conflict322 = and i1 %bound0320, %bound1321
  %conflict.rdx323 = or i1 %conflict.rdx319, %found.conflict322
  %bound0324 = icmp ult ptr %i.ig, %scevgep304
  %bound1325 = icmp ult ptr %scevgep302, %scevgep294
  %found.conflict326 = and i1 %bound0324, %bound1325
  %conflict.rdx327 = or i1 %conflict.rdx323, %found.conflict326
  %bound0328 = icmp ult ptr %i.ip, %scevgep300
  %bound1329 = icmp ult ptr %scevgep298, %scevgep296
  %found.conflict330 = and i1 %bound0328, %bound1329
  %conflict.rdx331 = or i1 %conflict.rdx327, %found.conflict330
  %bound0332 = icmp ult ptr %i.ip, %scevgep304
  %bound1333 = icmp ult ptr %scevgep302, %scevgep296
  %found.conflict334 = and i1 %bound0332, %bound1333
  %conflict.rdx335 = or i1 %conflict.rdx331, %found.conflict334
  br i1 %conflict.rdx335, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 8 uses
  %i.jg = or disjoint i64 %index, 1
  %i.jh = or disjoint i64 %index, 2
  %i.ji = or disjoint i64 %index, 3
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.jj, align 4, !tbaa !91, !alias.scope !1322, !noalias !1323
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %index ; 4 uses
  %wide.load350 = load <4 x i32>, ptr %i.jk, align 4, !tbaa !91, !alias.scope !1324, !noalias !1325
  %i.jl = sub nsw <4 x i32> %wide.load350, %wide.load
  store <4 x i32> %i.jl, ptr %i.jk, align 4, !tbaa !91, !alias.scope !1324, !noalias !1325
  %i.jm = add nsw i64 %index, %i.hq               ; 2 uses
  %i.jn = add nsw i64 %i.jg, %i.hq                ; 2 uses
  %i.jo = add nsw i64 %i.jh, %i.hq                ; 2 uses
  %i.jp = add nsw i64 %i.ji, %i.hq                ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %index ; 2 uses
  %wide.load351 = load <4 x i32>, ptr %i.jq, align 4, !tbaa !91, !alias.scope !1326, !noalias !1327
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %i.jm ; 4 uses
  %i.js = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %i.jn ; 4 uses
  %i.jt = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %i.jo ; 4 uses
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %i.jp ; 4 uses
  %i.jv = load i8, ptr %i.jr, align 1, !tbaa !28, !alias.scope !1328
  %i.jw = load i8, ptr %i.js, align 1, !tbaa !28, !alias.scope !1328
  %i.jx = load i8, ptr %i.jt, align 1, !tbaa !28, !alias.scope !1328
  %i.jy = load i8, ptr %i.ju, align 1, !tbaa !28, !alias.scope !1328
  %i.jz = insertelement <4 x i8> poison, i8 %i.jv, i64 0
  %i.ka = insertelement <4 x i8> %i.jz, i8 %i.jw, i64 1
  %i.kb = insertelement <4 x i8> %i.ka, i8 %i.jx, i64 2
  %i.kc = insertelement <4 x i8> %i.kb, i8 %i.jy, i64 3
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jr, i64 1
  %i.ke = getelementptr inbounds nuw i8, ptr %i.js, i64 1
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jt, i64 1
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ju, i64 1
  %i.kh = load i8, ptr %i.kd, align 1, !tbaa !28, !alias.scope !1328
  %i.ki = load i8, ptr %i.ke, align 1, !tbaa !28, !alias.scope !1328
  %i.kj = load i8, ptr %i.kf, align 1, !tbaa !28, !alias.scope !1328
  %i.kk = load i8, ptr %i.kg, align 1, !tbaa !28, !alias.scope !1328
  %i.kl = insertelement <4 x i8> poison, i8 %i.kh, i64 0
  %i.km = insertelement <4 x i8> %i.kl, i8 %i.ki, i64 1
  %i.kn = insertelement <4 x i8> %i.km, i8 %i.kj, i64 2
  %i.ko = insertelement <4 x i8> %i.kn, i8 %i.kk, i64 3
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jr, i64 2
  %i.kq = getelementptr inbounds nuw i8, ptr %i.js, i64 2
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jt, i64 2
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ju, i64 2
  %i.kt = load i8, ptr %i.kp, align 1, !tbaa !28, !alias.scope !1328
  %i.ku = load i8, ptr %i.kq, align 1, !tbaa !28, !alias.scope !1328
  %i.kv = load i8, ptr %i.kr, align 1, !tbaa !28, !alias.scope !1328
  %i.kw = load i8, ptr %i.ks, align 1, !tbaa !28, !alias.scope !1328
  %i.kx = insertelement <4 x i8> poison, i8 %i.kt, i64 0
  %i.ky = insertelement <4 x i8> %i.kx, i8 %i.ku, i64 1
  %i.kz = insertelement <4 x i8> %i.ky, i8 %i.kv, i64 2
  %i.la = insertelement <4 x i8> %i.kz, i8 %i.kw, i64 3
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jr, i64 3
  %i.lc = getelementptr inbounds nuw i8, ptr %i.js, i64 3
  %i.ld = getelementptr inbounds nuw i8, ptr %i.jt, i64 3
  %i.le = getelementptr inbounds nuw i8, ptr %i.ju, i64 3
  %i.lf = load i8, ptr %i.lb, align 1, !tbaa !28, !alias.scope !1328
  %i.lg = load i8, ptr %i.lc, align 1, !tbaa !28, !alias.scope !1328
  %i.lh = load i8, ptr %i.ld, align 1, !tbaa !28, !alias.scope !1328
  %i.li = load i8, ptr %i.le, align 1, !tbaa !28, !alias.scope !1328
  %i.lj = insertelement <4 x i8> poison, i8 %i.lf, i64 0
  %i.lk = insertelement <4 x i8> %i.lj, i8 %i.lg, i64 1
  %i.ll = insertelement <4 x i8> %i.lk, i8 %i.lh, i64 2
  %i.lm = insertelement <4 x i8> %i.ll, i8 %i.li, i64 3
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.jm ; 4 uses
  %i.lo = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.jn ; 4 uses
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.jo ; 4 uses
  %i.lq = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.jp ; 4 uses
  %i.lr = load i8, ptr %i.ln, align 1, !tbaa !28, !alias.scope !1329
  %i.ls = load i8, ptr %i.lo, align 1, !tbaa !28, !alias.scope !1329
  %i.lt = load i8, ptr %i.lp, align 1, !tbaa !28, !alias.scope !1329
  %i.lu = load i8, ptr %i.lq, align 1, !tbaa !28, !alias.scope !1329
  %i.lv = insertelement <4 x i8> poison, i8 %i.lr, i64 0
  %i.lw = insertelement <4 x i8> %i.lv, i8 %i.ls, i64 1
  %i.lx = insertelement <4 x i8> %i.lw, i8 %i.lt, i64 2
  %i.ly = insertelement <4 x i8> %i.lx, i8 %i.lu, i64 3
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ln, i64 1
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lo, i64 1
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lp, i64 1
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lq, i64 1
  %i.md = load i8, ptr %i.lz, align 1, !tbaa !28, !alias.scope !1329
  %i.me = load i8, ptr %i.ma, align 1, !tbaa !28, !alias.scope !1329
  %i.mf = load i8, ptr %i.mb, align 1, !tbaa !28, !alias.scope !1329
  %i.mg = load i8, ptr %i.mc, align 1, !tbaa !28, !alias.scope !1329
  %i.mh = insertelement <4 x i8> poison, i8 %i.md, i64 0
  %i.mi = insertelement <4 x i8> %i.mh, i8 %i.me, i64 1
  %i.mj = insertelement <4 x i8> %i.mi, i8 %i.mf, i64 2
  %i.mk = insertelement <4 x i8> %i.mj, i8 %i.mg, i64 3
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ln, i64 2
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lo, i64 2
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lp, i64 2
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lq, i64 2
  %i.mp = load i8, ptr %i.ml, align 1, !tbaa !28, !alias.scope !1329
  %i.mq = load i8, ptr %i.mm, align 1, !tbaa !28, !alias.scope !1329
  %i.mr = load i8, ptr %i.mn, align 1, !tbaa !28, !alias.scope !1329
  %i.ms = load i8, ptr %i.mo, align 1, !tbaa !28, !alias.scope !1329
  %i.mt = insertelement <4 x i8> poison, i8 %i.mp, i64 0
  %i.mu = insertelement <4 x i8> %i.mt, i8 %i.mq, i64 1
  %i.mv = insertelement <4 x i8> %i.mu, i8 %i.mr, i64 2
  %i.mw = insertelement <4 x i8> %i.mv, i8 %i.ms, i64 3
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ln, i64 3
  %i.my = getelementptr inbounds nuw i8, ptr %i.lo, i64 3
  %i.mz = getelementptr inbounds nuw i8, ptr %i.lp, i64 3
  %i.na = getelementptr inbounds nuw i8, ptr %i.lq, i64 3
  %i.nb = load i8, ptr %i.mx, align 1, !tbaa !28, !alias.scope !1329
  %i.nc = load i8, ptr %i.my, align 1, !tbaa !28, !alias.scope !1329
  %i.nd = load i8, ptr %i.mz, align 1, !tbaa !28, !alias.scope !1329
  %i.ne = load i8, ptr %i.na, align 1, !tbaa !28, !alias.scope !1329
  %i.nf = insertelement <4 x i8> poison, i8 %i.nb, i64 0
  %i.ng = insertelement <4 x i8> %i.nf, i8 %i.nc, i64 1
  %i.nh = insertelement <4 x i8> %i.ng, i8 %i.nd, i64 2
  %i.ni = insertelement <4 x i8> %i.nh, i8 %i.ne, i64 3
  %i.nj = zext <4 x i8> %i.ly to <4 x i32>
  %i.nk = sub nsw <4 x i32> %broadcast.splat, %i.nj
  %i.nl = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.nk, i1 true)
  %i.nm = zext <4 x i8> %i.mk to <4 x i32>
  %i.nn = sub nsw <4 x i32> %broadcast.splat337, %i.nm
  %i.no = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.nn, i1 true)
  %i.np = zext <4 x i8> %i.mw to <4 x i32>
  %i.nq = sub nsw <4 x i32> %broadcast.splat339, %i.np
  %i.nr = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.nq, i1 true)
  %i.ns = zext <4 x i8> %i.ni to <4 x i32>
  %i.nt = sub nsw <4 x i32> %broadcast.splat.a, %i.ns
  %i.nu = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.nt, i1 true)
  %i.nv = zext <4 x i8> %i.kc to <4 x i32>
  %i.nw = sub nsw <4 x i32> %broadcast.splat343, %i.nv
  %i.nx = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.nw, i1 true)
  %i.ny = zext <4 x i8> %i.ko to <4 x i32>
  %i.nz = sub nsw <4 x i32> %broadcast.splat345, %i.ny
  %i.oa = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.nz, i1 true)
  %i.ob = zext <4 x i8> %i.la to <4 x i32>
  %i.oc = sub nsw <4 x i32> %broadcast.splat347, %i.ob
  %i.od = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.oc, i1 true)
  %i.oe = zext <4 x i8> %i.lm to <4 x i32>
  %i.of = sub nsw <4 x i32> %broadcast.splat349, %i.oe
  %i.og = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.of, i1 true)
  %i.oh = add nuw nsw <4 x i32> %i.nx, %i.oa
  %i.oi = add nuw nsw <4 x i32> %i.oh, %i.od
  %i.oj = add nuw nsw <4 x i32> %i.oi, %i.og
  %i.ok = sub <4 x i32> %wide.load351, %i.oj
  %i.ol = add <4 x i32> %i.ok, %i.nl
  %i.om = add <4 x i32> %i.ol, %i.no
  %i.on = add <4 x i32> %i.om, %i.nr
  %i.oo = add <4 x i32> %i.on, %i.nu              ; 3 uses
  store <4 x i32> %i.oo, ptr %i.jj, align 4, !tbaa !91, !alias.scope !1322, !noalias !1323
  %wide.load352 = load <4 x i32>, ptr %i.jk, align 4, !tbaa !91, !alias.scope !1324, !noalias !1325
  %i.op = add nsw <4 x i32> %i.oo, %wide.load352
  store <4 x i32> %i.op, ptr %i.jk, align 4, !tbaa !91, !alias.scope !1324, !noalias !1325
  store <4 x i32> %i.oo, ptr %i.jq, align 4, !tbaa !91, !alias.scope !1326, !noalias !1327
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.oq = icmp eq i64 %index.next, %n.vec
  br i1 %i.oq, label %middle.block, label %vector.body, !llvm.loop !1312

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.or = add nuw nsw i32 %.091169, 1             ; 2 uses
  %exitcond222.not = icmp eq i32 %i.or, %i.gu
  br i1 %exitcond222.not, label %.loopexit, label %.lr.ph, !llvm.loop !1313

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %indvars.iv ; 3 uses
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !91
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv ; 4 uses
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !91
  %i.ow = sub nsw i32 %i.ov, %i.ot
  store i32 %i.ow, ptr %i.ou, align 4, !tbaa !91
  %i.ox = add nsw i64 %indvars.iv, %i.hq          ; 2 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv ; 2 uses
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !91
  %i.pa = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %i.ox ; 4 uses
  %27 = load i8, ptr %i.pa, align 1, !tbaa !28
  %28 = getelementptr inbounds nuw i8, ptr %i.pa, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !28
  %30 = getelementptr inbounds nuw i8, ptr %i.pa, i64 2
  %31 = load i8, ptr %30, align 1, !tbaa !28
  %32 = getelementptr inbounds nuw i8, ptr %i.pa, i64 3
  %33 = load i8, ptr %32, align 1, !tbaa !28
  %i.pb = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.ox ; 4 uses
  %34 = load i8, ptr %i.pb, align 1, !tbaa !28
  %35 = getelementptr inbounds nuw i8, ptr %i.pb, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !28
  %37 = getelementptr inbounds nuw i8, ptr %i.pb, i64 2
  %38 = load i8, ptr %37, align 1, !tbaa !28
  %39 = getelementptr inbounds nuw i8, ptr %i.pb, i64 3
  %40 = load i8, ptr %39, align 1, !tbaa !28
  %41 = zext i8 %34 to i32
  %42 = sub nsw i32 %19, %41
  %43 = call i32 @llvm.abs.i32(i32 %42, i1 true)
  %i.pc = zext i8 %36 to i32
  %44 = sub nsw i32 %20, %i.pc
  %45 = call i32 @llvm.abs.i32(i32 %44, i1 true)
  %i.pd = zext i8 %38 to i32
  %46 = sub nsw i32 %21, %i.pd
  %47 = call i32 @llvm.abs.i32(i32 %46, i1 true)
  %i.pe = zext i8 %40 to i32
  %48 = sub nsw i32 %22, %i.pe
  %49 = call i32 @llvm.abs.i32(i32 %48, i1 true)
  %i.pf = zext i8 %27 to i32
  %50 = sub nsw i32 %23, %i.pf
  %51 = call i32 @llvm.abs.i32(i32 %50, i1 true)
  %52 = zext i8 %29 to i32
  %.neg14.i.a = sub nsw i32 %24, %52
  %53 = call i32 @llvm.abs.i32(i32 %.neg14.i.a, i1 true)
  %i.pg = zext i8 %31 to i32
  %54 = sub nsw i32 %25, %i.pg
  %55 = call i32 @llvm.abs.i32(i32 %54, i1 true)
  %i.ph = zext i8 %33 to i32
  %56 = sub nsw i32 %26, %i.ph
  %57 = call i32 @llvm.abs.i32(i32 %56, i1 true)
  %58 = add nuw nsw i32 %51, %53
  %.neg18.i.a = add nuw nsw i32 %58, %55
  %59 = add nuw nsw i32 %.neg18.i.a, %57
  %.neg14.i = sub i32 %i.oz, %59
  %i.pi = add i32 %.neg14.i, %43
  %.neg18.i = add i32 %i.pi, %45
  %60 = add i32 %.neg18.i, %47
  %i.pj = add i32 %60, %49                        ; 2 uses
  store i32 %i.pj, ptr %i.os, align 4, !tbaa !91
  %i.pk = load i32, ptr %i.ou, align 4, !tbaa !91
  %i.pl = add nsw i32 %i.pj, %i.pk
  store i32 %i.pl, ptr %i.ou, align 4, !tbaa !91
  %i.pm = load i32, ptr %i.os, align 4, !tbaa !91
  store i32 %i.pm, ptr %i.oy, align 4, !tbaa !91
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1314

.loopexit:                                        ; preds = %._crit_edge, %bb.q, %bb.p
  %i.pn = add nsw i32 %.1203, 1
  %i.po = load i32, ptr %i.m, align 4, !tbaa !262
  %i.pp = srem i32 %i.pn, %i.po
  %.pre = load i32, ptr %i.d, align 8, !tbaa !261
  br label %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit

_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit: ; preds = %._crit_edge83.i, %.loopexit
  %i.pq = phi i32 [ %.pre, %.loopexit ], [ %i.cm, %._crit_edge83.i ] ; 2 uses
  %.2 = phi i32 [ %i.pp, %.loopexit ], [ 0, %._crit_edge83.i ] ; 2 uses
  %i.pr = icmp sgt i32 %i.pq, 0
  br i1 %i.pr, label %.lr.ph191, label %._crit_edge192

.lr.ph191:                                        ; preds = %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit
  %i.ps = load i32, ptr %i.ar, align 8, !tbaa !259 ; 2 uses
  %invariant.op = add i32 %i.ca, %i.ps
  %i.pt = load ptr, ptr %i.au, align 8, !tbaa !194
  %i.pu = load i64, ptr %i.av, align 8, !tbaa !82
  %i.pv = load ptr, ptr %2, align 8, !tbaa !203
  %i.pw = load i32, ptr %i.g, align 4, !tbaa !201
  %i.px = add nsw i32 %i.cc, %i.ps
  %i.py = sext i32 %i.px to i64
  %i.pz = sext i32 %i.pw to i64
  %wide.trip.count234 = zext nneg i32 %i.pq to i64 ; 2 uses
  %.pre246 = load i32, ptr %i.aw, align 8, !tbaa !263
  %.pre247 = load ptr, ptr %i.ax, align 8, !tbaa !47
  %invariant.gep281 = getelementptr [4 x i8], ptr %i.pt, i64 %i.py
  br label %.lr.ph177

.lr.ph177:                                        ; preds = %.lr.ph191, %._crit_edge178
  %indvars.iv231 = phi i64 [ 0, %.lr.ph191 ], [ %indvars.iv.next232, %._crit_edge178 ] ; 3 uses
  %.lcssa185202 = phi i32 [ 0, %.lr.ph191 ], [ %i.rh, %._crit_edge178 ]
  %.lcssa183199 = phi i32 [ 0, %.lr.ph191 ], [ %i.re, %._crit_edge178 ]
  %.lcssa181196 = phi i32 [ 0, %.lr.ph191 ], [ %i.rb, %._crit_edge178 ]
  %.sroa.0126.1189 = phi i32 [ 0, %.lr.ph191 ], [ %i.ri, %._crit_edge178 ]
  %.lcssa173187188 = phi i32 [ 0, %.lr.ph191 ], [ %i.qy, %._crit_edge178 ]
  %i.qa = trunc nuw nsw i64 %indvars.iv231 to i32
  %.reass = add i32 %invariant.op, %i.qa
  %i.qb = sext i32 %.reass to i64
  %i.qc = mul i64 %i.pu, %i.qb
  %i.qd = mul nsw i64 %indvars.iv231, %i.pz
  %i.qe = getelementptr inbounds [4 x i8], ptr %i.pv, i64 %i.qd
  %gep282 = getelementptr i8, ptr %invariant.gep281, i64 %i.qc
  br label %bb.r

._crit_edge178:                                   ; preds = %bb.r
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %exitcond235.not = icmp eq i64 %indvars.iv.next232, %wide.trip.count234
  br i1 %exitcond235.not, label %._crit_edge192, label %.lr.ph177, !llvm.loop !1315

bb.r:                                             ; preds = %.lr.ph177, %bb.r
  %indvars.iv226 = phi i64 [ 0, %.lr.ph177 ], [ %indvars.iv.next227, %bb.r ] ; 3 uses
  %i.qf = phi i32 [ %.lcssa185202, %.lr.ph177 ], [ %i.rh, %bb.r ]
  %i.qg = phi i32 [ %.lcssa183199, %.lr.ph177 ], [ %i.re, %bb.r ]
  %i.qh = phi i32 [ %.lcssa181196, %.lr.ph177 ], [ %i.rb, %bb.r ]
  %.sroa.0126.2174 = phi i32 [ %.sroa.0126.1189, %.lr.ph177 ], [ %i.ri, %bb.r ]
  %i.qi = phi i32 [ %.lcssa173187188, %.lr.ph177 ], [ %i.qy, %bb.r ]
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %indvars.iv226
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !91
  %i.ql = ashr i32 %i.qk, %.pre246
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %.pre247, i64 %i.qm
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !91 ; 5 uses
  %gep = getelementptr [4 x i8], ptr %gep282, i64 %indvars.iv226 ; 4 uses
  %i.qp = load i8, ptr %gep, align 1, !tbaa !28
  %i.qq = getelementptr inbounds nuw i8, ptr %gep, i64 1
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !28
  %i.qs = getelementptr inbounds nuw i8, ptr %gep, i64 2
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !28
  %i.qu = getelementptr inbounds nuw i8, ptr %gep, i64 3
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !28
  %i.qw = zext i8 %i.qp to i32
  %i.qx = mul nsw i32 %i.qo, %i.qw
  %i.qy = add nsw i32 %i.qi, %i.qx                ; 3 uses
  %i.qz = zext i8 %i.qr to i32
  %i.ra = mul nsw i32 %i.qo, %i.qz
  %i.rb = add nsw i32 %i.qh, %i.ra                ; 3 uses
  %i.rc = zext i8 %i.qt to i32
  %i.rd = mul nsw i32 %i.qo, %i.rc
  %i.re = add nsw i32 %i.qg, %i.rd                ; 3 uses
  %i.rf = zext i8 %i.qv to i32
  %i.rg = mul nsw i32 %i.qo, %i.rf
  %i.rh = add nsw i32 %i.qf, %i.rg                ; 3 uses
  %i.ri = add nsw i32 %i.qo, %.sroa.0126.2174     ; 3 uses
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond230.not = icmp eq i64 %indvars.iv.next227, %wide.trip.count234
  br i1 %exitcond230.not, label %._crit_edge178, label %bb.r, !llvm.loop !1316

._crit_edge192:                                   ; preds = %._crit_edge178, %bb.l, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit
  %.2271 = phi i32 [ 0, %bb.l ], [ %.2, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %.2, %._crit_edge178 ] ; 2 uses
  %.sroa.5.0 = phi i32 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.rb, %._crit_edge178 ]
  %.sroa.9.0 = phi i32 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.re, %._crit_edge178 ]
  %.sroa.13.0 = phi i32 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.rh, %._crit_edge178 ]
  %.lcssa173187.lcssa = phi i32 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.qy, %._crit_edge178 ]
  %.sroa.0126.1.lcssa = phi i32 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.ri, %._crit_edge178 ] ; 5 uses
  %i.rj = sdiv i32 %.sroa.0126.1.lcssa, 2         ; 4 uses
  %i.rk = add i32 %.lcssa173187.lcssa, %i.rj
  %i.rl = udiv i32 %i.rk, %.sroa.0126.1.lcssa
  %i.rm = add i32 %.sroa.5.0, %i.rj
  %i.rn = udiv i32 %i.rm, %.sroa.0126.1.lcssa
  %i.ro = add i32 %.sroa.9.0, %i.rj
  %i.rp = udiv i32 %i.ro, %.sroa.0126.1.lcssa
  %i.rq = add i32 %.sroa.13.0, %i.rj
  %i.rr = udiv i32 %i.rq, %.sroa.0126.1.lcssa
  %i.rs = call i32 @llvm.smax.i32(i32 %i.rl, i32 0)
  %i.rt = call i32 @llvm.umin.i32(i32 %i.rs, i32 255)
  %i.ru = call i32 @llvm.smax.i32(i32 %i.rn, i32 0)
  %i.rv = call i32 @llvm.umin.i32(i32 %i.ru, i32 255)
  %i.rw = call i32 @llvm.smax.i32(i32 %i.rp, i32 0)
  %i.rx = call i32 @llvm.umin.i32(i32 %i.rw, i32 255)
  %i.ry = call i32 @llvm.smax.i32(i32 %i.rr, i32 0)
  %i.rz = call i32 @llvm.umin.i32(i32 %i.ry, i32 255)
  %i.sa = load ptr, ptr %i.ay, align 8, !tbaa !264, !nonnull !130, !align !131 ; 3 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 4
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !195
  %i.sd = icmp slt i32 %i.sc, 2
  %i.se = getelementptr inbounds nuw i8, ptr %i.sa, i64 24
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !194
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sa, i64 128
  %i.sh = load i64, ptr %i.sg, align 8
  %i.si = mul i64 %i.sh, %indvars.iv239
  %.sink.idx.i116 = select i1 %i.sd, i64 0, i64 %i.si
  %.sink.i117 = getelementptr inbounds nuw i8, ptr %i.sf, i64 %.sink.idx.i116
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %.sink.i117, i64 %indvars.iv236
  %.sroa.7.0.insert.shift = shl nuw i32 %i.rz, 24
  %.sroa.6.0.insert.shift = shl nuw nsw i32 %i.rx, 16
  %.sroa.6.0.insert.insert = or disjoint i32 %.sroa.7.0.insert.shift, %.sroa.6.0.insert.shift
  %.sroa.5.0.insert.shift = shl nuw nsw i32 %i.rv, 8
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %i.rt
  store i32 %.sroa.0.0.insert.insert, ptr %i.sj, align 1
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %i.sk = load ptr, ptr %i.aa, align 8, !tbaa !260, !nonnull !130, !align !131 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 12
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !191
  %i.sn = sext i32 %i.sm to i64
  %i.so = icmp slt i64 %indvars.iv.next237, %i.sn
  br i1 %i.so, label %bb.k, label %._crit_edge207, !llvm.loop !1317

bb.s:                                             ; preds = %bb.n
  %i.sp = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.sq = icmp eq ptr %i.sp, null
  br i1 %i.sq, label %_ZN2cv7Array3dIiED2Ev.exit118, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.sp) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit118

_ZN2cv7Array3dIiED2Ev.exit118:                    ; preds = %bb.t, %bb.s, %bb.n, %bb.j
  %.pn107.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.j ], [ %i.gm, %bb.n ], [ %i.gm, %bb.s ], [ %i.gm, %bb.t ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.sr = load i8, ptr %i.s, align 4, !tbaa !208, !range !210, !noundef !130
  %i.ss = trunc nuw i8 %i.sr to i1
  br i1 %i.ss, label %bb.u, label %_ZN2cv7Array3dIiED2Ev.exit119

bb.u:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit118
  %i.st = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.su = icmp eq ptr %i.st, null
  br i1 %i.su, label %_ZN2cv7Array3dIiED2Ev.exit119, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.st) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit119

_ZN2cv7Array3dIiED2Ev.exit119:                    ; preds = %bb.v, %bb.u, %_ZN2cv7Array3dIiED2Ev.exit118, %bb.i
  %.pn107.pn.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.i ], [ %.pn107.pn.pn, %_ZN2cv7Array3dIiED2Ev.exit118 ], [ %.pn107.pn.pn, %bb.u ], [ %.pn107.pn.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.sv = load i8, ptr %i.h, align 8, !tbaa !202, !range !210, !noundef !130
  %i.sw = trunc nuw i8 %i.sv to i1
  br i1 %i.sw, label %bb.w, label %_ZN2cv7Array2dIiED2Ev.exit120

bb.w:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit119
  %i.sx = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.sy = icmp eq ptr %i.sx, null
  br i1 %i.sy, label %_ZN2cv7Array2dIiED2Ev.exit120, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.sx) #22
  br label %_ZN2cv7Array2dIiED2Ev.exit120

_ZN2cv7Array2dIiED2Ev.exit120:                    ; preds = %_ZN2cv7Array3dIiED2Ev.exit119, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn107.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiE32calcDistSumsForElementInFirstRowEiiiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(21) %5, ptr noundef nonnull align 8 dereferenceable(21) %6) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsNS1_IiLi4EEEEclERKNS0_5RangeE:bb.a
  %i.o = load i32, ptr %i.d, align 8, !tbaa !268  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.n, ptr %i.p, align 8, !tbaa !205
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 %i.o, ptr %i.q, align 4, !tbaa !206
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 %i.o, ptr %i.r, align 8, !tbaa !207
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  store i8 1, ptr %i.s, align 4, !tbaa !208
  %i.t = mul nsw i32 %i.o, %i.n
  %i.u = mul nsw i32 %i.t, %i.o                   ; 2 uses
  %i.v = zext nneg i32 %i.u to i64
  %i.w = icmp slt i32 %i.u, 0
  %i.x = shl nuw nsw i64 %i.v, 2
  %i.y = select i1 %i.w, i64 -1, i64 %i.x
  %i.z = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.y) #21
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  store ptr %i.z, ptr %3, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !267, !nonnull !130, !align !131
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !191 ; 2 uses
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !268 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ad, ptr %i.af, align 8, !tbaa !205
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 %i.ae, ptr %i.ag, align 4, !tbaa !206
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i32 %i.ae, ptr %i.ah, align 8, !tbaa !207
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  store i8 1, ptr %i.ai, align 4, !tbaa !208
  %i.aj = mul nsw i32 %i.ae, %i.ad
  %i.ak = mul nsw i32 %i.aj, %i.ae                ; 2 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = icmp slt i32 %i.ak, 0
  %i.an = shl nuw nsw i64 %i.al, 2
  %i.ao = select i1 %i.am, i64 -1, i64 %i.an
  %i.ap = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #21
          to label %_ZN2cv7Array3dIiEC2Eiii.exit113 unwind label %bb.j

_ZN2cv7Array3dIiEC2Eiii.exit113:                  ; preds = %bb.b
  store ptr %i.ap, ptr %4, align 8, !tbaa !209
  %.not.not234 = icmp slt i32 %i.a, %i.c
  br i1 %.not.not234, label %.preheader167.lr.ph, label %._crit_edge237

.preheader167.lr.ph:                              ; preds = %_ZN2cv7Array3dIiEC2Eiii.exit113
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %i.aa, align 8, !tbaa !267, !nonnull !130, !align !131 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !191
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.preheader167.preheader, label %._crit_edge237

.preheader167.preheader:                          ; preds = %.preheader167.lr.ph
  %i.bd = sext i32 %i.a to i64                    ; 2 uses
  br label %.preheader167

.preheader167:                                    ; preds = %.preheader167.preheader, %._crit_edge233
  %i.be = phi ptr [ %i.az, %.preheader167.preheader ], [ %i.by, %._crit_edge233 ] ; 2 uses
  %indvars.iv267 = phi i64 [ %i.bd, %.preheader167.preheader ], [ %indvars.iv.next268, %._crit_edge233 ] ; 4 uses
  %.093235 = phi i32 [ -1, %.preheader167.preheader ], [ %.1.lcssa, %._crit_edge233 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !191
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph232, label %._crit_edge233

.lr.ph232:                                        ; preds = %.preheader167
  %i.bi = icmp eq i64 %indvars.iv267, %i.bd
  %i.bj = trunc nsw i64 %indvars.iv267 to i32     ; 3 uses
  br label %bb.k

._crit_edge237:                                   ; preds = %._crit_edge233, %.preheader167.lr.ph, %_ZN2cv7Array3dIiEC2Eiii.exit113
  %i.bk = load i8, ptr %i.ai, align 4, !tbaa !208, !range !210, !noundef !130
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.c, label %_ZN2cv7Array3dIiED2Ev.exit

bb.c:                                             ; preds = %._crit_edge237
  %i.bm = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN2cv7Array3dIiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit

_ZN2cv7Array3dIiED2Ev.exit:                       ; preds = %._crit_edge237, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bo = load i8, ptr %i.s, align 4, !tbaa !208, !range !210, !noundef !130
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.e, label %_ZN2cv7Array3dIiED2Ev.exit114

bb.e:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit
  %i.bq = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZN2cv7Array3dIiED2Ev.exit114, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit114

_ZN2cv7Array3dIiED2Ev.exit114:                    ; preds = %_ZN2cv7Array3dIiED2Ev.exit, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bs = load i8, ptr %i.h, align 8, !tbaa !202, !range !210, !noundef !130
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.g, label %_ZN2cv7Array2dIiED2Ev.exit

bb.g:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit114
  %i.bu = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN2cv7Array2dIiED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #22
  br label %_ZN2cv7Array2dIiED2Ev.exit

_ZN2cv7Array2dIiED2Ev.exit:                       ; preds = %_ZN2cv7Array3dIiED2Ev.exit114, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.i:                                             ; preds = %bb.a
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv7Array3dIiED2Ev.exit120

bb.j:                                             ; preds = %bb.b
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv7Array3dIiED2Ev.exit119

._crit_edge233:                                   ; preds = %._crit_edge201.split.us, %.preheader167
  %i.by = phi ptr [ %i.be, %.preheader167 ], [ %i.ny, %._crit_edge201.split.us ]
  %.1.lcssa = phi i32 [ %.093235, %.preheader167 ], [ %.2, %._crit_edge201.split.us ]
  %indvars.iv.next268 = add nsw i64 %indvars.iv267, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next268 to i32
  %exitcond270.not = icmp eq i32 %i.c, %lftr.wideiv
  br i1 %exitcond270.not, label %._crit_edge237, label %.preheader167, !llvm.loop !1351

bb.k:                                             ; preds = %.lr.ph232, %._crit_edge201.split.us
  %indvars.iv264 = phi i64 [ 0, %.lr.ph232 ], [ %indvars.iv.next265, %._crit_edge201.split.us ] ; 4 uses
  %.1229 = phi i32 [ %.093235, %.lr.ph232 ], [ %.2, %._crit_edge201.split.us ] ; 3 uses
  %i.bz = load i32, ptr %i.aq, align 8, !tbaa !282 ; 4 uses
  %i.ca = sub i32 %i.bj, %i.bz
  %i.cb = trunc i64 %indvars.iv264 to i32         ; 4 uses
  %i.cc = sub i32 %i.cb, %i.bz
  %i.cd = icmp eq i64 %indvars.iv264, 0
  br i1 %i.cd, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsNS1_IiLi4EEEE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESB_(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %i.bj, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(21) %3, ptr noundef nonnull align 8 dereferenceable(21) %4)
          to label %.preheader166.preheader unwind label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cf = load i8, ptr %i.ai, align 4, !tbaa !208, !range !210, !noundef !130
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.r, label %_ZN2cv7Array3dIiED2Ev.exit119

bb.n:                                             ; preds = %bb.k
  br i1 %i.bi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsNS1_IiLi4EEEE32calcDistSumsForElementInFirstRowEiiiRNS0_7Array2dIiEERNS0_7Array3dIiEESB_(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %i.a, i32 noundef %i.cb, i32 noundef %.1229, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(21) %3, ptr noundef nonnull align 8 dereferenceable(21) %4)
          to label %.loopexit unwind label %bb.m

bb.p:                                             ; preds = %bb.n
  %i.ch = load i32, ptr %i.ar, align 8, !tbaa !266 ; 2 uses
  %i.ci = add nsw i32 %i.ch, %i.bj                ; 3 uses
  %i.cj = sub nsw i32 %i.ci, %i.bz
  %i.ck = load ptr, ptr %i.au, align 8, !tbaa !194 ; 8 uses
  %i.cl = load i64, ptr %i.av, align 8            ; 4 uses
  %i.cm = load i32, ptr %i.d, align 8, !tbaa !268 ; 4 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph172, label %.loopexit

.lr.ph172:                                        ; preds = %bb.p
  %i.co = add nsw i32 %i.ch, %i.cb                ; 2 uses
  %i.cp = sub i32 %i.co, %i.bz
  %i.cq = load i32, ptr %i.as, align 4, !tbaa !283 ; 4 uses
  %i.cr = add i32 %i.cp, %i.cq
  %i.cs = load i32, ptr %i.at, align 4, !tbaa !195
  %i.ct = icmp slt i32 %i.cs, 2                   ; 2 uses
  %i.cu = add nsw i32 %i.ci, %i.cq
  %i.cv = sext i32 %i.cu to i64
  %i.cw = mul i64 %i.cl, %i.cv
  %.sink.idx.i115 = select i1 %i.ct, i64 0, i64 %i.cw
  %.sink.i116 = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.sink.idx.i115
  %i.cx = add nsw i32 %i.co, %i.cq
  %i.cy = sext i32 %i.cx to i64                   ; 2 uses
  %i.cz = getelementptr inbounds [4 x i8], ptr %.sink.i116, i64 %i.cy ; 4 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.cz, i64 3
  %6 = load i8, ptr %5, align 1, !tbaa !28
  %7 = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa !28
  %9 = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !28
  %11 = load i8, ptr %i.cz, align 1, !tbaa !28
  %i.da = xor i32 %i.cq, -1
  %i.db = add i32 %i.ci, %i.da
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul i64 %i.cl, %i.dc
  %.sink.idx.i = select i1 %i.ct, i64 0, i64 %i.dd
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.sink.idx.i
  %i.de = getelementptr inbounds [4 x i8], ptr %.sink.i, i64 %i.cy ; 4 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.de, i64 3
  %13 = load i8, ptr %12, align 1, !tbaa !28
  %14 = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  %15 = load i8, ptr %14, align 1, !tbaa !28
  %16 = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !28
  %18 = load i8, ptr %i.de, align 1, !tbaa !28
  %i.df = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.dg = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.dh = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %19 = zext i8 %11 to i32                        ; 2 uses
  %20 = zext i8 %10 to i32                        ; 2 uses
  %21 = zext i8 %8 to i32                         ; 2 uses
  %22 = zext i8 %6 to i32                         ; 2 uses
  %23 = zext i8 %18 to i32                        ; 2 uses
  %24 = zext i8 %17 to i32                        ; 2 uses
  %25 = zext i8 %15 to i32                        ; 2 uses
  %26 = zext i8 %13 to i32                        ; 2 uses
  %i.di = sext i32 %i.cr to i64                   ; 6 uses
  %wide.trip.count = zext nneg i32 %i.cm to i64   ; 4 uses
  %i.dj = shl nuw nsw i64 %wide.trip.count, 2     ; 4 uses
  %scevgep = getelementptr i8, ptr %i.df, i64 %i.dj
  %scevgep307 = getelementptr i8, ptr %i.dg, i64 %i.dj
  %scevgep309 = getelementptr i8, ptr %i.dh, i64 %i.dj
  %i.dk = shl nsw i64 %i.di, 2                    ; 3 uses
  %scevgep311 = getelementptr i8, ptr %i.ck, i64 %i.dk
  %i.dl = add nsw i64 %i.dk, %i.dj                ; 2 uses
  %scevgep313 = getelementptr i8, ptr %i.ck, i64 %i.dl
  %scevgep315 = getelementptr i8, ptr %i.ck, i64 %i.dk
  %scevgep317 = getelementptr i8, ptr %i.ck, i64 %i.dl
  %min.iters.check = icmp ult i32 %i.cm, 8
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %19, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert350 = insertelement <4 x i32> poison, i32 %20, i64 0
  %broadcast.splat351 = shufflevector <4 x i32> %broadcast.splatinsert350, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert352 = insertelement <4 x i32> poison, i32 %21, i64 0
  %broadcast.splat353 = shufflevector <4 x i32> %broadcast.splatinsert352, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert354 = insertelement <4 x i32> poison, i32 %22, i64 0
  %broadcast.splat.a = shufflevector <4 x i32> %broadcast.splatinsert354, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert356 = insertelement <4 x i32> poison, i32 %23, i64 0
  %broadcast.splat357 = shufflevector <4 x i32> %broadcast.splatinsert356, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert358 = insertelement <4 x i32> poison, i32 %24, i64 0
  %broadcast.splat359 = shufflevector <4 x i32> %broadcast.splatinsert358, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert360 = insertelement <4 x i32> poison, i32 %25, i64 0
  %broadcast.splat361 = shufflevector <4 x i32> %broadcast.splatinsert360, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert362 = insertelement <4 x i32> poison, i32 %26, i64 0
  %broadcast.splat363 = shufflevector <4 x i32> %broadcast.splatinsert362, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph172, %._crit_edge
  %.090170 = phi i32 [ 0, %.lr.ph172 ], [ %i.kj, %._crit_edge ] ; 5 uses
  %i.dm = load i32, ptr %i.g, align 4, !tbaa !201
  %i.dn = mul i32 %i.dm, %.090170
  %i.do = sext i32 %i.dn to i64                   ; 2 uses
  %i.dp = getelementptr [4 x i8], ptr %i.df, i64 %i.do ; 6 uses
  %i.dq = load i32, ptr %i.q, align 4, !tbaa !206
  %i.dr = mul nsw i32 %i.dq, %.1229
  %i.ds = load i32, ptr %i.r, align 8, !tbaa !207 ; 2 uses
  %i.dt = mul nsw i32 %i.dr, %i.ds
  %i.du = sext i32 %i.dt to i64                   ; 2 uses
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.du
  %i.dw = mul nsw i32 %i.ds, %.090170
  %i.dx = sext i32 %i.dw to i64                   ; 2 uses
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.dx ; 6 uses
  %i.dz = load i32, ptr %i.ag, align 4, !tbaa !206
  %i.ea = mul i32 %i.dz, %i.cb
  %i.eb = load i32, ptr %i.ah, align 8, !tbaa !207 ; 2 uses
  %i.ec = mul i32 %i.ea, %i.eb
  %i.ed = sext i32 %i.ec to i64                   ; 2 uses
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.ed
  %i.ef = mul nsw i32 %i.eb, %.090170
  %i.eg = sext i32 %i.ef to i64                   ; 2 uses
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.eg ; 6 uses
  %i.ei = load i32, ptr %i.as, align 4, !tbaa !283 ; 2 uses
  %i.ej = xor i32 %i.ei, -1
  %i.ek = add i32 %.090170, %i.cj                 ; 2 uses
  %i.el = add i32 %i.ek, %i.ej
  %i.em = sext i32 %i.el to i64
  %i.en = mul i64 %i.cl, %i.em                    ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.en ; 5 uses
  %i.ep = add i32 %i.ek, %i.ei
  %i.eq = sext i32 %i.ep to i64
  %i.er = mul i64 %i.cl, %i.eq                    ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.er ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.et = shl nsw i64 %i.do, 2
  %scevgep306 = getelementptr i8, ptr %scevgep, i64 %i.et ; 4 uses
  %i.eu = add nsw i64 %i.du, %i.dx
  %i.ev = shl nsw i64 %i.eu, 2
  %scevgep308 = getelementptr i8, ptr %scevgep307, i64 %i.ev ; 4 uses
  %i.ew = add nsw i64 %i.ed, %i.eg
  %i.ex = shl nsw i64 %i.ew, 2
  %scevgep310 = getelementptr i8, ptr %scevgep309, i64 %i.ex ; 4 uses
  %scevgep312 = getelementptr i8, ptr %scevgep311, i64 %i.er ; 3 uses
  %scevgep314 = getelementptr i8, ptr %scevgep313, i64 %i.er ; 3 uses
  %scevgep316 = getelementptr i8, ptr %scevgep315, i64 %i.en ; 3 uses
  %scevgep318 = getelementptr i8, ptr %scevgep317, i64 %i.en ; 3 uses
  %bound0 = icmp ult ptr %i.dp, %scevgep308
  %bound1 = icmp ult ptr %i.dy, %scevgep306
  %found.conflict = and i1 %bound0, %bound1
  %bound0319 = icmp ult ptr %i.dp, %scevgep310
  %bound1320 = icmp ult ptr %i.eh, %scevgep306
  %found.conflict321 = and i1 %bound0319, %bound1320
  %conflict.rdx = or i1 %found.conflict, %found.conflict321
  %bound0322 = icmp ult ptr %i.dp, %scevgep314
  %bound1323 = icmp ult ptr %scevgep312, %scevgep306
  %found.conflict324 = and i1 %bound0322, %bound1323
  %conflict.rdx325 = or i1 %conflict.rdx, %found.conflict324
  %bound0326 = icmp ult ptr %i.dp, %scevgep318
  %bound1327 = icmp ult ptr %scevgep316, %scevgep306
  %found.conflict328 = and i1 %bound0326, %bound1327
  %conflict.rdx329 = or i1 %conflict.rdx325, %found.conflict328
  %bound0330 = icmp ult ptr %i.dy, %scevgep310
  %bound1331 = icmp ult ptr %i.eh, %scevgep308
  %found.conflict332 = and i1 %bound0330, %bound1331
  %conflict.rdx333 = or i1 %conflict.rdx329, %found.conflict332
  %bound0334 = icmp ult ptr %i.dy, %scevgep314
  %bound1335 = icmp ult ptr %scevgep312, %scevgep308
  %found.conflict336 = and i1 %bound0334, %bound1335
  %conflict.rdx337 = or i1 %conflict.rdx333, %found.conflict336
  %bound0338 = icmp ult ptr %i.dy, %scevgep318
  %bound1339 = icmp ult ptr %scevgep316, %scevgep308
  %found.conflict340 = and i1 %bound0338, %bound1339
  %conflict.rdx341 = or i1 %conflict.rdx337, %found.conflict340
  %bound0342 = icmp ult ptr %i.eh, %scevgep314
  %bound1343 = icmp ult ptr %scevgep312, %scevgep310
  %found.conflict344 = and i1 %bound0342, %bound1343
  %conflict.rdx345 = or i1 %conflict.rdx341, %found.conflict344
  %bound0346 = icmp ult ptr %i.eh, %scevgep318
  %bound1347 = icmp ult ptr %scevgep316, %scevgep310
  %found.conflict348 = and i1 %bound0346, %bound1347
  %conflict.rdx349 = or i1 %conflict.rdx345, %found.conflict348
  br i1 %conflict.rdx349, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 8 uses
  %i.ey = or disjoint i64 %index, 1
  %i.ez = or disjoint i64 %index, 2
  %i.fa = or disjoint i64 %index, 3
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.fb, align 4, !tbaa !91, !alias.scope !1364, !noalias !1365
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %index ; 4 uses
  %wide.load364 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !91, !alias.scope !1366, !noalias !1367
  %i.fd = sub nsw <4 x i32> %wide.load364, %wide.load
  store <4 x i32> %i.fd, ptr %i.fc, align 4, !tbaa !91, !alias.scope !1366, !noalias !1367
  %i.fe = add nsw i64 %index, %i.di               ; 2 uses
  %i.ff = add nsw i64 %i.ey, %i.di                ; 2 uses
  %i.fg = add nsw i64 %i.ez, %i.di                ; 2 uses
  %i.fh = add nsw i64 %i.fa, %i.di                ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %index ; 2 uses
  %wide.load365 = load <4 x i32>, ptr %i.fi, align 4, !tbaa !91, !alias.scope !1368, !noalias !1369
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.fe ; 4 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.ff ; 4 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.fg ; 4 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.fh ; 4 uses
  %i.fn = load i8, ptr %i.fj, align 1, !tbaa !28, !alias.scope !1370
  %i.fo = load i8, ptr %i.fk, align 1, !tbaa !28, !alias.scope !1370
  %i.fp = load i8, ptr %i.fl, align 1, !tbaa !28, !alias.scope !1370
  %i.fq = load i8, ptr %i.fm, align 1, !tbaa !28, !alias.scope !1370
  %i.fr = insertelement <4 x i8> poison, i8 %i.fn, i64 0
  %i.fs = insertelement <4 x i8> %i.fr, i8 %i.fo, i64 1
  %i.ft = insertelement <4 x i8> %i.fs, i8 %i.fp, i64 2
  %i.fu = insertelement <4 x i8> %i.ft, i8 %i.fq, i64 3
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.fz = load i8, ptr %i.fv, align 1, !tbaa !28, !alias.scope !1370
  %i.ga = load i8, ptr %i.fw, align 1, !tbaa !28, !alias.scope !1370
  %i.gb = load i8, ptr %i.fx, align 1, !tbaa !28, !alias.scope !1370
  %i.gc = load i8, ptr %i.fy, align 1, !tbaa !28, !alias.scope !1370
  %i.gd = insertelement <4 x i8> poison, i8 %i.fz, i64 0
  %i.ge = insertelement <4 x i8> %i.gd, i8 %i.ga, i64 1
  %i.gf = insertelement <4 x i8> %i.ge, i8 %i.gb, i64 2
  %i.gg = insertelement <4 x i8> %i.gf, i8 %i.gc, i64 3
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fj, i64 2
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fk, i64 2
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  %i.gl = load i8, ptr %i.gh, align 1, !tbaa !28, !alias.scope !1370
  %i.gm = load i8, ptr %i.gi, align 1, !tbaa !28, !alias.scope !1370
  %i.gn = load i8, ptr %i.gj, align 1, !tbaa !28, !alias.scope !1370
  %i.go = load i8, ptr %i.gk, align 1, !tbaa !28, !alias.scope !1370
  %i.gp = insertelement <4 x i8> poison, i8 %i.gl, i64 0
  %i.gq = insertelement <4 x i8> %i.gp, i8 %i.gm, i64 1
  %i.gr = insertelement <4 x i8> %i.gq, i8 %i.gn, i64 2
  %i.gs = insertelement <4 x i8> %i.gr, i8 %i.go, i64 3
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fj, i64 3
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fk, i64 3
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fl, i64 3
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fm, i64 3
  %i.gx = load i8, ptr %i.gt, align 1, !tbaa !28, !alias.scope !1370
  %i.gy = load i8, ptr %i.gu, align 1, !tbaa !28, !alias.scope !1370
  %i.gz = load i8, ptr %i.gv, align 1, !tbaa !28, !alias.scope !1370
  %i.ha = load i8, ptr %i.gw, align 1, !tbaa !28, !alias.scope !1370
  %i.hb = insertelement <4 x i8> poison, i8 %i.gx, i64 0
  %i.hc = insertelement <4 x i8> %i.hb, i8 %i.gy, i64 1
  %i.hd = insertelement <4 x i8> %i.hc, i8 %i.gz, i64 2
  %i.he = insertelement <4 x i8> %i.hd, i8 %i.ha, i64 3
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.fe ; 4 uses
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.ff ; 4 uses
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.fg ; 4 uses
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.fh ; 4 uses
  %i.hj = load i8, ptr %i.hf, align 1, !tbaa !28, !alias.scope !1371
  %i.hk = load i8, ptr %i.hg, align 1, !tbaa !28, !alias.scope !1371
  %i.hl = load i8, ptr %i.hh, align 1, !tbaa !28, !alias.scope !1371
  %i.hm = load i8, ptr %i.hi, align 1, !tbaa !28, !alias.scope !1371
  %i.hn = insertelement <4 x i8> poison, i8 %i.hj, i64 0
  %i.ho = insertelement <4 x i8> %i.hn, i8 %i.hk, i64 1
  %i.hp = insertelement <4 x i8> %i.ho, i8 %i.hl, i64 2
  %i.hq = insertelement <4 x i8> %i.hp, i8 %i.hm, i64 3
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hf, i64 1
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hg, i64 1
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hh, i64 1
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  %i.hv = load i8, ptr %i.hr, align 1, !tbaa !28, !alias.scope !1371
  %i.hw = load i8, ptr %i.hs, align 1, !tbaa !28, !alias.scope !1371
  %i.hx = load i8, ptr %i.ht, align 1, !tbaa !28, !alias.scope !1371
  %i.hy = load i8, ptr %i.hu, align 1, !tbaa !28, !alias.scope !1371
  %i.hz = insertelement <4 x i8> poison, i8 %i.hv, i64 0
  %i.ia = insertelement <4 x i8> %i.hz, i8 %i.hw, i64 1
  %i.ib = insertelement <4 x i8> %i.ia, i8 %i.hx, i64 2
  %i.ic = insertelement <4 x i8> %i.ib, i8 %i.hy, i64 3
  %i.id = getelementptr inbounds nuw i8, ptr %i.hf, i64 2
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hg, i64 2
  %i.if = getelementptr inbounds nuw i8, ptr %i.hh, i64 2
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hi, i64 2
  %i.ih = load i8, ptr %i.id, align 1, !tbaa !28, !alias.scope !1371
  %i.ii = load i8, ptr %i.ie, align 1, !tbaa !28, !alias.scope !1371
  %i.ij = load i8, ptr %i.if, align 1, !tbaa !28, !alias.scope !1371
  %i.ik = load i8, ptr %i.ig, align 1, !tbaa !28, !alias.scope !1371
  %i.il = insertelement <4 x i8> poison, i8 %i.ih, i64 0
  %i.im = insertelement <4 x i8> %i.il, i8 %i.ii, i64 1
  %i.in = insertelement <4 x i8> %i.im, i8 %i.ij, i64 2
  %i.io = insertelement <4 x i8> %i.in, i8 %i.ik, i64 3
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hf, i64 3
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hg, i64 3
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hh, i64 3
  %i.is = getelementptr inbounds nuw i8, ptr %i.hi, i64 3
  %i.it = load i8, ptr %i.ip, align 1, !tbaa !28, !alias.scope !1371
  %i.iu = load i8, ptr %i.iq, align 1, !tbaa !28, !alias.scope !1371
  %i.iv = load i8, ptr %i.ir, align 1, !tbaa !28, !alias.scope !1371
  %i.iw = load i8, ptr %i.is, align 1, !tbaa !28, !alias.scope !1371
  %i.ix = insertelement <4 x i8> poison, i8 %i.it, i64 0
  %i.iy = insertelement <4 x i8> %i.ix, i8 %i.iu, i64 1
  %i.iz = insertelement <4 x i8> %i.iy, i8 %i.iv, i64 2
  %i.ja = insertelement <4 x i8> %i.iz, i8 %i.iw, i64 3
  %i.jb = zext <4 x i8> %i.hq to <4 x i32>
  %i.jc = sub nsw <4 x i32> %broadcast.splat, %i.jb
  %i.jd = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.jc, i1 true)
  %i.je = zext <4 x i8> %i.ic to <4 x i32>
  %i.jf = sub nsw <4 x i32> %broadcast.splat351, %i.je
  %i.jg = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.jf, i1 true)
  %i.jh = zext <4 x i8> %i.io to <4 x i32>
  %i.ji = sub nsw <4 x i32> %broadcast.splat353, %i.jh
  %i.jj = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ji, i1 true)
  %i.jk = zext <4 x i8> %i.ja to <4 x i32>
  %i.jl = sub nsw <4 x i32> %broadcast.splat.a, %i.jk
  %i.jm = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.jl, i1 true)
  %i.jn = zext <4 x i8> %i.fu to <4 x i32>
  %i.jo = sub nsw <4 x i32> %broadcast.splat357, %i.jn
  %i.jp = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.jo, i1 true)
  %i.jq = zext <4 x i8> %i.gg to <4 x i32>
  %i.jr = sub nsw <4 x i32> %broadcast.splat359, %i.jq
  %i.js = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.jr, i1 true)
  %i.jt = zext <4 x i8> %i.gs to <4 x i32>
  %i.ju = sub nsw <4 x i32> %broadcast.splat361, %i.jt
  %i.jv = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ju, i1 true)
  %i.jw = zext <4 x i8> %i.he to <4 x i32>
  %i.jx = sub nsw <4 x i32> %broadcast.splat363, %i.jw
  %i.jy = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.jx, i1 true)
  %i.jz = add nuw nsw <4 x i32> %i.jp, %i.js
  %i.ka = add nuw nsw <4 x i32> %i.jz, %i.jv
  %i.kb = add nuw nsw <4 x i32> %i.ka, %i.jy
  %i.kc = sub <4 x i32> %wide.load365, %i.kb
  %i.kd = add <4 x i32> %i.kc, %i.jd
  %i.ke = add <4 x i32> %i.kd, %i.jg
  %i.kf = add <4 x i32> %i.ke, %i.jj
  %i.kg = add <4 x i32> %i.kf, %i.jm              ; 3 uses
  store <4 x i32> %i.kg, ptr %i.fb, align 4, !tbaa !91, !alias.scope !1364, !noalias !1365
  %wide.load366 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !91, !alias.scope !1366, !noalias !1367
  %i.kh = add nsw <4 x i32> %i.kg, %wide.load366
  store <4 x i32> %i.kh, ptr %i.fc, align 4, !tbaa !91, !alias.scope !1366, !noalias !1367
  store <4 x i32> %i.kg, ptr %i.fi, align 4, !tbaa !91, !alias.scope !1368, !noalias !1369
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ki = icmp eq i64 %index.next, %n.vec
  br i1 %i.ki, label %middle.block, label %vector.body, !llvm.loop !1358

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.kj = add nuw nsw i32 %.090170, 1             ; 2 uses
  %exitcond247.not = icmp eq i32 %i.kj, %i.cm
  br i1 %exitcond247.not, label %.loopexit, label %.lr.ph, !llvm.loop !1359

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv ; 3 uses
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !91
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv ; 4 uses
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !91
  %i.ko = sub nsw i32 %i.kn, %i.kl
  store i32 %i.ko, ptr %i.km, align 4, !tbaa !91
  %i.kp = add nsw i64 %indvars.iv, %i.di          ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv ; 2 uses
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !91
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.kp ; 4 uses
  %27 = load i8, ptr %i.ks, align 1, !tbaa !28
  %28 = getelementptr inbounds nuw i8, ptr %i.ks, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !28
  %30 = getelementptr inbounds nuw i8, ptr %i.ks, i64 2
  %31 = load i8, ptr %30, align 1, !tbaa !28
  %32 = getelementptr inbounds nuw i8, ptr %i.ks, i64 3
  %33 = load i8, ptr %32, align 1, !tbaa !28
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.kp ; 4 uses
  %34 = load i8, ptr %i.kt, align 1, !tbaa !28
  %35 = getelementptr inbounds nuw i8, ptr %i.kt, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !28
  %37 = getelementptr inbounds nuw i8, ptr %i.kt, i64 2
  %38 = load i8, ptr %37, align 1, !tbaa !28
  %39 = getelementptr inbounds nuw i8, ptr %i.kt, i64 3
  %40 = load i8, ptr %39, align 1, !tbaa !28
  %41 = zext i8 %34 to i32
  %42 = sub nsw i32 %19, %41
  %43 = call i32 @llvm.abs.i32(i32 %42, i1 true)
  %i.ku = zext i8 %36 to i32
  %44 = sub nsw i32 %20, %i.ku
  %45 = call i32 @llvm.abs.i32(i32 %44, i1 true)
  %i.kv = zext i8 %38 to i32
  %46 = sub nsw i32 %21, %i.kv
  %47 = call i32 @llvm.abs.i32(i32 %46, i1 true)
  %i.kw = zext i8 %40 to i32
  %48 = sub nsw i32 %22, %i.kw
  %49 = call i32 @llvm.abs.i32(i32 %48, i1 true)
  %i.kx = zext i8 %27 to i32
  %50 = sub nsw i32 %23, %i.kx
  %51 = call i32 @llvm.abs.i32(i32 %50, i1 true)
  %52 = zext i8 %29 to i32
  %.neg14.i.a = sub nsw i32 %24, %52
  %53 = call i32 @llvm.abs.i32(i32 %.neg14.i.a, i1 true)
  %i.ky = zext i8 %31 to i32
  %54 = sub nsw i32 %25, %i.ky
  %55 = call i32 @llvm.abs.i32(i32 %54, i1 true)
  %i.kz = zext i8 %33 to i32
  %56 = sub nsw i32 %26, %i.kz
  %57 = call i32 @llvm.abs.i32(i32 %56, i1 true)
  %58 = add nuw nsw i32 %51, %53
  %.neg18.i.a = add nuw nsw i32 %58, %55
  %59 = add nuw nsw i32 %.neg18.i.a, %57
  %.neg14.i = sub i32 %i.kr, %59
  %i.la = add i32 %.neg14.i, %43
  %.neg18.i = add i32 %i.la, %45
  %60 = add i32 %.neg18.i, %47
  %i.lb = add i32 %60, %49                        ; 2 uses
  store i32 %i.lb, ptr %i.kk, align 4, !tbaa !91
  %i.lc = load i32, ptr %i.km, align 4, !tbaa !91
  %i.ld = add nsw i32 %i.lb, %i.lc
  store i32 %i.ld, ptr %i.km, align 4, !tbaa !91
  %i.le = load i32, ptr %i.kk, align 4, !tbaa !91
  store i32 %i.le, ptr %i.kq, align 4, !tbaa !91
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1360

.loopexit:                                        ; preds = %._crit_edge, %bb.p, %bb.o
  %i.lf = add nsw i32 %.1229, 1
  %i.lg = load i32, ptr %i.m, align 4, !tbaa !269
  %i.lh = srem i32 %i.lf, %i.lg
  br label %.preheader166.preheader

.preheader166.preheader:                          ; preds = %bb.l, %.loopexit
  %.2 = phi i32 [ %i.lh, %.loopexit ], [ 0, %bb.l ] ; 2 uses
  %i.li = load i32, ptr %i.d, align 8, !tbaa !268 ; 2 uses
  %i.lj = icmp sgt i32 %i.li, 0
  call void @llvm.assume(i1 %i.lj)
  %i.lk = load i32, ptr %i.ar, align 8, !tbaa !266 ; 2 uses
  %invariant.op = add i32 %i.ca, %i.lk
  %i.ll = load ptr, ptr %i.au, align 8, !tbaa !194
  %i.lm = load i64, ptr %i.av, align 8, !tbaa !82
  %i.ln = load ptr, ptr %2, align 8, !tbaa !203
  %i.lo = load i32, ptr %i.g, align 4, !tbaa !201
  %i.lp = add nsw i32 %i.cc, %i.lk
  %i.lq = load i32, ptr %i.aw, align 8, !tbaa !270
  %i.lr = load ptr, ptr %i.ax, align 8, !tbaa !65
  %i.ls = sext i32 %i.lp to i64
  %i.lt = sext i32 %i.lo to i64
  %wide.trip.count262 = zext nneg i32 %i.li to i64 ; 2 uses
  %invariant.gep296 = getelementptr [4 x i8], ptr %i.ll, i64 %i.ls
  br label %.lr.ph179.us

.lr.ph179.us:                                     ; preds = %._crit_edge180.us, %.preheader166.preheader
  %indvars.iv259 = phi i64 [ %indvars.iv.next260, %._crit_edge180.us ], [ 0, %.preheader166.preheader ] ; 3 uses
  %i.lu = phi <8 x i32> [ %i.ml, %._crit_edge180.us ], [ zeroinitializer, %.preheader166.preheader ]
  %i.lv = trunc nuw nsw i64 %indvars.iv259 to i32
  %.reass.us = add i32 %invariant.op, %i.lv
  %i.lw = sext i32 %.reass.us to i64
  %i.lx = mul i64 %i.lm, %i.lw
  %i.ly = mul nsw i64 %indvars.iv259, %i.lt
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.ln, i64 %i.ly
  %gep297 = getelementptr i8, ptr %invariant.gep296, i64 %i.lx
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph179.us, %bb.q
  %indvars.iv254 = phi i64 [ 0, %.lr.ph179.us ], [ %indvars.iv.next255, %bb.q ] ; 3 uses
  %i.ma = phi <8 x i32> [ %i.lu, %.lr.ph179.us ], [ %i.ml, %bb.q ]
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %indvars.iv254
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !91
  %i.md = ashr i32 %i.mc, %i.lq
  %i.me = sext i32 %i.md to i64
  %i.mf = getelementptr inbounds nuw [16 x i8], ptr %i.lr, i64 %i.me
  %gep = getelementptr [4 x i8], ptr %gep297, i64 %indvars.iv254
  %i.mg = load <4 x i32>, ptr %i.mf, align 4, !tbaa !91 ; 2 uses
  %i.mh = load <4 x i8>, ptr %gep, align 1, !tbaa !28
  %i.mi = zext <4 x i8> %i.mh to <4 x i32>
  %i.mj = mul nsw <4 x i32> %i.mg, %i.mi
  %i.mk = shufflevector <4 x i32> %i.mg, <4 x i32> %i.mj, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  %i.ml = add nsw <8 x i32> %i.ma, %i.mk          ; 10 uses
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %exitcond258.not = icmp eq i64 %indvars.iv.next255, %wide.trip.count262
  br i1 %exitcond258.not, label %._crit_edge180.us, label %bb.q, !llvm.loop !1361

._crit_edge180.us:                                ; preds = %bb.q
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next260, %wide.trip.count262
  br i1 %exitcond263.not, label %._crit_edge201.split.us, label %.lr.ph179.us, !llvm.loop !1362

._crit_edge201.split.us:                          ; preds = %._crit_edge180.us
  %i.mm = extractelement <8 x i32> %i.ml, i64 3   ; 2 uses
  %i.mn = sdiv i32 %i.mm, 2
  %i.mo = extractelement <8 x i32> %i.ml, i64 7
  %i.mp = add i32 %i.mn, %i.mo
  %i.mq = udiv i32 %i.mp, %i.mm
  %i.mr = extractelement <8 x i32> %i.ml, i64 2   ; 2 uses
  %i.ms = sdiv i32 %i.mr, 2
  %i.mt = extractelement <8 x i32> %i.ml, i64 6
  %i.mu = add i32 %i.ms, %i.mt
  %i.mv = udiv i32 %i.mu, %i.mr
  %i.mw = extractelement <8 x i32> %i.ml, i64 1   ; 2 uses
  %i.mx = sdiv i32 %i.mw, 2
  %i.my = extractelement <8 x i32> %i.ml, i64 5
  %i.mz = add i32 %i.mx, %i.my
  %i.na = udiv i32 %i.mz, %i.mw
  %i.nb = extractelement <8 x i32> %i.ml, i64 0   ; 2 uses
  %i.nc = sdiv i32 %i.nb, 2
  %i.nd = extractelement <8 x i32> %i.ml, i64 4
  %i.ne = add i32 %i.nc, %i.nd
  %i.nf = udiv i32 %i.ne, %i.nb
  %i.ng = call i32 @llvm.smax.i32(i32 %i.mq, i32 0)
  %i.nh = call i32 @llvm.umin.i32(i32 %i.ng, i32 255)
  %i.ni = call i32 @llvm.smax.i32(i32 %i.mv, i32 0)
  %i.nj = call i32 @llvm.umin.i32(i32 %i.ni, i32 255)
  %i.nk = call i32 @llvm.smax.i32(i32 %i.na, i32 0)
  %i.nl = call i32 @llvm.umin.i32(i32 %i.nk, i32 255)
  %i.nm = call i32 @llvm.smax.i32(i32 %i.nf, i32 0)
  %i.nn = call i32 @llvm.umin.i32(i32 %i.nm, i32 255)
  %i.no = load ptr, ptr %i.ay, align 8, !tbaa !271, !nonnull !130, !align !131 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !195
  %i.nr = icmp slt i32 %i.nq, 2
  %i.ns = getelementptr inbounds nuw i8, ptr %i.no, i64 24
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !194
  %i.nu = getelementptr inbounds nuw i8, ptr %i.no, i64 128
  %i.nv = load i64, ptr %i.nu, align 8
  %i.nw = mul i64 %i.nv, %indvars.iv267
  %.sink.idx.i117 = select i1 %i.nr, i64 0, i64 %i.nw
  %.sink.i118 = getelementptr inbounds nuw i8, ptr %i.nt, i64 %.sink.idx.i117
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %.sink.i118, i64 %indvars.iv264
  %.sroa.7.0.insert.shift = shl nuw i32 %i.nn, 24
  %.sroa.6.0.insert.shift = shl nuw nsw i32 %i.nl, 16
  %.sroa.6.0.insert.insert = or disjoint i32 %.sroa.7.0.insert.shift, %.sroa.6.0.insert.shift
  %.sroa.5.0.insert.shift = shl nuw nsw i32 %i.nj, 8
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %i.nh
  store i32 %.sroa.0.0.insert.insert, ptr %i.nx, align 1
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 2 uses
  %i.ny = load ptr, ptr %i.aa, align 8, !tbaa !267, !nonnull !130, !align !131 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 12
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !191
  %i.ob = sext i32 %i.oa to i64
  %i.oc = icmp slt i64 %indvars.iv.next265, %i.ob
  br i1 %i.oc, label %bb.k, label %._crit_edge233, !llvm.loop !1363

bb.r:                                             ; preds = %bb.m
  %i.od = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.oe = icmp eq ptr %i.od, null
  br i1 %i.oe, label %_ZN2cv7Array3dIiED2Ev.exit119, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.od) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit119

_ZN2cv7Array3dIiED2Ev.exit119:                    ; preds = %bb.s, %bb.r, %bb.m, %bb.j
  %.pn107.pn.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.j ], [ %i.ce, %bb.m ], [ %i.ce, %bb.r ], [ %i.ce, %bb.s ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.of = load i8, ptr %i.s, align 4, !tbaa !208, !range !210, !noundef !130
  %i.og = trunc nuw i8 %i.of to i1
  br i1 %i.og, label %bb.t, label %_ZN2cv7Array3dIiED2Ev.exit120

bb.t:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit119
  %i.oh = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.oi = icmp eq ptr %i.oh, null
  br i1 %i.oi, label %_ZN2cv7Array3dIiED2Ev.exit120, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZdaPv(ptr noundef nonnull %i.oh) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit120

_ZN2cv7Array3dIiED2Ev.exit120:                    ; preds = %bb.u, %bb.t, %_ZN2cv7Array3dIiED2Ev.exit119, %bb.i
  %.pn107.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.i ], [ %.pn107.pn.pn.pn, %_ZN2cv7Array3dIiED2Ev.exit119 ], [ %.pn107.pn.pn.pn, %bb.t ], [ %.pn107.pn.pn.pn, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.oj = load i8, ptr %i.h, align 8, !tbaa !202, !range !210, !noundef !130
  %i.ok = trunc nuw i8 %i.oj to i1
  br i1 %i.ok, label %bb.v, label %_ZN2cv7Array2dIiED2Ev.exit121

bb.v:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit120
  %i.ol = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.om = icmp eq ptr %i.ol, null
  br i1 %i.om, label %_ZN2cv7Array2dIiED2Ev.exit121, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.ol) #22
  br label %_ZN2cv7Array2dIiED2Ev.exit121

_ZN2cv7Array2dIiED2Ev.exit121:                    ; preds = %_ZN2cv7Array3dIiED2Ev.exit120, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn107.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsNS1_IiLi4EEEE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESB_(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(21) %3, ptr noundef nonnull align 8 dereferenceable(21) %4) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !268  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.preheader, label %._crit_edge85

.preheader.preheader:                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = load ptr, ptr %3, align 8
  %i.p = load ptr, ptr %4, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge83
end_hunk_1
begin_hunk_2_@_ZNK32FastNlMeansMultiDenoisingInvokerIN2cv3VecItLi4EEElm7DistAbsNS1_IiLi4EEEE32calcDistSumsForElementInFirstRowEiiiRNS0_7Array3dIiEERNS0_7Array4dIiEESB_:bb.a
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.bt
  %i.bv = sext i32 %i.br to i64
  %i.bw = mul nsw i64 %indvars.iv240, %i.bv
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.bw
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv237 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !91
  %i.ca = sub nsw i32 %i.bz, %i.bo
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !91
  %i.cb = load i32, ptr %i.p, align 4, !tbaa !401, !noalias !3639
  %i.cc = load i32, ptr %i.q, align 8, !tbaa !402, !noalias !3639
  %i.cd = load i32, ptr %i.r, align 4, !tbaa !403, !noalias !3639 ; 2 uses
  %i.ce = mul i32 %i.cd, %i.cc                    ; 2 uses
  %i.cf = mul i32 %i.ce, %3
  %i.cg = mul i32 %i.cf, %i.cb
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.ch
  %i.cj = mul i32 %i.ce, %i.am
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.ck
  %i.cm = sext i32 %i.cd to i64
  %i.cn = mul nsw i64 %indvars.iv240, %i.cm
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv237
  store i32 0, ptr %i.cp, align 4, !tbaa !91
  %i.cq = load i32, ptr %i.p, align 4, !tbaa !401, !noalias !3640
  %i.cr = load i32, ptr %i.q, align 8, !tbaa !402, !noalias !3640
  %i.cs = load i32, ptr %i.r, align 4, !tbaa !403, !noalias !3640 ; 2 uses
  %i.ct = mul i32 %i.cs, %i.cr                    ; 2 uses
  %i.cu = mul i32 %i.ct, %3
  %i.cv = mul i32 %i.cu, %i.cq
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.cw
  %i.cy = mul i32 %i.ct, %i.am
  %i.cz = sext i32 %i.cy to i64                   ; 2 uses
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.cz
  %i.db = sext i32 %i.cs to i64
  %i.dc = mul nsw i64 %indvars.iv240, %i.db       ; 2 uses
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.dc
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv237 ; 2 uses
  %i.df = load i32, ptr %i.a, align 8, !tbaa !545 ; 2 uses
  %.not223 = icmp slt i32 %i.df, 0
  br i1 %.not223, label %_ZN2cv7Array3dIiED2Ev.exit113, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2cv7Array3dIiED2Ev.exit100
  %i.dg = sub nsw i32 0, %i.df
  %i.dh = load ptr, ptr %i.w, align 8, !tbaa !194
  %invariant.gep = getelementptr [8 x i8], ptr %i.dh, i64 %i.y
  %gep271 = getelementptr [8 x i8], ptr %invariant.gep270, i64 %indvars.iv237
  %i.di = sext i32 %i.dg to i64
  %.pre = load i32, ptr %i.de, align 4, !tbaa !91
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %i.dj = phi i32 [ %.pre, %.lr.ph ], [ %op.rdx, %bb.c ]
  %indvars.iv = phi i64 [ %i.di, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.dk = add nsw i64 %indvars.iv, %i.af
  %i.dl = load i32, ptr %i.v, align 4, !tbaa !195
  %i.dm = icmp slt i32 %i.dl, 2
  %i.dn = load i64, ptr %i.x, align 8
  %i.do = mul i64 %i.dn, %i.dk
  %.sink.idx.i = select i1 %i.dm, i64 0, i64 %i.do
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.sink.idx.i
  %i.dp = add nsw i64 %i.ar, %indvars.iv
  %i.dq = load i32, ptr %i.z, align 4, !tbaa !195
  %i.dr = icmp slt i32 %i.dq, 2
  %i.ds = load i64, ptr %i.ab, align 8
  %i.dt = mul i64 %i.ds, %i.dp
  %.sink.idx.i105 = select i1 %i.dr, i64 0, i64 %i.dt
  %gep226 = getelementptr i8, ptr %gep271, i64 %.sink.idx.i105
  %i.du = load <4 x i16>, ptr %gep, align 2, !tbaa !334
  %i.dv = load <4 x i16>, ptr %gep226, align 2, !tbaa !334
  %i.dw = zext <4 x i16> %i.du to <4 x i32>
  %i.dx = zext <4 x i16> %i.dv to <4 x i32>
  %i.dy = sub nsw <4 x i32> %i.dw, %i.dx
  %i.dz = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.dy, i1 true)
  %i.ea = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dz)
  %op.rdx = add i32 %i.ea, %i.dj                  ; 2 uses
  store i32 %op.rdx, ptr %i.de, align 4, !tbaa !91
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.eb = load i32, ptr %i.a, align 8, !tbaa !545
  %i.ec = sext i32 %i.eb to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ec
  br i1 %.not.not, label %bb.c, label %_ZN2cv7Array3dIiED2Ev.exit113.loopexit, !llvm.loop !3628

_ZN2cv7Array3dIiED2Ev.exit113.loopexit:           ; preds = %bb.c
  %.pre246 = load i32, ptr %i.p, align 4, !tbaa !401, !noalias !3641
  %.pre247 = load i32, ptr %i.q, align 8, !tbaa !402, !noalias !3641
  %.pre248 = load i32, ptr %i.r, align 4, !tbaa !403, !noalias !3641 ; 2 uses
  %.pre249 = mul i32 %.pre248, %.pre247           ; 2 uses
  %.pre250 = mul i32 %.pre249, %3
  %.pre252 = mul i32 %.pre250, %.pre246
  %.pre254 = sext i32 %.pre252 to i64
  %.pre256 = mul i32 %.pre249, %i.am
  %.pre258 = sext i32 %.pre256 to i64
  %.pre260 = sext i32 %.pre248 to i64
  %.pre262 = mul nsw i64 %indvars.iv240, %.pre260
  br label %_ZN2cv7Array3dIiED2Ev.exit113

_ZN2cv7Array3dIiED2Ev.exit113:                    ; preds = %_ZN2cv7Array3dIiED2Ev.exit113.loopexit, %_ZN2cv7Array3dIiED2Ev.exit100
  %.pre-phi263 = phi i64 [ %.pre262, %_ZN2cv7Array3dIiED2Ev.exit113.loopexit ], [ %i.dc, %_ZN2cv7Array3dIiED2Ev.exit100 ]
  %.pre-phi259 = phi i64 [ %.pre258, %_ZN2cv7Array3dIiED2Ev.exit113.loopexit ], [ %i.cz, %_ZN2cv7Array3dIiED2Ev.exit100 ]
  %.pre-phi255 = phi i64 [ %.pre254, %_ZN2cv7Array3dIiED2Ev.exit113.loopexit ], [ %i.cw, %_ZN2cv7Array3dIiED2Ev.exit100 ]
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %.pre-phi255
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %.pre-phi259
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %.pre-phi263
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv237
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !91
  %i.ei = load i32, ptr %i.s, align 4, !tbaa !206, !noalias !3642
  %i.ej = mul nsw i32 %i.ei, %i.am
  %i.ek = load i32, ptr %i.t, align 8, !tbaa !207, !noalias !3642 ; 2 uses
  %i.el = mul nsw i32 %i.ej, %i.ek
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.em
  %i.eo = sext i32 %i.ek to i64
  %i.ep = mul nsw i64 %indvars.iv240, %i.eo
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.ep
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv237 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !91
  %i.et = add nsw i32 %i.es, %i.eh
  store i32 %i.et, ptr %i.er, align 4, !tbaa !91
  %i.eu = load i32, ptr %i.p, align 4, !tbaa !401, !noalias !3643
  %i.ev = load i32, ptr %i.q, align 8, !tbaa !402, !noalias !3643
  %i.ew = load i32, ptr %i.r, align 4, !tbaa !403, !noalias !3643 ; 2 uses
  %i.ex = mul i32 %i.ew, %i.ev                    ; 2 uses
  %i.ey = mul i32 %i.ex, %3
  %i.ez = mul i32 %i.ey, %i.eu
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.fa
  %i.fc = mul i32 %i.ex, %i.am
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.fd
  %i.ff = sext i32 %i.ew to i64
  %i.fg = mul nsw i64 %indvars.iv240, %i.ff
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.fg
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv237
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !91
  %i.fk = load i32, ptr %i.ac, align 4, !tbaa !401, !noalias !3638
  %i.fl = load i32, ptr %i.ad, align 8, !tbaa !402, !noalias !3638
  %i.fm = load i32, ptr %i.ae, align 4, !tbaa !403, !noalias !3638 ; 2 uses
  %i.fn = mul i32 %i.fm, %i.fl                    ; 2 uses
  %i.fo = mul i32 %i.fn, %2
  %i.fp = mul i32 %i.fo, %i.fk
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.fq
  %i.fs = mul i32 %i.fn, %i.am
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.ft
  %i.fv = sext i32 %i.fm to i64
  %i.fw = mul nsw i64 %indvars.iv240, %i.fv
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %i.fw
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv237
  store i32 %i.fj, ptr %i.fy, align 4, !tbaa !91
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1 ; 2 uses
  %i.fz = load i32, ptr %i.o, align 8, !tbaa !528 ; 2 uses
  %i.ga = sext i32 %i.fz to i64                   ; 2 uses
  %i.gb = icmp slt i64 %indvars.iv.next238, %i.ga
  br i1 %i.gb, label %_ZN2cv7Array3dIiED2Ev.exit100, label %._crit_edge, !llvm.loop !3635
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.abs.v4i16(<4 x i16>, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v4i16(<4 x i16>) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.abs.v8i32(<8 x i32>, i1 immarg) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !93}
!1 = distinct !{!1, !93}
!2 = distinct !{null}
!3 = distinct !{!3, !93}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 float", !12, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!15 = !{!14, !13, i64 0}
!16 = !{!14, !13, i64 16}
!17 = !{!"float", !8, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!14, !13, i64 8}
!20 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !12, i64 0}
!21 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !20, i64 0, !9, i64 8}
!22 = !{!21, !9, i64 8}
!23 = !{!"p1 omnipotent char", !12, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!25 = !{!"long", !8, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !25, i64 8, !8, i64 16}
!27 = !{!26, !23, i64 0}
!28 = !{!8, !8, i64 0}
!29 = !{!"_ZTSN2cv5Size_IiEE", !9, i64 0, !9, i64 4}
!30 = !{!"_ZTSN2cv11_InputArrayE", !9, i64 0, !12, i64 8, !29, i64 16}
!31 = !{!30, !12, i64 8}
!32 = !{!"p1 _ZTSN2cv12MatAllocatorE", !12, i64 0}
!33 = !{!"p1 _ZTSN2cv8UMatDataE", !12, i64 0}
!34 = !{!"_ZTSN2cv10DataLayoutE", !8, i64 0}
!35 = !{!"_ZTSN2cv8MatShapeE", !9, i64 0, !34, i64 4, !9, i64 8, !8, i64 12}
!36 = !{!"_ZTSN2cv7MatStepE", !8, i64 0}
!37 = !{!"_ZTSN2cv3MatE", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !23, i64 24, !23, i64 32, !23, i64 40, !23, i64 48, !32, i64 56, !33, i64 64, !35, i64 72, !36, i64 128}
!38 = !{!37, !9, i64 0}
!39 = !{!37, !9, i64 8}
!40 = !{!"_ZTSN2cv5RangeE", !9, i64 0, !9, i64 4}
!41 = !{!40, !9, i64 0}
!42 = !{!40, !9, i64 4}
!43 = !{!"vtable pointer", !7, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"p1 int", !12, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!47 = !{!46, !45, i64 0}
!48 = !{!46, !45, i64 16}
!49 = !{ptr @_ZN27FastNlMeansDenoisingInvokerIhij11DistSquarediED2Ev}
!50 = !{ptr @_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij11DistSquarediED2Ev}
!51 = !{!"p1 _ZTSN2cv3VecIiLi2EEE", !12, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIN2cv3VecIiLi2EEESaIS2_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!53 = !{!52, !51, i64 0}
!54 = !{!52, !51, i64 16}
!55 = !{ptr @_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij11DistSquaredNS1_IiLi2EEEED2Ev}
!56 = !{ptr @_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij11DistSquarediED2Ev}
!57 = !{!"p1 _ZTSN2cv3VecIiLi3EEE", !12, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIN2cv3VecIiLi3EEESaIS2_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!59 = !{!58, !57, i64 0}
!60 = !{!58, !57, i64 16}
!61 = !{ptr @_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij11DistSquaredNS1_IiLi3EEEED2Ev}
!62 = !{ptr @_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij11DistSquarediED2Ev}
!63 = !{!"p1 _ZTSN2cv3VecIiLi4EEE", !12, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIN2cv3VecIiLi4EEESaIS2_EE17_Vector_impl_dataE", !63, i64 0, !63, i64 8, !63, i64 16}
!65 = !{!64, !63, i64 0}
!66 = !{!64, !63, i64 16}
!67 = !{ptr @_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij11DistSquaredNS1_IiLi4EEEED2Ev}
!68 = !{ptr @_ZN27FastNlMeansDenoisingInvokerIhij7DistAbsiED2Ev}
!69 = !{ptr @_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij7DistAbsiED2Ev}
!70 = !{ptr @_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij7DistAbsNS1_IiLi2EEEED2Ev}
!71 = !{ptr @_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij7DistAbsiED2Ev}
!72 = !{ptr @_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij7DistAbsNS1_IiLi3EEEED2Ev}
!73 = !{ptr @_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiED2Ev}
!74 = !{ptr @_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsNS1_IiLi4EEEED2Ev}
!75 = !{ptr @_ZN27FastNlMeansDenoisingInvokerItlm7DistAbsiED2Ev}
!76 = !{ptr @_ZN27FastNlMeansDenoisingInvokerIN2cv3VecItLi2EEElm7DistAbsiED2Ev}
!77 = !{ptr @_ZN27FastNlMeansDenoisingInvokerIN2cv3VecItLi2EEElm7DistAbsNS1_IiLi2EEEED2Ev}
!78 = !{ptr @_ZN27FastNlMeansDenoisingInvokerIN2cv3VecItLi3EEElm7DistAbsiED2Ev}
!79 = !{ptr @_ZN27FastNlMeansDenoisingInvokerIN2cv3VecItLi3EEElm7DistAbsNS1_IiLi3EEEED2Ev}
!80 = !{ptr @_ZN27FastNlMeansDenoisingInvokerIN2cv3VecItLi4EEElm7DistAbsiED2Ev}
!81 = !{ptr @_ZN27FastNlMeansDenoisingInvokerIN2cv3VecItLi4EEElm7DistAbsNS1_IiLi4EEEED2Ev}
!82 = !{!25, !25, i64 0}
!83 = !{!29, !9, i64 0}
!84 = !{!29, !9, i64 4}
!85 = !{!30, !9, i64 0}
!86 = !{!"p1 _ZTSN2cv3MatE", !12, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !86, i64 0, !86, i64 8, !86, i64 16}
!88 = !{!87, !86, i64 0}
!89 = !{!87, !86, i64 8}
!90 = !{!35, !9, i64 0}
!91 = !{!9, !9, i64 0}
!92 = !{ptr @_ZN32FastNlMeansMultiDenoisingInvokerIhij11DistSquarediED2Ev}
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!87, !86, i64 16}
!95 = !{ptr @_ZN32FastNlMeansMultiDenoisingInvokerIN2cv3VecIhLi2EEEij11DistSquarediED2Ev}
!96 = !{ptr @_ZN32FastNlMeansMultiDenoisingInvokerIN2cv3VecIhLi2EEEij11DistSquaredNS1_IiLi2EEEED2Ev}
!97 = !{ptr @_ZN32FastNlMeansMultiDenoisingInvokerIN2cv3VecIhLi3EEEij11DistSquarediED2Ev}
!98 = !{ptr @_ZN32FastNlMeansMultiDenoisingInvokerIN2cv3VecIhLi3EEEij11DistSquaredNS1_IiLi3EEEED2Ev}
!99 = !{ptr @_ZN32FastNlMeansMultiDenoisingInvokerIN2cv3VecIhLi4EEEij11DistSquarediED2Ev}
!100 = !{ptr @_ZN32FastNlMeansMultiDenoisingInvokerIN2cv3VecIhLi4EEEij11DistSquaredNS1_IiLi4EEEED2Ev}
!101 = !{ptr @_ZN32FastNlMeansMultiDenoisingInvokerIhij7DistAbsiED2Ev}
!102 = !{ptr @_ZN32FastNlMeansMultiDenoisingInvokerIN2cv3VecIhLi2EEEij7DistAbsiED2Ev}
!103 = !{ptr @_ZN32FastNlMeansMultiDenoisingInvokerIN2cv3VecIhLi2EEEij7DistAbsNS1_IiLi2EEEED2Ev}
!104 = !{ptr @_ZN32FastNlMeansMultiDenoisingInvokerIN2cv3VecIhLi3EEEij7DistAbsiED2Ev}
!105 = !{ptr @_ZN32FastNlMeansMultiDenoisingInvokerIN2cv3VecIhLi3EEEij7DistAbsNS1_IiLi3EEEED2Ev}
!106 = !{ptr @_ZN32FastNlMeansMultiDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiED2Ev}
!107 = !{ptr @_ZN32FastNlMeansMultiDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsNS1_IiLi4EEEED2Ev}
!108 = !{ptr @_ZN32FastNlMeansMultiDenoisingInvokerItlm7DistAbsiED2Ev}
!109 = !{ptr @_ZN32FastNlMeansMultiDenoisingInvokerIN2cv3VecItLi2EEElm7DistAbsiED2Ev}
!110 = !{ptr @_ZN32FastNlMeansMultiDenoisingInvokerIN2cv3VecItLi2EEElm7DistAbsNS1_IiLi2EEEED2Ev}
!111 = !{ptr @_ZN32FastNlMeansMultiDenoisingInvokerIN2cv3VecItLi3EEElm7DistAbsiED2Ev}
!112 = !{ptr @_ZN32FastNlMeansMultiDenoisingInvokerIN2cv3VecItLi3EEElm7DistAbsNS1_IiLi3EEEED2Ev}
!113 = !{ptr @_ZN32FastNlMeansMultiDenoisingInvokerIN2cv3VecItLi4EEElm7DistAbsiED2Ev}
!114 = !{ptr @_ZN32FastNlMeansMultiDenoisingInvokerIN2cv3VecItLi4EEElm7DistAbsNS1_IiLi4EEEED2Ev}
!115 = !{!"p1 _ZTSN2cv5MatOpE", !12, i64 0}
!116 = !{!"double", !8, i64 0}
!117 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !8, i64 0}
!118 = !{!"_ZTSN2cv3VecIdLi4EEE", !117, i64 0}
!119 = !{!"_ZTSN2cv7Scalar_IdEE", !118, i64 0}
!120 = !{!"_ZTSN2cv7MatExprE", !115, i64 0, !9, i64 8, !37, i64 16, !37, i64 224, !37, i64 432, !116, i64 640, !116, i64 648, !119, i64 656}
!121 = !{!120, !115, i64 0}
!122 = !{!86, !86, i64 0}
!123 = !{!"_ZTSN2cv16ParallelLoopBodyE"}
!124 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !46, i64 0}
!125 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !124, i64 0}
!126 = !{!"_ZTSSt6vectorIiSaIiEE", !125, i64 0}
!127 = !{!"_ZTS27FastNlMeansDenoisingInvokerIhij11DistSquarediE", !123, i64 0, !86, i64 8, !86, i64 16, !37, i64 24, !9, i64 232, !9, i64 236, !9, i64 240, !9, i64 244, !9, i64 248, !9, i64 252, !9, i64 256, !126, i64 264}
!128 = !{!127, !9, i64 232}
!129 = !{!127, !86, i64 8}
!130 = !{}
!131 = !{i64 8}
!132 = !{!127, !9, i64 240}
!133 = !{!127, !9, i64 236}
!134 = !{!127, !9, i64 256}
!135 = !{!46, !45, i64 8}
!136 = !{!127, !86, i64 16}
!137 = !{!"_ZTS27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij11DistSquarediE", !123, i64 0, !86, i64 8, !86, i64 16, !37, i64 24, !9, i64 232, !9, i64 236, !9, i64 240, !9, i64 244, !9, i64 248, !9, i64 252, !9, i64 256, !126, i64 264}
!138 = !{!137, !9, i64 232}
!139 = !{!137, !86, i64 8}
!140 = !{!137, !9, i64 240}
!141 = !{!137, !9, i64 236}
!142 = !{!137, !9, i64 256}
!143 = !{!137, !86, i64 16}
!144 = !{!"_ZTSNSt12_Vector_baseIN2cv3VecIiLi2EEESaIS2_EE12_Vector_implE", !52, i64 0}
!145 = !{!"_ZTSSt12_Vector_baseIN2cv3VecIiLi2EEESaIS2_EE", !144, i64 0}
!146 = !{!"_ZTSSt6vectorIN2cv3VecIiLi2EEESaIS2_EE", !145, i64 0}
!147 = !{!"_ZTS27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij11DistSquaredNS1_IiLi2EEEE", !123, i64 0, !86, i64 8, !86, i64 16, !37, i64 24, !9, i64 232, !9, i64 236, !9, i64 240, !9, i64 244, !9, i64 248, !9, i64 252, !9, i64 256, !146, i64 264}
!148 = !{!147, !9, i64 232}
!149 = !{!147, !86, i64 8}
!150 = !{!147, !9, i64 240}
!151 = !{!147, !9, i64 236}
!152 = !{!147, !9, i64 256}
!153 = !{!52, !51, i64 8}
!154 = !{!147, !86, i64 16}
!155 = !{!"_ZTS27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij11DistSquarediE", !123, i64 0, !86, i64 8, !86, i64 16, !37, i64 24, !9, i64 232, !9, i64 236, !9, i64 240, !9, i64 244, !9, i64 248, !9, i64 252, !9, i64 256, !126, i64 264}
!156 = !{!155, !9, i64 232}
!157 = !{!155, !86, i64 8}
!158 = !{!155, !9, i64 240}
!159 = !{!155, !9, i64 236}
!160 = !{!155, !9, i64 256}
!161 = !{!155, !86, i64 16}
!162 = !{!"_ZTSNSt12_Vector_baseIN2cv3VecIiLi3EEESaIS2_EE12_Vector_implE", !58, i64 0}
!163 = !{!"_ZTSSt12_Vector_baseIN2cv3VecIiLi3EEESaIS2_EE", !162, i64 0}
!164 = !{!"_ZTSSt6vectorIN2cv3VecIiLi3EEESaIS2_EE", !163, i64 0}
!165 = !{!"_ZTS27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij11DistSquaredNS1_IiLi3EEEE", !123, i64 0, !86, i64 8, !86, i64 16, !37, i64 24, !9, i64 232, !9, i64 236, !9, i64 240, !9, i64 244, !9, i64 248, !9, i64 252, !9, i64 256, !164, i64 264}
!166 = !{!165, !9, i64 232}
!167 = !{!165, !86, i64 8}
end_hunk_2

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ac3enc?download=true
inline.NumInlined: 131
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 19
begin_hunk_0_@ff_ac3_encode_frame:bb.a
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next.i ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !40 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next.i ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !40 ; 2 uses
  %i.de = add nsw i32 %i.dd, %i.db
  %i.df = ashr i32 %i.de, 1
  store i32 %i.df, ptr %i.da, align 4, !tbaa !40
  %i.dg = sub nsw i32 %i.db, %i.dd
  %i.dh = ashr i32 %i.dg, 1
  store i32 %i.dh, ptr %i.dc, align 4, !tbaa !40
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %.loopexit.loopexit.i, label %scalar.ph, !llvm.loop !132

.loopexit.loopexit.i:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.pre.i42 = load i32, ptr %i.bd, align 4, !tbaa !201
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.k, %bb.j
  %i.di = phi i32 [ %.pre.i42, %.loopexit.loopexit.i ], [ %i.bi, %bb.k ], [ %i.bi, %bb.j ] ; 2 uses
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %i.dj = sext i32 %i.di to i64
  %i.dk = icmp slt i64 %indvars.iv.next55.i, %i.dj
  br i1 %i.dk, label %bb.j, label %._crit_edge.loopexit.i, !llvm.loop !133

._crit_edge.loopexit.i:                           ; preds = %.loopexit.i
  %.pre60.i = load i32, ptr %.phi.trans.insert, align 4, !tbaa !28
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.i
  %i.dl = phi i32 [ %.pre60.i, %._crit_edge.loopexit.i ], [ %i.at, %bb.i ] ; 3 uses
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %i.dm = sext i32 %i.dl to i64
  %i.dn = icmp slt i64 %indvars.iv.next58.i, %i.dm
  br i1 %i.dn, label %bb.i, label %ac3_apply_rematrixing.exit, !llvm.loop !134

ac3_apply_rematrixing.exit:                       ; preds = %._crit_edge.i, %bb.h
  %i.do = phi i32 [ %.pre, %bb.h ], [ %i.dl, %._crit_edge.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 5104 ; 5 uses
  %i.dq = load i32, ptr %i.dp, align 16, !tbaa !30
  %.not.i.i = icmp eq i32 %i.dq, 0                ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 4964 ; 18 uses
  %i.ds = shl nsw i32 %i.do, 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 5004 ; 14 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !63
  %not..not.i.i = xor i1 %.not.i.i, true
  %i.dv = zext i1 %not..not.i.i to i32
  %i.dw = add i32 %i.du, %i.dv
  %i.dx = mul nsw i32 %i.ds, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 984
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !206
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 1160 ; 3 uses
  %i.eb = zext i1 %.not.i.i to i64                ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.eb
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 1104
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.eb
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !62
  tail call void %i.dz(ptr noundef %i.ed, ptr noundef %i.eg, i32 noundef %i.dx) #15, !inline_history !135
  %i.eh = load i32, ptr %i.dp, align 16, !tbaa !30
  %.not.i3.i = icmp eq i32 %i.eh, 0               ; 2 uses
  %i.ei = zext i1 %.not.i3.i to i32
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 5000 ; 14 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !29
  %.not7892.i.i = icmp slt i32 %i.ek, %i.ei
  br i1 %.not7892.i.i, label %._crit_edge96.i.i, label %.lr.ph95.i.i

.lr.ph95.i.i:                                     ; preds = %ac3_apply_rematrixing.exit
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 5408
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 1048 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 5072
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 4960
  %i.eq = zext i1 %.not.i3.i to i64
  %.pre.i.i = load i32, ptr %i.dr, align 4, !tbaa !28 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i, %.lr.ph95.i.i
  %i.er = phi i32 [ %.pre.i.i, %.lr.ph95.i.i ], [ %i.fw, %._crit_edge.i.i ] ; 3 uses
  %i.es = phi i32 [ %.pre.i.i, %.lr.ph95.i.i ], [ %i.hp, %._crit_edge.i.i ] ; 3 uses
  %i.et = phi i32 [ %.pre.i.i, %.lr.ph95.i.i ], [ %i.hq, %._crit_edge.i.i ] ; 4 uses
  %indvars.iv108.i.i = phi i64 [ %i.eq, %.lr.ph95.i.i ], [ %indvars.iv.next109.i.i, %._crit_edge.i.i ] ; 8 uses
  %i.eu = getelementptr inbounds nuw [6 x i8], ptr %i.el, i64 %indvars.iv108.i.i ; 6 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv108.i.i
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !64 ; 3 uses
  store i8 1, ptr %i.eu, align 1, !tbaa !31
  %i.ex = icmp sgt i32 %i.et, 1
  br i1 %i.ex, label %.lr.ph.i.i, label %.preheader86.i.i

.lr.ph.i.i:                                       ; preds = %bb.l
  %.087.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 256 ; 2 uses
  %i.ey = icmp eq i64 %indvars.iv108.i.i, 0
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv108.i.i
  br i1 %i.ey, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %.thread84.us.i.i
  %i.fa = phi i32 [ %i.fs, %.thread84.us.i.i ], [ %i.er, %.lr.ph.i.i ]
  %i.fb = phi i32 [ %i.ft, %.thread84.us.i.i ], [ %i.es, %.lr.ph.i.i ]
  %indvars.iv102.i.i = phi i64 [ %indvars.iv.next103.i.i, %.thread84.us.i.i ], [ 1, %.lr.ph.i.i ] ; 4 uses
  %.090.us.i.i = phi ptr [ %.0.us.i.i, %.thread84.us.i.i ], [ %.087.i.i, %.lr.ph.i.i ] ; 3 uses
  %.pn89.us.i.i = phi ptr [ %.090.us.i.i, %.thread84.us.i.i ], [ %i.ew, %.lr.ph.i.i ]
  %i.fc = getelementptr [648 x i8], ptr %i.em, i64 %indvars.iv102.i.i ; 3 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 -72
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !35
  %.not82.us.i.i = icmp eq i32 %i.fe, 0
  br i1 %.not82.us.i.i, label %.thread84.us.sink.split.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.us.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 576
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !35
  %.not83.us.i.i = icmp eq i32 %i.fg, 0
  br i1 %.not83.us.i.i, label %.thread84.us.sink.split.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fh = load ptr, ptr %i.en, align 16, !tbaa !207
  %i.fi = tail call i32 %i.fh(ptr noundef null, ptr noundef nonnull %.090.us.i.i, ptr noundef %.pn89.us.i.i, i64 noundef 16, i32 noundef 16) #15, !inline_history !136
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv102.i.i ; 2 uses
  store i8 0, ptr %i.fj, align 1, !tbaa !31
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 616
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !40
  %i.fm = load i32, ptr %i.ez, align 4, !tbaa !40
  %i.fn = sub nsw i32 %i.fl, %i.fm
  %i.fo = mul nsw i32 %i.fn, 125
  %i.fp = sdiv i32 %i.fo, 64
  %i.fq = icmp sgt i32 %i.fi, %i.fp
  %spec.store.select126.i.i = zext i1 %i.fq to i8
  store i8 %spec.store.select126.i.i, ptr %i.fj, align 1, !tbaa !31
  %.pre.i43 = load i32, ptr %i.dr, align 4, !tbaa !28 ; 2 uses
  br label %.thread84.us.i.i

.thread84.us.sink.split.i.i:                      ; preds = %bb.m, %.lr.ph.split.us.i.i
  %.sink127.i.i = phi i8 [ 0, %bb.m ], [ 1, %.lr.ph.split.us.i.i ]
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv102.i.i
  store i8 %.sink127.i.i, ptr %i.fr, align 1, !tbaa !31
  br label %.thread84.us.i.i

.thread84.us.i.i:                                 ; preds = %.thread84.us.sink.split.i.i, %bb.n
  %i.fs = phi i32 [ %i.fa, %.thread84.us.sink.split.i.i ], [ %.pre.i43, %bb.n ] ; 2 uses
  %i.ft = phi i32 [ %i.fb, %.thread84.us.sink.split.i.i ], [ %.pre.i43, %bb.n ] ; 4 uses
  %indvars.iv.next103.i.i = add nuw nsw i64 %indvars.iv102.i.i, 1 ; 2 uses
  %.0.us.i.i = getelementptr inbounds nuw i8, ptr %.090.us.i.i, i64 256
  %i.fu = sext i32 %i.ft to i64
  %i.fv = icmp slt i64 %indvars.iv.next103.i.i, %i.fu
  br i1 %i.fv, label %.lr.ph.split.us.i.i, label %.preheader86.i.i, !llvm.loop !137

.preheader86.i.i:                                 ; preds = %.thread84.i.i, %.thread84.us.i.i, %bb.l
  %i.fw = phi i32 [ %i.fs, %.thread84.us.i.i ], [ %i.er, %bb.l ], [ %i.gr, %.thread84.i.i ] ; 5 uses
  %i.fx = phi i32 [ %i.ft, %.thread84.us.i.i ], [ %i.es, %bb.l ], [ %i.gs, %.thread84.i.i ]
  %i.fy = phi i32 [ %i.ft, %.thread84.us.i.i ], [ %i.et, %bb.l ], [ %i.gt, %.thread84.i.i ] ; 3 uses
  %i.fz = icmp sgt i32 %i.fy, 0
  br i1 %i.fz, label %.preheader.i.preheader.i, label %._crit_edge.i.i

.preheader.i.preheader.i:                         ; preds = %.preheader86.i.i
  %i.ga = load i32, ptr %i.ep, align 16, !tbaa !65
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [6 x i8], ptr @exp_strategy_reuse_tab, i64 %i.gb
  br label %.preheader.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %.thread84.i.i
  %i.gd = phi i32 [ %i.gr, %.thread84.i.i ], [ %i.er, %.lr.ph.i.i ]
  %i.ge = phi i32 [ %i.gs, %.thread84.i.i ], [ %i.es, %.lr.ph.i.i ]
  %i.gf = phi i32 [ %i.gt, %.thread84.i.i ], [ %i.et, %.lr.ph.i.i ]
  %i.gg = phi i32 [ %i.gu, %.thread84.i.i ], [ %i.et, %.lr.ph.i.i ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.thread84.i.i ], [ 1, %.lr.ph.i.i ] ; 3 uses
  %.090.i.i = phi ptr [ %.0.i.i, %.thread84.i.i ], [ %.087.i.i, %.lr.ph.i.i ] ; 3 uses
  %.pn89.i.i = phi ptr [ %.090.i.i, %.thread84.i.i ], [ %i.ew, %.lr.ph.i.i ]
  %i.gh = getelementptr inbounds nuw [648 x i8], ptr %i.em, i64 %indvars.iv.i.i ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 580
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %indvars.iv108.i.i
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !31
  %i.gl = getelementptr i8, ptr %i.gh, i64 -68
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %indvars.iv108.i.i
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !31
  %.not81.i.i = icmp eq i8 %i.gk, %i.gn
  br i1 %.not81.i.i, label %bb.o, label %.thread84.i.i

bb.o:                                             ; preds = %.lr.ph.split.i.i
  %i.go = load ptr, ptr %i.en, align 16, !tbaa !207
  %i.gp = tail call i32 %i.go(ptr noundef null, ptr noundef nonnull %.090.i.i, ptr noundef %.pn89.i.i, i64 noundef 16, i32 noundef 16) #15, !inline_history !136
  %i.gq = icmp sgt i32 %i.gp, 500
  %spec.store.select.i.i = zext i1 %i.gq to i8
  %.pre114.i.i = load i32, ptr %i.dr, align 4, !tbaa !28 ; 4 uses
  br label %.thread84.i.i

.thread84.i.i:                                    ; preds = %bb.o, %.lr.ph.split.i.i
  %i.gr = phi i32 [ %.pre114.i.i, %bb.o ], [ %i.gd, %.lr.ph.split.i.i ] ; 2 uses
  %i.gs = phi i32 [ %.pre114.i.i, %bb.o ], [ %i.ge, %.lr.ph.split.i.i ] ; 2 uses
  %i.gt = phi i32 [ %.pre114.i.i, %bb.o ], [ %i.gf, %.lr.ph.split.i.i ] ; 2 uses
  %i.gu = phi i32 [ %.pre114.i.i, %bb.o ], [ %i.gg, %.lr.ph.split.i.i ] ; 2 uses
  %.sink.i.i = phi i8 [ %spec.store.select.i.i, %bb.o ], [ 1, %.lr.ph.split.i.i ]
  %i.gv = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv.i.i
  store i8 %.sink.i.i, ptr %i.gv, align 1, !tbaa !31
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.0.i.i = getelementptr inbounds nuw i8, ptr %.090.i.i, i64 256
  %i.gw = sext i32 %i.gu to i64
  %i.gx = icmp slt i64 %indvars.iv.next.i.i, %i.gw
  br i1 %i.gx, label %.lr.ph.split.i.i, label %.preheader86.i.i, !llvm.loop !137

.preheader.i.i:                                   ; preds = %.critedge.i.i, %.preheader.i.preheader.i
  %i.gy = phi i32 [ %i.fw, %.critedge.i.i ], [ %i.fy, %.preheader.i.preheader.i ] ; 4 uses
  %.191.i.i = phi i32 [ %.075.lcssa.i.i, %.critedge.i.i ], [ 0, %.preheader.i.preheader.i ] ; 2 uses
  %i.gz = zext nneg i32 %.191.i.i to i64          ; 3 uses
  %i.ha = zext nneg i32 %i.gy to i64              ; 2 uses
  %i.hb = add nsw i32 %i.gy, -1                   ; 2 uses
  %indvars.iv.next106.i.i405 = add nuw nsw i64 %i.gz, 1 ; 2 uses
  %i.hc = icmp samesign ult i64 %indvars.iv.next106.i.i405, %i.ha
  br i1 %i.hc, label %.lr.ph, label %.critedge.i.i

bb.p:                                             ; preds = %.lr.ph
  %indvars.iv.next106.i.i = add nuw nsw i64 %indvars.iv.next106.i.i407, 1 ; 2 uses
  %i.hd = icmp samesign ult i64 %indvars.iv.next106.i.i, %i.ha
  br i1 %i.hd, label %.lr.ph, label %.critedge.i.i, !llvm.loop !138

.lr.ph:                                           ; preds = %.preheader.i.i, %bb.p
  %indvars.iv.next106.i.i407 = phi i64 [ %indvars.iv.next106.i.i, %bb.p ], [ %indvars.iv.next106.i.i405, %.preheader.i.i ] ; 4 uses
  %indvars.iv105.i.i406 = phi i64 [ %indvars.iv.next106.i.i407, %bb.p ], [ %i.gz, %.preheader.i.i ]
  %i.he = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv.next106.i.i407
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !31
  %i.hg = icmp eq i8 %i.hf, 0
  br i1 %i.hg, label %bb.p, label %.critedge.split.loop.exit123.i.i, !llvm.loop !138

.critedge.split.loop.exit123.i.i:                 ; preds = %.lr.ph
  %i.hh = trunc nuw nsw i64 %indvars.iv105.i.i406 to i32
  %i.hi = trunc nuw nsw i64 %indvars.iv.next106.i.i407 to i32
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.p, %.preheader.i.i, %.critedge.split.loop.exit123.i.i
  %.075.in.lcssa.i.i = phi i32 [ %i.hh, %.critedge.split.loop.exit123.i.i ], [ %i.hb, %.preheader.i.i ], [ %i.hb, %bb.p ]
  %.075.lcssa.i.i = phi i32 [ %i.hi, %.critedge.split.loop.exit123.i.i ], [ %i.gy, %.preheader.i.i ], [ %i.gy, %bb.p ] ; 2 uses
  %i.hj = sub nsw i32 %.075.in.lcssa.i.i, %.191.i.i
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds i8, ptr %i.gc, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !31
  %i.hn = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.gz
  store i8 %i.hm, ptr %i.hn, align 1, !tbaa !31
  %i.ho = icmp slt i32 %.075.lcssa.i.i, %i.fw
  br i1 %i.ho, label %.preheader.i.i, label %._crit_edge.i.i, !llvm.loop !139

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %.preheader86.i.i
  %i.hp = phi i32 [ %i.fx, %.preheader86.i.i ], [ %i.fw, %.critedge.i.i ]
  %i.hq = phi i32 [ %i.fy, %.preheader86.i.i ], [ %i.fw, %.critedge.i.i ]
  %indvars.iv.next109.i.i = add nuw nsw i64 %indvars.iv108.i.i, 1
  %i.hr = load i32, ptr %i.ej, align 8, !tbaa !29
  %i.hs = sext i32 %i.hr to i64
  %.not78.not.i.i = icmp slt i64 %indvars.iv108.i.i, %i.hs
  br i1 %.not78.not.i.i, label %bb.l, label %._crit_edge96.i.i, !llvm.loop !140

._crit_edge96.i.i:                                ; preds = %._crit_edge.i.i, %ac3_apply_rematrixing.exit
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 5008 ; 3 uses
  %i.hu = load i32, ptr %i.ht, align 16, !tbaa !66
  %.not79.i.i = icmp eq i32 %i.hu, 0
  br i1 %.not79.i.i, label %.loopexit.i.i, label %bb.q

bb.q:                                             ; preds = %._crit_edge96.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.b, i64 5012
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !67
  %i.hx = getelementptr inbounds nuw i8, ptr %i.b, i64 5408
  %i.hy = sext i32 %i.hw to i64
  %i.hz = getelementptr inbounds [6 x i8], ptr %i.hx, i64 %i.hy ; 2 uses
  store i8 1, ptr %i.hz, align 2, !tbaa !31
  %i.ia = load i32, ptr %i.dr, align 4, !tbaa !28
  %i.ib = icmp sgt i32 %i.ia, 1
  br i1 %i.ib, label %.lr.ph99.i.i, label %.loopexit.i.i

.lr.ph99.i.i:                                     ; preds = %bb.q, %.lr.ph99.i.i
  %indvars.iv111.i.i = phi i64 [ %indvars.iv.next112.i.i, %.lr.ph99.i.i ], [ 1, %bb.q ] ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 %indvars.iv111.i.i
  store i8 0, ptr %i.ic, align 1, !tbaa !31
  %indvars.iv.next112.i.i = add nuw nsw i64 %indvars.iv111.i.i, 1 ; 2 uses
  %i.id = load i32, ptr %i.dr, align 4, !tbaa !28
  %i.ie = sext i32 %i.id to i64
  %i.if = icmp slt i64 %indvars.iv.next112.i.i, %i.ie
  br i1 %i.if, label %.lr.ph99.i.i, label %.loopexit.i.i, !llvm.loop !141

.loopexit.i.i:                                    ; preds = %.lr.ph99.i.i, %bb.q, %._crit_edge96.i.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 4940 ; 18 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !56
  %.not80.i.i = icmp eq i32 %i.ih, 0
  br i1 %.not80.i.i, label %compute_exp_strategy.exit.i, label %bb.r

bb.r:                                             ; preds = %.loopexit.i.i
  tail call void @ff_eac3_get_frame_exp_strategy(ptr noundef nonnull %i.b) #15
  br label %compute_exp_strategy.exit.i

compute_exp_strategy.exit.i:                      ; preds = %bb.r, %.loopexit.i.i
  %i.ii = load i32, ptr %i.dp, align 16, !tbaa !30
  %.not.i4.i = icmp eq i32 %i.ii, 0               ; 2 uses
  %i.ij = zext i1 %.not.i4.i to i32
  %i.ik = load i32, ptr %i.dt, align 4, !tbaa !63 ; 4 uses
  %.not5667.i.i = icmp slt i32 %i.ik, %i.ij
  br i1 %.not5667.i.i, label %ac3_process_exponents.exit, label %.lr.ph70.i.i

.lr.ph70.i.i:                                     ; preds = %compute_exp_strategy.exit.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 1048
  %i.im = getelementptr inbounds nuw i8, ptr %i.b, i64 5072
  %i.in = getelementptr inbounds nuw i8, ptr %i.b, i64 5408
  %i.io = getelementptr inbounds nuw i8, ptr %i.b, i64 5464
  %i.ip = getelementptr inbounds nuw i8, ptr %i.b, i64 944
  %i.iq = load i32, ptr %i.dr, align 4, !tbaa !28 ; 3 uses
  %i.ir = icmp sgt i32 %i.iq, 0
  br i1 %i.ir, label %.lr.ph70.split.preheader.i.i, label %ac3_process_exponents.exit

.lr.ph70.split.preheader.i.i:                     ; preds = %.lr.ph70.i.i
  %i.is = zext i1 %.not.i4.i to i64
  br label %.lr.ph70.split.i.i

.lr.ph70.split.i.i:                               ; preds = %._crit_edge.i5.i, %.lr.ph70.split.preheader.i.i
  %i.it = phi i32 [ %i.ik, %.lr.ph70.split.preheader.i.i ], [ %i.ps, %._crit_edge.i5.i ]
  %i.iu = phi i32 [ %i.iq, %.lr.ph70.split.preheader.i.i ], [ %i.pt, %._crit_edge.i5.i ] ; 2 uses
  %i.iv = phi i32 [ %i.iq, %.lr.ph70.split.preheader.i.i ], [ %i.pu, %._crit_edge.i5.i ] ; 2 uses
  %indvars.iv76.i.i = phi i64 [ %i.is, %.lr.ph70.split.preheader.i.i ], [ %indvars.iv.next77.i.i, %._crit_edge.i5.i ] ; 8 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv76.i.i ; 3 uses
  %i.ix = getelementptr inbounds nuw [6 x i8], ptr %i.in, i64 %indvars.iv76.i.i ; 2 uses
  %i.iy = icmp eq i64 %indvars.iv76.i.i, 0        ; 5 uses
  %i.iz = zext i1 %i.iy to i32                    ; 3 uses
  %i.ja = icmp sgt i32 %i.iv, 0
  br i1 %i.ja, label %.lr.ph66.i.i, label %._crit_edge.i5.i

.lr.ph66.i.i:                                     ; preds = %.lr.ph70.split.i.i
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv76.i.i
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !64
  %i.jd = load i32, ptr %i.iw, align 4, !tbaa !40
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds i8, ptr %i.jc, i64 %i.je
  %i.jg = getelementptr inbounds nuw [6 x i8], ptr %i.io, i64 %indvars.iv76.i.i ; 2 uses
  %i.jh = zext i1 %i.iy to i64                    ; 13 uses
  %i.ji = getelementptr inbounds nuw [768 x i8], ptr @exponent_group_tab, i64 %i.jh
  %i.jj = xor i32 %i.iz, 1
  %i.jk = zext nneg i32 %i.jj to i64              ; 2 uses
  %invariant.op = sub i64 1, %i.jh
  %invariant.op575 = sub i64 1, %i.jh
  %i.jl = xor i64 %i.jh, -1
  %i.jm = xor i64 %i.jh, -1
  br label %bb.s

bb.s:                                             ; preds = %bb.ag, %.lr.ph66.i.i
  %i.jn = phi i32 [ %i.iu, %.lr.ph66.i.i ], [ %i.pq, %bb.ag ]
  %.065.i.i = phi ptr [ %i.jf, %.lr.ph66.i.i ], [ %.1.i.i, %bb.ag ] ; 36 uses
  %.05464.i.i = phi i32 [ 0, %.lr.ph66.i.i ], [ %.155.i.i, %bb.ag ] ; 5 uses
  %i.jo = sext i32 %.05464.i.i to i64             ; 3 uses
  %i.jp = getelementptr inbounds [648 x i8], ptr %i.il, i64 %i.jo ; 2 uses
  br i1 %i.iy, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 576
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !35
  %.not57.i.i = icmp eq i32 %i.jr, 0
  br i1 %.not57.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.js = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 256
  %i.jt = add nsw i32 %.05464.i.i, 1
  br label %bb.ag, !llvm.loop !142

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 616
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %indvars.iv76.i.i
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !40
  %i.jx = load i32, ptr %i.iw, align 4, !tbaa !40
  %i.jy = sub nsw i32 %i.jw, %i.jx
  %i.jz = trunc i32 %.05464.i.i to i8             ; 2 uses
  %i.ka = getelementptr inbounds i8, ptr %i.jg, i64 %i.jo
  store i8 %i.jz, ptr %i.ka, align 1, !tbaa !31
  %.05360.i.i = add nsw i32 %.05464.i.i, 1        ; 3 uses
  %i.kb = load i32, ptr %i.dr, align 4, !tbaa !28
  %i.kc = icmp slt i32 %.05360.i.i, %i.kb
  br i1 %i.kc, label %.lr.ph.preheader.i.i, label %.critedge.i6.i

.lr.ph.preheader.i.i:                             ; preds = %bb.v
  %i.kd = sext i32 %.05360.i.i to i64
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.w, %.lr.ph.preheader.i.i
  %indvars.iv.i9.i = phi i64 [ %i.kd, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i10.i, %bb.w ] ; 4 uses
  %i.ke = getelementptr inbounds i8, ptr %i.ix, i64 %indvars.iv.i9.i
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !31
  %i.kg = icmp eq i8 %i.kf, 0
  br i1 %i.kg, label %bb.w, label %.critedge.loopexit.i.i

bb.w:                                             ; preds = %.lr.ph.i8.i
  %i.kh = getelementptr inbounds i8, ptr %i.jg, i64 %indvars.iv.i9.i
  store i8 %i.jz, ptr %i.kh, align 1, !tbaa !31
  %indvars.iv.next.i10.i = add nsw i64 %indvars.iv.i9.i, 1 ; 3 uses
  %i.ki = load i32, ptr %i.dr, align 4, !tbaa !28
  %i.kj = sext i32 %i.ki to i64
  %i.kk = icmp slt i64 %indvars.iv.next.i10.i, %i.kj
  br i1 %i.kk, label %.lr.ph.i8.i, label %.critedge.loopexit.i.i, !llvm.loop !143

.critedge.loopexit.i.i:                           ; preds = %bb.w, %.lr.ph.i8.i
  %.053.lcssa.ph.in.i.i = phi i64 [ %indvars.iv.i9.i, %.lr.ph.i8.i ], [ %indvars.iv.next.i10.i, %bb.w ]
  %.053.lcssa.ph.i.i = trunc i64 %.053.lcssa.ph.in.i.i to i32
  br label %.critedge.i6.i

.critedge.i6.i:                                   ; preds = %.critedge.loopexit.i.i, %bb.v
  %.053.lcssa.i.i = phi i32 [ %.05360.i.i, %bb.v ], [ %.053.lcssa.ph.i.i, %.critedge.loopexit.i.i ] ; 2 uses
  %i.kl = sub nsw i32 %.053.lcssa.i.i, %.05464.i.i ; 2 uses
  %i.km = add nsw i32 %i.kl, -1
  %i.kn = load ptr, ptr %i.ip, align 16, !tbaa !208
  %i.ko = load i32, ptr %i.iw, align 4, !tbaa !40
  %i.kp = sext i32 %i.ko to i64
  %i.kq = sub nsw i64 0, %i.kp
  %i.kr = getelementptr inbounds i8, ptr %.065.i.i, i64 %i.kq
  tail call void %i.kn(ptr noundef %i.kr, i32 noundef %i.km, i32 noundef 256) #15, !inline_history !144
  %i.ks = getelementptr inbounds i8, ptr %i.ix, i64 %i.jo
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !31  ; 3 uses
  %i.ku = zext i8 %i.kt to i64
  %i.kv = getelementptr [256 x i8], ptr %i.ji, i64 %i.ku
  %i.kw = getelementptr i8, ptr %i.kv, i64 -256
  %i.kx = sext i32 %i.jy to i64
  %i.ky = getelementptr inbounds i8, ptr %i.kw, i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !31  ; 9 uses
  %i.la = zext i8 %i.kz to i32                    ; 2 uses
  switch i8 %i.kt, label %.loopexit128.i.i.i [
    i8 2, label %bb.x
    i8 3, label %bb.y
  ]

bb.x:                                             ; preds = %.critedge.i6.i
  %.not122133.i.i.i = icmp eq i8 %i.kz, 0
  br i1 %.not122133.i.i.i, label %.loopexit128.i.i.i, label %.lr.ph136.preheader.i.i.i

.lr.ph136.preheader.i.i.i:                        ; preds = %bb.x
  %i.lb = zext i8 %i.kz to i64
  %i.lc = mul nuw nsw i64 %i.lb, 3                ; 3 uses
  %xtraiter498 = and i64 %i.lc, 1
  %unroll_iter501 = and i64 %i.lc, 1022
  br label %.lr.ph136.i.i.i

.lr.ph136.i.i.i:                                  ; preds = %.lr.ph136.i.i.i, %.lr.ph136.preheader.i.i.i
end_hunk_0

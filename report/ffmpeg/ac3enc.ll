inline.NumInlined: 131
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 17
begin_hunk_0_@ff_ac3_encode_frame:bb.a
  %i.fi = tail call i32 %i.fh(ptr noundef null, ptr noundef nonnull %.090.us.i.i, ptr noundef %.pn89.us.i.i, i64 noundef 16, i32 noundef 16) #15, !inline_history !98
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv102.i.i ; 2 uses
  store i8 0, ptr %i.fj, align 1, !tbaa !28
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 616
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !45
  %i.fm = load i32, ptr %i.ez, align 4, !tbaa !45
  %i.fn = sub nsw i32 %i.fl, %i.fm
  %i.fo = mul nsw i32 %i.fn, 125
  %i.fp = sdiv i32 %i.fo, 64
  %i.fq = icmp sgt i32 %i.fi, %i.fp
  %spec.store.select126.i.i = zext i1 %i.fq to i8
  store i8 %spec.store.select126.i.i, ptr %i.fj, align 1
  %.pre.i43 = load i32, ptr %i.dr, align 4, !tbaa !9 ; 2 uses
  br label %.thread84.us.i.i

.thread84.us.sink.split.i.i:                      ; preds = %bb.m, %.lr.ph.split.us.i.i
  %.sink127.i.i = phi i8 [ 0, %bb.m ], [ 1, %.lr.ph.split.us.i.i ]
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv102.i.i
  store i8 %.sink127.i.i, ptr %i.fr, align 1, !tbaa !28
  br label %.thread84.us.i.i

.thread84.us.i.i:                                 ; preds = %.thread84.us.sink.split.i.i, %bb.n
  %i.fs = phi i32 [ %i.fa, %.thread84.us.sink.split.i.i ], [ %.pre.i43, %bb.n ] ; 2 uses
  %i.ft = phi i32 [ %i.fb, %.thread84.us.sink.split.i.i ], [ %.pre.i43, %bb.n ] ; 4 uses
  %indvars.iv.next103.i.i = add nuw nsw i64 %indvars.iv102.i.i, 1 ; 2 uses
  %.0.us.i.i = getelementptr inbounds nuw i8, ptr %.090.us.i.i, i64 256
  %i.fu = sext i32 %i.ft to i64
  %i.fv = icmp slt i64 %indvars.iv.next103.i.i, %i.fu
  br i1 %i.fv, label %.lr.ph.split.us.i.i, label %.preheader86.i.i, !llvm.loop !99

.preheader86.i.i:                                 ; preds = %.thread84.i.i, %.thread84.us.i.i, %bb.l
  %i.fw = phi i32 [ %i.fs, %.thread84.us.i.i ], [ %i.er, %bb.l ], [ %i.gr, %.thread84.i.i ] ; 5 uses
  %i.fx = phi i32 [ %i.ft, %.thread84.us.i.i ], [ %i.es, %bb.l ], [ %i.gs, %.thread84.i.i ]
  %i.fy = phi i32 [ %i.ft, %.thread84.us.i.i ], [ %i.et, %bb.l ], [ %i.gt, %.thread84.i.i ] ; 3 uses
  %i.fz = icmp sgt i32 %i.fy, 0
  br i1 %i.fz, label %.preheader.i.preheader.i, label %._crit_edge.i.i

.preheader.i.preheader.i:                         ; preds = %.preheader86.i.i
  %i.ga = load i32, ptr %i.ep, align 16, !tbaa !100
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
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !28
  %i.gl = getelementptr i8, ptr %i.gh, i64 -68
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %indvars.iv108.i.i
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !28
  %.not81.i.i = icmp eq i8 %i.gk, %i.gn
  br i1 %.not81.i.i, label %bb.o, label %.thread84.i.i

bb.o:                                             ; preds = %.lr.ph.split.i.i
  %i.go = load ptr, ptr %i.en, align 16, !tbaa !97
  %i.gp = tail call i32 %i.go(ptr noundef null, ptr noundef nonnull %.090.i.i, ptr noundef %.pn89.i.i, i64 noundef 16, i32 noundef 16) #15, !inline_history !98
  %i.gq = icmp sgt i32 %i.gp, 500
  %spec.store.select.i.i = zext i1 %i.gq to i8
  %.pre114.i.i = load i32, ptr %i.dr, align 4, !tbaa !9 ; 4 uses
  br label %.thread84.i.i

.thread84.i.i:                                    ; preds = %bb.o, %.lr.ph.split.i.i
  %i.gr = phi i32 [ %.pre114.i.i, %bb.o ], [ %i.gd, %.lr.ph.split.i.i ] ; 2 uses
  %i.gs = phi i32 [ %.pre114.i.i, %bb.o ], [ %i.ge, %.lr.ph.split.i.i ] ; 2 uses
  %i.gt = phi i32 [ %.pre114.i.i, %bb.o ], [ %i.gf, %.lr.ph.split.i.i ] ; 2 uses
  %i.gu = phi i32 [ %.pre114.i.i, %bb.o ], [ %i.gg, %.lr.ph.split.i.i ] ; 2 uses
  %.sink.i.i = phi i8 [ %spec.store.select.i.i, %bb.o ], [ 1, %.lr.ph.split.i.i ]
  %i.gv = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv.i.i
  store i8 %.sink.i.i, ptr %i.gv, align 1
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.0.i.i = getelementptr inbounds nuw i8, ptr %.090.i.i, i64 256
  %i.gw = sext i32 %i.gu to i64
  %i.gx = icmp slt i64 %indvars.iv.next.i.i, %i.gw
  br i1 %i.gx, label %.lr.ph.split.i.i, label %.preheader86.i.i, !llvm.loop !99

.preheader.i.i:                                   ; preds = %.critedge.i.i, %.preheader.i.preheader.i
  %i.gy = phi i32 [ %i.fw, %.critedge.i.i ], [ %i.fy, %.preheader.i.preheader.i ] ; 2 uses
  %.191.i.i = phi i32 [ %.075.lcssa.i.i, %.critedge.i.i ], [ 0, %.preheader.i.preheader.i ] ; 3 uses
  %i.gz = zext nneg i32 %.191.i.i to i64          ; 3 uses
  %i.ha = zext nneg i32 %i.gy to i64              ; 2 uses
  %i.hb = add nuw nsw i32 %.191.i.i, 1
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.gy, i32 %i.hb) ; 3 uses
  %i.hc = add nsw i32 %smax.i.i, -1               ; 2 uses
  %indvars.iv.next106.i.i405 = add nuw nsw i64 %i.gz, 1 ; 2 uses
  %i.hd = icmp samesign ult i64 %indvars.iv.next106.i.i405, %i.ha
  br i1 %i.hd, label %.lr.ph, label %.critedge.i.i

bb.p:                                             ; preds = %.lr.ph
  %indvars.iv.next106.i.i = add nuw nsw i64 %indvars.iv.next106.i.i407, 1 ; 2 uses
  %i.he = icmp samesign ult i64 %indvars.iv.next106.i.i, %i.ha
  br i1 %i.he, label %.lr.ph, label %.critedge.i.i, !llvm.loop !101

.lr.ph:                                           ; preds = %.preheader.i.i, %bb.p
  %indvars.iv.next106.i.i407 = phi i64 [ %indvars.iv.next106.i.i, %bb.p ], [ %indvars.iv.next106.i.i405, %.preheader.i.i ] ; 4 uses
  %indvars.iv105.i.i406 = phi i64 [ %indvars.iv.next106.i.i407, %bb.p ], [ %i.gz, %.preheader.i.i ]
  %i.hf = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv.next106.i.i407
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !28
  %i.hh = icmp eq i8 %i.hg, 0
  br i1 %i.hh, label %bb.p, label %.critedge.split.loop.exit123.i.i, !llvm.loop !101

.critedge.split.loop.exit123.i.i:                 ; preds = %.lr.ph
  %i.hi = trunc nuw nsw i64 %indvars.iv105.i.i406 to i32
  %i.hj = trunc nuw nsw i64 %indvars.iv.next106.i.i407 to i32
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.p, %.preheader.i.i, %.critedge.split.loop.exit123.i.i
  %.075.in.lcssa.i.i = phi i32 [ %i.hi, %.critedge.split.loop.exit123.i.i ], [ %i.hc, %.preheader.i.i ], [ %i.hc, %bb.p ]
  %.075.lcssa.i.i = phi i32 [ %i.hj, %.critedge.split.loop.exit123.i.i ], [ %smax.i.i, %.preheader.i.i ], [ %smax.i.i, %bb.p ] ; 2 uses
  %i.hk = sub nsw i32 %.075.in.lcssa.i.i, %.191.i.i
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds i8, ptr %i.gc, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !28
  %i.ho = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.gz
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !28
  %i.hp = icmp slt i32 %.075.lcssa.i.i, %i.fw
  br i1 %i.hp, label %.preheader.i.i, label %._crit_edge.i.i, !llvm.loop !102

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %.preheader86.i.i
  %i.hq = phi i32 [ %i.fx, %.preheader86.i.i ], [ %i.fw, %.critedge.i.i ]
  %i.hr = phi i32 [ %i.fy, %.preheader86.i.i ], [ %i.fw, %.critedge.i.i ]
  %indvars.iv.next109.i.i = add nuw nsw i64 %indvars.iv108.i.i, 1
  %i.hs = load i32, ptr %i.ej, align 8, !tbaa !26
  %i.ht = sext i32 %i.hs to i64
  %.not78.not.i.i = icmp slt i64 %indvars.iv108.i.i, %i.ht
  br i1 %.not78.not.i.i, label %bb.l, label %._crit_edge96.i.i, !llvm.loop !103

._crit_edge96.i.i:                                ; preds = %._crit_edge.i.i, %ac3_apply_rematrixing.exit
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 5008 ; 3 uses
  %i.hv = load i32, ptr %i.hu, align 16, !tbaa !104
  %.not79.i.i = icmp eq i32 %i.hv, 0
  br i1 %.not79.i.i, label %.loopexit.i.i, label %bb.q

bb.q:                                             ; preds = %._crit_edge96.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.b, i64 5012
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !105
  %i.hy = getelementptr inbounds nuw i8, ptr %i.b, i64 5408
  %i.hz = sext i32 %i.hx to i64
  %i.ia = getelementptr inbounds [6 x i8], ptr %i.hy, i64 %i.hz ; 2 uses
  store i8 1, ptr %i.ia, align 2, !tbaa !28
  %i.ib = load i32, ptr %i.dr, align 4, !tbaa !9
  %i.ic = icmp sgt i32 %i.ib, 1
  br i1 %i.ic, label %.lr.ph99.i.i, label %.loopexit.i.i

.lr.ph99.i.i:                                     ; preds = %bb.q, %.lr.ph99.i.i
  %indvars.iv111.i.i = phi i64 [ %indvars.iv.next112.i.i, %.lr.ph99.i.i ], [ 1, %bb.q ] ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 %indvars.iv111.i.i
  store i8 0, ptr %i.id, align 1, !tbaa !28
  %indvars.iv.next112.i.i = add nuw nsw i64 %indvars.iv111.i.i, 1 ; 2 uses
  %i.ie = load i32, ptr %i.dr, align 4, !tbaa !9
  %i.if = sext i32 %i.ie to i64
  %i.ig = icmp slt i64 %indvars.iv.next112.i.i, %i.if
  br i1 %i.ig, label %.lr.ph99.i.i, label %.loopexit.i.i, !llvm.loop !106

.loopexit.i.i:                                    ; preds = %.lr.ph99.i.i, %bb.q, %._crit_edge96.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.b, i64 4940 ; 18 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !64
  %.not80.i.i = icmp eq i32 %i.ii, 0
  br i1 %.not80.i.i, label %compute_exp_strategy.exit.i, label %bb.r

bb.r:                                             ; preds = %.loopexit.i.i
  tail call void @ff_eac3_get_frame_exp_strategy(ptr noundef nonnull %i.b) #15
  br label %compute_exp_strategy.exit.i

compute_exp_strategy.exit.i:                      ; preds = %bb.r, %.loopexit.i.i
  %i.ij = load i32, ptr %i.dp, align 16, !tbaa !27
  %.not.i4.i = icmp eq i32 %i.ij, 0               ; 2 uses
  %i.ik = zext i1 %.not.i4.i to i32
  %i.il = load i32, ptr %i.dt, align 4, !tbaa !93 ; 4 uses
  %.not5667.i.i = icmp slt i32 %i.il, %i.ik
  br i1 %.not5667.i.i, label %ac3_process_exponents.exit, label %.lr.ph70.i.i

.lr.ph70.i.i:                                     ; preds = %compute_exp_strategy.exit.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.b, i64 1048
  %i.in = getelementptr inbounds nuw i8, ptr %i.b, i64 5072
  %i.io = getelementptr inbounds nuw i8, ptr %i.b, i64 5408
  %i.ip = getelementptr inbounds nuw i8, ptr %i.b, i64 5464
  %i.iq = getelementptr inbounds nuw i8, ptr %i.b, i64 944
  %i.ir = load i32, ptr %i.dr, align 4, !tbaa !9  ; 3 uses
  %i.is = icmp sgt i32 %i.ir, 0
  br i1 %i.is, label %.lr.ph70.split.preheader.i.i, label %ac3_process_exponents.exit

.lr.ph70.split.preheader.i.i:                     ; preds = %.lr.ph70.i.i
  %i.it = zext i1 %.not.i4.i to i64
  br label %.lr.ph70.split.i.i

.lr.ph70.split.i.i:                               ; preds = %._crit_edge.i5.i, %.lr.ph70.split.preheader.i.i
  %i.iu = phi i32 [ %i.il, %.lr.ph70.split.preheader.i.i ], [ %i.ol, %._crit_edge.i5.i ]
  %i.iv = phi i32 [ %i.ir, %.lr.ph70.split.preheader.i.i ], [ %i.om, %._crit_edge.i5.i ] ; 2 uses
  %i.iw = phi i32 [ %i.ir, %.lr.ph70.split.preheader.i.i ], [ %i.on, %._crit_edge.i5.i ] ; 2 uses
  %indvars.iv76.i.i = phi i64 [ %i.it, %.lr.ph70.split.preheader.i.i ], [ %indvars.iv.next77.i.i, %._crit_edge.i5.i ] ; 8 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv76.i.i ; 3 uses
  %i.iy = getelementptr inbounds nuw [6 x i8], ptr %i.io, i64 %indvars.iv76.i.i ; 2 uses
  %i.iz = icmp eq i64 %indvars.iv76.i.i, 0        ; 5 uses
  %5 = zext i1 %i.iz to i32                       ; 3 uses
  %i.ja = icmp sgt i32 %i.iw, 0
  br i1 %i.ja, label %.lr.ph66.i.i, label %._crit_edge.i5.i

.lr.ph66.i.i:                                     ; preds = %.lr.ph70.split.i.i
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv76.i.i
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !95
  %i.jd = load i32, ptr %i.ix, align 4, !tbaa !45
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds i8, ptr %i.jc, i64 %i.je
  %i.jg = getelementptr inbounds nuw [6 x i8], ptr %i.ip, i64 %indvars.iv76.i.i ; 2 uses
  %i.jh = zext i1 %i.iz to i64                    ; 9 uses
  %i.ji = getelementptr inbounds nuw [768 x i8], ptr @exponent_group_tab, i64 %i.jh
  %6 = xor i32 %5, 1
  %i.jj = zext nneg i32 %6 to i64                 ; 2 uses
  %invariant.op = sub i64 1, %i.jh
  %invariant.op571 = sub i64 1, %i.jh
  br label %bb.s

bb.s:                                             ; preds = %bb.ag, %.lr.ph66.i.i
  %i.jk = phi i32 [ %i.iv, %.lr.ph66.i.i ], [ %i.oj, %bb.ag ]
  %.065.i.i = phi ptr [ %i.jf, %.lr.ph66.i.i ], [ %.1.i.i, %bb.ag ] ; 28 uses
  %.05464.i.i = phi i32 [ 0, %.lr.ph66.i.i ], [ %.155.i.i, %bb.ag ] ; 5 uses
  %i.jl = sext i32 %.05464.i.i to i64             ; 3 uses
  %i.jm = getelementptr inbounds [648 x i8], ptr %i.im, i64 %i.jl ; 2 uses
  br i1 %i.iz, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 576
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !35
  %.not57.i.i = icmp eq i32 %i.jo, 0
  br i1 %.not57.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.jp = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 256
  %i.jq = add nsw i32 %.05464.i.i, 1
  br label %bb.ag, !llvm.loop !107

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jm, i64 616
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %indvars.iv76.i.i
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !45
  %i.ju = load i32, ptr %i.ix, align 4, !tbaa !45
  %i.jv = sub nsw i32 %i.jt, %i.ju
  %i.jw = trunc i32 %.05464.i.i to i8             ; 2 uses
  %i.jx = getelementptr inbounds i8, ptr %i.jg, i64 %i.jl
  store i8 %i.jw, ptr %i.jx, align 1, !tbaa !28
  %.05360.i.i = add nsw i32 %.05464.i.i, 1        ; 3 uses
  %i.jy = load i32, ptr %i.dr, align 4, !tbaa !9
  %i.jz = icmp slt i32 %.05360.i.i, %i.jy
  br i1 %i.jz, label %.lr.ph.preheader.i.i, label %.critedge.i6.i

.lr.ph.preheader.i.i:                             ; preds = %bb.v
  %i.ka = sext i32 %.05360.i.i to i64
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.w, %.lr.ph.preheader.i.i
  %indvars.iv.i9.i = phi i64 [ %i.ka, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i10.i, %bb.w ] ; 4 uses
  %i.kb = getelementptr inbounds i8, ptr %i.iy, i64 %indvars.iv.i9.i
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !28
  %i.kd = icmp eq i8 %i.kc, 0
  br i1 %i.kd, label %bb.w, label %.critedge.loopexit.i.i

bb.w:                                             ; preds = %.lr.ph.i8.i
  %i.ke = getelementptr inbounds i8, ptr %i.jg, i64 %indvars.iv.i9.i
  store i8 %i.jw, ptr %i.ke, align 1, !tbaa !28
  %indvars.iv.next.i10.i = add nsw i64 %indvars.iv.i9.i, 1 ; 3 uses
  %i.kf = load i32, ptr %i.dr, align 4, !tbaa !9
  %i.kg = sext i32 %i.kf to i64
  %i.kh = icmp slt i64 %indvars.iv.next.i10.i, %i.kg
  br i1 %i.kh, label %.lr.ph.i8.i, label %.critedge.loopexit.i.i, !llvm.loop !108

.critedge.loopexit.i.i:                           ; preds = %bb.w, %.lr.ph.i8.i
  %.053.lcssa.ph.in.i.i = phi i64 [ %indvars.iv.i9.i, %.lr.ph.i8.i ], [ %indvars.iv.next.i10.i, %bb.w ]
  %.053.lcssa.ph.i.i = trunc i64 %.053.lcssa.ph.in.i.i to i32
  br label %.critedge.i6.i

.critedge.i6.i:                                   ; preds = %.critedge.loopexit.i.i, %bb.v
  %.053.lcssa.i.i = phi i32 [ %.05360.i.i, %bb.v ], [ %.053.lcssa.ph.i.i, %.critedge.loopexit.i.i ] ; 2 uses
  %i.ki = sub nsw i32 %.053.lcssa.i.i, %.05464.i.i ; 2 uses
  %i.kj = add nsw i32 %i.ki, -1
  %i.kk = load ptr, ptr %i.iq, align 16, !tbaa !109
  %i.kl = load i32, ptr %i.ix, align 4, !tbaa !45
  %i.km = sext i32 %i.kl to i64
  %i.kn = sub nsw i64 0, %i.km
  %i.ko = getelementptr inbounds i8, ptr %.065.i.i, i64 %i.kn
  tail call void %i.kk(ptr noundef %i.ko, i32 noundef %i.kj, i32 noundef 256) #15, !inline_history !110
  %i.kp = getelementptr inbounds i8, ptr %i.iy, i64 %i.jl
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !28  ; 3 uses
  %i.kr = zext i8 %i.kq to i64
  %i.ks = getelementptr [256 x i8], ptr %i.ji, i64 %i.kr
  %i.kt = getelementptr i8, ptr %i.ks, i64 -256
  %i.ku = sext i32 %i.jv to i64
  %i.kv = getelementptr inbounds i8, ptr %i.kt, i64 %i.ku
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !28  ; 9 uses
  %7 = zext i8 %i.kw to i32                       ; 2 uses
  switch i8 %i.kq, label %.loopexit128.i.i.i [
    i8 2, label %bb.x
    i8 3, label %bb.y
  ]

bb.x:                                             ; preds = %.critedge.i6.i
  %.not122133.i.i.i = icmp eq i8 %i.kw, 0
  br i1 %.not122133.i.i.i, label %.loopexit128.i.i.i, label %.lr.ph136.preheader.i.i.i

.lr.ph136.preheader.i.i.i:                        ; preds = %bb.x
  %i.kx = zext i8 %i.kw to i64
  %i.ky = mul nuw nsw i64 %i.kx, 3                ; 3 uses
  %xtraiter498 = and i64 %i.ky, 1
  %unroll_iter501 = and i64 %i.ky, 1022
  br label %.lr.ph136.i.i.i

.lr.ph136.i.i.i:                                  ; preds = %.lr.ph136.i.i.i, %.lr.ph136.preheader.i.i.i
  %indvars.iv163.i.i.i = phi i64 [ 1, %.lr.ph136.preheader.i.i.i ], [ %indvars.iv.next164.i.i.i.1, %.lr.ph136.i.i.i ] ; 3 uses
  %indvars.iv161.i.i.i = phi i64 [ %i.jj, %.lr.ph136.preheader.i.i.i ], [ %indvars.iv.next162.i.i.i.1, %.lr.ph136.i.i.i ] ; 3 uses
  %niter502 = phi i64 [ 0, %.lr.ph136.preheader.i.i.i ], [ %niter502.next.1, %.lr.ph136.i.i.i ]
  %i.kz = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 %indvars.iv161.i.i.i ; 2 uses
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !28
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 1
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !28
  %spec.select.i.i.i = tail call i8 @llvm.umin.i8(i8 %i.lc, i8 %i.la)
  %i.ld = sub nsw i64 %indvars.iv163.i.i.i, %i.jh
  %i.le = getelementptr inbounds i8, ptr %.065.i.i, i64 %i.ld
  store i8 %spec.select.i.i.i, ptr %i.le, align 1, !tbaa !28
  %i.lf = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 %indvars.iv161.i.i.i ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 2
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !28
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 3
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !28
  %spec.select.i.i.i.1 = tail call i8 @llvm.umin.i8(i8 %i.lj, i8 %i.lh)
  %.reass572 = add i64 %indvars.iv163.i.i.i, %invariant.op571
  %i.lk = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 %.reass572
  store i8 %spec.select.i.i.i.1, ptr %i.lk, align 1, !tbaa !28
  %indvars.iv.next162.i.i.i.1 = add nuw nsw i64 %indvars.iv161.i.i.i, 4 ; 2 uses
  %indvars.iv.next164.i.i.i.1 = add nuw nsw i64 %indvars.iv163.i.i.i, 2 ; 2 uses
  %niter502.next.1 = add nuw nsw i64 %niter502, 2 ; 2 uses
  %niter502.ncmp.1 = icmp eq i64 %niter502.next.1, %unroll_iter501
  br i1 %niter502.ncmp.1, label %.loopexit128.i.i.i.loopexit.unr-lcssa, label %.lr.ph136.i.i.i, !llvm.loop !111

bb.y:                                             ; preds = %.critedge.i6.i
  %.not130.i.i.i = icmp eq i8 %i.kw, 0
  br i1 %.not130.i.i.i, label %.loopexit128.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.y
  %i.ll = zext i8 %i.kw to i64
  %i.lm = mul nuw nsw i64 %i.ll, 3                ; 3 uses
  %xtraiter495 = and i64 %i.lm, 1
  %unroll_iter = and i64 %i.lm, 1022
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv156.i.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next157.i.i.i.1, %.lr.ph.i.i.i ] ; 3 uses
  %indvars.iv.i.i.i = phi i64 [ %i.jj, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.ln = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 %indvars.iv.i.i.i
  %i.lo = load <4 x i8>, ptr %i.ln, align 1, !tbaa !28
  %i.lp = tail call i8 @llvm.vector.reduce.umin.v4i8(<4 x i8> %i.lo)
  %i.lq = sub nsw i64 %indvars.iv156.i.i.i, %i.jh
  %i.lr = getelementptr inbounds i8, ptr %.065.i.i, i64 %i.lq
  store i8 %i.lp, ptr %i.lr, align 1, !tbaa !28
  %i.ls = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 %indvars.iv.i.i.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  %i.lu = load <4 x i8>, ptr %i.lt, align 1, !tbaa !28
  %i.lv = tail call i8 @llvm.vector.reduce.umin.v4i8(<4 x i8> %i.lu)
  %.reass = add i64 %indvars.iv156.i.i.i, %invariant.op
  %i.lw = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 %.reass
  store i8 %i.lv, ptr %i.lw, align 1, !tbaa !28
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 8 ; 2 uses
  %indvars.iv.next157.i.i.i.1 = add nuw nsw i64 %indvars.iv156.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit128.i.i.i.loopexit482.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !112

.loopexit128.i.i.i.loopexit.unr-lcssa:            ; preds = %.lr.ph136.i.i.i
  %lcmp.mod499.not = icmp eq i64 %xtraiter498, 0
  br i1 %lcmp.mod499.not, label %.loopexit128.i.i.i, label %.lr.ph136.i.i.i.epil.preheader

.lr.ph136.i.i.i.epil.preheader:                   ; preds = %.loopexit128.i.i.i.loopexit.unr-lcssa
  %lcmp.mod500 = trunc i64 %i.ky to i1
  tail call void @llvm.assume(i1 %lcmp.mod500)
  %i.lx = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 %indvars.iv.next162.i.i.i.1 ; 2 uses
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !28
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 1
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !28
  %spec.select.i.i.i.epil = tail call i8 @llvm.umin.i8(i8 %i.ma, i8 %i.ly)
  %i.mb = sub nsw i64 %indvars.iv.next164.i.i.i.1, %i.jh
  %i.mc = getelementptr inbounds i8, ptr %.065.i.i, i64 %i.mb
  store i8 %spec.select.i.i.i.epil, ptr %i.mc, align 1, !tbaa !28
  br label %.loopexit128.i.i.i

.loopexit128.i.i.i.loopexit482.unr-lcssa:         ; preds = %.lr.ph.i.i.i
  %lcmp.mod496.not = icmp eq i64 %xtraiter495, 0
  br i1 %lcmp.mod496.not, label %.loopexit128.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit128.i.i.i.loopexit482.unr-lcssa
  %lcmp.mod497 = trunc i64 %i.lm to i1
  tail call void @llvm.assume(i1 %lcmp.mod497)
  %i.md = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.me = load <4 x i8>, ptr %i.md, align 1, !tbaa !28
  %i.mf = tail call i8 @llvm.vector.reduce.umin.v4i8(<4 x i8> %i.me)
  %i.mg = sub nsw i64 %indvars.iv.next157.i.i.i.1, %i.jh
  %i.mh = getelementptr inbounds i8, ptr %.065.i.i, i64 %i.mg
  store i8 %i.mf, ptr %i.mh, align 1, !tbaa !28
  br label %.loopexit128.i.i.i

.loopexit128.i.i.i:                               ; preds = %.lr.ph.i.i.i.epil.preheader, %.loopexit128.i.i.i.loopexit482.unr-lcssa, %.lr.ph136.i.i.i.epil.preheader, %.loopexit128.i.i.i.loopexit.unr-lcssa, %bb.y, %bb.x, %.critedge.i6.i
  br i1 %i.iz, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.loopexit128.i.i.i
  %i.mi = load i8, ptr %.065.i.i, align 1, !tbaa !28
  %i.mj = icmp ugt i8 %i.mi, 15
  br i1 %i.mj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i8 15, ptr %.065.i.i, align 1, !tbaa !28
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %.loopexit128.i.i.i
  %.not124137.i.i.i = icmp eq i8 %i.kw, 0         ; 3 uses
  br i1 %.not124137.i.i.i, label %._crit_edge143.i.i.i, label %.lr.ph139.preheader.i.i.i

.lr.ph139.preheader.i.i.i:                        ; preds = %bb.ab
  %i.mk = zext i8 %i.kw to i64
  %i.ml = mul nuw nsw i64 %i.mk, 3                ; 3 uses
  %xtraiter503 = and i64 %i.ml, 1
  %load_initial = load i8, ptr %.065.i.i, align 1
  %i.mm = zext i8 %load_initial to i16
  %unroll_iter508 = and i64 %i.ml, 1022
  br label %.lr.ph139.i.i.i

.lr.ph139.i.i.i:                                  ; preds = %.lr.ph139.i.i.i, %.lr.ph139.preheader.i.i.i
  %store_forwarded = phi i16 [ %i.mm, %.lr.ph139.preheader.i.i.i ], [ %i.mx, %.lr.ph139.i.i.i ]
  %indvars.iv170.i.i.i = phi i64 [ 1, %.lr.ph139.preheader.i.i.i ], [ %indvars.iv.next171.i.i.i.1, %.lr.ph139.i.i.i ] ; 3 uses
  %niter509 = phi i64 [ 0, %.lr.ph139.preheader.i.i.i ], [ %niter509.next.1, %.lr.ph139.i.i.i ]
  %i.mn = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 %indvars.iv170.i.i.i ; 2 uses
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !28
  %i.mp = zext i8 %i.mo to i16
  %i.mq = add nuw nsw i16 %store_forwarded, 2
  %i.mr = tail call i16 @llvm.umin.i16(i16 %i.mq, i16 %i.mp) ; 2 uses
  %i.ms = trunc nuw i16 %i.mr to i8
  store i8 %i.ms, ptr %i.mn, align 1, !tbaa !28
  %indvars.iv.next171.i.i.i = add nuw nsw i64 %indvars.iv170.i.i.i, 1 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 %indvars.iv.next171.i.i.i ; 2 uses
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !28
  %i.mv = zext i8 %i.mu to i16
  %i.mw = add nuw nsw i16 %i.mr, 2
  %i.mx = tail call i16 @llvm.umin.i16(i16 %i.mw, i16 %i.mv) ; 4 uses
  %i.my = trunc nuw i16 %i.mx to i8
  store i8 %i.my, ptr %i.mt, align 1, !tbaa !28
  %indvars.iv.next171.i.i.i.1 = add nuw nsw i64 %indvars.iv170.i.i.i, 2 ; 3 uses
  %niter509.next.1 = add nuw nsw i64 %niter509, 2 ; 2 uses
  %niter509.ncmp.1 = icmp eq i64 %niter509.next.1, %unroll_iter508
  br i1 %niter509.ncmp.1, label %.lr.ph142.i.i.i.preheader.unr-lcssa, label %.lr.ph139.i.i.i, !llvm.loop !113

.lr.ph142.i.i.i.preheader.unr-lcssa:              ; preds = %.lr.ph139.i.i.i
  %lcmp.mod504.not = icmp eq i64 %xtraiter503, 0
  br i1 %lcmp.mod504.not, label %.lr.ph142.i.i.i.preheader, label %.lr.ph139.i.i.i.epil.preheader

.lr.ph139.i.i.i.epil.preheader:                   ; preds = %.lr.ph142.i.i.i.preheader.unr-lcssa
  %lcmp.mod507 = trunc i64 %i.ml to i1
  tail call void @llvm.assume(i1 %lcmp.mod507)
  %i.mz = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 %indvars.iv.next171.i.i.i.1 ; 2 uses
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !28
  %i.nb = zext i8 %i.na to i16
  %i.nc = add nuw nsw i16 %i.mx, 2
  %i.nd = tail call i16 @llvm.umin.i16(i16 %i.nc, i16 %i.nb) ; 2 uses
  %i.ne = trunc nuw i16 %i.nd to i8
  store i8 %i.ne, ptr %i.mz, align 1, !tbaa !28
  br label %.lr.ph142.i.i.i.preheader

.lr.ph142.i.i.i.preheader:                        ; preds = %.lr.ph142.i.i.i.preheader.unr-lcssa, %.lr.ph139.i.i.i.epil.preheader
  %indvars.iv170.i.i.i.lcssa = phi i64 [ %indvars.iv.next171.i.i.i, %.lr.ph142.i.i.i.preheader.unr-lcssa ], [ %indvars.iv.next171.i.i.i.1, %.lr.ph139.i.i.i.epil.preheader ]
  %.lcssa483 = phi i16 [ %i.mx, %.lr.ph142.i.i.i.preheader.unr-lcssa ], [ %i.nd, %.lr.ph139.i.i.i.epil.preheader ]
  br label %.lr.ph142.i.i.i

.lr.ph142.i.i.i:                                  ; preds = %.lr.ph142.i.i.i.preheader, %.lr.ph142.i.i.i
  %i.nf = phi i16 [ %i.nk, %.lr.ph142.i.i.i ], [ %.lcssa483, %.lr.ph142.i.i.i.preheader ]
  %indvars.iv175.i.i.i = phi i64 [ %indvars.iv.next176.i.i.i, %.lr.ph142.i.i.i ], [ %indvars.iv170.i.i.i.lcssa, %.lr.ph142.i.i.i.preheader ] ; 2 uses
  %indvars.iv.next176.i.i.i = add nsw i64 %indvars.iv175.i.i.i, -1 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 %indvars.iv.next176.i.i.i ; 2 uses
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !28
  %i.ni = zext i8 %i.nh to i16
  %i.nj = add nuw nsw i16 %i.nf, 2
  %i.nk = tail call i16 @llvm.umin.i16(i16 %i.nj, i16 %i.ni) ; 2 uses
  %i.nl = trunc nuw i16 %i.nk to i8
  store i8 %i.nl, ptr %i.ng, align 1, !tbaa !28
  %i.nm = icmp samesign ugt i64 %indvars.iv175.i.i.i, 1
  br i1 %i.nm, label %.lr.ph142.i.i.i, label %._crit_edge143.i.i.i, !llvm.loop !114

._crit_edge143.i.i.i:                             ; preds = %.lr.ph142.i.i.i, %bb.ab
  br i1 %i.iz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %._crit_edge143.i.i.i
  %i.nn = load i8, ptr %.065.i.i, align 1, !tbaa !28
  %i.no = and i8 %i.nn, -2
  %i.np = getelementptr inbounds i8, ptr %.065.i.i, i64 -1
  store i8 %i.no, ptr %i.np, align 1, !tbaa !28
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge143.i.i.i
  switch i8 %i.kq, label %encode_exponents_blk_ch.exit.i.i [
    i8 2, label %bb.ae
    i8 3, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not124137.i.i.i, label %encode_exponents_blk_ch.exit.i.i, label %.lr.ph151.preheader.i.i.i

.lr.ph151.preheader.i.i.i:                        ; preds = %bb.ae
  %8 = mul nuw nsw i32 %7, 6
  %9 = sub nuw nsw i32 %8, %5
  %10 = zext nneg i32 %9 to i64
  %11 = zext i8 %i.kw to i64
  %i.nq = mul nuw nsw i64 %11, 3
  br label %.lr.ph151.i.i.i

.lr.ph151.i.i.i:                                  ; preds = %.lr.ph151.i.i.i, %.lr.ph151.preheader.i.i.i
  %indvars.iv187.i.i.i = phi i64 [ %i.nq, %.lr.ph151.preheader.i.i.i ], [ %indvars.iv.next188.i.i.i, %.lr.ph151.i.i.i ] ; 3 uses
  %indvars.iv185.i.i.i = phi i64 [ %10, %.lr.ph151.preheader.i.i.i ], [ %indvars.iv.next186.i.i.i, %.lr.ph151.i.i.i ] ; 2 uses
  %i.nr = sub nuw nsw i64 %indvars.iv187.i.i.i, %i.jh
  %i.ns = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 %i.nr
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !28  ; 2 uses
  %i.nu = getelementptr inbounds i8, ptr %.065.i.i, i64 %indvars.iv185.i.i.i ; 2 uses
  store i8 %i.nt, ptr %i.nu, align 1, !tbaa !28
  %indvars.iv.next186.i.i.i = add nsw i64 %indvars.iv185.i.i.i, -2
  %i.nv = getelementptr i8, ptr %i.nu, i64 -1
  store i8 %i.nt, ptr %i.nv, align 1, !tbaa !28
  %indvars.iv.next188.i.i.i = add nsw i64 %indvars.iv187.i.i.i, -1
  %i.nw = icmp samesign ugt i64 %indvars.iv187.i.i.i, 1
  br i1 %i.nw, label %.lr.ph151.i.i.i, label %encode_exponents_blk_ch.exit.i.i, !llvm.loop !115

bb.af:                                            ; preds = %bb.ad
  br i1 %.not124137.i.i.i, label %encode_exponents_blk_ch.exit.i.i, label %.lr.ph147.preheader.i.i.i

.lr.ph147.preheader.i.i.i:                        ; preds = %bb.af
  %12 = mul nuw nsw i32 %7, 12
  %13 = sub nuw nsw i32 %12, %5
  %14 = zext nneg i32 %13 to i64
  %15 = zext i8 %i.kw to i64
  %i.nx = mul nuw nsw i64 %15, 3
  br label %.lr.ph147.i.i.i

.lr.ph147.i.i.i:                                  ; preds = %.lr.ph147.i.i.i, %.lr.ph147.preheader.i.i.i
  %indvars.iv180.i.i.i = phi i64 [ %i.nx, %.lr.ph147.preheader.i.i.i ], [ %indvars.iv.next181.i.i.i, %.lr.ph147.i.i.i ] ; 3 uses
  %indvars.iv178.i.i.i = phi i64 [ %14, %.lr.ph147.preheader.i.i.i ], [ %indvars.iv.next179.i.i.i, %.lr.ph147.i.i.i ] ; 2 uses
  %i.ny = sub nuw nsw i64 %indvars.iv180.i.i.i, %i.jh
  %i.nz = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 %i.ny
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !28
  %i.ob = getelementptr i8, ptr %.065.i.i, i64 %indvars.iv178.i.i.i
  %i.oc = getelementptr i8, ptr %i.ob, i64 -3
  %i.od = insertelement <4 x i8> poison, i8 %i.oa, i64 0
  %i.oe = shufflevector <4 x i8> %i.od, <4 x i8> poison, <4 x i32> zeroinitializer
  store <4 x i8> %i.oe, ptr %i.oc, align 1, !tbaa !28
  %indvars.iv.next179.i.i.i = add nsw i64 %indvars.iv178.i.i.i, -4
  %indvars.iv.next181.i.i.i = add nsw i64 %indvars.iv180.i.i.i, -1
  %i.of = icmp samesign ugt i64 %indvars.iv180.i.i.i, 1
  br i1 %i.of, label %.lr.ph147.i.i.i, label %encode_exponents_blk_ch.exit.i.i, !llvm.loop !116

encode_exponents_blk_ch.exit.i.i:                 ; preds = %.lr.ph147.i.i.i, %.lr.ph151.i.i.i, %bb.af, %bb.ae, %bb.ad
  %i.og = shl nsw i32 %i.ki, 8
  %i.oh = sext i32 %i.og to i64
  %i.oi = getelementptr inbounds i8, ptr %.065.i.i, i64 %i.oh
  %.pre.i7.i = load i32, ptr %i.dr, align 4, !tbaa !9
  br label %bb.ag

bb.ag:                                            ; preds = %encode_exponents_blk_ch.exit.i.i, %bb.u
  %i.oj = phi i32 [ %.pre.i7.i, %encode_exponents_blk_ch.exit.i.i ], [ %i.jk, %bb.u ] ; 4 uses
  %.155.i.i = phi i32 [ %.053.lcssa.i.i, %encode_exponents_blk_ch.exit.i.i ], [ %i.jq, %bb.u ] ; 2 uses
  %.1.i.i = phi ptr [ %i.oi, %encode_exponents_blk_ch.exit.i.i ], [ %i.jp, %bb.u ]
  %i.ok = icmp slt i32 %.155.i.i, %i.oj
  br i1 %i.ok, label %bb.s, label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %bb.ag
  %.pre80.i.i = load i32, ptr %i.dt, align 4, !tbaa !93
  br label %._crit_edge.i5.i

._crit_edge.i5.i:                                 ; preds = %._crit_edge.loopexit.i.i, %.lr.ph70.split.i.i
  %i.ol = phi i32 [ %.pre80.i.i, %._crit_edge.loopexit.i.i ], [ %i.iu, %.lr.ph70.split.i.i ] ; 3 uses
  %i.om = phi i32 [ %i.oj, %._crit_edge.loopexit.i.i ], [ %i.iv, %.lr.ph70.split.i.i ]
  %i.on = phi i32 [ %i.oj, %._crit_edge.loopexit.i.i ], [ %i.iw, %.lr.ph70.split.i.i ]
  %indvars.iv.next77.i.i = add nuw nsw i64 %indvars.iv76.i.i, 1
  %i.oo = sext i32 %i.ol to i64
  %.not56.not.i.i = icmp slt i64 %indvars.iv76.i.i, %i.oo
  br i1 %.not56.not.i.i, label %.lr.ph70.split.i.i, label %ac3_process_exponents.exit, !llvm.loop !117

ac3_process_exponents.exit:                       ; preds = %._crit_edge.i5.i, %compute_exp_strategy.exit.i, %.lr.ph70.i.i
  %i.op = phi i32 [ %i.il, %.lr.ph70.i.i ], [ %i.il, %compute_exp_strategy.exit.i ], [ %i.ol, %._crit_edge.i5.i ] ; 5 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.b, i64 5848 ; 3 uses
  store i32 0, ptr %i.oq, align 8, !tbaa !118
  %i.or = load i32, ptr %i.ih, align 4, !tbaa !64
  %.not.i.i44 = icmp eq i32 %i.or, 0              ; 6 uses
  br i1 %.not.i.i44, label %bb.an, label %bb.ah

bb.ah:                                            ; preds = %ac3_process_exponents.exit
  %i.os = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !119
  %.not131.i.i = icmp eq i32 %i.ot, 0
  %.phi.trans.insert.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 5024
  %.pre.i.pre.i = load i32, ptr %.phi.trans.insert.i.phi.trans.insert.i, align 16, !tbaa !120 ; 5 uses
  br i1 %.not131.i.i, label %._crit_edge.i46, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ou = icmp sgt i32 %.pre.i.pre.i, 2
  %spec.select.i.i = select i1 %i.ou, i32 2, i32 0 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.b, i64 5016
  %i.ow = load i32, ptr %i.ov, align 8, !tbaa !121
  %.not132.i.i = icmp eq i32 %i.ow, 0
  %i.ox = add nuw nsw i32 %spec.select.i.i, 6
  %.1.i.i45 = select i1 %.not132.i.i, i32 %spec.select.i.i, i32 %i.ox ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.b, i64 5020
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !122
  %.not133.i.i = icmp eq i32 %i.oz, 0
  %i.pa = add nuw nsw i32 %.1.i.i45, 6
  %.2.i.i = select i1 %.not133.i.i, i32 %.1.i.i45, i32 %i.pa
  %i.pb = load i32, ptr %i.hu, align 16, !tbaa !104
  %i.pc = icmp slt i32 %.pre.i.pre.i, 2
  %i.pd = select i1 %i.pc, i32 6, i32 5
  %.3.i.i = add i32 %i.pb, %i.pd
  %i.pe = add i32 %.3.i.i, %.2.i.i
  br label %._crit_edge.i46

._crit_edge.i46:                                  ; preds = %bb.ai, %bb.ah
  %.4.i.i = phi i32 [ %i.pe, %bb.ai ], [ 0, %bb.ah ] ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !123
  %.not134.i.i = icmp eq i32 %i.pg, 0
  br i1 %.not134.i.i, label %._crit_edge246.i.i, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.i46
  %i.ph = icmp eq i32 %.pre.i.pre.i, 2
  %spec.select164.v.i.i = select i1 %i.ph, i32 9, i32 5
  %spec.select164.i.i = add nsw i32 %.4.i.i, %spec.select164.v.i.i ; 2 uses
  %i.pi = icmp sgt i32 %.pre.i.pre.i, 5
  %i.pj = add nsw i32 %spec.select164.i.i, 2
  %.6.i.i = select i1 %i.pi, i32 %i.pj, i32 %spec.select164.i.i
  %i.pk = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !124
  %.not135.i.i = icmp eq i32 %i.pl, 0
  %.7.i.i = select i1 %.not135.i.i, i32 2, i32 10
  %i.pm = add i32 %.7.i.i, %.6.i.i
  br label %._crit_edge246.i.i

._crit_edge246.i.i:                               ; preds = %bb.aj, %._crit_edge.i46
  %.8.i.i = phi i32 [ %i.pm, %bb.aj ], [ %.4.i.i, %._crit_edge.i46 ] ; 2 uses
  %i.pn = icmp sgt i32 %.pre.i.pre.i, 1
  br i1 %i.pn, label %bb.ak, label %.loopexit194.i.i

bb.ak:                                            ; preds = %._crit_edge246.i.i
  %i.po = add nsw i32 %.8.i.i, 1                  ; 3 uses
  %i.pp = load i32, ptr %i.dr, align 4, !tbaa !9  ; 3 uses
  %i.pq = icmp sgt i32 %i.pp, 1
  br i1 %i.pq, label %.lr.ph.preheader.i.i59, label %.loopexit194.i.i

.lr.ph.preheader.i.i59:                           ; preds = %bb.ak
  %wide.trip.count.i.i = zext nneg i32 %i.pp to i64 ; 2 uses
  %i.pr = add nsw i64 %wide.trip.count.i.i, -1    ; 2 uses
  %min.iters.check414 = icmp ult i32 %i.pp, 9
  br i1 %min.iters.check414, label %.lr.ph.i.i60.preheader, label %vector.ph415

vector.ph415:                                     ; preds = %.lr.ph.preheader.i.i59
  %n.vec416 = and i64 %i.pr, -8                   ; 3 uses
  %i.ps = or disjoint i64 %n.vec416, 1
  %i.pt = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.po, i64 0
  br label %vector.body417

vector.body417:                                   ; preds = %vector.body417, %vector.ph415
  %index418 = phi i64 [ 0, %vector.ph415 ], [ %index.next420, %vector.body417 ] ; 9 uses
  %vec.phi = phi <4 x i32> [ %i.pt, %vector.ph415 ], [ %i.re, %vector.body417 ]
  %vec.phi419 = phi <4 x i32> [ zeroinitializer, %vector.ph415 ], [ %i.rf, %vector.body417 ]
  %i.pu = getelementptr inbounds nuw [648 x i8], ptr %i.b, i64 %index418
  %i.pv = getelementptr inbounds nuw [648 x i8], ptr %i.b, i64 %index418
  %i.pw = getelementptr inbounds nuw [648 x i8], ptr %i.b, i64 %index418
  %i.px = getelementptr inbounds nuw [648 x i8], ptr %i.b, i64 %index418
  %i.py = getelementptr inbounds nuw [648 x i8], ptr %i.b, i64 %index418
  %i.pz = getelementptr inbounds nuw [648 x i8], ptr %i.b, i64 %index418
  %i.qa = getelementptr inbounds nuw [648 x i8], ptr %i.b, i64 %index418
  %i.qb = getelementptr [648 x i8], ptr %i.b, i64 %index418
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pu, i64 2268
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pv, i64 2916
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pw, i64 3564
  %i.qf = getelementptr inbounds nuw i8, ptr %i.px, i64 4212
  %i.qg = getelementptr inbounds nuw i8, ptr %i.py, i64 4860
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pz, i64 5508
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qa, i64 6156
  %i.qj = getelementptr i8, ptr %i.qb, i64 6804
  %i.qk = load i32, ptr %i.qc, align 4, !tbaa !40
  %i.ql = load i32, ptr %i.qd, align 4, !tbaa !40
  %i.qm = load i32, ptr %i.qe, align 4, !tbaa !40
  %i.qn = load i32, ptr %i.qf, align 4, !tbaa !40
  %i.qo = insertelement <4 x i32> poison, i32 %i.qk, i64 0
  %i.qp = insertelement <4 x i32> %i.qo, i32 %i.ql, i64 1
  %i.qq = insertelement <4 x i32> %i.qp, i32 %i.qm, i64 2
  %i.qr = insertelement <4 x i32> %i.qq, i32 %i.qn, i64 3
  %i.qs = load i32, ptr %i.qg, align 4, !tbaa !40
  %i.qt = load i32, ptr %i.qh, align 4, !tbaa !40
  %i.qu = load i32, ptr %i.qi, align 4, !tbaa !40
  %i.qv = load i32, ptr %i.qj, align 4, !tbaa !40
  %i.qw = insertelement <4 x i32> poison, i32 %i.qs, i64 0
  %i.qx = insertelement <4 x i32> %i.qw, i32 %i.qt, i64 1
  %i.qy = insertelement <4 x i32> %i.qx, i32 %i.qu, i64 2
  %i.qz = insertelement <4 x i32> %i.qy, i32 %i.qv, i64 3
  %i.ra = icmp eq <4 x i32> %i.qr, zeroinitializer
  %i.rb = icmp eq <4 x i32> %i.qz, zeroinitializer
  %i.rc = select <4 x i1> %i.ra, <4 x i32> splat (i32 1), <4 x i32> splat (i32 2)
  %i.rd = select <4 x i1> %i.rb, <4 x i32> splat (i32 1), <4 x i32> splat (i32 2)
  %i.re = add <4 x i32> %i.rc, %vec.phi           ; 2 uses
  %i.rf = add <4 x i32> %i.rd, %vec.phi419        ; 2 uses
  %index.next420 = add nuw i64 %index418, 8       ; 2 uses
  %i.rg = icmp eq i64 %index.next420, %n.vec416
  br i1 %i.rg, label %middle.block421, label %vector.body417, !llvm.loop !125

middle.block421:                                  ; preds = %vector.body417
  %bin.rdx = add <4 x i32> %i.rf, %i.re
  %i.rh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n422 = icmp eq i64 %i.pr, %n.vec416
  br i1 %cmp.n422, label %.loopexit194.i.i, label %.lr.ph.i.i60.preheader

.lr.ph.i.i60.preheader:                           ; preds = %.lr.ph.preheader.i.i59, %middle.block421
  %indvars.iv.i.i61.ph = phi i64 [ 1, %.lr.ph.preheader.i.i59 ], [ %i.ps, %middle.block421 ]
  %.9196.i.i.ph = phi i32 [ %i.po, %.lr.ph.preheader.i.i59 ], [ %i.rh, %middle.block421 ]
  br label %.lr.ph.i.i60

.lr.ph.i.i60:                                     ; preds = %.lr.ph.i.i60.preheader, %.lr.ph.i.i60
  %indvars.iv.i.i61 = phi i64 [ %indvars.iv.next.i.i62, %.lr.ph.i.i60 ], [ %indvars.iv.i.i61.ph, %.lr.ph.i.i60.preheader ] ; 2 uses
  %.9196.i.i = phi i32 [ %spec.select165.i.i, %.lr.ph.i.i60 ], [ %.9196.i.i.ph, %.lr.ph.i.i60.preheader ]
  %i.ri = getelementptr inbounds nuw [648 x i8], ptr %i.b, i64 %indvars.iv.i.i61
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 1620
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !40
  %.not163.i.i = icmp eq i32 %i.rk, 0
  %spec.select165.v.i.i = select i1 %.not163.i.i, i32 1, i32 2
  %spec.select165.i.i = add nsw i32 %spec.select165.v.i.i, %.9196.i.i ; 2 uses
  %indvars.iv.next.i.i62 = add nuw nsw i64 %indvars.iv.i.i61, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i62, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit194.i.i, label %.lr.ph.i.i60, !llvm.loop !126

.loopexit194.i.i:                                 ; preds = %.lr.ph.i.i60, %middle.block421, %bb.ak, %._crit_edge246.i.i
  %.11.i.i = phi i32 [ %.8.i.i, %._crit_edge246.i.i ], [ %i.po, %bb.ak ], [ %i.rh, %middle.block421 ], [ %spec.select165.i.i, %.lr.ph.i.i60 ] ; 5 uses
  %i.rl = load i32, ptr %i.dp, align 16, !tbaa !27
  %.not136.i.i = icmp eq i32 %i.rl, 0
  br i1 %.not136.i.i, label %.loopexit193.i.i, label %bb.al

bb.al:                                            ; preds = %.loopexit194.i.i
  %i.rm = getelementptr inbounds nuw i8, ptr %i.b, i64 5460
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !127
  %.not137.i.i = icmp eq i32 %i.rn, 0
end_hunk_0

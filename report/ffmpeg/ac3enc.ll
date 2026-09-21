Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ac3enc?download=true
inline.NumInlined: 131
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 17
begin_hunk_0_@ff_ac3_encode_frame:bb.a
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
  br i1 %i.fv, label %.lr.ph.split.us.i.i, label %.preheader86.i.i, !llvm.loop !136

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
  %i.go = load ptr, ptr %i.en, align 16, !tbaa !206
  %i.gp = tail call i32 %i.go(ptr noundef null, ptr noundef nonnull %.090.i.i, ptr noundef %.pn89.i.i, i64 noundef 16, i32 noundef 16) #15, !inline_history !135
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
  store i8 %.sink.i.i, ptr %i.gv, align 1
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.0.i.i = getelementptr inbounds nuw i8, ptr %.090.i.i, i64 256
  %i.gw = sext i32 %i.gu to i64
  %i.gx = icmp slt i64 %indvars.iv.next.i.i, %i.gw
  br i1 %i.gx, label %.lr.ph.split.i.i, label %.preheader86.i.i, !llvm.loop !136

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
  br i1 %i.he, label %.lr.ph, label %.critedge.i.i, !llvm.loop !137

.lr.ph:                                           ; preds = %.preheader.i.i, %bb.p
  %indvars.iv.next106.i.i407 = phi i64 [ %indvars.iv.next106.i.i, %bb.p ], [ %indvars.iv.next106.i.i405, %.preheader.i.i ] ; 4 uses
  %indvars.iv105.i.i406 = phi i64 [ %indvars.iv.next106.i.i407, %bb.p ], [ %i.gz, %.preheader.i.i ]
  %i.hf = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv.next106.i.i407
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !31
  %i.hh = icmp eq i8 %i.hg, 0
  br i1 %i.hh, label %bb.p, label %.critedge.split.loop.exit123.i.i, !llvm.loop !137

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
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !31
  %i.ho = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.gz
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !31
  %i.hp = icmp slt i32 %.075.lcssa.i.i, %i.fw
  br i1 %i.hp, label %.preheader.i.i, label %._crit_edge.i.i, !llvm.loop !138

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %.preheader86.i.i
  %i.hq = phi i32 [ %i.fx, %.preheader86.i.i ], [ %i.fw, %.critedge.i.i ]
  %i.hr = phi i32 [ %i.fy, %.preheader86.i.i ], [ %i.fw, %.critedge.i.i ]
  %indvars.iv.next109.i.i = add nuw nsw i64 %indvars.iv108.i.i, 1
  %i.hs = load i32, ptr %i.ej, align 8, !tbaa !29
  %i.ht = sext i32 %i.hs to i64
  %.not78.not.i.i = icmp slt i64 %indvars.iv108.i.i, %i.ht
  br i1 %.not78.not.i.i, label %bb.l, label %._crit_edge96.i.i, !llvm.loop !139

._crit_edge96.i.i:                                ; preds = %._crit_edge.i.i, %ac3_apply_rematrixing.exit
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 5008 ; 3 uses
  %i.hv = load i32, ptr %i.hu, align 16, !tbaa !66
  %.not79.i.i = icmp eq i32 %i.hv, 0
  br i1 %.not79.i.i, label %.loopexit.i.i, label %bb.q

bb.q:                                             ; preds = %._crit_edge96.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.b, i64 5012
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !67
  %i.hy = getelementptr inbounds nuw i8, ptr %i.b, i64 5408
  %i.hz = sext i32 %i.hx to i64
  %i.ia = getelementptr inbounds [6 x i8], ptr %i.hy, i64 %i.hz ; 2 uses
  store i8 1, ptr %i.ia, align 2, !tbaa !31
  %i.ib = load i32, ptr %i.dr, align 4, !tbaa !28
  %i.ic = icmp sgt i32 %i.ib, 1
  br i1 %i.ic, label %.lr.ph99.i.i, label %.loopexit.i.i

.lr.ph99.i.i:                                     ; preds = %bb.q, %.lr.ph99.i.i
  %indvars.iv111.i.i = phi i64 [ %indvars.iv.next112.i.i, %.lr.ph99.i.i ], [ 1, %bb.q ] ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 %indvars.iv111.i.i
  store i8 0, ptr %i.id, align 1, !tbaa !31
  %indvars.iv.next112.i.i = add nuw nsw i64 %indvars.iv111.i.i, 1 ; 2 uses
  %i.ie = load i32, ptr %i.dr, align 4, !tbaa !28
  %i.if = sext i32 %i.ie to i64
  %i.ig = icmp slt i64 %indvars.iv.next112.i.i, %i.if
  br i1 %i.ig, label %.lr.ph99.i.i, label %.loopexit.i.i, !llvm.loop !140

.loopexit.i.i:                                    ; preds = %.lr.ph99.i.i, %bb.q, %._crit_edge96.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.b, i64 4940 ; 18 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !56
  %.not80.i.i = icmp eq i32 %i.ii, 0
  br i1 %.not80.i.i, label %compute_exp_strategy.exit.i, label %bb.r

bb.r:                                             ; preds = %.loopexit.i.i
  tail call void @ff_eac3_get_frame_exp_strategy(ptr noundef nonnull %i.b) #15
  br label %compute_exp_strategy.exit.i

compute_exp_strategy.exit.i:                      ; preds = %bb.r, %.loopexit.i.i
  %i.ij = load i32, ptr %i.dp, align 16, !tbaa !30
  %.not.i4.i = icmp eq i32 %i.ij, 0               ; 2 uses
  %i.ik = zext i1 %.not.i4.i to i32
  %i.il = load i32, ptr %i.dt, align 4, !tbaa !63 ; 4 uses
  %.not5667.i.i = icmp slt i32 %i.il, %i.ik
  br i1 %.not5667.i.i, label %ac3_process_exponents.exit, label %.lr.ph70.i.i

.lr.ph70.i.i:                                     ; preds = %compute_exp_strategy.exit.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.b, i64 1048
  %i.in = getelementptr inbounds nuw i8, ptr %i.b, i64 5072
  %i.io = getelementptr inbounds nuw i8, ptr %i.b, i64 5408
  %i.ip = getelementptr inbounds nuw i8, ptr %i.b, i64 5464
  %i.iq = getelementptr inbounds nuw i8, ptr %i.b, i64 944
  %i.ir = load i32, ptr %i.dr, align 4, !tbaa !28 ; 3 uses
  %i.is = icmp sgt i32 %i.ir, 0
  br i1 %i.is, label %.lr.ph70.split.preheader.i.i, label %ac3_process_exponents.exit

.lr.ph70.split.preheader.i.i:                     ; preds = %.lr.ph70.i.i
  %i.it = zext i1 %.not.i4.i to i64
  br label %.lr.ph70.split.i.i

.lr.ph70.split.i.i:                               ; preds = %._crit_edge.i5.i, %.lr.ph70.split.preheader.i.i
  %i.iu = phi i32 [ %i.il, %.lr.ph70.split.preheader.i.i ], [ %i.ou, %._crit_edge.i5.i ]
  %i.iv = phi i32 [ %i.ir, %.lr.ph70.split.preheader.i.i ], [ %i.ov, %._crit_edge.i5.i ] ; 2 uses
  %i.iw = phi i32 [ %i.ir, %.lr.ph70.split.preheader.i.i ], [ %i.ow, %._crit_edge.i5.i ] ; 2 uses
  %indvars.iv76.i.i = phi i64 [ %i.it, %.lr.ph70.split.preheader.i.i ], [ %indvars.iv.next77.i.i, %._crit_edge.i5.i ] ; 8 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv76.i.i ; 3 uses
  %i.iy = getelementptr inbounds nuw [6 x i8], ptr %i.io, i64 %indvars.iv76.i.i ; 2 uses
  %i.iz = icmp eq i64 %indvars.iv76.i.i, 0        ; 5 uses
  %i.ja = zext i1 %i.iz to i32                    ; 3 uses
  %i.jb = icmp sgt i32 %i.iw, 0
  br i1 %i.jb, label %.lr.ph66.i.i, label %._crit_edge.i5.i

.lr.ph66.i.i:                                     ; preds = %.lr.ph70.split.i.i
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv76.i.i
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !64
  %i.je = load i32, ptr %i.ix, align 4, !tbaa !40
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds i8, ptr %i.jd, i64 %i.jf
  %i.jh = getelementptr inbounds nuw [6 x i8], ptr %i.ip, i64 %indvars.iv76.i.i ; 2 uses
  %i.ji = zext i1 %i.iz to i64                    ; 9 uses
  %i.jj = getelementptr inbounds nuw [768 x i8], ptr @exponent_group_tab, i64 %i.ji
  %i.jk = xor i32 %i.ja, 1
  %i.jl = zext nneg i32 %i.jk to i64              ; 2 uses
  %invariant.op = sub i64 1, %i.ji
  %invariant.op571 = sub i64 1, %i.ji
  br label %bb.s

bb.s:                                             ; preds = %bb.ag, %.lr.ph66.i.i
  %i.jm = phi i32 [ %i.iv, %.lr.ph66.i.i ], [ %i.os, %bb.ag ]
  %.065.i.i = phi ptr [ %i.jg, %.lr.ph66.i.i ], [ %.1.i.i, %bb.ag ] ; 28 uses
  %.05464.i.i = phi i32 [ 0, %.lr.ph66.i.i ], [ %.155.i.i, %bb.ag ] ; 5 uses
  %i.jn = sext i32 %.05464.i.i to i64             ; 3 uses
  %i.jo = getelementptr inbounds [648 x i8], ptr %i.im, i64 %i.jn ; 2 uses
  br i1 %i.iz, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 576
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !35
  %.not57.i.i = icmp eq i32 %i.jq, 0
  br i1 %.not57.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.jr = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 256
  %i.js = add nsw i32 %.05464.i.i, 1
  br label %bb.ag, !llvm.loop !141

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jo, i64 616
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv76.i.i
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !40
  %i.jw = load i32, ptr %i.ix, align 4, !tbaa !40
  %i.jx = sub nsw i32 %i.jv, %i.jw
  %i.jy = trunc i32 %.05464.i.i to i8             ; 2 uses
  %i.jz = getelementptr inbounds i8, ptr %i.jh, i64 %i.jn
  store i8 %i.jy, ptr %i.jz, align 1, !tbaa !31
  %.05360.i.i = add nsw i32 %.05464.i.i, 1        ; 3 uses
  %i.ka = load i32, ptr %i.dr, align 4, !tbaa !28
  %i.kb = icmp slt i32 %.05360.i.i, %i.ka
  br i1 %i.kb, label %.lr.ph.preheader.i.i, label %.critedge.i6.i

.lr.ph.preheader.i.i:                             ; preds = %bb.v
  %i.kc = sext i32 %.05360.i.i to i64
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.w, %.lr.ph.preheader.i.i
  %indvars.iv.i9.i = phi i64 [ %i.kc, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i10.i, %bb.w ] ; 4 uses
  %i.kd = getelementptr inbounds i8, ptr %i.iy, i64 %indvars.iv.i9.i
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !31
  %i.kf = icmp eq i8 %i.ke, 0
  br i1 %i.kf, label %bb.w, label %.critedge.loopexit.i.i

bb.w:                                             ; preds = %.lr.ph.i8.i
  %i.kg = getelementptr inbounds i8, ptr %i.jh, i64 %indvars.iv.i9.i
  store i8 %i.jy, ptr %i.kg, align 1, !tbaa !31
  %indvars.iv.next.i10.i = add nsw i64 %indvars.iv.i9.i, 1 ; 3 uses
  %i.kh = load i32, ptr %i.dr, align 4, !tbaa !28
  %i.ki = sext i32 %i.kh to i64
  %i.kj = icmp slt i64 %indvars.iv.next.i10.i, %i.ki
  br i1 %i.kj, label %.lr.ph.i8.i, label %.critedge.loopexit.i.i, !llvm.loop !142

.critedge.loopexit.i.i:                           ; preds = %bb.w, %.lr.ph.i8.i
  %.053.lcssa.ph.in.i.i = phi i64 [ %indvars.iv.i9.i, %.lr.ph.i8.i ], [ %indvars.iv.next.i10.i, %bb.w ]
  %.053.lcssa.ph.i.i = trunc i64 %.053.lcssa.ph.in.i.i to i32
  br label %.critedge.i6.i

.critedge.i6.i:                                   ; preds = %.critedge.loopexit.i.i, %bb.v
  %.053.lcssa.i.i = phi i32 [ %.05360.i.i, %bb.v ], [ %.053.lcssa.ph.i.i, %.critedge.loopexit.i.i ] ; 2 uses
  %i.kk = sub nsw i32 %.053.lcssa.i.i, %.05464.i.i ; 2 uses
  %i.kl = add nsw i32 %i.kk, -1
  %i.km = load ptr, ptr %i.iq, align 16, !tbaa !207
  %i.kn = load i32, ptr %i.ix, align 4, !tbaa !40
  %i.ko = sext i32 %i.kn to i64
  %i.kp = sub nsw i64 0, %i.ko
  %i.kq = getelementptr inbounds i8, ptr %.065.i.i, i64 %i.kp
  tail call void %i.km(ptr noundef %i.kq, i32 noundef %i.kl, i32 noundef 256) #15, !inline_history !143
  %i.kr = getelementptr inbounds i8, ptr %i.iy, i64 %i.jn
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !31  ; 3 uses
  %i.kt = zext i8 %i.ks to i64
  %i.ku = getelementptr [256 x i8], ptr %i.jj, i64 %i.kt
  %i.kv = getelementptr i8, ptr %i.ku, i64 -256
  %i.kw = sext i32 %i.jx to i64
  %i.kx = getelementptr inbounds i8, ptr %i.kv, i64 %i.kw
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !31  ; 9 uses
  %i.kz = zext i8 %i.ky to i32                    ; 2 uses
  switch i8 %i.ks, label %.loopexit128.i.i.i [
    i8 2, label %bb.x
    i8 3, label %bb.y
  ]

bb.x:                                             ; preds = %.critedge.i6.i
  %.not122133.i.i.i = icmp eq i8 %i.ky, 0
  br i1 %.not122133.i.i.i, label %.loopexit128.i.i.i, label %.lr.ph136.preheader.i.i.i

.lr.ph136.preheader.i.i.i:                        ; preds = %bb.x
  %i.la = zext i8 %i.ky to i64
  %i.lb = mul nuw nsw i64 %i.la, 3                ; 3 uses
  %xtraiter498 = and i64 %i.lb, 1
  %unroll_iter501 = and i64 %i.lb, 1022
  br label %.lr.ph136.i.i.i

.lr.ph136.i.i.i:                                  ; preds = %.lr.ph136.i.i.i, %.lr.ph136.preheader.i.i.i
  %indvars.iv163.i.i.i = phi i64 [ 1, %.lr.ph136.preheader.i.i.i ], [ %indvars.iv.next164.i.i.i.1, %.lr.ph136.i.i.i ] ; 3 uses
  %indvars.iv161.i.i.i = phi i64 [ %i.jl, %.lr.ph136.preheader.i.i.i ], [ %indvars.iv.next162.i.i.i.1, %.lr.ph136.i.i.i ] ; 3 uses
  %niter502 = phi i64 [ 0, %.lr.ph136.preheader.i.i.i ], [ %niter502.next.1, %.lr.ph136.i.i.i ]
  %i.lc = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 %indvars.iv161.i.i.i ; 2 uses
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !31
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 1
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !31
  %spec.select.i.i.i = tail call i8 @llvm.umin.i8(i8 %i.lf, i8 %i.ld)
  %i.lg = sub nsw i64 %indvars.iv163.i.i.i, %i.ji
  %i.lh = getelementptr inbounds i8, ptr %.065.i.i, i64 %i.lg
  store i8 %spec.select.i.i.i, ptr %i.lh, align 1, !tbaa !31
  %i.li = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 %indvars.iv161.i.i.i ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 2
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !31
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 3
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !31
  %spec.select.i.i.i.1 = tail call i8 @llvm.umin.i8(i8 %i.lm, i8 %i.lk)
  %.reass572 = add i64 %indvars.iv163.i.i.i, %invariant.op571
  %i.ln = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 %.reass572
  store i8 %spec.select.i.i.i.1, ptr %i.ln, align 1, !tbaa !31
  %indvars.iv.next162.i.i.i.1 = add nuw nsw i64 %indvars.iv161.i.i.i, 4 ; 2 uses
  %indvars.iv.next164.i.i.i.1 = add nuw nsw i64 %indvars.iv163.i.i.i, 2 ; 2 uses
  %niter502.next.1 = add nuw nsw i64 %niter502, 2 ; 2 uses
  %niter502.ncmp.1 = icmp eq i64 %niter502.next.1, %unroll_iter501
  br i1 %niter502.ncmp.1, label %.loopexit128.i.i.i.loopexit.unr-lcssa, label %.lr.ph136.i.i.i, !llvm.loop !144

bb.y:                                             ; preds = %.critedge.i6.i
  %.not130.i.i.i = icmp eq i8 %i.ky, 0
  br i1 %.not130.i.i.i, label %.loopexit128.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.y
  %i.lo = zext i8 %i.ky to i64
  %i.lp = mul nuw nsw i64 %i.lo, 3                ; 3 uses
  %xtraiter495 = and i64 %i.lp, 1
  %unroll_iter = and i64 %i.lp, 1022
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv156.i.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next157.i.i.i.1, %.lr.ph.i.i.i ] ; 3 uses
  %indvars.iv.i.i.i = phi i64 [ %i.jl, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.lq = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 %indvars.iv.i.i.i
  %i.lr = load <4 x i8>, ptr %i.lq, align 1, !tbaa !31
  %i.ls = tail call i8 @llvm.vector.reduce.umin.v4i8(<4 x i8> %i.lr)
  %i.lt = sub nsw i64 %indvars.iv156.i.i.i, %i.ji
  %i.lu = getelementptr inbounds i8, ptr %.065.i.i, i64 %i.lt
  store i8 %i.ls, ptr %i.lu, align 1, !tbaa !31
  %i.lv = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 %indvars.iv.i.i.i
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 4
  %i.lx = load <4 x i8>, ptr %i.lw, align 1, !tbaa !31
  %i.ly = tail call i8 @llvm.vector.reduce.umin.v4i8(<4 x i8> %i.lx)
  %.reass = add i64 %indvars.iv156.i.i.i, %invariant.op
  %i.lz = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 %.reass
  store i8 %i.ly, ptr %i.lz, align 1, !tbaa !31
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 8 ; 2 uses
  %indvars.iv.next157.i.i.i.1 = add nuw nsw i64 %indvars.iv156.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit128.i.i.i.loopexit482.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !145

.loopexit128.i.i.i.loopexit.unr-lcssa:            ; preds = %.lr.ph136.i.i.i
  %lcmp.mod499.not = icmp eq i64 %xtraiter498, 0
  br i1 %lcmp.mod499.not, label %.loopexit128.i.i.i, label %.lr.ph136.i.i.i.epil.preheader

.lr.ph136.i.i.i.epil.preheader:                   ; preds = %.loopexit128.i.i.i.loopexit.unr-lcssa
  %lcmp.mod500 = trunc i64 %i.lb to i1
  tail call void @llvm.assume(i1 %lcmp.mod500)
  %i.ma = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 %indvars.iv.next162.i.i.i.1 ; 2 uses
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !31
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 1
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !31
  %spec.select.i.i.i.epil = tail call i8 @llvm.umin.i8(i8 %i.md, i8 %i.mb)
  %i.me = sub nsw i64 %indvars.iv.next164.i.i.i.1, %i.ji
  %i.mf = getelementptr inbounds i8, ptr %.065.i.i, i64 %i.me
  store i8 %spec.select.i.i.i.epil, ptr %i.mf, align 1, !tbaa !31
  br label %.loopexit128.i.i.i

.loopexit128.i.i.i.loopexit482.unr-lcssa:         ; preds = %.lr.ph.i.i.i
  %lcmp.mod496.not = icmp eq i64 %xtraiter495, 0
  br i1 %lcmp.mod496.not, label %.loopexit128.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit128.i.i.i.loopexit482.unr-lcssa
  %lcmp.mod497 = trunc i64 %i.lp to i1
  tail call void @llvm.assume(i1 %lcmp.mod497)
  %i.mg = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.mh = load <4 x i8>, ptr %i.mg, align 1, !tbaa !31
  %i.mi = tail call i8 @llvm.vector.reduce.umin.v4i8(<4 x i8> %i.mh)
  %i.mj = sub nsw i64 %indvars.iv.next157.i.i.i.1, %i.ji
  %i.mk = getelementptr inbounds i8, ptr %.065.i.i, i64 %i.mj
  store i8 %i.mi, ptr %i.mk, align 1, !tbaa !31
  br label %.loopexit128.i.i.i

.loopexit128.i.i.i:                               ; preds = %.lr.ph.i.i.i.epil.preheader, %.loopexit128.i.i.i.loopexit482.unr-lcssa, %.lr.ph136.i.i.i.epil.preheader, %.loopexit128.i.i.i.loopexit.unr-lcssa, %bb.y, %bb.x, %.critedge.i6.i
  br i1 %i.iz, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.loopexit128.i.i.i
  %i.ml = load i8, ptr %.065.i.i, align 1, !tbaa !31
  %i.mm = icmp ugt i8 %i.ml, 15
  br i1 %i.mm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i8 15, ptr %.065.i.i, align 1, !tbaa !31
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %.loopexit128.i.i.i
  %.not124137.i.i.i = icmp eq i8 %i.ky, 0         ; 3 uses
  br i1 %.not124137.i.i.i, label %._crit_edge143.i.i.i, label %.lr.ph139.preheader.i.i.i

.lr.ph139.preheader.i.i.i:                        ; preds = %bb.ab
  %i.mn = zext i8 %i.ky to i64
  %i.mo = mul nuw nsw i64 %i.mn, 3                ; 3 uses
  %xtraiter503 = and i64 %i.mo, 1
  %load_initial = load i8, ptr %.065.i.i, align 1
  %i.mp = zext i8 %load_initial to i16
  %unroll_iter508 = and i64 %i.mo, 1022
  br label %.lr.ph139.i.i.i

.lr.ph139.i.i.i:                                  ; preds = %.lr.ph139.i.i.i, %.lr.ph139.preheader.i.i.i
  %store_forwarded = phi i16 [ %i.mp, %.lr.ph139.preheader.i.i.i ], [ %i.na, %.lr.ph139.i.i.i ]
  %indvars.iv170.i.i.i = phi i64 [ 1, %.lr.ph139.preheader.i.i.i ], [ %indvars.iv.next171.i.i.i.1, %.lr.ph139.i.i.i ] ; 3 uses
  %niter509 = phi i64 [ 0, %.lr.ph139.preheader.i.i.i ], [ %niter509.next.1, %.lr.ph139.i.i.i ]
  %i.mq = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 %indvars.iv170.i.i.i ; 2 uses
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !31
  %i.ms = zext i8 %i.mr to i16
  %i.mt = add nuw nsw i16 %store_forwarded, 2
  %i.mu = tail call i16 @llvm.umin.i16(i16 %i.mt, i16 %i.ms) ; 2 uses
  %i.mv = trunc nuw i16 %i.mu to i8
  store i8 %i.mv, ptr %i.mq, align 1, !tbaa !31
  %indvars.iv.next171.i.i.i = add nuw nsw i64 %indvars.iv170.i.i.i, 1 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 %indvars.iv.next171.i.i.i ; 2 uses
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !31
  %i.my = zext i8 %i.mx to i16
  %i.mz = add nuw nsw i16 %i.mu, 2
  %i.na = tail call i16 @llvm.umin.i16(i16 %i.mz, i16 %i.my) ; 4 uses
  %i.nb = trunc nuw i16 %i.na to i8
  store i8 %i.nb, ptr %i.mw, align 1, !tbaa !31
  %indvars.iv.next171.i.i.i.1 = add nuw nsw i64 %indvars.iv170.i.i.i, 2 ; 3 uses
  %niter509.next.1 = add nuw nsw i64 %niter509, 2 ; 2 uses
  %niter509.ncmp.1 = icmp eq i64 %niter509.next.1, %unroll_iter508
  br i1 %niter509.ncmp.1, label %.lr.ph142.i.i.i.preheader.unr-lcssa, label %.lr.ph139.i.i.i, !llvm.loop !146

.lr.ph142.i.i.i.preheader.unr-lcssa:              ; preds = %.lr.ph139.i.i.i
  %lcmp.mod504.not = icmp eq i64 %xtraiter503, 0
  br i1 %lcmp.mod504.not, label %.lr.ph142.i.i.i.preheader, label %.lr.ph139.i.i.i.epil.preheader

.lr.ph139.i.i.i.epil.preheader:                   ; preds = %.lr.ph142.i.i.i.preheader.unr-lcssa
  %lcmp.mod507 = trunc i64 %i.mo to i1
  tail call void @llvm.assume(i1 %lcmp.mod507)
  %i.nc = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 %indvars.iv.next171.i.i.i.1 ; 2 uses
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !31
  %i.ne = zext i8 %i.nd to i16
  %i.nf = add nuw nsw i16 %i.na, 2
  %i.ng = tail call i16 @llvm.umin.i16(i16 %i.nf, i16 %i.ne) ; 2 uses
  %i.nh = trunc nuw i16 %i.ng to i8
  store i8 %i.nh, ptr %i.nc, align 1, !tbaa !31
  br label %.lr.ph142.i.i.i.preheader

.lr.ph142.i.i.i.preheader:                        ; preds = %.lr.ph142.i.i.i.preheader.unr-lcssa, %.lr.ph139.i.i.i.epil.preheader
  %indvars.iv170.i.i.i.lcssa = phi i64 [ %indvars.iv.next171.i.i.i, %.lr.ph142.i.i.i.preheader.unr-lcssa ], [ %indvars.iv.next171.i.i.i.1, %.lr.ph139.i.i.i.epil.preheader ]
  %.lcssa483 = phi i16 [ %i.na, %.lr.ph142.i.i.i.preheader.unr-lcssa ], [ %i.ng, %.lr.ph139.i.i.i.epil.preheader ]
  br label %.lr.ph142.i.i.i

.lr.ph142.i.i.i:                                  ; preds = %.lr.ph142.i.i.i.preheader, %.lr.ph142.i.i.i
  %i.ni = phi i16 [ %i.nn, %.lr.ph142.i.i.i ], [ %.lcssa483, %.lr.ph142.i.i.i.preheader ]
  %indvars.iv175.i.i.i = phi i64 [ %indvars.iv.next176.i.i.i, %.lr.ph142.i.i.i ], [ %indvars.iv170.i.i.i.lcssa, %.lr.ph142.i.i.i.preheader ] ; 2 uses
  %indvars.iv.next176.i.i.i = add nsw i64 %indvars.iv175.i.i.i, -1 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 %indvars.iv.next176.i.i.i ; 2 uses
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !31
  %i.nl = zext i8 %i.nk to i16
  %i.nm = add nuw nsw i16 %i.ni, 2
  %i.nn = tail call i16 @llvm.umin.i16(i16 %i.nm, i16 %i.nl) ; 2 uses
  %i.no = trunc nuw i16 %i.nn to i8
  store i8 %i.no, ptr %i.nj, align 1, !tbaa !31
  %i.np = icmp samesign ugt i64 %indvars.iv175.i.i.i, 1
  br i1 %i.np, label %.lr.ph142.i.i.i, label %._crit_edge143.i.i.i, !llvm.loop !147

._crit_edge143.i.i.i:                             ; preds = %.lr.ph142.i.i.i, %bb.ab
  br i1 %i.iz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %._crit_edge143.i.i.i
  %i.nq = load i8, ptr %.065.i.i, align 1, !tbaa !31
  %i.nr = and i8 %i.nq, -2
  %i.ns = getelementptr inbounds i8, ptr %.065.i.i, i64 -1
  store i8 %i.nr, ptr %i.ns, align 1, !tbaa !31
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge143.i.i.i
  switch i8 %i.ks, label %encode_exponents_blk_ch.exit.i.i [
    i8 2, label %bb.ae
    i8 3, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not124137.i.i.i, label %encode_exponents_blk_ch.exit.i.i, label %.lr.ph151.preheader.i.i.i

.lr.ph151.preheader.i.i.i:                        ; preds = %bb.ae
  %i.nt = mul nuw nsw i32 %i.kz, 6
  %i.nu = sub nuw nsw i32 %i.nt, %i.ja
  %i.nv = zext nneg i32 %i.nu to i64
  %i.nw = zext i8 %i.ky to i64
  %i.nx = mul nuw nsw i64 %i.nw, 3
  br label %.lr.ph151.i.i.i

.lr.ph151.i.i.i:                                  ; preds = %.lr.ph151.i.i.i, %.lr.ph151.preheader.i.i.i
  %indvars.iv187.i.i.i = phi i64 [ %i.nx, %.lr.ph151.preheader.i.i.i ], [ %indvars.iv.next188.i.i.i, %.lr.ph151.i.i.i ] ; 3 uses
  %indvars.iv185.i.i.i = phi i64 [ %i.nv, %.lr.ph151.preheader.i.i.i ], [ %indvars.iv.next186.i.i.i, %.lr.ph151.i.i.i ] ; 2 uses
  %i.ny = sub nuw nsw i64 %indvars.iv187.i.i.i, %i.ji
  %i.nz = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 %i.ny
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !31  ; 2 uses
  %i.ob = getelementptr inbounds i8, ptr %.065.i.i, i64 %indvars.iv185.i.i.i ; 2 uses
  store i8 %i.oa, ptr %i.ob, align 1, !tbaa !31
  %indvars.iv.next186.i.i.i = add nsw i64 %indvars.iv185.i.i.i, -2
  %i.oc = getelementptr i8, ptr %i.ob, i64 -1
  store i8 %i.oa, ptr %i.oc, align 1, !tbaa !31
  %indvars.iv.next188.i.i.i = add nsw i64 %indvars.iv187.i.i.i, -1
  %5 = icmp samesign ugt i64 %indvars.iv187.i.i.i, 1
  br i1 %5, label %.lr.ph151.i.i.i, label %encode_exponents_blk_ch.exit.i.i, !llvm.loop !148

bb.af:                                            ; preds = %bb.ad
  br i1 %.not124137.i.i.i, label %encode_exponents_blk_ch.exit.i.i, label %.lr.ph147.preheader.i.i.i

.lr.ph147.preheader.i.i.i:                        ; preds = %bb.af
  %i.od = mul nuw nsw i32 %i.kz, 12
  %i.oe = sub nuw nsw i32 %i.od, %i.ja
  %i.of = zext nneg i32 %i.oe to i64
  %i.og = zext i8 %i.ky to i64
  %i.oh = mul nuw nsw i64 %i.og, 3
  br label %.lr.ph147.i.i.i

.lr.ph147.i.i.i:                                  ; preds = %.lr.ph147.i.i.i, %.lr.ph147.preheader.i.i.i
  %indvars.iv180.i.i.i = phi i64 [ %i.oh, %.lr.ph147.preheader.i.i.i ], [ %indvars.iv.next181.i.i.i, %.lr.ph147.i.i.i ] ; 3 uses
  %indvars.iv178.i.i.i = phi i64 [ %i.of, %.lr.ph147.preheader.i.i.i ], [ %indvars.iv.next179.i.i.i, %.lr.ph147.i.i.i ] ; 2 uses
  %i.oi = sub nuw nsw i64 %indvars.iv180.i.i.i, %i.ji
  %i.oj = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 %i.oi
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !31
  %i.ol = getelementptr i8, ptr %.065.i.i, i64 %indvars.iv178.i.i.i
  %i.om = getelementptr i8, ptr %i.ol, i64 -3
  %i.on = insertelement <4 x i8> poison, i8 %i.ok, i64 0
  %i.oo = shufflevector <4 x i8> %i.on, <4 x i8> poison, <4 x i32> zeroinitializer
  store <4 x i8> %i.oo, ptr %i.om, align 1, !tbaa !31
  %indvars.iv.next179.i.i.i = add nsw i64 %indvars.iv178.i.i.i, -4
  %indvars.iv.next181.i.i.i = add nsw i64 %indvars.iv180.i.i.i, -1
  %6 = icmp samesign ugt i64 %indvars.iv180.i.i.i, 1
  br i1 %6, label %.lr.ph147.i.i.i, label %encode_exponents_blk_ch.exit.i.i, !llvm.loop !149

encode_exponents_blk_ch.exit.i.i:                 ; preds = %.lr.ph147.i.i.i, %.lr.ph151.i.i.i, %bb.af, %bb.ae, %bb.ad
  %i.op = shl nuw nsw i32 %i.kk, 8
  %i.oq = zext nneg i32 %i.op to i64
  %i.or = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 %i.oq
  %.pre.i7.i = load i32, ptr %i.dr, align 4, !tbaa !28
  br label %bb.ag

bb.ag:                                            ; preds = %encode_exponents_blk_ch.exit.i.i, %bb.u
  %i.os = phi i32 [ %.pre.i7.i, %encode_exponents_blk_ch.exit.i.i ], [ %i.jm, %bb.u ] ; 4 uses
  %.155.i.i = phi i32 [ %.053.lcssa.i.i, %encode_exponents_blk_ch.exit.i.i ], [ %i.js, %bb.u ] ; 2 uses
  %.1.i.i = phi ptr [ %i.or, %encode_exponents_blk_ch.exit.i.i ], [ %i.jr, %bb.u ]
  %i.ot = icmp slt i32 %.155.i.i, %i.os
  br i1 %i.ot, label %bb.s, label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %bb.ag
  %.pre80.i.i = load i32, ptr %i.dt, align 4, !tbaa !63
  br label %._crit_edge.i5.i

._crit_edge.i5.i:                                 ; preds = %._crit_edge.loopexit.i.i, %.lr.ph70.split.i.i
  %i.ou = phi i32 [ %.pre80.i.i, %._crit_edge.loopexit.i.i ], [ %i.iu, %.lr.ph70.split.i.i ] ; 3 uses
  %i.ov = phi i32 [ %i.os, %._crit_edge.loopexit.i.i ], [ %i.iv, %.lr.ph70.split.i.i ]
  %i.ow = phi i32 [ %i.os, %._crit_edge.loopexit.i.i ], [ %i.iw, %.lr.ph70.split.i.i ]
  %indvars.iv.next77.i.i = add nuw nsw i64 %indvars.iv76.i.i, 1
  %i.ox = sext i32 %i.ou to i64
  %.not56.not.i.i = icmp slt i64 %indvars.iv76.i.i, %i.ox
  br i1 %.not56.not.i.i, label %.lr.ph70.split.i.i, label %ac3_process_exponents.exit, !llvm.loop !150

ac3_process_exponents.exit:                       ; preds = %._crit_edge.i5.i, %compute_exp_strategy.exit.i, %.lr.ph70.i.i
  %i.oy = phi i32 [ %i.il, %.lr.ph70.i.i ], [ %i.il, %compute_exp_strategy.exit.i ], [ %i.ou, %._crit_edge.i5.i ] ; 5 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.b, i64 5848 ; 3 uses
  store i32 0, ptr %i.oz, align 8, !tbaa !68
  %i.pa = load i32, ptr %i.ih, align 4, !tbaa !56
  %.not.i.i44 = icmp eq i32 %i.pa, 0              ; 6 uses
  br i1 %.not.i.i44, label %bb.an, label %bb.ah

bb.ah:                                            ; preds = %ac3_process_exponents.exit
  %i.pb = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.pc = load i32, ptr %i.pb, align 8, !tbaa !69
  %.not131.i.i = icmp eq i32 %i.pc, 0
  %.phi.trans.insert.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 5024
  %.pre.i.pre.i = load i32, ptr %.phi.trans.insert.i.phi.trans.insert.i, align 16, !tbaa !70 ; 5 uses
  br i1 %.not131.i.i, label %._crit_edge.i46, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.pd = icmp sgt i32 %.pre.i.pre.i, 2
  %spec.select.i.i = select i1 %i.pd, i32 2, i32 0 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.b, i64 5016
  %i.pf = load i32, ptr %i.pe, align 8, !tbaa !71
  %.not132.i.i = icmp eq i32 %i.pf, 0
  %i.pg = add nuw nsw i32 %spec.select.i.i, 6
  %.1.i.i45 = select i1 %.not132.i.i, i32 %spec.select.i.i, i32 %i.pg ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.b, i64 5020
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !72
  %.not133.i.i = icmp eq i32 %i.pi, 0
  %i.pj = add nuw nsw i32 %.1.i.i45, 6
  %.2.i.i = select i1 %.not133.i.i, i32 %.1.i.i45, i32 %i.pj
  %i.pk = load i32, ptr %i.hu, align 16, !tbaa !66
  %i.pl = icmp slt i32 %.pre.i.pre.i, 2
  %i.pm = select i1 %i.pl, i32 6, i32 5
  %.3.i.i = add i32 %i.pk, %i.pm
  %i.pn = add i32 %.3.i.i, %.2.i.i
  br label %._crit_edge.i46

._crit_edge.i46:                                  ; preds = %bb.ai, %bb.ah
  %.4.i.i = phi i32 [ %i.pn, %bb.ai ], [ 0, %bb.ah ] ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !73
  %.not134.i.i = icmp eq i32 %i.pp, 0
  br i1 %.not134.i.i, label %._crit_edge246.i.i, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.i46
  %i.pq = icmp eq i32 %.pre.i.pre.i, 2
  %spec.select164.v.i.i = select i1 %i.pq, i32 9, i32 5
  %spec.select164.i.i = add nsw i32 %.4.i.i, %spec.select164.v.i.i ; 2 uses
  %i.pr = icmp sgt i32 %.pre.i.pre.i, 5
  %i.ps = add nsw i32 %spec.select164.i.i, 2
  %.6.i.i = select i1 %i.pr, i32 %i.ps, i32 %spec.select164.i.i
  %i.pt = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !74
  %.not135.i.i = icmp eq i32 %i.pu, 0
  %.7.i.i = select i1 %.not135.i.i, i32 2, i32 10
  %i.pv = add i32 %.7.i.i, %.6.i.i
  br label %._crit_edge246.i.i

._crit_edge246.i.i:                               ; preds = %bb.aj, %._crit_edge.i46
  %.8.i.i = phi i32 [ %i.pv, %bb.aj ], [ %.4.i.i, %._crit_edge.i46 ] ; 2 uses
  %i.pw = icmp sgt i32 %.pre.i.pre.i, 1
  br i1 %i.pw, label %bb.ak, label %.loopexit194.i.i

bb.ak:                                            ; preds = %._crit_edge246.i.i
  %i.px = add nsw i32 %.8.i.i, 1                  ; 3 uses
  %i.py = load i32, ptr %i.dr, align 4, !tbaa !28 ; 3 uses
  %i.pz = icmp sgt i32 %i.py, 1
  br i1 %i.pz, label %.lr.ph.preheader.i.i59, label %.loopexit194.i.i

.lr.ph.preheader.i.i59:                           ; preds = %bb.ak
  %wide.trip.count.i.i = zext nneg i32 %i.py to i64 ; 2 uses
  %i.qa = add nsw i64 %wide.trip.count.i.i, -1    ; 2 uses
  %min.iters.check414 = icmp ult i32 %i.py, 9
  br i1 %min.iters.check414, label %.lr.ph.i.i60.preheader, label %vector.ph415

vector.ph415:                                     ; preds = %.lr.ph.preheader.i.i59
  %n.vec416 = and i64 %i.qa, -8                   ; 3 uses
  %i.qb = or disjoint i64 %n.vec416, 1
  %i.qc = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.px, i64 0
  br label %vector.body417

vector.body417:                                   ; preds = %vector.body417, %vector.ph415
  %index418 = phi i64 [ 0, %vector.ph415 ], [ %index.next420, %vector.body417 ] ; 9 uses
  %vec.phi = phi <4 x i32> [ %i.qc, %vector.ph415 ], [ %i.rn, %vector.body417 ]
  %vec.phi419 = phi <4 x i32> [ zeroinitializer, %vector.ph415 ], [ %i.ro, %vector.body417 ]
  %i.qd = getelementptr inbounds nuw [648 x i8], ptr %i.b, i64 %index418
  %i.qe = getelementptr inbounds nuw [648 x i8], ptr %i.b, i64 %index418
  %i.qf = getelementptr inbounds nuw [648 x i8], ptr %i.b, i64 %index418
  %i.qg = getelementptr inbounds nuw [648 x i8], ptr %i.b, i64 %index418
  %i.qh = getelementptr inbounds nuw [648 x i8], ptr %i.b, i64 %index418
  %i.qi = getelementptr inbounds nuw [648 x i8], ptr %i.b, i64 %index418
  %i.qj = getelementptr inbounds nuw [648 x i8], ptr %i.b, i64 %index418
  %i.qk = getelementptr [648 x i8], ptr %i.b, i64 %index418
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qd, i64 2268
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qe, i64 2916
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qf, i64 3564
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qg, i64 4212
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qh, i64 4860
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qi, i64 5508
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qj, i64 6156
  %i.qs = getelementptr i8, ptr %i.qk, i64 6804
  %i.qt = load i32, ptr %i.ql, align 4, !tbaa !37
  %i.qu = load i32, ptr %i.qm, align 4, !tbaa !37
  %i.qv = load i32, ptr %i.qn, align 4, !tbaa !37
  %i.qw = load i32, ptr %i.qo, align 4, !tbaa !37
  %i.qx = insertelement <4 x i32> poison, i32 %i.qt, i64 0
  %i.qy = insertelement <4 x i32> %i.qx, i32 %i.qu, i64 1
  %i.qz = insertelement <4 x i32> %i.qy, i32 %i.qv, i64 2
  %i.ra = insertelement <4 x i32> %i.qz, i32 %i.qw, i64 3
  %i.rb = load i32, ptr %i.qp, align 4, !tbaa !37
  %i.rc = load i32, ptr %i.qq, align 4, !tbaa !37
  %i.rd = load i32, ptr %i.qr, align 4, !tbaa !37
  %i.re = load i32, ptr %i.qs, align 4, !tbaa !37
  %i.rf = insertelement <4 x i32> poison, i32 %i.rb, i64 0
  %i.rg = insertelement <4 x i32> %i.rf, i32 %i.rc, i64 1
  %i.rh = insertelement <4 x i32> %i.rg, i32 %i.rd, i64 2
  %i.ri = insertelement <4 x i32> %i.rh, i32 %i.re, i64 3
  %i.rj = icmp eq <4 x i32> %i.ra, zeroinitializer
  %i.rk = icmp eq <4 x i32> %i.ri, zeroinitializer
  %i.rl = select <4 x i1> %i.rj, <4 x i32> splat (i32 1), <4 x i32> splat (i32 2)
  %i.rm = select <4 x i1> %i.rk, <4 x i32> splat (i32 1), <4 x i32> splat (i32 2)
  %i.rn = add <4 x i32> %i.rl, %vec.phi           ; 2 uses
  %i.ro = add <4 x i32> %i.rm, %vec.phi419        ; 2 uses
  %index.next420 = add nuw i64 %index418, 8       ; 2 uses
  %i.rp = icmp eq i64 %index.next420, %n.vec416
  br i1 %i.rp, label %middle.block421, label %vector.body417, !llvm.loop !151

middle.block421:                                  ; preds = %vector.body417
  %bin.rdx = add <4 x i32> %i.ro, %i.rn
  %i.rq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n422 = icmp eq i64 %i.qa, %n.vec416
  br i1 %cmp.n422, label %.loopexit194.i.i, label %.lr.ph.i.i60.preheader

.lr.ph.i.i60.preheader:                           ; preds = %.lr.ph.preheader.i.i59, %middle.block421
  %indvars.iv.i.i61.ph = phi i64 [ 1, %.lr.ph.preheader.i.i59 ], [ %i.qb, %middle.block421 ]
  %.9196.i.i.ph = phi i32 [ %i.px, %.lr.ph.preheader.i.i59 ], [ %i.rq, %middle.block421 ]
  br label %.lr.ph.i.i60

.lr.ph.i.i60:                                     ; preds = %.lr.ph.i.i60.preheader, %.lr.ph.i.i60
  %indvars.iv.i.i61 = phi i64 [ %indvars.iv.next.i.i62, %.lr.ph.i.i60 ], [ %indvars.iv.i.i61.ph, %.lr.ph.i.i60.preheader ] ; 2 uses
  %.9196.i.i = phi i32 [ %spec.select165.i.i, %.lr.ph.i.i60 ], [ %.9196.i.i.ph, %.lr.ph.i.i60.preheader ]
  %i.rr = getelementptr inbounds nuw [648 x i8], ptr %i.b, i64 %indvars.iv.i.i61
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 1620
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !37
  %.not163.i.i = icmp eq i32 %i.rt, 0
  %spec.select165.v.i.i = select i1 %.not163.i.i, i32 1, i32 2
  %spec.select165.i.i = add nsw i32 %spec.select165.v.i.i, %.9196.i.i ; 2 uses
  %indvars.iv.next.i.i62 = add nuw nsw i64 %indvars.iv.i.i61, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i62, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit194.i.i, label %.lr.ph.i.i60, !llvm.loop !152

.loopexit194.i.i:                                 ; preds = %.lr.ph.i.i60, %middle.block421, %bb.ak, %._crit_edge246.i.i
  %.11.i.i = phi i32 [ %.8.i.i, %._crit_edge246.i.i ], [ %i.px, %bb.ak ], [ %i.rq, %middle.block421 ], [ %spec.select165.i.i, %.lr.ph.i.i60 ] ; 5 uses
  %i.ru = load i32, ptr %i.dp, align 16, !tbaa !30
  %.not136.i.i = icmp eq i32 %i.ru, 0
  br i1 %.not136.i.i, label %.loopexit193.i.i, label %bb.al

bb.al:                                            ; preds = %.loopexit194.i.i
  %i.rv = getelementptr inbounds nuw i8, ptr %i.b, i64 5460
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !75
  %.not137.i.i = icmp eq i32 %i.rw, 0
  br i1 %.not137.i.i, label %.preheader192.i.i, label %bb.am

.preheader192.i.i:                                ; preds = %bb.al
  %i.rx = load i32, ptr %i.dr, align 4, !tbaa !28 ; 3 uses
  %i.ry = icmp sgt i32 %i.rx, 0
  br i1 %i.ry, label %.lr.ph199.preheader.i.i, label %count_frame_bits.exit.thread.i

.lr.ph199.preheader.i.i:                          ; preds = %.preheader192.i.i
  %wide.trip.count224.i.i = zext nneg i32 %i.rx to i64 ; 3 uses
  %min.iters.check425 = icmp ult i32 %i.rx, 8
  br i1 %min.iters.check425, label %.lr.ph199.i.i.preheader, label %vector.ph426

end_hunk_0

inline.NumInlined: 418
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 34
begin_hunk_0_@ff_mpeg4_decode_studio:bb.a
  store i16 %i.ej, ptr %i.el, align 2, !tbaa !79
  %indvars.iv.next.1.2 = add nsw i64 %indvars.iv.next.1.1, %i.be ; 2 uses
  %i.em = getelementptr inbounds [2 x i8], ptr %.0152160.us.1, i64 %indvars.iv.next.1.2
  %i.en = load i16, ptr %i.em, align 2, !tbaa !79
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.dx, i64 %indvars.iv184.1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 6
  store i16 %i.en, ptr %i.ep, align 2, !tbaa !79
  %indvars.iv.next185.1.3 = add nuw nsw i64 %indvars.iv184.1, 4 ; 2 uses
  %indvars.iv.next.1.3 = add nsw i64 %indvars.iv.next.1.2, %i.be ; 2 uses
  %niter361.next.3 = add i64 %niter361, 4         ; 2 uses
  %niter361.ncmp.3 = icmp eq i64 %niter361.next.3, %unroll_iter360
  br i1 %niter361.ncmp.3, label %._crit_edge.us.1.loopexit.unr-lcssa, label %scalar.ph231, !llvm.loop !100

._crit_edge.us.1.loopexit.unr-lcssa:              ; preds = %scalar.ph231
  br i1 %lcmp.mod358.not, label %._crit_edge.us.1, label %scalar.ph231.epil.preheader

scalar.ph231.epil.preheader:                      ; preds = %._crit_edge.us.1.loopexit.unr-lcssa, %scalar.ph231.preheader
  %indvars.iv184.1.epil.init = phi i64 [ 0, %scalar.ph231.preheader ], [ %indvars.iv.next185.1.3, %._crit_edge.us.1.loopexit.unr-lcssa ]
  %indvars.iv.1.epil.init = phi i64 [ 0, %scalar.ph231.preheader ], [ %indvars.iv.next.1.3, %._crit_edge.us.1.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod359)
  br label %scalar.ph231.epil

scalar.ph231.epil:                                ; preds = %scalar.ph231.epil, %scalar.ph231.epil.preheader
  %indvars.iv184.1.epil = phi i64 [ %indvars.iv.next185.1.epil, %scalar.ph231.epil ], [ %indvars.iv184.1.epil.init, %scalar.ph231.epil.preheader ] ; 2 uses
  %indvars.iv.1.epil = phi i64 [ %indvars.iv.next.1.epil, %scalar.ph231.epil ], [ %indvars.iv.1.epil.init, %scalar.ph231.epil.preheader ] ; 2 uses
  %epil.iter357 = phi i64 [ %epil.iter357.next, %scalar.ph231.epil ], [ 0, %scalar.ph231.epil.preheader ]
  %i.eq = getelementptr inbounds [2 x i8], ptr %.0152160.us.1, i64 %indvars.iv.1.epil
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !79
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.dx, i64 %indvars.iv184.1.epil
  store i16 %i.er, ptr %i.es, align 2, !tbaa !79
  %indvars.iv.next185.1.epil = add nuw nsw i64 %indvars.iv184.1.epil, 1
  %indvars.iv.next.1.epil = add nsw i64 %indvars.iv.1.epil, %i.be
  %epil.iter357.next = add i64 %epil.iter357, 1   ; 2 uses
  %epil.iter357.cmp.not = icmp eq i64 %epil.iter357.next, %xtraiter356
  br i1 %epil.iter357.cmp.not, label %._crit_edge.us.1, label %scalar.ph231.epil, !llvm.loop !101

._crit_edge.us.1:                                 ; preds = %vector.body235, %._crit_edge.us.1.loopexit.unr-lcssa, %scalar.ph231.epil
  %i.et = getelementptr inbounds [2 x i8], ptr %i.dx, i64 %i.dg
  %i.eu = getelementptr inbounds [2 x i8], ptr %.0152160.us.1, i64 %i.dj
  %i.ev = add nuw nsw i32 %.0151161.us.1, 1       ; 2 uses
  %exitcond190.1.not = icmp eq i32 %i.ev, %umax189.1
  br i1 %exitcond190.1.not, label %.thread.2, label %.preheader.us.1, !llvm.loop !92

.thread.2:                                        ; preds = %._crit_edge.us.1, %.preheader.lr.ph.1, %.thread.1
  %i.ew = getelementptr i8, ptr %0, i64 6704      ; 2 uses
  %i.ex = load i32, ptr %i.bc, align 8, !tbaa !93
  %i.ey = add nsw i32 %i.ba, %i.ex                ; 2 uses
  %i.ez = lshr i32 16, %i.ey
  %.not175.2 = icmp ugt i32 %i.ey, 4
  br i1 %.not175.2, label %._crit_edge162.2, label %.preheader.lr.ph.2

.preheader.lr.ph.2:                               ; preds = %.thread.2
  %i.fa = load i32, ptr %i.bd, align 4, !tbaa !64 ; 2 uses
  %i.fb = add nsw i32 %i.ba, %i.fa                ; 3 uses
  %.not176.2 = icmp ugt i32 %i.fb, 4
  %i.fc = sdiv i32 %5, 2
  %i.fd = sext i32 %i.fc to i64                   ; 2 uses
  %i.fe = lshr i32 16, %i.fa
  %i.ff = shl i32 %i.fe, %i.ba
  %i.fg = sext i32 %i.ff to i64                   ; 2 uses
  br i1 %.not176.2, label %._crit_edge162.2, label %.preheader.us.preheader.2

.preheader.us.preheader.2:                        ; preds = %.preheader.lr.ph.2
  %i.fh = lshr i32 16, %i.fb                      ; 2 uses
  %umax189.2 = tail call i32 @llvm.umax.i32(i32 %i.ez, i32 1) ; 2 uses
  %wide.trip.count.2 = zext nneg i32 %i.fh to i64 ; 5 uses
  %i.fi = add nsw i32 %umax189.2, -1
  %i.fj = zext nneg i32 %i.fi to i64              ; 2 uses
  %i.fk = mul nsw i64 %i.fd, %i.fj
  %i.fl = add nsw i64 %i.fk, %wide.trip.count.2
  %i.fm = shl i64 %i.fl, 1
  %scevgep245 = getelementptr i8, ptr %3, i64 %i.fm
  %i.fn = mul nsw i64 %i.fg, %i.fj
  %i.fo = add i64 %i.fn, %wide.trip.count.2
  %i.fp = shl i64 %i.fo, 1
  %i.fq = getelementptr i8, ptr %0, i64 %i.fp
  %scevgep246 = getelementptr i8, ptr %i.fq, i64 6704
  %min.iters.check253 = icmp ult i32 %i.fb, 2
  %ident.check243.not = icmp eq i32 %i.ba, 0
  %or.cond339 = and i1 %min.iters.check253, %ident.check243.not
  %bound0247 = icmp ult ptr %3, %scevgep246
  %bound1248 = icmp ult ptr %i.ew, %scevgep245
  %found.conflict249 = and i1 %bound0247, %bound1248
  %stride.check250 = icmp slt i32 %5, -1
  %i.fr = or i1 %found.conflict249, %stride.check250
  %xtraiter362 = and i64 %wide.trip.count.2, 3    ; 3 uses
  %i.fs = add nsw i32 %i.fh, -1
  %i.ft = icmp ult i32 %i.fs, 3
  %unroll_iter366 = and i64 %wide.trip.count.2, 28
  %lcmp.mod364.not = icmp eq i64 %xtraiter362, 0
  %lcmp.mod365 = icmp ne i64 %xtraiter362, 0
  br label %.preheader.us.2

.preheader.us.2:                                  ; preds = %._crit_edge.us.2, %.preheader.us.preheader.2
  %i.fu = phi ptr [ %i.gq, %._crit_edge.us.2 ], [ %3, %.preheader.us.preheader.2 ] ; 7 uses
  %.0151161.us.2 = phi i32 [ %i.gs, %._crit_edge.us.2 ], [ 0, %.preheader.us.preheader.2 ]
  %.0152160.us.2 = phi ptr [ %i.gr, %._crit_edge.us.2 ], [ %i.ew, %.preheader.us.preheader.2 ] ; 7 uses
  %or.cond339.not = xor i1 %or.cond339, true
  %brmerge373 = select i1 %or.cond339.not, i1 true, i1 %i.fr
  br i1 %brmerge373, label %scalar.ph252.preheader, label %vector.body256

scalar.ph252.preheader:                           ; preds = %.preheader.us.2
  br i1 %i.ft, label %scalar.ph252.epil.preheader, label %scalar.ph252

vector.body256:                                   ; preds = %.preheader.us.2, %vector.body256
  %index257 = phi i64 [ %index.next259, %vector.body256 ], [ 0, %.preheader.us.2 ] ; 3 uses
  %i.fv = getelementptr inbounds [2 x i8], ptr %.0152160.us.2, i64 %index257
  %wide.load258 = load <8 x i16>, ptr %i.fv, align 2, !tbaa !79, !alias.scope !102
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.fu, i64 %index257
  store <8 x i16> %wide.load258, ptr %i.fw, align 2, !tbaa !79, !alias.scope !105, !noalias !102
  %index.next259 = add nuw i64 %index257, 8       ; 2 uses
  %i.fx = icmp eq i64 %index.next259, %wide.trip.count.2
  br i1 %i.fx, label %._crit_edge.us.2, label %vector.body256, !llvm.loop !107

scalar.ph252:                                     ; preds = %scalar.ph252.preheader, %scalar.ph252
  %indvars.iv184.2 = phi i64 [ %indvars.iv.next185.2.3, %scalar.ph252 ], [ 0, %scalar.ph252.preheader ] ; 5 uses
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2.3, %scalar.ph252 ], [ 0, %scalar.ph252.preheader ] ; 2 uses
  %niter367 = phi i64 [ %niter367.next.3, %scalar.ph252 ], [ 0, %scalar.ph252.preheader ]
  %i.fy = getelementptr inbounds [2 x i8], ptr %.0152160.us.2, i64 %indvars.iv.2
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !79
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.fu, i64 %indvars.iv184.2
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !79
  %indvars.iv.next.2 = add nsw i64 %indvars.iv.2, %i.be ; 2 uses
  %i.gb = getelementptr inbounds [2 x i8], ptr %.0152160.us.2, i64 %indvars.iv.next.2
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !79
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.fu, i64 %indvars.iv184.2
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 2
  store i16 %i.gc, ptr %i.ge, align 2, !tbaa !79
  %indvars.iv.next.2.1 = add nsw i64 %indvars.iv.next.2, %i.be ; 2 uses
  %i.gf = getelementptr inbounds [2 x i8], ptr %.0152160.us.2, i64 %indvars.iv.next.2.1
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !79
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.fu, i64 %indvars.iv184.2
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store i16 %i.gg, ptr %i.gi, align 2, !tbaa !79
  %indvars.iv.next.2.2 = add nsw i64 %indvars.iv.next.2.1, %i.be ; 2 uses
  %i.gj = getelementptr inbounds [2 x i8], ptr %.0152160.us.2, i64 %indvars.iv.next.2.2
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !79
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.fu, i64 %indvars.iv184.2
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 6
  store i16 %i.gk, ptr %i.gm, align 2, !tbaa !79
  %indvars.iv.next185.2.3 = add nuw nsw i64 %indvars.iv184.2, 4 ; 2 uses
  %indvars.iv.next.2.3 = add nsw i64 %indvars.iv.next.2.2, %i.be ; 2 uses
  %niter367.next.3 = add i64 %niter367, 4         ; 2 uses
  %niter367.ncmp.3 = icmp eq i64 %niter367.next.3, %unroll_iter366
  br i1 %niter367.ncmp.3, label %._crit_edge.us.2.loopexit.unr-lcssa, label %scalar.ph252, !llvm.loop !108

._crit_edge.us.2.loopexit.unr-lcssa:              ; preds = %scalar.ph252
  br i1 %lcmp.mod364.not, label %._crit_edge.us.2, label %scalar.ph252.epil.preheader

scalar.ph252.epil.preheader:                      ; preds = %._crit_edge.us.2.loopexit.unr-lcssa, %scalar.ph252.preheader
  %indvars.iv184.2.epil.init = phi i64 [ 0, %scalar.ph252.preheader ], [ %indvars.iv.next185.2.3, %._crit_edge.us.2.loopexit.unr-lcssa ]
  %indvars.iv.2.epil.init = phi i64 [ 0, %scalar.ph252.preheader ], [ %indvars.iv.next.2.3, %._crit_edge.us.2.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod365)
  br label %scalar.ph252.epil

scalar.ph252.epil:                                ; preds = %scalar.ph252.epil, %scalar.ph252.epil.preheader
  %indvars.iv184.2.epil = phi i64 [ %indvars.iv.next185.2.epil, %scalar.ph252.epil ], [ %indvars.iv184.2.epil.init, %scalar.ph252.epil.preheader ] ; 2 uses
  %indvars.iv.2.epil = phi i64 [ %indvars.iv.next.2.epil, %scalar.ph252.epil ], [ %indvars.iv.2.epil.init, %scalar.ph252.epil.preheader ] ; 2 uses
  %epil.iter363 = phi i64 [ %epil.iter363.next, %scalar.ph252.epil ], [ 0, %scalar.ph252.epil.preheader ]
  %i.gn = getelementptr inbounds [2 x i8], ptr %.0152160.us.2, i64 %indvars.iv.2.epil
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !79
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.fu, i64 %indvars.iv184.2.epil
  store i16 %i.go, ptr %i.gp, align 2, !tbaa !79
  %indvars.iv.next185.2.epil = add nuw nsw i64 %indvars.iv184.2.epil, 1
  %indvars.iv.next.2.epil = add nsw i64 %indvars.iv.2.epil, %i.be
  %epil.iter363.next = add i64 %epil.iter363, 1   ; 2 uses
  %epil.iter363.cmp.not = icmp eq i64 %epil.iter363.next, %xtraiter362
  br i1 %epil.iter363.cmp.not, label %._crit_edge.us.2, label %scalar.ph252.epil, !llvm.loop !109

._crit_edge.us.2:                                 ; preds = %vector.body256, %._crit_edge.us.2.loopexit.unr-lcssa, %scalar.ph252.epil
  %i.gq = getelementptr inbounds [2 x i8], ptr %i.fu, i64 %i.fd
  %i.gr = getelementptr inbounds [2 x i8], ptr %.0152160.us.2, i64 %i.fg
  %i.gs = add nuw nsw i32 %.0151161.us.2, 1       ; 2 uses
  %exitcond190.2.not = icmp eq i32 %i.gs, %umax189.2
  br i1 %exitcond190.2.not, label %._crit_edge162.2, label %.preheader.us.2, !llvm.loop !92

.thread157:                                       ; preds = %bb.a
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !65
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 720
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !66 ; 14 uses
  %i.gx = shl nuw i32 1, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 3864 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 3860 ; 2 uses
  %i.ha = sext i32 %i.gx to i64                   ; 3 uses
  %.not177 = icmp ugt i32 %i.gw, 4
  br i1 %.not177, label %.thread157.1, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.thread157
  %i.hb = lshr i32 16, %i.gw                      ; 3 uses
  %i.hc = add nsw i32 %i.hb, -1                   ; 3 uses
  %i.hd = sdiv i32 %6, 2
  %i.he = mul i32 %i.hc, %i.hd
  %i.hf = sext i32 %i.he to i64                   ; 3 uses
  %i.hg = getelementptr inbounds [2 x i8], ptr %1, i64 %i.hf
  %i.hh = getelementptr i8, ptr %0, i64 5680      ; 2 uses
  %i.hi = shl nuw nsw i32 16, %i.gw
  %i.hj = zext nneg i32 %i.hi to i64
  %.neg = sdiv i32 %6, -2
  %i.hk = sext i32 %.neg to i64                   ; 2 uses
  %i.hl = zext nneg i32 %i.hb to i64              ; 8 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %i.hl, i64 1) ; 2 uses
  %i.hm = add nsw i64 %smin, %i.hf
  %i.hn = shl nsw i64 %i.hm, 1
  %i.ho = getelementptr i8, ptr %1, i64 %i.hn
  %scevgep266 = getelementptr i8, ptr %i.ho, i64 -2
  %smin267 = tail call i32 @llvm.smin.i32(i32 %i.hc, i32 0)
  %i.hp = xor i32 %smin267, -1
  %i.hq = add i32 %i.hb, %i.hp
  %i.hr = zext i32 %i.hq to i64                   ; 2 uses
  %i.hs = mul nsw i64 %i.hk, %i.hr
  %i.ht = add i64 %i.hs, %i.hf
  %i.hu = add i64 %i.ht, %i.hl
  %i.hv = shl i64 %i.hu, 1
  %scevgep268 = getelementptr i8, ptr %1, i64 %i.hv
  %i.hw = add nuw nsw i32 %i.gw, 4
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = shl nuw nsw i64 %i.hr, %i.hx
  %i.hz = add nuw nsw i64 %i.hy, %i.hl
  %i.ia = shl nuw nsw i64 %i.hz, 1
  %i.ib = add nuw nsw i64 %i.ia, 5682
  %i.ic = shl nuw nsw i64 %smin, 1
  %i.id = sub nuw nsw i64 %i.ib, %i.ic
  %scevgep269 = getelementptr i8, ptr %0, i64 %i.id
  %i.ie = tail call i64 @llvm.smin.i64(i64 %i.hl, i64 1)
  %8 = sub nsw i64 %i.hl, %i.ie                   ; 2 uses
  %9 = add nuw nsw i64 %8, 1                      ; 2 uses
  %min.iters.check275 = icmp ugt i64 %8, 6
  %ident.check264.not = icmp eq i32 %i.gw, 0
  %or.cond340 = and i1 %min.iters.check275, %ident.check264.not
  %bound0270 = icmp ult ptr %scevgep266, %scevgep269
  %bound1271 = icmp ult ptr %i.hh, %scevgep268
  %found.conflict272 = and i1 %bound0270, %bound1271
  %stride.check273 = icmp sgt i32 %6, 1
  %i.if = or i1 %found.conflict272, %stride.check273
  %n.vec277 = and i64 %9, 56                      ; 4 uses
  %10 = sub nsw i64 %i.hl, %n.vec277
  %cmp.n283 = icmp eq i64 %9, %n.vec277
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us172
  %i.ig = phi ptr [ %i.iq, %._crit_edge.us172 ], [ %i.hg, %.lr.ph.us.preheader ] ; 3 uses
  %.0145167.us = phi i32 [ %i.ir, %._crit_edge.us172 ], [ %i.hc, %.lr.ph.us.preheader ] ; 2 uses
  %.0147166.us = phi ptr [ %i.ip, %._crit_edge.us172 ], [ %i.hh, %.lr.ph.us.preheader ] ; 3 uses
  %or.cond340.not = xor i1 %or.cond340, true
  %brmerge374 = select i1 %or.cond340.not, i1 true, i1 %i.if
  br i1 %brmerge374, label %scalar.ph274.preheader, label %vector.ph276

vector.ph276:                                     ; preds = %.lr.ph.us
  %invariant.gep = getelementptr [2 x i8], ptr %i.ig, i64 %i.hl
  br label %vector.body278

vector.body278:                                   ; preds = %vector.body278, %vector.ph276
  %index279 = phi i64 [ 0, %vector.ph276 ], [ %index.next281, %vector.body278 ] ; 3 uses
  %i.ih = xor i64 %index279, -1
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %.0147166.us, i64 %index279
  %wide.load280 = load <8 x i16>, ptr %i.ii, align 2, !tbaa !79, !alias.scope !110
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.ih
  %i.ij = getelementptr inbounds i8, ptr %gep, i64 -14
  %reverse = shufflevector <8 x i16> %wide.load280, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse, ptr %i.ij, align 2, !tbaa !79, !alias.scope !113, !noalias !110
  %index.next281 = add nuw i64 %index279, 8       ; 2 uses
  %i.ik = icmp eq i64 %index.next281, %n.vec277
  br i1 %i.ik, label %middle.block282, label %vector.body278, !llvm.loop !115

middle.block282:                                  ; preds = %vector.body278
  br i1 %cmp.n283, label %._crit_edge.us172, label %scalar.ph274.preheader

scalar.ph274.preheader:                           ; preds = %.lr.ph.us, %middle.block282
  %indvars.iv198.ph = phi i64 [ %10, %middle.block282 ], [ %i.hl, %.lr.ph.us ]
  %indvars.iv196.ph = phi i64 [ %n.vec277, %middle.block282 ], [ 0, %.lr.ph.us ]
  br label %scalar.ph274

scalar.ph274:                                     ; preds = %scalar.ph274.preheader, %scalar.ph274
  %indvars.iv198 = phi i64 [ %indvars.iv.next199, %scalar.ph274 ], [ %indvars.iv198.ph, %scalar.ph274.preheader ] ; 2 uses
  %indvars.iv196 = phi i64 [ %indvars.iv.next197, %scalar.ph274 ], [ %indvars.iv196.ph, %scalar.ph274.preheader ] ; 2 uses
  %indvars.iv.next199 = add nsw i64 %indvars.iv198, -1 ; 2 uses
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %.0147166.us, i64 %indvars.iv196
  %i.im = load i16, ptr %i.il, align 2, !tbaa !79
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %i.ig, i64 %indvars.iv.next199
  store i16 %i.im, ptr %i.in, align 2, !tbaa !79
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, %i.ha
  %i.io = icmp sgt i64 %indvars.iv198, 1
  br i1 %i.io, label %scalar.ph274, label %._crit_edge.us172, !llvm.loop !116

._crit_edge.us172:                                ; preds = %scalar.ph274, %middle.block282
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %.0147166.us, i64 %i.hj
  %i.iq = getelementptr inbounds [2 x i8], ptr %i.ig, i64 %i.hk
  %i.ir = add nsw i32 %.0145167.us, -1
  %i.is = icmp sgt i32 %.0145167.us, 0
  br i1 %i.is, label %.lr.ph.us, label %.thread157.1, !llvm.loop !117

.thread157.1:                                     ; preds = %._crit_edge.us172, %.thread157
  %i.it = getelementptr i8, ptr %0, i64 6192      ; 2 uses
  %i.iu = load i32, ptr %i.gy, align 8, !tbaa !93
  %i.iv = sdiv i32 %5, 2                          ; 2 uses
  %i.iw = add nsw i32 %i.gw, %i.iu                ; 2 uses
  %i.ix = lshr i32 16, %i.iw                      ; 2 uses
  %i.iy = add nsw i32 %i.ix, -1                   ; 3 uses
  %i.iz = mul i32 %i.iy, %i.iv
  %i.ja = sext i32 %i.iz to i64                   ; 3 uses
  %i.jb = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ja
  %.not177.1 = icmp ugt i32 %i.iw, 4
  br i1 %.not177.1, label %.thread157.2, label %.lr.ph168.1

.lr.ph168.1:                                      ; preds = %.thread157.1
  %i.jc = load i32, ptr %i.gz, align 4, !tbaa !64 ; 2 uses
  %i.jd = add nsw i32 %i.gw, %i.jc                ; 2 uses
  %.not178.1 = icmp ugt i32 %i.jd, 4
  %i.je = lshr i32 16, %i.jc
  %i.jf = shl i32 %i.je, %i.gw
  %i.jg = sext i32 %i.jf to i64                   ; 2 uses
  %.neg.1 = sdiv i32 %5, -2
  %i.jh = sext i32 %.neg.1 to i64                 ; 2 uses
  br i1 %.not178.1, label %.thread157.2, label %.lr.ph.us.preheader.1

.lr.ph.us.preheader.1:                            ; preds = %.lr.ph168.1
  %i.ji = lshr i32 16, %i.jd
  %i.jj = zext nneg i32 %i.ji to i64              ; 8 uses
  %smin289 = tail call i64 @llvm.smin.i64(i64 %i.jj, i64 1) ; 2 uses
  %i.jk = add nsw i64 %smin289, %i.ja
  %i.jl = shl nsw i64 %i.jk, 1
  %i.jm = getelementptr i8, ptr %2, i64 %i.jl
  %scevgep290 = getelementptr i8, ptr %i.jm, i64 -2
  %smin291 = tail call i32 @llvm.smin.i32(i32 %i.iy, i32 0)
  %i.jn = xor i32 %smin291, -1
  %i.jo = add i32 %i.ix, %i.jn
  %i.jp = zext i32 %i.jo to i64                   ; 2 uses
  %i.jq = mul nsw i64 %i.jh, %i.jp
  %i.jr = add i64 %i.jq, %i.ja
  %i.js = add i64 %i.jr, %i.jj
  %i.jt = shl i64 %i.js, 1
  %scevgep292 = getelementptr i8, ptr %2, i64 %i.jt
  %i.ju = mul nsw i64 %i.jg, %i.jp
  %i.jv = add i64 %i.ju, %i.jj
  %i.jw = shl i64 %i.jv, 1
  %i.jx = add i64 %i.jw, 6194
  %i.jy = shl nuw nsw i64 %smin289, 1
  %i.jz = sub i64 %i.jx, %i.jy
  %scevgep293 = getelementptr i8, ptr %0, i64 %i.jz
  %i.ka = tail call i64 @llvm.smin.i64(i64 %i.jj, i64 1)
  %11 = sub nsw i64 %i.jj, %i.ka                  ; 2 uses
  %12 = add nuw nsw i64 %11, 1                    ; 2 uses
  %min.iters.check300 = icmp ugt i64 %11, 6
  %ident.check287.not = icmp eq i32 %i.gw, 0
  %or.cond341 = and i1 %min.iters.check300, %ident.check287.not
  %bound0294 = icmp ult ptr %scevgep290, %scevgep293
  %bound1295 = icmp ult ptr %i.it, %scevgep292
  %found.conflict296 = and i1 %bound0294, %bound1295
  %stride.check297 = icmp sgt i32 %5, 1
  %i.kb = or i1 %found.conflict296, %stride.check297
  %n.vec302 = and i64 %12, 9223372036854775800    ; 4 uses
  %i.kc = sub nsw i64 %i.jj, %n.vec302
  %cmp.n309 = icmp eq i64 %12, %n.vec302
  br label %.lr.ph.us.1

.lr.ph.us.1:                                      ; preds = %._crit_edge.us172.1, %.lr.ph.us.preheader.1
  %i.kd = phi ptr [ %i.kn, %._crit_edge.us172.1 ], [ %i.jb, %.lr.ph.us.preheader.1 ] ; 3 uses
  %.0145167.us.1 = phi i32 [ %i.ko, %._crit_edge.us172.1 ], [ %i.iy, %.lr.ph.us.preheader.1 ] ; 2 uses
  %.0147166.us.1 = phi ptr [ %i.km, %._crit_edge.us172.1 ], [ %i.it, %.lr.ph.us.preheader.1 ] ; 3 uses
  %or.cond341.not = xor i1 %or.cond341, true
  %brmerge375 = select i1 %or.cond341.not, i1 true, i1 %i.kb
  br i1 %brmerge375, label %scalar.ph299.preheader, label %vector.ph301

vector.ph301:                                     ; preds = %.lr.ph.us.1
  %invariant.gep368 = getelementptr [2 x i8], ptr %i.kd, i64 %i.jj
  br label %vector.body303

vector.body303:                                   ; preds = %vector.body303, %vector.ph301
  %index304 = phi i64 [ 0, %vector.ph301 ], [ %index.next307, %vector.body303 ] ; 3 uses
  %i.ke = xor i64 %index304, -1
  %i.kf = getelementptr inbounds [2 x i8], ptr %.0147166.us.1, i64 %index304
  %wide.load305 = load <8 x i16>, ptr %i.kf, align 2, !tbaa !79, !alias.scope !118
  %gep369 = getelementptr [2 x i8], ptr %invariant.gep368, i64 %i.ke
  %i.kg = getelementptr inbounds i8, ptr %gep369, i64 -14
  %reverse306 = shufflevector <8 x i16> %wide.load305, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse306, ptr %i.kg, align 2, !tbaa !79, !alias.scope !121, !noalias !118
  %index.next307 = add nuw i64 %index304, 8       ; 2 uses
  %i.kh = icmp eq i64 %index.next307, %n.vec302
  br i1 %i.kh, label %middle.block308, label %vector.body303, !llvm.loop !123

middle.block308:                                  ; preds = %vector.body303
  br i1 %cmp.n309, label %._crit_edge.us172.1, label %scalar.ph299.preheader

scalar.ph299.preheader:                           ; preds = %.lr.ph.us.1, %middle.block308
  %indvars.iv198.1.ph = phi i64 [ %i.kc, %middle.block308 ], [ %i.jj, %.lr.ph.us.1 ]
  %indvars.iv196.1.ph = phi i64 [ %n.vec302, %middle.block308 ], [ 0, %.lr.ph.us.1 ]
  br label %scalar.ph299

scalar.ph299:                                     ; preds = %scalar.ph299.preheader, %scalar.ph299
  %indvars.iv198.1 = phi i64 [ %indvars.iv.next199.1, %scalar.ph299 ], [ %indvars.iv198.1.ph, %scalar.ph299.preheader ] ; 2 uses
  %indvars.iv196.1 = phi i64 [ %indvars.iv.next197.1, %scalar.ph299 ], [ %indvars.iv196.1.ph, %scalar.ph299.preheader ] ; 2 uses
  %indvars.iv.next199.1 = add nsw i64 %indvars.iv198.1, -1 ; 2 uses
  %i.ki = getelementptr inbounds [2 x i8], ptr %.0147166.us.1, i64 %indvars.iv196.1
  %i.kj = load i16, ptr %i.ki, align 2, !tbaa !79
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %i.kd, i64 %indvars.iv.next199.1
  store i16 %i.kj, ptr %i.kk, align 2, !tbaa !79
  %indvars.iv.next197.1 = add nsw i64 %indvars.iv196.1, %i.ha
  %i.kl = icmp sgt i64 %indvars.iv198.1, 1
  br i1 %i.kl, label %scalar.ph299, label %._crit_edge.us172.1, !llvm.loop !124

._crit_edge.us172.1:                              ; preds = %scalar.ph299, %middle.block308
  %i.km = getelementptr inbounds [2 x i8], ptr %.0147166.us.1, i64 %i.jg
  %i.kn = getelementptr inbounds [2 x i8], ptr %i.kd, i64 %i.jh
  %i.ko = add nsw i32 %.0145167.us.1, -1
  %i.kp = icmp sgt i32 %.0145167.us.1, 0
  br i1 %i.kp, label %.lr.ph.us.1, label %.thread157.2, !llvm.loop !117

.thread157.2:                                     ; preds = %._crit_edge.us172.1, %.lr.ph168.1, %.thread157.1
  %i.kq = getelementptr i8, ptr %0, i64 6704      ; 2 uses
  %i.kr = load i32, ptr %i.gy, align 8, !tbaa !93
  %i.ks = add nsw i32 %i.gw, %i.kr                ; 2 uses
  %i.kt = lshr i32 16, %i.ks                      ; 2 uses
  %i.ku = add nsw i32 %i.kt, -1                   ; 3 uses
  %i.kv = mul i32 %i.ku, %i.iv
  %i.kw = sext i32 %i.kv to i64                   ; 3 uses
  %i.kx = getelementptr inbounds [2 x i8], ptr %3, i64 %i.kw
  %.not177.2 = icmp ugt i32 %i.ks, 4
  br i1 %.not177.2, label %._crit_edge162.2, label %.lr.ph168.2

.lr.ph168.2:                                      ; preds = %.thread157.2
  %i.ky = load i32, ptr %i.gz, align 4, !tbaa !64 ; 2 uses
  %i.kz = add nsw i32 %i.gw, %i.ky                ; 2 uses
  %.not178.2 = icmp ugt i32 %i.kz, 4
  %i.la = lshr i32 16, %i.ky
  %i.lb = shl i32 %i.la, %i.gw
  %i.lc = sext i32 %i.lb to i64                   ; 2 uses
  %.neg.2 = sdiv i32 %5, -2
  %i.ld = sext i32 %.neg.2 to i64                 ; 2 uses
  br i1 %.not178.2, label %._crit_edge162.2, label %.lr.ph.us.preheader.2

.lr.ph.us.preheader.2:                            ; preds = %.lr.ph168.2
  %i.le = lshr i32 16, %i.kz
  %i.lf = zext nneg i32 %i.le to i64              ; 8 uses
  %smin315 = tail call i64 @llvm.smin.i64(i64 %i.lf, i64 1) ; 2 uses
  %i.lg = add nsw i64 %smin315, %i.kw
  %i.lh = shl nsw i64 %i.lg, 1
  %i.li = getelementptr i8, ptr %3, i64 %i.lh
  %scevgep316 = getelementptr i8, ptr %i.li, i64 -2
  %smin317 = tail call i32 @llvm.smin.i32(i32 %i.ku, i32 0)
  %i.lj = xor i32 %smin317, -1
  %i.lk = add i32 %i.kt, %i.lj
  %i.ll = zext i32 %i.lk to i64                   ; 2 uses
  %i.lm = mul nsw i64 %i.ld, %i.ll
  %i.ln = add i64 %i.lm, %i.kw
  %i.lo = add i64 %i.ln, %i.lf
  %i.lp = shl i64 %i.lo, 1
  %scevgep318 = getelementptr i8, ptr %3, i64 %i.lp
  %i.lq = mul nsw i64 %i.lc, %i.ll
  %i.lr = add i64 %i.lq, %i.lf
  %i.ls = shl i64 %i.lr, 1
  %i.lt = add i64 %i.ls, 6706
  %i.lu = shl nuw nsw i64 %smin315, 1
  %i.lv = sub i64 %i.lt, %i.lu
  %scevgep319 = getelementptr i8, ptr %0, i64 %i.lv
  %i.lw = tail call i64 @llvm.smin.i64(i64 %i.lf, i64 1)
  %13 = sub nsw i64 %i.lf, %i.lw                  ; 2 uses
  %14 = add nuw nsw i64 %13, 1                    ; 2 uses
  %min.iters.check326 = icmp ugt i64 %13, 6
  %ident.check313.not = icmp eq i32 %i.gw, 0
  %or.cond342 = and i1 %min.iters.check326, %ident.check313.not
  %bound0320 = icmp ult ptr %scevgep316, %scevgep319
  %bound1321 = icmp ult ptr %i.kq, %scevgep318
  %found.conflict322 = and i1 %bound0320, %bound1321
  %stride.check323 = icmp sgt i32 %5, 1
  %i.lx = or i1 %found.conflict322, %stride.check323
  %n.vec328 = and i64 %14, 9223372036854775800    ; 4 uses
  %i.ly = sub nsw i64 %i.lf, %n.vec328
  %cmp.n335 = icmp eq i64 %14, %n.vec328
  br label %.lr.ph.us.2

.lr.ph.us.2:                                      ; preds = %._crit_edge.us172.2, %.lr.ph.us.preheader.2
  %i.lz = phi ptr [ %i.mj, %._crit_edge.us172.2 ], [ %i.kx, %.lr.ph.us.preheader.2 ] ; 3 uses
  %.0145167.us.2 = phi i32 [ %i.mk, %._crit_edge.us172.2 ], [ %i.ku, %.lr.ph.us.preheader.2 ] ; 2 uses
  %.0147166.us.2 = phi ptr [ %i.mi, %._crit_edge.us172.2 ], [ %i.kq, %.lr.ph.us.preheader.2 ] ; 3 uses
  %or.cond342.not = xor i1 %or.cond342, true
  %brmerge376 = select i1 %or.cond342.not, i1 true, i1 %i.lx
  br i1 %brmerge376, label %scalar.ph325.preheader, label %vector.ph327

vector.ph327:                                     ; preds = %.lr.ph.us.2
  %invariant.gep370 = getelementptr [2 x i8], ptr %i.lz, i64 %i.lf
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph327
  %index330 = phi i64 [ 0, %vector.ph327 ], [ %index.next333, %vector.body329 ] ; 3 uses
  %i.ma = xor i64 %index330, -1
  %i.mb = getelementptr inbounds [2 x i8], ptr %.0147166.us.2, i64 %index330
  %wide.load331 = load <8 x i16>, ptr %i.mb, align 2, !tbaa !79, !alias.scope !125
  %gep371 = getelementptr [2 x i8], ptr %invariant.gep370, i64 %i.ma
  %i.mc = getelementptr inbounds i8, ptr %gep371, i64 -14
  %reverse332 = shufflevector <8 x i16> %wide.load331, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse332, ptr %i.mc, align 2, !tbaa !79, !alias.scope !128, !noalias !125
  %index.next333 = add nuw i64 %index330, 8       ; 2 uses
  %i.md = icmp eq i64 %index.next333, %n.vec328
  br i1 %i.md, label %middle.block334, label %vector.body329, !llvm.loop !130

middle.block334:                                  ; preds = %vector.body329
  br i1 %cmp.n335, label %._crit_edge.us172.2, label %scalar.ph325.preheader

scalar.ph325.preheader:                           ; preds = %.lr.ph.us.2, %middle.block334
  %indvars.iv198.2.ph = phi i64 [ %i.ly, %middle.block334 ], [ %i.lf, %.lr.ph.us.2 ]
  %indvars.iv196.2.ph = phi i64 [ %n.vec328, %middle.block334 ], [ 0, %.lr.ph.us.2 ]
  br label %scalar.ph325

scalar.ph325:                                     ; preds = %scalar.ph325.preheader, %scalar.ph325
  %indvars.iv198.2 = phi i64 [ %indvars.iv.next199.2, %scalar.ph325 ], [ %indvars.iv198.2.ph, %scalar.ph325.preheader ] ; 2 uses
  %indvars.iv196.2 = phi i64 [ %indvars.iv.next197.2, %scalar.ph325 ], [ %indvars.iv196.2.ph, %scalar.ph325.preheader ] ; 2 uses
  %indvars.iv.next199.2 = add nsw i64 %indvars.iv198.2, -1 ; 2 uses
  %i.me = getelementptr inbounds [2 x i8], ptr %.0147166.us.2, i64 %indvars.iv196.2
  %i.mf = load i16, ptr %i.me, align 2, !tbaa !79
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %i.lz, i64 %indvars.iv.next199.2
  store i16 %i.mf, ptr %i.mg, align 2, !tbaa !79
  %indvars.iv.next197.2 = add nsw i64 %indvars.iv196.2, %i.ha
  %i.mh = icmp sgt i64 %indvars.iv198.2, 1
  br i1 %i.mh, label %scalar.ph325, label %._crit_edge.us172.2, !llvm.loop !131

._crit_edge.us172.2:                              ; preds = %scalar.ph325, %middle.block334
  %i.mi = getelementptr inbounds [2 x i8], ptr %.0147166.us.2, i64 %i.lc
  %i.mj = getelementptr inbounds [2 x i8], ptr %i.lz, i64 %i.ld
  %i.mk = add nsw i32 %.0145167.us.2, -1
  %i.ml = icmp sgt i32 %.0145167.us.2, 0
  br i1 %i.ml, label %.lr.ph.us.2, label %._crit_edge162.2, !llvm.loop !117

._crit_edge162.2:                                 ; preds = %._crit_edge.us.2, %._crit_edge.us172.2, %.thread157.2, %.lr.ph168.2, %.thread.2, %.preheader.lr.ph.2, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ff_mpeg4_pred_ac(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3120
  %i.f = sext i32 %2 to i64                       ; 2 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !42
  %i.i = shl nsw i32 %i.h, 4
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.j ; 29 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 16, !tbaa !134
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp eq i32 %3, 0
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3108
  %i.p = load i32, ptr %i.o, align 4, !tbaa !135  ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.loopexit.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = add nsw i32 %i.p, -1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.t = load i32, ptr %i.s, align 8, !tbaa !136
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.v = load i32, ptr %i.u, align 4, !tbaa !137
  %i.w = mul nsw i32 %i.v, %i.t
  %i.x = add nsw i32 %i.r, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.z = load i32, ptr %i.y, align 8, !tbaa !138  ; 9 uses
  %i.aa = sext i32 %i.x to i64
  %i.ab = getelementptr inbounds i8, ptr %i.b, i64 %i.aa ; 7 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !139
  %i.ad = sext i8 %i.ac to i32                    ; 2 uses
  %i.ae = icmp eq i32 %i.z, %i.ad
  %i.af = and i32 %2, -3
  %i.ag = icmp eq i32 %i.af, 1
  %or.cond3 = or i1 %i.ag, %i.ae
  br i1 %or.cond3, label %.loopexit.loopexit, label %.preheader109

.preheader109:                                    ; preds = %bb.d
  %i.ah = ashr i32 %i.z, 1                        ; 8 uses
  %i.ai = sub nsw i32 0, %i.ah                    ; 7 uses
  %i.aj = getelementptr inbounds i8, ptr %i.k, i64 -30
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !79
  %i.al = sext i16 %i.ak to i32
  %i.am = mul nsw i32 %i.ad, %i.al                ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  %.p108 = select i1 %i.an, i32 %i.ai, i32 %i.ah
  %i.ao = add nsw i32 %.p108, %i.am
  %i.ap = sdiv i32 %i.ao, %i.z
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1824
  %i.ar = load i8, ptr %i.aq, align 16, !tbaa !139
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.as ; 2 uses
  %i.au = load i16, ptr %i.at, align 2, !tbaa !79
  %i.av = trunc i32 %i.ap to i16
  %i.aw = add i16 %i.au, %i.av
  store i16 %i.aw, ptr %i.at, align 2, !tbaa !79
  %i.ax = getelementptr inbounds i8, ptr %i.k, i64 -28
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !79
  %i.az = sext i16 %i.ay to i32
  %i.ba = load i8, ptr %i.ab, align 1, !tbaa !139
  %i.bb = sext i8 %i.ba to i32
  %i.bc = mul nsw i32 %i.bb, %i.az                ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 0
  %.p108.1 = select i1 %i.bd, i32 %i.ai, i32 %i.ah
  %i.be = add nsw i32 %.p108.1, %i.bc
  %i.bf = sdiv i32 %i.be, %i.z
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !139
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bi ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !79
  %i.bl = trunc i32 %i.bf to i16
  %i.bm = add i16 %i.bk, %i.bl
  store i16 %i.bm, ptr %i.bj, align 2, !tbaa !79
  %i.bn = getelementptr inbounds i8, ptr %i.k, i64 -26
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !79
  %i.bp = sext i16 %i.bo to i32
  %i.bq = load i8, ptr %i.ab, align 1, !tbaa !139
  %i.br = sext i8 %i.bq to i32
  %i.bs = mul nsw i32 %i.br, %i.bp                ; 2 uses
  %i.bt = icmp slt i32 %i.bs, 0
  %.p108.2 = select i1 %i.bt, i32 %i.ai, i32 %i.ah
  %i.bu = add nsw i32 %.p108.2, %i.bs
  %i.bv = sdiv i32 %i.bu, %i.z
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1840
  %i.bx = load i8, ptr %i.bw, align 16, !tbaa !139
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.by ; 2 uses
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !79
  %i.cb = trunc i32 %i.bv to i16
  %i.cc = add i16 %i.ca, %i.cb
  store i16 %i.cc, ptr %i.bz, align 2, !tbaa !79
  %i.cd = getelementptr inbounds i8, ptr %i.k, i64 -24
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !79
  %i.cf = sext i16 %i.ce to i32
  %i.cg = load i8, ptr %i.ab, align 1, !tbaa !139
  %i.ch = sext i8 %i.cg to i32
  %i.ci = mul nsw i32 %i.ch, %i.cf                ; 2 uses
  %i.cj = icmp slt i32 %i.ci, 0
  %.p108.3 = select i1 %i.cj, i32 %i.ai, i32 %i.ah
  %i.ck = add nsw i32 %.p108.3, %i.ci
  %i.cl = sdiv i32 %i.ck, %i.z
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !139
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.co ; 2 uses
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !79
  %i.cr = trunc i32 %i.cl to i16
  %i.cs = add i16 %i.cq, %i.cr
  store i16 %i.cs, ptr %i.cp, align 2, !tbaa !79
  %i.ct = getelementptr inbounds i8, ptr %i.k, i64 -22
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !79
  %i.cv = sext i16 %i.cu to i32
  %i.cw = load i8, ptr %i.ab, align 1, !tbaa !139
  %i.cx = sext i8 %i.cw to i32
  %i.cy = mul nsw i32 %i.cx, %i.cv                ; 2 uses
  %i.cz = icmp slt i32 %i.cy, 0
  %.p108.4 = select i1 %i.cz, i32 %i.ai, i32 %i.ah
  %i.da = add nsw i32 %.p108.4, %i.cy
  %i.db = sdiv i32 %i.da, %i.z
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.dd = load i8, ptr %i.dc, align 16, !tbaa !139
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.de ; 2 uses
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !79
  %i.dh = trunc i32 %i.db to i16
  %i.di = add i16 %i.dg, %i.dh
  store i16 %i.di, ptr %i.df, align 2, !tbaa !79
  %i.dj = getelementptr inbounds i8, ptr %i.k, i64 -20
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !79
end_hunk_0
begin_hunk_1_@mpeg4_decode_picture_header:bb.a
  %i.j = trunc i64 %i.i to i32                    ; 3 uses
  %i.k = load ptr, ptr %i.d, align 16, !tbaa !277
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4468
  %i.m = load i32, ptr %i.l, align 4, !tbaa !239  ; 2 uses
  %.not41 = icmp ne i32 %i.m, 0
  %i.n = icmp ugt i32 %i.g, 31
  %or.cond54 = select i1 %.not41, i1 %i.n, i1 false
  br i1 %or.cond54, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.o = lshr i32 %i.g, 3
  %i.p = add nsw i32 %i.o, -3
  %wide.trip.count = zext nneg i32 %i.p to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv ; 4 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !139
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !139
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !139
  %i.y = icmp eq i8 %i.x, 1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !139
  %i.ab = icmp eq i8 %i.aa, -80
  br i1 %i.ab, label %.thread, label %.loopexit

.thread:                                          ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !148
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ad, i32 noundef 24, ptr noundef nonnull @.str.174) #13
  %i.ae = load ptr, ptr %i.b, align 16, !tbaa !276
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 0, ptr %i.af, align 8, !tbaa !287
  br label %.thread46

bb.f:                                             ; preds = %.lr.ph, %bb.c, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !342

.loopexit:                                        ; preds = %bb.f, %bb.e, %bb.b
  store i64 0, ptr %i.h, align 8, !tbaa !287
  %.not42 = icmp eq i32 %i.j, 0
  br i1 %.not42, label %.thread46, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.ag = icmp ne i32 %i.m, 0
  %i.ah = icmp ult i32 %i.g, 160
  %or.cond = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond, label %bb.h, label %.thread46

.thread46:                                        ; preds = %.loopexit, %bb.g, %.thread
  tail call void @av_buffer_unref(ptr noundef nonnull %i.b) #13
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !278 ; 2 uses
  %or.cond.i = icmp ugt i32 %i.j, 268435455
  %i.ak = shl nuw nsw i32 %i.j, 3
  %i.al = select i1 %or.cond.i, i32 -8, i32 %i.ak ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.al, 2147483135   ; 2 uses
  %i.am = icmp ne ptr %i.aj, null
  %or.cond3.i.i = and i1 %or.cond.i.i, %i.am      ; 2 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr %i.aj, ptr null
  %.013.i.i = select i1 %or.cond3.i.i, i32 %i.al, i32 0 ; 2 uses
  store ptr %.014.i.i, ptr %i.d, align 16, !tbaa !143
  store i32 %.013.i.i, ptr %i.f, align 4, !tbaa !154
  %i.an = add nuw nsw i32 %.013.i.i, 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4400
  store i32 %i.an, ptr %i.ao, align 16, !tbaa !307
  store i32 0, ptr %i.e, align 8, !tbaa !141
  br i1 %or.cond3.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread46, %bb.h, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4384
  %i.aq = tail call i32 @ff_mpeg4_parse_picture_header(ptr noundef nonnull %0, ptr noundef nonnull %i.ap, i32 noundef 0, i32 noundef 0)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.3 = phi i32 [ %i.aq, %bb.i ], [ -1094995529, %bb.h ]
  ret i32 %.3
}

declare void @ff_qpeldsp_init(ptr noundef) local_unnamed_addr #3

declare void @ff_mpeg4videodsp_init(ptr noundef) local_unnamed_addr #3

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind optsize uwtable
define internal void @mpeg4_init_static() #6 {
bb.a:
  %0 = alloca %struct.VLCInitState, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @__const.mpeg4_init_static.state, i64 16, i1 false)
  tail call void @ff_vlc_init_table_from_lengths(ptr noundef nonnull @studio_luma_dc, i32 noundef 528, i32 noundef 9, i32 noundef 19, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ff_mpeg4_studio_dc_luma, i64 1), i32 noundef 2, ptr noundef nonnull @ff_mpeg4_studio_dc_luma, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  tail call void @ff_vlc_init_table_from_lengths(ptr noundef nonnull @studio_chroma_dc, i32 noundef 528, i32 noundef 9, i32 noundef 19, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ff_mpeg4_studio_dc_chroma, i64 1), i32 noundef 2, ptr noundef nonnull @ff_mpeg4_studio_dc_chroma, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  br label %bb.b

vector.ph:                                        ; preds = %bb.b
  call void @ff_rl_init(ptr noundef nonnull @ff_mpeg4_rl_intra, ptr noundef nonnull @mpeg4_init_static.mpeg4_rl_intra_table) #13
  call void @ff_h263_init_rl_inter() #13
  store ptr @mpeg4_init_static.rl_vlc_table, ptr getelementptr inbounds nuw (i8, ptr @ff_mpeg4_rl_intra, i64 80), align 8, !tbaa !316
  call void @ff_rl_init_vlc(ptr noundef nonnull @ff_mpeg4_rl_intra, i32 noundef 554) #13
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %wide.gep = getelementptr inbounds nuw [4288 x i8], ptr @mpeg4_init_static.rl_vlc_table.175, <2 x i64> %vec.ind
  %i.a = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_rvlc_rl_inter, i64 80), i64 %index
  store <2 x ptr> %wide.gep, ptr %i.a, align 8, !tbaa !316
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.b = icmp eq i64 %index.next, 32
  br i1 %i.b, label %middle.block, label %vector.body, !llvm.loop !343

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.c = getelementptr inbounds nuw [48 x i8], ptr @ff_mpeg4_studio_intra, i64 %indvars.iv ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = call ptr @ff_vlc_init_tables_from_lengths(ptr noundef nonnull %0, i32 noundef 9, i32 noundef 24, ptr noundef nonnull %i.d, i32 noundef 2, ptr noundef nonnull %i.c, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @studio_intra_tab, i64 %indvars.iv
  store ptr %i.e, ptr %i.f, align 8, !tbaa !316
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 12
  br i1 %exitcond.not, label %vector.ph, label %bb.b, !llvm.loop !344

middle.block:                                     ; preds = %vector.body
  call void @ff_rl_init_vlc(ptr noundef nonnull @ff_rvlc_rl_inter, i32 noundef 1072) #13
  store ptr @mpeg4_init_static.rl_vlc_table.176, ptr getelementptr inbounds nuw (i8, ptr @ff_rvlc_rl_intra, i64 80), align 8, !tbaa !316
  call void @ff_rl_init_vlc(ptr noundef nonnull @ff_rvlc_rl_intra, i32 noundef 1072) #13
  call void @ff_vlc_init_table_sparse(ptr noundef nonnull @dc_lum, i32 noundef 512, i32 noundef 9, i32 noundef 10, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ff_mpeg4_DCtab_lum, i64 1), i32 noundef 2, i32 noundef 1, ptr noundef nonnull @ff_mpeg4_DCtab_lum, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  call void @ff_vlc_init_table_sparse(ptr noundef nonnull @dc_chrom, i32 noundef 512, i32 noundef 9, i32 noundef 10, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ff_mpeg4_DCtab_chrom, i64 1), i32 noundef 2, i32 noundef 1, ptr noundef nonnull @ff_mpeg4_DCtab_chrom, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  call void @ff_vlc_init_table_from_lengths(ptr noundef nonnull @sprite_trajectory, i32 noundef 128, i32 noundef 6, i32 noundef 15, ptr noundef nonnull @ff_sprite_trajectory_lens, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  call void @ff_vlc_init_table_sparse(ptr noundef nonnull @mb_type_b_vlc, i32 noundef 16, i32 noundef 4, i32 noundef 4, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ff_mb_type_b_tab, i64 1), i32 noundef 2, i32 noundef 1, ptr noundef nonnull @ff_mb_type_b_tab, i32 noundef 2, i32 noundef 1, ptr noundef nonnull @mb_type_b_map, i32 noundef 2, i32 noundef 2, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #13
  ret void
}

declare void @av_buffer_unref(ptr noundef) local_unnamed_addr #3

declare void @ff_vlc_init_table_from_lengths(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @ff_vlc_init_tables_from_lengths(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_rl_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ff_h263_init_rl_inter() local_unnamed_addr #3

declare void @ff_rl_init_vlc(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_vlc_init_table_sparse(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_mpv_decode_close(ptr noundef) local_unnamed_addr #3

declare void @ff_mpeg_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 5488}
!10 = !{!"Mpeg4DecContext", !11, i64 0, !6, i64 5456, !6, i64 5460, !6, i64 5464, !6, i64 5468, !6, i64 5472, !6, i64 5476, !6, i64 5480, !6, i64 5484, !6, i64 5488, !7, i64 5492, !7, i64 5508, !7, i64 5524, !7, i64 5540, !6, i64 5548, !6, i64 5552, !6, i64 5556, !6, i64 5560, !6, i64 5564, !6, i64 5568, !6, i64 5572, !6, i64 5576, !6, i64 5580, !6, i64 5584, !6, i64 5588, !6, i64 5592, !6, i64 5596, !40, i64 5600, !6, i64 5608, !6, i64 5612, !6, i64 5616, !6, i64 5620, !6, i64 5624, !6, i64 5628, !6, i64 5632, !41, i64 5640, !14, i64 5656, !14, i64 5664, !14, i64 5672, !7, i64 5680, !6, i64 8752, !6, i64 8756}
!11 = !{!"H263DecContext", !12, i64 0, !39, i64 4384, !6, i64 4408, !6, i64 4412, !6, i64 4416, !6, i64 4420, !6, i64 4424, !6, i64 4428, !6, i64 4432, !6, i64 4436, !6, i64 4440, !6, i64 4444, !6, i64 4448, !6, i64 4452, !6, i64 4456, !6, i64 4460, !6, i64 4464, !6, i64 4468, !6, i64 4472, !6, i64 4476, !6, i64 4480, !7, i64 4484, !6, i64 4496, !7, i64 4500, !14, i64 4512, !14, i64 4520, !39, i64 4528, !7, i64 4552, !7, i64 4616, !7, i64 4688}
!12 = !{!"MpegEncContext", !13, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !7, i64 20, !6, i64 68, !15, i64 72, !15, i64 208, !17, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !6, i64 408, !6, i64 412, !18, i64 416, !18, i64 424, !19, i64 432, !20, i64 440, !6, i64 496, !6, i64 500, !7, i64 504, !6, i64 760, !21, i64 768, !21, i64 888, !21, i64 1008, !24, i64 1128, !16, i64 1136, !16, i64 1144, !16, i64 1152, !16, i64 1160, !16, i64 1168, !24, i64 1176, !24, i64 1184, !24, i64 1192, !6, i64 1200, !16, i64 1208, !16, i64 1216, !16, i64 1224, !16, i64 1232, !25, i64 1240, !6, i64 1272, !6, i64 1276, !6, i64 1280, !6, i64 1284, !26, i64 1288, !27, i64 1320, !28, i64 1384, !29, i64 1768, !30, i64 1888, !31, i64 2656, !32, i64 2672, !24, i64 2688, !7, i64 2696, !6, i64 2728, !6, i64 2732, !7, i64 2736, !7, i64 2800, !7, i64 2816, !7, i64 2848, !6, i64 3104, !6, i64 3108, !6, i64 3112, !6, i64 3116, !7, i64 3120, !7, i64 3144, !7, i64 3168, !23, i64 3192, !7, i64 3200, !7, i64 3328, !7, i64 3456, !7, i64 3584, !6, i64 3712, !6, i64 3716, !6, i64 3720, !6, i64 3724, !6, i64 3728, !6, i64 3732, !6, i64 3736, !6, i64 3740, !18, i64 3744, !18, i64 3752, !33, i64 3760, !33, i64 3762, !33, i64 3764, !33, i64 3766, !6, i64 3768, !6, i64 3772, !6, i64 3776, !6, i64 3780, !6, i64 3784, !6, i64 3788, !6, i64 3792, !6, i64 3796, !7, i64 3800, !6, i64 3816, !6, i64 3820, !6, i64 3824, !6, i64 3828, !6, i64 3832, !6, i64 3836, !6, i64 3840, !6, i64 3844, !6, i64 3848, !6, i64 3852, !6, i64 3856, !6, i64 3860, !6, i64 3864, !6, i64 3868, !7, i64 3872, !6, i64 3880, !6, i64 3884, !14, i64 3888, !14, i64 3896, !6, i64 3904, !6, i64 3908, !34, i64 3912}
!13 = !{!"p1 _ZTS7AVClass", !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!"ScanTable", !16, i64 0, !7, i64 8, !7, i64 72}
!16 = !{!"p1 omnipotent char", !14, i64 0}
!17 = !{!"p1 _ZTS14AVCodecContext", !14, i64 0}
!18 = !{!"long", !7, i64 0}
!19 = !{!"p1 _ZTS15AVRefStructPool", !14, i64 0}
!20 = !{!"BufferPoolContext", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !6, i64 40, !6, i64 44, !6, i64 48}
!21 = !{!"MPVWorkPicture", !7, i64 0, !7, i64 24, !22, i64 48, !16, i64 56, !7, i64 64, !23, i64 80, !16, i64 88, !7, i64 96, !6, i64 112}
!22 = !{!"p1 _ZTS10MPVPicture", !14, i64 0}
!23 = !{!"p1 int", !14, i64 0}
!24 = !{!"p1 short", !14, i64 0}
!25 = !{!"ScratchpadContext", !16, i64 0, !16, i64 8, !7, i64 16, !6, i64 24}
!26 = !{!"BlockDSPContext", !14, i64 0, !14, i64 8, !7, i64 16}
!27 = !{!"H264ChromaContext", !7, i64 0, !7, i64 32}
!28 = !{!"HpelDSPContext", !7, i64 0, !7, i64 128, !7, i64 256, !7, i64 352}
!29 = !{!"IDCTDSPContext", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !7, i64 48, !6, i64 112, !6, i64 116}
!30 = !{!"QpelDSPContext", !7, i64 0, !7, i64 256, !7, i64 512}
!31 = !{!"VideoDSPContext", !14, i64 0, !14, i64 8}
!32 = !{!"H263DSPContext", !14, i64 0, !14, i64 8}
!33 = !{!"short", !7, i64 0}
!34 = !{!"ERContext", !17, i64 0, !14, i64 8, !23, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !18, i64 40, !18, i64 48, !7, i64 56, !6, i64 60, !16, i64 64, !16, i64 72, !7, i64 80, !16, i64 104, !16, i64 112, !7, i64 120, !35, i64 184, !35, i64 256, !35, i64 328, !7, i64 400, !7, i64 416, !33, i64 432, !33, i64 434, !6, i64 436, !6, i64 440, !14, i64 448, !14, i64 456}
!35 = !{!"ERPicture", !36, i64 0, !37, i64 8, !38, i64 16, !7, i64 24, !7, i64 40, !23, i64 56, !6, i64 64}
!36 = !{!"p1 _ZTS7AVFrame", !14, i64 0}
!37 = !{!"p1 _ZTS11ThreadFrame", !14, i64 0}
!38 = !{!"p1 _ZTS14ThreadProgress", !14, i64 0}
!39 = !{!"GetBitContext", !16, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!40 = !{!"p1 _ZTS11AVBufferRef", !14, i64 0}
!41 = !{!"Mpeg4VideoDSPContext", !14, i64 0, !14, i64 8}
!42 = !{!6, !6, i64 0}
!43 = !{!12, !6, i64 3108}
!44 = !{!10, !6, i64 5480}
!45 = !{!12, !6, i64 3112}
!46 = !{!12, !6, i64 352}
!47 = !{!12, !6, i64 356}
!48 = !{!12, !18, i64 416}
!49 = !{!12, !18, i64 424}
!50 = !{!16, !16, i64 0}
!51 = !{!12, !6, i64 404}
!52 = !{!12, !6, i64 408}
!53 = !{!12, !14, i64 2656}
!54 = !{!12, !16, i64 1240}
!55 = distinct !{null}
!56 = !{!12, !6, i64 3104}
!57 = !{!10, !14, i64 5640}
!58 = !{!14, !14, i64 0}
!59 = !{!10, !14, i64 5648}
!60 = distinct !{null}
!61 = !{!10, !6, i64 8752}
!62 = !{!12, !14, i64 1800}
!63 = !{!12, !6, i64 3880}
!64 = !{!12, !6, i64 3860}
!65 = !{!12, !17, i64 344}
!66 = !{!67, !6, i64 720}
!67 = !{!"AVCodecContext", !13, i64 0, !6, i64 8, !6, i64 12, !68, i64 16, !6, i64 24, !6, i64 28, !14, i64 32, !69, i64 40, !14, i64 48, !18, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !70, i64 84, !70, i64 92, !70, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !70, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !14, i64 184, !14, i64 192, !6, i64 200, !71, i64 204, !71, i64 208, !71, i64 212, !71, i64 216, !71, i64 220, !71, i64 224, !71, i64 228, !71, i64 232, !71, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !24, i64 288, !24, i64 296, !24, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !72, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !14, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !71, i64 428, !71, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !73, i64 456, !18, i64 464, !18, i64 472, !71, i64 480, !71, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !74, i64 536, !14, i64 544, !40, i64 552, !40, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !14, i64 672, !14, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !75, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !76, i64 776, !6, i64 784, !6, i64 788, !18, i64 792, !6, i64 800, !6, i64 804, !18, i64 808, !14, i64 816, !18, i64 824, !23, i64 832, !6, i64 840, !77, i64 848, !6, i64 856, !6, i64 860}
!68 = !{!"p1 _ZTS7AVCodec", !14, i64 0}
!69 = !{!"p1 _ZTS15AVCodecInternal", !14, i64 0}
!70 = !{!"AVRational", !6, i64 0, !6, i64 4}
!71 = !{!"float", !7, i64 0}
!72 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !14, i64 16}
!73 = !{!"p1 _ZTS10RcOverride", !14, i64 0}
!74 = !{!"p1 _ZTS9AVHWAccel", !14, i64 0}
!75 = !{!"p1 _ZTS17AVCodecDescriptor", !14, i64 0}
!76 = !{!"p1 _ZTS16AVPacketSideData", !14, i64 0}
!77 = !{!"p2 _ZTS15AVFrameSideData", !78, i64 0}
!78 = !{!"any p2 pointer", !14, i64 0}
!79 = !{!33, !33, i64 0}
!80 = !{!81}
!81 = distinct !{!81, !82}
!82 = distinct !{!82, !"LVerDomain"}
!83 = !{!84}
!84 = distinct !{!84, !82}
!85 = distinct !{!85, !86, !87, !88}
!86 = !{!"llvm.loop.mustprogress"}
!87 = !{!"llvm.loop.isvectorized", i32 1}
!88 = !{!"llvm.loop.unroll.runtime.disable"}
!89 = distinct !{!89, !86, !87}
!90 = distinct !{!90, !91}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = distinct !{!92, !86}
!93 = !{!12, !6, i64 3864}
!94 = !{!95}
!95 = distinct !{!95, !96}
!96 = distinct !{!96, !"LVerDomain"}
!97 = !{!98}
!98 = distinct !{!98, !96}
!99 = distinct !{!99, !86, !87, !88}
!100 = distinct !{!100, !86, !87}
!101 = distinct !{!101, !91}
!102 = !{!103}
!103 = distinct !{!103, !104}
!104 = distinct !{!104, !"LVerDomain"}
!105 = !{!106}
!106 = distinct !{!106, !104}
!107 = distinct !{!107, !86, !87, !88}
!108 = distinct !{!108, !86, !87}
!109 = distinct !{!109, !91}
!110 = !{!111}
!111 = distinct !{!111, !112}
!112 = distinct !{!112, !"LVerDomain"}
!113 = !{!114}
!114 = distinct !{!114, !112}
!115 = distinct !{!115, !86, !87, !88}
!116 = distinct !{!116, !86, !87}
!117 = distinct !{!117, !86}
!118 = !{!119}
!119 = distinct !{!119, !120}
!120 = distinct !{!120, !"LVerDomain"}
!121 = !{!122}
!122 = distinct !{!122, !120}
!123 = distinct !{!123, !86, !87, !88}
!124 = distinct !{!124, !86, !87}
!125 = !{!126}
!126 = distinct !{!126, !127}
!127 = distinct !{!127, !"LVerDomain"}
!128 = !{!129}
!129 = distinct !{!129, !127}
!130 = distinct !{!130, !86, !87, !88}
!131 = distinct !{!131, !86, !87}
!132 = !{!11, !16, i64 1064}
!133 = !{!11, !24, i64 1192}
!134 = !{!11, !6, i64 16}
!135 = !{!11, !6, i64 3108}
!136 = !{!11, !6, i64 3112}
!137 = !{!11, !6, i64 396}
!138 = !{!11, !6, i64 1272}
!139 = !{!7, !7, i64 0}
!140 = !{!11, !6, i64 412}
!141 = !{!39, !6, i64 8}
!142 = !{!11, !6, i64 4396}
!143 = !{!39, !16, i64 0}
!144 = distinct !{!144, !86}
!145 = !{!11, !6, i64 1280}
!146 = !{!10, !6, i64 5456}
!147 = !{!10, !6, i64 5460}
!148 = !{!11, !17, i64 344}
!149 = !{!10, !6, i64 5468}
!150 = !{!11, !6, i64 388}
!151 = !{!10, !6, i64 5576}
!152 = !{!11, !6, i64 1276}
!153 = distinct !{!153, !86}
!154 = !{!39, !6, i64 12}
!155 = !{!10, !6, i64 5464}
!156 = !{!10, !6, i64 5472}
!157 = !{!10, !6, i64 5564}
!158 = !{!10, !17, i64 344}
!159 = !{!10, !6, i64 5484}
!160 = !{!10, !6, i64 5584}
!161 = !{!10, !6, i64 5588}
!162 = distinct !{!162, !86}
!163 = distinct !{!163, !86}
!164 = distinct !{!164, !86}
!165 = !{!11, !6, i64 392}
!166 = !{!11, !6, i64 3836}
!167 = distinct !{!167, !86}
!168 = !{!67, !6, i64 652}
!169 = !{!10, !6, i64 8756}
!170 = !{!11, !6, i64 3820}
!171 = !{!11, !6, i64 3780}
!172 = !{!11, !6, i64 3712}
!173 = !{!11, !6, i64 3716}
end_hunk_1

inline.NumInlined: 7
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@cs_dmperm:bb.a
  store i32 %i.gc, ptr %i.gf, align 4, !tbaa !20
  %i.gg = add nsw i32 %.02325.i, 1
  %i.gh = sext i32 %.02325.i to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.gh
  %i.gj = trunc nuw nsw i64 %indvars.iv.i262 to i32
  store i32 %i.gj, ptr %i.gi, align 4, !tbaa !20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i261
  %.124.i = phi i32 [ %.02325.i, %.lr.ph.i261 ], [ %i.gg, %bb.aa ] ; 3 uses
  %.1.i264 = phi i32 [ %.027.i, %.lr.ph.i261 ], [ %i.gd, %bb.aa ] ; 3 uses
  %indvars.iv.next.i265 = add nuw nsw i64 %indvars.iv.i262, 1 ; 2 uses
  %exitcond.not.i266 = icmp eq i64 %indvars.iv.next.i265, %wide.trip.count.i251
  br i1 %exitcond.not.i266, label %cs_matched.exit, label %.lr.ph.i261, !llvm.loop !28

cs_matched.exit:                                  ; preds = %bb.ab
  %i.gk = getelementptr i8, ptr %i.h, i64 40
  %i.gl = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i32 %.124.i, ptr %i.gl, align 8, !tbaa !20
  store i32 %.1.i264, ptr %i.gk, align 8, !tbaa !20
  br label %.lr.ph.i272

.lr.ph.i272:                                      ; preds = %bb.ad, %cs_matched.exit
  %indvars.iv.i273 = phi i64 [ 0, %cs_matched.exit ], [ %indvars.iv.next.i279, %bb.ad ] ; 4 uses
  %.027.i274 = phi i32 [ %.1.i264, %cs_matched.exit ], [ %.1.i278, %bb.ad ] ; 3 uses
  %.02325.i275 = phi i32 [ %.124.i, %cs_matched.exit ], [ %.124.i277, %bb.ad ] ; 3 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i273
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !20
  %.not.i276 = icmp eq i32 %i.gn, -1
  br i1 %.not.i276, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i272
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i273
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !20
  %i.gq = add nsw i32 %.027.i274, 1
  %i.gr = sext i32 %.027.i274 to i64
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.gr
  store i32 %i.gp, ptr %i.gs, align 4, !tbaa !20
  %i.gt = add nsw i32 %.02325.i275, 1
  %i.gu = sext i32 %.02325.i275 to i64
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.gu
  %i.gw = trunc nuw nsw i64 %indvars.iv.i273 to i32
  store i32 %i.gw, ptr %i.gv, align 4, !tbaa !20
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i272
  %.124.i277 = phi i32 [ %.02325.i275, %.lr.ph.i272 ], [ %i.gt, %bb.ac ] ; 3 uses
  %.1.i278 = phi i32 [ %.027.i274, %.lr.ph.i272 ], [ %i.gq, %bb.ac ] ; 3 uses
  %indvars.iv.next.i279 = add nuw nsw i64 %indvars.iv.i273, 1 ; 2 uses
  %exitcond.not.i280 = icmp eq i64 %indvars.iv.next.i279, %wide.trip.count.i251
  br i1 %exitcond.not.i280, label %cs_matched.exit281, label %.lr.ph.i272, !llvm.loop !28

cs_matched.exit281:                               ; preds = %bb.ad
  %i.gx = getelementptr i8, ptr %i.h, i64 44
  %i.gy = getelementptr inbounds nuw i8, ptr %i.h, i64 68
  store i32 %.124.i277, ptr %i.gy, align 4, !tbaa !20
  store i32 %.1.i278, ptr %i.gx, align 4, !tbaa !20
  br label %.lr.ph.i287

.lr.ph.i287:                                      ; preds = %bb.af, %cs_matched.exit281
  %indvars.iv.i288 = phi i64 [ 0, %cs_matched.exit281 ], [ %indvars.iv.next.i294, %bb.af ] ; 4 uses
  %.027.i289 = phi i32 [ %.1.i278, %cs_matched.exit281 ], [ %.1.i293, %bb.af ] ; 3 uses
  %.02325.i290 = phi i32 [ %.124.i277, %cs_matched.exit281 ], [ %.124.i292, %bb.af ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i288
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !20
  %.not.i291 = icmp eq i32 %i.ha, 3
  br i1 %.not.i291, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i287
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i288
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !20
  %i.hd = add nsw i32 %.027.i289, 1
  %i.he = sext i32 %.027.i289 to i64
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.he
  store i32 %i.hc, ptr %i.hf, align 4, !tbaa !20
  %i.hg = add nsw i32 %.02325.i290, 1
  %i.hh = sext i32 %.02325.i290 to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.hh
  %i.hj = trunc nuw nsw i64 %indvars.iv.i288 to i32
  store i32 %i.hj, ptr %i.hi, align 4, !tbaa !20
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph.i287
  %.124.i292 = phi i32 [ %.02325.i290, %.lr.ph.i287 ], [ %i.hg, %bb.ae ] ; 2 uses
  %.1.i293 = phi i32 [ %.027.i289, %.lr.ph.i287 ], [ %i.hd, %bb.ae ] ; 2 uses
  %indvars.iv.next.i294 = add nuw nsw i64 %indvars.iv.i288, 1 ; 2 uses
  %exitcond.not.i295 = icmp eq i64 %indvars.iv.next.i294, %wide.trip.count.i251
  br i1 %exitcond.not.i295, label %cs_matched.exit296, label %.lr.ph.i287, !llvm.loop !28

cs_matched.exit296:                               ; preds = %bb.af, %cs_unmatched.exit.thread
  %.023.lcssa.i283 = phi i32 [ %i.eu, %cs_unmatched.exit.thread ], [ %.124.i292, %bb.af ]
  %.0.lcssa.i284 = phi i32 [ %i.ex, %cs_unmatched.exit.thread ], [ %.1.i293, %bb.af ] ; 4 uses
  %i.hk = getelementptr i8, ptr %i.h, i64 48
  %i.hl = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i32 %.023.lcssa.i283, ptr %i.hl, align 8, !tbaa !20
  store i32 %.0.lcssa.i284, ptr %i.hk, align 8, !tbaa !20
  br i1 %i.y, label %.lr.ph.preheader.i299, label %cs_unmatched.exit307

.lr.ph.preheader.i299:                            ; preds = %cs_matched.exit296
  %wide.trip.count.i300 = zext nneg i32 %i.e to i64 ; 2 uses
  %xtraiter466 = and i64 %wide.trip.count.i300, 1
  %i.hm = icmp eq i32 %i.e, 1
  br i1 %i.hm, label %.lr.ph.i301.epil.preheader, label %.lr.ph.preheader.i299.new

.lr.ph.preheader.i299.new:                        ; preds = %.lr.ph.preheader.i299
  %unroll_iter470 = and i64 %wide.trip.count.i300, 2147483646
  br label %.lr.ph.i301

.lr.ph.i301:                                      ; preds = %bb.ai, %.lr.ph.preheader.i299.new
  %indvars.iv.i302 = phi i64 [ 0, %.lr.ph.preheader.i299.new ], [ %indvars.iv.next.i305.1, %bb.ai ] ; 4 uses
  %.014.i303 = phi i32 [ %.0.lcssa.i284, %.lr.ph.preheader.i299.new ], [ %.1.i304.1, %bb.ai ] ; 3 uses
  %niter471 = phi i64 [ 0, %.lr.ph.preheader.i299.new ], [ %niter471.next.1, %bb.ai ]
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i302
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !20
  %i.hp = icmp eq i32 %i.ho, 0
  br i1 %i.hp, label %bb.ag, label %.lr.ph.i301.1

bb.ag:                                            ; preds = %.lr.ph.i301
  %i.hq = add nsw i32 %.014.i303, 1
  %i.hr = sext i32 %.014.i303 to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.hr
  %i.ht = trunc nuw nsw i64 %indvars.iv.i302 to i32
  store i32 %i.ht, ptr %i.hs, align 4, !tbaa !20
  br label %.lr.ph.i301.1

.lr.ph.i301.1:                                    ; preds = %bb.ag, %.lr.ph.i301
  %.1.i304 = phi i32 [ %i.hq, %bb.ag ], [ %.014.i303, %.lr.ph.i301 ] ; 3 uses
  %indvars.iv.next.i305 = or disjoint i64 %indvars.iv.i302, 1 ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.i305
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !20
  %i.hw = icmp eq i32 %i.hv, 0
  br i1 %i.hw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i301.1
  %i.hx = add nsw i32 %.1.i304, 1
  %i.hy = sext i32 %.1.i304 to i64
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.hy
  %i.ia = trunc nuw nsw i64 %indvars.iv.next.i305 to i32
  store i32 %i.ia, ptr %i.hz, align 4, !tbaa !20
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph.i301.1
  %.1.i304.1 = phi i32 [ %i.hx, %bb.ah ], [ %.1.i304, %.lr.ph.i301.1 ] ; 3 uses
  %indvars.iv.next.i305.1 = add nuw nsw i64 %indvars.iv.i302, 2 ; 2 uses
  %niter471.next.1 = add i64 %niter471, 2         ; 2 uses
  %niter471.ncmp.1 = icmp eq i64 %niter471.next.1, %unroll_iter470
  br i1 %niter471.ncmp.1, label %cs_unmatched.exit307.loopexit.unr-lcssa, label %.lr.ph.i301, !llvm.loop !27

cs_unmatched.exit307.loopexit.unr-lcssa:          ; preds = %bb.ai
  %lcmp.mod467.not = icmp eq i64 %xtraiter466, 0
  br i1 %lcmp.mod467.not, label %cs_unmatched.exit307, label %.lr.ph.i301.epil.preheader

.lr.ph.i301.epil.preheader:                       ; preds = %cs_unmatched.exit307.loopexit.unr-lcssa, %.lr.ph.preheader.i299
  %indvars.iv.i302.epil.init = phi i64 [ 0, %.lr.ph.preheader.i299 ], [ %indvars.iv.next.i305.1, %cs_unmatched.exit307.loopexit.unr-lcssa ] ; 2 uses
  %.014.i303.epil.init = phi i32 [ %.0.lcssa.i284, %.lr.ph.preheader.i299 ], [ %.1.i304.1, %cs_unmatched.exit307.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod469 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod469)
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i302.epil.init
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !20
  %i.id = icmp eq i32 %i.ic, 0
  br i1 %i.id, label %bb.aj, label %cs_unmatched.exit307

bb.aj:                                            ; preds = %.lr.ph.i301.epil.preheader
  %i.ie = add nsw i32 %.014.i303.epil.init, 1
  %i.if = sext i32 %.014.i303.epil.init to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.if
  %i.ih = trunc nuw nsw i64 %indvars.iv.i302.epil.init to i32
  store i32 %i.ih, ptr %i.ig, align 4, !tbaa !20
  br label %cs_unmatched.exit307

cs_unmatched.exit307:                             ; preds = %cs_unmatched.exit307.loopexit.unr-lcssa, %bb.aj, %.lr.ph.i301.epil.preheader, %cs_matched.exit296
  %.0.lcssa.i298 = phi i32 [ %.0.lcssa.i284, %cs_matched.exit296 ], [ %.1.i304.1, %cs_unmatched.exit307.loopexit.unr-lcssa ], [ %i.ie, %bb.aj ], [ %.014.i303.epil.init, %.lr.ph.i301.epil.preheader ]
  %i.ii = getelementptr i8, ptr %i.h, i64 52
  store i32 %.0.lcssa.i298, ptr %i.ii, align 4, !tbaa !20
  %i.ij = tail call ptr @cs_free(ptr noundef nonnull %i.r) #5 ; 0 uses
  %i.ik = tail call ptr @cs_pinv(ptr noundef %i.i, i32 noundef %i.e) #5 ; 3 uses
  %.not222 = icmp eq ptr %i.ik, null
  br i1 %.not222, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %cs_unmatched.exit307
  %i.il = tail call ptr @cs_ddone(ptr noundef nonnull %i.h, ptr noundef null, ptr noundef null, i32 noundef 0) #5
  br label %bb.at

bb.al:                                            ; preds = %cs_unmatched.exit307
  %i.im = tail call ptr @cs_permute(ptr noundef nonnull %0, ptr noundef nonnull %i.ik, ptr noundef %i.k, i32 noundef 0) #5 ; 9 uses
  %i.in = tail call ptr @cs_free(ptr noundef nonnull %i.ik) #5 ; 0 uses
  %.not223 = icmp eq ptr %i.im, null
  br i1 %.not223, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.io = tail call ptr @cs_ddone(ptr noundef nonnull %i.h, ptr noundef null, ptr noundef null, i32 noundef 0) #5
  br label %bb.at

bb.an:                                            ; preds = %bb.al
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !23 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.h, i64 68 ; 5 uses
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !20 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 13 uses
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !20 ; 4 uses
  %i.iv = sub i32 %i.is, %i.iu                    ; 10 uses
  %i.iw = icmp slt i32 %i.iu, 1
  %.not224328 = icmp sgt i32 %i.iu, %i.is
  %or.cond403 = select i1 %i.iw, i1 true, i1 %.not224328
  br i1 %or.cond403, label %.loopexit322, label %.lr.ph330.preheader

.lr.ph330.preheader:                              ; preds = %bb.an
  %i.ix = zext nneg i32 %i.iu to i64
  br label %.lr.ph330

.lr.ph330:                                        ; preds = %.lr.ph330.preheader, %.lr.ph330
  %indvars.iv = phi i64 [ %i.ix, %.lr.ph330.preheader ], [ %indvars.iv.next, %.lr.ph330 ] ; 3 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !20
  %i.ja = load i32, ptr %i.it, align 8, !tbaa !20
  %i.jb = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.jc = sub nsw i32 %i.jb, %i.ja
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.jd
  store i32 %i.iz, ptr %i.je, align 4, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.jf = load i32, ptr %i.ir, align 4, !tbaa !20
  %.not224.not = icmp sgt i32 %i.jf, %i.jb
  br i1 %.not224.not, label %.lr.ph330, label %.loopexit322, !llvm.loop !29

.loopexit322:                                     ; preds = %.lr.ph330, %bb.an
  %i.jg = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store i32 %i.iv, ptr %i.jg, align 8, !tbaa !14
  %i.jh = getelementptr inbounds nuw i8, ptr %i.h, i64 44 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !20
  %i.jj = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 21 uses
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !20
  %i.jl = sub nsw i32 %i.ji, %i.jk
  %i.jm = icmp slt i32 %i.jl, %i.e
  br i1 %i.jm, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %.loopexit322
  %i.jn = tail call i32 @cs_fkeep(ptr noundef nonnull %i.im, ptr noundef nonnull @cs_rprune, ptr noundef nonnull %i.q) #5 ; 0 uses
  %i.jo = sext i32 %i.iv to i64
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !20 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !24 ; 8 uses
  %i.jt = load i32, ptr %i.jj, align 8, !tbaa !20
  %i.ju = icmp sgt i32 %i.jt, 0
  %i.jv = icmp sgt i32 %i.jq, 0
  %or.cond = select i1 %i.ju, i1 %i.jv, i1 false
  br i1 %or.cond, label %.lr.ph332.preheader, label %.loopexit

.lr.ph332.preheader:                              ; preds = %bb.ao
  %wide.trip.count = zext nneg i32 %i.jq to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.jq, 8
  br i1 %min.iters.check, label %.lr.ph332.preheader451, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph332.preheader
  %i.jw = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep = getelementptr i8, ptr %i.js, i64 %i.jw
  %scevgep404 = getelementptr i8, ptr %i.h, i64 44
  %bound0 = icmp ult ptr %i.js, %scevgep404
  %bound1 = icmp ult ptr %i.jj, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph332.preheader451, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %i.jx = load i32, ptr %i.jj, align 8, !tbaa !20, !alias.scope !30
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.jx, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %index ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.jy, align 4, !tbaa !20, !alias.scope !33, !noalias !30
  %wide.load405 = load <4 x i32>, ptr %i.jz, align 4, !tbaa !20, !alias.scope !33, !noalias !30
  %i.ka = sub nsw <4 x i32> %wide.load, %broadcast.splat
  %i.kb = sub nsw <4 x i32> %wide.load405, %broadcast.splat
  store <4 x i32> %i.ka, ptr %i.jy, align 4, !tbaa !20, !alias.scope !33, !noalias !30
  store <4 x i32> %i.kb, ptr %i.jz, align 4, !tbaa !20, !alias.scope !33, !noalias !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kc = icmp eq i64 %index.next, %n.vec
  br i1 %i.kc, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph332.preheader451

.lr.ph332.preheader451:                           ; preds = %vector.memcheck, %.lr.ph332.preheader, %middle.block
  %indvars.iv351.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph332.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter472 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod473.not = icmp eq i64 %xtraiter472, 0
  br i1 %lcmp.mod473.not, label %.lr.ph332.prol.loopexit, label %.lr.ph332.prol

.lr.ph332.prol:                                   ; preds = %.lr.ph332.preheader451, %.lr.ph332.prol
  %indvars.iv351.prol = phi i64 [ %indvars.iv.next352.prol, %.lr.ph332.prol ], [ %indvars.iv351.ph, %.lr.ph332.preheader451 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph332.prol ], [ 0, %.lr.ph332.preheader451 ]
  %i.kd = load i32, ptr %i.jj, align 8, !tbaa !20
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv351.prol ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !20
  %i.kg = sub nsw i32 %i.kf, %i.kd
  store i32 %i.kg, ptr %i.ke, align 4, !tbaa !20
  %indvars.iv.next352.prol = add nuw nsw i64 %indvars.iv351.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter472
  br i1 %prol.iter.cmp.not, label %.lr.ph332.prol.loopexit, label %.lr.ph332.prol, !llvm.loop !38

.lr.ph332.prol.loopexit:                          ; preds = %.lr.ph332.prol, %.lr.ph332.preheader451
  %indvars.iv351.unr = phi i64 [ %indvars.iv351.ph, %.lr.ph332.preheader451 ], [ %indvars.iv.next352.prol, %.lr.ph332.prol ]
  %i.kh = sub nsw i64 %indvars.iv351.ph, %wide.trip.count
  %i.ki = icmp ugt i64 %i.kh, -4
  br i1 %i.ki, label %.loopexit, label %.lr.ph332

.lr.ph332:                                        ; preds = %.lr.ph332.prol.loopexit, %.lr.ph332
  %indvars.iv351 = phi i64 [ %indvars.iv.next352.3, %.lr.ph332 ], [ %indvars.iv351.unr, %.lr.ph332.prol.loopexit ] ; 5 uses
  %i.kj = load i32, ptr %i.jj, align 8, !tbaa !20
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv351 ; 2 uses
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !20
  %i.km = sub nsw i32 %i.kl, %i.kj
  store i32 %i.km, ptr %i.kk, align 4, !tbaa !20
  %i.kn = load i32, ptr %i.jj, align 8, !tbaa !20
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv351
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 4 ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !20
  %i.kr = sub nsw i32 %i.kq, %i.kn
  store i32 %i.kr, ptr %i.kp, align 4, !tbaa !20
  %i.ks = load i32, ptr %i.jj, align 8, !tbaa !20
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv351
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8 ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !20
  %i.kw = sub nsw i32 %i.kv, %i.ks
  store i32 %i.kw, ptr %i.ku, align 4, !tbaa !20
  %i.kx = load i32, ptr %i.jj, align 8, !tbaa !20
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv351
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 12 ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !20
  %i.lb = sub nsw i32 %i.la, %i.kx
  store i32 %i.lb, ptr %i.kz, align 4, !tbaa !20
  %indvars.iv.next352.3 = add nuw nsw i64 %indvars.iv351, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next352.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph332, !llvm.loop !40

.loopexit:                                        ; preds = %.lr.ph332.prol.loopexit, %.lr.ph332, %middle.block, %bb.ao, %.loopexit322
  %i.lc = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  store i32 %i.iv, ptr %i.lc, align 4, !tbaa !13
  %i.ld = tail call ptr @cs_scc(ptr noundef nonnull %i.im) #5 ; 5 uses
  %.not225 = icmp eq ptr %i.ld, null
  br i1 %.not225, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.loopexit
  %i.le = tail call ptr @cs_ddone(ptr noundef nonnull %i.h, ptr noundef nonnull %i.im, ptr noundef null, i32 noundef 0) #5
  br label %bb.at

bb.aq:                                            ; preds = %.loopexit
  %i.lf = load ptr, ptr %i.ld, align 8, !tbaa !15 ; 6 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !18 ; 7 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.ld, i64 32
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !41 ; 3 uses
  %i.lk = icmp sgt i32 %i.iv, 0
  br i1 %i.lk, label %.lr.ph335.preheader, label %._crit_edge342

.lr.ph335.preheader:                              ; preds = %bb.aq
  %wide.trip.count357 = zext nneg i32 %i.iv to i64 ; 5 uses
  %i.ll = add nsw i64 %wide.trip.count357, -1     ; 4 uses
  %xtraiter474 = and i64 %wide.trip.count357, 1
  %i.lm = icmp eq i64 %i.ll, 0
  br i1 %i.lm, label %.lr.ph335.epil.preheader, label %.lr.ph335.preheader.new

.lr.ph335.preheader.new:                          ; preds = %.lr.ph335.preheader
  %unroll_iter477 = and i64 %wide.trip.count357, 2147483646
  br label %.lr.ph335

.lr.ph337.preheader.unr-lcssa:                    ; preds = %.lr.ph335
  %lcmp.mod475.not = icmp eq i64 %xtraiter474, 0
  br i1 %lcmp.mod475.not, label %.lr.ph337.preheader, label %.lr.ph335.epil.preheader

.lr.ph335.epil.preheader:                         ; preds = %.lr.ph337.preheader.unr-lcssa, %.lr.ph335.preheader
  %indvars.iv354.epil.init = phi i64 [ 0, %.lr.ph335.preheader ], [ %indvars.iv.next355.1, %.lr.ph337.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod476 = trunc i32 %i.iv to i1
  tail call void @llvm.assume(i1 %lcmp.mod476)
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %indvars.iv354.epil.init
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !20
  %i.lp = load i32, ptr %i.it, align 8, !tbaa !20
  %i.lq = add nsw i32 %i.lp, %i.lo
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.lr
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !20
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv354.epil.init
  store i32 %i.lt, ptr %i.lu, align 4, !tbaa !20
  br label %.lr.ph337.preheader

.lr.ph337.preheader:                              ; preds = %.lr.ph337.preheader.unr-lcssa, %.lr.ph335.epil.preheader
  %xtraiter479 = and i64 %wide.trip.count357, 1
  %i.lv = icmp eq i64 %i.ll, 0
  br i1 %i.lv, label %.lr.ph337.epil.preheader, label %.lr.ph337.preheader.new

.lr.ph337.preheader.new:                          ; preds = %.lr.ph337.preheader
  %unroll_iter482 = and i64 %wide.trip.count357, 2147483646
  br label %.lr.ph337

.lr.ph335:                                        ; preds = %.lr.ph335, %.lr.ph335.preheader.new
  %indvars.iv354 = phi i64 [ 0, %.lr.ph335.preheader.new ], [ %indvars.iv.next355.1, %.lr.ph335 ] ; 4 uses
  %niter478 = phi i64 [ 0, %.lr.ph335.preheader.new ], [ %niter478.next.1, %.lr.ph335 ]
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %indvars.iv354
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !20
  %i.ly = load i32, ptr %i.it, align 8, !tbaa !20
  %i.lz = add nsw i32 %i.ly, %i.lx
  %i.ma = sext i32 %i.lz to i64
  %i.mb = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !20
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv354
  store i32 %i.mc, ptr %i.md, align 4, !tbaa !20
  %indvars.iv.next355 = or disjoint i64 %indvars.iv354, 1 ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %indvars.iv.next355
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !20
  %i.mg = load i32, ptr %i.it, align 8, !tbaa !20
  %i.mh = add nsw i32 %i.mg, %i.mf
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.mi
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !20
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next355
  store i32 %i.mk, ptr %i.ml, align 4, !tbaa !20
  %indvars.iv.next355.1 = add nuw nsw i64 %indvars.iv354, 2 ; 2 uses
  %niter478.next.1 = add i64 %niter478, 2         ; 2 uses
  %niter478.ncmp.1 = icmp eq i64 %niter478.next.1, %unroll_iter477
  br i1 %niter478.ncmp.1, label %.lr.ph337.preheader.unr-lcssa, label %.lr.ph335, !llvm.loop !42

.lr.ph339.preheader.unr-lcssa:                    ; preds = %.lr.ph337
  %lcmp.mod480.not = icmp eq i64 %xtraiter479, 0
  br i1 %lcmp.mod480.not, label %.lr.ph339.preheader, label %.lr.ph337.epil.preheader

.lr.ph337.epil.preheader:                         ; preds = %.lr.ph339.preheader.unr-lcssa, %.lr.ph337.preheader
  %indvars.iv359.epil.init = phi i64 [ 0, %.lr.ph337.preheader ], [ %indvars.iv.next360.1, %.lr.ph339.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod481 = trunc i32 %i.iv to i1
  tail call void @llvm.assume(i1 %lcmp.mod481)
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv359.epil.init
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !20
  %i.mo = load i32, ptr %i.it, align 8, !tbaa !20
  %i.mp = trunc nuw nsw i64 %indvars.iv359.epil.init to i32
  %i.mq = add nsw i32 %i.mo, %i.mp
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.mr
  store i32 %i.mn, ptr %i.ms, align 4, !tbaa !20
  br label %.lr.ph339.preheader

.lr.ph339.preheader:                              ; preds = %.lr.ph339.preheader.unr-lcssa, %.lr.ph337.epil.preheader
  %wide.trip.count367 = zext nneg i32 %i.iv to i64 ; 4 uses
  %xtraiter484 = and i64 %wide.trip.count367, 1
  %i.mt = icmp eq i64 %i.ll, 0
  br i1 %i.mt, label %.lr.ph339.epil.preheader, label %.lr.ph339.preheader.new

.lr.ph339.preheader.new:                          ; preds = %.lr.ph339.preheader
  %unroll_iter487 = and i64 %wide.trip.count367, 2147483646
  br label %.lr.ph339

.lr.ph337:                                        ; preds = %.lr.ph337, %.lr.ph337.preheader.new
  %indvars.iv359 = phi i64 [ 0, %.lr.ph337.preheader.new ], [ %indvars.iv.next360.1, %.lr.ph337 ] ; 4 uses
  %niter483 = phi i64 [ 0, %.lr.ph337.preheader.new ], [ %niter483.next.1, %.lr.ph337 ]
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv359
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !20
  %i.mw = load i32, ptr %i.it, align 8, !tbaa !20
  %i.mx = trunc nuw nsw i64 %indvars.iv359 to i32
  %i.my = add nsw i32 %i.mw, %i.mx
  %i.mz = sext i32 %i.my to i64
  %i.na = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.mz
  store i32 %i.mv, ptr %i.na, align 4, !tbaa !20
  %indvars.iv.next360 = or disjoint i64 %indvars.iv359, 1 ; 2 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next360
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !20
  %i.nd = load i32, ptr %i.it, align 8, !tbaa !20
  %i.ne = trunc nuw nsw i64 %indvars.iv.next360 to i32
  %i.nf = add nsw i32 %i.nd, %i.ne
  %i.ng = sext i32 %i.nf to i64
  %i.nh = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ng
  store i32 %i.nc, ptr %i.nh, align 4, !tbaa !20
  %indvars.iv.next360.1 = add nuw nsw i64 %indvars.iv359, 2 ; 2 uses
  %niter483.next.1 = add i64 %niter483, 2         ; 2 uses
  %niter483.ncmp.1 = icmp eq i64 %niter483.next.1, %unroll_iter482
  br i1 %niter483.ncmp.1, label %.lr.ph339.preheader.unr-lcssa, label %.lr.ph337, !llvm.loop !43

.lr.ph341.preheader.unr-lcssa:                    ; preds = %.lr.ph339
  %lcmp.mod485.not = icmp eq i64 %xtraiter484, 0
  br i1 %lcmp.mod485.not, label %.lr.ph341.preheader, label %.lr.ph339.epil.preheader

.lr.ph339.epil.preheader:                         ; preds = %.lr.ph341.preheader.unr-lcssa, %.lr.ph339.preheader
  %indvars.iv364.epil.init = phi i64 [ 0, %.lr.ph339.preheader ], [ %indvars.iv.next365.1, %.lr.ph341.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod486 = trunc i32 %i.iv to i1
  tail call void @llvm.assume(i1 %lcmp.mod486)
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %indvars.iv364.epil.init
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !20
  %i.nk = load i32, ptr %i.jj, align 8, !tbaa !20
  %i.nl = add nsw i32 %i.nk, %i.nj
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.nm
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !20
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv364.epil.init
  store i32 %i.no, ptr %i.np, align 4, !tbaa !20
  br label %.lr.ph341.preheader

.lr.ph341.preheader:                              ; preds = %.lr.ph341.preheader.unr-lcssa, %.lr.ph339.epil.preheader
  %xtraiter489 = and i64 %wide.trip.count367, 1
  %i.nq = icmp eq i64 %i.ll, 0
  br i1 %i.nq, label %.lr.ph341.epil.preheader, label %.lr.ph341.preheader.new

.lr.ph341.preheader.new:                          ; preds = %.lr.ph341.preheader
  %unroll_iter492 = and i64 %wide.trip.count367, 2147483646
  br label %.lr.ph341

.lr.ph339:                                        ; preds = %.lr.ph339, %.lr.ph339.preheader.new
  %indvars.iv364 = phi i64 [ 0, %.lr.ph339.preheader.new ], [ %indvars.iv.next365.1, %.lr.ph339 ] ; 4 uses
  %niter488 = phi i64 [ 0, %.lr.ph339.preheader.new ], [ %niter488.next.1, %.lr.ph339 ]
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %indvars.iv364
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !20
  %i.nt = load i32, ptr %i.jj, align 8, !tbaa !20
  %i.nu = add nsw i32 %i.nt, %i.ns
  %i.nv = sext i32 %i.nu to i64
  %i.nw = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.nv
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !20
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv364
  store i32 %i.nx, ptr %i.ny, align 4, !tbaa !20
  %indvars.iv.next365 = or disjoint i64 %indvars.iv364, 1 ; 2 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %indvars.iv.next365
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !20
  %i.ob = load i32, ptr %i.jj, align 8, !tbaa !20
  %i.oc = add nsw i32 %i.ob, %i.oa
  %i.od = sext i32 %i.oc to i64
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.od
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !20
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next365
  store i32 %i.of, ptr %i.og, align 4, !tbaa !20
  %indvars.iv.next365.1 = add nuw nsw i64 %indvars.iv364, 2 ; 2 uses
  %niter488.next.1 = add i64 %niter488, 2         ; 2 uses
  %niter488.ncmp.1 = icmp eq i64 %niter488.next.1, %unroll_iter487
  br i1 %niter488.ncmp.1, label %.lr.ph341.preheader.unr-lcssa, label %.lr.ph339, !llvm.loop !44

.lr.ph341:                                        ; preds = %.lr.ph341, %.lr.ph341.preheader.new
  %indvars.iv369 = phi i64 [ 0, %.lr.ph341.preheader.new ], [ %indvars.iv.next370.1, %.lr.ph341 ] ; 4 uses
  %niter493 = phi i64 [ 0, %.lr.ph341.preheader.new ], [ %niter493.next.1, %.lr.ph341 ]
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv369
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !20
  %i.oj = load i32, ptr %i.jj, align 8, !tbaa !20
  %i.ok = trunc nuw nsw i64 %indvars.iv369 to i32
  %i.ol = add nsw i32 %i.oj, %i.ok
  %i.om = sext i32 %i.ol to i64
  %i.on = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.om
  store i32 %i.oi, ptr %i.on, align 4, !tbaa !20
  %indvars.iv.next370 = or disjoint i64 %indvars.iv369, 1 ; 2 uses
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next370
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !20
  %i.oq = load i32, ptr %i.jj, align 8, !tbaa !20
  %i.or = trunc nuw nsw i64 %indvars.iv.next370 to i32
  %i.os = add nsw i32 %i.oq, %i.or
  %i.ot = sext i32 %i.os to i64
  %i.ou = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ot
  store i32 %i.op, ptr %i.ou, align 4, !tbaa !20
  %indvars.iv.next370.1 = add nuw nsw i64 %indvars.iv369, 2 ; 2 uses
  %niter493.next.1 = add i64 %niter493, 2         ; 2 uses
  %niter493.ncmp.1 = icmp eq i64 %niter493.next.1, %unroll_iter492
  br i1 %niter493.ncmp.1, label %._crit_edge342.loopexit.unr-lcssa, label %.lr.ph341, !llvm.loop !45

._crit_edge342.loopexit.unr-lcssa:                ; preds = %.lr.ph341
  %lcmp.mod490.not = icmp eq i64 %xtraiter489, 0
  br i1 %lcmp.mod490.not, label %._crit_edge342, label %.lr.ph341.epil.preheader

.lr.ph341.epil.preheader:                         ; preds = %._crit_edge342.loopexit.unr-lcssa, %.lr.ph341.preheader
  %indvars.iv369.epil.init = phi i64 [ 0, %.lr.ph341.preheader ], [ %indvars.iv.next370.1, %._crit_edge342.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod491 = trunc i32 %i.iv to i1
  tail call void @llvm.assume(i1 %lcmp.mod491)
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv369.epil.init
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !20
  %i.ox = load i32, ptr %i.jj, align 8, !tbaa !20
  %i.oy = trunc nuw nsw i64 %indvars.iv369.epil.init to i32
  %i.oz = add nsw i32 %i.ox, %i.oy
  %i.pa = sext i32 %i.oz to i64
  %i.pb = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.pa
  store i32 %i.ow, ptr %i.pb, align 4, !tbaa !20
  br label %._crit_edge342

._crit_edge342:                                   ; preds = %.lr.ph341.epil.preheader, %._crit_edge342.loopexit.unr-lcssa, %bb.aq
  store i32 0, ptr %i.o, align 4, !tbaa !20
  store i32 0, ptr %i.m, align 4, !tbaa !20
  %i.pc = load i32, ptr %i.it, align 8, !tbaa !20
  %i.pd = icmp sgt i32 %i.pc, 0                   ; 3 uses
  %spec.select = zext i1 %i.pd to i32
  %i.pe = icmp sgt i32 %i.lj, 0
  br i1 %i.pe, label %.lr.ph346.preheader, label %._crit_edge347

.lr.ph346.preheader:                              ; preds = %._crit_edge342
  %i.pf = zext i1 %i.pd to i64                    ; 4 uses
  %wide.trip.count381 = zext nneg i32 %i.lj to i64 ; 6 uses
  %min.iters.check431 = icmp ult i32 %i.lj, 20
  br i1 %min.iters.check431, label %.lr.ph346.preheader449, label %vector.memcheck406

vector.memcheck406:                               ; preds = %.lr.ph346.preheader
  %i.pg = select i1 %i.pd, i64 4, i64 0           ; 3 uses
  %scevgep407 = getelementptr i8, ptr %i.m, i64 %i.pg ; 3 uses
  %i.ph = shl nuw nsw i64 %wide.trip.count381, 2  ; 2 uses
  %i.pi = add nuw nsw i64 %i.ph, %i.pg            ; 2 uses
  %scevgep408 = getelementptr i8, ptr %i.m, i64 %i.pi ; 3 uses
  %scevgep409 = getelementptr i8, ptr %i.o, i64 %i.pg ; 3 uses
  %scevgep410 = getelementptr i8, ptr %i.o, i64 %i.pi ; 3 uses
  %scevgep411 = getelementptr i8, ptr %i.lh, i64 %i.ph ; 2 uses
  %bound0412 = icmp ult ptr %scevgep407, %scevgep410
  %bound1413 = icmp ult ptr %scevgep409, %scevgep408
  %found.conflict414 = and i1 %bound0412, %bound1413
  %bound0415 = icmp ult ptr %scevgep407, %scevgep411
  %bound1416 = icmp ult ptr %i.lh, %scevgep408
  %found.conflict417 = and i1 %bound0415, %bound1416
  %conflict.rdx = or i1 %found.conflict414, %found.conflict417
  %bound0418 = icmp ult ptr %scevgep407, %i.ir
  %bound1419 = icmp ult ptr %i.jj, %scevgep408
  %found.conflict420 = and i1 %bound0418, %bound1419
  %conflict.rdx421 = or i1 %conflict.rdx, %found.conflict420
  %bound0422 = icmp ult ptr %scevgep409, %scevgep411
  %bound1423 = icmp ult ptr %i.lh, %scevgep410
  %found.conflict424 = and i1 %bound0422, %bound1423
  %conflict.rdx425 = or i1 %conflict.rdx421, %found.conflict424
  %bound0426 = icmp ult ptr %scevgep409, %i.ir
  %bound1427 = icmp ult ptr %i.jj, %scevgep410
  %found.conflict428 = and i1 %bound0426, %bound1427
  %conflict.rdx429 = or i1 %conflict.rdx425, %found.conflict428
  br i1 %conflict.rdx429, label %.lr.ph346.preheader449, label %vector.ph432

vector.ph432:                                     ; preds = %vector.memcheck406
  %n.vec433 = and i64 %wide.trip.count381, 2147483640 ; 4 uses
  %i.pj = or disjoint i64 %n.vec433, %i.pf        ; 2 uses
  %i.pk = load i32, ptr %i.jj, align 8, !tbaa !20, !alias.scope !46
  %broadcast.splatinsert438 = insertelement <4 x i32> poison, i32 %i.pk, i64 0
  %broadcast.splat439 = shufflevector <4 x i32> %broadcast.splatinsert438, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pl = load i32, ptr %i.it, align 8, !tbaa !20, !alias.scope !46
  %broadcast.splatinsert442 = insertelement <4 x i32> poison, i32 %i.pl, i64 0
  %broadcast.splat443 = shufflevector <4 x i32> %broadcast.splatinsert442, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body434

vector.body434:                                   ; preds = %vector.body434, %vector.ph432
  %index435 = phi i64 [ 0, %vector.ph432 ], [ %index.next444, %vector.body434 ] ; 3 uses
  %i.pm = or disjoint i64 %index435, %i.pf        ; 2 uses
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %index435 ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 16 ; 2 uses
  %wide.load436 = load <4 x i32>, ptr %i.pn, align 4, !tbaa !20, !alias.scope !49
  %wide.load437 = load <4 x i32>, ptr %i.po, align 4, !tbaa !20, !alias.scope !49
  %i.pp = add nsw <4 x i32> %broadcast.splat439, %wide.load436
  %i.pq = add nsw <4 x i32> %broadcast.splat439, %wide.load437
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.pm ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  store <4 x i32> %i.pp, ptr %i.pr, align 4, !tbaa !20, !alias.scope !51, !noalias !53
  store <4 x i32> %i.pq, ptr %i.ps, align 4, !tbaa !20, !alias.scope !51, !noalias !53
  %wide.load440 = load <4 x i32>, ptr %i.pn, align 4, !tbaa !20, !alias.scope !49
  %wide.load441 = load <4 x i32>, ptr %i.po, align 4, !tbaa !20, !alias.scope !49
  %i.pt = add nsw <4 x i32> %broadcast.splat443, %wide.load440
  %i.pu = add nsw <4 x i32> %broadcast.splat443, %wide.load441
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.pm ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  store <4 x i32> %i.pt, ptr %i.pv, align 4, !tbaa !20, !alias.scope !55, !noalias !56
  store <4 x i32> %i.pu, ptr %i.pw, align 4, !tbaa !20, !alias.scope !55, !noalias !56
  %index.next444 = add nuw i64 %index435, 8       ; 2 uses
  %i.px = icmp eq i64 %index.next444, %n.vec433
  br i1 %i.px, label %middle.block445, label %vector.body434, !llvm.loop !57

middle.block445:                                  ; preds = %vector.body434
  %cmp.n446 = icmp eq i64 %n.vec433, %wide.trip.count381
  br i1 %cmp.n446, label %._crit_edge347.loopexit, label %.lr.ph346.preheader449

.lr.ph346.preheader449:                           ; preds = %vector.memcheck406, %.lr.ph346.preheader, %middle.block445
  %indvars.iv376.ph = phi i64 [ 0, %vector.memcheck406 ], [ 0, %.lr.ph346.preheader ], [ %n.vec433, %middle.block445 ] ; 4 uses
  %indvars.iv374.ph = phi i64 [ %i.pf, %vector.memcheck406 ], [ %i.pf, %.lr.ph346.preheader ], [ %i.pj, %middle.block445 ] ; 4 uses
  %xtraiter494 = and i64 %wide.trip.count381, 1
  %lcmp.mod495.not = icmp eq i64 %xtraiter494, 0
  br i1 %lcmp.mod495.not, label %.lr.ph346.prol.loopexit, label %.lr.ph346.prol

.lr.ph346.prol:                                   ; preds = %.lr.ph346.preheader449
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv376.ph ; 2 uses
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !20
  %i.qa = load i32, ptr %i.jj, align 8, !tbaa !20
  %i.qb = add nsw i32 %i.qa, %i.pz
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv374.ph
  store i32 %i.qb, ptr %i.qc, align 4, !tbaa !20
  %i.qd = load i32, ptr %i.py, align 4, !tbaa !20
  %i.qe = load i32, ptr %i.it, align 8, !tbaa !20
  %i.qf = add nsw i32 %i.qe, %i.qd
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv374.ph
  store i32 %i.qf, ptr %i.qg, align 4, !tbaa !20
  %indvars.iv.next375.prol = add nuw nsw i64 %indvars.iv374.ph, 1 ; 2 uses
  %indvars.iv.next377.prol = or disjoint i64 %indvars.iv376.ph, 1
  br label %.lr.ph346.prol.loopexit

.lr.ph346.prol.loopexit:                          ; preds = %.lr.ph346.prol, %.lr.ph346.preheader449
  %indvars.iv.next375.lcssa450.unr = phi i64 [ poison, %.lr.ph346.preheader449 ], [ %indvars.iv.next375.prol, %.lr.ph346.prol ]
  %indvars.iv376.unr = phi i64 [ %indvars.iv376.ph, %.lr.ph346.preheader449 ], [ %indvars.iv.next377.prol, %.lr.ph346.prol ]
  %indvars.iv374.unr = phi i64 [ %indvars.iv374.ph, %.lr.ph346.preheader449 ], [ %indvars.iv.next375.prol, %.lr.ph346.prol ]
  %i.qh = add nsw i64 %wide.trip.count381, -1
  %i.qi = icmp eq i64 %indvars.iv376.ph, %i.qh
  br i1 %i.qi, label %._crit_edge347.loopexit, label %.lr.ph346

.lr.ph346:                                        ; preds = %.lr.ph346.prol.loopexit, %.lr.ph346
  %indvars.iv376 = phi i64 [ %indvars.iv.next377.1, %.lr.ph346 ], [ %indvars.iv376.unr, %.lr.ph346.prol.loopexit ] ; 3 uses
  %indvars.iv374 = phi i64 [ %indvars.iv.next375.1, %.lr.ph346 ], [ %indvars.iv374.unr, %.lr.ph346.prol.loopexit ] ; 4 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv376 ; 2 uses
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !20
  %i.ql = load i32, ptr %i.jj, align 8, !tbaa !20
  %i.qm = add nsw i32 %i.ql, %i.qk
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv374
  store i32 %i.qm, ptr %i.qn, align 4, !tbaa !20
  %i.qo = load i32, ptr %i.qj, align 4, !tbaa !20
  %i.qp = load i32, ptr %i.it, align 8, !tbaa !20
  %i.qq = add nsw i32 %i.qp, %i.qo
end_hunk_0

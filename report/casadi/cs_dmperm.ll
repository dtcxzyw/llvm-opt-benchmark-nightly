Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/cs_dmperm?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@cs_dmperm:bb.a
cs_matched.exit:                                  ; preds = %bb.ab
  %i.gk = getelementptr i8, ptr %i.h, i64 40
  %i.gl = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i32 %.124.i, ptr %i.gl, align 8, !tbaa !8
  store i32 %.1.i264, ptr %i.gk, align 8, !tbaa !8
  br label %.lr.ph.i272

.lr.ph.i272:                                      ; preds = %bb.ad, %cs_matched.exit
  %indvars.iv.i273 = phi i64 [ 0, %cs_matched.exit ], [ %indvars.iv.next.i279, %bb.ad ] ; 4 uses
  %.027.i274 = phi i32 [ %.1.i264, %cs_matched.exit ], [ %.1.i278, %bb.ad ] ; 3 uses
  %.02325.i275 = phi i32 [ %.124.i, %cs_matched.exit ], [ %.124.i277, %bb.ad ] ; 3 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i273
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !8
  %.not.i276 = icmp eq i32 %i.gn, -1
  br i1 %.not.i276, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i272
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i273
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !8
  %i.gq = add nsw i32 %.027.i274, 1
  %i.gr = sext i32 %.027.i274 to i64
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.gr
  store i32 %i.gp, ptr %i.gs, align 4, !tbaa !8
  %i.gt = add nsw i32 %.02325.i275, 1
  %i.gu = sext i32 %.02325.i275 to i64
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.gu
  %i.gw = trunc nuw nsw i64 %indvars.iv.i273 to i32
  store i32 %i.gw, ptr %i.gv, align 4, !tbaa !8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i272
  %.124.i277 = phi i32 [ %.02325.i275, %.lr.ph.i272 ], [ %i.gt, %bb.ac ] ; 3 uses
  %.1.i278 = phi i32 [ %.027.i274, %.lr.ph.i272 ], [ %i.gq, %bb.ac ] ; 3 uses
  %indvars.iv.next.i279 = add nuw nsw i64 %indvars.iv.i273, 1 ; 2 uses
  %exitcond.not.i280 = icmp eq i64 %indvars.iv.next.i279, %wide.trip.count.i251
  br i1 %exitcond.not.i280, label %cs_matched.exit281, label %.lr.ph.i272, !llvm.loop !13

cs_matched.exit281:                               ; preds = %bb.ad
  %i.gx = getelementptr i8, ptr %i.h, i64 44
  %i.gy = getelementptr inbounds nuw i8, ptr %i.h, i64 68
  store i32 %.124.i277, ptr %i.gy, align 4, !tbaa !8
  store i32 %.1.i278, ptr %i.gx, align 4, !tbaa !8
  br label %.lr.ph.i287

.lr.ph.i287:                                      ; preds = %bb.af, %cs_matched.exit281
  %indvars.iv.i288 = phi i64 [ 0, %cs_matched.exit281 ], [ %indvars.iv.next.i294, %bb.af ] ; 4 uses
  %.027.i289 = phi i32 [ %.1.i278, %cs_matched.exit281 ], [ %.1.i293, %bb.af ] ; 3 uses
  %.02325.i290 = phi i32 [ %.124.i277, %cs_matched.exit281 ], [ %.124.i292, %bb.af ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i288
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !8
  %.not.i291 = icmp eq i32 %i.ha, 3
  br i1 %.not.i291, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i287
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i288
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !8
  %i.hd = add nsw i32 %.027.i289, 1
  %i.he = sext i32 %.027.i289 to i64
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.he
  store i32 %i.hc, ptr %i.hf, align 4, !tbaa !8
  %i.hg = add nsw i32 %.02325.i290, 1
  %i.hh = sext i32 %.02325.i290 to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.hh
  %i.hj = trunc nuw nsw i64 %indvars.iv.i288 to i32
  store i32 %i.hj, ptr %i.hi, align 4, !tbaa !8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph.i287
  %.124.i292 = phi i32 [ %.02325.i290, %.lr.ph.i287 ], [ %i.hg, %bb.ae ] ; 2 uses
  %.1.i293 = phi i32 [ %.027.i289, %.lr.ph.i287 ], [ %i.hd, %bb.ae ] ; 2 uses
  %indvars.iv.next.i294 = add nuw nsw i64 %indvars.iv.i288, 1 ; 2 uses
  %exitcond.not.i295 = icmp eq i64 %indvars.iv.next.i294, %wide.trip.count.i251
  br i1 %exitcond.not.i295, label %cs_matched.exit296, label %.lr.ph.i287, !llvm.loop !13

cs_matched.exit296:                               ; preds = %bb.af, %cs_unmatched.exit.thread
  %.023.lcssa.i283 = phi i32 [ %i.eu, %cs_unmatched.exit.thread ], [ %.124.i292, %bb.af ]
  %.0.lcssa.i284 = phi i32 [ %i.ex, %cs_unmatched.exit.thread ], [ %.1.i293, %bb.af ] ; 4 uses
  %i.hk = getelementptr i8, ptr %i.h, i64 48
  %i.hl = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i32 %.023.lcssa.i283, ptr %i.hl, align 8, !tbaa !8
  store i32 %.0.lcssa.i284, ptr %i.hk, align 8, !tbaa !8
  br i1 %i.y, label %.lr.ph.preheader.i299, label %cs_unmatched.exit307

.lr.ph.preheader.i299:                            ; preds = %cs_matched.exit296
  %wide.trip.count.i300 = zext nneg i32 %i.e to i64 ; 2 uses
  %xtraiter484 = and i64 %wide.trip.count.i300, 1
  %i.hm = icmp eq i32 %i.e, 1
  br i1 %i.hm, label %.lr.ph.i301.epil.preheader, label %.lr.ph.preheader.i299.new

.lr.ph.preheader.i299.new:                        ; preds = %.lr.ph.preheader.i299
  %unroll_iter488 = and i64 %wide.trip.count.i300, 2147483646
  br label %.lr.ph.i301

.lr.ph.i301:                                      ; preds = %bb.ai, %.lr.ph.preheader.i299.new
  %indvars.iv.i302 = phi i64 [ 0, %.lr.ph.preheader.i299.new ], [ %indvars.iv.next.i305.1, %bb.ai ] ; 4 uses
  %.014.i303 = phi i32 [ %.0.lcssa.i284, %.lr.ph.preheader.i299.new ], [ %.1.i304.1, %bb.ai ] ; 3 uses
  %niter489 = phi i64 [ 0, %.lr.ph.preheader.i299.new ], [ %niter489.next.1, %bb.ai ]
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i302
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !8
  %i.hp = icmp eq i32 %i.ho, 0
  br i1 %i.hp, label %bb.ag, label %.lr.ph.i301.1

bb.ag:                                            ; preds = %.lr.ph.i301
  %i.hq = add nsw i32 %.014.i303, 1
  %i.hr = sext i32 %.014.i303 to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.hr
  %i.ht = trunc nuw nsw i64 %indvars.iv.i302 to i32
  store i32 %i.ht, ptr %i.hs, align 4, !tbaa !8
  br label %.lr.ph.i301.1

.lr.ph.i301.1:                                    ; preds = %bb.ag, %.lr.ph.i301
  %.1.i304 = phi i32 [ %i.hq, %bb.ag ], [ %.014.i303, %.lr.ph.i301 ] ; 3 uses
  %indvars.iv.next.i305 = or disjoint i64 %indvars.iv.i302, 1 ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.i305
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !8
  %i.hw = icmp eq i32 %i.hv, 0
  br i1 %i.hw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i301.1
  %i.hx = add nsw i32 %.1.i304, 1
  %i.hy = sext i32 %.1.i304 to i64
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.hy
  %i.ia = trunc nuw nsw i64 %indvars.iv.next.i305 to i32
  store i32 %i.ia, ptr %i.hz, align 4, !tbaa !8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph.i301.1
  %.1.i304.1 = phi i32 [ %i.hx, %bb.ah ], [ %.1.i304, %.lr.ph.i301.1 ] ; 3 uses
  %indvars.iv.next.i305.1 = add nuw nsw i64 %indvars.iv.i302, 2 ; 2 uses
  %niter489.next.1 = add i64 %niter489, 2         ; 2 uses
  %niter489.ncmp.1 = icmp eq i64 %niter489.next.1, %unroll_iter488
  br i1 %niter489.ncmp.1, label %cs_unmatched.exit307.loopexit.unr-lcssa, label %.lr.ph.i301, !llvm.loop !12

cs_unmatched.exit307.loopexit.unr-lcssa:          ; preds = %bb.ai
  %lcmp.mod485.not = icmp eq i64 %xtraiter484, 0
  br i1 %lcmp.mod485.not, label %cs_unmatched.exit307, label %.lr.ph.i301.epil.preheader

.lr.ph.i301.epil.preheader:                       ; preds = %cs_unmatched.exit307.loopexit.unr-lcssa, %.lr.ph.preheader.i299
  %indvars.iv.i302.epil.init = phi i64 [ 0, %.lr.ph.preheader.i299 ], [ %indvars.iv.next.i305.1, %cs_unmatched.exit307.loopexit.unr-lcssa ] ; 2 uses
  %.014.i303.epil.init = phi i32 [ %.0.lcssa.i284, %.lr.ph.preheader.i299 ], [ %.1.i304.1, %cs_unmatched.exit307.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod487 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod487)
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i302.epil.init
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !8
  %i.id = icmp eq i32 %i.ic, 0
  br i1 %i.id, label %bb.aj, label %cs_unmatched.exit307

bb.aj:                                            ; preds = %.lr.ph.i301.epil.preheader
  %i.ie = add nsw i32 %.014.i303.epil.init, 1
  %i.if = sext i32 %.014.i303.epil.init to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.if
  %i.ih = trunc nuw nsw i64 %indvars.iv.i302.epil.init to i32
  store i32 %i.ih, ptr %i.ig, align 4, !tbaa !8
  br label %cs_unmatched.exit307

cs_unmatched.exit307:                             ; preds = %cs_unmatched.exit307.loopexit.unr-lcssa, %bb.aj, %.lr.ph.i301.epil.preheader, %cs_matched.exit296
  %.0.lcssa.i298 = phi i32 [ %.0.lcssa.i284, %cs_matched.exit296 ], [ %.1.i304.1, %cs_unmatched.exit307.loopexit.unr-lcssa ], [ %i.ie, %bb.aj ], [ %.014.i303.epil.init, %.lr.ph.i301.epil.preheader ]
  %i.ii = getelementptr i8, ptr %i.h, i64 52
  store i32 %.0.lcssa.i298, ptr %i.ii, align 4, !tbaa !8
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
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !45 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.h, i64 68 ; 5 uses
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !8  ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 13 uses
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !8  ; 4 uses
  %i.iv = sub i32 %i.is, %i.iu                    ; 9 uses
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
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !8
  %i.ja = load i32, ptr %i.it, align 8, !tbaa !8
  %i.jb = trunc nuw i64 %indvars.iv to i32
  %i.jc = sub nsw i32 %i.jb, %i.ja
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.jd
  store i32 %i.iz, ptr %i.je, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jf = load i32, ptr %i.ir, align 4, !tbaa !8
  %2 = trunc nuw i64 %indvars.iv.next to i32
  %.not224 = icmp slt i32 %i.jf, %2
  br i1 %.not224, label %.loopexit322, label %.lr.ph330, !llvm.loop !14

.loopexit322:                                     ; preds = %.lr.ph330, %bb.an
  %i.jg = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store i32 %i.iv, ptr %i.jg, align 8, !tbaa !38
  %i.jh = getelementptr inbounds nuw i8, ptr %i.h, i64 44 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 21 uses
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !8
  %i.jl = sub nsw i32 %i.ji, %i.jk
  %i.jm = icmp slt i32 %i.jl, %i.e
  br i1 %i.jm, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %.loopexit322
  %i.jn = tail call i32 @cs_fkeep(ptr noundef nonnull %i.im, ptr noundef nonnull @cs_rprune, ptr noundef nonnull %i.q) #5 ; 0 uses
  %i.jo = sext i32 %i.iv to i64
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !8  ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !46 ; 8 uses
  %i.jt = load i32, ptr %i.jj, align 8, !tbaa !8
  %i.ju = icmp sgt i32 %i.jt, 0
  %i.jv = icmp sgt i32 %i.jq, 0
  %or.cond = select i1 %i.ju, i1 %i.jv, i1 false
  br i1 %or.cond, label %.lr.ph332.preheader, label %.loopexit

.lr.ph332.preheader:                              ; preds = %bb.ao
  %wide.trip.count = zext nneg i32 %i.jq to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.jq, 8
  br i1 %min.iters.check, label %.lr.ph332.preheader469, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph332.preheader
  %i.jw = shl nuw nsw i64 %wide.trip.count, 2
  %i.jx = getelementptr i8, ptr %i.js, i64 %i.jw
  %i.jy = getelementptr i8, ptr %i.h, i64 44
  %bound0 = icmp ult ptr %i.js, %i.jy
  %bound1 = icmp ult ptr %i.jj, %i.jx
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph332.preheader469, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %i.jz = load i32, ptr %i.jj, align 8, !tbaa !8, !alias.scope !47
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.jz, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %index ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ka, align 4, !tbaa !8, !alias.scope !48, !noalias !47
  %wide.load405 = load <4 x i32>, ptr %i.kb, align 4, !tbaa !8, !alias.scope !48, !noalias !47
  %i.kc = sub nsw <4 x i32> %wide.load, %broadcast.splat
  %i.kd = sub nsw <4 x i32> %wide.load405, %broadcast.splat
  store <4 x i32> %i.kc, ptr %i.ka, align 4, !tbaa !8, !alias.scope !48, !noalias !47
  store <4 x i32> %i.kd, ptr %i.kb, align 4, !tbaa !8, !alias.scope !48, !noalias !47
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ke = icmp eq i64 %index.next, %n.vec
  br i1 %i.ke, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph332.preheader469

.lr.ph332.preheader469:                           ; preds = %vector.memcheck, %.lr.ph332.preheader, %middle.block
  %indvars.iv351.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph332.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter490 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod491.not = icmp eq i64 %xtraiter490, 0
  br i1 %lcmp.mod491.not, label %.lr.ph332.prol.loopexit, label %.lr.ph332.prol

.lr.ph332.prol:                                   ; preds = %.lr.ph332.preheader469, %.lr.ph332.prol
  %indvars.iv351.prol = phi i64 [ %indvars.iv.next352.prol, %.lr.ph332.prol ], [ %indvars.iv351.ph, %.lr.ph332.preheader469 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph332.prol ], [ 0, %.lr.ph332.preheader469 ]
  %i.kf = load i32, ptr %i.jj, align 8, !tbaa !8
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv351.prol ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !8
  %i.ki = sub nsw i32 %i.kh, %i.kf
  store i32 %i.ki, ptr %i.kg, align 4, !tbaa !8
  %indvars.iv.next352.prol = add nuw nsw i64 %indvars.iv351.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter490
  br i1 %prol.iter.cmp.not, label %.lr.ph332.prol.loopexit, label %.lr.ph332.prol, !llvm.loop !19

.lr.ph332.prol.loopexit:                          ; preds = %.lr.ph332.prol, %.lr.ph332.preheader469
  %indvars.iv351.unr = phi i64 [ %indvars.iv351.ph, %.lr.ph332.preheader469 ], [ %indvars.iv.next352.prol, %.lr.ph332.prol ]
  %i.kj = sub nsw i64 %indvars.iv351.ph, %wide.trip.count
  %i.kk = icmp ugt i64 %i.kj, -4
  br i1 %i.kk, label %.loopexit, label %.lr.ph332

.lr.ph332:                                        ; preds = %.lr.ph332.prol.loopexit, %.lr.ph332
  %indvars.iv351 = phi i64 [ %indvars.iv.next352.3, %.lr.ph332 ], [ %indvars.iv351.unr, %.lr.ph332.prol.loopexit ] ; 5 uses
  %i.kl = load i32, ptr %i.jj, align 8, !tbaa !8
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv351 ; 2 uses
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !8
  %i.ko = sub nsw i32 %i.kn, %i.kl
  store i32 %i.ko, ptr %i.km, align 4, !tbaa !8
  %i.kp = load i32, ptr %i.jj, align 8, !tbaa !8
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv351
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 4 ; 2 uses
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !8
  %i.kt = sub nsw i32 %i.ks, %i.kp
  store i32 %i.kt, ptr %i.kr, align 4, !tbaa !8
  %i.ku = load i32, ptr %i.jj, align 8, !tbaa !8
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv351
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8 ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !8
  %i.ky = sub nsw i32 %i.kx, %i.ku
  store i32 %i.ky, ptr %i.kw, align 4, !tbaa !8
  %i.kz = load i32, ptr %i.jj, align 8, !tbaa !8
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv351
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 12 ; 2 uses
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !8
  %i.ld = sub nsw i32 %i.lc, %i.kz
  store i32 %i.ld, ptr %i.lb, align 4, !tbaa !8
  %indvars.iv.next352.3 = add nuw nsw i64 %indvars.iv351, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next352.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph332, !llvm.loop !20

.loopexit:                                        ; preds = %.lr.ph332.prol.loopexit, %.lr.ph332, %middle.block, %bb.ao, %.loopexit322
  %i.le = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  store i32 %i.iv, ptr %i.le, align 4, !tbaa !37
  %i.lf = tail call ptr @cs_scc(ptr noundef nonnull %i.im) #5 ; 5 uses
  %.not225 = icmp eq ptr %i.lf, null
  br i1 %.not225, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.loopexit
  %i.lg = tail call ptr @cs_ddone(ptr noundef nonnull %i.h, ptr noundef nonnull %i.im, ptr noundef null, i32 noundef 0) #5
  br label %bb.at

bb.aq:                                            ; preds = %.loopexit
  %i.lh = load ptr, ptr %i.lf, align 8, !tbaa !40 ; 6 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !42 ; 7 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lf, i64 32
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !52 ; 3 uses
  %i.lm = icmp sgt i32 %i.iv, 0
  br i1 %i.lm, label %.lr.ph335.preheader, label %._crit_edge342

.lr.ph335.preheader:                              ; preds = %bb.aq
  %wide.trip.count357 = zext nneg i32 %i.iv to i64 ; 9 uses
  %i.ln = add nsw i64 %wide.trip.count357, -1     ; 4 uses
  %xtraiter492 = and i64 %wide.trip.count357, 1
  %i.lo = icmp eq i64 %i.ln, 0
  br i1 %i.lo, label %.lr.ph335.epil.preheader, label %.lr.ph335.preheader.new

.lr.ph335.preheader.new:                          ; preds = %.lr.ph335.preheader
  %unroll_iter495 = and i64 %wide.trip.count357, 2147483646
  br label %.lr.ph335

.lr.ph337.preheader.unr-lcssa:                    ; preds = %.lr.ph335
  %lcmp.mod493.not = icmp eq i64 %xtraiter492, 0
  br i1 %lcmp.mod493.not, label %.lr.ph337.preheader, label %.lr.ph335.epil.preheader

.lr.ph335.epil.preheader:                         ; preds = %.lr.ph337.preheader.unr-lcssa, %.lr.ph335.preheader
  %indvars.iv354.epil.init = phi i64 [ 0, %.lr.ph335.preheader ], [ %indvars.iv.next355.1, %.lr.ph337.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod494 = trunc i32 %i.iv to i1
  tail call void @llvm.assume(i1 %lcmp.mod494)
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv354.epil.init
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !8
  %i.lr = load i32, ptr %i.it, align 8, !tbaa !8
  %i.ls = add nsw i32 %i.lr, %i.lq
  %i.lt = sext i32 %i.ls to i64
  %i.lu = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.lt
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !8
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv354.epil.init
  store i32 %i.lv, ptr %i.lw, align 4, !tbaa !8
  br label %.lr.ph337.preheader

.lr.ph337.preheader:                              ; preds = %.lr.ph337.preheader.unr-lcssa, %.lr.ph335.epil.preheader
  %xtraiter497 = and i64 %wide.trip.count357, 1
  %i.lx = icmp eq i64 %i.ln, 0
  br i1 %i.lx, label %.lr.ph337.epil.preheader, label %.lr.ph337.preheader.new

.lr.ph337.preheader.new:                          ; preds = %.lr.ph337.preheader
  %unroll_iter500 = and i64 %wide.trip.count357, 2147483646
  br label %.lr.ph337

.lr.ph335:                                        ; preds = %.lr.ph335, %.lr.ph335.preheader.new
  %indvars.iv354 = phi i64 [ 0, %.lr.ph335.preheader.new ], [ %indvars.iv.next355.1, %.lr.ph335 ] ; 4 uses
  %niter496 = phi i64 [ 0, %.lr.ph335.preheader.new ], [ %niter496.next.1, %.lr.ph335 ]
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv354
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !8
  %i.ma = load i32, ptr %i.it, align 8, !tbaa !8
  %i.mb = add nsw i32 %i.ma, %i.lz
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.mc
  %i.me = load i32, ptr %i.md, align 4, !tbaa !8
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv354
  store i32 %i.me, ptr %i.mf, align 4, !tbaa !8
  %indvars.iv.next355 = or disjoint i64 %indvars.iv354, 1 ; 2 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.next355
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !8
  %i.mi = load i32, ptr %i.it, align 8, !tbaa !8
  %i.mj = add nsw i32 %i.mi, %i.mh
  %i.mk = sext i32 %i.mj to i64
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.mk
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !8
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next355
  store i32 %i.mm, ptr %i.mn, align 4, !tbaa !8
  %indvars.iv.next355.1 = add nuw nsw i64 %indvars.iv354, 2 ; 2 uses
end_hunk_0

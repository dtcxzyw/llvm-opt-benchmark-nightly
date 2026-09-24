Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcUtil?download=true
inline.NumInlined: 908
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 29
begin_hunk_0_@Abc_NtkATMap:bb.a
  %i.ks = icmp sgt i32 %.val.i278, 0
  br i1 %i.ks, label %.lr.ph.i279, label %Vec_IntSum.exit291

.lr.ph.i279:                                      ; preds = %bb.bb
  %i.kt = getelementptr i8, ptr %i.ek, i64 -8     ; 2 uses
  %i.ku = zext nneg i32 %.val.i278 to i64
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bf, %.lr.ph.i279
  %indvars.iv.i280 = phi i64 [ %i.ku, %.lr.ph.i279 ], [ %indvars.iv.next.i281, %bb.bf ] ; 2 uses
  %indvars.iv.next.i281 = add nsw i64 %indvars.iv.i280, -1 ; 2 uses
  %.val7.i282 = load ptr, ptr %i.kt, align 8, !tbaa !65
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %.val7.i282, i64 %indvars.iv.next.i281
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !54 ; 2 uses
  %i.kx = icmp eq i32 %i.kw, 0
  br i1 %i.kx, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ky = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52) ; 0 uses
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.kz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef %i.kw) ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.la = icmp samesign ugt i64 %indvars.iv.i280, 1
  br i1 %i.la, label %bb.bc, label %Abc_PrintAT.exit283, !llvm.loop !5

Abc_PrintAT.exit283:                              ; preds = %bb.bf
  %.pr372 = load i32, ptr %i.eu, align 4, !tbaa !59 ; 3 uses
  %i.lb = icmp sgt i32 %.pr372, 0
  br i1 %i.lb, label %.lr.ph.i285, label %Vec_IntSum.exit291

.lr.ph.i285:                                      ; preds = %Abc_PrintAT.exit283
  %i.lc = load ptr, ptr %i.kt, align 8, !tbaa !65 ; 2 uses
  %wide.trip.count.i286 = zext nneg i32 %.pr372 to i64 ; 3 uses
  %min.iters.check670 = icmp ult i32 %.pr372, 8
  br i1 %min.iters.check670, label %scalar.ph669.preheader, label %vector.ph671

vector.ph671:                                     ; preds = %.lr.ph.i285
  %n.vec672 = and i64 %wide.trip.count.i286, 2147483640 ; 3 uses
  br label %vector.body673

vector.body673:                                   ; preds = %vector.body673, %vector.ph671
  %index674 = phi i64 [ 0, %vector.ph671 ], [ %index.next679, %vector.body673 ] ; 2 uses
  %vec.phi675 = phi <4 x i32> [ zeroinitializer, %vector.ph671 ], [ %i.lf, %vector.body673 ]
  %vec.phi676 = phi <4 x i32> [ zeroinitializer, %vector.ph671 ], [ %i.lg, %vector.body673 ]
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %index674 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %wide.load677 = load <4 x i32>, ptr %i.ld, align 4, !tbaa !54
  %wide.load678 = load <4 x i32>, ptr %i.le, align 4, !tbaa !54
  %i.lf = add <4 x i32> %wide.load677, %vec.phi675 ; 2 uses
  %i.lg = add <4 x i32> %wide.load678, %vec.phi676 ; 2 uses
  %index.next679 = add nuw i64 %index674, 8       ; 2 uses
  %i.lh = icmp eq i64 %index.next679, %n.vec672
  br i1 %i.lh, label %middle.block680, label %vector.body673, !llvm.loop !316

middle.block680:                                  ; preds = %vector.body673
  %bin.rdx = add <4 x i32> %i.lg, %i.lf
  %i.li = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n681 = icmp eq i64 %n.vec672, %wide.trip.count.i286
  br i1 %cmp.n681, label %Vec_IntSum.exit291, label %scalar.ph669.preheader

scalar.ph669.preheader:                           ; preds = %.lr.ph.i285, %middle.block680
  %indvars.iv.i287.ph = phi i64 [ 0, %.lr.ph.i285 ], [ %n.vec672, %middle.block680 ]
  %.08.i288.ph = phi i32 [ 0, %.lr.ph.i285 ], [ %i.li, %middle.block680 ]
  br label %scalar.ph669

scalar.ph669:                                     ; preds = %scalar.ph669.preheader, %scalar.ph669
  %indvars.iv.i287 = phi i64 [ %indvars.iv.next.i289, %scalar.ph669 ], [ %indvars.iv.i287.ph, %scalar.ph669.preheader ] ; 2 uses
  %.08.i288 = phi i32 [ %i.ll, %scalar.ph669 ], [ %.08.i288.ph, %scalar.ph669.preheader ]
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv.i287
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !54
  %i.ll = add nsw i32 %i.lk, %.08.i288            ; 2 uses
  %indvars.iv.next.i289 = add nuw nsw i64 %indvars.iv.i287, 1 ; 2 uses
  %exitcond.not.i290 = icmp eq i64 %indvars.iv.next.i289, %wide.trip.count.i286
  br i1 %exitcond.not.i290, label %Vec_IntSum.exit291, label %scalar.ph669, !llvm.loop !317

Vec_IntSum.exit291:                               ; preds = %scalar.ph669, %middle.block680, %bb.bb, %Abc_PrintAT.exit283
  %.0.lcssa.i284 = phi i32 [ 0, %Abc_PrintAT.exit283 ], [ 0, %bb.bb ], [ %i.li, %middle.block680 ], [ %i.ll, %scalar.ph669 ]
  %i.lm = load i32, ptr %i.df, align 4, !tbaa !54
  %i.ln = mul nsw i32 %i.lm, %.0.lcssa.i284
  br label %.sink.split

bb.bg:                                            ; preds = %Abc_PrintAT.exit
  %i.lo = icmp eq i32 %.val.i273, 0
  br i1 %i.lo, label %Vec_IntFindMax.exit301, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.lp = load ptr, ptr %i.br, align 8, !tbaa !65 ; 3 uses
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !54 ; 3 uses
  %i.lr = icmp sgt i32 %.val.i273, 1
  br i1 %i.lr, label %.lr.ph.preheader.i293, label %Vec_IntFindMax.exit301

.lr.ph.preheader.i293:                            ; preds = %bb.bh
  %wide.trip.count.i294 = zext nneg i32 %.val.i273 to i64 ; 2 uses
  %i.ls = add nsw i64 %wide.trip.count.i294, -1   ; 2 uses
  %min.iters.check652 = icmp ult i32 %.val.i273, 9
  br i1 %min.iters.check652, label %.lr.ph.i295.preheader, label %vector.ph653

vector.ph653:                                     ; preds = %.lr.ph.preheader.i293
  %n.vec654 = and i64 %i.ls, -8                   ; 3 uses
  %i.lt = or disjoint i64 %n.vec654, 1
  %broadcast.splatinsert655 = insertelement <4 x i32> poison, i32 %i.lq, i64 0
  %broadcast.splat656 = shufflevector <4 x i32> %broadcast.splatinsert655, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body657

vector.body657:                                   ; preds = %vector.body657, %vector.ph653
  %index658 = phi i64 [ 0, %vector.ph653 ], [ %index.next663, %vector.body657 ] ; 2 uses
  %vec.phi659 = phi <4 x i32> [ %broadcast.splat656, %vector.ph653 ], [ %i.lx, %vector.body657 ]
  %vec.phi660 = phi <4 x i32> [ %broadcast.splat656, %vector.ph653 ], [ %i.ly, %vector.body657 ]
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %index658 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 20
  %wide.load661 = load <4 x i32>, ptr %i.lv, align 4, !tbaa !54
  %wide.load662 = load <4 x i32>, ptr %i.lw, align 4, !tbaa !54
  %i.lx = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi659, <4 x i32> %wide.load661) ; 2 uses
  %i.ly = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi660, <4 x i32> %wide.load662) ; 2 uses
  %index.next663 = add nuw i64 %index658, 8       ; 2 uses
  %i.lz = icmp eq i64 %index.next663, %n.vec654
  br i1 %i.lz, label %middle.block664, label %vector.body657, !llvm.loop !318

middle.block664:                                  ; preds = %vector.body657
  %rdx.minmax665 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.lx, <4 x i32> %i.ly)
  %i.ma = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax665) ; 2 uses
  %cmp.n666 = icmp eq i64 %i.ls, %n.vec654
  br i1 %cmp.n666, label %Vec_IntFindMax.exit301, label %.lr.ph.i295.preheader

.lr.ph.i295.preheader:                            ; preds = %.lr.ph.preheader.i293, %middle.block664
  %indvars.iv.i296.ph = phi i64 [ 1, %.lr.ph.preheader.i293 ], [ %i.lt, %middle.block664 ]
  %.015.i297.ph = phi i32 [ %i.lq, %.lr.ph.preheader.i293 ], [ %i.ma, %middle.block664 ]
  br label %.lr.ph.i295

.lr.ph.i295:                                      ; preds = %.lr.ph.i295.preheader, %.lr.ph.i295
  %indvars.iv.i296 = phi i64 [ %indvars.iv.next.i299, %.lr.ph.i295 ], [ %indvars.iv.i296.ph, %.lr.ph.i295.preheader ] ; 2 uses
  %.015.i297 = phi i32 [ %spec.select.i298, %.lr.ph.i295 ], [ %.015.i297.ph, %.lr.ph.i295.preheader ]
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %indvars.iv.i296
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !54
  %spec.select.i298 = call i32 @llvm.smax.i32(i32 %.015.i297, i32 %i.mc) ; 2 uses
  %indvars.iv.next.i299 = add nuw nsw i64 %indvars.iv.i296, 1 ; 2 uses
  %exitcond.not.i300 = icmp eq i64 %indvars.iv.next.i299, %wide.trip.count.i294
  br i1 %exitcond.not.i300, label %Vec_IntFindMax.exit301, label %.lr.ph.i295, !llvm.loop !319

Vec_IntFindMax.exit301:                           ; preds = %.lr.ph.i295, %middle.block664, %bb.bg, %bb.bh
  %.012.i292 = phi i32 [ 0, %bb.bg ], [ %i.lq, %bb.bh ], [ %i.ma, %middle.block664 ], [ %spec.select.i298, %.lr.ph.i295 ]
  %.not198 = icmp sgt i32 %.012.i292, %2
  br i1 %.not198, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %Vec_IntFindMax.exit301
  %i.md = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.65, i32 noundef %2) ; 0 uses
  br i1 %.not485, label %._crit_edge449, label %.lr.ph436

.lr.ph436:                                        ; preds = %bb.bi
  %.val210 = load ptr, ptr %i.br, align 8, !tbaa !65
  br label %bb.bj

bb.bj:                                            ; preds = %.lr.ph436, %bb.bk
  %indvars.iv526 = phi i64 [ 0, %.lr.ph436 ], [ %indvars.iv.next527, %bb.bk ] ; 3 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %.val210, i64 %indvars.iv526
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !54
  %i.mg = icmp sgt i32 %i.mf, 1
  br i1 %i.mg, label %._crit_edge437, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %indvars.iv.next527 = add nuw nsw i64 %indvars.iv526, 1 ; 2 uses
  %exitcond530.not = icmp eq i64 %indvars.iv.next527, %wide.trip.count.i217
  br i1 %exitcond530.not, label %.preheader390, label %bb.bj, !llvm.loop !320

._crit_edge437:                                   ; preds = %bb.bj
  %i.mh = trunc nuw nsw i64 %indvars.iv526 to i32 ; 5 uses
  %.not199.not442 = icmp sgt i32 %.09.i, %i.mh
  br i1 %.not199.not442, label %.lr.ph445, label %.preheader390

.preheader390.loopexit:                           ; preds = %.lr.ph445
  %i.mi = add nsw i32 %i.mh, -1
  br label %.preheader390

.preheader390:                                    ; preds = %bb.bk, %.preheader390.loopexit, %._crit_edge437
  %.4174.lcssa593 = phi i32 [ %i.mh, %._crit_edge437 ], [ %i.mh, %.preheader390.loopexit ], [ %.09.i, %bb.bk ] ; 2 uses
  %.7.lcssa = phi i32 [ %.7441, %._crit_edge437 ], [ %i.mi, %.preheader390.loopexit ], [ %.7441, %bb.bk ] ; 2 uses
  %i.mj = icmp sgt i32 %.7.lcssa, -1
  br i1 %i.mj, label %.lr.ph448, label %._crit_edge449

.lr.ph445:                                        ; preds = %._crit_edge437, %.lr.ph445
  %.7443 = phi i32 [ %.7, %.lr.ph445 ], [ %.7441, %._crit_edge437 ] ; 2 uses
  %i.mk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef 1) ; 0 uses
  %.7 = add nsw i32 %.7443, -1
  %.not199.not = icmp sgt i32 %.7443, %i.mh
  br i1 %.not199.not, label %.lr.ph445, label %.preheader390.loopexit, !llvm.loop !321

.lr.ph448:                                        ; preds = %.preheader390, %.lr.ph448
  %.8447 = phi i32 [ %i.mm, %.lr.ph448 ], [ %.7.lcssa, %.preheader390 ] ; 2 uses
  %i.ml = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52) ; 0 uses
  %i.mm = add nsw i32 %.8447, -1
  %.not620 = icmp eq i32 %.8447, 0
  br i1 %.not620, label %._crit_edge449, label %.lr.ph448, !llvm.loop !322

._crit_edge449:                                   ; preds = %.lr.ph448, %bb.bi, %.preheader390
  %.4174.lcssa593607 = phi i32 [ %.4174.lcssa593, %.preheader390 ], [ 0, %bb.bi ], [ %.4174.lcssa593, %.lr.ph448 ]
  %i.mn = sub nuw nsw i32 %.09.i, %.4174.lcssa593607
  %i.mo = shl nuw nsw i32 %i.mn, %i.cv
  br label %.sink.split

.sink.split:                                      ; preds = %Vec_IntSum.exit291, %._crit_edge449
  %.sink = phi i32 [ %i.mo, %._crit_edge449 ], [ %i.ln, %Vec_IntSum.exit291 ]
  %i.mp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.64, i32 noundef %.sink) ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %.sink.split, %Vec_IntFindMax.exit301
  %putchar200 = call i32 @putchar(i32 10)         ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.critedge
  %.2359 = phi i32 [ %.2358364, %bb.bl ], [ %.0.lcssa, %.critedge ]
  %.2158357 = phi i32 [ %.2158356366, %bb.bl ], [ %i.ja, %.critedge ] ; 3 uses
  %.3355 = phi i32 [ %.3354368, %bb.bl ], [ %.1160.lcssa, %.critedge ] ; 2 uses
  %.2165 = phi i32 [ %i.kh, %bb.bl ], [ %.1164453, %.critedge ] ; 3 uses
  %.not201 = icmp eq i32 %.2359, 0
  br i1 %.not201, label %.thread373, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  br i1 %.not203, label %select.unfold, label %.thread595

.thread373:                                       ; preds = %.critedge.thread, %Vec_IntFindMax.exit272, %bb.bm
  %.2165386 = phi i32 [ %.2165, %bb.bm ], [ %.1164453, %Vec_IntFindMax.exit272 ], [ %.1164453, %.critedge.thread ] ; 2 uses
  %.3355382 = phi i32 [ %.3355, %bb.bm ], [ %.3354369, %Vec_IntFindMax.exit272 ], [ 1, %.critedge.thread ]
  %.2158357381 = phi i32 [ %.2158357, %bb.bm ], [ %.2158356367, %Vec_IntFindMax.exit272 ], [ %.1157454, %.critedge.thread ] ; 2 uses
  %i.mq = load i32, ptr %i.bp, align 4, !tbaa !59 ; 4 uses
  %i.mr = icmp eq i32 %i.mq, 0
  br i1 %i.mr, label %Vec_IntFindMax.exit311, label %bb.bo

bb.bo:                                            ; preds = %.thread373
  %i.ms = load ptr, ptr %i.br, align 8, !tbaa !65 ; 3 uses
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !54 ; 3 uses
  %i.mu = icmp sgt i32 %i.mq, 1
  br i1 %i.mu, label %.lr.ph.preheader.i303, label %Vec_IntFindMax.exit311

.lr.ph.preheader.i303:                            ; preds = %bb.bo
  %wide.trip.count.i304 = zext nneg i32 %i.mq to i64 ; 2 uses
  %i.mv = add nsw i64 %wide.trip.count.i304, -1   ; 2 uses
  %min.iters.check637 = icmp ult i32 %i.mq, 9
  br i1 %min.iters.check637, label %.lr.ph.i305.preheader, label %vector.ph638

vector.ph638:                                     ; preds = %.lr.ph.preheader.i303
  %n.vec639 = and i64 %i.mv, -8                   ; 3 uses
  %i.mw = or disjoint i64 %n.vec639, 1
  %broadcast.splatinsert640 = insertelement <4 x i32> poison, i32 %i.mt, i64 0
  %broadcast.splat641 = shufflevector <4 x i32> %broadcast.splatinsert640, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body642

vector.body642:                                   ; preds = %vector.body642, %vector.ph638
  %index643 = phi i64 [ 0, %vector.ph638 ], [ %index.next647, %vector.body642 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat641, %vector.ph638 ], [ %i.na, %vector.body642 ]
  %vec.phi644 = phi <4 x i32> [ %broadcast.splat641, %vector.ph638 ], [ %i.nb, %vector.body642 ]
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %index643 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 4
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 20
  %wide.load645 = load <4 x i32>, ptr %i.my, align 4, !tbaa !54
  %wide.load646 = load <4 x i32>, ptr %i.mz, align 4, !tbaa !54
  %i.na = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load645) ; 2 uses
  %i.nb = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi644, <4 x i32> %wide.load646) ; 2 uses
  %index.next647 = add nuw i64 %index643, 8       ; 2 uses
  %i.nc = icmp eq i64 %index.next647, %n.vec639
  br i1 %i.nc, label %middle.block648, label %vector.body642, !llvm.loop !323

middle.block648:                                  ; preds = %vector.body642
  %rdx.minmax = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.na, <4 x i32> %i.nb)
  %i.nd = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n649 = icmp eq i64 %i.mv, %n.vec639
  br i1 %cmp.n649, label %Vec_IntFindMax.exit311, label %.lr.ph.i305.preheader

.lr.ph.i305.preheader:                            ; preds = %.lr.ph.preheader.i303, %middle.block648
  %indvars.iv.i306.ph = phi i64 [ 1, %.lr.ph.preheader.i303 ], [ %i.mw, %middle.block648 ]
  %.015.i307.ph = phi i32 [ %i.mt, %.lr.ph.preheader.i303 ], [ %i.nd, %middle.block648 ]
  br label %.lr.ph.i305

.lr.ph.i305:                                      ; preds = %.lr.ph.i305.preheader, %.lr.ph.i305
  %indvars.iv.i306 = phi i64 [ %indvars.iv.next.i309, %.lr.ph.i305 ], [ %indvars.iv.i306.ph, %.lr.ph.i305.preheader ] ; 2 uses
  %.015.i307 = phi i32 [ %spec.select.i308, %.lr.ph.i305 ], [ %.015.i307.ph, %.lr.ph.i305.preheader ]
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %indvars.iv.i306
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !54
  %spec.select.i308 = call i32 @llvm.smax.i32(i32 %.015.i307, i32 %i.nf) ; 2 uses
  %indvars.iv.next.i309 = add nuw nsw i64 %indvars.iv.i306, 1 ; 2 uses
  %exitcond.not.i310 = icmp eq i64 %indvars.iv.next.i309, %wide.trip.count.i304
  br i1 %exitcond.not.i310, label %Vec_IntFindMax.exit311, label %.lr.ph.i305, !llvm.loop !324

Vec_IntFindMax.exit311:                           ; preds = %.lr.ph.i305, %middle.block648, %.thread373, %bb.bo
  %.012.i302 = phi i32 [ 0, %.thread373 ], [ %i.mt, %bb.bo ], [ %i.nd, %middle.block648 ], [ %spec.select.i308, %.lr.ph.i305 ]
  %.not202 = icmp sgt i32 %.012.i302, %2
  br i1 %.not202, label %select.unfold, label %.thread595

select.unfold:                                    ; preds = %Vec_IntFindMax.exit311, %bb.bn
  %.2165385 = phi i32 [ %.2165, %bb.bn ], [ %.2165386, %Vec_IntFindMax.exit311 ] ; 2 uses
  %.2158357380 = phi i32 [ %.2158357, %bb.bn ], [ %.2158357381, %Vec_IntFindMax.exit311 ] ; 2 uses
  %.4 = phi i32 [ %.3355, %bb.bn ], [ %.3355382, %Vec_IntFindMax.exit311 ]
  %.not195 = icmp eq i32 %.4, 0
  br i1 %.not195, label %bb.f, label %.thread595, !llvm.loop !325

.thread595:                                       ; preds = %Vec_IntFindMax.exit311, %bb.bn, %select.unfold
  %.2168603 = phi i32 [ %.0166455, %select.unfold ], [ %4, %Vec_IntFindMax.exit311 ], [ -1, %bb.bn ]
  %.2158357380602 = phi i32 [ %.2158357380, %select.unfold ], [ %.2158357381, %Vec_IntFindMax.exit311 ], [ %.2158357, %bb.bn ] ; 2 uses
  %.2165385601 = phi i32 [ %.2165385, %select.unfold ], [ %.2165386, %Vec_IntFindMax.exit311 ], [ %.2165, %bb.bn ] ; 2 uses
  %i.ng = add nsw i32 %.2168603, 1                ; 2 uses
  %i.nh = icmp slt i32 %i.ng, %4
  br i1 %i.nh, label %.preheader392, label %._crit_edge458, !llvm.loop !326

._crit_edge458:                                   ; preds = %.thread595, %bb.e
  %i.ni = phi i32 [ %.09.i, %bb.e ], [ %.val.i241, %.thread595 ] ; 7 uses
  %.0163.lcssa = phi i32 [ 0, %bb.e ], [ %.2165385601, %.thread595 ]
  %.0156.lcssa = phi i32 [ 0, %bb.e ], [ %.2158357380602, %.thread595 ]
  %i.nj = icmp eq i32 %i.ni, 0                    ; 2 uses
  br i1 %i.nj, label %Vec_IntFindMax.exit321, label %bb.bp

bb.bp:                                            ; preds = %._crit_edge458
  %i.nk = load ptr, ptr %i.bj, align 8, !tbaa !65 ; 3 uses
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !54 ; 3 uses
  %i.nm = icmp sgt i32 %i.ni, 1
  br i1 %i.nm, label %.lr.ph.preheader.i313, label %Vec_IntFindMax.exit321

.lr.ph.preheader.i313:                            ; preds = %bb.bp
  %wide.trip.count.i314 = zext nneg i32 %i.ni to i64 ; 2 uses
  %i.nn = add nsw i64 %wide.trip.count.i314, -1   ; 2 uses
  %min.iters.check752 = icmp ult i32 %i.ni, 9
  br i1 %min.iters.check752, label %.lr.ph.i315.preheader, label %vector.ph753

vector.ph753:                                     ; preds = %.lr.ph.preheader.i313
  %n.vec754 = and i64 %i.nn, -8                   ; 3 uses
  %i.no = or disjoint i64 %n.vec754, 1
  %broadcast.splatinsert755 = insertelement <4 x i32> poison, i32 %i.nl, i64 0
  %broadcast.splat756 = shufflevector <4 x i32> %broadcast.splatinsert755, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body757

vector.body757:                                   ; preds = %vector.body757, %vector.ph753
  %index758 = phi i64 [ 0, %vector.ph753 ], [ %index.next763, %vector.body757 ] ; 2 uses
  %vec.phi759 = phi <4 x i32> [ %broadcast.splat756, %vector.ph753 ], [ %i.ns, %vector.body757 ]
  %vec.phi760 = phi <4 x i32> [ %broadcast.splat756, %vector.ph753 ], [ %i.nt, %vector.body757 ]
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %index758 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 4
  %i.nr = getelementptr inbounds nuw i8, ptr %i.np, i64 20
  %wide.load761 = load <4 x i32>, ptr %i.nq, align 4, !tbaa !54
  %wide.load762 = load <4 x i32>, ptr %i.nr, align 4, !tbaa !54
  %i.ns = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi759, <4 x i32> %wide.load761) ; 2 uses
  %i.nt = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi760, <4 x i32> %wide.load762) ; 2 uses
  %index.next763 = add nuw i64 %index758, 8       ; 2 uses
  %i.nu = icmp eq i64 %index.next763, %n.vec754
  br i1 %i.nu, label %middle.block764, label %vector.body757, !llvm.loop !327

middle.block764:                                  ; preds = %vector.body757
  %rdx.minmax765 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ns, <4 x i32> %i.nt)
  %i.nv = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax765) ; 2 uses
  %cmp.n766 = icmp eq i64 %i.nn, %n.vec754
  br i1 %cmp.n766, label %Vec_IntFindMax.exit321, label %.lr.ph.i315.preheader

.lr.ph.i315.preheader:                            ; preds = %.lr.ph.preheader.i313, %middle.block764
  %indvars.iv.i316.ph = phi i64 [ 1, %.lr.ph.preheader.i313 ], [ %i.no, %middle.block764 ]
  %.015.i317.ph = phi i32 [ %i.nl, %.lr.ph.preheader.i313 ], [ %i.nv, %middle.block764 ]
  br label %.lr.ph.i315

.lr.ph.i315:                                      ; preds = %.lr.ph.i315.preheader, %.lr.ph.i315
  %indvars.iv.i316 = phi i64 [ %indvars.iv.next.i319, %.lr.ph.i315 ], [ %indvars.iv.i316.ph, %.lr.ph.i315.preheader ] ; 2 uses
  %.015.i317 = phi i32 [ %spec.select.i318, %.lr.ph.i315 ], [ %.015.i317.ph, %.lr.ph.i315.preheader ]
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.i316
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !54
  %spec.select.i318 = call i32 @llvm.smax.i32(i32 %.015.i317, i32 %i.nx) ; 2 uses
  %indvars.iv.next.i319 = add nuw nsw i64 %indvars.iv.i316, 1 ; 2 uses
  %exitcond.not.i320 = icmp eq i64 %indvars.iv.next.i319, %wide.trip.count.i314
  br i1 %exitcond.not.i320, label %Vec_IntFindMax.exit321, label %.lr.ph.i315, !llvm.loop !328

Vec_IntFindMax.exit321:                           ; preds = %.lr.ph.i315, %middle.block764, %._crit_edge458, %bb.bp
  %.012.i312 = phi i32 [ 0, %._crit_edge458 ], [ %i.nl, %bb.bp ], [ %i.nv, %middle.block764 ], [ %spec.select.i318, %.lr.ph.i315 ]
  %i.ny = icmp sgt i32 %.012.i312, %2
  br i1 %i.ny, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %Vec_IntFindMax.exit321
  %puts191 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %bb.bv

bb.br:                                            ; preds = %Vec_IntFindMax.exit321
  br i1 %.not, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  br i1 %i.nj, label %Vec_IntFindMax.exit331, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.nz = load ptr, ptr %i.bj, align 8, !tbaa !65 ; 3 uses
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !54 ; 3 uses
  %i.ob = icmp sgt i32 %i.ni, 1
  br i1 %i.ob, label %.lr.ph.preheader.i323, label %Vec_IntFindMax.exit331

.lr.ph.preheader.i323:                            ; preds = %bb.bt
  %wide.trip.count.i324 = zext nneg i32 %i.ni to i64 ; 2 uses
  %i.oc = add nsw i64 %wide.trip.count.i324, -1   ; 2 uses
  %min.iters.check770 = icmp ult i32 %i.ni, 9
  br i1 %min.iters.check770, label %.lr.ph.i325.preheader, label %vector.ph771

vector.ph771:                                     ; preds = %.lr.ph.preheader.i323
  %n.vec772 = and i64 %i.oc, -8                   ; 3 uses
  %i.od = or disjoint i64 %n.vec772, 1
  %broadcast.splatinsert773 = insertelement <4 x i32> poison, i32 %i.oa, i64 0
  %broadcast.splat774 = shufflevector <4 x i32> %broadcast.splatinsert773, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body775

vector.body775:                                   ; preds = %vector.body775, %vector.ph771
  %index776 = phi i64 [ 0, %vector.ph771 ], [ %index.next781, %vector.body775 ] ; 2 uses
  %vec.phi777 = phi <4 x i32> [ %broadcast.splat774, %vector.ph771 ], [ %i.oh, %vector.body775 ]
  %vec.phi778 = phi <4 x i32> [ %broadcast.splat774, %vector.ph771 ], [ %i.oi, %vector.body775 ]
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %index776 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 4
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 20
  %wide.load779 = load <4 x i32>, ptr %i.of, align 4, !tbaa !54
  %wide.load780 = load <4 x i32>, ptr %i.og, align 4, !tbaa !54
  %i.oh = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi777, <4 x i32> %wide.load779) ; 2 uses
  %i.oi = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi778, <4 x i32> %wide.load780) ; 2 uses
  %index.next781 = add nuw i64 %index776, 8       ; 2 uses
  %i.oj = icmp eq i64 %index.next781, %n.vec772
  br i1 %i.oj, label %middle.block782, label %vector.body775, !llvm.loop !329

middle.block782:                                  ; preds = %vector.body775
  %rdx.minmax783 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.oh, <4 x i32> %i.oi)
  %i.ok = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax783) ; 2 uses
  %cmp.n784 = icmp eq i64 %i.oc, %n.vec772
  br i1 %cmp.n784, label %Vec_IntFindMax.exit331, label %.lr.ph.i325.preheader

.lr.ph.i325.preheader:                            ; preds = %.lr.ph.preheader.i323, %middle.block782
  %indvars.iv.i326.ph = phi i64 [ 1, %.lr.ph.preheader.i323 ], [ %i.od, %middle.block782 ]
  %.015.i327.ph = phi i32 [ %i.oa, %.lr.ph.preheader.i323 ], [ %i.ok, %middle.block782 ]
  br label %.lr.ph.i325

.lr.ph.i325:                                      ; preds = %.lr.ph.i325.preheader, %.lr.ph.i325
  %indvars.iv.i326 = phi i64 [ %indvars.iv.next.i329, %.lr.ph.i325 ], [ %indvars.iv.i326.ph, %.lr.ph.i325.preheader ] ; 2 uses
  %.015.i327 = phi i32 [ %spec.select.i328, %.lr.ph.i325 ], [ %.015.i327.ph, %.lr.ph.i325.preheader ]
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %indvars.iv.i326
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !54
  %spec.select.i328 = call i32 @llvm.smax.i32(i32 %.015.i327, i32 %i.om) ; 2 uses
  %indvars.iv.next.i329 = add nuw nsw i64 %indvars.iv.i326, 1 ; 2 uses
  %exitcond.not.i330 = icmp eq i64 %indvars.iv.next.i329, %wide.trip.count.i324
  br i1 %exitcond.not.i330, label %Vec_IntFindMax.exit331, label %.lr.ph.i325, !llvm.loop !330

Vec_IntFindMax.exit331:                           ; preds = %.lr.ph.i325, %middle.block782, %bb.bs, %bb.bt
  %.012.i322 = phi i32 [ 0, %bb.bs ], [ %i.oa, %bb.bt ], [ %i.ok, %middle.block782 ], [ %spec.select.i328, %.lr.ph.i325 ]
  %.not189 = icmp sgt i32 %.012.i322, %2
  br i1 %.not189, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %Vec_IntFindMax.exit331
  %i.on = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.62, i32 noundef %.0163.lcssa) ; 0 uses
  %.not487 = icmp eq i32 %.09.i, 0
  br i1 %.not487, label %._crit_edge464, label %.lr.ph463

.lr.ph463:                                        ; preds = %bb.bu, %.lr.ph463
  %.11.in461 = phi i32 [ %.11, %.lr.ph463 ], [ %.09.i, %bb.bu ] ; 2 uses
  %.11 = add nsw i32 %.11.in461, -1
  %i.oo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef 1) ; 0 uses
  %i.op = icmp sgt i32 %.11.in461, 1
  br i1 %i.op, label %.lr.ph463, label %._crit_edge464, !llvm.loop !331

._crit_edge464:                                   ; preds = %.lr.ph463, %bb.bu
  %putchar190 = call i32 @putchar(i32 10)         ; 0 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.br, %Vec_IntFindMax.exit331, %._crit_edge464, %bb.bq
  %i.oq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.67) ; 0 uses
  br i1 %i.h, label %.lr.ph467.preheader, label %.preheader389

.lr.ph467.preheader:                              ; preds = %bb.bv
  %wide.trip.count534 = zext nneg i32 %4 to i64
  br label %.lr.ph467

.preheader389:                                    ; preds = %Vec_WecSum.exit, %bb.bv
  %.not488 = icmp eq i32 %.09.i, 0
  br i1 %.not488, label %._crit_edge470, label %.lr.ph469

.lr.ph469:                                        ; preds = %.preheader389
  %.val209 = load ptr, ptr %i.bj, align 8, !tbaa !65
  %wide.trip.count539 = zext nneg i32 %.09.i to i64
  br label %bb.bx

.lr.ph467:                                        ; preds = %.lr.ph467.preheader, %Vec_WecSum.exit
  %indvars.iv531 = phi i64 [ 0, %.lr.ph467.preheader ], [ %indvars.iv.next532, %Vec_WecSum.exit ] ; 3 uses
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv531
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !340 ; 2 uses
  %i.ot = getelementptr i8, ptr %i.os, i64 4
  %.val8.i332 = load i32, ptr %i.ot, align 4, !tbaa !86 ; 2 uses
  %i.ou = icmp sgt i32 %.val8.i332, 0
  br i1 %i.ou, label %.lr.ph.i334, label %Vec_WecSum.exit

.lr.ph.i334:                                      ; preds = %.lr.ph467
  %i.ov = getelementptr i8, ptr %i.os, i64 8
  %.val.i335 = load ptr, ptr %i.ov, align 8, !tbaa !85
  %wide.trip.count.i336 = zext nneg i32 %.val8.i332 to i64
  br label %bb.bw

bb.bw:                                            ; preds = %Vec_IntSum.exit.i, %.lr.ph.i334
  %indvars.iv.i337 = phi i64 [ 0, %.lr.ph.i334 ], [ %indvars.iv.next.i338, %Vec_IntSum.exit.i ] ; 2 uses
  %.010.i = phi i32 [ 0, %.lr.ph.i334 ], [ %i.pl, %Vec_IntSum.exit.i ]
  %i.ow = getelementptr inbounds nuw [16 x i8], ptr %.val.i335, i64 %indvars.iv.i337 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 4
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !59 ; 3 uses
  %i.oz = icmp sgt i32 %i.oy, 0
  br i1 %i.oz, label %.lr.ph.i.i, label %Vec_IntSum.exit.i

.lr.ph.i.i:                                       ; preds = %bb.bw
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !65 ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.oy to i64 ; 3 uses
  %min.iters.check788 = icmp ult i32 %i.oy, 8
  br i1 %min.iters.check788, label %scalar.ph787.preheader, label %vector.ph789

vector.ph789:                                     ; preds = %.lr.ph.i.i
  %n.vec790 = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body791

vector.body791:                                   ; preds = %vector.body791, %vector.ph789
  %index792 = phi i64 [ 0, %vector.ph789 ], [ %index.next797, %vector.body791 ] ; 2 uses
  %vec.phi793 = phi <4 x i32> [ zeroinitializer, %vector.ph789 ], [ %i.pe, %vector.body791 ]
  %vec.phi794 = phi <4 x i32> [ zeroinitializer, %vector.ph789 ], [ %i.pf, %vector.body791 ]
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %index792 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %wide.load795 = load <4 x i32>, ptr %i.pc, align 4, !tbaa !54
  %wide.load796 = load <4 x i32>, ptr %i.pd, align 4, !tbaa !54
  %i.pe = add <4 x i32> %wide.load795, %vec.phi793 ; 2 uses
  %i.pf = add <4 x i32> %wide.load796, %vec.phi794 ; 2 uses
  %index.next797 = add nuw i64 %index792, 8       ; 2 uses
  %i.pg = icmp eq i64 %index.next797, %n.vec790
  br i1 %i.pg, label %middle.block798, label %vector.body791, !llvm.loop !332

middle.block798:                                  ; preds = %vector.body791
  %bin.rdx799 = add <4 x i32> %i.pf, %i.pe
  %i.ph = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx799) ; 2 uses
  %cmp.n800 = icmp eq i64 %n.vec790, %wide.trip.count.i.i
  br i1 %cmp.n800, label %Vec_IntSum.exit.i, label %scalar.ph787.preheader

scalar.ph787.preheader:                           ; preds = %.lr.ph.i.i, %middle.block798
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec790, %middle.block798 ]
  %.08.i.i.ph = phi i32 [ 0, %.lr.ph.i.i ], [ %i.ph, %middle.block798 ]
  br label %scalar.ph787

scalar.ph787:                                     ; preds = %scalar.ph787.preheader, %scalar.ph787
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph787 ], [ %indvars.iv.i.i.ph, %scalar.ph787.preheader ] ; 2 uses
  %.08.i.i = phi i32 [ %i.pk, %scalar.ph787 ], [ %.08.i.i.ph, %scalar.ph787.preheader ]
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %indvars.iv.i.i
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !54
  %i.pk = add nsw i32 %i.pj, %.08.i.i             ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %Vec_IntSum.exit.i, label %scalar.ph787, !llvm.loop !333

Vec_IntSum.exit.i:                                ; preds = %scalar.ph787, %middle.block798, %bb.bw
  %.0.lcssa.i.i = phi i32 [ 0, %bb.bw ], [ %i.ph, %middle.block798 ], [ %i.pk, %scalar.ph787 ]
  %i.pl = add nsw i32 %.0.lcssa.i.i, %.010.i      ; 2 uses
  %indvars.iv.next.i338 = add nuw nsw i64 %indvars.iv.i337, 1 ; 2 uses
  %exitcond.not.i339 = icmp eq i64 %indvars.iv.next.i338, %wide.trip.count.i336
  br i1 %exitcond.not.i339, label %Vec_WecSum.exit, label %bb.bw, !llvm.loop !334

Vec_WecSum.exit:                                  ; preds = %Vec_IntSum.exit.i, %.lr.ph467
  %.0.lcssa.i333 = phi i32 [ 0, %.lr.ph467 ], [ %i.pl, %Vec_IntSum.exit.i ]
  %i.pm = trunc nuw nsw i64 %indvars.iv531 to i32
  %i.pn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.68, i32 noundef %i.pm, i32 noundef %.0.lcssa.i333) ; 0 uses
  %indvars.iv.next532 = add nuw nsw i64 %indvars.iv531, 1 ; 2 uses
  %exitcond535.not = icmp eq i64 %indvars.iv.next532, %wide.trip.count534
  br i1 %exitcond535.not, label %.preheader389, label %.lr.ph467, !llvm.loop !335

bb.bx:                                            ; preds = %.lr.ph469, %bb.by
  %indvars.iv536 = phi i64 [ 0, %.lr.ph469 ], [ %indvars.iv.next537, %bb.by ] ; 3 uses
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %.val209, i64 %indvars.iv536
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !54
  %i.pq = icmp sgt i32 %i.pp, 1
  br i1 %i.pq, label %._crit_edge470.loopexit.split.loop.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %indvars.iv.next537 = add nuw nsw i64 %indvars.iv536, 1 ; 2 uses
  %exitcond540.not = icmp eq i64 %indvars.iv.next537, %wide.trip.count539
  br i1 %exitcond540.not, label %._crit_edge470, label %bb.bx, !llvm.loop !336

._crit_edge470.loopexit.split.loop.exit:          ; preds = %bb.bx
  %i.pr = trunc nuw nsw i64 %indvars.iv536 to i32
  br label %._crit_edge470

._crit_edge470:                                   ; preds = %bb.by, %._crit_edge470.loopexit.split.loop.exit, %.preheader389
  %.5.lcssa = phi i32 [ 0, %.preheader389 ], [ %i.pr, %._crit_edge470.loopexit.split.loop.exit ], [ %.09.i, %bb.by ]
  %i.ps = sub nuw nsw i32 %.09.i, %.5.lcssa
  %i.pt = icmp eq i32 %2, 4
  %i.pu = zext i1 %i.pt to i32
  %i.pv = shl nuw nsw i32 %i.ps, %i.pu            ; 2 uses
  %i.pw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.69, i32 noundef %2, i32 noundef %i.pv) ; 0 uses
  %i.px = add nsw i32 %i.pv, %.0156.lcssa
  %i.py = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.70, i32 noundef %i.px) ; 0 uses
  %i.pz = load ptr, ptr %i.bj, align 8, !tbaa !65 ; 2 uses
  %.not.i340 = icmp eq ptr %i.pz, null
  br i1 %.not.i340, label %Vec_IntFree.exit, label %bb.bz

.lr.ph476.preheader:                              ; preds = %Vec_IntFree.exit.2
  %wide.trip.count548 = zext nneg i32 %4 to i64
  br label %.lr.ph476

bb.bz:                                            ; preds = %._crit_edge470
  call void @free(ptr noundef nonnull %i.pz) #35
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge470, %bb.bz
  call void @free(ptr noundef nonnull %i.bg) #35
  %i.qa = load ptr, ptr %i.bn, align 8, !tbaa !65 ; 2 uses
  %.not.i340.1 = icmp eq ptr %i.qa, null
  br i1 %.not.i340.1, label %Vec_IntFree.exit.1, label %bb.ca

bb.ca:                                            ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.qa) #35
  br label %Vec_IntFree.exit.1

Vec_IntFree.exit.1:                               ; preds = %bb.ca, %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.bk) #35
  %i.qb = load ptr, ptr %i.br, align 8, !tbaa !65 ; 2 uses
  %.not.i340.2 = icmp eq ptr %i.qb, null
  br i1 %.not.i340.2, label %Vec_IntFree.exit.2, label %bb.cb

bb.cb:                                            ; preds = %Vec_IntFree.exit.1
  call void @free(ptr noundef nonnull %i.qb) #35
  br label %Vec_IntFree.exit.2

Vec_IntFree.exit.2:                               ; preds = %bb.cb, %Vec_IntFree.exit.1
  call void @free(ptr noundef nonnull %i.bo) #35
  br i1 %i.h, label %.lr.ph476.preheader, label %._crit_edge477

.lr.ph476:                                        ; preds = %.lr.ph476.preheader, %Vec_WecFree.exit
  %indvars.iv545 = phi i64 [ 0, %.lr.ph476.preheader ], [ %indvars.iv.next546, %Vec_WecFree.exit ] ; 2 uses
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv545
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !340 ; 4 uses
  %i.qe = load i32, ptr %i.qd, align 8, !tbaa !84 ; 2 uses
  %i.qf = icmp sgt i32 %i.qe, 0
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qd, i64 8 ; 2 uses
  %.pre.i.i341 = load ptr, ptr %i.qg, align 8, !tbaa !85 ; 3 uses
  br i1 %i.qf, label %.lr.ph.i.i343, label %._crit_edge.i.i

.lr.ph.i.i343:                                    ; preds = %.lr.ph476, %bb.cd
  %i.qh = phi i32 [ %i.qp, %bb.cd ], [ %i.qe, %.lr.ph476 ]
  %i.qi = phi ptr [ %i.qq, %bb.cd ], [ %.pre.i.i341, %.lr.ph476 ] ; 2 uses
  %indvars.iv.i.i344 = phi i64 [ %indvars.iv.next.i.i345, %bb.cd ], [ 0, %.lr.ph476 ] ; 3 uses
  %i.qj = getelementptr inbounds nuw [16 x i8], ptr %i.qi, i64 %indvars.iv.i.i344
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !65 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.ql, null
  br i1 %.not15.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph.i.i343
  call void @free(ptr noundef nonnull %i.ql) #35
  %i.qm = load ptr, ptr %i.qg, align 8, !tbaa !85 ; 2 uses
  %i.qn = getelementptr inbounds nuw [16 x i8], ptr %i.qm, i64 %indvars.iv.i.i344
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  store ptr null, ptr %i.qo, align 8, !tbaa !65
  %.pre18.i.i = load i32, ptr %i.qd, align 8, !tbaa !84
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %.lr.ph.i.i343
  %i.qp = phi i32 [ %.pre18.i.i, %bb.cc ], [ %i.qh, %.lr.ph.i.i343 ] ; 2 uses
  %i.qq = phi ptr [ %i.qm, %bb.cc ], [ %i.qi, %.lr.ph.i.i343 ] ; 2 uses
  %indvars.iv.next.i.i345 = add nuw nsw i64 %indvars.iv.i.i344, 1 ; 2 uses
  %i.qr = sext i32 %i.qp to i64
  %i.qs = icmp slt i64 %indvars.iv.next.i.i345, %i.qr
  br i1 %i.qs, label %.lr.ph.i.i343, label %._crit_edge.thread.i.i, !llvm.loop !337

._crit_edge.i.i:                                  ; preds = %.lr.ph476
  %.not.i.i342 = icmp eq ptr %.pre.i.i341, null
  br i1 %.not.i.i342, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.cd, %._crit_edge.i.i
  %i.qt = phi ptr [ %.pre.i.i341, %._crit_edge.i.i ], [ %i.qq, %bb.cd ]
  call void @free(ptr noundef nonnull %i.qt) #35
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  call void @free(ptr noundef nonnull %i.qd) #35
  %indvars.iv.next546 = add nuw nsw i64 %indvars.iv545, 1 ; 2 uses
  %exitcond549.not = icmp eq i64 %indvars.iv.next546, %wide.trip.count548
  br i1 %exitcond549.not, label %._crit_edge477, label %.lr.ph476, !llvm.loop !338

._crit_edge477:                                   ; preds = %Vec_WecFree.exit, %Vec_IntFree.exit.2
  %.not192 = icmp eq ptr %i.bu, null
  br i1 %.not192, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %._crit_edge477
  call void @free(ptr noundef nonnull %i.bu) #35
  br label %bb.cf

bb.cf:                                            ; preds = %._crit_edge477, %bb.ce
  br i1 %i.h, label %.lr.ph480.preheader, label %._crit_edge481

.lr.ph480.preheader:                              ; preds = %bb.cf
  %wide.trip.count553 = zext nneg i32 %4 to i64
  br label %.lr.ph480

.lr.ph480:                                        ; preds = %.lr.ph480.preheader, %bb.ch
  %indvars.iv550 = phi i64 [ 0, %.lr.ph480.preheader ], [ %indvars.iv.next551, %bb.ch ] ; 2 uses
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv550 ; 2 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !70 ; 2 uses
  %.not194 = icmp eq ptr %i.qv, null
  br i1 %.not194, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph480
  call void @free(ptr noundef nonnull %i.qv) #35
  store ptr null, ptr %i.qu, align 8, !tbaa !70
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.lr.ph480
  %indvars.iv.next551 = add nuw nsw i64 %indvars.iv550, 1 ; 2 uses
  %exitcond554.not = icmp eq i64 %indvars.iv.next551, %wide.trip.count553
  br i1 %exitcond554.not, label %._crit_edge481.thread, label %.lr.ph480, !llvm.loop !339

._crit_edge481:                                   ; preds = %bb.cf
  %.not193 = icmp eq ptr %i.g, null
  br i1 %.not193, label %bb.ci, label %._crit_edge481.thread

._crit_edge481.thread:                            ; preds = %bb.ch, %._crit_edge481
  call void @free(ptr noundef nonnull %i.g) #35
  br label %bb.ci

bb.ci:                                            ; preds = %._crit_edge481, %._crit_edge481.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.qw = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #35
  %i.qx = icmp slt i32 %i.qw, 0
  br i1 %i.qx, label %Abc_Clock.exit347, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.qy = load i64, ptr %7, align 8, !tbaa !78
  %i.qz = mul nsw i64 %i.qy, 1000000
  %i.ra = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !79
  %i.rc = sdiv i64 %i.rb, 1000
  %i.rd = add nsw i64 %i.rc, %i.qz
  br label %Abc_Clock.exit347

Abc_Clock.exit347:                                ; preds = %bb.ci, %bb.cj
  %.0.i346 = phi i64 [ %i.rd, %bb.cj ], [ -1, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.re = add i64 %.0.i346, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.71)
  %i.rf = sitofp i64 %i.re to double
  %i.rg = fdiv double %i.rf, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.73, double noundef %i.rg)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %Abc_Clock.exit347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #24

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #25

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #26

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @Gia_ManAppendObj(ptr nofree noundef captures(none) %0) unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !343  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !344
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.f = shl nsw i32 %i.b, 1
  %i.g = tail call range(i32 -2147483648, 536870913) i32 @llvm.smin.i32(i32 %i.f, i32 536870912) ; 6 uses
  %i.h = icmp eq i32 %i.b, 536870912
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  tail call void @exit(i32 noundef 1) #40
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.j = load i32, ptr %i.i, align 4, !tbaa !345
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, i32 noundef %i.b, i32 noundef %i.g) ; 0 uses
  br label %bb.f
end_hunk_0

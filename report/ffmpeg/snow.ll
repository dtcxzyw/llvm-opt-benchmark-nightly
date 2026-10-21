Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/snow?download=true
inline.NumInlined: 41
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@mc_block:bb.a
  %i.fr = mul nsw i32 %i.fq, %i.da
  %i.fs = add nsw i32 %i.fp, %i.fr
  %i.ft = add nuw nsw i32 %i.fk, %i.ep
  %i.fu = mul nsw i32 %i.ft, %i.dc
  %i.fv = add nsw i32 %i.fs, %i.fu                ; 2 uses
  %i.fw = trunc i32 %i.fv to i16
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %.0281339.us.us358, i64 %indvars.iv442
  store i16 %i.fw, ptr %i.fx, align 2, !tbaa !15
  %i.fy = add nsw i32 %i.fv, 32
  %i.fz = ashr i32 %i.fy, 6
  %i.ga = tail call i32 @llvm.smax.i32(i32 %i.fz, i32 0)
  %i.gb = tail call i32 @llvm.umin.i32(i32 %i.ga, i32 255)
  %i.gc = trunc nuw i32 %i.gb to i8
  %i.gd = getelementptr inbounds nuw i8, ptr %.0279342.us.us357, i64 %indvars.iv442
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !11
  %indvars.iv.next443 = add nuw nsw i64 %indvars.iv442, 1 ; 2 uses
  %exitcond446.not = icmp eq i64 %indvars.iv.next443, %wide.trip.count445
  br i1 %exitcond446.not, label %._crit_edge.split.split.us.us.us, label %scalar.ph561, !llvm.loop !86

._crit_edge.split.split.us.us.us:                 ; preds = %scalar.ph561, %middle.block582
  %i.ge = getelementptr inbounds nuw i8, ptr %.0281339.us.us358, i64 128
  %i.gf = getelementptr inbounds nuw i8, ptr %.0279342.us.us357, i64 64
  %i.gg = getelementptr inbounds i8, ptr %.0294335.us.us360, i64 %i.ad ; 2 uses
  %i.gh = add nuw nsw i32 %.0284338.us.us359, 1   ; 2 uses
  %exitcond448.not = icmp eq i32 %i.gh, %smax447
  br i1 %exitcond448.not, label %._crit_edge345, label %.preheader330.us.us356, !llvm.loop !84

.preheader330.us:                                 ; preds = %.preheader330.us.preheader, %._crit_edge.split.split.us351
  %.0279342.us = phi ptr [ %i.it, %._crit_edge.split.split.us351 ], [ %i.b, %.preheader330.us.preheader ] ; 3 uses
  %.0281339.us = phi ptr [ %i.is, %._crit_edge.split.split.us351 ], [ %i.a, %.preheader330.us.preheader ] ; 3 uses
  %.0284338.us = phi i32 [ %i.iv, %._crit_edge.split.split.us351 ], [ 0, %.preheader330.us.preheader ]
  %.0294335.us = phi ptr [ %i.iu, %._crit_edge.split.split.us351 ], [ %2, %.preheader330.us.preheader ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader330.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader330.us ] ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.0294335.us, i64 %index ; 6 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  %wide.load = load <8 x i8>, ptr %i.gj, align 1, !tbaa !11
  %i.gk = zext <8 x i8> %wide.load to <8 x i32>
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  %wide.load556 = load <8 x i8>, ptr %i.gl, align 1, !tbaa !11
  %i.gm = zext <8 x i8> %wide.load556 to <8 x i32>
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 3
  %wide.load557 = load <8 x i8>, ptr %i.gn, align 1, !tbaa !11
  %i.go = zext <8 x i8> %wide.load557 to <8 x i32>
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %wide.load558 = load <8 x i8>, ptr %i.gp, align 1, !tbaa !11
  %i.gq = zext <8 x i8> %wide.load558 to <8 x i32>
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gi, i64 5
  %wide.load559 = load <8 x i8>, ptr %i.gr, align 1, !tbaa !11
  %i.gs = zext <8 x i8> %wide.load559 to <8 x i32>
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gi, i64 6
  %wide.load560 = load <8 x i8>, ptr %i.gt, align 1, !tbaa !11
  %i.gu = zext <8 x i8> %wide.load560 to <8 x i32>
  %i.gv = add nuw nsw <8 x i32> %i.gq, %i.go
  %i.gw = mul nuw nsw <8 x i32> %i.gv, splat (i32 20)
  %i.gx = add nuw nsw <8 x i32> %i.gs, %i.gm
  %i.gy = mul nsw <8 x i32> %i.gx, splat (i32 -5)
  %i.gz = add nuw nsw <8 x i32> %i.gu, %i.gk
  %i.ha = add nuw nsw <8 x i32> %i.gz, %i.gw
  %i.hb = add nsw <8 x i32> %i.ha, %i.gy          ; 2 uses
  %i.hc = trunc nsw <8 x i32> %i.hb to <8 x i16>
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %.0281339.us, i64 %index
  store <8 x i16> %i.hc, ptr %i.hd, align 2, !tbaa !15
  %i.he = add nsw <8 x i32> %i.hb, splat (i32 16)
  %i.hf = ashr <8 x i32> %i.he, splat (i32 5)
  %i.hg = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.hf, <8 x i32> zeroinitializer)
  %i.hh = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.hg, <8 x i32> splat (i32 255))
  %i.hi = trunc nuw <8 x i32> %i.hh to <8 x i8>
  %i.hj = getelementptr inbounds nuw i8, ptr %.0279342.us, i64 %index
  store <8 x i8> %i.hi, ptr %i.hj, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hk = icmp eq i64 %index.next, %n.vec
  br i1 %i.hk, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.split.us351, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader330.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader330.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.0294335.us, i64 %indvars.iv ; 6 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 1
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !11
  %i.ho = zext i8 %i.hn to i32
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 2
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !11
  %i.hr = zext i8 %i.hq to i32
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hl, i64 3
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !11
  %i.hu = zext i8 %i.ht to i32
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !11
  %i.hx = zext i8 %i.hw to i32
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hl, i64 5
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !11
  %i.ia = zext i8 %i.hz to i32
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hl, i64 6
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !11
  %i.id = zext i8 %i.ic to i32
  %i.ie = add nuw nsw i32 %i.hx, %i.hu
  %i.if = mul nuw nsw i32 %i.ie, 20
  %i.ig = add nuw nsw i32 %i.ia, %i.hr
  %.neg319.us350 = mul nsw i32 %i.ig, -5
  %i.ih = add nuw nsw i32 %i.id, %i.ho
  %i.ii = add nuw nsw i32 %i.ih, %i.if
  %i.ij = add nsw i32 %i.ii, %.neg319.us350       ; 2 uses
  %i.ik = trunc nsw i32 %i.ij to i16
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %.0281339.us, i64 %indvars.iv
  store i16 %i.ik, ptr %i.il, align 2, !tbaa !15
  %i.im = add nsw i32 %i.ij, 16
  %i.in = ashr i32 %i.im, 5
  %i.io = tail call i32 @llvm.smax.i32(i32 %i.in, i32 0)
  %i.ip = tail call i32 @llvm.umin.i32(i32 %i.io, i32 255)
  %i.iq = trunc nuw i32 %i.ip to i8
  %i.ir = getelementptr inbounds nuw i8, ptr %.0279342.us, i64 %indvars.iv
  store i8 %i.iq, ptr %i.ir, align 1, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split.split.us351, label %scalar.ph, !llvm.loop !88

._crit_edge.split.split.us351:                    ; preds = %scalar.ph, %middle.block
  %i.is = getelementptr inbounds nuw i8, ptr %.0281339.us, i64 128
  %i.it = getelementptr inbounds nuw i8, ptr %.0279342.us, i64 64
  %i.iu = getelementptr inbounds i8, ptr %.0294335.us, i64 %i.ad ; 2 uses
  %i.iv = add nuw nsw i32 %.0284338.us, 1         ; 2 uses
  %exitcond441.not = icmp eq i32 %i.iv, %smax440
  br i1 %exitcond441.not, label %._crit_edge345, label %.preheader330.us, !llvm.loop !84

._crit_edge345:                                   ; preds = %._crit_edge.split.split.us351, %._crit_edge.split.split.us.us.us, %._crit_edge.split.us.us.us, %.preheader330.preheader, %.preheader331
  %.0294.lcssa = phi ptr [ %2, %.preheader331 ], [ %i.cs, %._crit_edge.split.us.us.us ], [ %i.gg, %._crit_edge.split.split.us.us.us ], [ %scevgep, %.preheader330.preheader ], [ %i.iu, %._crit_edge.split.split.us351 ]
  %.0284.lcssa = phi i32 [ 0, %.preheader331 ], [ %smax454, %._crit_edge.split.us.us.us ], [ %smax447, %._crit_edge.split.split.us.us.us ], [ %smax, %.preheader330.preheader ], [ %smax440, %._crit_edge.split.split.us351 ]
  %i.iw = mul nsw i32 %.0284.lcssa, %3
  %i.ix = sext i32 %i.iw to i64
  %i.iy = sub nsw i64 0, %i.ix
  %i.iz = getelementptr inbounds i8, ptr %.0294.lcssa, i64 %i.iy
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge345, %bb.c
  %.1295 = phi ptr [ %i.iz, %._crit_edge345 ], [ %2, %bb.c ] ; 14 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.1295, i64 3 ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.b, i64 2560 ; 6 uses
  %i.jc = and i32 %.0283, 2
  %.not304 = icmp eq i32 %i.jc, 0
  br i1 %.not304, label %bb.i, label %.preheader329

.preheader329:                                    ; preds = %bb.d
  %i.jd = icmp sgt i32 %5, 0
  br i1 %i.jd, label %.preheader328.lr.ph, label %._crit_edge372

.preheader328.lr.ph:                              ; preds = %.preheader329
  %.not314365 = icmp slt i32 %4, 0
  %i.je = shl i32 %3, 1                           ; 2 uses
  %i.jf = mul i32 %3, 3                           ; 2 uses
  %i.jg = shl i32 %3, 2                           ; 2 uses
  %i.jh = mul i32 %3, 5                           ; 2 uses
  %i.ji = mul i32 %3, 6                           ; 2 uses
  %i.jj = mul nsw i32 %3, 7
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 37140
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 37132
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 37133
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 37134
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 37135
  %i.jp = sext i32 %3 to i64                      ; 8 uses
  br i1 %.not314365, label %.preheader328.us.preheader, label %.preheader328.lr.ph.split

.preheader328.us.preheader:                       ; preds = %.preheader328.lr.ph
  %i.jq = zext nneg i32 %5 to i64
  %i.jr = mul nsw i64 %i.jq, %i.jp
  %i.js = getelementptr i8, ptr %.1295, i64 %i.jr
  %scevgep468 = getelementptr i8, ptr %i.js, i64 3
  br label %._crit_edge372

.preheader328.lr.ph.split:                        ; preds = %.preheader328.lr.ph
  br i1 %.not, label %.preheader328.us377.preheader, label %.preheader328.lr.ph.split.split

.preheader328.us377.preheader:                    ; preds = %.preheader328.lr.ph.split
  %i.jt = sext i32 %i.je to i64                   ; 3 uses
  %i.ju = sext i32 %i.jf to i64                   ; 3 uses
  %i.jv = sext i32 %i.jg to i64                   ; 3 uses
  %i.jw = sext i32 %i.jh to i64                   ; 3 uses
  %i.jx = sext i32 %i.ji to i64                   ; 3 uses
  %i.jy = add nuw i32 %4, 1
  %wide.trip.count465 = zext i32 %i.jy to i64     ; 13 uses
  %i.jz = add nsw i32 %5, -1
  %i.ka = zext i32 %i.jz to i64                   ; 2 uses
  %i.kb = shl nuw nsw i64 %i.ka, 6
  %i.kc = getelementptr i8, ptr %i.b, i64 %i.kb
  %i.kd = getelementptr i8, ptr %i.kc, i64 %wide.trip.count465
  %scevgep601 = getelementptr i8, ptr %i.kd, i64 2560 ; 3 uses
  %i.ke = getelementptr i8, ptr %.1295, i64 %i.jx
  %i.kf = mul nsw i64 %i.jp, %i.ka                ; 5 uses
  %i.kg = getelementptr i8, ptr %.1295, i64 %i.kf
  %i.kh = getelementptr i8, ptr %i.kg, i64 %i.jx
  %i.ki = getelementptr i8, ptr %i.kh, i64 %wide.trip.count465
  %i.kj = getelementptr i8, ptr %.1295, i64 %i.jw
  %8 = getelementptr i8, ptr %.1295, i64 %i.kf
  %i.kk = getelementptr i8, ptr %8, i64 %i.jw
  %i.kl = getelementptr i8, ptr %i.kk, i64 %wide.trip.count465
  %i.km = getelementptr i8, ptr %.1295, i64 %i.jv
  %9 = getelementptr i8, ptr %.1295, i64 %i.kf
  %10 = getelementptr i8, ptr %9, i64 %i.jv
  %11 = getelementptr i8, ptr %10, i64 %wide.trip.count465
  %i.kn = getelementptr i8, ptr %.1295, i64 %i.ju
  %12 = insertelement <4 x ptr> poison, ptr %i.ke, i64 0
  %13 = insertelement <4 x ptr> %12, ptr %i.kj, i64 1
  %14 = insertelement <4 x ptr> %13, ptr %i.km, i64 2
  %15 = insertelement <4 x ptr> %14, ptr %i.kn, i64 3
  %16 = getelementptr i8, <4 x ptr> %15, i64 3
  %17 = getelementptr i8, ptr %.1295, i64 %i.kf
  %18 = getelementptr i8, ptr %17, i64 %i.ju
  %i.ko = getelementptr i8, ptr %18, i64 %wide.trip.count465
  %19 = insertelement <4 x ptr> poison, ptr %i.ki, i64 0
  %20 = insertelement <4 x ptr> %19, ptr %i.kl, i64 1
  %21 = insertelement <4 x ptr> %20, ptr %11, i64 2
  %22 = insertelement <4 x ptr> %21, ptr %i.ko, i64 3
  %23 = getelementptr i8, <4 x ptr> %22, i64 3
  %i.kp = getelementptr i8, ptr %.1295, i64 %i.jt
  %scevgep610 = getelementptr i8, ptr %i.kp, i64 3
  %i.kq = getelementptr i8, ptr %.1295, i64 %i.kf
  %i.kr = getelementptr i8, ptr %i.kq, i64 %i.jt
  %i.ks = getelementptr i8, ptr %i.kr, i64 %wide.trip.count465
  %scevgep611 = getelementptr i8, ptr %i.ks, i64 3
  %i.kt = getelementptr i8, ptr %.1295, i64 %i.jp
  %scevgep612 = getelementptr i8, ptr %i.kt, i64 3
  %i.ku = zext nneg i32 %5 to i64
  %i.kv = mul nsw i64 %i.ku, %i.jp
  %i.kw = getelementptr i8, ptr %.1295, i64 %i.kv
  %i.kx = getelementptr i8, ptr %i.kw, i64 %wide.trip.count465
  %scevgep613 = getelementptr i8, ptr %i.kx, i64 3
  %i.ky = insertelement <4 x ptr> poison, ptr %i.jb, i64 0
  %i.kz = shufflevector <4 x ptr> %i.ky, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.la = insertelement <4 x ptr> poison, ptr %scevgep601, i64 0
  %i.lb = shufflevector <4 x ptr> %i.la, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check634 = icmp ult i32 %4, 3
  %i.lc = icmp ult <4 x ptr> %i.kz, %23
  %i.ld = icmp ult <4 x ptr> %16, %i.lb
  %stride.check = icmp slt i32 %3, 0
  %i.le = and <4 x i1> %i.lc, %i.ld
  %bound0625 = icmp ult ptr %i.jb, %scevgep611
  %bound1626 = icmp ult ptr %scevgep610, %scevgep601
  %found.conflict627 = and i1 %bound0625, %bound1626
  %bound0629 = icmp ult ptr %i.jb, %scevgep613
  %bound1630 = icmp ult ptr %scevgep612, %scevgep601
  %found.conflict631 = and i1 %bound0629, %bound1630
  %i.lf = bitcast <4 x i1> %i.le to i4
  %i.lg = icmp ne i4 %i.lf, 0
  %op.rdx845 = or i1 %i.lg, %found.conflict627
  %op.rdx846 = or i1 %found.conflict631, %stride.check
  %op.rdx847 = or i1 %op.rdx845, %op.rdx846
  %min.iters.check635 = icmp ult i32 %4, 15
  %i.lh = and i64 %wide.trip.count465, 12
  %n.vec637 = and i64 %wide.trip.count465, 4294967280 ; 4 uses
  %cmp.n648 = icmp eq i64 %n.vec637, %wide.trip.count465
  %min.epilog.iters.check = icmp eq i64 %i.lh, 0
  %n.vec649 = and i64 %wide.trip.count465, 4294967292 ; 3 uses
  %cmp.n658 = icmp eq i64 %n.vec649, %wide.trip.count465
  br label %iter.check

iter.check:                                       ; preds = %.preheader328.us377.preheader, %._crit_edge.split.us.us
  %.1280370.us378 = phi ptr [ %i.oh, %._crit_edge.split.us.us ], [ %i.jb, %.preheader328.us377.preheader ] ; 4 uses
  %.1285369.us379 = phi i32 [ %i.oi, %._crit_edge.split.us.us ], [ 0, %.preheader328.us377.preheader ]
  %.2296367.us380 = phi ptr [ %i.og, %._crit_edge.split.us.us ], [ %i.ja, %.preheader328.us377.preheader ] ; 7 uses
  %invariant.gep534 = getelementptr i8, ptr %.2296367.us380, i64 %i.jp ; 3 uses
  %invariant.gep536 = getelementptr i8, ptr %.2296367.us380, i64 %i.jt ; 3 uses
  %invariant.gep538 = getelementptr i8, ptr %.2296367.us380, i64 %i.ju ; 3 uses
  %invariant.gep540 = getelementptr i8, ptr %.2296367.us380, i64 %i.jv ; 3 uses
  %invariant.gep542 = getelementptr i8, ptr %.2296367.us380, i64 %i.jw ; 3 uses
  %invariant.gep544 = getelementptr i8, ptr %.2296367.us380, i64 %i.jx ; 3 uses
  %brmerge = select i1 %min.iters.check634, i1 true, i1 %op.rdx847
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check635, label %vec.epilog.ph, label %vector.body638

vector.body638:                                   ; preds = %vector.main.loop.iter.check, %vector.body638
  %index639 = phi i64 [ %index.next646, %vector.body638 ], [ 0, %vector.main.loop.iter.check ] ; 8 uses
  %i.li = getelementptr i8, ptr %invariant.gep534, i64 %index639
  %wide.load640 = load <16 x i8>, ptr %i.li, align 1, !tbaa !11, !alias.scope !130
  %i.lj = zext <16 x i8> %wide.load640 to <16 x i32>
  %i.lk = getelementptr i8, ptr %invariant.gep536, i64 %index639
  %wide.load641 = load <16 x i8>, ptr %i.lk, align 1, !tbaa !11, !alias.scope !131
  %i.ll = zext <16 x i8> %wide.load641 to <16 x i32>
  %i.lm = getelementptr i8, ptr %invariant.gep538, i64 %index639
  %wide.load642 = load <16 x i8>, ptr %i.lm, align 1, !tbaa !11, !alias.scope !132
  %i.ln = zext <16 x i8> %wide.load642 to <16 x i32>
  %i.lo = getelementptr i8, ptr %invariant.gep540, i64 %index639
  %wide.load643 = load <16 x i8>, ptr %i.lo, align 1, !tbaa !11, !alias.scope !133
  %i.lp = zext <16 x i8> %wide.load643 to <16 x i32>
  %i.lq = getelementptr i8, ptr %invariant.gep542, i64 %index639
  %wide.load644 = load <16 x i8>, ptr %i.lq, align 1, !tbaa !11, !alias.scope !134
  %i.lr = zext <16 x i8> %wide.load644 to <16 x i32>
  %i.ls = getelementptr i8, ptr %invariant.gep544, i64 %index639
  %wide.load645 = load <16 x i8>, ptr %i.ls, align 1, !tbaa !11, !alias.scope !135
  %i.lt = zext <16 x i8> %wide.load645 to <16 x i32>
  %i.lu = add nuw nsw <16 x i32> %i.lp, %i.ln
  %i.lv = mul nuw nsw <16 x i32> %i.lu, splat (i32 20)
  %i.lw = add nuw nsw <16 x i32> %i.lr, %i.ll
  %i.lx = mul nsw <16 x i32> %i.lw, splat (i32 -5)
  %i.ly = add nuw nsw <16 x i32> %i.lt, %i.lj
  %i.lz = add nuw nsw <16 x i32> %i.ly, splat (i32 16)
  %i.ma = add nuw nsw <16 x i32> %i.lz, %i.lv
  %i.mb = add nsw <16 x i32> %i.ma, %i.lx
  %i.mc = ashr <16 x i32> %i.mb, splat (i32 5)
  %i.md = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.mc, <16 x i32> zeroinitializer)
  %i.me = call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.md, <16 x i32> splat (i32 255))
  %i.mf = trunc nuw <16 x i32> %i.me to <16 x i8>
  %i.mg = getelementptr inbounds nuw i8, ptr %.1280370.us378, i64 %index639
  store <16 x i8> %i.mf, ptr %i.mg, align 1, !tbaa !11, !alias.scope !136, !noalias !137
  %index.next646 = add nuw i64 %index639, 16      ; 2 uses
  %i.mh = icmp eq i64 %index.next646, %n.vec637
  br i1 %i.mh, label %middle.block647, label %vector.body638, !llvm.loop !97

middle.block647:                                  ; preds = %vector.body638
  br i1 %cmp.n648, label %._crit_edge.split.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block647
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !138

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec637, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index650 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next657, %vec.epilog.vector.body ] ; 8 uses
  %i.mi = getelementptr i8, ptr %invariant.gep534, i64 %index650
  %wide.load651 = load <4 x i8>, ptr %i.mi, align 1, !tbaa !11, !alias.scope !130
  %i.mj = zext <4 x i8> %wide.load651 to <4 x i32>
  %i.mk = getelementptr i8, ptr %invariant.gep536, i64 %index650
  %wide.load652 = load <4 x i8>, ptr %i.mk, align 1, !tbaa !11, !alias.scope !131
  %i.ml = zext <4 x i8> %wide.load652 to <4 x i32>
  %i.mm = getelementptr i8, ptr %invariant.gep538, i64 %index650
  %wide.load653 = load <4 x i8>, ptr %i.mm, align 1, !tbaa !11, !alias.scope !132
  %i.mn = zext <4 x i8> %wide.load653 to <4 x i32>
  %i.mo = getelementptr i8, ptr %invariant.gep540, i64 %index650
  %wide.load654 = load <4 x i8>, ptr %i.mo, align 1, !tbaa !11, !alias.scope !133
  %i.mp = zext <4 x i8> %wide.load654 to <4 x i32>
  %i.mq = getelementptr i8, ptr %invariant.gep542, i64 %index650
  %wide.load655 = load <4 x i8>, ptr %i.mq, align 1, !tbaa !11, !alias.scope !134
  %i.mr = zext <4 x i8> %wide.load655 to <4 x i32>
  %i.ms = getelementptr i8, ptr %invariant.gep544, i64 %index650
  %wide.load656 = load <4 x i8>, ptr %i.ms, align 1, !tbaa !11, !alias.scope !135
  %i.mt = zext <4 x i8> %wide.load656 to <4 x i32>
  %i.mu = add nuw nsw <4 x i32> %i.mp, %i.mn
  %i.mv = mul nuw nsw <4 x i32> %i.mu, splat (i32 20)
  %i.mw = add nuw nsw <4 x i32> %i.mr, %i.ml
  %i.mx = mul nsw <4 x i32> %i.mw, splat (i32 -5)
  %i.my = add nuw nsw <4 x i32> %i.mt, %i.mj
  %i.mz = add nuw nsw <4 x i32> %i.my, splat (i32 16)
  %i.na = add nuw nsw <4 x i32> %i.mz, %i.mv
  %i.nb = add nsw <4 x i32> %i.na, %i.mx
  %i.nc = ashr <4 x i32> %i.nb, splat (i32 5)
  %i.nd = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.nc, <4 x i32> zeroinitializer)
  %i.ne = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.nd, <4 x i32> splat (i32 255))
  %i.nf = trunc nuw <4 x i32> %i.ne to <4 x i8>
  %i.ng = getelementptr inbounds nuw i8, ptr %.1280370.us378, i64 %index650
  store <4 x i8> %i.nf, ptr %i.ng, align 1, !tbaa !11, !alias.scope !136, !noalias !137
  %index.next657 = add nuw i64 %index650, 4       ; 2 uses
  %i.nh = icmp eq i64 %index.next657, %n.vec649
  br i1 %i.nh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !98

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n658, label %._crit_edge.split.us.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv462.ph = phi i64 [ 0, %iter.check ], [ %n.vec649, %vec.epilog.middle.block ], [ %n.vec637, %vec.epilog.iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv462 = phi i64 [ %indvars.iv.next463, %vec.epilog.scalar.ph ], [ %indvars.iv462.ph, %vec.epilog.scalar.ph.preheader ] ; 8 uses
  %gep535 = getelementptr i8, ptr %invariant.gep534, i64 %indvars.iv462
  %i.ni = load i8, ptr %gep535, align 1, !tbaa !11
  %i.nj = zext i8 %i.ni to i32
  %gep537 = getelementptr i8, ptr %invariant.gep536, i64 %indvars.iv462
  %i.nk = load i8, ptr %gep537, align 1, !tbaa !11
  %i.nl = zext i8 %i.nk to i32
  %gep539 = getelementptr i8, ptr %invariant.gep538, i64 %indvars.iv462
  %i.nm = load i8, ptr %gep539, align 1, !tbaa !11
  %i.nn = zext i8 %i.nm to i32
  %gep541 = getelementptr i8, ptr %invariant.gep540, i64 %indvars.iv462
  %i.no = load i8, ptr %gep541, align 1, !tbaa !11
  %i.np = zext i8 %i.no to i32
  %gep543 = getelementptr i8, ptr %invariant.gep542, i64 %indvars.iv462
  %i.nq = load i8, ptr %gep543, align 1, !tbaa !11
  %i.nr = zext i8 %i.nq to i32
  %gep545 = getelementptr i8, ptr %invariant.gep544, i64 %indvars.iv462
  %i.ns = load i8, ptr %gep545, align 1, !tbaa !11
  %i.nt = zext i8 %i.ns to i32
  %i.nu = add nuw nsw i32 %i.np, %i.nn
  %i.nv = mul nuw nsw i32 %i.nu, 20
  %i.nw = add nuw nsw i32 %i.nr, %i.nl
  %.neg316.us.us = mul nsw i32 %i.nw, -5
  %i.nx = add nuw nsw i32 %i.nt, %i.nj
  %i.ny = add nuw nsw i32 %i.nx, 16
  %i.nz = add nuw nsw i32 %i.ny, %i.nv
  %i.oa = add nsw i32 %i.nz, %.neg316.us.us
  %i.ob = ashr i32 %i.oa, 5
  %i.oc = tail call i32 @llvm.smax.i32(i32 %i.ob, i32 0)
  %i.od = tail call i32 @llvm.umin.i32(i32 %i.oc, i32 255)
  %i.oe = trunc nuw i32 %i.od to i8
  %i.of = getelementptr inbounds nuw i8, ptr %.1280370.us378, i64 %indvars.iv462
  store i8 %i.oe, ptr %i.of, align 1, !tbaa !11
  %indvars.iv.next463 = add nuw nsw i64 %indvars.iv462, 1 ; 2 uses
  %exitcond466.not = icmp eq i64 %indvars.iv.next463, %wide.trip.count465
  br i1 %exitcond466.not, label %._crit_edge.split.us.us, label %vec.epilog.scalar.ph, !llvm.loop !99

._crit_edge.split.us.us:                          ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block647
  %i.og = getelementptr inbounds i8, ptr %.2296367.us380, i64 %i.jp ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.1280370.us378, i64 64
  %i.oi = add nuw nsw i32 %.1285369.us379, 1      ; 2 uses
  %exitcond467.not = icmp eq i32 %i.oi, %5
  br i1 %exitcond467.not, label %._crit_edge372, label %iter.check, !llvm.loop !100

.preheader328.lr.ph.split.split:                  ; preds = %.preheader328.lr.ph.split
  %i.oj = load i32, ptr %i.jk, align 4, !tbaa !36
  %.not315 = icmp eq i32 %i.oj, 0
  %i.ok = sext i32 %i.je to i64
  %i.ol = sext i32 %i.jf to i64
  %i.om = sext i32 %i.jg to i64
  %i.on = sext i32 %i.jh to i64
  %i.oo = sext i32 %i.ji to i64
  %i.op = sext i32 %i.jj to i64
  %i.oq = add nuw i32 %4, 1
  %wide.trip.count459 = zext i32 %i.oq to i64
  br label %.preheader328

.preheader328:                                    ; preds = %.preheader328.lr.ph.split.split, %._crit_edge.split
  %.1280370 = phi ptr [ %i.jb, %.preheader328.lr.ph.split.split ], [ %i.qq, %._crit_edge.split ] ; 2 uses
  %.1285369 = phi i32 [ 0, %.preheader328.lr.ph.split.split ], [ %i.qr, %._crit_edge.split ]
  %.2296367 = phi ptr [ %i.ja, %.preheader328.lr.ph.split.split ], [ %i.qp, %._crit_edge.split ] ; 9 uses
  %invariant.gep = getelementptr i8, ptr %.2296367, i64 %i.jp
  %invariant.gep522 = getelementptr i8, ptr %.2296367, i64 %i.ok
  %invariant.gep524 = getelementptr i8, ptr %.2296367, i64 %i.ol
  %invariant.gep526 = getelementptr i8, ptr %.2296367, i64 %i.om
  %invariant.gep528 = getelementptr i8, ptr %.2296367, i64 %i.on
  %invariant.gep530 = getelementptr i8, ptr %.2296367, i64 %i.oo
  %invariant.gep532 = getelementptr i8, ptr %.2296367, i64 %i.op
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/snow?download=true
inline.NumInlined: 41
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@mc_block:bb.a
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
  %i.kk = getelementptr i8, ptr %.1295, i64 %i.kf
  %i.kl = getelementptr i8, ptr %i.kk, i64 %i.jw
  %i.km = getelementptr i8, ptr %i.kl, i64 %wide.trip.count465
  %i.kn = getelementptr i8, ptr %.1295, i64 %i.jv
  %i.ko = getelementptr i8, ptr %.1295, i64 %i.kf
  %i.kp = getelementptr i8, ptr %i.ko, i64 %i.jv
  %i.kq = getelementptr i8, ptr %i.kp, i64 %wide.trip.count465
  %i.kr = getelementptr i8, ptr %.1295, i64 %i.ju
  %i.ks = insertelement <4 x ptr> poison, ptr %i.kj, i64 0
  %i.kt = insertelement <4 x ptr> %i.ks, ptr %i.ke, i64 1
  %i.ku = insertelement <4 x ptr> %i.kt, ptr %i.kn, i64 2
  %i.kv = insertelement <4 x ptr> %i.ku, ptr %i.kr, i64 3
  %i.kw = getelementptr i8, <4 x ptr> %i.kv, i64 3
  %i.kx = getelementptr i8, ptr %.1295, i64 %i.kf
  %i.ky = getelementptr i8, ptr %i.kx, i64 %i.ju
  %i.kz = getelementptr i8, ptr %i.ky, i64 %wide.trip.count465
  %i.la = insertelement <4 x ptr> poison, ptr %i.km, i64 0
  %i.lb = insertelement <4 x ptr> %i.la, ptr %i.ki, i64 1
  %i.lc = insertelement <4 x ptr> %i.lb, ptr %i.kq, i64 2
  %i.ld = insertelement <4 x ptr> %i.lc, ptr %i.kz, i64 3
  %i.le = getelementptr i8, <4 x ptr> %i.ld, i64 3
  %i.lf = getelementptr i8, ptr %.1295, i64 %i.jt
  %scevgep610 = getelementptr i8, ptr %i.lf, i64 3
  %i.lg = getelementptr i8, ptr %.1295, i64 %i.kf
  %i.lh = getelementptr i8, ptr %i.lg, i64 %i.jt
  %i.li = getelementptr i8, ptr %i.lh, i64 %wide.trip.count465
  %scevgep611 = getelementptr i8, ptr %i.li, i64 3
  %i.lj = getelementptr i8, ptr %.1295, i64 %i.jp
  %scevgep612 = getelementptr i8, ptr %i.lj, i64 3
  %i.lk = zext nneg i32 %5 to i64
  %i.ll = mul nsw i64 %i.lk, %i.jp
  %i.lm = getelementptr i8, ptr %.1295, i64 %i.ll
  %i.ln = getelementptr i8, ptr %i.lm, i64 %wide.trip.count465
  %scevgep613 = getelementptr i8, ptr %i.ln, i64 3
  %i.lo = insertelement <4 x ptr> poison, ptr %i.jb, i64 0
  %i.lp = shufflevector <4 x ptr> %i.lo, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.lq = insertelement <4 x ptr> poison, ptr %scevgep601, i64 0
  %i.lr = shufflevector <4 x ptr> %i.lq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check639 = icmp ult i32 %4, 3
  %i.ls = icmp ult <4 x ptr> %i.lp, %i.le
  %i.lt = icmp ult <4 x ptr> %i.kw, %i.lr
  %stride.check617 = icmp slt i32 %3, 0
  %i.lu = and <4 x i1> %i.ls, %i.lt
  %bound0628 = icmp ult ptr %i.jb, %scevgep611
  %bound1629 = icmp ult ptr %scevgep610, %scevgep601
  %found.conflict630 = and i1 %bound0628, %bound1629
  %bound0633 = icmp ult ptr %i.jb, %scevgep613
  %bound1634 = icmp ult ptr %scevgep612, %scevgep601
  %found.conflict635 = and i1 %bound0633, %bound1634
  %i.lv = bitcast <4 x i1> %i.lu to i4
  %i.lw = icmp ne i4 %i.lv, 0
  %op.rdx853 = or i1 %i.lw, %found.conflict630
  %op.rdx854 = or i1 %found.conflict635, %stride.check617
  %op.rdx855 = or i1 %op.rdx853, %op.rdx854
  %min.iters.check640 = icmp ult i32 %4, 15
  %i.lx = and i64 %wide.trip.count465, 12
  %n.vec642 = and i64 %wide.trip.count465, 4294967280 ; 4 uses
  %cmp.n653 = icmp eq i64 %n.vec642, %wide.trip.count465
  %min.epilog.iters.check = icmp eq i64 %i.lx, 0
  %n.vec654 = and i64 %wide.trip.count465, 4294967292 ; 3 uses
  %cmp.n663 = icmp eq i64 %n.vec654, %wide.trip.count465
  br label %iter.check

iter.check:                                       ; preds = %.preheader328.us377.preheader, %._crit_edge.split.us.us
  %.1280370.us378 = phi ptr [ %i.ox, %._crit_edge.split.us.us ], [ %i.jb, %.preheader328.us377.preheader ] ; 4 uses
  %.1285369.us379 = phi i32 [ %i.oy, %._crit_edge.split.us.us ], [ 0, %.preheader328.us377.preheader ]
  %.2296367.us380 = phi ptr [ %i.ow, %._crit_edge.split.us.us ], [ %i.ja, %.preheader328.us377.preheader ] ; 7 uses
  %invariant.gep534 = getelementptr i8, ptr %.2296367.us380, i64 %i.jp ; 3 uses
  %invariant.gep536 = getelementptr i8, ptr %.2296367.us380, i64 %i.jt ; 3 uses
  %invariant.gep538 = getelementptr i8, ptr %.2296367.us380, i64 %i.ju ; 3 uses
  %invariant.gep540 = getelementptr i8, ptr %.2296367.us380, i64 %i.jv ; 3 uses
  %invariant.gep542 = getelementptr i8, ptr %.2296367.us380, i64 %i.jw ; 3 uses
  %invariant.gep544 = getelementptr i8, ptr %.2296367.us380, i64 %i.jx ; 3 uses
  %brmerge = select i1 %min.iters.check639, i1 true, i1 %op.rdx855
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check640, label %vec.epilog.ph, label %vector.body643

vector.body643:                                   ; preds = %vector.main.loop.iter.check, %vector.body643
  %index644 = phi i64 [ %index.next651, %vector.body643 ], [ 0, %vector.main.loop.iter.check ] ; 8 uses
  %i.ly = getelementptr i8, ptr %invariant.gep534, i64 %index644
  %wide.load645.a = load <16 x i8>, ptr %i.ly, align 1, !tbaa !11, !alias.scope !130
  %i.lz = zext <16 x i8> %wide.load645.a to <16 x i32>
  %i.ma = getelementptr i8, ptr %invariant.gep536, i64 %index644
  %wide.load646 = load <16 x i8>, ptr %i.ma, align 1, !tbaa !11, !alias.scope !131
  %i.mb = zext <16 x i8> %wide.load646 to <16 x i32>
  %i.mc = getelementptr i8, ptr %invariant.gep538, i64 %index644
  %wide.load647 = load <16 x i8>, ptr %i.mc, align 1, !tbaa !11, !alias.scope !132
  %i.md = zext <16 x i8> %wide.load647 to <16 x i32>
  %i.me = getelementptr i8, ptr %invariant.gep540, i64 %index644
  %wide.load648 = load <16 x i8>, ptr %i.me, align 1, !tbaa !11, !alias.scope !133
  %i.mf = zext <16 x i8> %wide.load648 to <16 x i32>
  %i.mg = getelementptr i8, ptr %invariant.gep542, i64 %index644
  %wide.load649 = load <16 x i8>, ptr %i.mg, align 1, !tbaa !11, !alias.scope !134
  %i.mh = zext <16 x i8> %wide.load649 to <16 x i32>
  %i.mi = getelementptr i8, ptr %invariant.gep544, i64 %index644
  %wide.load650 = load <16 x i8>, ptr %i.mi, align 1, !tbaa !11, !alias.scope !135
  %i.mj = zext <16 x i8> %wide.load650 to <16 x i32>
  %i.mk = add nuw nsw <16 x i32> %i.mf, %i.md
  %i.ml = mul nuw nsw <16 x i32> %i.mk, splat (i32 20)
  %i.mm = add nuw nsw <16 x i32> %i.mh, %i.mb
  %i.mn = mul nsw <16 x i32> %i.mm, splat (i32 -5)
  %i.mo = add nuw nsw <16 x i32> %i.mj, %i.lz
  %i.mp = add nuw nsw <16 x i32> %i.mo, splat (i32 16)
  %i.mq = add nuw nsw <16 x i32> %i.mp, %i.ml
  %i.mr = add nsw <16 x i32> %i.mq, %i.mn
  %i.ms = ashr <16 x i32> %i.mr, splat (i32 5)
  %i.mt = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ms, <16 x i32> zeroinitializer)
  %i.mu = call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.mt, <16 x i32> splat (i32 255))
  %i.mv = trunc nuw <16 x i32> %i.mu to <16 x i8>
  %i.mw = getelementptr inbounds nuw i8, ptr %.1280370.us378, i64 %index644
  store <16 x i8> %i.mv, ptr %i.mw, align 1, !tbaa !11, !alias.scope !136, !noalias !137
  %index.next651 = add nuw i64 %index644, 16      ; 2 uses
  %i.mx = icmp eq i64 %index.next651, %n.vec642
  br i1 %i.mx, label %middle.block652, label %vector.body643, !llvm.loop !97

middle.block652:                                  ; preds = %vector.body643
  br i1 %cmp.n653, label %._crit_edge.split.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block652
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !138

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec642, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index655 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next662, %vec.epilog.vector.body ] ; 8 uses
  %i.my = getelementptr i8, ptr %invariant.gep534, i64 %index655
  %wide.load656.a = load <4 x i8>, ptr %i.my, align 1, !tbaa !11, !alias.scope !130
  %i.mz = zext <4 x i8> %wide.load656.a to <4 x i32>
  %i.na = getelementptr i8, ptr %invariant.gep536, i64 %index655
  %wide.load657 = load <4 x i8>, ptr %i.na, align 1, !tbaa !11, !alias.scope !131
  %i.nb = zext <4 x i8> %wide.load657 to <4 x i32>
  %i.nc = getelementptr i8, ptr %invariant.gep538, i64 %index655
  %wide.load658 = load <4 x i8>, ptr %i.nc, align 1, !tbaa !11, !alias.scope !132
  %i.nd = zext <4 x i8> %wide.load658 to <4 x i32>
  %i.ne = getelementptr i8, ptr %invariant.gep540, i64 %index655
  %wide.load659 = load <4 x i8>, ptr %i.ne, align 1, !tbaa !11, !alias.scope !133
  %i.nf = zext <4 x i8> %wide.load659 to <4 x i32>
  %i.ng = getelementptr i8, ptr %invariant.gep542, i64 %index655
  %wide.load660 = load <4 x i8>, ptr %i.ng, align 1, !tbaa !11, !alias.scope !134
  %i.nh = zext <4 x i8> %wide.load660 to <4 x i32>
  %i.ni = getelementptr i8, ptr %invariant.gep544, i64 %index655
  %wide.load661 = load <4 x i8>, ptr %i.ni, align 1, !tbaa !11, !alias.scope !135
  %i.nj = zext <4 x i8> %wide.load661 to <4 x i32>
  %i.nk = add nuw nsw <4 x i32> %i.nf, %i.nd
  %i.nl = mul nuw nsw <4 x i32> %i.nk, splat (i32 20)
  %i.nm = add nuw nsw <4 x i32> %i.nh, %i.nb
  %i.nn = mul nsw <4 x i32> %i.nm, splat (i32 -5)
  %i.no = add nuw nsw <4 x i32> %i.nj, %i.mz
  %i.np = add nuw nsw <4 x i32> %i.no, splat (i32 16)
  %i.nq = add nuw nsw <4 x i32> %i.np, %i.nl
  %i.nr = add nsw <4 x i32> %i.nq, %i.nn
  %i.ns = ashr <4 x i32> %i.nr, splat (i32 5)
  %i.nt = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ns, <4 x i32> zeroinitializer)
  %i.nu = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.nt, <4 x i32> splat (i32 255))
  %i.nv = trunc nuw <4 x i32> %i.nu to <4 x i8>
  %i.nw = getelementptr inbounds nuw i8, ptr %.1280370.us378, i64 %index655
  store <4 x i8> %i.nv, ptr %i.nw, align 1, !tbaa !11, !alias.scope !136, !noalias !137
  %index.next662 = add nuw i64 %index655, 4       ; 2 uses
  %i.nx = icmp eq i64 %index.next662, %n.vec654
  br i1 %i.nx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !98

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n663, label %._crit_edge.split.us.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv462.ph = phi i64 [ 0, %iter.check ], [ %n.vec654, %vec.epilog.middle.block ], [ %n.vec642, %vec.epilog.iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv462 = phi i64 [ %indvars.iv.next463, %vec.epilog.scalar.ph ], [ %indvars.iv462.ph, %vec.epilog.scalar.ph.preheader ] ; 8 uses
  %gep535 = getelementptr i8, ptr %invariant.gep534, i64 %indvars.iv462
  %i.ny = load i8, ptr %gep535, align 1, !tbaa !11
  %i.nz = zext i8 %i.ny to i32
  %gep537 = getelementptr i8, ptr %invariant.gep536, i64 %indvars.iv462
  %i.oa = load i8, ptr %gep537, align 1, !tbaa !11
  %i.ob = zext i8 %i.oa to i32
  %gep539 = getelementptr i8, ptr %invariant.gep538, i64 %indvars.iv462
  %i.oc = load i8, ptr %gep539, align 1, !tbaa !11
  %i.od = zext i8 %i.oc to i32
  %gep541 = getelementptr i8, ptr %invariant.gep540, i64 %indvars.iv462
  %i.oe = load i8, ptr %gep541, align 1, !tbaa !11
  %i.of = zext i8 %i.oe to i32
  %gep543 = getelementptr i8, ptr %invariant.gep542, i64 %indvars.iv462
  %i.og = load i8, ptr %gep543, align 1, !tbaa !11
  %i.oh = zext i8 %i.og to i32
  %gep545 = getelementptr i8, ptr %invariant.gep544, i64 %indvars.iv462
  %i.oi = load i8, ptr %gep545, align 1, !tbaa !11
  %i.oj = zext i8 %i.oi to i32
  %i.ok = add nuw nsw i32 %i.of, %i.od
  %i.ol = mul nuw nsw i32 %i.ok, 20
  %i.om = add nuw nsw i32 %i.oh, %i.ob
  %.neg316.us.us = mul nsw i32 %i.om, -5
  %i.on = add nuw nsw i32 %i.oj, %i.nz
  %i.oo = add nuw nsw i32 %i.on, 16
  %i.op = add nuw nsw i32 %i.oo, %i.ol
  %i.oq = add nsw i32 %i.op, %.neg316.us.us
  %i.or = ashr i32 %i.oq, 5
  %i.os = tail call i32 @llvm.smax.i32(i32 %i.or, i32 0)
  %i.ot = tail call i32 @llvm.umin.i32(i32 %i.os, i32 255)
  %i.ou = trunc nuw i32 %i.ot to i8
  %i.ov = getelementptr inbounds nuw i8, ptr %.1280370.us378, i64 %indvars.iv462
  store i8 %i.ou, ptr %i.ov, align 1, !tbaa !11
  %indvars.iv.next463 = add nuw nsw i64 %indvars.iv462, 1 ; 2 uses
  %exitcond466.not = icmp eq i64 %indvars.iv.next463, %wide.trip.count465
  br i1 %exitcond466.not, label %._crit_edge.split.us.us, label %vec.epilog.scalar.ph, !llvm.loop !99

._crit_edge.split.us.us:                          ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block652
  %i.ow = getelementptr inbounds i8, ptr %.2296367.us380, i64 %i.jp ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.1280370.us378, i64 64
  %i.oy = add nuw nsw i32 %.1285369.us379, 1      ; 2 uses
  %exitcond467.not = icmp eq i32 %i.oy, %5
  br i1 %exitcond467.not, label %._crit_edge372, label %iter.check, !llvm.loop !100

.preheader328.lr.ph.split.split:                  ; preds = %.preheader328.lr.ph.split
end_hunk_0
begin_hunk_1_@mc_block:bb.a
  %i.wx = icmp eq i64 %index.next687, %n.vec668
  br i1 %i.wx, label %middle.block688, label %vector.body677, !llvm.loop !106

middle.block688:                                  ; preds = %vector.body677
  br i1 %cmp.n689, label %._crit_edge.split387, label %scalar.ph665.preheader

scalar.ph665.preheader:                           ; preds = %.lr.ph.split.split.us, %middle.block688
  %indvars.iv474.ph = phi i64 [ 0, %.lr.ph.split.split.us ], [ %n.vec668, %middle.block688 ]
  br label %scalar.ph665

scalar.ph665:                                     ; preds = %scalar.ph665.preheader, %scalar.ph665
  %indvars.iv474 = phi i64 [ %indvars.iv.next475, %scalar.ph665 ], [ %indvars.iv474.ph, %scalar.ph665.preheader ] ; 3 uses
  %i.wy = getelementptr inbounds nuw [2 x i8], ptr %.1282391, i64 %indvars.iv474 ; 8 uses
  %i.wz = load i16, ptr %i.wy, align 2, !tbaa !15
  %i.xa = sext i16 %i.wz to i32
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wy, i64 128
  %i.xc = load i16, ptr %i.xb, align 2, !tbaa !15
  %i.xd = sext i16 %i.xc to i32
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wy, i64 256
  %i.xf = load i16, ptr %i.xe, align 2, !tbaa !15
  %i.xg = sext i16 %i.xf to i32
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wy, i64 384
  %i.xi = load i16, ptr %i.xh, align 2, !tbaa !15
  %i.xj = sext i16 %i.xi to i32
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wy, i64 512
  %i.xl = load i16, ptr %i.xk, align 2, !tbaa !15
  %i.xm = sext i16 %i.xl to i32
  %i.xn = getelementptr inbounds nuw i8, ptr %i.wy, i64 640
  %i.xo = load i16, ptr %i.xn, align 2, !tbaa !15
  %i.xp = sext i16 %i.xo to i32
  %i.xq = getelementptr inbounds nuw i8, ptr %i.wy, i64 768
  %i.xr = load i16, ptr %i.xq, align 2, !tbaa !15
  %i.xs = sext i16 %i.xr to i32
  %i.xt = getelementptr inbounds nuw i8, ptr %i.wy, i64 896
  %i.xu = load i16, ptr %i.xt, align 2, !tbaa !15
  %i.xv = sext i16 %i.xu to i32
  %i.xw = add nsw i32 %i.xm, %i.xj
  %i.xx = mul nsw i32 %i.xw, %i.vj
  %i.xy = add nsw i32 %i.xp, %i.xg
  %i.xz = mul nsw i32 %i.xy, %i.vl
  %i.ya = add nsw i32 %i.xs, %i.xd
  %i.yb = mul nsw i32 %i.ya, %i.vn
  %i.yc = add nsw i32 %i.xv, %i.xa
  %i.yd = mul nsw i32 %i.yc, %i.vp
  %i.ye = add nsw i32 %i.xx, 2048
  %i.yf = add nsw i32 %i.ye, %i.xz
  %i.yg = add nsw i32 %i.yf, %i.yb
  %i.yh = add nsw i32 %i.yg, %i.yd
  %i.yi = ashr i32 %i.yh, 12
  %i.yj = tail call i32 @llvm.smax.i32(i32 %i.yi, i32 0)
  %i.yk = tail call i32 @llvm.umin.i32(i32 %i.yj, i32 255)
  %i.yl = trunc nuw i32 %i.yk to i8
  %i.ym = getelementptr inbounds nuw i8, ptr %.2394, i64 %indvars.iv474
  store i8 %i.yl, ptr %i.ym, align 1, !tbaa !11
  %indvars.iv.next475 = add nuw nsw i64 %indvars.iv474, 1 ; 2 uses
  %exitcond478.not = icmp eq i64 %indvars.iv.next475, %wide.trip.count477
  br i1 %exitcond478.not, label %._crit_edge.split387, label %scalar.ph665, !llvm.loop !107

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader857, %.lr.ph.split.split
  %indvars.iv469 = phi i64 [ %indvars.iv.next470, %.lr.ph.split.split ], [ %indvars.iv469.ph, %.lr.ph.split.split.preheader857 ] ; 3 uses
  %i.yn = getelementptr inbounds nuw [2 x i8], ptr %.1282391, i64 %indvars.iv469 ; 6 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 128
  %i.yp = load i16, ptr %i.yo, align 2, !tbaa !15
  %i.yq = sext i16 %i.yp to i32
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yn, i64 256
  %i.ys = load i16, ptr %i.yr, align 2, !tbaa !15
  %i.yt = sext i16 %i.ys to i32
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yn, i64 384
  %i.yv = load i16, ptr %i.yu, align 2, !tbaa !15
  %i.yw = sext i16 %i.yv to i32
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yn, i64 512
  %i.yy = load i16, ptr %i.yx, align 2, !tbaa !15
  %i.yz = sext i16 %i.yy to i32
  %i.za = getelementptr inbounds nuw i8, ptr %i.yn, i64 640
  %i.zb = load i16, ptr %i.za, align 2, !tbaa !15
  %i.zc = sext i16 %i.zb to i32
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yn, i64 768
  %i.ze = load i16, ptr %i.zd, align 2, !tbaa !15
  %i.zf = sext i16 %i.ze to i32
  %i.zg = add nsw i32 %i.yz, %i.yw
  %i.zh = mul nsw i32 %i.zg, 20
  %i.zi = add nsw i32 %i.zc, %i.yt
  %.neg = mul nsw i32 %i.zi, -5
  %i.zj = add nsw i32 %i.zf, %i.yq
  %i.zk = add nsw i32 %i.zj, 512
  %i.zl = add nsw i32 %i.zk, %i.zh
  %i.zm = add nsw i32 %i.zl, %.neg
  %i.zn = ashr i32 %i.zm, 10
  %i.zo = tail call i32 @llvm.smax.i32(i32 %i.zn, i32 0)
  %i.zp = tail call i32 @llvm.umin.i32(i32 %i.zo, i32 255)
  %i.zq = trunc nuw i32 %i.zp to i8
  %i.zr = getelementptr inbounds nuw i8, ptr %.2394, i64 %indvars.iv469
  store i8 %i.zq, ptr %i.zr, align 1, !tbaa !11
  %indvars.iv.next470 = add nuw nsw i64 %indvars.iv469, 1 ; 2 uses
  %exitcond473.not = icmp eq i64 %indvars.iv.next470, %wide.trip.count472
  br i1 %exitcond473.not, label %._crit_edge.split387, label %.lr.ph.split.split, !llvm.loop !108

._crit_edge.split387:                             ; preds = %.lr.ph.split.split, %scalar.ph665, %middle.block704, %middle.block688
  %i.zs = getelementptr inbounds nuw i8, ptr %.1282391, i64 128
  %i.zt = getelementptr inbounds nuw i8, ptr %.2394, i64 64
  %i.zu = add nuw nsw i32 %.2286390, 1            ; 2 uses
  %exitcond479.not = icmp eq i32 %i.zu, %5
  br i1 %exitcond479.not, label %.loopexit327, label %.preheader325, !llvm.loop !104

.loopexit327:                                     ; preds = %._crit_edge.split387, %._crit_edge.split387.us.us, %.preheader325.lr.ph, %bb.i
  store ptr %i.ro, ptr %i.c, align 16, !tbaa !13
  %i.zv = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.zw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.zv, ptr %i.zw, align 8, !tbaa !13
  %i.zx = getelementptr inbounds nuw i8, ptr %i.ro, i64 1
  %i.zy = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.zx, ptr %i.zy, align 16, !tbaa !13
  %i.zz = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.jb, ptr %i.zz, align 16, !tbaa !13
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.rp, ptr %i.aaa, align 8, !tbaa !13
  %i.aab = getelementptr inbounds nuw i8, ptr %i.b, i64 2561
  %i.aac = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.aab, ptr %i.aac, align 16, !tbaa !13
  %i.aad = sext i32 %3 to i64                     ; 10 uses
  %i.aae = getelementptr inbounds i8, ptr %i.ro, i64 %i.aad ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.aae, ptr %i.aaf, align 16, !tbaa !13
  %i.aag = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.aah = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store ptr %i.aag, ptr %i.aah, align 8, !tbaa !13
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aae, i64 1
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr %i.aai, ptr %i.aaj, align 16, !tbaa !13
  %i.aak = icmp eq i8 %.0283.shrunk, 15
  br i1 %i.aak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit327
  br i1 %i.rr, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.j
  %i.aal = and i32 %7, 7                          ; 3 uses
  %i.aam = and i32 %6, 7                          ; 3 uses
  %i.aan = lshr i32 %7, 1
  %i.aao = and i32 %i.aan, 4
  %i.aap = lshr i32 %6, 3
  %i.aaq = or disjoint i32 %i.aao, %i.aap         ; 5 uses
  %i.aar = add nuw nsw i32 %i.aaq, 5
  %i.aas = zext nneg i32 %i.aar to i64            ; 2 uses
  %i.aat = shl nuw nsw i64 1, %i.aas
  %i.aau = and i64 %i.aat, 60812
  %.not312.not = icmp eq i64 %i.aau, 0
  %i.aav = add nuw nsw i32 %i.aaq, 4
  %i.aaw = zext nneg i32 %i.aav to i64            ; 2 uses
  %i.aax = shl nuw nsw i64 1, %i.aaw
  %i.aay = and i64 %i.aax, 8448
  %.not311.not = icmp eq i64 %i.aay, 0
  %i.aaz = add nuw nsw i32 %i.aaq, 1
  %i.aba = zext nneg i32 %i.aaz to i64            ; 2 uses
  %i.abb = shl nuw nsw i64 1, %i.aba
  %i.abc = and i64 %i.abb, 140
  %.not310.not = icmp eq i64 %i.abc, 0
  %.not309 = icmp eq i32 %i.aaq, 0
  %i.abd = select i1 %.not309, i32 %3, i32 64     ; 2 uses
  %i.abe = icmp sgt i32 %4, 0
  %i.abf = sub nuw nsw i32 8, %i.aam              ; 2 uses
  %i.abg = sub nuw nsw i32 8, %i.aal              ; 2 uses
  %factor.op.mul = mul nuw nsw i32 %i.abf, %i.aal ; 3 uses
  %factor.op.mul406 = mul nuw nsw i32 %i.aam, %i.aal ; 3 uses
  %factor.op.mul408 = mul nuw nsw i32 %i.abf, %i.abg ; 3 uses
  %factor.op.mul410 = mul nuw nsw i32 %i.aam, %i.abg ; 3 uses
  %i.abh = sext i32 %i.abd to i64                 ; 2 uses
  %i.abi = select i1 %.not310.not, i64 64, i64 %i.aad ; 3 uses
  %i.abj = select i1 %.not311.not, i64 64, i64 %i.aad ; 3 uses
  %i.abk = select i1 %.not312.not, i64 64, i64 %i.aad ; 3 uses
  br i1 %i.abe, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.abl = zext nneg i32 %i.aaq to i64
  %i.abm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.abl
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !13 ; 3 uses
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.aba
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !13 ; 3 uses
  %i.abq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.aaw
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !13 ; 3 uses
  %i.abs = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.aas
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !13 ; 3 uses
  %wide.trip.count495 = zext nneg i32 %4 to i64   ; 11 uses
  %i.abu = add nsw i32 %5, -1
  %i.abv = zext i32 %i.abu to i64                 ; 5 uses
  %i.abw = mul nsw i64 %i.aad, %i.abv
  %i.abx = getelementptr i8, ptr %1, i64 %i.abw
  %scevgep775 = getelementptr i8, ptr %i.abx, i64 %wide.trip.count495
  %i.aby = mul nsw i64 %i.abh, %i.abv
  %i.abz = getelementptr i8, ptr %i.abn, i64 %i.aby
  %scevgep776 = getelementptr i8, ptr %i.abz, i64 %wide.trip.count495
  %i.aca = mul nsw i64 %i.abi, %i.abv
  %i.acb = getelementptr i8, ptr %i.abp, i64 %i.aca
  %scevgep777 = getelementptr i8, ptr %i.acb, i64 %wide.trip.count495
  %i.acc = mul nsw i64 %i.abj, %i.abv
  %i.acd = getelementptr i8, ptr %i.abr, i64 %i.acc
  %scevgep778 = getelementptr i8, ptr %i.acd, i64 %wide.trip.count495
  %i.ace = mul nsw i64 %i.abk, %i.abv
  %i.acf = getelementptr i8, ptr %i.abt, i64 %i.ace
  %scevgep779 = getelementptr i8, ptr %i.acf, i64 %wide.trip.count495
  %8 = insertelement <2 x i32> poison, i32 %3, i64 0
  %9 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.abd, i64 0
  %i.acg = insertelement <4 x ptr> poison, ptr %1, i64 0
  %i.ach = shufflevector <4 x ptr> %i.acg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.aci = insertelement <4 x ptr> poison, ptr %scevgep776, i64 0
  %i.acj = insertelement <4 x ptr> %i.aci, ptr %scevgep777, i64 1
  %i.ack = insertelement <4 x ptr> %i.acj, ptr %scevgep778, i64 2
  %i.acl = insertelement <4 x ptr> %i.ack, ptr %scevgep779, i64 3
  %i.acm = insertelement <4 x ptr> poison, ptr %i.abn, i64 0
  %i.acn = insertelement <4 x ptr> %i.acm, ptr %i.abp, i64 1
  %i.aco = insertelement <4 x ptr> %i.acn, ptr %i.abr, i64 2
  %i.acp = insertelement <4 x ptr> %i.aco, ptr %i.abt, i64 3
  %i.acq = insertelement <4 x ptr> poison, ptr %scevgep775, i64 0
  %i.acr = shufflevector <4 x ptr> %i.acq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check804 = icmp ult i32 %4, 4
  %i.acs = icmp ult <4 x ptr> %i.ach, %i.acl
  %i.act = icmp ult <4 x ptr> %i.acp, %i.acr
  %10 = and <4 x i1> %i.acs, %i.act
  %11 = shufflevector <2 x i32> %8, <2 x i32> poison, <4 x i32> zeroinitializer
  %12 = or <4 x i32> %11, %9
  %13 = icmp slt <4 x i32> %12, zeroinitializer
  %rdx.op = or <4 x i1> %13, %10
  %i.acu = bitcast <4 x i1> %rdx.op to i4
  %i.acv = icmp ne i4 %i.acu, 0
  %i.acw = or i64 %i.abj, %i.abk
  %i.acx = or i64 %i.acw, %i.abi
  %i.acy = icmp slt i64 %i.acx, 0
  %op.rdx852 = or i1 %i.acv, %i.acy
  %min.iters.check806 = icmp ult i32 %4, 16
  %i.acz = and i64 %wide.trip.count495, 12
  %n.vec808 = and i64 %wide.trip.count495, 2147483632 ; 4 uses
  %broadcast.splatinsert809 = insertelement <16 x i32> poison, i32 %factor.op.mul408, i64 0
  %broadcast.splat810 = shufflevector <16 x i32> %broadcast.splatinsert809, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert811 = insertelement <16 x i32> poison, i32 %factor.op.mul410, i64 0
  %broadcast.splat812 = shufflevector <16 x i32> %broadcast.splatinsert811, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert813 = insertelement <16 x i32> poison, i32 %factor.op.mul, i64 0
  %broadcast.splat814 = shufflevector <16 x i32> %broadcast.splatinsert813, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert815 = insertelement <16 x i32> poison, i32 %factor.op.mul406, i64 0
  %broadcast.splat816 = shufflevector <16 x i32> %broadcast.splatinsert815, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n825 = icmp eq i64 %n.vec808, %wide.trip.count495
  %min.epilog.iters.check830 = icmp eq i64 %i.acz, 0
  %n.vec832 = and i64 %wide.trip.count495, 2147483644 ; 3 uses
  %broadcast.splatinsert833 = insertelement <4 x i32> poison, i32 %factor.op.mul408, i64 0
  %broadcast.splat834 = shufflevector <4 x i32> %broadcast.splatinsert833, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert835 = insertelement <4 x i32> poison, i32 %factor.op.mul410, i64 0
  %broadcast.splat836 = shufflevector <4 x i32> %broadcast.splatinsert835, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert837 = insertelement <4 x i32> poison, i32 %factor.op.mul, i64 0
  %broadcast.splat838 = shufflevector <4 x i32> %broadcast.splatinsert837, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert839 = insertelement <4 x i32> poison, i32 %factor.op.mul406, i64 0
  %broadcast.splat840 = shufflevector <4 x i32> %broadcast.splatinsert839, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n849 = icmp eq i64 %n.vec832, %wide.trip.count495
  br label %iter.check827

iter.check827:                                    ; preds = %.preheader.preheader, %._crit_edge405
  %.0270417 = phi ptr [ %i.afi, %._crit_edge405 ], [ %i.abt, %.preheader.preheader ] ; 4 uses
  %.0271416 = phi ptr [ %i.afh, %._crit_edge405 ], [ %i.abr, %.preheader.preheader ] ; 4 uses
  %.0272415 = phi ptr [ %i.afg, %._crit_edge405 ], [ %i.abp, %.preheader.preheader ] ; 4 uses
  %.0273414 = phi ptr [ %i.aff, %._crit_edge405 ], [ %i.abn, %.preheader.preheader ] ; 4 uses
  %.3413 = phi i32 [ %i.afk, %._crit_edge405 ], [ 0, %.preheader.preheader ]
  %.0292412 = phi ptr [ %i.afj, %._crit_edge405 ], [ %1, %.preheader.preheader ] ; 4 uses
  %brmerge871 = select i1 %min.iters.check804, i1 true, i1 %op.rdx852
  br i1 %brmerge871, label %vec.epilog.scalar.ph828.preheader, label %vector.main.loop.iter.check805

vector.main.loop.iter.check805:                   ; preds = %iter.check827
  br i1 %min.iters.check806, label %vec.epilog.ph831, label %vector.body817

vector.body817:                                   ; preds = %vector.main.loop.iter.check805, %vector.body817
  %index818 = phi i64 [ %index.next823, %vector.body817 ], [ 0, %vector.main.loop.iter.check805 ] ; 6 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %.0273414, i64 %index818
  %wide.load819 = load <16 x i8>, ptr %i.ada, align 1, !tbaa !11, !alias.scope !139
  %i.adb = zext <16 x i8> %wide.load819 to <16 x i32>
  %i.adc = mul nuw nsw <16 x i32> %broadcast.splat810, %i.adb
  %i.add = getelementptr inbounds nuw i8, ptr %.0272415, i64 %index818
  %wide.load820 = load <16 x i8>, ptr %i.add, align 1, !tbaa !11, !alias.scope !140
  %i.ade = zext <16 x i8> %wide.load820 to <16 x i32>
  %i.adf = mul nuw nsw <16 x i32> %broadcast.splat812, %i.ade
  %i.adg = getelementptr inbounds nuw i8, ptr %.0271416, i64 %index818
  %wide.load821 = load <16 x i8>, ptr %i.adg, align 1, !tbaa !11, !alias.scope !141
  %i.adh = zext <16 x i8> %wide.load821 to <16 x i32>
  %i.adi = mul nuw nsw <16 x i32> %broadcast.splat814, %i.adh
  %i.adj = getelementptr inbounds nuw i8, ptr %.0270417, i64 %index818
  %wide.load822 = load <16 x i8>, ptr %i.adj, align 1, !tbaa !11, !alias.scope !142
  %i.adk = zext <16 x i8> %wide.load822 to <16 x i32>
  %i.adl = mul nuw nsw <16 x i32> %broadcast.splat816, %i.adk
  %i.adm = add nuw nsw <16 x i32> %i.adl, %i.adi
  %i.adn = add nuw nsw <16 x i32> %i.adf, %i.adc
  %i.ado = add nuw nsw <16 x i32> %i.adn, splat (i32 32)
  %i.adp = add nuw nsw <16 x i32> %i.ado, %i.adm
  %i.adq = lshr <16 x i32> %i.adp, splat (i32 6)
  %i.adr = trunc <16 x i32> %i.adq to <16 x i8>
  %i.ads = getelementptr inbounds nuw i8, ptr %.0292412, i64 %index818
  store <16 x i8> %i.adr, ptr %i.ads, align 1, !tbaa !11, !alias.scope !143, !noalias !144
  %index.next823 = add nuw i64 %index818, 16      ; 2 uses
  %i.adt = icmp eq i64 %index.next823, %n.vec808
  br i1 %i.adt, label %middle.block824, label %vector.body817, !llvm.loop !115

middle.block824:                                  ; preds = %vector.body817
  br i1 %cmp.n825, label %._crit_edge405, label %vec.epilog.iter.check829

vec.epilog.iter.check829:                         ; preds = %middle.block824
  br i1 %min.epilog.iters.check830, label %vec.epilog.scalar.ph828.preheader, label %vec.epilog.ph831, !prof !138

vec.epilog.ph831:                                 ; preds = %vector.main.loop.iter.check805, %vec.epilog.iter.check829
  %vec.epilog.resume.val826 = phi i64 [ %n.vec808, %vec.epilog.iter.check829 ], [ 0, %vector.main.loop.iter.check805 ]
  br label %vec.epilog.vector.body841

vec.epilog.vector.body841:                        ; preds = %vec.epilog.vector.body841, %vec.epilog.ph831
  %index842 = phi i64 [ %vec.epilog.resume.val826, %vec.epilog.ph831 ], [ %index.next847, %vec.epilog.vector.body841 ] ; 6 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %.0273414, i64 %index842
  %wide.load843 = load <4 x i8>, ptr %i.adu, align 1, !tbaa !11, !alias.scope !139
  %i.adv = zext <4 x i8> %wide.load843 to <4 x i32>
  %i.adw = mul nuw nsw <4 x i32> %broadcast.splat834, %i.adv
  %i.adx = getelementptr inbounds nuw i8, ptr %.0272415, i64 %index842
  %wide.load844 = load <4 x i8>, ptr %i.adx, align 1, !tbaa !11, !alias.scope !140
  %i.ady = zext <4 x i8> %wide.load844 to <4 x i32>
  %i.adz = mul nuw nsw <4 x i32> %broadcast.splat836, %i.ady
  %i.aea = getelementptr inbounds nuw i8, ptr %.0271416, i64 %index842
  %wide.load845 = load <4 x i8>, ptr %i.aea, align 1, !tbaa !11, !alias.scope !141
  %i.aeb = zext <4 x i8> %wide.load845 to <4 x i32>
  %i.aec = mul nuw nsw <4 x i32> %broadcast.splat838, %i.aeb
  %i.aed = getelementptr inbounds nuw i8, ptr %.0270417, i64 %index842
  %wide.load846 = load <4 x i8>, ptr %i.aed, align 1, !tbaa !11, !alias.scope !142
  %i.aee = zext <4 x i8> %wide.load846 to <4 x i32>
  %i.aef = mul nuw nsw <4 x i32> %broadcast.splat840, %i.aee
  %i.aeg = add nuw nsw <4 x i32> %i.aef, %i.aec
  %i.aeh = add nuw nsw <4 x i32> %i.adz, %i.adw
  %i.aei = add nuw nsw <4 x i32> %i.aeh, splat (i32 32)
  %i.aej = add nuw nsw <4 x i32> %i.aei, %i.aeg
  %i.aek = lshr <4 x i32> %i.aej, splat (i32 6)
  %i.ael = trunc <4 x i32> %i.aek to <4 x i8>
  %i.aem = getelementptr inbounds nuw i8, ptr %.0292412, i64 %index842
  store <4 x i8> %i.ael, ptr %i.aem, align 1, !tbaa !11, !alias.scope !143, !noalias !144
  %index.next847 = add nuw i64 %index842, 4       ; 2 uses
  %i.aen = icmp eq i64 %index.next847, %n.vec832
  br i1 %i.aen, label %vec.epilog.middle.block848, label %vec.epilog.vector.body841, !llvm.loop !116

vec.epilog.middle.block848:                       ; preds = %vec.epilog.vector.body841
  br i1 %cmp.n849, label %._crit_edge405, label %vec.epilog.scalar.ph828.preheader

vec.epilog.scalar.ph828.preheader:                ; preds = %iter.check827, %vec.epilog.iter.check829, %vec.epilog.middle.block848
  %indvars.iv492.ph = phi i64 [ 0, %iter.check827 ], [ %n.vec832, %vec.epilog.middle.block848 ], [ %n.vec808, %vec.epilog.iter.check829 ]
  br label %vec.epilog.scalar.ph828

vec.epilog.scalar.ph828:                          ; preds = %vec.epilog.scalar.ph828.preheader, %vec.epilog.scalar.ph828
  %indvars.iv492 = phi i64 [ %indvars.iv.next493, %vec.epilog.scalar.ph828 ], [ %indvars.iv492.ph, %vec.epilog.scalar.ph828.preheader ] ; 6 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %.0273414, i64 %indvars.iv492
  %i.aep = load i8, ptr %i.aeo, align 1, !tbaa !11
  %i.aeq = zext i8 %i.aep to i32
  %.reass409 = mul nuw nsw i32 %factor.op.mul408, %i.aeq
  %i.aer = getelementptr inbounds nuw i8, ptr %.0272415, i64 %indvars.iv492
  %i.aes = load i8, ptr %i.aer, align 1, !tbaa !11
  %i.aet = zext i8 %i.aes to i32
  %.reass411 = mul nuw nsw i32 %factor.op.mul410, %i.aet
  %i.aeu = getelementptr inbounds nuw i8, ptr %.0271416, i64 %indvars.iv492
  %i.aev = load i8, ptr %i.aeu, align 1, !tbaa !11
  %i.aew = zext i8 %i.aev to i32
  %.reass = mul nuw nsw i32 %factor.op.mul, %i.aew
  %i.aex = getelementptr inbounds nuw i8, ptr %.0270417, i64 %indvars.iv492
  %i.aey = load i8, ptr %i.aex, align 1, !tbaa !11
  %i.aez = zext i8 %i.aey to i32
  %.reass407 = mul nuw nsw i32 %factor.op.mul406, %i.aez
  %reass.add = add nuw nsw i32 %.reass407, %.reass
  %reass.add321 = add nuw nsw i32 %.reass411, %.reass409
  %i.afa = add nuw nsw i32 %reass.add321, 32
  %i.afb = add nuw nsw i32 %i.afa, %reass.add
  %i.afc = lshr i32 %i.afb, 6
  %i.afd = trunc i32 %i.afc to i8
  %i.afe = getelementptr inbounds nuw i8, ptr %.0292412, i64 %indvars.iv492
  store i8 %i.afd, ptr %i.afe, align 1, !tbaa !11
  %indvars.iv.next493 = add nuw nsw i64 %indvars.iv492, 1 ; 2 uses
  %exitcond496.not = icmp eq i64 %indvars.iv.next493, %wide.trip.count495
  br i1 %exitcond496.not, label %._crit_edge405, label %vec.epilog.scalar.ph828, !llvm.loop !117

._crit_edge405:                                   ; preds = %vec.epilog.scalar.ph828, %vec.epilog.middle.block848, %middle.block824
  %i.aff = getelementptr inbounds i8, ptr %.0273414, i64 %i.abh
  %i.afg = getelementptr inbounds i8, ptr %.0272415, i64 %i.abi
  %i.afh = getelementptr inbounds i8, ptr %.0271416, i64 %i.abj
  %i.afi = getelementptr inbounds i8, ptr %.0270417, i64 %i.abk
  %i.afj = getelementptr inbounds i8, ptr %.0292412, i64 %i.aad
  %i.afk = add nuw nsw i32 %.3413, 1              ; 2 uses
  %exitcond497.not = icmp eq i32 %i.afk, %5
  br i1 %exitcond497.not, label %.loopexit, label %iter.check827, !llvm.loop !118

bb.k:                                             ; preds = %.loopexit327
  %i.afl = and i32 %6, 7
  %i.afm = shl nuw nsw i32 %7, 3
  %i.afn = and i32 %i.afm, 56
  %i.afo = or disjoint i32 %i.afn, %i.afl
  %i.afp = zext nneg i32 %i.afo to i64
  %i.afq = getelementptr inbounds nuw i8, ptr @mc_block.weight, i64 %i.afp
  %i.afr = load i8, ptr %i.afq, align 1, !tbaa !11
  %i.afs = zext i8 %i.afr to i16                  ; 6 uses
  %i.aft = sub nsw i16 8, %i.afs                  ; 5 uses
  br i1 %i.rr, label %.preheader323.lr.ph, label %.loopexit

.preheader323.lr.ph:                              ; preds = %bb.k
  %i.afu = shl nuw nsw i64 1, %i.o
  %i.afv = and i64 %i.afu, 60813
  %.not307.not = icmp eq i64 %i.afv, 0
  %i.afw = shl nuw nsw i64 1, %i.l
  %i.afx = and i64 %i.afw, 60813
  %.not306.not = icmp eq i64 %i.afx, 0
  %i.afy = icmp sgt i32 %4, 0
  %i.afz = select i1 %.not306.not, i64 64, i64 %i.aad ; 3 uses
  %i.aga = select i1 %.not307.not, i64 64, i64 %i.aad ; 3 uses
  br i1 %i.afy, label %.preheader323.preheader, label %.loopexit

.preheader323.preheader:                          ; preds = %.preheader323.lr.ph
  %i.agb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.l
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !13 ; 3 uses
  %i.agd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.o
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !13 ; 3 uses
  %wide.trip.count489 = zext nneg i32 %4 to i64   ; 11 uses
  %i.agf = add nsw i32 %5, -1
  %i.agg = zext i32 %i.agf to i64                 ; 3 uses
  %i.agh = mul nsw i64 %i.aad, %i.agg
  %i.agi = getelementptr i8, ptr %1, i64 %i.agh
  %scevgep724 = getelementptr i8, ptr %i.agi, i64 %wide.trip.count489 ; 2 uses
  %i.agj = mul nsw i64 %i.afz, %i.agg
  %i.agk = getelementptr i8, ptr %i.agc, i64 %i.agj
  %scevgep725 = getelementptr i8, ptr %i.agk, i64 %wide.trip.count489
  %i.agl = mul nsw i64 %i.aga, %i.agg
  %i.agm = getelementptr i8, ptr %i.age, i64 %i.agl
  %scevgep726 = getelementptr i8, ptr %i.agm, i64 %wide.trip.count489
  %min.iters.check739 = icmp ult i32 %4, 4
  %bound0727.a = icmp ult ptr %1, %scevgep725
  %bound1728.a = icmp ult ptr %i.agc, %scevgep724
  %found.conflict729.a = and i1 %bound0727.a, %bound1728.a
  %stride.check730.a = icmp slt i32 %3, 0
  %i.agn = or i1 %found.conflict729.a, %stride.check730.a
  %stride.check731 = icmp slt i64 %i.afz, 0
  %i.ago = or i1 %i.agn, %stride.check731
  %bound0732 = icmp ult ptr %1, %scevgep726
  %bound1733 = icmp ult ptr %i.age, %scevgep724
  %found.conflict734 = and i1 %bound0732, %bound1733
  %stride.check735 = icmp slt i32 %3, 0
  %14 = or i1 %found.conflict734, %stride.check735
  %stride.check736 = icmp slt i64 %i.aga, 0
  %i.agp = or i1 %14, %stride.check736
  %conflict.rdx737 = or i1 %i.ago, %i.agp
  %min.iters.check741 = icmp ult i32 %4, 16
  %i.agq = and i64 %wide.trip.count489, 12
  %n.vec743 = and i64 %wide.trip.count489, 2147483632 ; 4 uses
  %broadcast.splatinsert744 = insertelement <16 x i16> poison, i16 %i.afs, i64 0
  %broadcast.splat745 = shufflevector <16 x i16> %broadcast.splatinsert744, <16 x i16> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert746 = insertelement <16 x i16> poison, i16 %i.aft, i64 0
  %broadcast.splat747 = shufflevector <16 x i16> %broadcast.splatinsert746, <16 x i16> poison, <16 x i32> zeroinitializer
  %cmp.n754 = icmp eq i64 %n.vec743, %wide.trip.count489
  %min.epilog.iters.check759 = icmp eq i64 %i.agq, 0
  %n.vec761 = and i64 %wide.trip.count489, 2147483644 ; 3 uses
  %broadcast.splatinsert762 = insertelement <4 x i16> poison, i16 %i.afs, i64 0
  %broadcast.splat763 = shufflevector <4 x i16> %broadcast.splatinsert762, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert764 = insertelement <4 x i16> poison, i16 %i.aft, i64 0
  %broadcast.splat765 = shufflevector <4 x i16> %broadcast.splatinsert764, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n772 = icmp eq i64 %n.vec761, %wide.trip.count489
  %xtraiter = and i64 %wide.trip.count489, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.agr = add nsw i64 %wide.trip.count489, -1
  br label %iter.check756

iter.check756:                                    ; preds = %.preheader323.preheader, %._crit_edge
  %.0403 = phi ptr [ %i.ajf, %._crit_edge ], [ %i.age, %.preheader323.preheader ] ; 6 uses
  %.0269402 = phi ptr [ %i.aje, %._crit_edge ], [ %i.agc, %.preheader323.preheader ] ; 6 uses
  %.4401 = phi i32 [ %i.ajh, %._crit_edge ], [ 0, %.preheader323.preheader ]
  %.1293400 = phi ptr [ %i.ajg, %._crit_edge ], [ %1, %.preheader323.preheader ] ; 6 uses
  %brmerge872 = select i1 %min.iters.check739, i1 true, i1 %conflict.rdx737
  br i1 %brmerge872, label %vec.epilog.scalar.ph757.preheader, label %vector.main.loop.iter.check740

vector.main.loop.iter.check740:                   ; preds = %iter.check756
  br i1 %min.iters.check741, label %vec.epilog.ph760, label %vector.body748

vector.body748:                                   ; preds = %vector.main.loop.iter.check740, %vector.body748
  %index749 = phi i64 [ %index.next752, %vector.body748 ], [ 0, %vector.main.loop.iter.check740 ] ; 4 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %.0269402, i64 %index749
  %wide.load750 = load <16 x i8>, ptr %i.ags, align 1, !tbaa !11, !alias.scope !145
  %i.agt = zext <16 x i8> %wide.load750 to <16 x i16>
  %i.agu = mul nuw <16 x i16> %broadcast.splat745, %i.agt
  %i.agv = getelementptr inbounds nuw i8, ptr %.0403, i64 %index749
  %wide.load751 = load <16 x i8>, ptr %i.agv, align 1, !tbaa !11, !alias.scope !146
  %i.agw = zext <16 x i8> %wide.load751 to <16 x i16>
  %i.agx = mul <16 x i16> %broadcast.splat747, %i.agw
  %i.agy = add nuw <16 x i16> %i.agu, splat (i16 4)
  %i.agz = add <16 x i16> %i.agy, %i.agx
  %i.aha = lshr <16 x i16> %i.agz, splat (i16 3)
  %i.ahb = trunc <16 x i16> %i.aha to <16 x i8>
  %i.ahc = getelementptr inbounds nuw i8, ptr %.1293400, i64 %index749
  store <16 x i8> %i.ahb, ptr %i.ahc, align 1, !tbaa !11, !alias.scope !147, !noalias !148
  %index.next752 = add nuw i64 %index749, 16      ; 2 uses
  %i.ahd = icmp eq i64 %index.next752, %n.vec743
  br i1 %i.ahd, label %middle.block753, label %vector.body748, !llvm.loop !123

middle.block753:                                  ; preds = %vector.body748
  br i1 %cmp.n754, label %._crit_edge, label %vec.epilog.iter.check758

vec.epilog.iter.check758:                         ; preds = %middle.block753
  br i1 %min.epilog.iters.check759, label %vec.epilog.scalar.ph757.preheader, label %vec.epilog.ph760, !prof !138

vec.epilog.ph760:                                 ; preds = %vector.main.loop.iter.check740, %vec.epilog.iter.check758
  %vec.epilog.resume.val755 = phi i64 [ %n.vec743, %vec.epilog.iter.check758 ], [ 0, %vector.main.loop.iter.check740 ]
  br label %vec.epilog.vector.body766

vec.epilog.vector.body766:                        ; preds = %vec.epilog.vector.body766, %vec.epilog.ph760
  %index767 = phi i64 [ %vec.epilog.resume.val755, %vec.epilog.ph760 ], [ %index.next770, %vec.epilog.vector.body766 ] ; 4 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %.0269402, i64 %index767
  %wide.load768 = load <4 x i8>, ptr %i.ahe, align 1, !tbaa !11, !alias.scope !145
  %i.ahf = zext <4 x i8> %wide.load768 to <4 x i16>
  %i.ahg = mul nuw <4 x i16> %broadcast.splat763, %i.ahf
  %i.ahh = getelementptr inbounds nuw i8, ptr %.0403, i64 %index767
  %wide.load769 = load <4 x i8>, ptr %i.ahh, align 1, !tbaa !11, !alias.scope !146
  %i.ahi = zext <4 x i8> %wide.load769 to <4 x i16>
  %i.ahj = mul <4 x i16> %broadcast.splat765, %i.ahi
  %i.ahk = add nuw <4 x i16> %i.ahg, splat (i16 4)
  %i.ahl = add <4 x i16> %i.ahk, %i.ahj
  %i.ahm = lshr <4 x i16> %i.ahl, splat (i16 3)
  %i.ahn = trunc <4 x i16> %i.ahm to <4 x i8>
  %i.aho = getelementptr inbounds nuw i8, ptr %.1293400, i64 %index767
  store <4 x i8> %i.ahn, ptr %i.aho, align 1, !tbaa !11, !alias.scope !147, !noalias !148
  %index.next770 = add nuw i64 %index767, 4       ; 2 uses
  %i.ahp = icmp eq i64 %index.next770, %n.vec761
  br i1 %i.ahp, label %vec.epilog.middle.block771, label %vec.epilog.vector.body766, !llvm.loop !124

vec.epilog.middle.block771:                       ; preds = %vec.epilog.vector.body766
  br i1 %cmp.n772, label %._crit_edge, label %vec.epilog.scalar.ph757.preheader

vec.epilog.scalar.ph757.preheader:                ; preds = %iter.check756, %vec.epilog.iter.check758, %vec.epilog.middle.block771
  %indvars.iv486.ph = phi i64 [ 0, %iter.check756 ], [ %n.vec761, %vec.epilog.middle.block771 ], [ %n.vec743, %vec.epilog.iter.check758 ] ; 6 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph757.prol.loopexit, label %vec.epilog.scalar.ph757.prol

vec.epilog.scalar.ph757.prol:                     ; preds = %vec.epilog.scalar.ph757.preheader
  %i.ahq = getelementptr inbounds nuw i8, ptr %.0269402, i64 %indvars.iv486.ph
  %i.ahr = load i8, ptr %i.ahq, align 1, !tbaa !11
  %i.ahs = zext i8 %i.ahr to i16
  %i.aht = mul nuw i16 %i.ahs, %i.afs
  %i.ahu = getelementptr inbounds nuw i8, ptr %.0403, i64 %indvars.iv486.ph
  %i.ahv = load i8, ptr %i.ahu, align 1, !tbaa !11
  %i.ahw = zext i8 %i.ahv to i16
  %i.ahx = mul i16 %i.aft, %i.ahw
  %i.ahy = add nuw i16 %i.aht, 4
  %i.ahz = add i16 %i.ahy, %i.ahx
  %i.aia = lshr i16 %i.ahz, 3
  %i.aib = trunc i16 %i.aia to i8
  %i.aic = getelementptr inbounds nuw i8, ptr %.1293400, i64 %indvars.iv486.ph
  store i8 %i.aib, ptr %i.aic, align 1, !tbaa !11
  %indvars.iv.next487.prol = or disjoint i64 %indvars.iv486.ph, 1
  br label %vec.epilog.scalar.ph757.prol.loopexit

vec.epilog.scalar.ph757.prol.loopexit:            ; preds = %vec.epilog.scalar.ph757.prol, %vec.epilog.scalar.ph757.preheader
  %indvars.iv486.unr = phi i64 [ %indvars.iv486.ph, %vec.epilog.scalar.ph757.preheader ], [ %indvars.iv.next487.prol, %vec.epilog.scalar.ph757.prol ]
  %i.aid = icmp eq i64 %indvars.iv486.ph, %i.agr
  br i1 %i.aid, label %._crit_edge, label %vec.epilog.scalar.ph757

vec.epilog.scalar.ph757:                          ; preds = %vec.epilog.scalar.ph757.prol.loopexit, %vec.epilog.scalar.ph757
  %indvars.iv486 = phi i64 [ %indvars.iv.next487.1, %vec.epilog.scalar.ph757 ], [ %indvars.iv486.unr, %vec.epilog.scalar.ph757.prol.loopexit ] ; 5 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %.0269402, i64 %indvars.iv486
  %i.aif = load i8, ptr %i.aie, align 1, !tbaa !11
  %i.aig = zext i8 %i.aif to i16
  %i.aih = mul nuw i16 %i.aig, %i.afs
  %i.aii = getelementptr inbounds nuw i8, ptr %.0403, i64 %indvars.iv486
  %i.aij = load i8, ptr %i.aii, align 1, !tbaa !11
  %i.aik = zext i8 %i.aij to i16
  %i.ail = mul i16 %i.aft, %i.aik
  %i.aim = add nuw i16 %i.aih, 4
  %i.ain = add i16 %i.aim, %i.ail
  %i.aio = lshr i16 %i.ain, 3
  %i.aip = trunc i16 %i.aio to i8
  %i.aiq = getelementptr inbounds nuw i8, ptr %.1293400, i64 %indvars.iv486
  store i8 %i.aip, ptr %i.aiq, align 1, !tbaa !11
  %indvars.iv.next487 = add nuw nsw i64 %indvars.iv486, 1 ; 3 uses
  %i.air = getelementptr inbounds nuw i8, ptr %.0269402, i64 %indvars.iv.next487
  %i.ais = load i8, ptr %i.air, align 1, !tbaa !11
  %i.ait = zext i8 %i.ais to i16
  %i.aiu = mul nuw i16 %i.ait, %i.afs
  %i.aiv = getelementptr inbounds nuw i8, ptr %.0403, i64 %indvars.iv.next487
  %i.aiw = load i8, ptr %i.aiv, align 1, !tbaa !11
  %i.aix = zext i8 %i.aiw to i16
  %i.aiy = mul i16 %i.aft, %i.aix
  %i.aiz = add nuw i16 %i.aiu, 4
  %i.aja = add i16 %i.aiz, %i.aiy
  %i.ajb = lshr i16 %i.aja, 3
  %i.ajc = trunc i16 %i.ajb to i8
  %i.ajd = getelementptr inbounds nuw i8, ptr %.1293400, i64 %indvars.iv.next487
  store i8 %i.ajc, ptr %i.ajd, align 1, !tbaa !11
  %indvars.iv.next487.1 = add nuw nsw i64 %indvars.iv486, 2 ; 2 uses
  %exitcond490.not.1 = icmp eq i64 %indvars.iv.next487.1, %wide.trip.count489
  br i1 %exitcond490.not.1, label %._crit_edge, label %vec.epilog.scalar.ph757, !llvm.loop !125

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph757.prol.loopexit, %vec.epilog.scalar.ph757, %vec.epilog.middle.block771, %middle.block753
  %i.aje = getelementptr inbounds i8, ptr %.0269402, i64 %i.afz
  %i.ajf = getelementptr inbounds i8, ptr %.0403, i64 %i.aga
  %i.ajg = getelementptr inbounds i8, ptr %.1293400, i64 %i.aad
  %i.ajh = add nuw nsw i32 %.4401, 1              ; 2 uses
  %exitcond491.not = icmp eq i32 %i.ajh, %5
  br i1 %exitcond491.not, label %.loopexit, label %iter.check756, !llvm.loop !126

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge405, %bb.k, %.preheader323.lr.ph, %bb.j, %.preheader.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define range(i32 -12, 1) i32 @ff_snow_common_init(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 26 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %0, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 6148
  store i32 1, ptr %i.d, align 4, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 6136
  store i32 1, ptr %i.e, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 960
  tail call void @ff_videodsp_init(ptr noundef nonnull %i.f, i32 noundef 8) #16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1744
  tail call void @ff_dwt_init(ptr noundef nonnull %i.g) #16
  tail call fastcc void @init_qpel(ptr noundef %i.b) #17
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 840
  store ptr @mc_block_hpel8016, ptr %i.h, align 8, !tbaa !150
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 584
  store ptr @mc_block_hpel8016, ptr %i.i, align 8, !tbaa !150
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 872
  store ptr @mc_block_hpel808, ptr %i.j, align 8, !tbaa !150
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 616
  store ptr @mc_block_hpel808, ptr %i.k, align 8, !tbaa !150
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 848
  store ptr @mc_block_hpel0816, ptr %i.l, align 8, !tbaa !150
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  store ptr @mc_block_hpel0816, ptr %i.m, align 8, !tbaa !150
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 880
  store ptr @mc_block_hpel088, ptr %i.n, align 8, !tbaa !150
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  store ptr @mc_block_hpel088, ptr %i.o, align 8, !tbaa !150
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 856
  store ptr @mc_block_hpel8816, ptr %i.p, align 8, !tbaa !150
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 600
  store ptr @mc_block_hpel8816, ptr %i.q, align 8, !tbaa !150
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 888
  store ptr @mc_block_hpel888, ptr %i.r, align 8, !tbaa !150
end_hunk_1

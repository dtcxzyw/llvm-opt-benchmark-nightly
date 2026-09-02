Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_utils?download=true
inline.NumInlined: 12
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
begin_hunk_0_@lv_draw_sw_rotate:bb.a
  %i.iq = add i64 %i.io, %wide.trip.count.i127
  %i.ir = shl i64 %i.iq, 1
  %scevgep386 = getelementptr i8, ptr %0, i64 %i.ir
  %i.is = sub nsw i64 2, %i.ip
  %scevgep387 = getelementptr i8, ptr %1, i64 %i.is
  %i.it = add nsw i32 %3, -1
  %i.iu = mul i32 %i.ig, %i.it
  %i.iv = add i32 %2, %i.iu
  %scevgep389 = getelementptr i8, ptr %1, i64 2
  %min.iters.check396 = icmp ult i32 %2, 4
  %i.iw = trunc nsw i64 %i.ij to i32
  %i.ix = icmp ugt i64 %i.ij, 4294967295
  %stride.check394 = icmp slt i32 %i.ih, 0
  %min.iters.check398 = icmp ult i32 %2, 16
  %i.iy = and i64 %wide.trip.count.i127, 12
  %n.vec400 = and i64 %wide.trip.count.i127, 2147483632 ; 4 uses
  %cmp.n409 = icmp eq i64 %n.vec400, %wide.trip.count.i127
  %min.epilog.iters.check414 = icmp eq i64 %i.iy, 0
  %n.vec416 = and i64 %wide.trip.count.i127, 2147483644 ; 3 uses
  %cmp.n423 = icmp eq i64 %n.vec416, %wide.trip.count.i127
  %xtraiter595 = and i64 %wide.trip.count.i127, 1
  %lcmp.mod596.not = icmp eq i64 %xtraiter595, 0
  %i.iz = add nsw i64 %wide.trip.count.i127, -1
  br label %iter.check411

iter.check411:                                    ; preds = %._crit_edge.i134, %.lr.ph.preheader.i126
  %indvars.iv28.i = phi i64 [ 0, %.lr.ph.preheader.i126 ], [ %indvars.iv.next29.i, %._crit_edge.i134 ] ; 5 uses
  %i.ja = trunc i64 %indvars.iv28.i to i32
  %i.jb = mul i32 %i.ig, %i.ja
  %i.jc = xor i32 %i.jb, -1
  %i.jd = add i32 %i.iv, %i.jc
  %i.je = sext i32 %i.jd to i64
  %i.jf = shl nsw i64 %i.je, 1                    ; 2 uses
  %scevgep388 = getelementptr i8, ptr %scevgep387, i64 %i.jf
  %scevgep390 = getelementptr i8, ptr %scevgep389, i64 %i.jf
  %i.jg = mul nsw i64 %indvars.iv28.i, %i.ii
  %invariant.gep.i129 = getelementptr [2 x i8], ptr %0, i64 %i.jg ; 5 uses
  %i.jh = trunc i64 %indvars.iv28.i to i32
  %i.ji = xor i32 %i.jh, -1
  %i.jj = add i32 %3, %i.ji
  %i.jk = mul i32 %i.jj, %i.ig
  %i.jl = add i32 %i.jk, %2                       ; 5 uses
  br i1 %min.iters.check396, label %vec.epilog.scalar.ph412.preheader, label %vector.scevcheck384

vector.scevcheck384:                              ; preds = %iter.check411
  %i.jm = trunc i64 %indvars.iv28.i to i32
  %i.jn = mul i32 %i.ig, %i.jm
  %i.jo = xor i32 %i.jn, -1
  %i.jp = add i32 %i.im, %i.jo                    ; 2 uses
  %i.jq = sub i32 %i.jp, %i.iw
  %i.jr = icmp sgt i32 %i.jq, %i.jp
  %i.js = or i1 %i.jr, %i.ix
  br i1 %i.js, label %vec.epilog.scalar.ph412.preheader, label %vector.memcheck385

vector.memcheck385:                               ; preds = %vector.scevcheck384
  %bound0391 = icmp ult ptr %0, %scevgep390
  %bound1392 = icmp ult ptr %scevgep388, %scevgep386
  %found.conflict393 = and i1 %bound0391, %bound1392
  %i.jt = or i1 %found.conflict393, %stride.check394
  br i1 %i.jt, label %vec.epilog.scalar.ph412.preheader, label %vector.main.loop.iter.check397

vector.main.loop.iter.check397:                   ; preds = %vector.memcheck385
  br i1 %min.iters.check398, label %vec.epilog.ph415, label %vector.body401

vector.body401:                                   ; preds = %vector.main.loop.iter.check397, %vector.body401
  %index402 = phi i64 [ %index.next407, %vector.body401 ], [ 0, %vector.main.loop.iter.check397 ] ; 3 uses
  %i.ju = getelementptr [2 x i8], ptr %invariant.gep.i129, i64 %index402 ; 2 uses
  %i.jv = getelementptr i8, ptr %i.ju, i64 16
  %wide.load403 = load <8 x i16>, ptr %i.ju, align 2, !tbaa !14, !alias.scope !111, !noalias !112
  %wide.load404 = load <8 x i16>, ptr %i.jv, align 2, !tbaa !14, !alias.scope !111, !noalias !112
  %i.jw = trunc i64 %index402 to i32
  %i.jx = xor i32 %i.jw, -1
  %i.jy = add i32 %i.jl, %i.jx
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [2 x i8], ptr %1, i64 %i.jz ; 2 uses
  %i.kb = getelementptr inbounds i8, ptr %i.ka, i64 -14
  %i.kc = getelementptr inbounds i8, ptr %i.ka, i64 -30
  %reverse405 = shufflevector <8 x i16> %wide.load403, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse406 = shufflevector <8 x i16> %wide.load404, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse405, ptr %i.kb, align 2, !tbaa !14, !alias.scope !112
  store <8 x i16> %reverse406, ptr %i.kc, align 2, !tbaa !14, !alias.scope !112
  %index.next407 = add nuw i64 %index402, 16      ; 2 uses
  %i.kd = icmp eq i64 %index.next407, %n.vec400
  br i1 %i.kd, label %middle.block408, label %vector.body401, !llvm.loop !66

middle.block408:                                  ; preds = %vector.body401
  br i1 %cmp.n409, label %._crit_edge.i134, label %vec.epilog.iter.check413

vec.epilog.iter.check413:                         ; preds = %middle.block408
  br i1 %min.epilog.iters.check414, label %vec.epilog.scalar.ph412.preheader, label %vec.epilog.ph415, !prof !106

vec.epilog.ph415:                                 ; preds = %vector.main.loop.iter.check397, %vec.epilog.iter.check413
  %vec.epilog.resume.val410 = phi i64 [ %n.vec400, %vec.epilog.iter.check413 ], [ 0, %vector.main.loop.iter.check397 ]
  br label %vec.epilog.vector.body417

vec.epilog.vector.body417:                        ; preds = %vec.epilog.vector.body417, %vec.epilog.ph415
  %index418 = phi i64 [ %vec.epilog.resume.val410, %vec.epilog.ph415 ], [ %index.next421, %vec.epilog.vector.body417 ] ; 3 uses
  %i.ke = getelementptr [2 x i8], ptr %invariant.gep.i129, i64 %index418
  %wide.load419 = load <4 x i16>, ptr %i.ke, align 2, !tbaa !14, !alias.scope !111, !noalias !112
  %i.kf = trunc i64 %index418 to i32
  %i.kg = xor i32 %i.kf, -1
  %i.kh = add i32 %i.jl, %i.kg
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ki
  %i.kk = getelementptr inbounds i8, ptr %i.kj, i64 -6
  %reverse420 = shufflevector <4 x i16> %wide.load419, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i16> %reverse420, ptr %i.kk, align 2, !tbaa !14, !alias.scope !112
  %index.next421 = add nuw i64 %index418, 4       ; 2 uses
  %i.kl = icmp eq i64 %index.next421, %n.vec416
  br i1 %i.kl, label %vec.epilog.middle.block422, label %vec.epilog.vector.body417, !llvm.loop !67

vec.epilog.middle.block422:                       ; preds = %vec.epilog.vector.body417
  br i1 %cmp.n423, label %._crit_edge.i134, label %vec.epilog.scalar.ph412.preheader

vec.epilog.scalar.ph412.preheader:                ; preds = %vector.memcheck385, %vector.scevcheck384, %iter.check411, %vec.epilog.iter.check413, %vec.epilog.middle.block422
  %indvars.iv.i130.ph = phi i64 [ 0, %iter.check411 ], [ 0, %vector.scevcheck384 ], [ 0, %vector.memcheck385 ], [ %n.vec400, %vec.epilog.iter.check413 ], [ %n.vec416, %vec.epilog.middle.block422 ] ; 5 uses
  br i1 %lcmp.mod596.not, label %vec.epilog.scalar.ph412.prol.loopexit, label %vec.epilog.scalar.ph412.prol

vec.epilog.scalar.ph412.prol:                     ; preds = %vec.epilog.scalar.ph412.preheader
  %gep.i131.prol = getelementptr [2 x i8], ptr %invariant.gep.i129, i64 %indvars.iv.i130.ph
  %i.km = load i16, ptr %gep.i131.prol, align 2, !tbaa !14
  %i.kn = trunc nuw nsw i64 %indvars.iv.i130.ph to i32
  %i.ko = xor i32 %i.kn, -1
  %i.kp = add i32 %i.jl, %i.ko
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds [2 x i8], ptr %1, i64 %i.kq
  store i16 %i.km, ptr %i.kr, align 2, !tbaa !14
  %indvars.iv.next.i132.prol = or disjoint i64 %indvars.iv.i130.ph, 1
  br label %vec.epilog.scalar.ph412.prol.loopexit

vec.epilog.scalar.ph412.prol.loopexit:            ; preds = %vec.epilog.scalar.ph412.prol, %vec.epilog.scalar.ph412.preheader
  %indvars.iv.i130.unr = phi i64 [ %indvars.iv.i130.ph, %vec.epilog.scalar.ph412.preheader ], [ %indvars.iv.next.i132.prol, %vec.epilog.scalar.ph412.prol ]
  %i.ks = icmp eq i64 %indvars.iv.i130.ph, %i.iz
  br i1 %i.ks, label %._crit_edge.i134, label %vec.epilog.scalar.ph412

._crit_edge.i134:                                 ; preds = %vec.epilog.scalar.ph412.prol.loopexit, %vec.epilog.scalar.ph412, %vec.epilog.middle.block422, %middle.block408
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next29.i, %wide.trip.count31.i
  br i1 %exitcond32.not.i, label %rotate90_l8.exit, label %iter.check411, !llvm.loop !68

vec.epilog.scalar.ph412:                          ; preds = %vec.epilog.scalar.ph412.prol.loopexit, %vec.epilog.scalar.ph412
  %indvars.iv.i130 = phi i64 [ %indvars.iv.next.i132.1, %vec.epilog.scalar.ph412 ], [ %indvars.iv.i130.unr, %vec.epilog.scalar.ph412.prol.loopexit ] ; 4 uses
  %gep.i131 = getelementptr [2 x i8], ptr %invariant.gep.i129, i64 %indvars.iv.i130
  %i.kt = load i16, ptr %gep.i131, align 2, !tbaa !14
  %i.ku = trunc i64 %indvars.iv.i130 to i32
  %i.kv = xor i32 %i.ku, -1
  %i.kw = add i32 %i.jl, %i.kv
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds [2 x i8], ptr %1, i64 %i.kx
  store i16 %i.kt, ptr %i.ky, align 2, !tbaa !14
  %indvars.iv.next.i132 = add nuw nsw i64 %indvars.iv.i130, 1 ; 2 uses
  %gep.i131.1 = getelementptr [2 x i8], ptr %invariant.gep.i129, i64 %indvars.iv.next.i132
  %i.kz = load i16, ptr %gep.i131.1, align 2, !tbaa !14
  %i.la = trunc i64 %indvars.iv.next.i132 to i32
  %i.lb = xor i32 %i.la, -1
  %i.lc = add i32 %i.jl, %i.lb
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ld
  store i16 %i.kz, ptr %i.le, align 2, !tbaa !14
  %indvars.iv.next.i132.1 = add nuw nsw i64 %indvars.iv.i130, 2 ; 2 uses
  %exitcond.not.i133.1 = icmp eq i64 %indvars.iv.next.i132.1, %wide.trip.count.i127
  br i1 %exitcond.not.i133.1, label %._crit_edge.i134, label %vec.epilog.scalar.ph412, !llvm.loop !69

bb.j:                                             ; preds = %bb.g
  %i.lf = icmp sgt i32 %3, 0
  %i.lg = icmp sgt i32 %2, 0
  %or.cond.i135 = and i1 %i.lg, %i.lf
  br i1 %or.cond.i135, label %.preheader.preheader.i136, label %rotate90_l8.exit

.preheader.preheader.i136:                        ; preds = %bb.j
  %i.lh = zext nneg i32 %2 to i64                 ; 5 uses
  %i.li = zext nneg i32 %3 to i64                 ; 2 uses
  %i.lj = sext i32 %5 to i64
  %i.lk = sext i32 %4 to i64
  %xtraiter590 = and i64 %i.lh, 1
  %i.ll = icmp eq i32 %2, 1
  %unroll_iter593 = and i64 %i.lh, 2147483646
  %lcmp.mod591.not = icmp eq i64 %xtraiter590, 0
  %lcmp.mod592 = trunc i32 %2 to i1
  br label %.preheader.i139

.preheader.i139:                                  ; preds = %._crit_edge.i145, %.preheader.preheader.i136
  %indvars.iv32.i = phi i64 [ 0, %.preheader.preheader.i136 ], [ %indvars.iv.next33.i, %._crit_edge.i145 ] ; 3 uses
  %i.lm = mul nsw i64 %indvars.iv32.i, %i.lk
  %i.ln = xor i64 %indvars.iv32.i, -1
  %i.lo = add nsw i64 %i.ln, %i.li
  %i.lp = mul nsw i64 %i.lo, %i.lj
  %invariant.gep.i140 = getelementptr i8, ptr %0, i64 %i.lm ; 3 uses
  %invariant.gep38.i = getelementptr i8, ptr %1, i64 %i.lp ; 3 uses
  br i1 %i.ll, label %.epil.preheader589, label %.preheader.i139.new

._crit_edge.i145.unr-lcssa:                       ; preds = %.preheader.i139.new
  br i1 %lcmp.mod591.not, label %._crit_edge.i145, label %.epil.preheader589

.epil.preheader589:                               ; preds = %._crit_edge.i145.unr-lcssa, %.preheader.i139
  %indvars.iv.i141.epil.init = phi i64 [ 0, %.preheader.i139 ], [ %indvars.iv.next.i143.1, %._crit_edge.i145.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod592)
  %i.lq = mul nuw nsw i64 %indvars.iv.i141.epil.init, 3
  %i.lr = xor i64 %indvars.iv.i141.epil.init, -1
  %i.ls = add nsw i64 %i.lr, %i.lh
  %i.lt = mul nsw i64 %i.ls, 3
  %gep.i142.epil = getelementptr i8, ptr %invariant.gep.i140, i64 %i.lq ; 3 uses
  %i.lu = load i8, ptr %gep.i142.epil, align 1, !tbaa !8
  %gep39.i.epil = getelementptr i8, ptr %invariant.gep38.i, i64 %i.lt ; 3 uses
  store i8 %i.lu, ptr %gep39.i.epil, align 1, !tbaa !8
  %i.lv = getelementptr i8, ptr %gep.i142.epil, i64 1
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !8
  %i.lx = getelementptr i8, ptr %gep39.i.epil, i64 1
  store i8 %i.lw, ptr %i.lx, align 1, !tbaa !8
  %i.ly = getelementptr i8, ptr %gep.i142.epil, i64 2
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !8
  %i.ma = getelementptr i8, ptr %gep39.i.epil, i64 2
  store i8 %i.lz, ptr %i.ma, align 1, !tbaa !8
  br label %._crit_edge.i145

._crit_edge.i145:                                 ; preds = %._crit_edge.i145.unr-lcssa, %.epil.preheader589
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %exitcond36.not.i146 = icmp eq i64 %indvars.iv.next33.i, %i.li
  br i1 %exitcond36.not.i146, label %rotate90_l8.exit, label %.preheader.i139, !llvm.loop !70

.preheader.i139.new:                              ; preds = %.preheader.i139, %.preheader.i139.new
  %indvars.iv.i141 = phi i64 [ %indvars.iv.next.i143.1, %.preheader.i139.new ], [ 0, %.preheader.i139 ] ; 5 uses
  %niter594 = phi i64 [ %niter594.next.1, %.preheader.i139.new ], [ 0, %.preheader.i139 ]
  %i.mb = mul nuw nsw i64 %indvars.iv.i141, 3
  %i.mc = xor i64 %indvars.iv.i141, -1
  %i.md = add nsw i64 %i.mc, %i.lh
  %i.me = mul nsw i64 %i.md, 3
  %gep.i142 = getelementptr i8, ptr %invariant.gep.i140, i64 %i.mb ; 3 uses
  %i.mf = load i8, ptr %gep.i142, align 1, !tbaa !8
  %gep39.i = getelementptr i8, ptr %invariant.gep38.i, i64 %i.me ; 3 uses
  store i8 %i.mf, ptr %gep39.i, align 1, !tbaa !8
  %i.mg = getelementptr i8, ptr %gep.i142, i64 1
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !8
  %i.mi = getelementptr i8, ptr %gep39.i, i64 1
  store i8 %i.mh, ptr %i.mi, align 1, !tbaa !8
  %i.mj = getelementptr i8, ptr %gep.i142, i64 2
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !8
  %i.ml = getelementptr i8, ptr %gep39.i, i64 2
  store i8 %i.mk, ptr %i.ml, align 1, !tbaa !8
  %i.mm = mul nuw i64 %indvars.iv.i141, 3
  %i.mn = xor i64 %indvars.iv.i141, -2
  %i.mo = add nsw i64 %i.mn, %i.lh
  %i.mp = mul nsw i64 %i.mo, 3
  %i.mq = getelementptr i8, ptr %invariant.gep.i140, i64 %i.mm ; 3 uses
  %gep.i142.1 = getelementptr i8, ptr %i.mq, i64 3
  %i.mr = load i8, ptr %gep.i142.1, align 1, !tbaa !8
  %gep39.i.1 = getelementptr i8, ptr %invariant.gep38.i, i64 %i.mp ; 3 uses
  store i8 %i.mr, ptr %gep39.i.1, align 1, !tbaa !8
  %i.ms = getelementptr i8, ptr %i.mq, i64 4
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !8
  %i.mu = getelementptr i8, ptr %gep39.i.1, i64 1
  store i8 %i.mt, ptr %i.mu, align 1, !tbaa !8
  %i.mv = getelementptr i8, ptr %i.mq, i64 5
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !8
  %i.mx = getelementptr i8, ptr %gep39.i.1, i64 2
  store i8 %i.mw, ptr %i.mx, align 1, !tbaa !8
  %indvars.iv.next.i143.1 = add nuw nsw i64 %indvars.iv.i141, 2 ; 2 uses
  %niter594.next.1 = add i64 %niter594, 2         ; 2 uses
  %niter594.ncmp.1 = icmp eq i64 %niter594.next.1, %unroll_iter593
  br i1 %niter594.ncmp.1, label %._crit_edge.i145.unr-lcssa, label %.preheader.i139.new, !llvm.loop !71

bb.k:                                             ; preds = %bb.g, %bb.g
  %i.my = icmp sgt i32 %3, 0
  %i.mz = icmp sgt i32 %2, 0
  %or.cond.i147 = and i1 %i.mz, %i.my
  br i1 %or.cond.i147, label %.lr.ph.preheader.i148, label %rotate90_l8.exit

.lr.ph.preheader.i148:                            ; preds = %bb.k
  %i.na = ashr i32 %5, 2                          ; 5 uses
  %i.nb = ashr i32 %4, 2                          ; 2 uses
  %i.nc = sext i32 %i.nb to i64                   ; 2 uses
  %wide.trip.count31.i149 = zext nneg i32 %3 to i64 ; 2 uses
  %wide.trip.count.i150 = zext nneg i32 %2 to i64 ; 8 uses
  %i.nd = add nsw i64 %wide.trip.count.i150, -1   ; 2 uses
  %i.ne = add nsw i32 %3, -1
  %i.nf = mul i32 %i.na, %i.ne
  %i.ng = add i32 %2, %i.nf
  %i.nh = add nuw nsw i64 %wide.trip.count31.i149, 4611686018427387903
  %i.ni = mul i64 %i.nh, %i.nc
  %i.nj = shl nuw nsw i64 %wide.trip.count.i150, 2
  %i.nk = add i64 %i.ni, %wide.trip.count.i150
  %i.nl = shl i64 %i.nk, 2
  %scevgep362 = getelementptr i8, ptr %0, i64 %i.nl
  %i.nm = sub nsw i64 4, %i.nj
  %scevgep363 = getelementptr i8, ptr %1, i64 %i.nm
  %i.nn = add nsw i32 %3, -1
  %i.no = mul i32 %i.na, %i.nn
  %i.np = add i32 %2, %i.no
  %scevgep365 = getelementptr i8, ptr %1, i64 4
  %min.iters.check371 = icmp ult i32 %2, 12
  %i.nq = trunc nsw i64 %i.nd to i32
  %i.nr = icmp ugt i64 %i.nd, 4294967295
  %stride.check = icmp slt i32 %i.nb, 0
  %n.vec373 = and i64 %wide.trip.count.i150, 2147483640 ; 3 uses
  %cmp.n382 = icmp eq i64 %n.vec373, %wide.trip.count.i150
  %xtraiter587 = and i64 %wide.trip.count.i150, 1
  %lcmp.mod588.not = icmp eq i64 %xtraiter587, 0
  %i.ns = add nsw i64 %wide.trip.count.i150, -1
  br label %.lr.ph.i151

.lr.ph.i151:                                      ; preds = %._crit_edge.i158, %.lr.ph.preheader.i148
  %indvars.iv28.i152 = phi i64 [ 0, %.lr.ph.preheader.i148 ], [ %indvars.iv.next29.i159, %._crit_edge.i158 ] ; 5 uses
  %i.nt = trunc i64 %indvars.iv28.i152 to i32
  %i.nu = mul i32 %i.na, %i.nt
  %i.nv = xor i32 %i.nu, -1
  %i.nw = add i32 %i.np, %i.nv
  %i.nx = sext i32 %i.nw to i64
  %i.ny = shl nsw i64 %i.nx, 2                    ; 2 uses
  %scevgep364 = getelementptr i8, ptr %scevgep363, i64 %i.ny
  %scevgep366 = getelementptr i8, ptr %scevgep365, i64 %i.ny
  %i.nz = mul nsw i64 %indvars.iv28.i152, %i.nc
  %invariant.gep.i153 = getelementptr [4 x i8], ptr %0, i64 %i.nz ; 4 uses
  %i.oa = trunc i64 %indvars.iv28.i152 to i32
  %i.ob = xor i32 %i.oa, -1
  %i.oc = add i32 %3, %i.ob
  %i.od = mul i32 %i.oc, %i.na
  %i.oe = add i32 %i.od, %2                       ; 4 uses
  br i1 %min.iters.check371, label %scalar.ph370.preheader, label %vector.scevcheck360

vector.scevcheck360:                              ; preds = %.lr.ph.i151
  %i.of = trunc i64 %indvars.iv28.i152 to i32
  %i.og = mul i32 %i.na, %i.of
  %i.oh = xor i32 %i.og, -1
  %i.oi = add i32 %i.ng, %i.oh                    ; 2 uses
  %i.oj = sub i32 %i.oi, %i.nq
  %i.ok = icmp sgt i32 %i.oj, %i.oi
  %i.ol = or i1 %i.ok, %i.nr
  br i1 %i.ol, label %scalar.ph370.preheader, label %vector.memcheck361

vector.memcheck361:                               ; preds = %vector.scevcheck360
  %bound0367 = icmp ult ptr %0, %scevgep366
  %bound1368 = icmp ult ptr %scevgep364, %scevgep362
  %found.conflict369 = and i1 %bound0367, %bound1368
  %i.om = or i1 %found.conflict369, %stride.check
  br i1 %i.om, label %scalar.ph370.preheader, label %vector.body374

vector.body374:                                   ; preds = %vector.memcheck361, %vector.body374
  %index375 = phi i64 [ %index.next380, %vector.body374 ], [ 0, %vector.memcheck361 ] ; 3 uses
  %i.on = getelementptr [4 x i8], ptr %invariant.gep.i153, i64 %index375 ; 2 uses
  %i.oo = getelementptr i8, ptr %i.on, i64 16
  %wide.load376 = load <4 x i32>, ptr %i.on, align 4, !tbaa !9, !alias.scope !113, !noalias !114
  %wide.load377 = load <4 x i32>, ptr %i.oo, align 4, !tbaa !9, !alias.scope !113, !noalias !114
  %i.op = trunc i64 %index375 to i32
  %i.oq = xor i32 %i.op, -1
  %i.or = add i32 %i.oe, %i.oq
  %i.os = sext i32 %i.or to i64
  %i.ot = getelementptr inbounds [4 x i8], ptr %1, i64 %i.os ; 2 uses
  %i.ou = getelementptr inbounds i8, ptr %i.ot, i64 -12
  %i.ov = getelementptr inbounds i8, ptr %i.ot, i64 -28
  %reverse378 = shufflevector <4 x i32> %wide.load376, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse379 = shufflevector <4 x i32> %wide.load377, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse378, ptr %i.ou, align 4, !tbaa !9, !alias.scope !114
  store <4 x i32> %reverse379, ptr %i.ov, align 4, !tbaa !9, !alias.scope !114
  %index.next380 = add nuw i64 %index375, 8       ; 2 uses
  %i.ow = icmp eq i64 %index.next380, %n.vec373
  br i1 %i.ow, label %middle.block381, label %vector.body374, !llvm.loop !75

middle.block381:                                  ; preds = %vector.body374
  br i1 %cmp.n382, label %._crit_edge.i158, label %scalar.ph370.preheader

scalar.ph370.preheader:                           ; preds = %vector.memcheck361, %vector.scevcheck360, %.lr.ph.i151, %middle.block381
  %indvars.iv.i154.ph = phi i64 [ 0, %vector.memcheck361 ], [ 0, %vector.scevcheck360 ], [ 0, %.lr.ph.i151 ], [ %n.vec373, %middle.block381 ] ; 5 uses
  br i1 %lcmp.mod588.not, label %scalar.ph370.prol.loopexit, label %scalar.ph370.prol

scalar.ph370.prol:                                ; preds = %scalar.ph370.preheader
  %gep.i155.prol = getelementptr [4 x i8], ptr %invariant.gep.i153, i64 %indvars.iv.i154.ph
  %i.ox = load i32, ptr %gep.i155.prol, align 4, !tbaa !9
  %i.oy = trunc nuw nsw i64 %indvars.iv.i154.ph to i32
  %i.oz = xor i32 %i.oy, -1
  %i.pa = add i32 %i.oe, %i.oz
  %i.pb = sext i32 %i.pa to i64
  %i.pc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.pb
  store i32 %i.ox, ptr %i.pc, align 4, !tbaa !9
  %indvars.iv.next.i156.prol = or disjoint i64 %indvars.iv.i154.ph, 1
  br label %scalar.ph370.prol.loopexit

scalar.ph370.prol.loopexit:                       ; preds = %scalar.ph370.prol, %scalar.ph370.preheader
  %indvars.iv.i154.unr = phi i64 [ %indvars.iv.i154.ph, %scalar.ph370.preheader ], [ %indvars.iv.next.i156.prol, %scalar.ph370.prol ]
  %i.pd = icmp eq i64 %indvars.iv.i154.ph, %i.ns
  br i1 %i.pd, label %._crit_edge.i158, label %scalar.ph370

._crit_edge.i158:                                 ; preds = %scalar.ph370.prol.loopexit, %scalar.ph370, %middle.block381
  %indvars.iv.next29.i159 = add nuw nsw i64 %indvars.iv28.i152, 1 ; 2 uses
  %exitcond32.not.i160 = icmp eq i64 %indvars.iv.next29.i159, %wide.trip.count31.i149
  br i1 %exitcond32.not.i160, label %rotate90_l8.exit, label %.lr.ph.i151, !llvm.loop !76

scalar.ph370:                                     ; preds = %scalar.ph370.prol.loopexit, %scalar.ph370
  %indvars.iv.i154 = phi i64 [ %indvars.iv.next.i156.1, %scalar.ph370 ], [ %indvars.iv.i154.unr, %scalar.ph370.prol.loopexit ] ; 4 uses
  %gep.i155 = getelementptr [4 x i8], ptr %invariant.gep.i153, i64 %indvars.iv.i154
  %i.pe = load i32, ptr %gep.i155, align 4, !tbaa !9
  %i.pf = trunc i64 %indvars.iv.i154 to i32
  %i.pg = xor i32 %i.pf, -1
  %i.ph = add i32 %i.oe, %i.pg
  %i.pi = sext i32 %i.ph to i64
  %i.pj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.pi
  store i32 %i.pe, ptr %i.pj, align 4, !tbaa !9
  %indvars.iv.next.i156 = add nuw nsw i64 %indvars.iv.i154, 1 ; 2 uses
  %gep.i155.1 = getelementptr [4 x i8], ptr %invariant.gep.i153, i64 %indvars.iv.next.i156
  %i.pk = load i32, ptr %gep.i155.1, align 4, !tbaa !9
  %i.pl = trunc i64 %indvars.iv.next.i156 to i32
  %i.pm = xor i32 %i.pl, -1
  %i.pn = add i32 %i.oe, %i.pm
  %i.po = sext i32 %i.pn to i64
  %i.pp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.po
  store i32 %i.pk, ptr %i.pp, align 4, !tbaa !9
  %indvars.iv.next.i156.1 = add nuw nsw i64 %indvars.iv.i154, 2 ; 2 uses
  %exitcond.not.i157.1 = icmp eq i64 %indvars.iv.next.i156.1, %wide.trip.count.i150
  br i1 %exitcond.not.i157.1, label %._crit_edge.i158, label %scalar.ph370, !llvm.loop !77

bb.l:                                             ; preds = %bb.a
  switch i32 %7, label %rotate90_l8.exit [
    i32 6, label %bb.m
    i32 18, label %bb.n
    i32 15, label %bb.o
    i32 17, label %bb.p
    i32 16, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  %i.pq = icmp sgt i32 %2, 0
  %i.pr = icmp sgt i32 %3, 0
  %or.cond.i161 = and i1 %i.pq, %i.pr
  br i1 %or.cond.i161, label %.lr.ph.preheader.i162, label %rotate90_l8.exit

.lr.ph.preheader.i162:                            ; preds = %bb.m
  %i.ps = sext i32 %4 to i64                      ; 3 uses
  %wide.trip.count33.i163 = zext nneg i32 %2 to i64 ; 2 uses
  %wide.trip.count.i164 = zext nneg i32 %3 to i64 ; 11 uses
  %i.pt = add nsw i64 %wide.trip.count.i164, -1   ; 2 uses
  %i.pu = add nsw i32 %3, -1
  %i.pv = getelementptr i8, ptr %0, i64 %wide.trip.count.i164
  %i.pw = getelementptr i8, ptr %i.pv, i64 %wide.trip.count33.i163
  %scevgep320 = getelementptr i8, ptr %i.pw, i64 -1
  %i.px = sub nsw i64 1, %wide.trip.count.i164
  %scevgep321 = getelementptr i8, ptr %1, i64 %i.px
  %i.py = add nsw i32 %3, -1
  %scevgep323 = getelementptr i8, ptr %1, i64 1
  %min.iters.check329 = icmp ult i32 %3, 8
  %ident.check318 = icmp ne i32 %4, 1
  %i.pz = trunc nsw i64 %i.pt to i32
  %i.qa = icmp ugt i64 %i.pt, 4294967295
  %invariant.op617 = or i1 %i.qa, %ident.check318
  %min.iters.check331 = icmp ult i32 %3, 32
end_hunk_0
begin_hunk_1_@lv_draw_sw_rotate:bb.a
  %scevgep286 = getelementptr i8, ptr %i.sp, i64 -2
  %i.sq = sub nsw i64 2, %i.sm
  %scevgep287 = getelementptr i8, ptr %1, i64 %i.sq
  %i.sr = add nsw i32 %3, -1
  %scevgep289 = getelementptr i8, ptr %1, i64 2
  %min.iters.check295 = icmp ult i32 %3, 4
  %ident.check284 = icmp ne i32 %i.si, 1
  %i.ss = trunc nsw i64 %i.sk to i32
  %i.st = icmp ugt i64 %i.sk, 4294967295
  %invariant.op615 = or i1 %i.st, %ident.check284
  %min.iters.check296 = icmp ult i32 %3, 16
  %i.su = and i64 %wide.trip.count.i178, 12
  %n.vec298 = and i64 %wide.trip.count.i178, 2147483632 ; 5 uses
  %cmp.n307 = icmp eq i64 %n.vec298, %wide.trip.count.i178
  %min.epilog.iters.check = icmp eq i64 %i.su, 0
  %n.vec309 = and i64 %wide.trip.count.i178, 2147483644 ; 4 uses
  %cmp.n314 = icmp eq i64 %n.vec309, %wide.trip.count.i178
  %xtraiter583 = and i64 %wide.trip.count.i178, 1
  %lcmp.mod584.not = icmp eq i64 %xtraiter583, 0
  %i.sv = add nsw i64 %wide.trip.count.i178, -1
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i186, %.lr.ph.preheader.i176
  %indvars.iv27.i180 = phi i64 [ 0, %.lr.ph.preheader.i176 ], [ %indvars.iv.next28.i187, %._crit_edge.i186 ] ; 11 uses
  %i.sw = trunc i64 %indvars.iv27.i180 to i32
  %i.sx = mul i32 %i.sf, %i.sw
  %i.sy = add i32 %i.sx, %i.sr
  %i.sz = sext i32 %i.sy to i64
  %i.ta = shl nsw i64 %i.sz, 1                    ; 2 uses
  %scevgep288 = getelementptr i8, ptr %scevgep287, i64 %i.ta
  %scevgep290 = getelementptr i8, ptr %scevgep289, i64 %i.ta
  %indvars34.i = trunc i64 %indvars.iv27.i180 to i32
  %i.tb = mul nsw i32 %i.sf, %indvars34.i
  %i.tc = add i32 %i.tb, %3                       ; 5 uses
  br i1 %min.iters.check295, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck283

vector.scevcheck283:                              ; preds = %iter.check
  %i.td = trunc i64 %indvars.iv27.i180 to i32
  %i.te = mul i32 %i.sf, %i.td
  %i.tf = add i32 %i.te, %i.sl                    ; 2 uses
  %i.tg = sub i32 %i.tf, %i.ss
  %i.th = icmp sgt i32 %i.tg, %i.tf
  %.reass616 = or i1 %i.th, %invariant.op615
  br i1 %.reass616, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck285

vector.memcheck285:                               ; preds = %vector.scevcheck283
  %bound0291 = icmp ult ptr %0, %scevgep290
  %bound1292 = icmp ult ptr %scevgep288, %scevgep286
  %found.conflict293 = and i1 %bound0291, %bound1292
  br i1 %found.conflict293, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck285
  br i1 %min.iters.check296, label %vec.epilog.ph, label %vector.ph297

vector.ph297:                                     ; preds = %vector.main.loop.iter.check
  %i.ti = add nuw i64 %indvars.iv27.i180, %n.vec298
  %i.tj = getelementptr [2 x i8], ptr %0, i64 %indvars.iv27.i180
  br label %vector.body299

vector.body299:                                   ; preds = %vector.body299, %vector.ph297
  %index300 = phi i64 [ 0, %vector.ph297 ], [ %index.next305, %vector.body299 ] ; 3 uses
  %i.tk = getelementptr [2 x i8], ptr %i.tj, i64 %index300 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  %wide.load301 = load <8 x i16>, ptr %i.tk, align 2, !tbaa !14, !alias.scope !117, !noalias !118
  %wide.load302 = load <8 x i16>, ptr %i.tl, align 2, !tbaa !14, !alias.scope !117, !noalias !118
  %i.tm = trunc i64 %index300 to i32
  %i.tn = xor i32 %i.tm, -1
  %i.to = add i32 %i.tc, %i.tn
  %i.tp = sext i32 %i.to to i64
  %i.tq = getelementptr inbounds [2 x i8], ptr %1, i64 %i.tp ; 2 uses
  %i.tr = getelementptr inbounds i8, ptr %i.tq, i64 -14
  %i.ts = getelementptr inbounds i8, ptr %i.tq, i64 -30
  %reverse303 = shufflevector <8 x i16> %wide.load301, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse304 = shufflevector <8 x i16> %wide.load302, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse303, ptr %i.tr, align 2, !tbaa !14, !alias.scope !118
  store <8 x i16> %reverse304, ptr %i.ts, align 2, !tbaa !14, !alias.scope !118
  %index.next305 = add nuw i64 %index300, 16      ; 2 uses
  %i.tt = icmp eq i64 %index.next305, %n.vec298
  br i1 %i.tt, label %middle.block306, label %vector.body299, !llvm.loop !88

middle.block306:                                  ; preds = %vector.body299
  br i1 %cmp.n307, label %._crit_edge.i186, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block306
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !106

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec298, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.tu = add nuw i64 %indvars.iv27.i180, %n.vec309
  %i.tv = getelementptr [2 x i8], ptr %0, i64 %indvars.iv27.i180
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index310 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next313, %vec.epilog.vector.body ] ; 3 uses
  %i.tw = getelementptr [2 x i8], ptr %i.tv, i64 %index310
  %wide.load311 = load <4 x i16>, ptr %i.tw, align 2, !tbaa !14, !alias.scope !117, !noalias !118
  %i.tx = trunc i64 %index310 to i32
  %i.ty = xor i32 %i.tx, -1
  %i.tz = add i32 %i.tc, %i.ty
  %i.ua = sext i32 %i.tz to i64
  %i.ub = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ua
  %i.uc = getelementptr inbounds i8, ptr %i.ub, i64 -6
  %reverse312 = shufflevector <4 x i16> %wide.load311, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i16> %reverse312, ptr %i.uc, align 2, !tbaa !14, !alias.scope !118
  %index.next313 = add nuw i64 %index310, 4       ; 2 uses
  %i.ud = icmp eq i64 %index.next313, %n.vec309
  br i1 %i.ud, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !89

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n314, label %._crit_edge.i186, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck285, %vector.scevcheck283, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv29.i181.ph = phi i64 [ %indvars.iv27.i180, %iter.check ], [ %indvars.iv27.i180, %vector.scevcheck283 ], [ %indvars.iv27.i180, %vector.memcheck285 ], [ %i.ti, %vec.epilog.iter.check ], [ %i.tu, %vec.epilog.middle.block ] ; 3 uses
  %indvars.iv.i182.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck283 ], [ 0, %vector.memcheck285 ], [ %n.vec298, %vec.epilog.iter.check ], [ %n.vec309, %vec.epilog.middle.block ] ; 4 uses
  br i1 %lcmp.mod584.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ue = getelementptr inbounds [2 x i8], ptr %0, i64 %indvars.iv29.i181.ph
  %i.uf = load i16, ptr %i.ue, align 2, !tbaa !14
  %i.ug = trunc nuw nsw i64 %indvars.iv.i182.ph to i32
  %i.uh = xor i32 %i.ug, -1
  %i.ui = add i32 %i.tc, %i.uh
  %i.uj = sext i32 %i.ui to i64
  %i.uk = getelementptr inbounds [2 x i8], ptr %1, i64 %i.uj
  store i16 %i.uf, ptr %i.uk, align 2, !tbaa !14
  %indvars.iv.next30.i183.prol = add nsw i64 %indvars.iv29.i181.ph, %i.sj
  %indvars.iv.next.i184.prol = or disjoint i64 %indvars.iv.i182.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv29.i181.unr = phi i64 [ %indvars.iv29.i181.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next30.i183.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.i182.unr = phi i64 [ %indvars.iv.i182.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i184.prol, %vec.epilog.scalar.ph.prol ]
  %i.ul = icmp eq i64 %indvars.iv.i182.ph, %i.sv
  br i1 %i.ul, label %._crit_edge.i186, label %vec.epilog.scalar.ph

._crit_edge.i186:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block306
  %indvars.iv.next28.i187 = add nuw nsw i64 %indvars.iv27.i180, 1 ; 2 uses
  %exitcond36.not.i188 = icmp eq i64 %indvars.iv.next28.i187, %wide.trip.count35.i177
  br i1 %exitcond36.not.i188, label %rotate90_l8.exit, label %iter.check, !llvm.loop !90

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv29.i181 = phi i64 [ %indvars.iv.next30.i183.1, %vec.epilog.scalar.ph ], [ %indvars.iv29.i181.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 2 uses
  %indvars.iv.i182 = phi i64 [ %indvars.iv.next.i184.1, %vec.epilog.scalar.ph ], [ %indvars.iv.i182.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.um = getelementptr inbounds [2 x i8], ptr %0, i64 %indvars.iv29.i181
  %i.un = load i16, ptr %i.um, align 2, !tbaa !14
  %i.uo = trunc i64 %indvars.iv.i182 to i32
  %i.up = xor i32 %i.uo, -1
  %i.uq = add i32 %i.tc, %i.up
  %i.ur = sext i32 %i.uq to i64
  %i.us = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ur
  store i16 %i.un, ptr %i.us, align 2, !tbaa !14
  %indvars.iv.next30.i183 = add nsw i64 %indvars.iv29.i181, %i.sj ; 2 uses
  %i.ut = getelementptr inbounds [2 x i8], ptr %0, i64 %indvars.iv.next30.i183
  %i.uu = load i16, ptr %i.ut, align 2, !tbaa !14
  %i.uv = trunc i64 %indvars.iv.i182 to i32
  %reass.sub613 = sub i32 %i.tc, %i.uv
  %i.uw = add i32 %reass.sub613, -2
  %i.ux = sext i32 %i.uw to i64
  %i.uy = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ux
  store i16 %i.uu, ptr %i.uy, align 2, !tbaa !14
  %indvars.iv.next30.i183.1 = add nsw i64 %indvars.iv.next30.i183, %i.sj
  %indvars.iv.next.i184.1 = add nuw nsw i64 %indvars.iv.i182, 2 ; 2 uses
  %exitcond.not.i185.1 = icmp eq i64 %indvars.iv.next.i184.1, %wide.trip.count.i178
  br i1 %exitcond.not.i185.1, label %._crit_edge.i186, label %vec.epilog.scalar.ph, !llvm.loop !91

bb.o:                                             ; preds = %bb.l
  %i.uz = icmp sgt i32 %2, 0
  %i.va = icmp sgt i32 %3, 0
  %or.cond.i189 = and i1 %i.uz, %i.va
  br i1 %or.cond.i189, label %.preheader.preheader.i190, label %rotate90_l8.exit

.preheader.preheader.i190:                        ; preds = %bb.o
  %i.vb = zext nneg i32 %3 to i64                 ; 5 uses
  %i.vc = sext i32 %4 to i64                      ; 3 uses
  %i.vd = sext i32 %5 to i64
  %wide.trip.count33.i191 = zext nneg i32 %2 to i64
  %xtraiter580 = and i64 %i.vb, 1
  %i.ve = icmp eq i32 %3, 1
  %unroll_iter = and i64 %i.vb, 2147483646
  %lcmp.mod581.not = icmp eq i64 %xtraiter580, 0
  %lcmp.mod582 = trunc i32 %3 to i1
  br label %.preheader.i193

.preheader.i193:                                  ; preds = %._crit_edge.i202, %.preheader.preheader.i190
  %indvars.iv30.i194 = phi i64 [ 0, %.preheader.preheader.i190 ], [ %indvars.iv.next31.i203, %._crit_edge.i202 ] ; 3 uses
  %i.vf = mul nuw nsw i64 %indvars.iv30.i194, 3
  %i.vg = mul nsw i64 %indvars.iv30.i194, %i.vd
  %invariant.gep.i195 = getelementptr i8, ptr %0, i64 %i.vf ; 3 uses
  %invariant.gep36.i196 = getelementptr i8, ptr %1, i64 %i.vg ; 3 uses
  br i1 %i.ve, label %.epil.preheader, label %.preheader.i193.new

._crit_edge.i202.unr-lcssa:                       ; preds = %.preheader.i193.new
  br i1 %lcmp.mod581.not, label %._crit_edge.i202, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i202.unr-lcssa, %.preheader.i193
  %indvars.iv.i197.epil.init = phi i64 [ 0, %.preheader.i193 ], [ %indvars.iv.next.i200.1, %._crit_edge.i202.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod582)
  %i.vh = mul nsw i64 %indvars.iv.i197.epil.init, %i.vc
  %i.vi = xor i64 %indvars.iv.i197.epil.init, -1
  %i.vj = add nsw i64 %i.vi, %i.vb
  %i.vk = mul nsw i64 %i.vj, 3
  %gep.i198.epil = getelementptr i8, ptr %invariant.gep.i195, i64 %i.vh ; 3 uses
  %i.vl = load i8, ptr %gep.i198.epil, align 1, !tbaa !8
  %gep37.i199.epil = getelementptr i8, ptr %invariant.gep36.i196, i64 %i.vk ; 3 uses
  store i8 %i.vl, ptr %gep37.i199.epil, align 1, !tbaa !8
  %i.vm = getelementptr i8, ptr %gep.i198.epil, i64 1
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !8
  %i.vo = getelementptr i8, ptr %gep37.i199.epil, i64 1
  store i8 %i.vn, ptr %i.vo, align 1, !tbaa !8
  %i.vp = getelementptr i8, ptr %gep.i198.epil, i64 2
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !8
  %i.vr = getelementptr i8, ptr %gep37.i199.epil, i64 2
  store i8 %i.vq, ptr %i.vr, align 1, !tbaa !8
  br label %._crit_edge.i202

._crit_edge.i202:                                 ; preds = %._crit_edge.i202.unr-lcssa, %.epil.preheader
  %indvars.iv.next31.i203 = add nuw nsw i64 %indvars.iv30.i194, 1 ; 2 uses
  %exitcond34.not.i204 = icmp eq i64 %indvars.iv.next31.i203, %wide.trip.count33.i191
  br i1 %exitcond34.not.i204, label %rotate90_l8.exit, label %.preheader.i193, !llvm.loop !92

.preheader.i193.new:                              ; preds = %.preheader.i193, %.preheader.i193.new
  %indvars.iv.i197 = phi i64 [ %indvars.iv.next.i200.1, %.preheader.i193.new ], [ 0, %.preheader.i193 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i193.new ], [ 0, %.preheader.i193 ]
  %i.vs = mul nsw i64 %indvars.iv.i197, %i.vc
  %i.vt = xor i64 %indvars.iv.i197, -1
  %i.vu = add nsw i64 %i.vt, %i.vb
  %i.vv = mul nsw i64 %i.vu, 3
  %gep.i198 = getelementptr i8, ptr %invariant.gep.i195, i64 %i.vs ; 3 uses
  %i.vw = load i8, ptr %gep.i198, align 1, !tbaa !8
  %gep37.i199 = getelementptr i8, ptr %invariant.gep36.i196, i64 %i.vv ; 3 uses
  store i8 %i.vw, ptr %gep37.i199, align 1, !tbaa !8
  %i.vx = getelementptr i8, ptr %gep.i198, i64 1
  %i.vy = load i8, ptr %i.vx, align 1, !tbaa !8
  %i.vz = getelementptr i8, ptr %gep37.i199, i64 1
  store i8 %i.vy, ptr %i.vz, align 1, !tbaa !8
  %i.wa = getelementptr i8, ptr %gep.i198, i64 2
  %i.wb = load i8, ptr %i.wa, align 1, !tbaa !8
  %i.wc = getelementptr i8, ptr %gep37.i199, i64 2
  store i8 %i.wb, ptr %i.wc, align 1, !tbaa !8
  %indvars.iv.next.i200 = or disjoint i64 %indvars.iv.i197, 1
  %i.wd = mul nsw i64 %indvars.iv.next.i200, %i.vc
  %i.we = xor i64 %indvars.iv.i197, -2
  %i.wf = add nsw i64 %i.we, %i.vb
  %i.wg = mul nsw i64 %i.wf, 3
  %gep.i198.1 = getelementptr i8, ptr %invariant.gep.i195, i64 %i.wd ; 3 uses
  %i.wh = load i8, ptr %gep.i198.1, align 1, !tbaa !8
  %gep37.i199.1 = getelementptr i8, ptr %invariant.gep36.i196, i64 %i.wg ; 3 uses
  store i8 %i.wh, ptr %gep37.i199.1, align 1, !tbaa !8
  %i.wi = getelementptr i8, ptr %gep.i198.1, i64 1
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !8
  %i.wk = getelementptr i8, ptr %gep37.i199.1, i64 1
  store i8 %i.wj, ptr %i.wk, align 1, !tbaa !8
  %i.wl = getelementptr i8, ptr %gep.i198.1, i64 2
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !8
  %i.wn = getelementptr i8, ptr %gep37.i199.1, i64 2
  store i8 %i.wm, ptr %i.wn, align 1, !tbaa !8
  %indvars.iv.next.i200.1 = add nuw nsw i64 %indvars.iv.i197, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i202.unr-lcssa, label %.preheader.i193.new, !llvm.loop !93

bb.p:                                             ; preds = %bb.l, %bb.l
  %i.wo = ashr i32 %5, 2                          ; 3 uses
  %i.wp = icmp sgt i32 %2, 0
  %i.wq = icmp sgt i32 %3, 0
  %or.cond.i205 = and i1 %i.wp, %i.wq
  br i1 %or.cond.i205, label %.lr.ph.preheader.i206, label %rotate90_l8.exit

.lr.ph.preheader.i206:                            ; preds = %bb.p
  %i.wr = ashr i32 %4, 2                          ; 2 uses
  %i.ws = sext i32 %i.wr to i64                   ; 3 uses
  %wide.trip.count35.i207 = zext nneg i32 %2 to i64 ; 2 uses
  %wide.trip.count.i208 = zext nneg i32 %3 to i64 ; 8 uses
  %i.wt = add nsw i64 %wide.trip.count.i208, -1   ; 2 uses
  %i.wu = add nsw i32 %3, -1
  %i.wv = shl nuw nsw i64 %wide.trip.count.i208, 2
  %i.ww = add nuw nsw i64 %wide.trip.count35.i207, %wide.trip.count.i208
  %i.wx = shl nuw nsw i64 %i.ww, 2
  %i.wy = getelementptr i8, ptr %0, i64 %i.wx
  %scevgep = getelementptr i8, ptr %i.wy, i64 -4
  %i.wz = sub nsw i64 4, %i.wv
  %scevgep276 = getelementptr i8, ptr %1, i64 %i.wz
  %i.xa = add nsw i32 %3, -1
  %scevgep278 = getelementptr i8, ptr %1, i64 4
  %min.iters.check = icmp ult i32 %3, 12
  %ident.check = icmp ne i32 %i.wr, 1
  %i.xb = trunc nsw i64 %i.wt to i32
  %i.xc = icmp ugt i64 %i.wt, 4294967295
  %invariant.op = or i1 %i.xc, %ident.check
  %n.vec = and i64 %wide.trip.count.i208, 2147483640 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i208
  %xtraiter = and i64 %wide.trip.count.i208, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.xd = add nsw i64 %wide.trip.count.i208, -1
  br label %.lr.ph.i209

.lr.ph.i209:                                      ; preds = %._crit_edge.i217, %.lr.ph.preheader.i206
  %indvars.iv27.i210 = phi i64 [ 0, %.lr.ph.preheader.i206 ], [ %indvars.iv.next28.i218, %._crit_edge.i217 ] ; 9 uses
  %i.xe = trunc i64 %indvars.iv27.i210 to i32
  %i.xf = mul i32 %i.wo, %i.xe
  %i.xg = add i32 %i.xf, %i.xa
  %i.xh = sext i32 %i.xg to i64
  %i.xi = shl nsw i64 %i.xh, 2                    ; 2 uses
  %scevgep277 = getelementptr i8, ptr %scevgep276, i64 %i.xi
  %scevgep279 = getelementptr i8, ptr %scevgep278, i64 %i.xi
  %indvars34.i211 = trunc i64 %indvars.iv27.i210 to i32
  %i.xj = mul nsw i32 %i.wo, %indvars34.i211
  %i.xk = add i32 %i.xj, %3                       ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i209
  %i.xl = trunc i64 %indvars.iv27.i210 to i32
  %i.xm = mul i32 %i.wo, %i.xl
  %i.xn = add i32 %i.xm, %i.wu                    ; 2 uses
  %i.xo = sub i32 %i.xn, %i.xb
  %i.xp = icmp sgt i32 %i.xo, %i.xn
  %.reass = or i1 %i.xp, %invariant.op
  br i1 %.reass, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %0, %scevgep279
  %bound1 = icmp ult ptr %scevgep277, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.xq = add nuw i64 %indvars.iv27.i210, %n.vec
  %i.xr = getelementptr [4 x i8], ptr %0, i64 %indvars.iv27.i210
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.xs = getelementptr [4 x i8], ptr %i.xr, i64 %index ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 16
  %wide.load = load <4 x i32>, ptr %i.xs, align 4, !tbaa !9, !alias.scope !119, !noalias !120
  %wide.load280 = load <4 x i32>, ptr %i.xt, align 4, !tbaa !9, !alias.scope !119, !noalias !120
  %i.xu = trunc i64 %index to i32
  %i.xv = xor i32 %i.xu, -1
  %i.xw = add i32 %i.xk, %i.xv
  %i.xx = sext i32 %i.xw to i64
  %i.xy = getelementptr inbounds [4 x i8], ptr %1, i64 %i.xx ; 2 uses
  %i.xz = getelementptr inbounds i8, ptr %i.xy, i64 -12
  %i.ya = getelementptr inbounds i8, ptr %i.xy, i64 -28
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse281 = shufflevector <4 x i32> %wide.load280, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.xz, align 4, !tbaa !9, !alias.scope !120
  store <4 x i32> %reverse281, ptr %i.ya, align 4, !tbaa !9, !alias.scope !120
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.yb = icmp eq i64 %index.next, %n.vec
  br i1 %i.yb, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i217, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.i209, %middle.block
  %indvars.iv29.i212.ph = phi i64 [ %indvars.iv27.i210, %vector.memcheck ], [ %indvars.iv27.i210, %vector.scevcheck ], [ %indvars.iv27.i210, %.lr.ph.i209 ], [ %i.xq, %middle.block ] ; 3 uses
  %indvars.iv.i213.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i209 ], [ %n.vec, %middle.block ] ; 4 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.yc = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv29.i212.ph
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !9
  %i.ye = trunc nuw nsw i64 %indvars.iv.i213.ph to i32
  %i.yf = xor i32 %i.ye, -1
  %i.yg = add i32 %i.xk, %i.yf
  %i.yh = sext i32 %i.yg to i64
  %i.yi = getelementptr inbounds [4 x i8], ptr %1, i64 %i.yh
  store i32 %i.yd, ptr %i.yi, align 4, !tbaa !9
  %indvars.iv.next30.i214.prol = add nsw i64 %indvars.iv29.i212.ph, %i.ws
  %indvars.iv.next.i215.prol = or disjoint i64 %indvars.iv.i213.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv29.i212.unr = phi i64 [ %indvars.iv29.i212.ph, %scalar.ph.preheader ], [ %indvars.iv.next30.i214.prol, %scalar.ph.prol ]
  %indvars.iv.i213.unr = phi i64 [ %indvars.iv.i213.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i215.prol, %scalar.ph.prol ]
  %i.yj = icmp eq i64 %indvars.iv.i213.ph, %i.xd
  br i1 %i.yj, label %._crit_edge.i217, label %scalar.ph

._crit_edge.i217:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next28.i218 = add nuw nsw i64 %indvars.iv27.i210, 1 ; 2 uses
  %exitcond36.not.i219 = icmp eq i64 %indvars.iv.next28.i218, %wide.trip.count35.i207
  br i1 %exitcond36.not.i219, label %rotate90_l8.exit, label %.lr.ph.i209, !llvm.loop !98

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv29.i212 = phi i64 [ %indvars.iv.next30.i214.1, %scalar.ph ], [ %indvars.iv29.i212.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %indvars.iv.i213 = phi i64 [ %indvars.iv.next.i215.1, %scalar.ph ], [ %indvars.iv.i213.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.yk = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv29.i212
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !9
  %i.ym = trunc i64 %indvars.iv.i213 to i32
  %i.yn = xor i32 %i.ym, -1
  %i.yo = add i32 %i.xk, %i.yn
  %i.yp = sext i32 %i.yo to i64
  %i.yq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.yp
  store i32 %i.yl, ptr %i.yq, align 4, !tbaa !9
  %indvars.iv.next30.i214 = add nsw i64 %indvars.iv29.i212, %i.ws ; 2 uses
  %i.yr = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next30.i214
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !9
  %i.yt = trunc i64 %indvars.iv.i213 to i32
  %reass.sub = sub i32 %i.xk, %i.yt
  %i.yu = add i32 %reass.sub, -2
  %i.yv = sext i32 %i.yu to i64
  %i.yw = getelementptr inbounds [4 x i8], ptr %1, i64 %i.yv
  store i32 %i.ys, ptr %i.yw, align 4, !tbaa !9
  %indvars.iv.next30.i214.1 = add nsw i64 %indvars.iv.next30.i214, %i.ws
  %indvars.iv.next.i215.1 = add nuw nsw i64 %indvars.iv.i213, 2 ; 2 uses
  %exitcond.not.i216.1 = icmp eq i64 %indvars.iv.next.i215.1, %wide.trip.count.i208
  br i1 %exitcond.not.i216.1, label %._crit_edge.i217, label %scalar.ph, !llvm.loop !99

rotate90_l8.exit:                                 ; preds = %._crit_edge.i217, %._crit_edge.i202, %._crit_edge.i186, %._crit_edge.i172, %._crit_edge.i158, %._crit_edge.i145, %._crit_edge.i134, %._crit_edge.i124, %._crit_edge.i112, %._crit_edge.i97, %._crit_edge.i87, %._crit_edge.i, %bb.p, %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.l, %bb.g, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!"short", !4, i64 0}
!14 = !{!13, !13, i64 0}
end_hunk_1

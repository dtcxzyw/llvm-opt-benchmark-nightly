Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrsm_kernel_LT?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 28
begin_hunk_0_@dtrsm_kernel_LT:bb.a
bb.p:                                             ; preds = %.lr.ph276
  %i.qb = tail call i32 @dgemm_kernel(i64 noundef 16, i64 noundef 1, i64 noundef %.3128273, double noundef -1.000000e+00, ptr noundef %.3138271, ptr noundef %.0141.lcssa, ptr noundef %.3132272, i64 noundef %7) #3 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph276
  %.idx = shl nsw i64 %.3128273, 7
  %i.qc = getelementptr inbounds i8, ptr %.3138271, i64 %.idx
  %i.qd = getelementptr inbounds [8 x i8], ptr %.0141.lcssa, i64 %.3128273
  %i.qe = getelementptr i8, ptr %.0144.lcssa, i64 %i.px
  %i.qf = getelementptr i8, ptr %i.qe, i64 8
  %i.qg = getelementptr i8, ptr %i.pu, i64 %i.pz
  %i.qh = getelementptr i8, ptr %i.pw, i64 %i.pz
  br label %bb.r

bb.r:                                             ; preds = %.split47.us.i196, %bb.q
  %indvars.iv64.i186 = phi i64 [ 0, %bb.q ], [ %indvars.iv.next65.i190, %.split47.us.i196 ] ; 8 uses
  %indvars.iv54.i187 = phi i64 [ 1, %bb.q ], [ %indvars.iv.next55.i198, %.split47.us.i196 ] ; 5 uses
  %.03649.i188 = phi ptr [ %i.qc, %bb.q ], [ %i.sm, %.split47.us.i196 ] ; 12 uses
  %.03748.i189 = phi ptr [ %i.qd, %bb.q ], [ %.us-phi.i197, %.split47.us.i196 ] ; 2 uses
  %i.qi = sub nsw i64 15, %indvars.iv64.i186      ; 3 uses
  %i.qj = shl nuw nsw i64 %indvars.iv64.i186, 3
  %scevgep506 = getelementptr i8, ptr %i.qf, i64 %i.qj
  %i.qk = mul nuw nsw i64 %indvars.iv64.i186, 136
  %scevgep508 = getelementptr i8, ptr %i.qg, i64 %i.qk
  %i.ql = shl nuw nsw i64 %indvars.iv64.i186, 7
  %scevgep509 = getelementptr i8, ptr %i.qh, i64 %i.ql
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %indvars.iv64.i186
  %i.qn = load double, ptr %i.qm, align 8, !tbaa !8
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %.3132272, i64 %indvars.iv64.i186 ; 2 uses
  %indvars.iv.next65.i190 = add nuw nsw i64 %indvars.iv64.i186, 1 ; 2 uses
  %i.qp = icmp samesign ult i64 %indvars.iv64.i186, 15
  %i.qq = load double, ptr %i.qo, align 8, !tbaa !8
  %i.qr = fmul double %i.qn, %i.qq                ; 3 uses
  store double %i.qr, ptr %.03748.i189, align 8, !tbaa !8
  store double %i.qr, ptr %i.qo, align 8, !tbaa !8
  br i1 %i.qp, label %.lr.ph.us.i200.preheader, label %.split47.us.i196

.lr.ph.us.i200.preheader:                         ; preds = %bb.r
  %i.qs = fneg double %i.qr                       ; 10 uses
  %min.iters.check514 = icmp ult i64 %i.qi, 4
  br i1 %min.iters.check514, label %scalar.ph513.preheader, label %vector.memcheck503

vector.memcheck503:                               ; preds = %.lr.ph.us.i200.preheader
  %bound0510 = icmp ult ptr %scevgep506, %scevgep509
  %bound1511 = icmp ult ptr %scevgep508, %scevgep507
  %found.conflict512 = and i1 %bound0510, %bound1511
  br i1 %found.conflict512, label %scalar.ph513.preheader, label %vector.ph515

vector.ph515:                                     ; preds = %vector.memcheck503
  %n.vec516 = and i64 %i.qi, 12                   ; 3 uses
  %i.qt = add nuw i64 %indvars.iv54.i187, %n.vec516
  %broadcast.splatinsert517 = insertelement <4 x double> poison, double %i.qs, i64 0
  %broadcast.splat518 = shufflevector <4 x double> %broadcast.splatinsert517, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body519

vector.body519:                                   ; preds = %vector.body519, %vector.ph515
  %index520 = phi i64 [ 0, %vector.ph515 ], [ %index.next523, %vector.body519 ] ; 2 uses
  %i.qu = add nuw i64 %indvars.iv54.i187, %index520 ; 2 uses
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %i.qu
  %wide.load521 = load <4 x double>, ptr %i.qv, align 8, !tbaa !8, !alias.scope !49
  %i.qw = getelementptr [8 x i8], ptr %.3132272, i64 %i.qu ; 2 uses
  %wide.load522 = load <4 x double>, ptr %i.qw, align 8, !tbaa !8, !alias.scope !52, !noalias !49
  %i.qx = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat518, <4 x double> %wide.load521, <4 x double> %wide.load522)
  store <4 x double> %i.qx, ptr %i.qw, align 8, !tbaa !8, !alias.scope !52, !noalias !49
  %index.next523 = add nuw i64 %index520, 4       ; 2 uses
  %i.qy = icmp eq i64 %index.next523, %n.vec516
  br i1 %i.qy, label %middle.block524, label %vector.body519, !llvm.loop !54

middle.block524:                                  ; preds = %vector.body519
  %cmp.n525 = icmp eq i64 %i.qi, %n.vec516
  br i1 %cmp.n525, label %.split47.us.i196, label %scalar.ph513.preheader

scalar.ph513.preheader:                           ; preds = %vector.memcheck503, %.lr.ph.us.i200.preheader, %middle.block524
  %indvars.iv56.i204.ph = phi i64 [ %indvars.iv54.i187, %vector.memcheck503 ], [ %indvars.iv54.i187, %.lr.ph.us.i200.preheader ], [ %i.qt, %middle.block524 ] ; 4 uses
  %i.qz = sub i64 0, %indvars.iv56.i204.ph
  %xtraiter554 = and i64 %i.qz, 7                 ; 2 uses
  %lcmp.mod555.not = icmp eq i64 %xtraiter554, 0
  br i1 %lcmp.mod555.not, label %scalar.ph513.prol.loopexit, label %scalar.ph513.prol

scalar.ph513.prol:                                ; preds = %scalar.ph513.preheader, %scalar.ph513.prol
  %indvars.iv56.i204.prol = phi i64 [ %indvars.iv.next57.i206.prol, %scalar.ph513.prol ], [ %indvars.iv56.i204.ph, %scalar.ph513.preheader ] ; 3 uses
  %prol.iter556 = phi i64 [ %prol.iter556.next, %scalar.ph513.prol ], [ 0, %scalar.ph513.preheader ]
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %indvars.iv56.i204.prol
  %i.rb = load double, ptr %i.ra, align 8, !tbaa !8
  %gep.us.i205.prol = getelementptr [8 x i8], ptr %.3132272, i64 %indvars.iv56.i204.prol ; 2 uses
  %i.rc = load double, ptr %gep.us.i205.prol, align 8, !tbaa !8
  %i.rd = tail call double @llvm.fmuladd.f64(double %i.qs, double %i.rb, double %i.rc)
  store double %i.rd, ptr %gep.us.i205.prol, align 8, !tbaa !8
  %indvars.iv.next57.i206.prol = add nuw nsw i64 %indvars.iv56.i204.prol, 1 ; 2 uses
  %prol.iter556.next = add i64 %prol.iter556, 1   ; 2 uses
  %prol.iter556.cmp.not = icmp eq i64 %prol.iter556.next, %xtraiter554
  br i1 %prol.iter556.cmp.not, label %scalar.ph513.prol.loopexit, label %scalar.ph513.prol, !llvm.loop !55

scalar.ph513.prol.loopexit:                       ; preds = %scalar.ph513.prol, %scalar.ph513.preheader
  %indvars.iv56.i204.unr = phi i64 [ %indvars.iv56.i204.ph, %scalar.ph513.preheader ], [ %indvars.iv.next57.i206.prol, %scalar.ph513.prol ]
  %i.re = add i64 %indvars.iv56.i204.ph, -9
  %i.rf = icmp ult i64 %i.re, 7
  br i1 %i.rf, label %.split47.us.i196, label %scalar.ph513

scalar.ph513:                                     ; preds = %scalar.ph513.prol.loopexit, %scalar.ph513
  %indvars.iv56.i204 = phi i64 [ %indvars.iv.next57.i206.7, %scalar.ph513 ], [ %indvars.iv56.i204.unr, %scalar.ph513.prol.loopexit ] ; 10 uses
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %indvars.iv56.i204
  %i.rh = load double, ptr %i.rg, align 8, !tbaa !8
  %gep.us.i205 = getelementptr [8 x i8], ptr %.3132272, i64 %indvars.iv56.i204 ; 2 uses
  %i.ri = load double, ptr %gep.us.i205, align 8, !tbaa !8
  %i.rj = tail call double @llvm.fmuladd.f64(double %i.qs, double %i.rh, double %i.ri)
  store double %i.rj, ptr %gep.us.i205, align 8, !tbaa !8
  %indvars.iv.next57.i206 = add nuw nsw i64 %indvars.iv56.i204, 1 ; 2 uses
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %indvars.iv.next57.i206
  %i.rl = load double, ptr %i.rk, align 8, !tbaa !8
  %gep.us.i205.1 = getelementptr [8 x i8], ptr %.3132272, i64 %indvars.iv.next57.i206 ; 2 uses
  %i.rm = load double, ptr %gep.us.i205.1, align 8, !tbaa !8
  %i.rn = tail call double @llvm.fmuladd.f64(double %i.qs, double %i.rl, double %i.rm)
  store double %i.rn, ptr %gep.us.i205.1, align 8, !tbaa !8
  %indvars.iv.next57.i206.1 = add nuw nsw i64 %indvars.iv56.i204, 2 ; 2 uses
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %indvars.iv.next57.i206.1
  %i.rp = load double, ptr %i.ro, align 8, !tbaa !8
  %gep.us.i205.2 = getelementptr [8 x i8], ptr %.3132272, i64 %indvars.iv.next57.i206.1 ; 2 uses
  %i.rq = load double, ptr %gep.us.i205.2, align 8, !tbaa !8
  %i.rr = tail call double @llvm.fmuladd.f64(double %i.qs, double %i.rp, double %i.rq)
  store double %i.rr, ptr %gep.us.i205.2, align 8, !tbaa !8
  %indvars.iv.next57.i206.2 = add nuw nsw i64 %indvars.iv56.i204, 3 ; 2 uses
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %indvars.iv.next57.i206.2
  %i.rt = load double, ptr %i.rs, align 8, !tbaa !8
  %gep.us.i205.3 = getelementptr [8 x i8], ptr %.3132272, i64 %indvars.iv.next57.i206.2 ; 2 uses
  %i.ru = load double, ptr %gep.us.i205.3, align 8, !tbaa !8
  %i.rv = tail call double @llvm.fmuladd.f64(double %i.qs, double %i.rt, double %i.ru)
  store double %i.rv, ptr %gep.us.i205.3, align 8, !tbaa !8
  %indvars.iv.next57.i206.3 = add nuw nsw i64 %indvars.iv56.i204, 4 ; 2 uses
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %indvars.iv.next57.i206.3
  %i.rx = load double, ptr %i.rw, align 8, !tbaa !8
  %gep.us.i205.4 = getelementptr [8 x i8], ptr %.3132272, i64 %indvars.iv.next57.i206.3 ; 2 uses
  %i.ry = load double, ptr %gep.us.i205.4, align 8, !tbaa !8
  %i.rz = tail call double @llvm.fmuladd.f64(double %i.qs, double %i.rx, double %i.ry)
  store double %i.rz, ptr %gep.us.i205.4, align 8, !tbaa !8
  %indvars.iv.next57.i206.4 = add nuw nsw i64 %indvars.iv56.i204, 5 ; 2 uses
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %indvars.iv.next57.i206.4
  %i.sb = load double, ptr %i.sa, align 8, !tbaa !8
  %gep.us.i205.5 = getelementptr [8 x i8], ptr %.3132272, i64 %indvars.iv.next57.i206.4 ; 2 uses
  %i.sc = load double, ptr %gep.us.i205.5, align 8, !tbaa !8
  %i.sd = tail call double @llvm.fmuladd.f64(double %i.qs, double %i.sb, double %i.sc)
  store double %i.sd, ptr %gep.us.i205.5, align 8, !tbaa !8
  %indvars.iv.next57.i206.5 = add nuw nsw i64 %indvars.iv56.i204, 6 ; 2 uses
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %indvars.iv.next57.i206.5
  %i.sf = load double, ptr %i.se, align 8, !tbaa !8
  %gep.us.i205.6 = getelementptr [8 x i8], ptr %.3132272, i64 %indvars.iv.next57.i206.5 ; 2 uses
  %i.sg = load double, ptr %gep.us.i205.6, align 8, !tbaa !8
  %i.sh = tail call double @llvm.fmuladd.f64(double %i.qs, double %i.sf, double %i.sg)
  store double %i.sh, ptr %gep.us.i205.6, align 8, !tbaa !8
  %indvars.iv.next57.i206.6 = add nuw nsw i64 %indvars.iv56.i204, 7 ; 2 uses
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %indvars.iv.next57.i206.6
  %i.sj = load double, ptr %i.si, align 8, !tbaa !8
  %gep.us.i205.7 = getelementptr [8 x i8], ptr %.3132272, i64 %indvars.iv.next57.i206.6 ; 2 uses
  %i.sk = load double, ptr %gep.us.i205.7, align 8, !tbaa !8
  %i.sl = tail call double @llvm.fmuladd.f64(double %i.qs, double %i.sj, double %i.sk)
  store double %i.sl, ptr %gep.us.i205.7, align 8, !tbaa !8
  %indvars.iv.next57.i206.7 = add nuw nsw i64 %indvars.iv56.i204, 8 ; 2 uses
  %exitcond59.not.i207.7 = icmp eq i64 %indvars.iv.next57.i206.7, 16
  br i1 %exitcond59.not.i207.7, label %.split47.us.i196, label %scalar.ph513, !llvm.loop !56

.split47.us.i196:                                 ; preds = %scalar.ph513.prol.loopexit, %scalar.ph513, %middle.block524, %bb.r
  %.us-phi.i197 = getelementptr inbounds nuw i8, ptr %.03748.i189, i64 8
  %i.sm = getelementptr inbounds nuw i8, ptr %.03649.i188, i64 128
  %indvars.iv.next55.i198 = add nuw nsw i64 %indvars.iv54.i187, 1
  %exitcond67.not.i199 = icmp eq i64 %indvars.iv.next65.i190, 16
  br i1 %exitcond67.not.i199, label %solve.exit211, label %bb.r, !llvm.loop !30

solve.exit211:                                    ; preds = %.split47.us.i196
  %i.sn = getelementptr inbounds i8, ptr %.3138271, i64 %.idx150 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %.3132272, i64 128 ; 2 uses
  %i.sp = add nsw i64 %.3128273, 16               ; 2 uses
  %i.sq = add nsw i64 %.2274, -1
  %i.sr = icmp sgt i64 %.2274, 1
  %indvar.next505 = add i64 %indvar504, 1
  br i1 %i.sr, label %.lr.ph276, label %._crit_edge277, !llvm.loop !57

._crit_edge277:                                   ; preds = %solve.exit211, %.preheader240
  %.3138.lcssa = phi ptr [ %4, %.preheader240 ], [ %i.sn, %solve.exit211 ] ; 4 uses
  %.3132.lcssa = phi ptr [ %.0144.lcssa, %.preheader240 ], [ %i.so, %solve.exit211 ] ; 40 uses
  %.3128.lcssa = phi i64 [ %8, %.preheader240 ], [ %i.sp, %solve.exit211 ] ; 6 uses
  br i1 %.not147, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge277
  %i.ss = and i64 %0, 8
  %.not149 = icmp eq i64 %i.ss, 0
  br i1 %.not149, label %.preheader.1, label %bb.s

bb.s:                                             ; preds = %.preheader.preheader
  %i.st = icmp sgt i64 %.3128.lcssa, 0
  br i1 %i.st, label %bb.t, label %.split47.us.i222.7

bb.t:                                             ; preds = %bb.s
  %i.su = tail call i32 @dgemm_kernel(i64 noundef 8, i64 noundef 1, i64 noundef %.3128.lcssa, double noundef -1.000000e+00, ptr noundef %.3138.lcssa, ptr noundef %.0141.lcssa, ptr noundef %.3132.lcssa, i64 noundef %7) #3 ; 0 uses
  br label %.split47.us.i222.7

.split47.us.i222.7:                               ; preds = %bb.t, %bb.s
  %.idx411 = shl nsw i64 %.3128.lcssa, 6
  %i.sv = getelementptr inbounds i8, ptr %.3138.lcssa, i64 %.idx411 ; 36 uses
  %i.sw = load double, ptr %i.sv, align 8, !tbaa !8
  %i.sx = getelementptr inbounds [8 x i8], ptr %.0141.lcssa, i64 %.3128.lcssa ; 8 uses
  %i.sy = load double, ptr %.3132.lcssa, align 8, !tbaa !8
  %i.sz = fmul double %i.sw, %i.sy                ; 3 uses
  store double %i.sz, ptr %i.sx, align 8, !tbaa !8
  store double %i.sz, ptr %.3132.lcssa, align 8, !tbaa !8
  %i.ta = fneg double %i.sz                       ; 7 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %i.tc = load double, ptr %i.tb, align 8, !tbaa !8
  %gep.us.i231 = getelementptr i8, ptr %.3132.lcssa, i64 8 ; 2 uses
  %i.td = load double, ptr %gep.us.i231, align 8, !tbaa !8
  %i.te = tail call double @llvm.fmuladd.f64(double %i.ta, double %i.tc, double %i.td) ; 2 uses
  store double %i.te, ptr %gep.us.i231, align 8, !tbaa !8
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sv, i64 16
  %i.tg = load double, ptr %i.tf, align 8, !tbaa !8
  %gep.us.i231.1352 = getelementptr i8, ptr %.3132.lcssa, i64 16 ; 2 uses
  %i.th = load double, ptr %gep.us.i231.1352, align 8, !tbaa !8
  %i.ti = tail call double @llvm.fmuladd.f64(double %i.ta, double %i.tg, double %i.th)
  store double %i.ti, ptr %gep.us.i231.1352, align 8, !tbaa !8
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sv, i64 24
  %i.tk = load double, ptr %i.tj, align 8, !tbaa !8
  %gep.us.i231.2353 = getelementptr i8, ptr %.3132.lcssa, i64 24 ; 2 uses
  %i.tl = load double, ptr %gep.us.i231.2353, align 8, !tbaa !8
  %i.tm = tail call double @llvm.fmuladd.f64(double %i.ta, double %i.tk, double %i.tl)
  store double %i.tm, ptr %gep.us.i231.2353, align 8, !tbaa !8
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sv, i64 32
  %i.to = load double, ptr %i.tn, align 8, !tbaa !8
  %gep.us.i231.3355 = getelementptr i8, ptr %.3132.lcssa, i64 32 ; 2 uses
  %i.tp = load double, ptr %gep.us.i231.3355, align 8, !tbaa !8
  %i.tq = tail call double @llvm.fmuladd.f64(double %i.ta, double %i.to, double %i.tp)
  store double %i.tq, ptr %gep.us.i231.3355, align 8, !tbaa !8
  %i.tr = getelementptr inbounds nuw i8, ptr %i.sv, i64 40
  %i.ts = load double, ptr %i.tr, align 8, !tbaa !8
  %gep.us.i231.4357 = getelementptr i8, ptr %.3132.lcssa, i64 40 ; 2 uses
  %i.tt = load double, ptr %gep.us.i231.4357, align 8, !tbaa !8
  %i.tu = tail call double @llvm.fmuladd.f64(double %i.ta, double %i.ts, double %i.tt)
  store double %i.tu, ptr %gep.us.i231.4357, align 8, !tbaa !8
  %i.tv = getelementptr inbounds nuw i8, ptr %i.sv, i64 48
  %i.tw = load double, ptr %i.tv, align 8, !tbaa !8
  %gep.us.i231.5358 = getelementptr i8, ptr %.3132.lcssa, i64 48 ; 2 uses
  %i.tx = load double, ptr %gep.us.i231.5358, align 8, !tbaa !8
  %i.ty = tail call double @llvm.fmuladd.f64(double %i.ta, double %i.tw, double %i.tx)
  store double %i.ty, ptr %gep.us.i231.5358, align 8, !tbaa !8
  %i.tz = getelementptr inbounds nuw i8, ptr %i.sv, i64 56
  %i.ua = load double, ptr %i.tz, align 8, !tbaa !8
  %gep.us.i231.6359 = getelementptr i8, ptr %.3132.lcssa, i64 56 ; 2 uses
  %i.ub = load double, ptr %gep.us.i231.6359, align 8, !tbaa !8
  %i.uc = tail call double @llvm.fmuladd.f64(double %i.ta, double %i.ua, double %i.ub)
  store double %i.uc, ptr %gep.us.i231.6359, align 8, !tbaa !8
  %.phi.trans.insert371 = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %.phi.trans.insert352 = getelementptr inbounds nuw i8, ptr %i.sv, i64 72
  %.pre353 = load double, ptr %.phi.trans.insert352, align 8, !tbaa !8
  %i.ud = getelementptr inbounds nuw i8, ptr %.3132.lcssa, i64 8
  %i.ue = fmul double %.pre353, %i.te             ; 3 uses
  store double %i.ue, ptr %.phi.trans.insert371, align 8, !tbaa !8
  store double %i.ue, ptr %i.ud, align 8, !tbaa !8
  %i.uf = fneg double %i.ue                       ; 6 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.sv, i64 80
  %i.uh = load double, ptr %i.ug, align 8, !tbaa !8
  %gep.us.i231.1322 = getelementptr i8, ptr %.3132.lcssa, i64 16 ; 2 uses
  %i.ui = load double, ptr %gep.us.i231.1322, align 8, !tbaa !8
  %i.uj = tail call double @llvm.fmuladd.f64(double %i.uf, double %i.uh, double %i.ui) ; 2 uses
  store double %i.uj, ptr %gep.us.i231.1322, align 8, !tbaa !8
  %i.uk = getelementptr inbounds nuw i8, ptr %i.sv, i64 88
  %i.ul = load double, ptr %i.uk, align 8, !tbaa !8
  %gep.us.i231.1322.1 = getelementptr i8, ptr %.3132.lcssa, i64 24 ; 2 uses
  %i.um = load double, ptr %gep.us.i231.1322.1, align 8, !tbaa !8
  %i.un = tail call double @llvm.fmuladd.f64(double %i.uf, double %i.ul, double %i.um)
  store double %i.un, ptr %gep.us.i231.1322.1, align 8, !tbaa !8
  %i.uo = getelementptr inbounds nuw i8, ptr %i.sv, i64 96
  %i.up = load double, ptr %i.uo, align 8, !tbaa !8
  %gep.us.i231.1322.2 = getelementptr i8, ptr %.3132.lcssa, i64 32 ; 2 uses
  %i.uq = load double, ptr %gep.us.i231.1322.2, align 8, !tbaa !8
  %i.ur = tail call double @llvm.fmuladd.f64(double %i.uf, double %i.up, double %i.uq)
  store double %i.ur, ptr %gep.us.i231.1322.2, align 8, !tbaa !8
  %i.us = getelementptr inbounds nuw i8, ptr %i.sv, i64 104
  %i.ut = load double, ptr %i.us, align 8, !tbaa !8
  %gep.us.i231.1322.3 = getelementptr i8, ptr %.3132.lcssa, i64 40 ; 2 uses
  %i.uu = load double, ptr %gep.us.i231.1322.3, align 8, !tbaa !8
  %i.uv = tail call double @llvm.fmuladd.f64(double %i.uf, double %i.ut, double %i.uu)
  store double %i.uv, ptr %gep.us.i231.1322.3, align 8, !tbaa !8
  %i.uw = getelementptr inbounds nuw i8, ptr %i.sv, i64 112
  %i.ux = load double, ptr %i.uw, align 8, !tbaa !8
  %gep.us.i231.1322.4 = getelementptr i8, ptr %.3132.lcssa, i64 48 ; 2 uses
  %i.uy = load double, ptr %gep.us.i231.1322.4, align 8, !tbaa !8
  %i.uz = tail call double @llvm.fmuladd.f64(double %i.uf, double %i.ux, double %i.uy)
  store double %i.uz, ptr %gep.us.i231.1322.4, align 8, !tbaa !8
  %i.va = getelementptr inbounds nuw i8, ptr %i.sv, i64 120
  %i.vb = load double, ptr %i.va, align 8, !tbaa !8
  %gep.us.i231.1322.5 = getelementptr i8, ptr %.3132.lcssa, i64 56 ; 2 uses
  %i.vc = load double, ptr %gep.us.i231.1322.5, align 8, !tbaa !8
  %i.vd = tail call double @llvm.fmuladd.f64(double %i.uf, double %i.vb, double %i.vc)
  store double %i.vd, ptr %gep.us.i231.1322.5, align 8, !tbaa !8
  %.phi.trans.insert374 = getelementptr inbounds nuw i8, ptr %i.sx, i64 16
  %.phi.trans.insert355 = getelementptr inbounds nuw i8, ptr %i.sv, i64 144
  %.pre356 = load double, ptr %.phi.trans.insert355, align 8, !tbaa !8
  %i.ve = getelementptr inbounds nuw i8, ptr %.3132.lcssa, i64 16
  %i.vf = fmul double %.pre356, %i.uj             ; 3 uses
  store double %i.vf, ptr %.phi.trans.insert374, align 8, !tbaa !8
  store double %i.vf, ptr %i.ve, align 8, !tbaa !8
  %i.vg = fneg double %i.vf                       ; 5 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.sv, i64 152
  %i.vi = load double, ptr %i.vh, align 8, !tbaa !8
  %gep.us.i231.2332 = getelementptr i8, ptr %.3132.lcssa, i64 24 ; 2 uses
  %i.vj = load double, ptr %gep.us.i231.2332, align 8, !tbaa !8
  %i.vk = tail call double @llvm.fmuladd.f64(double %i.vg, double %i.vi, double %i.vj) ; 2 uses
  store double %i.vk, ptr %gep.us.i231.2332, align 8, !tbaa !8
  %i.vl = getelementptr inbounds nuw i8, ptr %i.sv, i64 160
  %i.vm = load double, ptr %i.vl, align 8, !tbaa !8
  %gep.us.i231.2332.1 = getelementptr i8, ptr %.3132.lcssa, i64 32 ; 2 uses
  %i.vn = load double, ptr %gep.us.i231.2332.1, align 8, !tbaa !8
  %i.vo = tail call double @llvm.fmuladd.f64(double %i.vg, double %i.vm, double %i.vn)
  store double %i.vo, ptr %gep.us.i231.2332.1, align 8, !tbaa !8
  %i.vp = getelementptr inbounds nuw i8, ptr %i.sv, i64 168
  %i.vq = load double, ptr %i.vp, align 8, !tbaa !8
  %gep.us.i231.2332.2 = getelementptr i8, ptr %.3132.lcssa, i64 40 ; 2 uses
  %i.vr = load double, ptr %gep.us.i231.2332.2, align 8, !tbaa !8
  %i.vs = tail call double @llvm.fmuladd.f64(double %i.vg, double %i.vq, double %i.vr)
  store double %i.vs, ptr %gep.us.i231.2332.2, align 8, !tbaa !8
  %i.vt = getelementptr inbounds nuw i8, ptr %i.sv, i64 176
  %i.vu = load double, ptr %i.vt, align 8, !tbaa !8
  %gep.us.i231.2332.3 = getelementptr i8, ptr %.3132.lcssa, i64 48 ; 2 uses
  %i.vv = load double, ptr %gep.us.i231.2332.3, align 8, !tbaa !8
  %i.vw = tail call double @llvm.fmuladd.f64(double %i.vg, double %i.vu, double %i.vv)
  store double %i.vw, ptr %gep.us.i231.2332.3, align 8, !tbaa !8
  %i.vx = getelementptr inbounds nuw i8, ptr %i.sv, i64 184
  %i.vy = load double, ptr %i.vx, align 8, !tbaa !8
  %gep.us.i231.2332.4 = getelementptr i8, ptr %.3132.lcssa, i64 56 ; 2 uses
  %i.vz = load double, ptr %gep.us.i231.2332.4, align 8, !tbaa !8
  %i.wa = tail call double @llvm.fmuladd.f64(double %i.vg, double %i.vy, double %i.vz)
  store double %i.wa, ptr %gep.us.i231.2332.4, align 8, !tbaa !8
  %.phi.trans.insert377 = getelementptr inbounds nuw i8, ptr %i.sx, i64 24
  %.phi.trans.insert358 = getelementptr inbounds nuw i8, ptr %i.sv, i64 216
  %.pre359 = load double, ptr %.phi.trans.insert358, align 8, !tbaa !8
  %i.wb = getelementptr inbounds nuw i8, ptr %.3132.lcssa, i64 24
  %i.wc = fmul double %.pre359, %i.vk             ; 3 uses
  store double %i.wc, ptr %.phi.trans.insert377, align 8, !tbaa !8
  store double %i.wc, ptr %i.wb, align 8, !tbaa !8
  %i.wd = fneg double %i.wc                       ; 4 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.sv, i64 224
  %i.wf = load double, ptr %i.we, align 8, !tbaa !8
  %gep.us.i231.3343 = getelementptr i8, ptr %.3132.lcssa, i64 32 ; 2 uses
  %i.wg = load double, ptr %gep.us.i231.3343, align 8, !tbaa !8
  %i.wh = tail call double @llvm.fmuladd.f64(double %i.wd, double %i.wf, double %i.wg) ; 2 uses
  store double %i.wh, ptr %gep.us.i231.3343, align 8, !tbaa !8
  %i.wi = getelementptr inbounds nuw i8, ptr %i.sv, i64 232
  %i.wj = load double, ptr %i.wi, align 8, !tbaa !8
  %gep.us.i231.3343.1 = getelementptr i8, ptr %.3132.lcssa, i64 40 ; 2 uses
  %i.wk = load double, ptr %gep.us.i231.3343.1, align 8, !tbaa !8
  %i.wl = tail call double @llvm.fmuladd.f64(double %i.wd, double %i.wj, double %i.wk)
  store double %i.wl, ptr %gep.us.i231.3343.1, align 8, !tbaa !8
  %i.wm = getelementptr inbounds nuw i8, ptr %i.sv, i64 240
  %i.wn = load double, ptr %i.wm, align 8, !tbaa !8
  %gep.us.i231.3343.2 = getelementptr i8, ptr %.3132.lcssa, i64 48 ; 2 uses
  %i.wo = load double, ptr %gep.us.i231.3343.2, align 8, !tbaa !8
  %i.wp = tail call double @llvm.fmuladd.f64(double %i.wd, double %i.wn, double %i.wo)
  store double %i.wp, ptr %gep.us.i231.3343.2, align 8, !tbaa !8
  %i.wq = getelementptr inbounds nuw i8, ptr %i.sv, i64 248
  %i.wr = load double, ptr %i.wq, align 8, !tbaa !8
  %gep.us.i231.3343.3 = getelementptr i8, ptr %.3132.lcssa, i64 56 ; 2 uses
  %i.ws = load double, ptr %gep.us.i231.3343.3, align 8, !tbaa !8
  %i.wt = tail call double @llvm.fmuladd.f64(double %i.wd, double %i.wr, double %i.ws)
  store double %i.wt, ptr %gep.us.i231.3343.3, align 8, !tbaa !8
  %.phi.trans.insert380 = getelementptr inbounds nuw i8, ptr %i.sx, i64 32
  %.phi.trans.insert361 = getelementptr inbounds nuw i8, ptr %i.sv, i64 288
  %.pre362 = load double, ptr %.phi.trans.insert361, align 8, !tbaa !8
  %i.wu = getelementptr inbounds nuw i8, ptr %.3132.lcssa, i64 32
  %i.wv = fmul double %.pre362, %i.wh             ; 3 uses
  store double %i.wv, ptr %.phi.trans.insert380, align 8, !tbaa !8
  store double %i.wv, ptr %i.wu, align 8, !tbaa !8
  %i.ww = fneg double %i.wv                       ; 3 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.sv, i64 296
  %i.wy = load double, ptr %i.wx, align 8, !tbaa !8
  %gep.us.i231.4 = getelementptr i8, ptr %.3132.lcssa, i64 40 ; 2 uses
  %i.wz = load double, ptr %gep.us.i231.4, align 8, !tbaa !8
  %i.xa = tail call double @llvm.fmuladd.f64(double %i.ww, double %i.wy, double %i.wz) ; 2 uses
  store double %i.xa, ptr %gep.us.i231.4, align 8, !tbaa !8
  %i.xb = getelementptr inbounds nuw i8, ptr %i.sv, i64 304
  %i.xc = load double, ptr %i.xb, align 8, !tbaa !8
  %gep.us.i231.4.1 = getelementptr i8, ptr %.3132.lcssa, i64 48 ; 2 uses
  %i.xd = load double, ptr %gep.us.i231.4.1, align 8, !tbaa !8
  %i.xe = tail call double @llvm.fmuladd.f64(double %i.ww, double %i.xc, double %i.xd)
  store double %i.xe, ptr %gep.us.i231.4.1, align 8, !tbaa !8
  %i.xf = getelementptr inbounds nuw i8, ptr %i.sv, i64 312
  %i.xg = load double, ptr %i.xf, align 8, !tbaa !8
  %gep.us.i231.4.2 = getelementptr i8, ptr %.3132.lcssa, i64 56 ; 2 uses
  %i.xh = load double, ptr %gep.us.i231.4.2, align 8, !tbaa !8
  %i.xi = tail call double @llvm.fmuladd.f64(double %i.ww, double %i.xg, double %i.xh)
  store double %i.xi, ptr %gep.us.i231.4.2, align 8, !tbaa !8
  %.phi.trans.insert383 = getelementptr inbounds nuw i8, ptr %i.sx, i64 40
  %.phi.trans.insert364 = getelementptr inbounds nuw i8, ptr %i.sv, i64 360
  %.pre365 = load double, ptr %.phi.trans.insert364, align 8, !tbaa !8
  %i.xj = getelementptr inbounds nuw i8, ptr %.3132.lcssa, i64 40
  %i.xk = fmul double %.pre365, %i.xa             ; 3 uses
  store double %i.xk, ptr %.phi.trans.insert383, align 8, !tbaa !8
  store double %i.xk, ptr %i.xj, align 8, !tbaa !8
  %i.xl = fneg double %i.xk                       ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.sv, i64 368
  %i.xn = load double, ptr %i.xm, align 8, !tbaa !8
  %gep.us.i231.5 = getelementptr i8, ptr %.3132.lcssa, i64 48 ; 2 uses
  %i.xo = load double, ptr %gep.us.i231.5, align 8, !tbaa !8
  %i.xp = tail call double @llvm.fmuladd.f64(double %i.xl, double %i.xn, double %i.xo) ; 2 uses
  store double %i.xp, ptr %gep.us.i231.5, align 8, !tbaa !8
  %i.xq = getelementptr inbounds nuw i8, ptr %i.sv, i64 376
  %i.xr = load double, ptr %i.xq, align 8, !tbaa !8
  %gep.us.i231.5.1 = getelementptr i8, ptr %.3132.lcssa, i64 56 ; 2 uses
  %i.xs = load double, ptr %gep.us.i231.5.1, align 8, !tbaa !8
  %i.xt = tail call double @llvm.fmuladd.f64(double %i.xl, double %i.xr, double %i.xs)
  store double %i.xt, ptr %gep.us.i231.5.1, align 8, !tbaa !8
  %.phi.trans.insert386 = getelementptr inbounds nuw i8, ptr %i.sx, i64 48
  %.phi.trans.insert367 = getelementptr inbounds nuw i8, ptr %i.sv, i64 432
  %.pre368 = load double, ptr %.phi.trans.insert367, align 8, !tbaa !8
  %i.xu = getelementptr inbounds nuw i8, ptr %.3132.lcssa, i64 48
  %i.xv = fmul double %.pre368, %i.xp             ; 3 uses
  store double %i.xv, ptr %.phi.trans.insert386, align 8, !tbaa !8
  store double %i.xv, ptr %i.xu, align 8, !tbaa !8
  %i.xw = fneg double %i.xv
  %i.xx = getelementptr inbounds nuw i8, ptr %i.sv, i64 440
  %i.xy = load double, ptr %i.xx, align 8, !tbaa !8
  %gep.us.i231.6 = getelementptr i8, ptr %.3132.lcssa, i64 56 ; 2 uses
  %i.xz = load double, ptr %gep.us.i231.6, align 8, !tbaa !8
  %i.ya = tail call double @llvm.fmuladd.f64(double %i.xw, double %i.xy, double %i.xz) ; 2 uses
  store double %i.ya, ptr %gep.us.i231.6, align 8, !tbaa !8
  %9 = getelementptr inbounds nuw i8, ptr %i.sx, i64 56
  %.phi.trans.insert389 = getelementptr inbounds nuw i8, ptr %i.sv, i64 504
  %.pre390 = load double, ptr %.phi.trans.insert389, align 8, !tbaa !8
  %i.yb = getelementptr inbounds nuw i8, ptr %.3132.lcssa, i64 56
  %i.yc = fmul double %.pre390, %i.ya             ; 2 uses
  store double %i.yc, ptr %9, align 8, !tbaa !8
  store double %i.yc, ptr %i.yb, align 8, !tbaa !8
  %.idx412 = shl nsw i64 %2, 6
  %i.yd = getelementptr inbounds i8, ptr %.3138.lcssa, i64 %.idx412
  %i.ye = getelementptr inbounds nuw i8, ptr %.3132.lcssa, i64 64
  %i.yf = add nsw i64 %.3128.lcssa, 8
  br label %.preheader.1

.preheader.1:                                     ; preds = %.split47.us.i222.7, %.preheader.preheader
  %.5140 = phi ptr [ %i.yd, %.split47.us.i222.7 ], [ %.3138.lcssa, %.preheader.preheader ] ; 4 uses
  %.5134 = phi ptr [ %i.ye, %.split47.us.i222.7 ], [ %.3132.lcssa, %.preheader.preheader ] ; 14 uses
  %.5 = phi i64 [ %i.yf, %.split47.us.i222.7 ], [ %.3128.lcssa, %.preheader.preheader ] ; 6 uses
  %i.yg = and i64 %0, 4
  %.not149.1 = icmp eq i64 %i.yg, 0
  br i1 %.not149.1, label %.preheader.2, label %bb.u

bb.u:                                             ; preds = %.preheader.1
  %i.yh = icmp sgt i64 %.5, 0
  br i1 %i.yh, label %bb.v, label %.split47.us.i222.1.3

bb.v:                                             ; preds = %bb.u
  %i.yi = tail call i32 @dgemm_kernel(i64 noundef 4, i64 noundef 1, i64 noundef %.5, double noundef -1.000000e+00, ptr noundef %.5140, ptr noundef %.0141.lcssa, ptr noundef %.5134, i64 noundef %7) #3 ; 0 uses
  br label %.split47.us.i222.1.3

.split47.us.i222.1.3:                             ; preds = %bb.v, %bb.u
  %.idx413 = shl nsw i64 %.5, 5
  %i.yj = getelementptr inbounds i8, ptr %.5140, i64 %.idx413 ; 10 uses
  %i.yk = load double, ptr %i.yj, align 8, !tbaa !8
  %i.yl = getelementptr inbounds [8 x i8], ptr %.0141.lcssa, i64 %.5 ; 4 uses
  %i.ym = load double, ptr %.5134, align 8, !tbaa !8
  %i.yn = fmul double %i.yk, %i.ym                ; 3 uses
  store double %i.yn, ptr %i.yl, align 8, !tbaa !8
  store double %i.yn, ptr %.5134, align 8, !tbaa !8
  %i.yo = fneg double %i.yn                       ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  %i.yq = load double, ptr %i.yp, align 8, !tbaa !8
  %gep.us.i231.1 = getelementptr i8, ptr %.5134, i64 8 ; 2 uses
  %i.yr = load double, ptr %gep.us.i231.1, align 8, !tbaa !8
  %i.ys = tail call double @llvm.fmuladd.f64(double %i.yo, double %i.yq, double %i.yr) ; 2 uses
  store double %i.ys, ptr %gep.us.i231.1, align 8, !tbaa !8
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yj, i64 16
  %i.yu = load double, ptr %i.yt, align 8, !tbaa !8
  %gep.us.i231.1.1315 = getelementptr i8, ptr %.5134, i64 16 ; 2 uses
  %i.yv = load double, ptr %gep.us.i231.1.1315, align 8, !tbaa !8
  %i.yw = tail call double @llvm.fmuladd.f64(double %i.yo, double %i.yu, double %i.yv)
  store double %i.yw, ptr %gep.us.i231.1.1315, align 8, !tbaa !8
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yj, i64 24
  %i.yy = load double, ptr %i.yx, align 8, !tbaa !8
  %gep.us.i231.1.2316 = getelementptr i8, ptr %.5134, i64 24 ; 2 uses
  %i.yz = load double, ptr %gep.us.i231.1.2316, align 8, !tbaa !8
  %i.za = tail call double @llvm.fmuladd.f64(double %i.yo, double %i.yy, double %i.yz)
  store double %i.za, ptr %gep.us.i231.1.2316, align 8, !tbaa !8
  %.phi.trans.insert392 = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  %.phi.trans.insert373 = getelementptr inbounds nuw i8, ptr %i.yj, i64 40
  %.pre374 = load double, ptr %.phi.trans.insert373, align 8, !tbaa !8
  %i.zb = getelementptr inbounds nuw i8, ptr %.5134, i64 8
  %i.zc = fmul double %.pre374, %i.ys             ; 3 uses
  store double %i.zc, ptr %.phi.trans.insert392, align 8, !tbaa !8
  store double %i.zc, ptr %i.zb, align 8, !tbaa !8
  %i.zd = fneg double %i.zc                       ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yj, i64 48
  %i.zf = load double, ptr %i.ze, align 8, !tbaa !8
  %gep.us.i231.1.1 = getelementptr i8, ptr %.5134, i64 16 ; 2 uses
  %i.zg = load double, ptr %gep.us.i231.1.1, align 8, !tbaa !8
  %i.zh = tail call double @llvm.fmuladd.f64(double %i.zd, double %i.zf, double %i.zg) ; 2 uses
  store double %i.zh, ptr %gep.us.i231.1.1, align 8, !tbaa !8
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yj, i64 56
  %i.zj = load double, ptr %i.zi, align 8, !tbaa !8
  %gep.us.i231.1.1.1 = getelementptr i8, ptr %.5134, i64 24 ; 2 uses
  %i.zk = load double, ptr %gep.us.i231.1.1.1, align 8, !tbaa !8
  %i.zl = tail call double @llvm.fmuladd.f64(double %i.zd, double %i.zj, double %i.zk)
  store double %i.zl, ptr %gep.us.i231.1.1.1, align 8, !tbaa !8
  %.phi.trans.insert395 = getelementptr inbounds nuw i8, ptr %i.yl, i64 16
  %.phi.trans.insert376 = getelementptr inbounds nuw i8, ptr %i.yj, i64 80
  %.pre377 = load double, ptr %.phi.trans.insert376, align 8, !tbaa !8
  %i.zm = getelementptr inbounds nuw i8, ptr %.5134, i64 16
  %i.zn = fmul double %.pre377, %i.zh             ; 3 uses
  store double %i.zn, ptr %.phi.trans.insert395, align 8, !tbaa !8
  store double %i.zn, ptr %i.zm, align 8, !tbaa !8
  %i.zo = fneg double %i.zn
  %i.zp = getelementptr inbounds nuw i8, ptr %i.yj, i64 88
  %i.zq = load double, ptr %i.zp, align 8, !tbaa !8
  %gep.us.i231.1.2 = getelementptr i8, ptr %.5134, i64 24 ; 2 uses
  %i.zr = load double, ptr %gep.us.i231.1.2, align 8, !tbaa !8
  %i.zs = tail call double @llvm.fmuladd.f64(double %i.zo, double %i.zq, double %i.zr) ; 2 uses
  store double %i.zs, ptr %gep.us.i231.1.2, align 8, !tbaa !8
  %10 = getelementptr inbounds nuw i8, ptr %i.yl, i64 24
  %.phi.trans.insert398 = getelementptr inbounds nuw i8, ptr %i.yj, i64 120
  %.pre399 = load double, ptr %.phi.trans.insert398, align 8, !tbaa !8
  %i.zt = getelementptr inbounds nuw i8, ptr %.5134, i64 24
  %i.zu = fmul double %.pre399, %i.zs             ; 2 uses
  store double %i.zu, ptr %10, align 8, !tbaa !8
  store double %i.zu, ptr %i.zt, align 8, !tbaa !8
  %.idx414 = shl nsw i64 %2, 5
  %i.zv = getelementptr inbounds i8, ptr %.5140, i64 %.idx414
  %i.zw = getelementptr inbounds nuw i8, ptr %.5134, i64 32
  %i.zx = add nsw i64 %.5, 4
  br label %.preheader.2

.preheader.2:                                     ; preds = %.split47.us.i222.1.3, %.preheader.1
  %.5140.1 = phi ptr [ %i.zv, %.split47.us.i222.1.3 ], [ %.5140, %.preheader.1 ] ; 4 uses
  %.5134.1 = phi ptr [ %i.zw, %.split47.us.i222.1.3 ], [ %.5134, %.preheader.1 ] ; 7 uses
  %.5.1 = phi i64 [ %i.zx, %.split47.us.i222.1.3 ], [ %.5, %.preheader.1 ] ; 6 uses
  %i.zy = and i64 %0, 2
  %.not149.2 = icmp eq i64 %i.zy, 0
  br i1 %.not149.2, label %.preheader.3, label %bb.w

bb.w:                                             ; preds = %.preheader.2
  %i.zz = icmp sgt i64 %.5.1, 0
  br i1 %i.zz, label %bb.x, label %.split47.us.i222.2.1

bb.x:                                             ; preds = %bb.w
  %i.aaa = tail call i32 @dgemm_kernel(i64 noundef 2, i64 noundef 1, i64 noundef %.5.1, double noundef -1.000000e+00, ptr noundef %.5140.1, ptr noundef %.0141.lcssa, ptr noundef %.5134.1, i64 noundef %7) #3 ; 0 uses
  br label %.split47.us.i222.2.1

.split47.us.i222.2.1:                             ; preds = %bb.x, %bb.w
  %.idx415 = shl nsw i64 %.5.1, 4
  %i.aab = getelementptr inbounds i8, ptr %.5140.1, i64 %.idx415 ; 3 uses
  %i.aac = load double, ptr %i.aab, align 8, !tbaa !8
  %i.aad = getelementptr inbounds [8 x i8], ptr %.0141.lcssa, i64 %.5.1 ; 2 uses
  %i.aae = load double, ptr %.5134.1, align 8, !tbaa !8
  %i.aaf = fmul double %i.aac, %i.aae             ; 3 uses
  store double %i.aaf, ptr %i.aad, align 8, !tbaa !8
  store double %i.aaf, ptr %.5134.1, align 8, !tbaa !8
  %i.aag = fneg double %i.aaf
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aab, i64 8
  %i.aai = load double, ptr %i.aah, align 8, !tbaa !8
  %gep.us.i231.2 = getelementptr i8, ptr %.5134.1, i64 8 ; 2 uses
  %i.aaj = load double, ptr %gep.us.i231.2, align 8, !tbaa !8
  %i.aak = tail call double @llvm.fmuladd.f64(double %i.aag, double %i.aai, double %i.aaj) ; 2 uses
  store double %i.aak, ptr %gep.us.i231.2, align 8, !tbaa !8
  %11 = getelementptr inbounds nuw i8, ptr %i.aad, i64 8
  %.phi.trans.insert401 = getelementptr inbounds nuw i8, ptr %i.aab, i64 24
  %.pre402 = load double, ptr %.phi.trans.insert401, align 8, !tbaa !8
  %i.aal = getelementptr inbounds nuw i8, ptr %.5134.1, i64 8
  %i.aam = fmul double %.pre402, %i.aak           ; 2 uses
  store double %i.aam, ptr %11, align 8, !tbaa !8
  store double %i.aam, ptr %i.aal, align 8, !tbaa !8
  %.idx416 = shl nsw i64 %2, 4
  %i.aan = getelementptr inbounds i8, ptr %.5140.1, i64 %.idx416
  %i.aao = getelementptr inbounds nuw i8, ptr %.5134.1, i64 16
  %i.aap = add nsw i64 %.5.1, 2
  br label %.preheader.3

.preheader.3:                                     ; preds = %.split47.us.i222.2.1, %.preheader.2
  %.5140.2 = phi ptr [ %i.aan, %.split47.us.i222.2.1 ], [ %.5140.1, %.preheader.2 ] ; 2 uses
  %.5134.2 = phi ptr [ %i.aao, %.split47.us.i222.2.1 ], [ %.5134.1, %.preheader.2 ] ; 3 uses
  %.5.2 = phi i64 [ %i.aap, %.split47.us.i222.2.1 ], [ %.5.1, %.preheader.2 ] ; 4 uses
  %i.aaq = and i64 %0, 1
  %.not149.3 = icmp eq i64 %i.aaq, 0
  br i1 %.not149.3, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %.preheader.3
  %i.aar = icmp sgt i64 %.5.2, 0
  br i1 %i.aar, label %bb.z, label %.split47.us.i222.3

bb.z:                                             ; preds = %bb.y
  %i.aas = tail call i32 @dgemm_kernel(i64 noundef 1, i64 noundef 1, i64 noundef %.5.2, double noundef -1.000000e+00, ptr noundef %.5140.2, ptr noundef %.0141.lcssa, ptr noundef %.5134.2, i64 noundef %7) #3 ; 0 uses
  br label %.split47.us.i222.3

.split47.us.i222.3:                               ; preds = %bb.z, %bb.y
  %i.aat = getelementptr inbounds [8 x i8], ptr %.5140.2, i64 %.5.2
  %i.aau = load double, ptr %i.aat, align 8, !tbaa !8
  %i.aav = getelementptr inbounds [8 x i8], ptr %.0141.lcssa, i64 %.5.2
  %i.aaw = load double, ptr %.5134.2, align 8, !tbaa !8
  %i.aax = fmul double %i.aau, %i.aaw             ; 2 uses
  store double %i.aax, ptr %i.aav, align 8, !tbaa !8
  store double %i.aax, ptr %.5134.2, align 8, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge277, %.split47.us.i222.3, %.preheader.3, %._crit_edge268
  ret i32 0
}

declare i32 @dgemm_kernel(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!11}
!11 = distinct !{!11, !12}
!12 = distinct !{!12, !"LVerDomain"}
!13 = !{!14}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !16, !17, !18}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !16, !17}
!22 = !{!23}
!23 = distinct !{!23, !24}
!24 = distinct !{!24, !"LVerDomain"}
!25 = !{!26}
!26 = distinct !{!26, !24}
!27 = distinct !{!27, !16, !17, !18}
!28 = distinct !{!28, !20}
!29 = distinct !{!29, !16, !17}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !16}
!32 = !{!33}
!33 = distinct !{!33, !34}
!34 = distinct !{!34, !"LVerDomain"}
!35 = !{!36}
!36 = distinct !{!36, !34}
!37 = distinct !{!37, !16, !17, !18}
!38 = distinct !{!38, !20}
!39 = distinct !{!39, !16, !17}
!40 = !{!41}
!41 = distinct !{!41, !42}
!42 = distinct !{!42, !"LVerDomain"}
!43 = !{!44}
!44 = distinct !{!44, !42}
!45 = distinct !{!45, !16, !17, !18}
!46 = distinct !{!46, !20}
!47 = distinct !{!47, !16, !17}
!48 = distinct !{!48, !16}
!49 = !{!50}
!50 = distinct !{!50, !51}
!51 = distinct !{!51, !"LVerDomain"}
!52 = !{!53}
!53 = distinct !{!53, !51}
!54 = distinct !{!54, !16, !17, !18}
!55 = distinct !{!55, !20}
!56 = distinct !{!56, !16, !17}
!57 = distinct !{!57, !16}
end_hunk_0

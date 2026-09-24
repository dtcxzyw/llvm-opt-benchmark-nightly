Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrsm_kernel_LT?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 28
begin_hunk_0_@dtrsm_kernel_LT:bb.a
  br i1 %i.qa, label %bb.p, label %bb.q

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
  %i.qn = load double, ptr %i.qm, align 8, !tbaa !43
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %.3132272, i64 %indvars.iv64.i186 ; 2 uses
  %indvars.iv.next65.i190 = add nuw nsw i64 %indvars.iv64.i186, 1 ; 2 uses
  %i.qp = icmp samesign ult i64 %indvars.iv64.i186, 15
  %i.qq = load double, ptr %i.qo, align 8, !tbaa !43
  %i.qr = fmul double %i.qn, %i.qq                ; 3 uses
  store double %i.qr, ptr %.03748.i189, align 8, !tbaa !43
  store double %i.qr, ptr %i.qo, align 8, !tbaa !43
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
  %wide.load521 = load <4 x double>, ptr %i.qv, align 8, !tbaa !43, !alias.scope !56
  %i.qw = getelementptr [8 x i8], ptr %.3132272, i64 %i.qu ; 2 uses
  %wide.load522 = load <4 x double>, ptr %i.qw, align 8, !tbaa !43, !alias.scope !57, !noalias !56
  %i.qx = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat518, <4 x double> %wide.load521, <4 x double> %wide.load522)
  store <4 x double> %i.qx, ptr %i.qw, align 8, !tbaa !43, !alias.scope !57, !noalias !56
  %index.next523 = add nuw i64 %index520, 4       ; 2 uses
  %i.qy = icmp eq i64 %index.next523, %n.vec516
  br i1 %i.qy, label %middle.block524, label %vector.body519, !llvm.loop !38

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
  %i.rb = load double, ptr %i.ra, align 8, !tbaa !43
  %gep.us.i205.prol = getelementptr [8 x i8], ptr %.3132272, i64 %indvars.iv56.i204.prol ; 2 uses
  %i.rc = load double, ptr %gep.us.i205.prol, align 8, !tbaa !43
  %i.rd = tail call double @llvm.fmuladd.f64(double %i.qs, double %i.rb, double %i.rc)
  store double %i.rd, ptr %gep.us.i205.prol, align 8, !tbaa !43
  %indvars.iv.next57.i206.prol = add nuw nsw i64 %indvars.iv56.i204.prol, 1 ; 2 uses
  %prol.iter556.next = add i64 %prol.iter556, 1   ; 2 uses
  %prol.iter556.cmp.not = icmp eq i64 %prol.iter556.next, %xtraiter554
  br i1 %prol.iter556.cmp.not, label %scalar.ph513.prol.loopexit, label %scalar.ph513.prol, !llvm.loop !39

scalar.ph513.prol.loopexit:                       ; preds = %scalar.ph513.prol, %scalar.ph513.preheader
  %indvars.iv56.i204.unr = phi i64 [ %indvars.iv56.i204.ph, %scalar.ph513.preheader ], [ %indvars.iv.next57.i206.prol, %scalar.ph513.prol ]
  %i.re = add i64 %indvars.iv56.i204.ph, -9
  %i.rf = icmp ult i64 %i.re, 7
  br i1 %i.rf, label %.split47.us.i196, label %scalar.ph513

scalar.ph513:                                     ; preds = %scalar.ph513.prol.loopexit, %scalar.ph513
  %indvars.iv56.i204 = phi i64 [ %indvars.iv.next57.i206.7, %scalar.ph513 ], [ %indvars.iv56.i204.unr, %scalar.ph513.prol.loopexit ] ; 10 uses
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %indvars.iv56.i204
  %i.rh = load double, ptr %i.rg, align 8, !tbaa !43
  %gep.us.i205 = getelementptr [8 x i8], ptr %.3132272, i64 %indvars.iv56.i204 ; 2 uses
  %i.ri = load double, ptr %gep.us.i205, align 8, !tbaa !43
  %i.rj = tail call double @llvm.fmuladd.f64(double %i.qs, double %i.rh, double %i.ri)
  store double %i.rj, ptr %gep.us.i205, align 8, !tbaa !43
  %indvars.iv.next57.i206 = add nuw nsw i64 %indvars.iv56.i204, 1 ; 2 uses
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %indvars.iv.next57.i206
  %i.rl = load double, ptr %i.rk, align 8, !tbaa !43
  %gep.us.i205.1 = getelementptr [8 x i8], ptr %.3132272, i64 %indvars.iv.next57.i206 ; 2 uses
  %i.rm = load double, ptr %gep.us.i205.1, align 8, !tbaa !43
  %i.rn = tail call double @llvm.fmuladd.f64(double %i.qs, double %i.rl, double %i.rm)
  store double %i.rn, ptr %gep.us.i205.1, align 8, !tbaa !43
  %indvars.iv.next57.i206.1 = add nuw nsw i64 %indvars.iv56.i204, 2 ; 2 uses
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %indvars.iv.next57.i206.1
  %i.rp = load double, ptr %i.ro, align 8, !tbaa !43
  %gep.us.i205.2 = getelementptr [8 x i8], ptr %.3132272, i64 %indvars.iv.next57.i206.1 ; 2 uses
  %i.rq = load double, ptr %gep.us.i205.2, align 8, !tbaa !43
  %i.rr = tail call double @llvm.fmuladd.f64(double %i.qs, double %i.rp, double %i.rq)
  store double %i.rr, ptr %gep.us.i205.2, align 8, !tbaa !43
  %indvars.iv.next57.i206.2 = add nuw nsw i64 %indvars.iv56.i204, 3 ; 2 uses
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %indvars.iv.next57.i206.2
  %i.rt = load double, ptr %i.rs, align 8, !tbaa !43
  %gep.us.i205.3 = getelementptr [8 x i8], ptr %.3132272, i64 %indvars.iv.next57.i206.2 ; 2 uses
  %i.ru = load double, ptr %gep.us.i205.3, align 8, !tbaa !43
  %i.rv = tail call double @llvm.fmuladd.f64(double %i.qs, double %i.rt, double %i.ru)
  store double %i.rv, ptr %gep.us.i205.3, align 8, !tbaa !43
  %indvars.iv.next57.i206.3 = add nuw nsw i64 %indvars.iv56.i204, 4 ; 2 uses
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %indvars.iv.next57.i206.3
  %i.rx = load double, ptr %i.rw, align 8, !tbaa !43
  %gep.us.i205.4 = getelementptr [8 x i8], ptr %.3132272, i64 %indvars.iv.next57.i206.3 ; 2 uses
  %i.ry = load double, ptr %gep.us.i205.4, align 8, !tbaa !43
  %i.rz = tail call double @llvm.fmuladd.f64(double %i.qs, double %i.rx, double %i.ry)
  store double %i.rz, ptr %gep.us.i205.4, align 8, !tbaa !43
  %indvars.iv.next57.i206.4 = add nuw nsw i64 %indvars.iv56.i204, 5 ; 2 uses
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %indvars.iv.next57.i206.4
  %i.sb = load double, ptr %i.sa, align 8, !tbaa !43
  %gep.us.i205.5 = getelementptr [8 x i8], ptr %.3132272, i64 %indvars.iv.next57.i206.4 ; 2 uses
  %i.sc = load double, ptr %gep.us.i205.5, align 8, !tbaa !43
  %i.sd = tail call double @llvm.fmuladd.f64(double %i.qs, double %i.sb, double %i.sc)
  store double %i.sd, ptr %gep.us.i205.5, align 8, !tbaa !43
  %indvars.iv.next57.i206.5 = add nuw nsw i64 %indvars.iv56.i204, 6 ; 2 uses
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %indvars.iv.next57.i206.5
  %i.sf = load double, ptr %i.se, align 8, !tbaa !43
  %gep.us.i205.6 = getelementptr [8 x i8], ptr %.3132272, i64 %indvars.iv.next57.i206.5 ; 2 uses
  %i.sg = load double, ptr %gep.us.i205.6, align 8, !tbaa !43
  %i.sh = tail call double @llvm.fmuladd.f64(double %i.qs, double %i.sf, double %i.sg)
  store double %i.sh, ptr %gep.us.i205.6, align 8, !tbaa !43
  %indvars.iv.next57.i206.6 = add nuw nsw i64 %indvars.iv56.i204, 7 ; 2 uses
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %indvars.iv.next57.i206.6
  %i.sj = load double, ptr %i.si, align 8, !tbaa !43
  %gep.us.i205.7 = getelementptr [8 x i8], ptr %.3132272, i64 %indvars.iv.next57.i206.6 ; 2 uses
  %i.sk = load double, ptr %gep.us.i205.7, align 8, !tbaa !43
  %i.sl = tail call double @llvm.fmuladd.f64(double %i.qs, double %i.sj, double %i.sk)
  store double %i.sl, ptr %gep.us.i205.7, align 8, !tbaa !43
  %indvars.iv.next57.i206.7 = add nuw nsw i64 %indvars.iv56.i204, 8 ; 2 uses
  %exitcond59.not.i207.7 = icmp eq i64 %indvars.iv.next57.i206.7, 16
  br i1 %exitcond59.not.i207.7, label %.split47.us.i196, label %scalar.ph513, !llvm.loop !40

.split47.us.i196:                                 ; preds = %scalar.ph513.prol.loopexit, %scalar.ph513, %middle.block524, %bb.r
  %.us-phi.i197 = getelementptr inbounds nuw i8, ptr %.03748.i189, i64 8
  %i.sm = getelementptr inbounds nuw i8, ptr %.03649.i188, i64 128
  %indvars.iv.next55.i198 = add nuw nsw i64 %indvars.iv54.i187, 1
  %exitcond67.not.i199 = icmp eq i64 %indvars.iv.next65.i190, 16
  br i1 %exitcond67.not.i199, label %solve.exit211, label %bb.r, !llvm.loop !20

solve.exit211:                                    ; preds = %.split47.us.i196
  %i.sn = getelementptr inbounds i8, ptr %.3138271, i64 %.idx150 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %.3132272, i64 128 ; 2 uses
  %i.sp = add nsw i64 %.3128273, 16               ; 2 uses
  %i.sq = add nsw i64 %.2274, -1
  %i.sr = icmp sgt i64 %.2274, 1
  %indvar.next505 = add i64 %indvar504, 1
  br i1 %i.sr, label %.lr.ph276, label %._crit_edge277, !llvm.loop !41

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
  %i.sw = getelementptr inbounds [8 x i8], ptr %.0141.lcssa, i64 %.3128.lcssa ; 8 uses
  %9 = load double, ptr %i.sv, align 8, !tbaa !43
  %i.sx = load double, ptr %.3132.lcssa, align 8, !tbaa !43
  %i.sy = fmul double %9, %i.sx                   ; 3 uses
  store double %i.sy, ptr %i.sw, align 8, !tbaa !43
  store double %i.sy, ptr %.3132.lcssa, align 8, !tbaa !43
  %i.sz = fneg double %i.sy                       ; 7 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %i.tb = load double, ptr %i.ta, align 8, !tbaa !43
  %gep.us.i231 = getelementptr i8, ptr %.3132.lcssa, i64 8 ; 2 uses
  %i.tc = load double, ptr %gep.us.i231, align 8, !tbaa !43
  %i.td = tail call double @llvm.fmuladd.f64(double %i.sz, double %i.tb, double %i.tc) ; 2 uses
  store double %i.td, ptr %gep.us.i231, align 8, !tbaa !43
  %i.te = getelementptr inbounds nuw i8, ptr %i.sv, i64 16
  %i.tf = load double, ptr %i.te, align 8, !tbaa !43
  %gep.us.i231.1352 = getelementptr i8, ptr %.3132.lcssa, i64 16 ; 2 uses
  %i.tg = load double, ptr %gep.us.i231.1352, align 8, !tbaa !43
  %i.th = tail call double @llvm.fmuladd.f64(double %i.sz, double %i.tf, double %i.tg)
  store double %i.th, ptr %gep.us.i231.1352, align 8, !tbaa !43
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sv, i64 24
  %i.tj = load double, ptr %i.ti, align 8, !tbaa !43
  %gep.us.i231.2353 = getelementptr i8, ptr %.3132.lcssa, i64 24 ; 2 uses
  %i.tk = load double, ptr %gep.us.i231.2353, align 8, !tbaa !43
  %i.tl = tail call double @llvm.fmuladd.f64(double %i.sz, double %i.tj, double %i.tk)
  store double %i.tl, ptr %gep.us.i231.2353, align 8, !tbaa !43
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sv, i64 32
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !43
  %gep.us.i231.3355 = getelementptr i8, ptr %.3132.lcssa, i64 32 ; 2 uses
  %i.to = load double, ptr %gep.us.i231.3355, align 8, !tbaa !43
  %i.tp = tail call double @llvm.fmuladd.f64(double %i.sz, double %i.tn, double %i.to)
  store double %i.tp, ptr %gep.us.i231.3355, align 8, !tbaa !43
  %i.tq = getelementptr inbounds nuw i8, ptr %i.sv, i64 40
  %i.tr = load double, ptr %i.tq, align 8, !tbaa !43
  %gep.us.i231.4357 = getelementptr i8, ptr %.3132.lcssa, i64 40 ; 2 uses
  %i.ts = load double, ptr %gep.us.i231.4357, align 8, !tbaa !43
  %i.tt = tail call double @llvm.fmuladd.f64(double %i.sz, double %i.tr, double %i.ts)
  store double %i.tt, ptr %gep.us.i231.4357, align 8, !tbaa !43
  %i.tu = getelementptr inbounds nuw i8, ptr %i.sv, i64 48
  %i.tv = load double, ptr %i.tu, align 8, !tbaa !43
  %gep.us.i231.5358 = getelementptr i8, ptr %.3132.lcssa, i64 48 ; 2 uses
  %i.tw = load double, ptr %gep.us.i231.5358, align 8, !tbaa !43
  %i.tx = tail call double @llvm.fmuladd.f64(double %i.sz, double %i.tv, double %i.tw)
  store double %i.tx, ptr %gep.us.i231.5358, align 8, !tbaa !43
  %i.ty = getelementptr inbounds nuw i8, ptr %i.sv, i64 56
  %i.tz = load double, ptr %i.ty, align 8, !tbaa !43
  %gep.us.i231.6359 = getelementptr i8, ptr %.3132.lcssa, i64 56 ; 2 uses
  %i.ua = load double, ptr %gep.us.i231.6359, align 8, !tbaa !43
  %i.ub = tail call double @llvm.fmuladd.f64(double %i.sz, double %i.tz, double %i.ua)
  store double %i.ub, ptr %gep.us.i231.6359, align 8, !tbaa !43
  %.phi.trans.insert371.a = getelementptr inbounds nuw i8, ptr %i.sv, i64 72
  %.pre372.a = load double, ptr %.phi.trans.insert371.a, align 8, !tbaa !43
  %i.uc = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.ud = getelementptr inbounds nuw i8, ptr %.3132.lcssa, i64 8
  %i.ue = fmul double %.pre372.a, %i.td           ; 3 uses
  store double %i.ue, ptr %i.uc, align 8, !tbaa !43
  store double %i.ue, ptr %i.ud, align 8, !tbaa !43
  %i.uf = fneg double %i.ue                       ; 6 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.sv, i64 80
  %i.uh = load double, ptr %i.ug, align 8, !tbaa !43
  %gep.us.i231.1322 = getelementptr i8, ptr %.3132.lcssa, i64 16 ; 2 uses
  %i.ui = load double, ptr %gep.us.i231.1322, align 8, !tbaa !43
  %i.uj = tail call double @llvm.fmuladd.f64(double %i.uf, double %i.uh, double %i.ui) ; 2 uses
  store double %i.uj, ptr %gep.us.i231.1322, align 8, !tbaa !43
  %i.uk = getelementptr inbounds nuw i8, ptr %i.sv, i64 88
  %i.ul = load double, ptr %i.uk, align 8, !tbaa !43
  %gep.us.i231.1322.1 = getelementptr i8, ptr %.3132.lcssa, i64 24 ; 2 uses
  %i.um = load double, ptr %gep.us.i231.1322.1, align 8, !tbaa !43
  %i.un = tail call double @llvm.fmuladd.f64(double %i.uf, double %i.ul, double %i.um)
  store double %i.un, ptr %gep.us.i231.1322.1, align 8, !tbaa !43
  %i.uo = getelementptr inbounds nuw i8, ptr %i.sv, i64 96
  %i.up = load double, ptr %i.uo, align 8, !tbaa !43
  %gep.us.i231.1322.2 = getelementptr i8, ptr %.3132.lcssa, i64 32 ; 2 uses
  %i.uq = load double, ptr %gep.us.i231.1322.2, align 8, !tbaa !43
  %i.ur = tail call double @llvm.fmuladd.f64(double %i.uf, double %i.up, double %i.uq)
  store double %i.ur, ptr %gep.us.i231.1322.2, align 8, !tbaa !43
  %i.us = getelementptr inbounds nuw i8, ptr %i.sv, i64 104
  %i.ut = load double, ptr %i.us, align 8, !tbaa !43
  %gep.us.i231.1322.3 = getelementptr i8, ptr %.3132.lcssa, i64 40 ; 2 uses
  %i.uu = load double, ptr %gep.us.i231.1322.3, align 8, !tbaa !43
  %i.uv = tail call double @llvm.fmuladd.f64(double %i.uf, double %i.ut, double %i.uu)
  store double %i.uv, ptr %gep.us.i231.1322.3, align 8, !tbaa !43
  %i.uw = getelementptr inbounds nuw i8, ptr %i.sv, i64 112
  %i.ux = load double, ptr %i.uw, align 8, !tbaa !43
  %gep.us.i231.1322.4 = getelementptr i8, ptr %.3132.lcssa, i64 48 ; 2 uses
  %i.uy = load double, ptr %gep.us.i231.1322.4, align 8, !tbaa !43
  %i.uz = tail call double @llvm.fmuladd.f64(double %i.uf, double %i.ux, double %i.uy)
  store double %i.uz, ptr %gep.us.i231.1322.4, align 8, !tbaa !43
  %i.va = getelementptr inbounds nuw i8, ptr %i.sv, i64 120
  %i.vb = load double, ptr %i.va, align 8, !tbaa !43
  %gep.us.i231.1322.5 = getelementptr i8, ptr %.3132.lcssa, i64 56 ; 2 uses
  %i.vc = load double, ptr %gep.us.i231.1322.5, align 8, !tbaa !43
  %i.vd = tail call double @llvm.fmuladd.f64(double %i.uf, double %i.vb, double %i.vc)
  store double %i.vd, ptr %gep.us.i231.1322.5, align 8, !tbaa !43
  %.phi.trans.insert374.a = getelementptr inbounds nuw i8, ptr %i.sv, i64 144
  %.pre375.a = load double, ptr %.phi.trans.insert374.a, align 8, !tbaa !43
  %i.ve = getelementptr inbounds nuw i8, ptr %i.sw, i64 16
  %i.vf = getelementptr inbounds nuw i8, ptr %.3132.lcssa, i64 16
  %i.vg = fmul double %.pre375.a, %i.uj           ; 3 uses
  store double %i.vg, ptr %i.ve, align 8, !tbaa !43
  store double %i.vg, ptr %i.vf, align 8, !tbaa !43
  %i.vh = fneg double %i.vg                       ; 5 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.sv, i64 152
  %i.vj = load double, ptr %i.vi, align 8, !tbaa !43
  %gep.us.i231.2332 = getelementptr i8, ptr %.3132.lcssa, i64 24 ; 2 uses
  %i.vk = load double, ptr %gep.us.i231.2332, align 8, !tbaa !43
  %i.vl = tail call double @llvm.fmuladd.f64(double %i.vh, double %i.vj, double %i.vk) ; 2 uses
  store double %i.vl, ptr %gep.us.i231.2332, align 8, !tbaa !43
  %i.vm = getelementptr inbounds nuw i8, ptr %i.sv, i64 160
  %i.vn = load double, ptr %i.vm, align 8, !tbaa !43
  %gep.us.i231.2332.1 = getelementptr i8, ptr %.3132.lcssa, i64 32 ; 2 uses
  %i.vo = load double, ptr %gep.us.i231.2332.1, align 8, !tbaa !43
  %i.vp = tail call double @llvm.fmuladd.f64(double %i.vh, double %i.vn, double %i.vo)
  store double %i.vp, ptr %gep.us.i231.2332.1, align 8, !tbaa !43
  %i.vq = getelementptr inbounds nuw i8, ptr %i.sv, i64 168
  %i.vr = load double, ptr %i.vq, align 8, !tbaa !43
  %gep.us.i231.2332.2 = getelementptr i8, ptr %.3132.lcssa, i64 40 ; 2 uses
  %i.vs = load double, ptr %gep.us.i231.2332.2, align 8, !tbaa !43
  %i.vt = tail call double @llvm.fmuladd.f64(double %i.vh, double %i.vr, double %i.vs)
  store double %i.vt, ptr %gep.us.i231.2332.2, align 8, !tbaa !43
  %i.vu = getelementptr inbounds nuw i8, ptr %i.sv, i64 176
  %i.vv = load double, ptr %i.vu, align 8, !tbaa !43
  %gep.us.i231.2332.3 = getelementptr i8, ptr %.3132.lcssa, i64 48 ; 2 uses
  %i.vw = load double, ptr %gep.us.i231.2332.3, align 8, !tbaa !43
  %i.vx = tail call double @llvm.fmuladd.f64(double %i.vh, double %i.vv, double %i.vw)
  store double %i.vx, ptr %gep.us.i231.2332.3, align 8, !tbaa !43
  %i.vy = getelementptr inbounds nuw i8, ptr %i.sv, i64 184
  %i.vz = load double, ptr %i.vy, align 8, !tbaa !43
  %gep.us.i231.2332.4 = getelementptr i8, ptr %.3132.lcssa, i64 56 ; 2 uses
  %i.wa = load double, ptr %gep.us.i231.2332.4, align 8, !tbaa !43
  %i.wb = tail call double @llvm.fmuladd.f64(double %i.vh, double %i.vz, double %i.wa)
  store double %i.wb, ptr %gep.us.i231.2332.4, align 8, !tbaa !43
  %.phi.trans.insert377 = getelementptr inbounds nuw i8, ptr %i.sv, i64 216
  %.pre378 = load double, ptr %.phi.trans.insert377, align 8, !tbaa !43
  %i.wc = getelementptr inbounds nuw i8, ptr %i.sw, i64 24
  %i.wd = getelementptr inbounds nuw i8, ptr %.3132.lcssa, i64 24
  %i.we = fmul double %.pre378, %i.vl             ; 3 uses
  store double %i.we, ptr %i.wc, align 8, !tbaa !43
  store double %i.we, ptr %i.wd, align 8, !tbaa !43
  %i.wf = fneg double %i.we                       ; 4 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.sv, i64 224
  %i.wh = load double, ptr %i.wg, align 8, !tbaa !43
  %gep.us.i231.3343 = getelementptr i8, ptr %.3132.lcssa, i64 32 ; 2 uses
  %i.wi = load double, ptr %gep.us.i231.3343, align 8, !tbaa !43
  %i.wj = tail call double @llvm.fmuladd.f64(double %i.wf, double %i.wh, double %i.wi) ; 2 uses
  store double %i.wj, ptr %gep.us.i231.3343, align 8, !tbaa !43
  %i.wk = getelementptr inbounds nuw i8, ptr %i.sv, i64 232
  %i.wl = load double, ptr %i.wk, align 8, !tbaa !43
  %gep.us.i231.3343.1 = getelementptr i8, ptr %.3132.lcssa, i64 40 ; 2 uses
  %i.wm = load double, ptr %gep.us.i231.3343.1, align 8, !tbaa !43
  %i.wn = tail call double @llvm.fmuladd.f64(double %i.wf, double %i.wl, double %i.wm)
  store double %i.wn, ptr %gep.us.i231.3343.1, align 8, !tbaa !43
  %i.wo = getelementptr inbounds nuw i8, ptr %i.sv, i64 240
  %i.wp = load double, ptr %i.wo, align 8, !tbaa !43
  %gep.us.i231.3343.2 = getelementptr i8, ptr %.3132.lcssa, i64 48 ; 2 uses
  %i.wq = load double, ptr %gep.us.i231.3343.2, align 8, !tbaa !43
  %i.wr = tail call double @llvm.fmuladd.f64(double %i.wf, double %i.wp, double %i.wq)
  store double %i.wr, ptr %gep.us.i231.3343.2, align 8, !tbaa !43
  %i.ws = getelementptr inbounds nuw i8, ptr %i.sv, i64 248
  %i.wt = load double, ptr %i.ws, align 8, !tbaa !43
  %gep.us.i231.3343.3 = getelementptr i8, ptr %.3132.lcssa, i64 56 ; 2 uses
  %i.wu = load double, ptr %gep.us.i231.3343.3, align 8, !tbaa !43
  %i.wv = tail call double @llvm.fmuladd.f64(double %i.wf, double %i.wt, double %i.wu)
  store double %i.wv, ptr %gep.us.i231.3343.3, align 8, !tbaa !43
  %.phi.trans.insert380 = getelementptr inbounds nuw i8, ptr %i.sv, i64 288
  %.pre381 = load double, ptr %.phi.trans.insert380, align 8, !tbaa !43
  %i.ww = getelementptr inbounds nuw i8, ptr %i.sw, i64 32
  %i.wx = getelementptr inbounds nuw i8, ptr %.3132.lcssa, i64 32
  %i.wy = fmul double %.pre381, %i.wj             ; 3 uses
  store double %i.wy, ptr %i.ww, align 8, !tbaa !43
  store double %i.wy, ptr %i.wx, align 8, !tbaa !43
  %i.wz = fneg double %i.wy                       ; 3 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.sv, i64 296
  %i.xb = load double, ptr %i.xa, align 8, !tbaa !43
  %gep.us.i231.4 = getelementptr i8, ptr %.3132.lcssa, i64 40 ; 2 uses
  %i.xc = load double, ptr %gep.us.i231.4, align 8, !tbaa !43
  %i.xd = tail call double @llvm.fmuladd.f64(double %i.wz, double %i.xb, double %i.xc) ; 2 uses
  store double %i.xd, ptr %gep.us.i231.4, align 8, !tbaa !43
  %i.xe = getelementptr inbounds nuw i8, ptr %i.sv, i64 304
  %i.xf = load double, ptr %i.xe, align 8, !tbaa !43
  %gep.us.i231.4.1 = getelementptr i8, ptr %.3132.lcssa, i64 48 ; 2 uses
  %i.xg = load double, ptr %gep.us.i231.4.1, align 8, !tbaa !43
  %i.xh = tail call double @llvm.fmuladd.f64(double %i.wz, double %i.xf, double %i.xg)
  store double %i.xh, ptr %gep.us.i231.4.1, align 8, !tbaa !43
  %i.xi = getelementptr inbounds nuw i8, ptr %i.sv, i64 312
  %i.xj = load double, ptr %i.xi, align 8, !tbaa !43
  %gep.us.i231.4.2 = getelementptr i8, ptr %.3132.lcssa, i64 56 ; 2 uses
  %i.xk = load double, ptr %gep.us.i231.4.2, align 8, !tbaa !43
  %i.xl = tail call double @llvm.fmuladd.f64(double %i.wz, double %i.xj, double %i.xk)
  store double %i.xl, ptr %gep.us.i231.4.2, align 8, !tbaa !43
  %.phi.trans.insert383 = getelementptr inbounds nuw i8, ptr %i.sv, i64 360
  %.pre384 = load double, ptr %.phi.trans.insert383, align 8, !tbaa !43
  %i.xm = getelementptr inbounds nuw i8, ptr %i.sw, i64 40
  %i.xn = getelementptr inbounds nuw i8, ptr %.3132.lcssa, i64 40
  %i.xo = fmul double %.pre384, %i.xd             ; 3 uses
  store double %i.xo, ptr %i.xm, align 8, !tbaa !43
  store double %i.xo, ptr %i.xn, align 8, !tbaa !43
  %i.xp = fneg double %i.xo                       ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.sv, i64 368
  %i.xr = load double, ptr %i.xq, align 8, !tbaa !43
  %gep.us.i231.5 = getelementptr i8, ptr %.3132.lcssa, i64 48 ; 2 uses
  %i.xs = load double, ptr %gep.us.i231.5, align 8, !tbaa !43
  %i.xt = tail call double @llvm.fmuladd.f64(double %i.xp, double %i.xr, double %i.xs) ; 2 uses
  store double %i.xt, ptr %gep.us.i231.5, align 8, !tbaa !43
  %i.xu = getelementptr inbounds nuw i8, ptr %i.sv, i64 376
  %i.xv = load double, ptr %i.xu, align 8, !tbaa !43
  %gep.us.i231.5.1 = getelementptr i8, ptr %.3132.lcssa, i64 56 ; 2 uses
  %i.xw = load double, ptr %gep.us.i231.5.1, align 8, !tbaa !43
  %i.xx = tail call double @llvm.fmuladd.f64(double %i.xp, double %i.xv, double %i.xw)
  store double %i.xx, ptr %gep.us.i231.5.1, align 8, !tbaa !43
  %.phi.trans.insert386 = getelementptr inbounds nuw i8, ptr %i.sv, i64 432
  %.pre387 = load double, ptr %.phi.trans.insert386, align 8, !tbaa !43
  %i.xy = getelementptr inbounds nuw i8, ptr %i.sw, i64 48
  %i.xz = getelementptr inbounds nuw i8, ptr %.3132.lcssa, i64 48
  %i.ya = fmul double %.pre387, %i.xt             ; 3 uses
  store double %i.ya, ptr %i.xy, align 8, !tbaa !43
  store double %i.ya, ptr %i.xz, align 8, !tbaa !43
  %i.yb = fneg double %i.ya
  %i.yc = getelementptr inbounds nuw i8, ptr %i.sv, i64 440
  %i.yd = load double, ptr %i.yc, align 8, !tbaa !43
  %gep.us.i231.6 = getelementptr i8, ptr %.3132.lcssa, i64 56 ; 2 uses
  %i.ye = load double, ptr %gep.us.i231.6, align 8, !tbaa !43
  %i.yf = tail call double @llvm.fmuladd.f64(double %i.yb, double %i.yd, double %i.ye) ; 2 uses
  store double %i.yf, ptr %gep.us.i231.6, align 8, !tbaa !43
  %.phi.trans.insert389 = getelementptr inbounds nuw i8, ptr %i.sv, i64 504
  %.pre390 = load double, ptr %.phi.trans.insert389, align 8, !tbaa !43
  %i.yg = getelementptr inbounds nuw i8, ptr %.3132.lcssa, i64 56
  %.us-phi.i223.6 = getelementptr inbounds nuw i8, ptr %i.sw, i64 56
  %i.yh = fmul double %.pre390, %i.yf             ; 2 uses
  store double %i.yh, ptr %.us-phi.i223.6, align 8, !tbaa !43
  store double %i.yh, ptr %i.yg, align 8, !tbaa !43
  %.idx412 = shl nsw i64 %2, 6
  %i.yi = getelementptr inbounds i8, ptr %.3138.lcssa, i64 %.idx412
  %i.yj = getelementptr inbounds nuw i8, ptr %.3132.lcssa, i64 64
  %i.yk = add nsw i64 %.3128.lcssa, 8
  br label %.preheader.1

.preheader.1:                                     ; preds = %.split47.us.i222.7, %.preheader.preheader
  %.5140 = phi ptr [ %i.yi, %.split47.us.i222.7 ], [ %.3138.lcssa, %.preheader.preheader ] ; 4 uses
  %.5134 = phi ptr [ %i.yj, %.split47.us.i222.7 ], [ %.3132.lcssa, %.preheader.preheader ] ; 14 uses
  %.5 = phi i64 [ %i.yk, %.split47.us.i222.7 ], [ %.3128.lcssa, %.preheader.preheader ] ; 6 uses
  %i.yl = and i64 %0, 4
  %.not149.1 = icmp eq i64 %i.yl, 0
  br i1 %.not149.1, label %.preheader.2, label %bb.u

bb.u:                                             ; preds = %.preheader.1
  %i.ym = icmp sgt i64 %.5, 0
  br i1 %i.ym, label %bb.v, label %.split47.us.i222.1.3

bb.v:                                             ; preds = %bb.u
  %i.yn = tail call i32 @dgemm_kernel(i64 noundef 4, i64 noundef 1, i64 noundef %.5, double noundef -1.000000e+00, ptr noundef %.5140, ptr noundef %.0141.lcssa, ptr noundef %.5134, i64 noundef %7) #3 ; 0 uses
  br label %.split47.us.i222.1.3

.split47.us.i222.1.3:                             ; preds = %bb.v, %bb.u
  %.idx413 = shl nsw i64 %.5, 5
  %i.yo = getelementptr inbounds i8, ptr %.5140, i64 %.idx413 ; 10 uses
  %i.yp = getelementptr inbounds [8 x i8], ptr %.0141.lcssa, i64 %.5 ; 4 uses
  %10 = load double, ptr %i.yo, align 8, !tbaa !43
  %i.yq = load double, ptr %.5134, align 8, !tbaa !43
  %i.yr = fmul double %10, %i.yq                  ; 3 uses
  store double %i.yr, ptr %i.yp, align 8, !tbaa !43
  store double %i.yr, ptr %.5134, align 8, !tbaa !43
  %i.ys = fneg double %i.yr                       ; 3 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yo, i64 8
  %i.yu = load double, ptr %i.yt, align 8, !tbaa !43
  %gep.us.i231.1 = getelementptr i8, ptr %.5134, i64 8 ; 2 uses
  %i.yv = load double, ptr %gep.us.i231.1, align 8, !tbaa !43
  %i.yw = tail call double @llvm.fmuladd.f64(double %i.ys, double %i.yu, double %i.yv) ; 2 uses
  store double %i.yw, ptr %gep.us.i231.1, align 8, !tbaa !43
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yo, i64 16
  %i.yy = load double, ptr %i.yx, align 8, !tbaa !43
  %gep.us.i231.1.1315 = getelementptr i8, ptr %.5134, i64 16 ; 2 uses
  %i.yz = load double, ptr %gep.us.i231.1.1315, align 8, !tbaa !43
  %i.za = tail call double @llvm.fmuladd.f64(double %i.ys, double %i.yy, double %i.yz)
  store double %i.za, ptr %gep.us.i231.1.1315, align 8, !tbaa !43
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yo, i64 24
  %i.zc = load double, ptr %i.zb, align 8, !tbaa !43
  %gep.us.i231.1.2316 = getelementptr i8, ptr %.5134, i64 24 ; 2 uses
  %i.zd = load double, ptr %gep.us.i231.1.2316, align 8, !tbaa !43
  %i.ze = tail call double @llvm.fmuladd.f64(double %i.ys, double %i.zc, double %i.zd)
  store double %i.ze, ptr %gep.us.i231.1.2316, align 8, !tbaa !43
  %.phi.trans.insert392 = getelementptr inbounds nuw i8, ptr %i.yo, i64 40
  %.pre393 = load double, ptr %.phi.trans.insert392, align 8, !tbaa !43
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %i.zg = getelementptr inbounds nuw i8, ptr %.5134, i64 8
  %i.zh = fmul double %.pre393, %i.yw             ; 3 uses
  store double %i.zh, ptr %i.zf, align 8, !tbaa !43
  store double %i.zh, ptr %i.zg, align 8, !tbaa !43
  %i.zi = fneg double %i.zh                       ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.yo, i64 48
  %i.zk = load double, ptr %i.zj, align 8, !tbaa !43
  %gep.us.i231.1.1 = getelementptr i8, ptr %.5134, i64 16 ; 2 uses
  %i.zl = load double, ptr %gep.us.i231.1.1, align 8, !tbaa !43
  %i.zm = tail call double @llvm.fmuladd.f64(double %i.zi, double %i.zk, double %i.zl) ; 2 uses
  store double %i.zm, ptr %gep.us.i231.1.1, align 8, !tbaa !43
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yo, i64 56
  %i.zo = load double, ptr %i.zn, align 8, !tbaa !43
  %gep.us.i231.1.1.1 = getelementptr i8, ptr %.5134, i64 24 ; 2 uses
  %i.zp = load double, ptr %gep.us.i231.1.1.1, align 8, !tbaa !43
  %i.zq = tail call double @llvm.fmuladd.f64(double %i.zi, double %i.zo, double %i.zp)
  store double %i.zq, ptr %gep.us.i231.1.1.1, align 8, !tbaa !43
  %.phi.trans.insert395 = getelementptr inbounds nuw i8, ptr %i.yo, i64 80
  %.pre396 = load double, ptr %.phi.trans.insert395, align 8, !tbaa !43
  %i.zr = getelementptr inbounds nuw i8, ptr %i.yp, i64 16
  %i.zs = getelementptr inbounds nuw i8, ptr %.5134, i64 16
  %i.zt = fmul double %.pre396, %i.zm             ; 3 uses
  store double %i.zt, ptr %i.zr, align 8, !tbaa !43
  store double %i.zt, ptr %i.zs, align 8, !tbaa !43
  %i.zu = fneg double %i.zt
  %i.zv = getelementptr inbounds nuw i8, ptr %i.yo, i64 88
  %i.zw = load double, ptr %i.zv, align 8, !tbaa !43
  %gep.us.i231.1.2 = getelementptr i8, ptr %.5134, i64 24 ; 2 uses
  %i.zx = load double, ptr %gep.us.i231.1.2, align 8, !tbaa !43
  %i.zy = tail call double @llvm.fmuladd.f64(double %i.zu, double %i.zw, double %i.zx) ; 2 uses
  store double %i.zy, ptr %gep.us.i231.1.2, align 8, !tbaa !43
  %.phi.trans.insert398 = getelementptr inbounds nuw i8, ptr %i.yo, i64 120
  %.pre399 = load double, ptr %.phi.trans.insert398, align 8, !tbaa !43
  %i.zz = getelementptr inbounds nuw i8, ptr %.5134, i64 24
  %.us-phi.i223.1.2 = getelementptr inbounds nuw i8, ptr %i.yp, i64 24
  %i.aaa = fmul double %.pre399, %i.zy            ; 2 uses
  store double %i.aaa, ptr %.us-phi.i223.1.2, align 8, !tbaa !43
  store double %i.aaa, ptr %i.zz, align 8, !tbaa !43
  %.idx414 = shl nsw i64 %2, 5
  %i.aab = getelementptr inbounds i8, ptr %.5140, i64 %.idx414
  %i.aac = getelementptr inbounds nuw i8, ptr %.5134, i64 32
  %i.aad = add nsw i64 %.5, 4
  br label %.preheader.2

.preheader.2:                                     ; preds = %.split47.us.i222.1.3, %.preheader.1
  %.5140.1 = phi ptr [ %i.aab, %.split47.us.i222.1.3 ], [ %.5140, %.preheader.1 ] ; 4 uses
  %.5134.1 = phi ptr [ %i.aac, %.split47.us.i222.1.3 ], [ %.5134, %.preheader.1 ] ; 7 uses
  %.5.1 = phi i64 [ %i.aad, %.split47.us.i222.1.3 ], [ %.5, %.preheader.1 ] ; 6 uses
  %i.aae = and i64 %0, 2
  %.not149.2 = icmp eq i64 %i.aae, 0
  br i1 %.not149.2, label %.preheader.3, label %bb.w

bb.w:                                             ; preds = %.preheader.2
  %i.aaf = icmp sgt i64 %.5.1, 0
  br i1 %i.aaf, label %bb.x, label %.split47.us.i222.2.1

bb.x:                                             ; preds = %bb.w
  %i.aag = tail call i32 @dgemm_kernel(i64 noundef 2, i64 noundef 1, i64 noundef %.5.1, double noundef -1.000000e+00, ptr noundef %.5140.1, ptr noundef %.0141.lcssa, ptr noundef %.5134.1, i64 noundef %7) #3 ; 0 uses
  br label %.split47.us.i222.2.1

.split47.us.i222.2.1:                             ; preds = %bb.x, %bb.w
  %11 = getelementptr inbounds [8 x i8], ptr %.0141.lcssa, i64 %.5.1 ; 2 uses
  %.idx415 = shl nsw i64 %.5.1, 4
  %i.aah = getelementptr inbounds i8, ptr %.5140.1, i64 %.idx415 ; 3 uses
  %i.aai = load double, ptr %i.aah, align 8, !tbaa !43
  %i.aaj = load double, ptr %.5134.1, align 8, !tbaa !43
  %i.aak = fmul double %i.aai, %i.aaj             ; 3 uses
  store double %i.aak, ptr %11, align 8, !tbaa !43
  store double %i.aak, ptr %.5134.1, align 8, !tbaa !43
  %i.aal = fneg double %i.aak
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aah, i64 8
  %i.aan = load double, ptr %i.aam, align 8, !tbaa !43
  %gep.us.i231.2 = getelementptr i8, ptr %.5134.1, i64 8 ; 2 uses
  %i.aao = load double, ptr %gep.us.i231.2, align 8, !tbaa !43
  %i.aap = tail call double @llvm.fmuladd.f64(double %i.aal, double %i.aan, double %i.aao) ; 2 uses
  store double %i.aap, ptr %gep.us.i231.2, align 8, !tbaa !43
  %.phi.trans.insert401 = getelementptr inbounds nuw i8, ptr %i.aah, i64 24
  %.pre402 = load double, ptr %.phi.trans.insert401, align 8, !tbaa !43
  %i.aaq = getelementptr inbounds nuw i8, ptr %.5134.1, i64 8
  %.us-phi.i223.2 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aar = fmul double %.pre402, %i.aap           ; 2 uses
  store double %i.aar, ptr %.us-phi.i223.2, align 8, !tbaa !43
  store double %i.aar, ptr %i.aaq, align 8, !tbaa !43
  %.idx416 = shl nsw i64 %2, 4
  %i.aas = getelementptr inbounds i8, ptr %.5140.1, i64 %.idx416
  %i.aat = getelementptr inbounds nuw i8, ptr %.5134.1, i64 16
  %i.aau = add nsw i64 %.5.1, 2
  br label %.preheader.3

.preheader.3:                                     ; preds = %.split47.us.i222.2.1, %.preheader.2
  %.5140.2 = phi ptr [ %i.aas, %.split47.us.i222.2.1 ], [ %.5140.1, %.preheader.2 ] ; 2 uses
  %.5134.2 = phi ptr [ %i.aat, %.split47.us.i222.2.1 ], [ %.5134.1, %.preheader.2 ] ; 3 uses
  %.5.2 = phi i64 [ %i.aau, %.split47.us.i222.2.1 ], [ %.5.1, %.preheader.2 ] ; 4 uses
  %i.aav = and i64 %0, 1
  %.not149.3 = icmp eq i64 %i.aav, 0
  br i1 %.not149.3, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %.preheader.3
  %i.aaw = icmp sgt i64 %.5.2, 0
  br i1 %i.aaw, label %bb.z, label %.split47.us.i222.3

bb.z:                                             ; preds = %bb.y
  %i.aax = tail call i32 @dgemm_kernel(i64 noundef 1, i64 noundef 1, i64 noundef %.5.2, double noundef -1.000000e+00, ptr noundef %.5140.2, ptr noundef %.0141.lcssa, ptr noundef %.5134.2, i64 noundef %7) #3 ; 0 uses
  br label %.split47.us.i222.3

.split47.us.i222.3:                               ; preds = %bb.z, %bb.y
  %i.aay = getelementptr inbounds [8 x i8], ptr %.5140.2, i64 %.5.2
  %i.aaz = load double, ptr %i.aay, align 8, !tbaa !43
  %i.aba = getelementptr inbounds [8 x i8], ptr %.0141.lcssa, i64 %.5.2
  %i.abb = load double, ptr %.5134.2, align 8, !tbaa !43
  %i.abc = fmul double %i.aaz, %i.abb             ; 2 uses
  store double %i.abc, ptr %i.aba, align 8, !tbaa !43
  store double %i.abc, ptr %.5134.2, align 8, !tbaa !43
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
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !"LVerDomain"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !46, !47, !48}
!12 = distinct !{!12, !49}
!13 = distinct !{!13, !46, !47}
!14 = distinct !{!14, !"LVerDomain"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !46, !47, !48}
!18 = distinct !{!18, !49}
!19 = distinct !{!19, !46, !47}
!20 = distinct !{!20, !46}
!21 = distinct !{!21, !46}
!22 = distinct !{!22, !"LVerDomain"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !46, !47, !48}
!26 = distinct !{!26, !49}
!27 = distinct !{!27, !46, !47}
!28 = distinct !{!28, !"LVerDomain"}
!29 = distinct !{!29, !28}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !46, !47, !48}
!32 = distinct !{!32, !49}
!33 = distinct !{!33, !46, !47}
!34 = distinct !{!34, !46}
!35 = distinct !{!35, !"LVerDomain"}
!36 = distinct !{!36, !35}
!37 = distinct !{!37, !35}
!38 = distinct !{!38, !46, !47, !48}
!39 = distinct !{!39, !49}
!40 = distinct !{!40, !46, !47}
!41 = distinct !{!41, !46}
!42 = !{!"double", !4, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!9}
!45 = !{!10}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.isvectorized", i32 1}
!48 = !{!"llvm.loop.unroll.runtime.disable"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!15}
!51 = !{!16}
!52 = !{!23}
!53 = !{!24}
!54 = !{!29}
!55 = !{!30}
!56 = !{!36}
!57 = !{!37}
end_hunk_0

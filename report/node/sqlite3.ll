Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 422
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@rtreeInsertCell:bb.a

.preheader57.i144.i.preheader:                    ; preds = %bb.v
  br i1 %min.iters.check283, label %.preheader57.i144.i.preheader359, label %vector.body286

vector.body286:                                   ; preds = %.preheader57.i144.i.preheader, %vector.body286
  %index287 = phi i64 [ %index.next295, %vector.body286 ], [ 0, %.preheader57.i144.i.preheader ] ; 2 uses
  %i.ou = shl nuw i64 %index287, 1                ; 2 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.ou ; 2 uses
  %wide.vec288 = load <4 x i32>, ptr %i.ov, align 8, !tbaa !229 ; 2 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %i.ou
  %wide.vec291 = load <4 x i32>, ptr %i.ow, align 4, !tbaa !229 ; 2 uses
  %i.ox = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.vec288, <4 x i32> %wide.vec291)
  %i.oy = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.vec288, <4 x i32> %wide.vec291)
  %interleaved.vec294 = shufflevector <4 x i32> %i.ox, <4 x i32> %i.oy, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %interleaved.vec294, ptr %i.ov, align 8, !tbaa !229
  %index.next295 = add nuw i64 %index287, 2       ; 2 uses
  %i.oz = icmp eq i64 %index.next295, %n.vec285
  br i1 %i.oz, label %middle.block296, label %vector.body286, !llvm.loop !8056

middle.block296:                                  ; preds = %vector.body286
  br i1 %cmp.n297, label %cellUnion.exit.i, label %.preheader57.i144.i.preheader359

.preheader57.i144.i.preheader359:                 ; preds = %.preheader57.i144.i.preheader, %middle.block296
  %indvars.iv.i145.i.ph = phi i64 [ 0, %.preheader57.i144.i.preheader ], [ %i.lv, %middle.block296 ]
  br label %.preheader57.i144.i

.preheader.i148.i.preheader:                      ; preds = %bb.v
  br i1 %min.iters.check266, label %.preheader.i148.i.preheader357, label %vector.body269

vector.body269:                                   ; preds = %.preheader.i148.i.preheader, %vector.body269
  %index270 = phi i64 [ %index.next278, %vector.body269 ], [ 0, %.preheader.i148.i.preheader ] ; 2 uses
  %i.pa = shl nuw i64 %index270, 1                ; 2 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.pa ; 2 uses
  %wide.vec271 = load <8 x float>, ptr %i.pb, align 8, !tbaa !229 ; 2 uses
  %strided.vec272 = shufflevector <8 x float> %wide.vec271, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec273 = shufflevector <8 x float> %wide.vec271, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %i.pa
  %wide.vec274 = load <8 x float>, ptr %i.pc, align 4, !tbaa !229 ; 2 uses
  %strided.vec275 = shufflevector <8 x float> %wide.vec274, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec276 = shufflevector <8 x float> %wide.vec274, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.pd = fcmp olt <4 x float> %strided.vec272, %strided.vec275
  %i.pe = select <4 x i1> %i.pd, <4 x float> %strided.vec272, <4 x float> %strided.vec275
  %i.pf = fcmp ogt <4 x float> %strided.vec273, %strided.vec276
  %i.pg = select <4 x i1> %i.pf, <4 x float> %strided.vec273, <4 x float> %strided.vec276
  %interleaved.vec277 = shufflevector <4 x float> %i.pe, <4 x float> %i.pg, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec277, ptr %i.pb, align 8, !tbaa !229
  %index.next278 = add nuw i64 %index270, 4       ; 2 uses
  %i.ph = icmp eq i64 %index.next278, %n.vec268
  br i1 %i.ph, label %middle.block279, label %vector.body269, !llvm.loop !8057

middle.block279:                                  ; preds = %vector.body269
  br i1 %cmp.n280, label %cellUnion.exit.i, label %.preheader.i148.i.preheader357

.preheader.i148.i.preheader357:                   ; preds = %.preheader.i148.i.preheader, %middle.block279
  %indvars.iv61.i149.i.ph = phi i64 [ 0, %.preheader.i148.i.preheader ], [ %i.lw, %middle.block279 ]
  br label %.preheader.i148.i

.preheader.i148.i:                                ; preds = %.preheader.i148.i.preheader357, %.preheader.i148.i
  %indvars.iv61.i149.i = phi i64 [ %indvars.iv.next62.i151.i, %.preheader.i148.i ], [ %indvars.iv61.i149.i.ph, %.preheader.i148.i.preheader357 ] ; 3 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv61.i149.i ; 2 uses
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %indvars.iv61.i149.i
  %i.pk = load <2 x float>, ptr %i.pi, align 8, !tbaa !229 ; 3 uses
  %i.pl = load <2 x float>, ptr %i.pj, align 4, !tbaa !229 ; 3 uses
  %i.pm = shufflevector <2 x float> %i.pk, <2 x float> %i.pl, <2 x i32> <i32 0, i32 3>
  %i.pn = shufflevector <2 x float> %i.pl, <2 x float> %i.pk, <2 x i32> <i32 0, i32 3>
  %i.po = fcmp olt <2 x float> %i.pm, %i.pn
  %i.pp = select <2 x i1> %i.po, <2 x float> %i.pk, <2 x float> %i.pl
  store <2 x float> %i.pp, ptr %i.pi, align 8, !tbaa !229
  %indvars.iv.next62.i151.i = add nuw nsw i64 %indvars.iv61.i149.i, 2 ; 2 uses
  %i.pq = icmp samesign ult i64 %indvars.iv.next62.i151.i, %i.lo
  br i1 %i.pq, label %.preheader.i148.i, label %cellUnion.exit.i, !llvm.loop !8058

.preheader57.i144.i:                              ; preds = %.preheader57.i144.i.preheader359, %.preheader57.i144.i
  %indvars.iv.i145.i = phi i64 [ %indvars.iv.next.i147.i, %.preheader57.i144.i ], [ %indvars.iv.i145.i.ph, %.preheader57.i144.i.preheader359 ] ; 4 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv.i145.i ; 2 uses
  %i.ps = load i32, ptr %i.pr, align 8, !tbaa !229
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %indvars.iv.i145.i
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !229
  %.56.i146.i = tail call i32 @llvm.smin.i32(i32 %i.ps, i32 %i.pu)
  store i32 %.56.i146.i, ptr %i.pr, align 8, !tbaa !229
  %i.pv = or disjoint i64 %indvars.iv.i145.i, 1   ; 2 uses
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.pv ; 2 uses
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !229
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %i.pv
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !229
  %i.qa = tail call i32 @llvm.smax.i32(i32 %i.px, i32 %i.pz)
  store i32 %i.qa, ptr %i.pw, align 4, !tbaa !229
  %indvars.iv.next.i147.i = add nuw nsw i64 %indvars.iv.i145.i, 2 ; 2 uses
  %i.qb = icmp samesign ult i64 %indvars.iv.next.i147.i, %i.lo
  br i1 %i.qb, label %.preheader57.i144.i, label %cellUnion.exit.i, !llvm.loop !8059

cellUnion.exit.i:                                 ; preds = %.preheader57.i144.i, %.preheader.i148.i, %.preheader57.i.i, %.preheader.i.i, %middle.block296, %middle.block279, %middle.block262, %middle.block245
  %i.qc = phi i8 [ %i.lm, %middle.block262 ], [ 0, %middle.block245 ], [ 0, %middle.block279 ], [ %i.nd, %middle.block296 ], [ 0, %.preheader.i148.i ], [ 0, %.preheader.i.i ], [ %i.lm, %.preheader57.i.i ], [ %i.nd, %.preheader57.i144.i ] ; 2 uses
  %indvars.iv.next253.i = add nuw nsw i64 %indvars.iv252.i, 1 ; 2 uses
  %exitcond256.not.i = icmp eq i64 %indvars.iv.next253.i, %i.gk
  br i1 %exitcond256.not.i, label %._crit_edge.i, label %.lr.ph212.i, !llvm.loop !8060

._crit_edge.i:                                    ; preds = %cellUnion.exit.i, %bb.t
  %i.qd = phi i8 [ %i.nc, %bb.t ], [ %i.qc, %cellUnion.exit.i ] ; 2 uses
  br i1 %i.ln, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %._crit_edge.i, %.split.us.i.i
  %indvars.iv21.i.i = phi i64 [ %indvars.iv.next22.i.i, %.split.us.i.i ], [ %i.lo, %._crit_edge.i ] ; 3 uses
  %.014.us.i.i = phi double [ %i.qi, %.split.us.i.i ], [ 0.000000e+00, %._crit_edge.i ]
  %indvars.iv.next22.i.i = add nsw i64 %indvars.iv21.i.i, -2
  %i.qe = getelementptr [4 x i8], ptr %4, i64 %indvars.iv21.i.i
  %i.qf = load <2 x float>, ptr %i.qe, align 4, !tbaa !229
  %i.qg = fpext <2 x float> %i.qf to <2 x double> ; 2 uses
  %shift = shufflevector <2 x double> %i.qg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %shift, %i.qg
  %i.qh = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.qi = fadd double %.014.us.i.i, %i.qh         ; 2 uses
  %i.qj = icmp samesign ugt i64 %indvars.iv21.i.i, 3
  br i1 %i.qj, label %.split.us.i.i, label %.split.us.i160.i, !llvm.loop !8061

.split.i.i:                                       ; preds = %._crit_edge.i, %.split.i.i
  %indvars.iv.i153.i = phi i64 [ %indvars.iv.next.i154.i, %.split.i.i ], [ %i.lo, %._crit_edge.i ] ; 3 uses
  %.014.i.i = phi double [ %i.qo, %.split.i.i ], [ 0.000000e+00, %._crit_edge.i ]
  %indvars.iv.next.i154.i = add nsw i64 %indvars.iv.i153.i, -2
  %i.qk = getelementptr [4 x i8], ptr %4, i64 %indvars.iv.i153.i
  %i.ql = load <2 x i32>, ptr %i.qk, align 4, !tbaa !229
  %i.qm = sitofp <2 x i32> %i.ql to <2 x double>  ; 2 uses
  %shift334 = shufflevector <2 x double> %i.qm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop335 = fsub <2 x double> %shift334, %i.qm
  %i.qn = extractelement <2 x double> %foldExtExtBinop335, i64 0
  %i.qo = fadd double %.014.i.i, %i.qn            ; 2 uses
  %i.qp = icmp samesign ugt i64 %indvars.iv.i153.i, 3
  br i1 %i.qp, label %.split.i.i, label %.split.i155.i, !llvm.loop !8061

.split.us.i160.i:                                 ; preds = %.split.us.i.i, %.split.us.i160.i
  %indvars.iv21.i161.i = phi i64 [ %indvars.iv.next22.i163.i, %.split.us.i160.i ], [ %i.lo, %.split.us.i.i ] ; 3 uses
  %.014.us.i162.i = phi double [ %i.qu, %.split.us.i160.i ], [ 0.000000e+00, %.split.us.i.i ]
  %indvars.iv.next22.i163.i = add nsw i64 %indvars.iv21.i161.i, -2
  %i.qq = getelementptr [4 x i8], ptr %5, i64 %indvars.iv21.i161.i
  %i.qr = load <2 x float>, ptr %i.qq, align 4, !tbaa !229
  %i.qs = fpext <2 x float> %i.qr to <2 x double> ; 2 uses
  %shift337 = shufflevector <2 x double> %i.qs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop338 = fsub <2 x double> %shift337, %i.qs
  %i.qt = extractelement <2 x double> %foldExtExtBinop338, i64 0
  %i.qu = fadd double %.014.us.i162.i, %i.qt      ; 2 uses
  %i.qv = icmp samesign ugt i64 %indvars.iv21.i161.i, 3
  br i1 %i.qv, label %.split.us.i160.i, label %cellMargin.exit164.i, !llvm.loop !8061

.split.i155.i:                                    ; preds = %.split.i.i, %.split.i155.i
  %indvars.iv.i156.i = phi i64 [ %indvars.iv.next.i158.i, %.split.i155.i ], [ %i.lo, %.split.i.i ] ; 3 uses
  %.014.i157.i = phi double [ %i.ra, %.split.i155.i ], [ 0.000000e+00, %.split.i.i ]
  %indvars.iv.next.i158.i = add nsw i64 %indvars.iv.i156.i, -2
  %i.qw = getelementptr [4 x i8], ptr %5, i64 %indvars.iv.i156.i
  %i.qx = load <2 x i32>, ptr %i.qw, align 4, !tbaa !229
  %i.qy = sitofp <2 x i32> %i.qx to <2 x double>  ; 2 uses
  %shift340 = shufflevector <2 x double> %i.qy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop341 = fsub <2 x double> %shift340, %i.qy
  %i.qz = extractelement <2 x double> %foldExtExtBinop341, i64 0
  %i.ra = fadd double %.014.i157.i, %i.qz         ; 2 uses
  %i.rb = icmp samesign ugt i64 %indvars.iv.i156.i, 3
  br i1 %i.rb, label %.split.i155.i, label %cellMargin.exit164.thread.i, !llvm.loop !8061

cellMargin.exit164.i:                             ; preds = %.split.us.i160.i
  %i.rc = fadd double %.0128214.i, %i.qi
  %i.rd = fadd double %i.rc, %i.qu                ; 3 uses
  br i1 %.not.i165.i, label %cellOverlap.exit.i.thread, label %.preheader.us.us.i.i

cellMargin.exit164.thread.i:                      ; preds = %.split.i155.i
  %i.re = fadd double %.0128214.i, %i.qo
  %i.rf = fadd double %i.re, %i.ra                ; 3 uses
  br i1 %.not.i165.i, label %cellOverlap.exit.thread.i, label %.thread68.us.i.i

.preheader.us.us.i.i:                             ; preds = %cellMargin.exit164.i, %bb.w
  %indvars.iv94.i.i = phi i64 [ %indvars.iv.next95.i.i, %bb.w ], [ 0, %cellMargin.exit164.i ] ; 3 uses
  %.06277.us.us.us.i.i = phi double [ %i.rt, %bb.w ], [ 1.000000e+00, %cellMargin.exit164.i ]
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv94.i.i
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv94.i.i
  %i.ri = load <2 x float>, ptr %i.rg, align 8, !tbaa !229 ; 3 uses
  %i.rj = load <2 x float>, ptr %i.rh, align 8, !tbaa !229 ; 3 uses
  %i.rk = shufflevector <2 x float> %i.rj, <2 x float> %i.ri, <2 x i32> <i32 0, i32 3>
  %i.rl = shufflevector <2 x float> %i.ri, <2 x float> %i.rj, <2 x i32> <i32 0, i32 3>
  %i.rm = fcmp olt <2 x float> %i.rk, %i.rl
  %i.rn = select <2 x i1> %i.rm, <2 x float> %i.ri, <2 x float> %i.rj ; 3 uses
  %i.ro = extractelement <2 x float> %i.rn, i64 0
  %i.rp = extractelement <2 x float> %i.rn, i64 1
  %i.rq = fcmp olt float %i.rp, %i.ro
  br i1 %i.rq, label %cellOverlap.exit.i, label %bb.w

bb.w:                                             ; preds = %.preheader.us.us.i.i
  %i.rr = fpext <2 x float> %i.rn to <2 x double> ; 2 uses
  %shift343 = shufflevector <2 x double> %i.rr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop344 = fsub <2 x double> %shift343, %i.rr
  %i.rs = extractelement <2 x double> %foldExtExtBinop344, i64 0
  %i.rt = fmul double %.06277.us.us.us.i.i, %i.rs ; 2 uses
  %indvars.iv.next95.i.i = add nuw nsw i64 %indvars.iv94.i.i, 2 ; 2 uses
  %i.ru = icmp samesign ult i64 %indvars.iv.next95.i.i, %i.lo
  br i1 %i.ru, label %.preheader.us.us.i.i, label %cellOverlap.exit.i, !llvm.loop !8062

.thread68.us.i.i:                                 ; preds = %cellMargin.exit164.thread.i, %bb.x
  %indvars.iv.i167.i = phi i64 [ %indvars.iv.next.i168.i, %bb.x ], [ 0, %cellMargin.exit164.thread.i ] ; 5 uses
  %.06277.us82.i.i = phi double [ %i.sh, %bb.x ], [ 1.000000e+00, %cellMargin.exit164.thread.i ]
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv.i167.i
  %i.rw = load i32, ptr %i.rv, align 8, !tbaa !229
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv.i167.i
  %i.ry = load i32, ptr %i.rx, align 8, !tbaa !229
  %i.rz = tail call i32 @llvm.smax.i32(i32 %i.rw, i32 %i.ry) ; 2 uses
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i167.i
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 12
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !229
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i167.i
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 12
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !229
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.sc, i32 %i.sf) ; 2 uses
  %8 = icmp slt i32 %spec.select.i.i, %i.rz
  br i1 %8, label %cellOverlap.exit.i, label %bb.x

bb.x:                                             ; preds = %.thread68.us.i.i
  %9 = sitofp i32 %i.rz to double
  %10 = sitofp i32 %spec.select.i.i to double
  %i.sg = fsub nnan double %10, %9
  %i.sh = fmul double %.06277.us82.i.i, %i.sg     ; 2 uses
  %indvars.iv.next.i168.i = add nuw nsw i64 %indvars.iv.i167.i, 2 ; 2 uses
  %i.si = icmp samesign ult i64 %indvars.iv.next.i168.i, %i.lo
  br i1 %i.si, label %.thread68.us.i.i, label %cellOverlap.exit.i, !llvm.loop !8062

cellOverlap.exit.i:                               ; preds = %.thread68.us.i.i, %bb.x, %.preheader.us.us.i.i, %bb.w
  %i.sj = phi double [ %i.rd, %.preheader.us.us.i.i ], [ %i.rd, %bb.w ], [ %i.rf, %bb.x ], [ %i.rf, %.thread68.us.i.i ] ; 2 uses
  %.us-phi.i169.i.in = phi double [ 0.000000e+00, %.preheader.us.us.i.i ], [ %i.rt, %bb.w ], [ 0.000000e+00, %.thread68.us.i.i ], [ %i.sh, %bb.x ]
  %.us-phi.i169.i = fadd double %.us-phi.i169.i.in, 0.000000e+00 ; 2 uses
  br i1 %i.ln, label %cellOverlap.exit.i.thread, label %cellOverlap.exit.thread.i

cellOverlap.exit.i.thread:                        ; preds = %cellMargin.exit164.i, %cellOverlap.exit.i
  %.us-phi.i169.i76 = phi double [ %.us-phi.i169.i, %cellOverlap.exit.i ], [ 1.000000e+00, %cellMargin.exit164.i ]
  %i.sk = phi double [ %i.sj, %cellOverlap.exit.i ], [ %i.rd, %cellMargin.exit164.i ]
  switch i8 %i.mp, label %bb.ag [
    i8 5, label %bb.y
    i8 4, label %bb.z
    i8 3, label %bb.aa
    i8 2, label %bb.ab
  ]

bb.y:                                             ; preds = %cellOverlap.exit.i.thread
  %i.sl = load float, ptr %i.kr, align 4, !tbaa !229
  %i.sm = load float, ptr %i.ks, align 8, !tbaa !229
  %i.sn = fsub float %i.sl, %i.sm
  %i.so = fpext float %i.sn to double
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %cellOverlap.exit.i.thread
  %.0.i170.i = phi double [ %i.so, %bb.y ], [ 1.000000e+00, %cellOverlap.exit.i.thread ]
  %i.sp = load float, ptr %i.kt, align 4, !tbaa !229
  %i.sq = load float, ptr %i.ku, align 8, !tbaa !229
  %i.sr = fsub float %i.sp, %i.sq
  %i.ss = fpext float %i.sr to double
  %i.st = fmul double %.0.i170.i, %i.ss
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %cellOverlap.exit.i.thread
  %.1.i.i = phi double [ %i.st, %bb.z ], [ 1.000000e+00, %cellOverlap.exit.i.thread ]
  %i.su = load float, ptr %i.kv, align 4, !tbaa !229
  %i.sv = load float, ptr %i.kw, align 8, !tbaa !229
  %i.sw = fsub float %i.su, %i.sv
  %i.sx = fpext float %i.sw to double
  %i.sy = fmul double %.1.i.i, %i.sx
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %cellOverlap.exit.i.thread
  %.2.i.i = phi double [ %i.sy, %bb.aa ], [ 1.000000e+00, %cellOverlap.exit.i.thread ]
  %i.sz = load float, ptr %i.kx, align 4, !tbaa !229
  %i.ta = load float, ptr %i.ky, align 8, !tbaa !229
  %i.tb = fsub float %i.sz, %i.ta
  %i.tc = fpext float %i.tb to double
  %i.td = fmul double %.2.i.i, %i.tc
  br label %bb.ag

cellOverlap.exit.thread.i:                        ; preds = %cellOverlap.exit.i, %cellMargin.exit164.thread.i
  %.us-phi.i169292.i = phi double [ %.us-phi.i169.i, %cellOverlap.exit.i ], [ 1.000000e+00, %cellMargin.exit164.thread.i ]
  %i.te = phi double [ %i.sj, %cellOverlap.exit.i ], [ %i.rf, %cellMargin.exit164.thread.i ]
  switch i8 %i.mp, label %bb.am [
    i8 5, label %bb.ac
    i8 4, label %bb.ad
    i8 3, label %bb.ae
    i8 2, label %bb.af
  ]

bb.ac:                                            ; preds = %cellOverlap.exit.thread.i
  %i.tf = load i32, ptr %i.kr, align 4, !tbaa !229
  %i.tg = sext i32 %i.tf to i64
  %i.th = load i32, ptr %i.ks, align 8, !tbaa !229
  %i.ti = sext i32 %i.th to i64
  %i.tj = sub nsw i64 %i.tg, %i.ti
  %i.tk = sitofp i64 %i.tj to double
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %cellOverlap.exit.thread.i
  %.4.i.i = phi double [ %i.tk, %bb.ac ], [ 1.000000e+00, %cellOverlap.exit.thread.i ]
  %i.tl = load i32, ptr %i.kt, align 4, !tbaa !229
  %i.tm = sext i32 %i.tl to i64
  %i.tn = load i32, ptr %i.ku, align 8, !tbaa !229
  %i.to = sext i32 %i.tn to i64
  %i.tp = sub nsw i64 %i.tm, %i.to
  %i.tq = sitofp i64 %i.tp to double
  %i.tr = fmul nnan double %.4.i.i, %i.tq
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %cellOverlap.exit.thread.i
  %.5.i.i = phi double [ %i.tr, %bb.ad ], [ 1.000000e+00, %cellOverlap.exit.thread.i ]
  %i.ts = load i32, ptr %i.kv, align 4, !tbaa !229
  %i.tt = sext i32 %i.ts to i64
  %i.tu = load i32, ptr %i.kw, align 8, !tbaa !229
  %i.tv = sext i32 %i.tu to i64
  %i.tw = sub nsw i64 %i.tt, %i.tv
  %i.tx = sitofp i64 %i.tw to double
  %i.ty = fmul double %.5.i.i, %i.tx
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %cellOverlap.exit.thread.i
  %.6.i.i = phi double [ %i.ty, %bb.ae ], [ 1.000000e+00, %cellOverlap.exit.thread.i ]
  %i.tz = load i32, ptr %i.kx, align 4, !tbaa !229
  %i.ua = sext i32 %i.tz to i64
  %i.ub = load i32, ptr %i.ky, align 8, !tbaa !229
  %i.uc = sext i32 %i.ub to i64
  %i.ud = sub nsw i64 %i.ua, %i.uc
  %i.ue = sitofp i64 %i.ud to double
  %i.uf = fmul double %.6.i.i, %i.ue
  br label %bb.am

bb.ag:                                            ; preds = %bb.ab, %cellOverlap.exit.i.thread
  %.3.i.i = phi double [ 1.000000e+00, %cellOverlap.exit.i.thread ], [ %i.td, %bb.ab ]
  %i.ug = load float, ptr %i.kz, align 4, !tbaa !229
  %i.uh = load float, ptr %i.kq, align 8, !tbaa !229
  %i.ui = fsub float %i.ug, %i.uh
  %i.uj = fpext float %i.ui to double
  %i.uk = fmul double %.3.i.i, %i.uj
  switch i8 %i.mp, label %bb.al [
    i8 5, label %bb.ah
    i8 4, label %bb.ai
    i8 3, label %bb.aj
    i8 2, label %bb.ak
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.ul = load float, ptr %i.la, align 4, !tbaa !229
  %i.um = load float, ptr %i.lb, align 8, !tbaa !229
  %i.un = fsub float %i.ul, %i.um
  %i.uo = fpext float %i.un to double
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0.i179.i = phi double [ %i.uo, %bb.ah ], [ 1.000000e+00, %bb.ag ]
  %i.up = load float, ptr %i.lc, align 4, !tbaa !229
  %i.uq = load float, ptr %i.ld, align 8, !tbaa !229
  %i.ur = fsub float %i.up, %i.uq
  %i.us = fpext float %i.ur to double
  %i.ut = fmul double %.0.i179.i, %i.us
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  %.1.i178.i = phi double [ %i.ut, %bb.ai ], [ 1.000000e+00, %bb.ag ]
  %i.uu = load float, ptr %i.le, align 4, !tbaa !229
  %i.uv = load float, ptr %i.lf, align 8, !tbaa !229
  %i.uw = fsub float %i.uu, %i.uv
  %i.ux = fpext float %i.uw to double
  %i.uy = fmul double %.1.i178.i, %i.ux
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag
  %.2.i176.i = phi double [ %i.uy, %bb.aj ], [ 1.000000e+00, %bb.ag ]
  %i.uz = load float, ptr %i.lg, align 4, !tbaa !229
  %i.va = load float, ptr %i.lh, align 8, !tbaa !229
  %i.vb = fsub float %i.uz, %i.va
  %i.vc = fpext float %i.vb to double
  %i.vd = fmul double %.2.i176.i, %i.vc
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ag
  %.3.i177.i = phi double [ 1.000000e+00, %bb.ag ], [ %i.vd, %bb.ak ]
  %i.ve = load float, ptr %i.li, align 4, !tbaa !229
  %i.vf = load float, ptr %i.kp, align 8, !tbaa !229
  %i.vg = fsub float %i.ve, %i.vf
  %i.vh = fpext float %i.vg to double
  %i.vi = fmul double %.3.i177.i, %i.vh
  br label %cellArea.exit180.i

bb.am:                                            ; preds = %bb.af, %cellOverlap.exit.thread.i
  %.7.i.i = phi double [ 1.000000e+00, %cellOverlap.exit.thread.i ], [ %i.uf, %bb.af ]
  %i.vj = load i32, ptr %i.kz, align 4, !tbaa !229
  %i.vk = sext i32 %i.vj to i64
  %i.vl = load i32, ptr %i.kq, align 8, !tbaa !229
  %i.vm = sext i32 %i.vl to i64
  %i.vn = sub nsw i64 %i.vk, %i.vm
  %i.vo = sitofp i64 %i.vn to double
  %i.vp = fmul double %.7.i.i, %i.vo
  switch i8 %i.mp, label %bb.ar [
    i8 5, label %bb.an
    i8 4, label %bb.ao
    i8 3, label %bb.ap
    i8 2, label %bb.aq
  ]

bb.an:                                            ; preds = %bb.am
  %i.vq = load i32, ptr %i.la, align 4, !tbaa !229
  %i.vr = sext i32 %i.vq to i64
  %i.vs = load i32, ptr %i.lb, align 8, !tbaa !229
  %i.vt = sext i32 %i.vs to i64
  %i.vu = sub nsw i64 %i.vr, %i.vt
  %i.vv = sitofp i64 %i.vu to double
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.4.i175.i = phi double [ %i.vv, %bb.an ], [ 1.000000e+00, %bb.am ]
  %i.vw = load i32, ptr %i.lc, align 4, !tbaa !229
  %i.vx = sext i32 %i.vw to i64
  %i.vy = load i32, ptr %i.ld, align 8, !tbaa !229
  %i.vz = sext i32 %i.vy to i64
  %i.wa = sub nsw i64 %i.vx, %i.vz
  %i.wb = sitofp i64 %i.wa to double
  %i.wc = fmul nnan double %.4.i175.i, %i.wb
  br label %bb.ap

end_hunk_0

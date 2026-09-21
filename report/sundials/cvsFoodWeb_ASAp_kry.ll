Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvsFoodWeb_ASAp_kry?download=true
inline.NumInlined: 58
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 46
begin_hunk_0_@f:bb.a
  %i.gf = fsub <2 x double> %wide.load, %wide.load146
  %i.gg = add nsw i32 %i.fz, %i.bd
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gh
  %wide.load147 = load <2 x double>, ptr %i.gi, align 8, !tbaa !22, !alias.scope !71
  %i.gj = fsub <2 x double> %wide.load147, %wide.load
  %i.gk = add i32 %i.fz, %i.ex
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gl
  %wide.load148 = load <2 x double>, ptr %i.gm, align 8, !tbaa !22, !alias.scope !72
  %i.gn = fsub <2 x double> %wide.load, %wide.load148
  %i.go = add nsw i32 %i.fz, %i.ev
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gp
  %wide.load149 = load <2 x double>, ptr %i.gq, align 8, !tbaa !22, !alias.scope !73
  %i.gr = fsub <2 x double> %wide.load149, %wide.load
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.h, i64 %index
  %wide.load150 = load <2 x double>, ptr %i.gs, align 8, !tbaa !22, !alias.scope !74, !noalias !75
  %i.gt = fsub <2 x double> %i.gj, %i.gf
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.g, i64 %index
  %wide.load151 = load <2 x double>, ptr %i.gu, align 8, !tbaa !22, !alias.scope !74, !noalias !75
  %i.gv = fsub <2 x double> %i.gr, %i.gn
  %i.gw = fmul <2 x double> %wide.load151, %i.gv
  %i.gx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load150, <2 x double> %i.gt, <2 x double> %i.gw)
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ga
  %wide.load152 = load <2 x double>, ptr %i.gy, align 8, !tbaa !22, !alias.scope !76, !noalias !75
  %i.gz = fadd <2 x double> %wide.load152, %i.gx
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ga
  store <2 x double> %i.gz, ptr %i.ha, align 8, !tbaa !22, !alias.scope !75, !noalias !77
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hb = icmp eq i64 %index.next, %n.vec
  br i1 %i.hb, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %WebRates.exit, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck ], [ 1, %WebRates.exit ], [ %i.ar, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.hc = trunc nuw nsw i64 %indvars.iv to i32
  %i.hd = add i32 %i.ez, %i.hc                    ; 5 uses
  %i.he = sext i32 %i.hd to i64                   ; 3 uses
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.he
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !22 ; 4 uses
  %i.hh = add i32 %i.hd, %i.bf
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.hi
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !22
  %i.hl = fsub double %i.hg, %i.hk
  %i.hm = add nsw i32 %i.hd, %i.bd
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.hn
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !22
  %i.hq = fsub double %i.hp, %i.hg
  %i.hr = add i32 %i.hd, %i.ex
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.hs
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !22
  %i.hv = fsub double %i.hg, %i.hu
  %i.hw = add nsw i32 %i.hd, %i.ev
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.hx
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !22
  %i.ia = fsub double %i.hz, %i.hg
  %i.ib = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ib
  %i.id = load double, ptr %i.ic, align 8, !tbaa !22
  %i.ie = fsub double %i.hq, %i.hl
  %i.if = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ib
  %i.ig = load double, ptr %i.if, align 8, !tbaa !22
  %i.ih = fsub double %i.ia, %i.hv
  %i.ii = fmul double %i.ig, %i.ih
  %i.ij = tail call double @llvm.fmuladd.f64(double %i.id, double %i.ie, double %i.ii)
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.he
  %i.il = load double, ptr %i.ik, align 8, !tbaa !22
  %i.im = fadd double %i.il, %i.ij
  %i.in = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.he
  store double %i.im, ptr %i.in, align 8, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !64

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond95.not = icmp eq i64 %indvars.iv.next93, 20
  br i1 %exitcond95.not, label %.split86, label %bb.b

.split86:                                         ; preds = %._crit_edge
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next97, 20
  br i1 %exitcond99.not, label %.split90.us.split, label %.split

.split90.us.split:                                ; preds = %.split86, %bb.a
  ret i32 0
}

declare i32 @CVodeSStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare ptr @SUNLinSol_SPGMR(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetPreconditioner(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Precond(double %0, ptr noundef %1, ptr noundef %2, i32 %3, ptr nofree noundef writeonly captures(none) %4, double noundef %5, ptr nofree noundef readonly captures(none) %6) #0 {
bb.a:
  %i.a = ptrtoaddr ptr %6 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 39208
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 39224
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.f = tail call i32 @CVodeGetErrWeights(ptr noundef %i.e, ptr noundef %i.c) #10 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %check_retval.exit, label %bb.b

check_retval.exit:                                ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.28, i32 noundef %i.f) #11 ; 0 uses
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #10 ; 5 uses
  %i.k = tail call ptr @N_VGetArrayPointer(ptr noundef %i.c) #10 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 288 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 296 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.p = load i32, ptr %i.o, align 8, !tbaa !32   ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 800
  %i.r = load double, ptr %i.q, align 8, !tbaa !33 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.t = load i32, ptr %i.s, align 8, !tbaa !34   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 92
  %i.v = load i32, ptr %i.u, align 4, !tbaa !35   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.x = load i32, ptr %i.w, align 8, !tbaa !36   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 100
  %i.z = load i32, ptr %i.y, align 4, !tbaa !37   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 808 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 39216
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21
  %i.ad = tail call ptr @N_VGetArrayPointer(ptr noundef %i.ac) #10 ; 23 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64              ; 2 uses
  %i.af = tail call double @N_VWrmsNorm(ptr noundef %2, ptr noundef %i.c) #10
  %i.ag = tail call double @llvm.fabs.f64(double %5)
  %i.ah = fmul double %i.ag, 1.000000e+03
  %i.ai = fmul double %i.ah, f0x3CB0000000000000
  %i.aj = fmul double %i.ai, 2.400000e+03
  %i.ak = fmul double %i.aj, %i.af                ; 2 uses
  %i.al = fcmp oeq double %i.ak, 0.000000e+00
  %spec.store.select = select i1 %i.al, double 1.000000e+00, double %i.ak ; 2 uses
  %i.am = icmp sgt i32 %i.x, 0
  br i1 %i.am, label %.lr.ph128, label %.preheader

.lr.ph128:                                        ; preds = %bb.b
  %i.an = icmp slt i32 %i.v, 1
  %i.ao = icmp slt i32 %i.p, 1
  %i.ap = fneg double %5                          ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 784
  %i.ar = getelementptr i8, ptr %6, i64 304       ; 2 uses
  %i.as = getelementptr i8, ptr %6, i64 592       ; 5 uses
  %brmerge = select i1 %i.an, i1 true, i1 %i.ao
  br i1 %brmerge, label %.preheader, label %.lr.ph128.split.split

.lr.ph128.split.split:                            ; preds = %.lr.ph128
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.av = load i32, ptr %i.au, align 8, !tbaa !38
  %i.aw = load i32, ptr %i.at, align 8, !tbaa !24 ; 5 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  %i.ay = zext i32 %i.aw to i64                   ; 14 uses
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = zext nneg i32 %i.v to i64               ; 4 uses
  %wide.trip.count170 = zext nneg i32 %i.x to i64 ; 2 uses
  %wide.trip.count160 = zext nneg i32 %i.p to i64 ; 12 uses
  br i1 %i.ax, label %.lr.ph.us.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph128.split.split
  %min.iters.check = icmp ult i32 %i.p, 4
  %n.vec = and i64 %wide.trip.count160, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count160
  %xtraiter = and i64 %wide.trip.count160, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bb = add nsw i64 %wide.trip.count160, -1
  br label %.lr.ph

.lr.ph.us.preheader:                              ; preds = %.lr.ph128.split.split
  %i.bc = shl nuw nsw i64 %i.ay, 3                ; 4 uses
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.bc ; 4 uses
  %scevgep216 = getelementptr i8, ptr %i.j, i64 %i.bc
  %i.bd = getelementptr i8, ptr %6, i64 %i.bc
  %scevgep218 = getelementptr i8, ptr %i.bd, i64 592
  %scevgep242 = getelementptr i8, ptr %i.j, i64 %i.bc
  %i.be = mul nuw nsw i64 %i.ay, 56
  %i.bf = getelementptr i8, ptr %6, i64 %i.be
  %scevgep244 = getelementptr i8, ptr %i.bf, i64 256
  %min.iters.check253 = icmp ult i32 %i.aw, 5
  %bound0248 = icmp ult ptr %i.ad, %scevgep244
  %bound1249 = icmp ult ptr %i.ar, %scevgep
  %found.conflict250 = and i1 %bound0248, %bound1249
  %i.bg = and i64 %i.ay, 3                        ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  %i.bi = select i1 %i.bh, i64 4, i64 %i.bg
  %n.vec255 = sub nsw i64 %i.ay, %i.bi            ; 2 uses
  %i.bj = add nsw i64 %i.ay, -1
  %min.iters.check224 = icmp ult i32 %i.aw, 4
  %bound0219 = icmp ult ptr %i.ad, %scevgep218
  %bound1220 = icmp ult ptr %i.as, %scevgep
  %found.conflict221 = and i1 %bound0219, %bound1220
  %n.vec226 = and i64 %i.ay, 2147483644           ; 3 uses
  %cmp.n239 = icmp eq i64 %n.vec226, %i.ay
  %xtraiter269 = and i64 %i.ay, 1
  %lcmp.mod270.not = icmp eq i64 %xtraiter269, 0
  %i.bk = add nsw i64 %i.ay, -1
  %min.iters.check200 = icmp ult i32 %i.p, 4
  %n.vec202 = and i64 %wide.trip.count160, 2147483644 ; 3 uses
  %cmp.n213 = icmp eq i64 %n.vec202, %wide.trip.count160
  %xtraiter271 = and i64 %wide.trip.count160, 1
  %lcmp.mod272.not = icmp eq i64 %xtraiter271, 0
  %i.bl = add nsw i64 %wide.trip.count160, -1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.split125.us.us
  %indvars.iv167 = phi i64 [ %indvars.iv.next168, %._crit_edge.split125.us.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv167
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !23 ; 3 uses
  %i.bo = mul nsw i32 %i.bn, %i.z
  %i.bp = mul nuw nsw i64 %indvars.iv167, %i.ba
  %i.bq = sitofp i32 %i.bn to double
  %i.br = mul nsw i32 %i.av, %i.bn
  %invariant.gep188 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bp
  %i.bs = insertelement <2 x double> poison, double %i.bq, i64 1
  br label %.lr.ph115.us.us

.lr.ph115.us.us:                                  ; preds = %._crit_edge116.split.us.us.us, %.lr.ph.us
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %._crit_edge116.split.us.us.us ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv162
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !23 ; 3 uses
  %i.bv = mul nsw i32 %i.bu, %i.p
  %i.bw = add nsw i32 %i.bv, %i.bo
  %i.bx = add nsw i32 %i.br, %i.bu
  %i.by = sitofp i32 %i.bu to double
  %i.bz = mul nsw i32 %i.aw, %i.bx
  %i.ca = sext i32 %i.bz to i64                   ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ca ; 7 uses
  %gep189 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep188, i64 %indvars.iv162
  %i.cc = load ptr, ptr %gep189, align 8, !tbaa !14
  %i.cd = sext i32 %i.bw to i64                   ; 3 uses
  %invariant.gep186 = getelementptr [8 x i8], ptr %i.aa, i64 %i.cd ; 4 uses
  %i.ce = shl nsw i64 %i.cd, 3
  %i.cf = add i64 %i.ce, %i.a
  %i.cg = shl nsw i64 %i.ca, 3                    ; 2 uses
  %scevgep217 = getelementptr i8, ptr %scevgep216, i64 %i.cg
  %scevgep243 = getelementptr i8, ptr %scevgep242, i64 %i.cg
  %i.ch = insertelement <2 x double> %i.bs, double %i.by, i64 0
  %bound0245 = icmp ult ptr %i.ad, %scevgep243
  %bound1246 = icmp ult ptr %i.cb, %scevgep
  %found.conflict247 = and i1 %bound0245, %bound1246
  %conflict.rdx251 = or i1 %found.conflict247, %found.conflict250
  %bound0 = icmp ult ptr %i.ad, %scevgep217
  %bound1 = icmp ult ptr %i.cb, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx222 = or i1 %found.conflict, %found.conflict221
  %invariant.op273 = sub i64 -809, %i.cf
  br label %.preheader.preheader.i.i.us.us.us

.preheader.preheader.i.i.us.us.us:                ; preds = %._crit_edge.us.us.us, %.lr.ph115.us.us
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %._crit_edge.us.us.us ], [ 0, %.lr.ph115.us.us ] ; 3 uses
  %i.ci = add nsw i64 %indvars.iv157, %i.cd       ; 2 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ci ; 3 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !22 ; 3 uses
  %i.cl = tail call double @llvm.fabs.f64(double %i.ck)
  %i.cm = fmul double %i.r, %i.cl                 ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ci
  %i.co = load double, ptr %i.cn, align 8, !tbaa !22
  %i.cp = fdiv double %spec.store.select, %i.co   ; 2 uses
  %i.cq = fcmp ogt double %i.cm, %i.cp
  %..us.us.us = select i1 %i.cq, double %i.cm, double %i.cp ; 2 uses
  %i.cr = fadd double %i.ck, %..us.us.us
  store double %i.cr, ptr %i.cj, align 8, !tbaa !22
  %i.cs = load <2 x double>, ptr %i.aq, align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.az, i1 false), !tbaa !22
  br label %.preheader.i.i.us.us.us

.preheader.i.i.us.us.us:                          ; preds = %._crit_edge.i.i.us.us.us, %.preheader.preheader.i.i.us.us.us
  %indvars.iv48.i.i.us.us.us = phi i64 [ 0, %.preheader.preheader.i.i.us.us.us ], [ %indvars.iv.next49.i.i.us.us.us, %._crit_edge.i.i.us.us.us ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv48.i.i.us.us.us ; 4 uses
  %invariant.gep.i.i.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv48.i.i.us.us.us ; 7 uses
  %brmerge275 = select i1 %min.iters.check253, i1 true, i1 %conflict.rdx251
  br i1 %brmerge275, label %scalar.ph252.preheader, label %vector.ph254

vector.ph254:                                     ; preds = %.preheader.i.i.us.us.us
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !22, !alias.scope !94
  %broadcast.splatinsert260 = insertelement <2 x double> poison, double %i.cu, i64 0
  %broadcast.splat261 = shufflevector <2 x double> %broadcast.splatinsert260, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body256

vector.body256:                                   ; preds = %vector.body256, %vector.ph254
  %index257 = phi i64 [ 0, %vector.ph254 ], [ %index.next262, %vector.body256 ] ; 6 uses
  %i.cv = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %index257
  %i.cw = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %index257
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.cy = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %index257
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 96
  %i.da = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %index257
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 144
  %i.dc = load double, ptr %i.cv, align 8, !tbaa !22, !alias.scope !95
  %i.dd = load double, ptr %i.cx, align 8, !tbaa !22, !alias.scope !95
  %i.de = insertelement <2 x double> poison, double %i.dc, i64 0
  %i.df = insertelement <2 x double> %i.de, double %i.dd, i64 1
  %i.dg = load double, ptr %i.cz, align 8, !tbaa !22, !alias.scope !95
  %i.dh = load double, ptr %i.db, align 8, !tbaa !22, !alias.scope !95
  %i.di = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.dj = insertelement <2 x double> %i.di, double %i.dh, i64 1
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index257 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %wide.load258 = load <2 x double>, ptr %i.dk, align 8, !tbaa !22, !alias.scope !96, !noalias !97
  %wide.load259 = load <2 x double>, ptr %i.dl, align 8, !tbaa !22, !alias.scope !96, !noalias !97
  %i.dm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat261, <2 x double> %i.df, <2 x double> %wide.load258)
  %i.dn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat261, <2 x double> %i.dj, <2 x double> %wide.load259)
  store <2 x double> %i.dm, ptr %i.dk, align 8, !tbaa !22, !alias.scope !96, !noalias !97
  store <2 x double> %i.dn, ptr %i.dl, align 8, !tbaa !22, !alias.scope !96, !noalias !97
  %index.next262 = add nuw i64 %index257, 4       ; 2 uses
  %i.do = icmp eq i64 %index.next262, %n.vec255
  br i1 %i.do, label %scalar.ph252.preheader, label %vector.body256, !llvm.loop !82

scalar.ph252.preheader:                           ; preds = %vector.body256, %.preheader.i.i.us.us.us
  %indvars.iv.i.i.us.us.us.ph = phi i64 [ 0, %.preheader.i.i.us.us.us ], [ %n.vec255, %vector.body256 ] ; 6 uses
  %i.dp = sub nsw i64 %i.ay, %indvars.iv.i.i.us.us.us.ph
  %xtraiter267 = and i64 %i.dp, 1
  %lcmp.mod268.not = icmp eq i64 %xtraiter267, 0
  br i1 %lcmp.mod268.not, label %scalar.ph252.prol.loopexit, label %scalar.ph252.prol

scalar.ph252.prol:                                ; preds = %scalar.ph252.preheader
  %i.dq = load double, ptr %i.ct, align 8, !tbaa !22
  %gep.i.i.us.us.us.prol = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %indvars.iv.i.i.us.us.us.ph
  %i.dr = load double, ptr %gep.i.i.us.us.us.prol, align 8, !tbaa !22
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i.us.us.us.ph ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !22
  %i.du = tail call double @llvm.fmuladd.f64(double %i.dq, double %i.dr, double %i.dt)
  store double %i.du, ptr %i.ds, align 8, !tbaa !22
  %indvars.iv.next.i.i.us.us.us.prol = add nuw nsw i64 %indvars.iv.i.i.us.us.us.ph, 1
  br label %scalar.ph252.prol.loopexit

scalar.ph252.prol.loopexit:                       ; preds = %scalar.ph252.prol, %scalar.ph252.preheader
  %indvars.iv.i.i.us.us.us.unr = phi i64 [ %indvars.iv.i.i.us.us.us.ph, %scalar.ph252.preheader ], [ %indvars.iv.next.i.i.us.us.us.prol, %scalar.ph252.prol ]
  %i.dv = icmp eq i64 %indvars.iv.i.i.us.us.us.ph, %i.bj
  br i1 %i.dv, label %._crit_edge.i.i.us.us.us, label %scalar.ph252

scalar.ph252:                                     ; preds = %scalar.ph252.prol.loopexit, %scalar.ph252
  %indvars.iv.i.i.us.us.us = phi i64 [ %indvars.iv.next.i.i.us.us.us.1, %scalar.ph252 ], [ %indvars.iv.i.i.us.us.us.unr, %scalar.ph252.prol.loopexit ] ; 4 uses
  %i.dw = load double, ptr %i.ct, align 8, !tbaa !22
  %gep.i.i.us.us.us = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %indvars.iv.i.i.us.us.us
  %i.dx = load double, ptr %gep.i.i.us.us.us, align 8, !tbaa !22
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i.us.us.us ; 2 uses
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !22
  %i.ea = tail call double @llvm.fmuladd.f64(double %i.dw, double %i.dx, double %i.dz)
  store double %i.ea, ptr %i.dy, align 8, !tbaa !22
  %indvars.iv.next.i.i.us.us.us = add nuw nsw i64 %indvars.iv.i.i.us.us.us, 1 ; 2 uses
  %i.eb = load double, ptr %i.ct, align 8, !tbaa !22
  %gep.i.i.us.us.us.1 = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %indvars.iv.next.i.i.us.us.us
  %i.ec = load double, ptr %gep.i.i.us.us.us.1, align 8, !tbaa !22
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.us.us.us ; 2 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !22
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.ec, double %i.ee)
  store double %i.ef, ptr %i.ed, align 8, !tbaa !22
  %indvars.iv.next.i.i.us.us.us.1 = add nuw nsw i64 %indvars.iv.i.i.us.us.us, 2 ; 2 uses
  %exitcond.not.i.i.us.us.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.us.1, %i.ay
  br i1 %exitcond.not.i.i.us.us.us.1, label %._crit_edge.i.i.us.us.us, label %scalar.ph252, !llvm.loop !83

._crit_edge.i.i.us.us.us:                         ; preds = %scalar.ph252, %scalar.ph252.prol.loopexit
  %indvars.iv.next49.i.i.us.us.us = add nuw nsw i64 %indvars.iv48.i.i.us.us.us, 1 ; 2 uses
  %exitcond52.not.i.i.us.us.us = icmp eq i64 %indvars.iv.next49.i.i.us.us.us, %i.ay
  br i1 %exitcond52.not.i.i.us.us.us, label %._crit_edge41.split.i.i.us.us.us, label %.preheader.i.i.us.us.us

._crit_edge41.split.i.i.us.us.us:                 ; preds = %._crit_edge.i.i.us.us.us
  %i.eg = fmul <2 x double> %i.cs, %i.ch          ; 2 uses
  %i.eh = extractelement <2 x double> %i.eg, i64 0
  %i.ei = extractelement <2 x double> %i.eg, i64 1
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.ei, double 1.000000e+00) ; 4 uses
  %brmerge276 = select i1 %min.iters.check224, i1 true, i1 %conflict.rdx222
  br i1 %brmerge276, label %.lr.ph44.i.i.us.us.us.preheader, label %vector.ph225

vector.ph225:                                     ; preds = %._crit_edge41.split.i.i.us.us.us
  %broadcast.splatinsert227 = insertelement <2 x double> poison, double %i.ej, i64 0
  %broadcast.splat228 = shufflevector <2 x double> %broadcast.splatinsert227, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph225
  %index230 = phi i64 [ 0, %vector.ph225 ], [ %index.next237, %vector.body229 ] ; 4 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %index230 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %wide.load231 = load <2 x double>, ptr %i.ek, align 8, !tbaa !22, !alias.scope !98
  %wide.load232 = load <2 x double>, ptr %i.el, align 8, !tbaa !22, !alias.scope !98
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index230 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load233 = load <2 x double>, ptr %i.em, align 8, !tbaa !22, !alias.scope !99
  %wide.load234 = load <2 x double>, ptr %i.en, align 8, !tbaa !22, !alias.scope !99
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index230 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 2 uses
  %wide.load235 = load <2 x double>, ptr %i.eo, align 8, !tbaa !22, !alias.scope !100, !noalias !101
  %wide.load236 = load <2 x double>, ptr %i.ep, align 8, !tbaa !22, !alias.scope !100, !noalias !101
  %i.eq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load233, <2 x double> %broadcast.splat228, <2 x double> %wide.load235)
  %i.er = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load234, <2 x double> %broadcast.splat228, <2 x double> %wide.load236)
  %i.es = fmul <2 x double> %wide.load231, %i.eq
  %i.et = fmul <2 x double> %wide.load232, %i.er
  store <2 x double> %i.es, ptr %i.eo, align 8, !tbaa !22, !alias.scope !100, !noalias !101
  store <2 x double> %i.et, ptr %i.ep, align 8, !tbaa !22, !alias.scope !100, !noalias !101
  %index.next237 = add nuw i64 %index230, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next237, %n.vec226
  br i1 %i.eu, label %middle.block238, label %vector.body229, !llvm.loop !88

middle.block238:                                  ; preds = %vector.body229
  br i1 %cmp.n239, label %fblock.exit.loopexit.us.us.us, label %.lr.ph44.i.i.us.us.us.preheader

.lr.ph44.i.i.us.us.us.preheader:                  ; preds = %._crit_edge41.split.i.i.us.us.us, %middle.block238
  %indvars.iv53.i.i.us.us.us.ph = phi i64 [ %n.vec226, %middle.block238 ], [ 0, %._crit_edge41.split.i.i.us.us.us ] ; 6 uses
  br i1 %lcmp.mod270.not, label %.lr.ph44.i.i.us.us.us.prol.loopexit, label %.lr.ph44.i.i.us.us.us.prol

.lr.ph44.i.i.us.us.us.prol:                       ; preds = %.lr.ph44.i.i.us.us.us.preheader
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv53.i.i.us.us.us.ph
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !22
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv53.i.i.us.us.us.ph
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !22
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv53.i.i.us.us.us.ph ; 2 uses
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !22
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.ey, double %i.ej, double %i.fa)
  %i.fc = fmul double %i.ew, %i.fb
  store double %i.fc, ptr %i.ez, align 8, !tbaa !22
  %indvars.iv.next54.i.i.us.us.us.prol = or disjoint i64 %indvars.iv53.i.i.us.us.us.ph, 1
  br label %.lr.ph44.i.i.us.us.us.prol.loopexit

.lr.ph44.i.i.us.us.us.prol.loopexit:              ; preds = %.lr.ph44.i.i.us.us.us.prol, %.lr.ph44.i.i.us.us.us.preheader
  %indvars.iv53.i.i.us.us.us.unr = phi i64 [ %indvars.iv53.i.i.us.us.us.ph, %.lr.ph44.i.i.us.us.us.preheader ], [ %indvars.iv.next54.i.i.us.us.us.prol, %.lr.ph44.i.i.us.us.us.prol ]
  %i.fd = icmp eq i64 %indvars.iv53.i.i.us.us.us.ph, %i.bk
  br i1 %i.fd, label %fblock.exit.loopexit.us.us.us, label %.lr.ph44.i.i.us.us.us

.lr.ph44.i.i.us.us.us:                            ; preds = %.lr.ph44.i.i.us.us.us.prol.loopexit, %.lr.ph44.i.i.us.us.us
  %indvars.iv53.i.i.us.us.us = phi i64 [ %indvars.iv.next54.i.i.us.us.us.1, %.lr.ph44.i.i.us.us.us ], [ %indvars.iv53.i.i.us.us.us.unr, %.lr.ph44.i.i.us.us.us.prol.loopexit ] ; 5 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv53.i.i.us.us.us
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !22
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv53.i.i.us.us.us
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !22
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv53.i.i.us.us.us ; 2 uses
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !22
  %i.fk = tail call double @llvm.fmuladd.f64(double %i.fh, double %i.ej, double %i.fj)
  %i.fl = fmul double %i.ff, %i.fk
  store double %i.fl, ptr %i.fi, align 8, !tbaa !22
  %indvars.iv.next54.i.i.us.us.us = add nuw nsw i64 %indvars.iv53.i.i.us.us.us, 1 ; 3 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.next54.i.i.us.us.us
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !22
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next54.i.i.us.us.us
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !22
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next54.i.i.us.us.us ; 2 uses
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !22
  %i.fs = tail call double @llvm.fmuladd.f64(double %i.fp, double %i.ej, double %i.fr)
  %i.ft = fmul double %i.fn, %i.fs
  store double %i.ft, ptr %i.fq, align 8, !tbaa !22
  %indvars.iv.next54.i.i.us.us.us.1 = add nuw nsw i64 %indvars.iv53.i.i.us.us.us, 2 ; 2 uses
  %exitcond57.not.i.i.us.us.us.1 = icmp eq i64 %indvars.iv.next54.i.i.us.us.us.1, %i.ay
  br i1 %exitcond57.not.i.i.us.us.us.1, label %fblock.exit.loopexit.us.us.us, label %.lr.ph44.i.i.us.us.us, !llvm.loop !89

fblock.exit.loopexit.us.us.us:                    ; preds = %.lr.ph44.i.i.us.us.us.prol.loopexit, %.lr.ph44.i.i.us.us.us, %middle.block238
  %i.fu = fdiv double %i.ap, %..us.us.us          ; 4 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv157
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !40 ; 5 uses
  br i1 %min.iters.check200, label %scalar.ph199.preheader, label %vector.memcheck195

vector.memcheck195:                               ; preds = %fblock.exit.loopexit.us.us.us
  %i.fx = ptrtoaddr ptr %i.fw to i64              ; 2 uses
  %i.fy = sub i64 %i.ae, %i.fx
  %diff.check196 = icmp ugt i64 %i.fy, -32
  %.reass274 = add i64 %i.fx, %invariant.op273
  %diff.check197 = icmp ult i64 %.reass274, 31
  %conflict.rdx198 = or i1 %diff.check196, %diff.check197
  br i1 %conflict.rdx198, label %scalar.ph199.preheader, label %vector.ph201

vector.ph201:                                     ; preds = %vector.memcheck195
  %broadcast.splatinsert203 = insertelement <2 x double> poison, double %i.fu, i64 0
  %broadcast.splat204 = shufflevector <2 x double> %broadcast.splatinsert203, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph201
  %index206 = phi i64 [ 0, %vector.ph201 ], [ %index.next211, %vector.body205 ] ; 4 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index206 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %wide.load207 = load <2 x double>, ptr %i.fz, align 8, !tbaa !22
  %wide.load208 = load <2 x double>, ptr %i.ga, align 8, !tbaa !22
  %i.gb = getelementptr [8 x i8], ptr %invariant.gep186, i64 %index206 ; 2 uses
end_hunk_0
begin_hunk_1_@fB:bb.a
  %i.jv = fsub <2 x double> %wide.load, %wide.load148
  %i.jw = add nsw i32 %i.jh, %i.id
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.jx
  %wide.load149 = load <2 x double>, ptr %i.jy, align 8, !tbaa !22, !alias.scope !143
  %i.jz = fsub <2 x double> %wide.load149, %wide.load
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.j, i64 %index
  %wide.load150 = load <2 x double>, ptr %i.ka, align 8, !tbaa !22, !alias.scope !144, !noalias !145
  %i.kb = fneg <2 x double> %wide.load150
  %i.kc = fsub <2 x double> %i.jr, %i.jn
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.i, i64 %index
  %wide.load151 = load <2 x double>, ptr %i.kd, align 8, !tbaa !22, !alias.scope !144, !noalias !145
  %i.ke = fsub <2 x double> %i.jz, %i.jv
  %i.kf = fneg <2 x double> %i.ke
  %i.kg = fmul <2 x double> %wide.load151, %i.kf
  %i.kh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kb, <2 x double> %i.kc, <2 x double> %i.kg)
  %i.ki = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ji
  %wide.load152 = load <2 x double>, ptr %i.ki, align 8, !tbaa !22, !alias.scope !146, !noalias !145
  %i.kj = fsub <2 x double> %i.kh, %wide.load152
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ji
  store <2 x double> %i.kj, ptr %i.kk, align 8, !tbaa !22, !alias.scope !145, !noalias !147
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.kl = icmp eq i64 %index.next, %n.vec
  br i1 %i.kl, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck ], [ 1, %.lr.ph ], [ %i.az, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.km = trunc nuw nsw i64 %indvars.iv to i32
  %i.kn = add i32 %i.ih, %i.km                    ; 5 uses
  %i.ko = sext i32 %i.kn to i64                   ; 3 uses
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ko
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !22 ; 4 uses
  %i.kr = add i32 %i.kn, %i.br
  %i.ks = sext i32 %i.kr to i64
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ks
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !22
  %i.kv = fsub double %i.kq, %i.ku
  %i.kw = add nsw i32 %i.kn, %i.bp
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.kx
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !22
  %i.la = fsub double %i.kz, %i.kq
  %i.lb = add i32 %i.kn, %i.if
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.lc
  %i.le = load double, ptr %i.ld, align 8, !tbaa !22
  %i.lf = fsub double %i.kq, %i.le
  %i.lg = add nsw i32 %i.kn, %i.id
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.lh
  %i.lj = load double, ptr %i.li, align 8, !tbaa !22
  %i.lk = fsub double %i.lj, %i.kq
  %i.ll = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ll
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !22
  %i.lo = fneg double %i.ln
  %i.lp = fsub double %i.la, %i.kv
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ll
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !22
  %i.ls = fsub double %i.lk, %i.lf
  %i.lt = fneg double %i.ls
  %i.lu = fmul double %i.lr, %i.lt
  %i.lv = tail call double @llvm.fmuladd.f64(double %i.lo, double %i.lp, double %i.lu)
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ko
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !22
  %i.ly = fsub double %i.lv, %i.lx
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ko
  store double %i.ly, ptr %i.lz, align 8, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !129

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.c, %WebRatesB.exit
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond96.not = icmp eq i64 %indvars.iv.next94, 20
  br i1 %exitcond96.not, label %bb.d, label %bb.c

bb.d:                                             ; preds = %._crit_edge
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next98, 20
  br i1 %exitcond100.not, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  ret i32 0
}

declare i32 @CVodeSStolerancesB(ptr noundef, i32 noundef, double noundef, double noundef) local_unnamed_addr #2

declare i32 @CVodeSetLinearSolverB(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetPreconditionerB(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @PrecondB(double %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3, i32 %4, ptr nofree noundef writeonly captures(none) %5, double noundef %6, ptr nofree noundef readonly captures(none) %7) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 39224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 39232
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31
  %i.e = tail call ptr @CVodeGetAdjCVodeBmem(ptr noundef %i.b, i32 noundef %i.d) #10 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %check_retval.exit, label %bb.b

check_retval.exit:                                ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.29) #11 ; 0 uses
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 39208
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20   ; 3 uses
  %i.k = tail call i32 @CVodeGetErrWeights(ptr noundef nonnull %i.e, ptr noundef %i.j) #10 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %check_retval.exit115, label %bb.c

check_retval.exit115:                             ; preds = %bb.b
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.28, i32 noundef %i.k) #11 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #10 ; 5 uses
  %i.p = tail call ptr @N_VGetArrayPointer(ptr noundef %i.j) #10 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 288 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 296 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.u = load i32, ptr %i.t, align 8, !tbaa !32   ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 800
  %i.w = load double, ptr %i.v, align 8, !tbaa !33 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.y = load i32, ptr %i.x, align 8, !tbaa !34   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 92
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !35  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !36 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 100
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !37 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 808 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 39216
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21
  %i.ai = tail call ptr @N_VGetArrayPointer(ptr noundef %i.ah) #10 ; 20 uses
  %i.aj = tail call double @N_VWrmsNorm(ptr noundef %3, ptr noundef %i.j) #10
  %i.ak = tail call double @llvm.fabs.f64(double %6)
  %i.al = fmul double %i.ak, 1.000000e+03
  %i.am = fmul double %i.al, f0x3CB0000000000000
  %i.an = fmul double %i.am, 2.400000e+03
  %i.ao = fmul double %i.an, %i.aj                ; 2 uses
  %i.ap = fcmp oeq double %i.ao, 0.000000e+00
  %spec.store.select = select i1 %i.ap, double 1.000000e+00, double %i.ao ; 2 uses
  %i.aq = icmp sgt i32 %i.ac, 0
  br i1 %i.aq, label %.lr.ph136, label %.preheader

.lr.ph136:                                        ; preds = %bb.c
  %i.ar = icmp slt i32 %i.aa, 1
  %i.as = icmp slt i32 %i.u, 1
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 784
  %i.au = getelementptr i8, ptr %7, i64 304       ; 2 uses
  %i.av = getelementptr i8, ptr %7, i64 592       ; 5 uses
  %brmerge = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %brmerge, label %.preheader, label %.lr.ph136.split.split

.lr.ph136.split.split:                            ; preds = %.lr.ph136
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !38
  %i.az = load i32, ptr %i.aw, align 8, !tbaa !24 ; 5 uses
  %i.ba = icmp sgt i32 %i.az, 0
  %i.bb = zext i32 %i.az to i64                   ; 14 uses
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = zext nneg i32 %i.aa to i64              ; 4 uses
  %wide.trip.count178 = zext nneg i32 %i.ac to i64 ; 2 uses
  %wide.trip.count168 = zext nneg i32 %i.u to i64 ; 6 uses
  br i1 %i.ba, label %.lr.ph.us.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph136.split.split
  %xtraiter = and i64 %wide.trip.count168, 1
  %i.be = icmp eq i32 %i.u, 1
  %unroll_iter = and i64 %wide.trip.count168, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod236 = trunc i32 %i.u to i1
  br label %.lr.ph

.lr.ph.us.preheader:                              ; preds = %.lr.ph136.split.split
  %i.bf = shl nuw nsw i64 %i.bb, 3                ; 4 uses
  %scevgep = getelementptr i8, ptr %i.ai, i64 %i.bf ; 4 uses
  %scevgep200 = getelementptr i8, ptr %i.o, i64 %i.bf
  %i.bg = getelementptr i8, ptr %7, i64 %i.bf
  %scevgep202 = getelementptr i8, ptr %i.bg, i64 592
  %scevgep212 = getelementptr i8, ptr %i.o, i64 %i.bf
  %i.bh = mul nuw nsw i64 %i.bb, 56
  %i.bi = getelementptr i8, ptr %7, i64 %i.bh
  %scevgep214 = getelementptr i8, ptr %i.bi, i64 256
  %min.iters.check223 = icmp ult i32 %i.az, 5
  %bound0218 = icmp ult ptr %i.ai, %scevgep214
  %bound1219 = icmp ult ptr %i.au, %scevgep
  %found.conflict220 = and i1 %bound0218, %bound1219
  %i.bj = and i64 %i.bb, 3                        ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  %i.bl = select i1 %i.bk, i64 4, i64 %i.bj
  %n.vec225 = sub nsw i64 %i.bb, %i.bl            ; 2 uses
  %i.bm = add nsw i64 %i.bb, -1
  %min.iters.check = icmp ult i32 %i.az, 4
  %bound0203 = icmp ult ptr %i.ai, %scevgep202
  %bound1204 = icmp ult ptr %i.av, %scevgep
  %found.conflict205 = and i1 %bound0203, %bound1204
  %n.vec = and i64 %i.bb, 2147483644              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bb
  %xtraiter239 = and i64 %i.bb, 1
  %lcmp.mod240.not = icmp eq i64 %xtraiter239, 0
  %i.bn = add nsw i64 %i.bb, -1
  %xtraiter242 = and i64 %wide.trip.count168, 1
  %i.bo = icmp eq i32 %i.u, 1
  %unroll_iter245 = and i64 %wide.trip.count168, 2147483646
  %lcmp.mod243.not = icmp eq i64 %xtraiter242, 0
  %lcmp.mod244 = trunc i32 %i.u to i1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.split133.us.us
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %._crit_edge.split133.us.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv175
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !23 ; 3 uses
  %i.br = mul nsw i32 %i.bq, %i.ae
  %i.bs = mul nuw nsw i64 %indvars.iv175, %i.bd
  %i.bt = sitofp i32 %i.bq to double
  %i.bu = mul nsw i32 %i.ay, %i.bq
  %invariant.gep197 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.bs
  %i.bv = insertelement <2 x double> poison, double %i.bt, i64 1
  br label %.lr.ph123.us.us

.lr.ph123.us.us:                                  ; preds = %._crit_edge124.split.us.us.us, %.lr.ph.us
  %indvars.iv170 = phi i64 [ %indvars.iv.next171, %._crit_edge124.split.us.us.us ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv170
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !23 ; 3 uses
  %i.by = mul nsw i32 %i.bx, %i.u
  %i.bz = add nsw i32 %i.by, %i.br
  %i.ca = add nsw i32 %i.bu, %i.bx
  %i.cb = sitofp i32 %i.bx to double
  %i.cc = mul nsw i32 %i.az, %i.ca
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.cd ; 7 uses
  %gep198 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep197, i64 %indvars.iv170
  %i.cf = load ptr, ptr %gep198, align 8, !tbaa !14 ; 3 uses
  %i.cg = sext i32 %i.bz to i64                   ; 2 uses
  %invariant.gep195 = getelementptr [8 x i8], ptr %i.af, i64 %i.cg ; 3 uses
  %i.ch = shl nsw i64 %i.cd, 3                    ; 2 uses
  %scevgep201 = getelementptr i8, ptr %scevgep200, i64 %i.ch
  %scevgep213 = getelementptr i8, ptr %scevgep212, i64 %i.ch
  %i.ci = insertelement <2 x double> %i.bv, double %i.cb, i64 0
  %bound0215 = icmp ult ptr %i.ai, %scevgep213
  %bound1216 = icmp ult ptr %i.ce, %scevgep
  %found.conflict217 = and i1 %bound0215, %bound1216
  %conflict.rdx221 = or i1 %found.conflict217, %found.conflict220
  %bound0 = icmp ult ptr %i.ai, %scevgep201
  %bound1 = icmp ult ptr %i.ce, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %found.conflict205
  br label %.preheader.preheader.i.i.us.us.us

.preheader.preheader.i.i.us.us.us:                ; preds = %._crit_edge.us.us.us, %.lr.ph123.us.us
  %indvars.iv165 = phi i64 [ %indvars.iv.next166, %._crit_edge.us.us.us ], [ 0, %.lr.ph123.us.us ] ; 5 uses
  %i.cj = add nsw i64 %indvars.iv165, %i.cg       ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.cj ; 3 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !22 ; 3 uses
  %i.cm = tail call double @llvm.fabs.f64(double %i.cl)
  %i.cn = fmul double %i.w, %i.cm                 ; 2 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cj
  %i.cp = load double, ptr %i.co, align 8, !tbaa !22
  %i.cq = fdiv double %spec.store.select, %i.cp   ; 2 uses
  %i.cr = fcmp ogt double %i.cn, %i.cq
  %..us.us.us = select i1 %i.cr, double %i.cn, double %i.cq ; 2 uses
  %i.cs = fadd double %i.cl, %..us.us.us
  store double %i.cs, ptr %i.ck, align 8, !tbaa !22
  %i.ct = load <2 x double>, ptr %i.at, align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ai, i8 0, i64 %i.bc, i1 false), !tbaa !22
  br label %.preheader.i.i.us.us.us

.preheader.i.i.us.us.us:                          ; preds = %._crit_edge.i.i.us.us.us, %.preheader.preheader.i.i.us.us.us
  %indvars.iv48.i.i.us.us.us = phi i64 [ 0, %.preheader.preheader.i.i.us.us.us ], [ %indvars.iv.next49.i.i.us.us.us, %._crit_edge.i.i.us.us.us ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv48.i.i.us.us.us ; 4 uses
  %invariant.gep.i.i.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv48.i.i.us.us.us ; 7 uses
  %brmerge247 = select i1 %min.iters.check223, i1 true, i1 %conflict.rdx221
  br i1 %brmerge247, label %scalar.ph222.preheader, label %vector.ph224

vector.ph224:                                     ; preds = %.preheader.i.i.us.us.us
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !22, !alias.scope !160
  %broadcast.splatinsert230 = insertelement <2 x double> poison, double %i.cv, i64 0
  %broadcast.splat231 = shufflevector <2 x double> %broadcast.splatinsert230, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph224
  %index227 = phi i64 [ 0, %vector.ph224 ], [ %index.next232, %vector.body226 ] ; 6 uses
  %i.cw = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %index227
  %i.cx = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %index227
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.cz = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %index227
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 96
  %i.db = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %index227
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 144
  %i.dd = load double, ptr %i.cw, align 8, !tbaa !22, !alias.scope !161
  %i.de = load double, ptr %i.cy, align 8, !tbaa !22, !alias.scope !161
  %i.df = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.dg = insertelement <2 x double> %i.df, double %i.de, i64 1
  %i.dh = load double, ptr %i.da, align 8, !tbaa !22, !alias.scope !161
  %i.di = load double, ptr %i.dc, align 8, !tbaa !22, !alias.scope !161
  %i.dj = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.dk = insertelement <2 x double> %i.dj, double %i.di, i64 1
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index227 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %wide.load228 = load <2 x double>, ptr %i.dl, align 8, !tbaa !22, !alias.scope !162, !noalias !163
  %wide.load229 = load <2 x double>, ptr %i.dm, align 8, !tbaa !22, !alias.scope !162, !noalias !163
  %i.dn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat231, <2 x double> %i.dg, <2 x double> %wide.load228)
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat231, <2 x double> %i.dk, <2 x double> %wide.load229)
  store <2 x double> %i.dn, ptr %i.dl, align 8, !tbaa !22, !alias.scope !162, !noalias !163
  store <2 x double> %i.do, ptr %i.dm, align 8, !tbaa !22, !alias.scope !162, !noalias !163
  %index.next232 = add nuw i64 %index227, 4       ; 2 uses
  %i.dp = icmp eq i64 %index.next232, %n.vec225
  br i1 %i.dp, label %scalar.ph222.preheader, label %vector.body226, !llvm.loop !152

scalar.ph222.preheader:                           ; preds = %vector.body226, %.preheader.i.i.us.us.us
  %indvars.iv.i.i.us.us.us.ph = phi i64 [ 0, %.preheader.i.i.us.us.us ], [ %n.vec225, %vector.body226 ] ; 6 uses
  %i.dq = sub nsw i64 %i.bb, %indvars.iv.i.i.us.us.us.ph
  %xtraiter237 = and i64 %i.dq, 1
  %lcmp.mod238.not = icmp eq i64 %xtraiter237, 0
  br i1 %lcmp.mod238.not, label %scalar.ph222.prol.loopexit, label %scalar.ph222.prol

scalar.ph222.prol:                                ; preds = %scalar.ph222.preheader
  %i.dr = load double, ptr %i.cu, align 8, !tbaa !22
  %gep.i.i.us.us.us.prol = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %indvars.iv.i.i.us.us.us.ph
  %i.ds = load double, ptr %gep.i.i.us.us.us.prol, align 8, !tbaa !22
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i.i.us.us.us.ph ; 2 uses
  %i.du = load double, ptr %i.dt, align 8, !tbaa !22
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.ds, double %i.du)
  store double %i.dv, ptr %i.dt, align 8, !tbaa !22
  %indvars.iv.next.i.i.us.us.us.prol = add nuw nsw i64 %indvars.iv.i.i.us.us.us.ph, 1
  br label %scalar.ph222.prol.loopexit

scalar.ph222.prol.loopexit:                       ; preds = %scalar.ph222.prol, %scalar.ph222.preheader
  %indvars.iv.i.i.us.us.us.unr = phi i64 [ %indvars.iv.i.i.us.us.us.ph, %scalar.ph222.preheader ], [ %indvars.iv.next.i.i.us.us.us.prol, %scalar.ph222.prol ]
  %i.dw = icmp eq i64 %indvars.iv.i.i.us.us.us.ph, %i.bm
  br i1 %i.dw, label %._crit_edge.i.i.us.us.us, label %scalar.ph222

scalar.ph222:                                     ; preds = %scalar.ph222.prol.loopexit, %scalar.ph222
  %indvars.iv.i.i.us.us.us = phi i64 [ %indvars.iv.next.i.i.us.us.us.1, %scalar.ph222 ], [ %indvars.iv.i.i.us.us.us.unr, %scalar.ph222.prol.loopexit ] ; 4 uses
  %i.dx = load double, ptr %i.cu, align 8, !tbaa !22
  %gep.i.i.us.us.us = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %indvars.iv.i.i.us.us.us
  %i.dy = load double, ptr %gep.i.i.us.us.us, align 8, !tbaa !22
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i.i.us.us.us ; 2 uses
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !22
  %i.eb = tail call double @llvm.fmuladd.f64(double %i.dx, double %i.dy, double %i.ea)
  store double %i.eb, ptr %i.dz, align 8, !tbaa !22
  %indvars.iv.next.i.i.us.us.us = add nuw nsw i64 %indvars.iv.i.i.us.us.us, 1 ; 2 uses
  %i.ec = load double, ptr %i.cu, align 8, !tbaa !22
  %gep.i.i.us.us.us.1 = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %indvars.iv.next.i.i.us.us.us
  %i.ed = load double, ptr %gep.i.i.us.us.us.1, align 8, !tbaa !22
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next.i.i.us.us.us ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !22
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.ec, double %i.ed, double %i.ef)
  store double %i.eg, ptr %i.ee, align 8, !tbaa !22
  %indvars.iv.next.i.i.us.us.us.1 = add nuw nsw i64 %indvars.iv.i.i.us.us.us, 2 ; 2 uses
  %exitcond.not.i.i.us.us.us.1 = icmp eq i64 %indvars.iv.next.i.i.us.us.us.1, %i.bb
  br i1 %exitcond.not.i.i.us.us.us.1, label %._crit_edge.i.i.us.us.us, label %scalar.ph222, !llvm.loop !153

._crit_edge.i.i.us.us.us:                         ; preds = %scalar.ph222, %scalar.ph222.prol.loopexit
  %indvars.iv.next49.i.i.us.us.us = add nuw nsw i64 %indvars.iv48.i.i.us.us.us, 1 ; 2 uses
  %exitcond52.not.i.i.us.us.us = icmp eq i64 %indvars.iv.next49.i.i.us.us.us, %i.bb
  br i1 %exitcond52.not.i.i.us.us.us, label %._crit_edge41.split.i.i.us.us.us, label %.preheader.i.i.us.us.us

._crit_edge41.split.i.i.us.us.us:                 ; preds = %._crit_edge.i.i.us.us.us
  %i.eh = fmul <2 x double> %i.ct, %i.ci          ; 2 uses
  %i.ei = extractelement <2 x double> %i.eh, i64 0
  %i.ej = extractelement <2 x double> %i.eh, i64 1
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.ej, double 1.000000e+00) ; 4 uses
  %brmerge248 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge248, label %.lr.ph44.i.i.us.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge41.split.i.i.us.us.us
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ek, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load = load <2 x double>, ptr %i.el, align 8, !tbaa !22, !alias.scope !164
  %wide.load206 = load <2 x double>, ptr %i.em, align 8, !tbaa !22, !alias.scope !164
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load207 = load <2 x double>, ptr %i.en, align 8, !tbaa !22, !alias.scope !165
  %wide.load208 = load <2 x double>, ptr %i.eo, align 8, !tbaa !22, !alias.scope !165
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 2 uses
  %wide.load209 = load <2 x double>, ptr %i.ep, align 8, !tbaa !22, !alias.scope !166, !noalias !167
  %wide.load210 = load <2 x double>, ptr %i.eq, align 8, !tbaa !22, !alias.scope !166, !noalias !167
  %i.er = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load207, <2 x double> %broadcast.splat, <2 x double> %wide.load209)
  %i.es = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load208, <2 x double> %broadcast.splat, <2 x double> %wide.load210)
  %i.et = fmul <2 x double> %wide.load, %i.er
  %i.eu = fmul <2 x double> %wide.load206, %i.es
  store <2 x double> %i.et, ptr %i.ep, align 8, !tbaa !22, !alias.scope !166, !noalias !167
  store <2 x double> %i.eu, ptr %i.eq, align 8, !tbaa !22, !alias.scope !166, !noalias !167
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ev = icmp eq i64 %index.next, %n.vec
  br i1 %i.ev, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %fblock.exit.loopexit.us.us.us, label %.lr.ph44.i.i.us.us.us.preheader

.lr.ph44.i.i.us.us.us.preheader:                  ; preds = %._crit_edge41.split.i.i.us.us.us, %middle.block
  %indvars.iv53.i.i.us.us.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %._crit_edge41.split.i.i.us.us.us ] ; 6 uses
  br i1 %lcmp.mod240.not, label %.lr.ph44.i.i.us.us.us.prol.loopexit, label %.lr.ph44.i.i.us.us.us.prol

.lr.ph44.i.i.us.us.us.prol:                       ; preds = %.lr.ph44.i.i.us.us.us.preheader
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv53.i.i.us.us.us.ph
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !22
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv53.i.i.us.us.us.ph
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !22
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv53.i.i.us.us.us.ph ; 2 uses
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !22
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.ek, double %i.fb)
  %i.fd = fmul double %i.ex, %i.fc
  store double %i.fd, ptr %i.fa, align 8, !tbaa !22
  %indvars.iv.next54.i.i.us.us.us.prol = or disjoint i64 %indvars.iv53.i.i.us.us.us.ph, 1
  br label %.lr.ph44.i.i.us.us.us.prol.loopexit

.lr.ph44.i.i.us.us.us.prol.loopexit:              ; preds = %.lr.ph44.i.i.us.us.us.prol, %.lr.ph44.i.i.us.us.us.preheader
  %indvars.iv53.i.i.us.us.us.unr = phi i64 [ %indvars.iv53.i.i.us.us.us.ph, %.lr.ph44.i.i.us.us.us.preheader ], [ %indvars.iv.next54.i.i.us.us.us.prol, %.lr.ph44.i.i.us.us.us.prol ]
  %i.fe = icmp eq i64 %indvars.iv53.i.i.us.us.us.ph, %i.bn
  br i1 %i.fe, label %fblock.exit.loopexit.us.us.us, label %.lr.ph44.i.i.us.us.us

.lr.ph44.i.i.us.us.us:                            ; preds = %.lr.ph44.i.i.us.us.us.prol.loopexit, %.lr.ph44.i.i.us.us.us
  %indvars.iv53.i.i.us.us.us = phi i64 [ %indvars.iv.next54.i.i.us.us.us.1, %.lr.ph44.i.i.us.us.us ], [ %indvars.iv53.i.i.us.us.us.unr, %.lr.ph44.i.i.us.us.us.prol.loopexit ] ; 5 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv53.i.i.us.us.us
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !22
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv53.i.i.us.us.us
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !22
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv53.i.i.us.us.us ; 2 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !22
  %i.fl = tail call double @llvm.fmuladd.f64(double %i.fi, double %i.ek, double %i.fk)
  %i.fm = fmul double %i.fg, %i.fl
  store double %i.fm, ptr %i.fj, align 8, !tbaa !22
  %indvars.iv.next54.i.i.us.us.us = add nuw nsw i64 %indvars.iv53.i.i.us.us.us, 1 ; 3 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next54.i.i.us.us.us
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !22
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next54.i.i.us.us.us
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !22
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next54.i.i.us.us.us ; 2 uses
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !22
  %i.ft = tail call double @llvm.fmuladd.f64(double %i.fq, double %i.ek, double %i.fs)
  %i.fu = fmul double %i.fo, %i.ft
  store double %i.fu, ptr %i.fr, align 8, !tbaa !22
  %indvars.iv.next54.i.i.us.us.us.1 = add nuw nsw i64 %indvars.iv53.i.i.us.us.us, 2 ; 2 uses
  %exitcond57.not.i.i.us.us.us.1 = icmp eq i64 %indvars.iv.next54.i.i.us.us.us.1, %i.bb
  br i1 %exitcond57.not.i.i.us.us.us.1, label %fblock.exit.loopexit.us.us.us, label %.lr.ph44.i.i.us.us.us, !llvm.loop !159

fblock.exit.loopexit.us.us.us:                    ; preds = %.lr.ph44.i.i.us.us.us.prol.loopexit, %.lr.ph44.i.i.us.us.us, %middle.block
  %i.fv = fdiv double %6, %..us.us.us             ; 3 uses
  br i1 %i.bo, label %.epil.preheader241, label %fblock.exit.loopexit.us.us.us.new

fblock.exit.loopexit.us.us.us.new:                ; preds = %fblock.exit.loopexit.us.us.us, %fblock.exit.loopexit.us.us.us.new
  %indvars.iv160 = phi i64 [ %indvars.iv.next161.1, %fblock.exit.loopexit.us.us.us.new ], [ 0, %fblock.exit.loopexit.us.us.us ] ; 5 uses
  %niter246 = phi i64 [ %niter246.next.1, %fblock.exit.loopexit.us.us.us.new ], [ 0, %fblock.exit.loopexit.us.us.us ]
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv160
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !22
  %gep196 = getelementptr [8 x i8], ptr %invariant.gep195, i64 %indvars.iv160
  %i.fy = load double, ptr %gep196, align 8, !tbaa !22
  %i.fz = fsub double %i.fx, %i.fy
  %i.ga = fmul double %i.fv, %i.fz
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv160
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !40
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv165
  store double %i.ga, ptr %i.gd, align 8, !tbaa !22
  %indvars.iv.next161 = or disjoint i64 %indvars.iv160, 1 ; 3 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next161
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !22
  %gep196.1 = getelementptr [8 x i8], ptr %invariant.gep195, i64 %indvars.iv.next161
  %i.gg = load double, ptr %gep196.1, align 8, !tbaa !22
  %i.gh = fsub double %i.gf, %i.gg
  %i.gi = fmul double %i.fv, %i.gh
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next161
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !40
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv165
end_hunk_1

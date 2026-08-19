inline.NumInlined: 29
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@mcelem_array_contained_selec:bb.a
  %i.ej = load float, ptr %i.ei, align 4
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.ej, float %i.dq, float %.057.i.1)
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.06274.i, i64 %indvars.iv.next.i
  store float %i.ek, ptr %i.el, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.peel.next.i, !llvm.loop !13

._crit_edge.i.unr-lcssa:                          ; preds = %bb.q
  %lcmp.mod34.not = icmp eq i64 %xtraiter33, 0
  br i1 %lcmp.mod34.not, label %._crit_edge.i, label %.peel.next.i.epil.preheader

.peel.next.i.epil.preheader:                      ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph77.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph77.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 4 uses
  %lcmp.mod35 = trunc i64 %i.dn to i1
  tail call void @llvm.assume(i1 %lcmp.mod35)
  %i.em = icmp samesign ult i64 %indvars.iv.i.epil.init, %indvars.iv94.i
  br i1 %i.em, label %bb.r, label %._crit_edge.i.epilog-lcssa

bb.r:                                             ; preds = %.peel.next.i.epil.preheader
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.06473.i, i64 %indvars.iv.i.epil.init
  %i.eo = load float, ptr %i.en, align 4
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.dr, float 0.000000e+00)
  br label %._crit_edge.i.epilog-lcssa

._crit_edge.i.epilog-lcssa:                       ; preds = %bb.r, %.peel.next.i.epil.preheader
  %.057.i.epil = phi float [ %i.ep, %bb.r ], [ 0.000000e+00, %.peel.next.i.epil.preheader ]
  %i.eq = getelementptr [4 x i8], ptr %.06473.i, i64 %indvars.iv.i.epil.init
  %i.er = getelementptr i8, ptr %i.eq, i64 -4
  %i.es = load float, ptr %i.er, align 4
  %i.et = tail call float @llvm.fmuladd.f32(float %i.es, float %i.dq, float %.057.i.epil)
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.06274.i, i64 %indvars.iv.i.epil.init
  store float %i.et, ptr %i.eu, align 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %._crit_edge.i.epilog-lcssa
  %indvars.iv.next95.i = add nuw nsw i64 %indvars.iv94.i, 1 ; 2 uses
  %exitcond98.i = icmp eq i64 %indvars.iv.next95.i, %wide.trip.count97.i
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond98.i, label %calc_distr.exit, label %.lr.ph77.i, !llvm.loop !15

calc_distr.exit:                                  ; preds = %._crit_edge.i, %bb.n
  %.064.lcssa.i = phi ptr [ %i.dh, %bb.n ], [ %.06274.i, %._crit_edge.i ] ; 4 uses
  %.062.lcssa.i = phi ptr [ %i.di, %bb.n ], [ %.06473.i, %._crit_edge.i ]
  tail call void @pfree(ptr noundef %.062.lcssa.i) #9
  %i.ev = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.dg) #9 ; 3 uses
  %i.ew = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.dg) #9 ; 2 uses
  store float 1.000000e+00, ptr %i.ev, align 4
  %.not72.i148 = icmp slt i32 %1, 1
  br i1 %.not72.i148, label %._crit_edge78.i, label %.lr.ph77.preheader.i149

.lr.ph77.preheader.i149:                          ; preds = %calc_distr.exit
  %i.ex = add nuw i32 %1, 1
  %wide.trip.count97.i150 = zext i32 %i.ex to i64
  br label %.lr.ph77.i151

.lr.ph77.i151:                                    ; preds = %._crit_edge.i156, %.lr.ph77.preheader.i149
  %indvar36 = phi i32 [ %indvar.next37, %._crit_edge.i156 ], [ 0, %.lr.ph77.preheader.i149 ] ; 2 uses
  %indvars.iv94.i152 = phi i64 [ %indvars.iv.next95.i157, %._crit_edge.i156 ], [ 1, %.lr.ph77.preheader.i149 ] ; 6 uses
  %.06274.i153 = phi ptr [ %.06473.i154, %._crit_edge.i156 ], [ %i.ew, %.lr.ph77.preheader.i149 ] ; 6 uses
  %.06473.i154 = phi ptr [ %.06274.i153, %._crit_edge.i156 ], [ %i.ev, %.lr.ph77.preheader.i149 ] ; 9 uses
  %i.ey = add i32 %indvar36, 1
  %smin38 = tail call i32 @llvm.smin.i32(i32 %.2135, i32 %i.ey)
  %i.ez = add i32 %smin38, 1                      ; 2 uses
  %i.fa = zext i32 %i.ez to i64
  %i.fb = add nsw i64 %i.fa, -1                   ; 3 uses
  %i.fc = trunc nuw nsw i64 %indvars.iv94.i152 to i32
  %smin.i155 = tail call i32 @llvm.smin.i32(i32 %.2135, i32 %i.fc) ; 2 uses
  %i.fd = getelementptr [4 x i8], ptr %2, i64 %indvars.iv94.i152
  %i.fe = getelementptr i8, ptr %i.fd, i64 -4
  %i.ff = load float, ptr %i.fe, align 4          ; 4 uses
  %i.fg = icmp sgt i32 %smin.i155, -1
  br i1 %i.fg, label %bb.s, label %._crit_edge.i156

bb.s:                                             ; preds = %.lr.ph77.i151
  %i.fh = fsub float 1.000000e+00, %i.ff          ; 4 uses
  %i.fi = load float, ptr %.06473.i154, align 4
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.fi, float %i.fh, float 0.000000e+00)
  store float %i.fj, ptr %.06274.i153, align 4
  %exitcond.peel.i162 = icmp eq i32 %smin.i155, 0
  br i1 %exitcond.peel.i162, label %._crit_edge.i156, label %.peel.next.i163.preheader

.peel.next.i163.preheader:                        ; preds = %bb.s
  %xtraiter39 = and i64 %i.fb, 1
  %i.fk = icmp eq i32 %i.ez, 2
  br i1 %i.fk, label %.peel.next.i163.epil.preheader, label %.peel.next.i163.preheader.new

.peel.next.i163.preheader.new:                    ; preds = %.peel.next.i163.preheader
  %unroll_iter42 = and i64 %i.fb, -2
  br label %.peel.next.i163

.peel.next.i163:                                  ; preds = %bb.v, %.peel.next.i163.preheader.new
  %indvars.iv.i164 = phi i64 [ 1, %.peel.next.i163.preheader.new ], [ %indvars.iv.next.i166.1, %bb.v ] ; 6 uses
  %niter43 = phi i64 [ 0, %.peel.next.i163.preheader.new ], [ %niter43.next.1, %bb.v ]
  %i.fl = icmp samesign ult i64 %indvars.iv.i164, %indvars.iv94.i152
  br i1 %i.fl, label %bb.t, label %.peel.next.i163.1

bb.t:                                             ; preds = %.peel.next.i163
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.06473.i154, i64 %indvars.iv.i164
  %i.fn = load float, ptr %i.fm, align 4
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fn, float %i.fh, float 0.000000e+00)
  br label %.peel.next.i163.1

.peel.next.i163.1:                                ; preds = %bb.t, %.peel.next.i163
  %.057.i165 = phi float [ %i.fo, %bb.t ], [ 0.000000e+00, %.peel.next.i163 ]
  %i.fp = getelementptr [4 x i8], ptr %.06473.i154, i64 %indvars.iv.i164
  %i.fq = getelementptr i8, ptr %i.fp, i64 -4
  %i.fr = load float, ptr %i.fq, align 4
  %i.fs = tail call float @llvm.fmuladd.f32(float %i.fr, float %i.ff, float %.057.i165)
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.06274.i153, i64 %indvars.iv.i164
  store float %i.fs, ptr %i.ft, align 4
  %indvars.iv.next.i166 = add nuw nsw i64 %indvars.iv.i164, 1 ; 4 uses
  %i.fu = icmp samesign ult i64 %indvars.iv.next.i166, %indvars.iv94.i152
  br i1 %i.fu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.peel.next.i163.1
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.06473.i154, i64 %indvars.iv.next.i166
  %i.fw = load float, ptr %i.fv, align 4
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.fw, float %i.fh, float 0.000000e+00)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.peel.next.i163.1
  %.057.i165.1 = phi float [ %i.fx, %bb.u ], [ 0.000000e+00, %.peel.next.i163.1 ]
  %i.fy = getelementptr [4 x i8], ptr %.06473.i154, i64 %indvars.iv.next.i166
  %i.fz = getelementptr i8, ptr %i.fy, i64 -4
  %i.ga = load float, ptr %i.fz, align 4
  %i.gb = tail call float @llvm.fmuladd.f32(float %i.ga, float %i.ff, float %.057.i165.1)
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.06274.i153, i64 %indvars.iv.next.i166
  store float %i.gb, ptr %i.gc, align 4
  %indvars.iv.next.i166.1 = add nuw nsw i64 %indvars.iv.i164, 2 ; 2 uses
  %niter43.next.1 = add i64 %niter43, 2           ; 2 uses
  %niter43.ncmp.1 = icmp eq i64 %niter43.next.1, %unroll_iter42
  br i1 %niter43.ncmp.1, label %._crit_edge.i156.loopexit.unr-lcssa, label %.peel.next.i163, !llvm.loop !13

._crit_edge.i156.loopexit.unr-lcssa:              ; preds = %bb.v
  %lcmp.mod40.not = icmp eq i64 %xtraiter39, 0
  br i1 %lcmp.mod40.not, label %._crit_edge.i156, label %.peel.next.i163.epil.preheader

.peel.next.i163.epil.preheader:                   ; preds = %._crit_edge.i156.loopexit.unr-lcssa, %.peel.next.i163.preheader
  %indvars.iv.i164.epil.init = phi i64 [ 1, %.peel.next.i163.preheader ], [ %indvars.iv.next.i166.1, %._crit_edge.i156.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod41 = trunc i64 %i.fb to i1
  tail call void @llvm.assume(i1 %lcmp.mod41)
  %i.gd = icmp samesign ult i64 %indvars.iv.i164.epil.init, %indvars.iv94.i152
  br i1 %i.gd, label %bb.w, label %._crit_edge.i156.loopexit.epilog-lcssa

bb.w:                                             ; preds = %.peel.next.i163.epil.preheader
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.06473.i154, i64 %indvars.iv.i164.epil.init
  %i.gf = load float, ptr %i.ge, align 4
  %i.gg = tail call float @llvm.fmuladd.f32(float %i.gf, float %i.fh, float 0.000000e+00)
  br label %._crit_edge.i156.loopexit.epilog-lcssa

._crit_edge.i156.loopexit.epilog-lcssa:           ; preds = %bb.w, %.peel.next.i163.epil.preheader
  %.057.i165.epil = phi float [ %i.gg, %bb.w ], [ 0.000000e+00, %.peel.next.i163.epil.preheader ]
  %i.gh = getelementptr [4 x i8], ptr %.06473.i154, i64 %indvars.iv.i164.epil.init
  %i.gi = getelementptr i8, ptr %i.gh, i64 -4
  %i.gj = load float, ptr %i.gi, align 4
  %i.gk = tail call float @llvm.fmuladd.f32(float %i.gj, float %i.ff, float %.057.i165.epil)
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.06274.i153, i64 %indvars.iv.i164.epil.init
  store float %i.gk, ptr %i.gl, align 4
  br label %._crit_edge.i156

._crit_edge.i156:                                 ; preds = %._crit_edge.i156.loopexit.epilog-lcssa, %._crit_edge.i156.loopexit.unr-lcssa, %bb.s, %.lr.ph77.i151
  %indvars.iv.next95.i157 = add nuw nsw i64 %indvars.iv94.i152, 1 ; 2 uses
  %exitcond98.i158 = icmp eq i64 %indvars.iv.next95.i157, %wide.trip.count97.i150
  %indvar.next37 = add i32 %indvar36, 1
  br i1 %exitcond98.i158, label %._crit_edge78.i, label %.lr.ph77.i151, !llvm.loop !15

._crit_edge78.i:                                  ; preds = %._crit_edge.i156, %calc_distr.exit
  %.064.lcssa.i159 = phi ptr [ %i.ev, %calc_distr.exit ], [ %.06274.i153, %._crit_edge.i156 ] ; 10 uses
  %.062.lcssa.i160 = phi ptr [ %i.ew, %calc_distr.exit ], [ %.06473.i154, %._crit_edge.i156 ] ; 11 uses
  %i.gm = fpext float %.6123.lcssa to double
  %i.gn = fcmp ogt double %i.gm, 5.000000e-03
  br i1 %i.gn, label %.preheader70.i, label %calc_distr.exit168

.preheader70.i:                                   ; preds = %._crit_edge78.i
  %.not6780.i = icmp slt i32 %.2135, 0
  br i1 %.not6780.i, label %._crit_edge83.thread.i, label %.preheader.preheader.i

._crit_edge83.thread.i:                           ; preds = %.preheader70.i
  %i.go = fcmp ogt float %.6123.lcssa, 7.450000e+02
  %i.gp = fcmp olt float %.6123.lcssa, -7.090000e+02
  %i.gq = or i1 %i.gp, %i.go
  br i1 %i.gq, label %cdce.call, label %calc_distr.exit168, !prof !16

cdce.call:                                        ; preds = %._crit_edge83.thread.i
  %i.gr = tail call double @exp(double noundef %i.cn) #9 ; 0 uses
  br label %calc_distr.exit168

.preheader.preheader.i:                           ; preds = %.preheader70.i
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.df, i32 1)
  %i.gs = zext nneg i32 %smax.i to i64            ; 2 uses
  %i.gt = shl nuw nsw i64 %i.gs, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.062.lcssa.i160, i8 0, i64 %i.gt, i1 false)
  %i.gu = tail call double @exp(double noundef %i.cn) #9
  %i.gv = fptrunc double %i.gu to float
  %scevgep15 = getelementptr i8, ptr %.064.lcssa.i159, i64 4
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge87.i, %.preheader.preheader.i
  %indvars.iv244 = phi i32 [ %indvars.iv.next245, %._crit_edge87.i ], [ %.2135, %.preheader.preheader.i ] ; 5 uses
  %indvars.iv105.i = phi i64 [ %indvars.iv.next106.i, %._crit_edge87.i ], [ 0, %.preheader.preheader.i ] ; 8 uses
  %.090.i = phi float [ %i.it, %._crit_edge87.i ], [ %i.gv, %.preheader.preheader.i ] ; 5 uses
  %i.gw = shl nuw nsw i64 %indvars.iv105.i, 2     ; 2 uses
  %scevgep = getelementptr i8, ptr %.062.lcssa.i160, i64 %i.gw
  %i.gx = getelementptr i8, ptr %.062.lcssa.i160, i64 %i.gw
  %scevgep13 = getelementptr i8, ptr %i.gx, i64 4
  %i.gy = zext i32 %indvars.iv244 to i64
  %i.gz = shl nuw nsw i64 %i.gy, 2                ; 2 uses
  %scevgep14 = getelementptr i8, ptr %scevgep13, i64 %i.gz
  %scevgep16 = getelementptr i8, ptr %scevgep15, i64 %i.gz
  %i.ha = shl nuw nsw i64 %indvars.iv105.i, 2
  %i.hb = trunc i64 %i.ha to i34                  ; 2 uses
  %i.hc = zext i32 %indvars.iv244 to i64          ; 4 uses
  %i.hd = trunc nuw nsw i64 %indvars.iv105.i to i32
  %i.he = sub i32 %.2135, %i.hd
  %.not6984.i = icmp slt i32 %i.he, 0
  br i1 %.not6984.i, label %._crit_edge87.i, label %.lr.ph86.i.preheader

.lr.ph86.i.preheader:                             ; preds = %.preheader.i
  %i.hf = add nuw nsw i64 %i.hc, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %indvars.iv244, 11
  br i1 %min.iters.check, label %.lr.ph86.i.preheader23, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph86.i.preheader
  %i.hg = zext i32 %indvars.iv244 to i34
  %mul = shl nuw i34 %i.hg, 2
  %i.hh = add i34 %mul, %i.hb
  %i.hi = icmp slt i34 %i.hh, %i.hb
  br i1 %i.hi, label %.lr.ph86.i.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep, %scevgep16
  %bound1 = icmp ult ptr %.064.lcssa.i159, %scevgep14
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph86.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hf, 8589934584              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.090.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i159, i64 %index ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %wide.load = load <4 x float>, ptr %i.hj, align 4, !alias.scope !17
  %wide.load17 = load <4 x float>, ptr %i.hk, align 4, !alias.scope !17
  %i.hl = add nuw nsw i64 %index, %indvars.iv105.i
  %i.hm = shl i64 %i.hl, 32
  %i.hn = ashr exact i64 %i.hm, 30
  %i.ho = getelementptr inbounds i8, ptr %.062.lcssa.i160, i64 %i.hn ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16 ; 2 uses
  %wide.load18 = load <4 x float>, ptr %i.ho, align 4, !alias.scope !20, !noalias !17
  %wide.load19 = load <4 x float>, ptr %i.hp, align 4, !alias.scope !20, !noalias !17
  %i.hq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load18)
  %i.hr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load17, <4 x float> %broadcast.splat, <4 x float> %wide.load19)
  store <4 x float> %i.hq, ptr %i.ho, align 4, !alias.scope !20, !noalias !17
  store <4 x float> %i.hr, ptr %i.hp, align 4, !alias.scope !20, !noalias !17
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hs = icmp eq i64 %index.next, %n.vec
  br i1 %i.hs, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hf, %n.vec
  br i1 %cmp.n, label %._crit_edge87.i, label %.lr.ph86.i.preheader23

.lr.ph86.i.preheader23:                           ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph86.i.preheader, %middle.block
  %indvars.iv102.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph86.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %i.ht = and i64 %i.hc, 1
  %lcmp.mod45.not.not = icmp eq i64 %i.ht, 0
  br i1 %lcmp.mod45.not.not, label %.lr.ph86.i.prol, label %.lr.ph86.i.prol.loopexit

.lr.ph86.i.prol:                                  ; preds = %.lr.ph86.i.preheader23
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i159, i64 %indvars.iv102.i.ph
  %i.hv = load float, ptr %i.hu, align 4
  %i.hw = add nuw nsw i64 %indvars.iv102.i.ph, %indvars.iv105.i
  %sext.i.prol = shl i64 %i.hw, 32
  %i.hx = ashr exact i64 %sext.i.prol, 30
  %i.hy = getelementptr inbounds i8, ptr %.062.lcssa.i160, i64 %i.hx ; 2 uses
  %i.hz = load float, ptr %i.hy, align 4
  %i.ia = tail call float @llvm.fmuladd.f32(float %i.hv, float %.090.i, float %i.hz)
  store float %i.ia, ptr %i.hy, align 4
  %indvars.iv.next103.i.prol = or disjoint i64 %indvars.iv102.i.ph, 1
  br label %.lr.ph86.i.prol.loopexit

.lr.ph86.i.prol.loopexit:                         ; preds = %.lr.ph86.i.prol, %.lr.ph86.i.preheader23
  %indvars.iv102.i.unr = phi i64 [ %indvars.iv102.i.ph, %.lr.ph86.i.preheader23 ], [ %indvars.iv.next103.i.prol, %.lr.ph86.i.prol ]
  %i.ib = icmp eq i64 %indvars.iv102.i.ph, %i.hc
  br i1 %i.ib, label %._crit_edge87.i, label %.lr.ph86.i

.lr.ph86.i:                                       ; preds = %.lr.ph86.i.prol.loopexit, %.lr.ph86.i
  %indvars.iv102.i = phi i64 [ %indvars.iv.next103.i.1, %.lr.ph86.i ], [ %indvars.iv102.i.unr, %.lr.ph86.i.prol.loopexit ] ; 4 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i159, i64 %indvars.iv102.i
  %i.id = load float, ptr %i.ic, align 4
  %i.ie = add nuw nsw i64 %indvars.iv102.i, %indvars.iv105.i
  %sext.i = shl i64 %i.ie, 32
  %i.if = ashr exact i64 %sext.i, 30
  %i.ig = getelementptr inbounds i8, ptr %.062.lcssa.i160, i64 %i.if ; 2 uses
  %i.ih = load float, ptr %i.ig, align 4
  %i.ii = tail call float @llvm.fmuladd.f32(float %i.id, float %.090.i, float %i.ih)
  store float %i.ii, ptr %i.ig, align 4
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1 ; 3 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i159, i64 %indvars.iv.next103.i
  %i.ik = load float, ptr %i.ij, align 4
  %i.il = add nuw nsw i64 %indvars.iv.next103.i, %indvars.iv105.i
  %sext.i.1 = shl i64 %i.il, 32
  %i.im = ashr exact i64 %sext.i.1, 30
  %i.in = getelementptr inbounds i8, ptr %.062.lcssa.i160, i64 %i.im ; 2 uses
  %i.io = load float, ptr %i.in, align 4
  %i.ip = tail call float @llvm.fmuladd.f32(float %i.ik, float %.090.i, float %i.io)
  store float %i.ip, ptr %i.in, align 4
  %indvars.iv.next103.i.1 = add nuw nsw i64 %indvars.iv102.i, 2
  %exitcond246.not.1 = icmp eq i64 %indvars.iv.next103.i, %i.hc
  br i1 %exitcond246.not.1, label %._crit_edge87.i, label %.lr.ph86.i, !llvm.loop !25

._crit_edge87.i:                                  ; preds = %.lr.ph86.i.prol.loopexit, %.lr.ph86.i, %middle.block, %.preheader.i
  %indvars.iv.next106.i = add nuw nsw i64 %indvars.iv105.i, 1 ; 3 uses
  %i.iq = trunc nuw nsw i64 %indvars.iv.next106.i to i32
  %i.ir = sitofp i32 %i.iq to float
  %i.is = fdiv float %.6123.lcssa, %i.ir
  %i.it = fmul float %.090.i, %i.is
  %exitcond110.i = icmp eq i64 %indvars.iv.next106.i, %i.gs
  %indvars.iv.next245 = add i32 %indvars.iv244, -1
  br i1 %exitcond110.i, label %calc_distr.exit168, label %.preheader.i, !llvm.loop !26

calc_distr.exit168:                               ; preds = %._crit_edge87.i, %cdce.call, %._crit_edge83.thread.i, %._crit_edge78.i
  %.165.i = phi ptr [ %.064.lcssa.i159, %._crit_edge78.i ], [ %.062.lcssa.i160, %cdce.call ], [ %.062.lcssa.i160, %._crit_edge83.thread.i ], [ %.062.lcssa.i160, %._crit_edge87.i ] ; 4 uses
  %.163.i = phi ptr [ %.062.lcssa.i160, %._crit_edge78.i ], [ %.064.lcssa.i159, %cdce.call ], [ %.064.lcssa.i159, %._crit_edge83.thread.i ], [ %.064.lcssa.i159, %._crit_edge87.i ]
  tail call void @pfree(ptr noundef %.163.i) #9
  %i.iu = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.dg) #9 ; 5 uses
  %i.iv = add nsw i32 %7, -2
  %i.iw = uitofp nneg i32 %i.iv to float
  %i.ix = fdiv float 1.000000e+00, %i.iw          ; 2 uses
  %.not54.i = icmp slt i32 %.2135, 0
  br i1 %.not54.i, label %._crit_edge218, label %.preheader.preheader.i169

.preheader.preheader.i169:                        ; preds = %calc_distr.exit168
  %smax.i170 = tail call i32 @llvm.smax.i32(i32 %i.df, i32 1) ; 2 uses
  %wide.trip.count.i171 = zext nneg i32 %smax.i170 to i64 ; 3 uses
  br label %.preheader.i172

.preheader.i172:                                  ; preds = %bb.ab, %.preheader.preheader.i169
  %indvars.iv64.i = phi i64 [ 0, %.preheader.preheader.i169 ], [ %indvars.iv.next65.i, %bb.ab ] ; 3 uses
  %.04059.i = phi float [ 0.000000e+00, %.preheader.preheader.i169 ], [ %.141.i, %bb.ab ] ; 6 uses
  %.04258.i = phi i32 [ 0, %.preheader.preheader.i169 ], [ %.14348.i, %bb.ab ] ; 4 uses
  %i.iy = icmp slt i32 %.04258.i, %i.l
  br i1 %i.iy, label %.lr.ph.i, label %.critedge.thread.thread.i

.lr.ph.i:                                         ; preds = %.preheader.i172
  %i.iz = trunc nuw nsw i64 %indvars.iv64.i to i32
  %i.ja = sitofp i32 %i.iz to float
  %i.jb = sext i32 %.04258.i to i64
  %i.jc = sub i32 %i.l, %.04258.i                 ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph.i
  %indvars.iv.i174 = phi i64 [ %i.jb, %.lr.ph.i ], [ %indvars.iv.next.i175, %bb.y ] ; 4 uses
  %.03852.i = phi i32 [ 0, %.lr.ph.i ], [ %i.jg, %bb.y ] ; 3 uses
  %i.jd = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv.i174
  %i.je = load float, ptr %i.jd, align 4          ; 2 uses
  %i.jf = fcmp ugt float %i.je, %i.ja
  br i1 %i.jf, label %.critedge.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.jg = add nuw i32 %.03852.i, 1                ; 2 uses
  %indvars.iv.next.i175 = add nsw i64 %indvars.iv.i174, 1 ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.jg, %i.jc
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %bb.x, !llvm.loop !27

.critedge.i:                                      ; preds = %bb.x
  %i.jh = trunc nsw i64 %indvars.iv.i174 to i32   ; 2 uses
  %i.ji = icmp sgt i32 %.03852.i, 0
  br i1 %i.ji, label %bb.z, label %.critedge.thread.thread.i

.critedge.thread.i:                               ; preds = %bb.y
  %i.jj = trunc nsw i64 %indvars.iv.next.i175 to i32 ; 2 uses
  %i.jk = icmp sgt i32 %i.jc, 0
  br i1 %i.jk, label %.thread.i, label %.critedge.thread.thread.i

bb.z:                                             ; preds = %.critedge.i
  %i.jl = shl i64 %indvars.iv.i174, 32
  %sext.i176 = add i64 %i.jl, -4294967296
  %i.jm = ashr exact i64 %sext.i176, 30
  %i.jn = getelementptr inbounds i8, ptr %6, i64 %i.jm
  %i.jo = load float, ptr %i.jn, align 4
  %i.jp = fsub float %i.je, %i.jo
  br label %.thread.i

.thread.i:                                        ; preds = %bb.z, %.critedge.thread.i
  %.14350.i = phi i32 [ %i.jh, %bb.z ], [ %i.jj, %.critedge.thread.i ]
  %.03846.i = phi i32 [ %.03852.i, %bb.z ], [ %i.jc, %.critedge.thread.i ]
  %.039.i = phi float [ %i.jp, %bb.z ], [ 0.000000e+00, %.critedge.thread.i ] ; 3 uses
  %i.jq = add nsw i32 %.03846.i, -1
  %i.jr = uitofp nneg i32 %i.jq to float
  %i.js = fcmp ogt float %.039.i, 0.000000e+00
  %i.jt = insertelement <2 x float> poison, float %.039.i, i64 0
  %i.ju = insertelement <2 x float> %i.jt, float %.04059.i, i64 1
  %i.jv = fdiv <2 x float> splat (float 5.000000e-01), %i.ju ; 2 uses
  %i.jw = extractelement <2 x float> %i.jv, i64 0
  %i.jx = select i1 %i.js, float %i.jw, float -0.000000e+00
  %.0.i = fadd float %i.jx, %i.jr                 ; 2 uses
  %i.jy = fcmp ogt float %.04059.i, 0.000000e+00
  %i.jz = extractelement <2 x float> %i.jv, i64 1
  %i.ka = fadd float %i.jz, %.0.i
  %.1.i = select i1 %i.jy, float %i.ka, float %.0.i
  %i.kb = fmul float %i.ix, %.1.i
  br label %bb.ab

.critedge.thread.thread.i:                        ; preds = %.critedge.thread.i, %.critedge.i, %.preheader.i172
  %.14349.i = phi i32 [ %i.jj, %.critedge.thread.i ], [ %i.jh, %.critedge.i ], [ %.04258.i, %.preheader.i172 ] ; 2 uses
  %i.kc = fcmp ogt float %.04059.i, 0.000000e+00
  br i1 %i.kc, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.critedge.thread.thread.i
  %i.kd = fdiv float %i.ix, %.04059.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge.thread.thread.i, %.thread.i
  %.sink.i = phi float [ %i.kd, %bb.aa ], [ %i.kb, %.thread.i ], [ 0.000000e+00, %.critedge.thread.thread.i ]
  %.14348.i = phi i32 [ %.14349.i, %bb.aa ], [ %.14350.i, %.thread.i ], [ %.14349.i, %.critedge.thread.thread.i ]
  %.141.i = phi float [ %.04059.i, %bb.aa ], [ %.039.i, %.thread.i ], [ %.04059.i, %.critedge.thread.thread.i ]
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %indvars.iv64.i
  store float %.sink.i, ptr %i.ke, align 4
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond67.i = icmp eq i64 %indvars.iv.next65.i, %wide.trip.count.i171
  br i1 %exitcond67.i, label %.lr.ph217.preheader, label %.preheader.i172, !llvm.loop !28

.lr.ph217.preheader:                              ; preds = %bb.ab
  %xtraiter47 = and i64 %wide.trip.count.i171, 1
  %i.kf = icmp slt i32 %i.df, 2
  br i1 %i.kf, label %.lr.ph217.epil.preheader, label %.lr.ph217.preheader.new

.lr.ph217.preheader.new:                          ; preds = %.lr.ph217.preheader
  %unroll_iter51 = and i64 %wide.trip.count.i171, 2147483646
  br label %.lr.ph217

.lr.ph217:                                        ; preds = %bb.ae, %.lr.ph217.preheader.new
  %indvars.iv247 = phi i64 [ 0, %.lr.ph217.preheader.new ], [ %indvars.iv.next248.1, %bb.ae ] ; 5 uses
  %.0130216 = phi float [ 0.000000e+00, %.lr.ph217.preheader.new ], [ %.1131.1, %bb.ae ] ; 2 uses
  %niter52 = phi i64 [ 0, %.lr.ph217.preheader.new ], [ %niter52.next.1, %bb.ae ]
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.165.i, i64 %indvars.iv247
  %i.kh = load float, ptr %i.kg, align 4          ; 2 uses
  %i.ki = fcmp ogt float %i.kh, 0.000000e+00
  br i1 %i.ki, label %bb.ac, label %.lr.ph217.1

bb.ac:                                            ; preds = %.lr.ph217
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %indvars.iv247
  %i.kk = load float, ptr %i.kj, align 4
  %i.kl = fmul float %i.kk, %i.cr
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i, i64 %indvars.iv247
  %i.kn = load float, ptr %i.km, align 4
  %i.ko = fmul float %i.kl, %i.kn
  %i.kp = fdiv float %i.ko, %i.kh
  %i.kq = fadd float %.0130216, %i.kp
  br label %.lr.ph217.1

.lr.ph217.1:                                      ; preds = %.lr.ph217, %bb.ac
  %.1131 = phi float [ %i.kq, %bb.ac ], [ %.0130216, %.lr.ph217 ] ; 2 uses
  %indvars.iv.next248 = or disjoint i64 %indvars.iv247, 1 ; 3 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %.165.i, i64 %indvars.iv.next248
  %i.ks = load float, ptr %i.kr, align 4          ; 2 uses
  %i.kt = fcmp ogt float %i.ks, 0.000000e+00
  br i1 %i.kt, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph217.1
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %indvars.iv.next248
  %i.kv = load float, ptr %i.ku, align 4
  %i.kw = fmul float %i.kv, %i.cr
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i, i64 %indvars.iv.next248
  %i.ky = load float, ptr %i.kx, align 4
  %i.kz = fmul float %i.kw, %i.ky
  %i.la = fdiv float %i.kz, %i.ks
  %i.lb = fadd float %.1131, %i.la
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph217.1
  %.1131.1 = phi float [ %i.lb, %bb.ad ], [ %.1131, %.lr.ph217.1 ] ; 3 uses
  %indvars.iv.next248.1 = add nuw nsw i64 %indvars.iv247, 2 ; 2 uses
  %niter52.next.1 = add i64 %niter52, 2           ; 2 uses
  %niter52.ncmp.1 = icmp eq i64 %niter52.next.1, %unroll_iter51
  br i1 %niter52.ncmp.1, label %._crit_edge218.loopexit.unr-lcssa, label %.lr.ph217, !llvm.loop !29

._crit_edge218.loopexit.unr-lcssa:                ; preds = %bb.ae
  %lcmp.mod48.not = icmp eq i64 %xtraiter47, 0
  br i1 %lcmp.mod48.not, label %._crit_edge218, label %.lr.ph217.epil.preheader

.lr.ph217.epil.preheader:                         ; preds = %._crit_edge218.loopexit.unr-lcssa, %.lr.ph217.preheader
  %indvars.iv247.epil.init = phi i64 [ 0, %.lr.ph217.preheader ], [ %indvars.iv.next248.1, %._crit_edge218.loopexit.unr-lcssa ] ; 3 uses
end_hunk_0

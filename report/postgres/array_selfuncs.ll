Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/array_selfuncs?download=true
inline.NumInlined: 29
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@mcelem_array_contained_selec:bb.a
._crit_edge.i.unr-lcssa:                          ; preds = %bb.q
  %lcmp.mod31.not = icmp eq i64 %xtraiter30, 0
  br i1 %lcmp.mod31.not, label %._crit_edge.i, label %.peel.next.i.epil.preheader

.peel.next.i.epil.preheader:                      ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph77.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph77.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 4 uses
  %lcmp.mod32 = trunc i64 %i.dn to i1
  tail call void @llvm.assume(i1 %lcmp.mod32)
  %i.em = icmp samesign ult i64 %indvars.iv.i.epil.init, %indvars.iv91.i
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
  %indvars.iv.next92.i = add nuw nsw i64 %indvars.iv91.i, 1 ; 2 uses
  %exitcond95.i = icmp eq i64 %indvars.iv.next92.i, %wide.trip.count94.i
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond95.i, label %calc_distr.exit, label %.lr.ph77.i, !llvm.loop !13

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
  %wide.trip.count94.i150 = zext i32 %i.ex to i64
  br label %.lr.ph77.i151

.lr.ph77.i151:                                    ; preds = %._crit_edge.i156, %.lr.ph77.preheader.i149
  %indvar33 = phi i32 [ %indvar.next34, %._crit_edge.i156 ], [ 0, %.lr.ph77.preheader.i149 ] ; 2 uses
  %indvars.iv91.i152 = phi i64 [ %indvars.iv.next92.i157, %._crit_edge.i156 ], [ 1, %.lr.ph77.preheader.i149 ] ; 6 uses
  %.06274.i153 = phi ptr [ %.06473.i154, %._crit_edge.i156 ], [ %i.ew, %.lr.ph77.preheader.i149 ] ; 6 uses
  %.06473.i154 = phi ptr [ %.06274.i153, %._crit_edge.i156 ], [ %i.ev, %.lr.ph77.preheader.i149 ] ; 9 uses
  %i.ey = add i32 %indvar33, 1
  %smin35 = tail call i32 @llvm.smin.i32(i32 %.2135, i32 %i.ey)
  %i.ez = add i32 %smin35, 1                      ; 2 uses
  %i.fa = zext i32 %i.ez to i64
  %i.fb = add nsw i64 %i.fa, -1                   ; 3 uses
  %i.fc = trunc nuw nsw i64 %indvars.iv91.i152 to i32
  %smin.i155 = tail call i32 @llvm.smin.i32(i32 %.2135, i32 %i.fc) ; 2 uses
  %i.fd = getelementptr [4 x i8], ptr %2, i64 %indvars.iv91.i152
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
  %xtraiter36 = and i64 %i.fb, 1
  %i.fk = icmp eq i32 %i.ez, 2
  br i1 %i.fk, label %.peel.next.i163.epil.preheader, label %.peel.next.i163.preheader.new

.peel.next.i163.preheader.new:                    ; preds = %.peel.next.i163.preheader
  %unroll_iter39 = and i64 %i.fb, -2
  br label %.peel.next.i163

.peel.next.i163:                                  ; preds = %bb.v, %.peel.next.i163.preheader.new
  %indvars.iv.i164 = phi i64 [ 1, %.peel.next.i163.preheader.new ], [ %indvars.iv.next.i166.1, %bb.v ] ; 6 uses
  %niter40 = phi i64 [ 0, %.peel.next.i163.preheader.new ], [ %niter40.next.1, %bb.v ]
  %i.fl = icmp samesign ult i64 %indvars.iv.i164, %indvars.iv91.i152
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
  %i.fu = icmp samesign ult i64 %indvars.iv.next.i166, %indvars.iv91.i152
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
  %niter40.next.1 = add i64 %niter40, 2           ; 2 uses
  %niter40.ncmp.1 = icmp eq i64 %niter40.next.1, %unroll_iter39
  br i1 %niter40.ncmp.1, label %._crit_edge.i156.loopexit.unr-lcssa, label %.peel.next.i163, !llvm.loop !12

._crit_edge.i156.loopexit.unr-lcssa:              ; preds = %bb.v
  %lcmp.mod37.not = icmp eq i64 %xtraiter36, 0
  br i1 %lcmp.mod37.not, label %._crit_edge.i156, label %.peel.next.i163.epil.preheader

.peel.next.i163.epil.preheader:                   ; preds = %._crit_edge.i156.loopexit.unr-lcssa, %.peel.next.i163.preheader
  %indvars.iv.i164.epil.init = phi i64 [ 1, %.peel.next.i163.preheader ], [ %indvars.iv.next.i166.1, %._crit_edge.i156.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod38 = trunc i64 %i.fb to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.gd = icmp samesign ult i64 %indvars.iv.i164.epil.init, %indvars.iv91.i152
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
  %indvars.iv.next92.i157 = add nuw nsw i64 %indvars.iv91.i152, 1 ; 2 uses
  %exitcond95.i158 = icmp eq i64 %indvars.iv.next92.i157, %wide.trip.count94.i150
  %indvar.next34 = add i32 %indvar33, 1
  br i1 %exitcond95.i158, label %._crit_edge78.i, label %.lr.ph77.i151, !llvm.loop !13

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
  br i1 %i.gq, label %cdce.call, label %calc_distr.exit168, !prof !25

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
  %narrow = add nuw i32 %.2135, 1
  %i.gw = zext i32 %narrow to i64                 ; 3 uses
  %i.gx = zext nneg i32 %.2135 to i64
  %i.gy = shl nuw nsw i64 %i.gw, 2
  %scevgep13 = getelementptr i8, ptr %.062.lcssa.i160, i64 %i.gy
  %i.gz = zext nneg i32 %.2135 to i64
  %bound1 = icmp ult ptr %.064.lcssa.i159, %scevgep13
  br label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit, %.preheader.preheader.i
  %indvars.iv244 = phi i64 [ %indvars.iv.next245, %.loopexit ], [ %i.gw, %.preheader.preheader.i ] ; 6 uses
  %indvars.iv102.i = phi i64 [ %indvars.iv.next103.i, %.loopexit ], [ 0, %.preheader.preheader.i ] ; 10 uses
  %.087.i = phi float [ %i.iv, %.loopexit ], [ %i.gv, %.preheader.preheader.i ] ; 5 uses
  %min.iters.check = icmp ult i64 %indvars.iv244, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.i
  %i.ha = shl nuw nsw i64 %indvars.iv102.i, 2
  %i.hb = trunc i64 %i.ha to i34                  ; 2 uses
  %i.hc = sub nsw i64 %i.gx, %indvars.iv102.i     ; 2 uses
  %i.hd = trunc i64 %i.hc to i34
  %mul.result = shl i34 %i.hd, 2
  %i.he = add i34 %mul.result, %i.hb
  %i.hf = icmp slt i34 %i.he, %i.hb
  %i.hg = icmp ugt i64 %i.hc, 4294967295
  %i.hh = or i1 %i.hf, %i.hg
  br i1 %i.hh, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %9 = shl nuw nsw i64 %indvars.iv102.i, 2
  %10 = getelementptr i8, ptr %.062.lcssa.i160, i64 %9
  %11 = sub nsw i64 %i.gw, %indvars.iv102.i
  %12 = shl i64 %11, 2
  %13 = getelementptr i8, ptr %.064.lcssa.i159, i64 %12
  %bound0 = icmp ult ptr %10, %13
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %indvars.iv244, -8             ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.087.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i159, i64 %index ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %wide.load = load <4 x float>, ptr %i.hi, align 4, !alias.scope !26
  %wide.load15 = load <4 x float>, ptr %i.hj, align 4, !alias.scope !26
  %i.hk = add nuw nsw i64 %index, %indvars.iv102.i
  %i.hl = shl i64 %i.hk, 32
  %i.hm = ashr exact i64 %i.hl, 30
  %i.hn = getelementptr inbounds i8, ptr %.062.lcssa.i160, i64 %i.hm ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16 ; 2 uses
  %wide.load16 = load <4 x float>, ptr %i.hn, align 4, !alias.scope !27, !noalias !26
  %wide.load17 = load <4 x float>, ptr %i.ho, align 4, !alias.scope !27, !noalias !26
  %i.hp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load16)
  %i.hq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load15, <4 x float> %broadcast.splat, <4 x float> %wide.load17)
  store <4 x float> %i.hp, ptr %i.hn, align 4, !alias.scope !27, !noalias !26
  store <4 x float> %i.hq, ptr %i.ho, align 4, !alias.scope !27, !noalias !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hr = icmp eq i64 %index.next, %n.vec
  br i1 %i.hr, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv244, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader.i, %middle.block
  %indvars.iv99.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader.i ], [ %n.vec, %middle.block ] ; 5 uses
  %i.hs = add i64 %indvars.iv102.i, %indvars.iv99.i.ph
  %xtraiter41 = and i64 %indvars.iv244, 1
  %lcmp.mod42.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i159, i64 %indvars.iv99.i.ph
  %i.hu = load float, ptr %i.ht, align 4
  %i.hv = add nuw nsw i64 %indvars.iv99.i.ph, %indvars.iv102.i
  %i.hw = shl i64 %i.hv, 32
  %i.hx = ashr exact i64 %i.hw, 30
  %i.hy = getelementptr inbounds i8, ptr %.062.lcssa.i160, i64 %i.hx ; 2 uses
  %i.hz = load float, ptr %i.hy, align 4
  %i.ia = tail call float @llvm.fmuladd.f32(float %i.hu, float %.087.i, float %i.hz)
  store float %i.ia, ptr %i.hy, align 4
  %indvars.iv.next100.i.prol = or disjoint i64 %indvars.iv99.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv99.i.unr = phi i64 [ %indvars.iv99.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next100.i.prol, %scalar.ph.prol ]
  %i.ib = icmp eq i64 %i.hs, %i.gz
  br i1 %i.ib, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv99.i = phi i64 [ %indvars.iv.next100.i.1, %scalar.ph ], [ %indvars.iv99.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i159, i64 %indvars.iv99.i
  %i.id = load float, ptr %i.ic, align 4
  %i.ie = add nuw nsw i64 %indvars.iv99.i, %indvars.iv102.i
  %i.if = shl i64 %i.ie, 32
  %i.ig = ashr exact i64 %i.if, 30
  %i.ih = getelementptr inbounds i8, ptr %.062.lcssa.i160, i64 %i.ig ; 2 uses
  %i.ii = load float, ptr %i.ih, align 4
  %i.ij = tail call float @llvm.fmuladd.f32(float %i.id, float %.087.i, float %i.ii)
  store float %i.ij, ptr %i.ih, align 4
  %indvars.iv.next100.i = add nuw i64 %indvars.iv99.i, 1 ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i159, i64 %indvars.iv.next100.i
  %i.il = load float, ptr %i.ik, align 4
  %i.im = add nuw nsw i64 %indvars.iv.next100.i, %indvars.iv102.i
  %i.in = shl i64 %i.im, 32
  %i.io = ashr exact i64 %i.in, 30
  %i.ip = getelementptr inbounds i8, ptr %.062.lcssa.i160, i64 %i.io ; 2 uses
  %i.iq = load float, ptr %i.ip, align 4
  %i.ir = tail call float @llvm.fmuladd.f32(float %i.il, float %.087.i, float %i.iq)
  store float %i.ir, ptr %i.ip, align 4
  %indvars.iv.next100.i.1 = add nuw i64 %indvars.iv99.i, 2 ; 2 uses
  %exitcond246.not.1 = icmp eq i64 %indvars.iv.next100.i.1, %indvars.iv244
  br i1 %exitcond246.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !18

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1 ; 3 uses
  %i.is = trunc nuw nsw i64 %indvars.iv.next103.i to i32
  %i.it = sitofp i32 %i.is to float
  %i.iu = fdiv float %.6123.lcssa, %i.it
  %i.iv = fmul float %.087.i, %i.iu
  %exitcond107.i = icmp eq i64 %indvars.iv.next103.i, %i.gs
  %indvars.iv.next245 = add nsw i64 %indvars.iv244, -1
  br i1 %exitcond107.i, label %calc_distr.exit168, label %.preheader.i, !llvm.loop !19

calc_distr.exit168:                               ; preds = %.loopexit, %cdce.call, %._crit_edge83.thread.i, %._crit_edge78.i
  %.165.i = phi ptr [ %.064.lcssa.i159, %._crit_edge78.i ], [ %.062.lcssa.i160, %cdce.call ], [ %.062.lcssa.i160, %._crit_edge83.thread.i ], [ %.062.lcssa.i160, %.loopexit ] ; 4 uses
  %.163.i = phi ptr [ %.062.lcssa.i160, %._crit_edge78.i ], [ %.064.lcssa.i159, %cdce.call ], [ %.064.lcssa.i159, %._crit_edge83.thread.i ], [ %.064.lcssa.i159, %.loopexit ]
  tail call void @pfree(ptr noundef %.163.i) #9
  %i.iw = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.dg) #9 ; 5 uses
  %i.ix = add nsw i32 %7, -2
  %i.iy = uitofp nneg i32 %i.ix to float
  %i.iz = fdiv float 1.000000e+00, %i.iy          ; 2 uses
  %.not54.i = icmp slt i32 %.2135, 0
  br i1 %.not54.i, label %._crit_edge217, label %.preheader.preheader.i169

.preheader.preheader.i169:                        ; preds = %calc_distr.exit168
  %smax.i170 = tail call i32 @llvm.smax.i32(i32 %i.df, i32 1) ; 2 uses
  %wide.trip.count.i171 = zext nneg i32 %smax.i170 to i64 ; 3 uses
  br label %.preheader.i172

.preheader.i172:                                  ; preds = %bb.ab, %.preheader.preheader.i169
  %indvars.iv64.i = phi i64 [ 0, %.preheader.preheader.i169 ], [ %indvars.iv.next65.i, %bb.ab ] ; 3 uses
  %.04059.i = phi float [ 0.000000e+00, %.preheader.preheader.i169 ], [ %.141.i, %bb.ab ] ; 6 uses
  %.04258.i = phi i32 [ 0, %.preheader.preheader.i169 ], [ %.14348.i, %bb.ab ] ; 4 uses
  %i.ja = icmp slt i32 %.04258.i, %i.l
  br i1 %i.ja, label %.lr.ph.i, label %.critedge.thread.thread.i

.lr.ph.i:                                         ; preds = %.preheader.i172
  %i.jb = trunc nuw nsw i64 %indvars.iv64.i to i32
  %i.jc = sitofp i32 %i.jb to float
  %i.jd = sext i32 %.04258.i to i64
  %i.je = sub i32 %i.l, %.04258.i                 ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph.i
  %indvars.iv.i174 = phi i64 [ %i.jd, %.lr.ph.i ], [ %indvars.iv.next.i175, %bb.y ] ; 4 uses
  %.03852.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ji, %bb.y ] ; 3 uses
  %i.jf = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv.i174
  %i.jg = load float, ptr %i.jf, align 4          ; 2 uses
  %i.jh = fcmp ugt float %i.jg, %i.jc
  br i1 %i.jh, label %.critedge.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ji = add nuw i32 %.03852.i, 1                ; 2 uses
  %indvars.iv.next.i175 = add nsw i64 %indvars.iv.i174, 1 ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ji, %i.je
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %bb.x, !llvm.loop !20

.critedge.i:                                      ; preds = %bb.x
  %i.jj = trunc nsw i64 %indvars.iv.i174 to i32   ; 2 uses
  %i.jk = icmp sgt i32 %.03852.i, 0
  br i1 %i.jk, label %bb.z, label %.critedge.thread.thread.i

.critedge.thread.i:                               ; preds = %bb.y
  %i.jl = trunc nsw i64 %indvars.iv.next.i175 to i32 ; 2 uses
  %i.jm = icmp sgt i32 %i.je, 0
  br i1 %i.jm, label %.thread.i, label %.critedge.thread.thread.i

bb.z:                                             ; preds = %.critedge.i
  %i.jn = shl i64 %indvars.iv.i174, 32
  %sext.i = add i64 %i.jn, -4294967296
  %i.jo = ashr exact i64 %sext.i, 30
  %i.jp = getelementptr inbounds i8, ptr %6, i64 %i.jo
  %i.jq = load float, ptr %i.jp, align 4
  %i.jr = fsub float %i.jg, %i.jq
  br label %.thread.i

.thread.i:                                        ; preds = %bb.z, %.critedge.thread.i
  %.14350.i = phi i32 [ %i.jj, %bb.z ], [ %i.jl, %.critedge.thread.i ]
  %.03846.i = phi i32 [ %.03852.i, %bb.z ], [ %i.je, %.critedge.thread.i ]
  %.039.i = phi float [ %i.jr, %bb.z ], [ 0.000000e+00, %.critedge.thread.i ] ; 3 uses
  %i.js = add nsw i32 %.03846.i, -1
  %i.jt = uitofp nneg i32 %i.js to float
  %i.ju = fcmp ogt float %.039.i, 0.000000e+00
  %i.jv = insertelement <2 x float> poison, float %.039.i, i64 0
  %i.jw = insertelement <2 x float> %i.jv, float %.04059.i, i64 1
  %i.jx = fdiv <2 x float> splat (float 5.000000e-01), %i.jw ; 2 uses
  %i.jy = extractelement <2 x float> %i.jx, i64 0
  %i.jz = select i1 %i.ju, float %i.jy, float -0.000000e+00
  %.0.i = fadd float %i.jz, %i.jt                 ; 2 uses
  %i.ka = fcmp ogt float %.04059.i, 0.000000e+00
  %i.kb = extractelement <2 x float> %i.jx, i64 1
  %i.kc = fadd float %i.kb, %.0.i
  %.1.i = select i1 %i.ka, float %i.kc, float %.0.i
  %i.kd = fmul float %i.iz, %.1.i
  br label %bb.ab

.critedge.thread.thread.i:                        ; preds = %.critedge.thread.i, %.critedge.i, %.preheader.i172
  %.14349.i = phi i32 [ %i.jl, %.critedge.thread.i ], [ %i.jj, %.critedge.i ], [ %.04258.i, %.preheader.i172 ] ; 2 uses
  %i.ke = fcmp ogt float %.04059.i, 0.000000e+00
  br i1 %i.ke, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.critedge.thread.thread.i
  %i.kf = fdiv float %i.iz, %.04059.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge.thread.thread.i, %.thread.i
  %.sink.i = phi float [ %i.kf, %bb.aa ], [ %i.kd, %.thread.i ], [ 0.000000e+00, %.critedge.thread.thread.i ]
  %.14348.i = phi i32 [ %.14349.i, %bb.aa ], [ %.14350.i, %.thread.i ], [ %.14349.i, %.critedge.thread.thread.i ]
  %.141.i = phi float [ %.04059.i, %bb.aa ], [ %.039.i, %.thread.i ], [ %.04059.i, %.critedge.thread.thread.i ]
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv64.i
  store float %.sink.i, ptr %i.kg, align 4
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond67.i = icmp eq i64 %indvars.iv.next65.i, %wide.trip.count.i171
  br i1 %exitcond67.i, label %.lr.ph216.preheader, label %.preheader.i172, !llvm.loop !21

.lr.ph216.preheader:                              ; preds = %bb.ab
  %xtraiter44 = and i64 %wide.trip.count.i171, 1
  %i.kh = icmp slt i32 %i.df, 2
  br i1 %i.kh, label %.lr.ph216.epil.preheader, label %.lr.ph216.preheader.new

.lr.ph216.preheader.new:                          ; preds = %.lr.ph216.preheader
  %unroll_iter48 = and i64 %wide.trip.count.i171, 2147483646
  br label %.lr.ph216

.lr.ph216:                                        ; preds = %bb.ae, %.lr.ph216.preheader.new
  %indvars.iv247 = phi i64 [ 0, %.lr.ph216.preheader.new ], [ %indvars.iv.next248.1, %bb.ae ] ; 5 uses
  %.0130215 = phi float [ 0.000000e+00, %.lr.ph216.preheader.new ], [ %.1131.1, %bb.ae ] ; 2 uses
  %niter49 = phi i64 [ 0, %.lr.ph216.preheader.new ], [ %niter49.next.1, %bb.ae ]
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %.165.i, i64 %indvars.iv247
  %i.kj = load float, ptr %i.ki, align 4          ; 2 uses
  %i.kk = fcmp ogt float %i.kj, 0.000000e+00
  br i1 %i.kk, label %bb.ac, label %.lr.ph216.1

bb.ac:                                            ; preds = %.lr.ph216
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv247
  %i.km = load float, ptr %i.kl, align 4
  %i.kn = fmul float %i.km, %i.cr
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa.i, i64 %indvars.iv247
  %i.kp = load float, ptr %i.ko, align 4
  %i.kq = fmul float %i.kn, %i.kp
  %i.kr = fdiv float %i.kq, %i.kj
  %i.ks = fadd float %.0130215, %i.kr
  br label %.lr.ph216.1

.lr.ph216.1:                                      ; preds = %.lr.ph216, %bb.ac
  %.1131 = phi float [ %i.ks, %bb.ac ], [ %.0130215, %.lr.ph216 ] ; 2 uses
  %indvars.iv.next248 = or disjoint i64 %indvars.iv247, 1 ; 3 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.165.i, i64 %indvars.iv.next248
  %i.ku = load float, ptr %i.kt, align 4          ; 2 uses
  %i.kv = fcmp ogt float %i.ku, 0.000000e+00
  br i1 %i.kv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph216.1
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv.next248
  %i.kx = load float, ptr %i.kw, align 4
end_hunk_0

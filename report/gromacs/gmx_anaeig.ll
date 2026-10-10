Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_anaeig?download=true
inline.NumInlined: 415
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZL17write_xvgr_graphsPKciiS0_S0_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_iPfPSA_PSB_fbbPK16gmx_output_env_t:bb.a
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv225.2
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !28 ; 4 uses
  %i.gj = fcmp olt float %i.gi, %spec.select189.us.3.2
  %spec.select189.us.4.2 = select i1 %i.gj, float %i.gi, float %spec.select189.us.3.2 ; 2 uses
  %i.gk = fcmp ogt float %i.gi, %.4.us.3.2
  %.4.us.4.2 = select i1 %i.gk, float %i.gi, float %.4.us.3.2 ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv225.2
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 20
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !28 ; 4 uses
  %i.go = fcmp olt float %i.gn, %spec.select189.us.4.2
  %spec.select189.us.5.2 = select i1 %i.go, float %i.gn, float %spec.select189.us.4.2 ; 2 uses
  %i.gp = fcmp ogt float %i.gn, %.4.us.4.2
  %.4.us.5.2 = select i1 %i.gp, float %i.gn, float %.4.us.4.2 ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv225.2
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !28 ; 4 uses
  %i.gt = fcmp olt float %i.gs, %spec.select189.us.5.2
  %spec.select189.us.6.2 = select i1 %i.gt, float %i.gs, float %spec.select189.us.5.2 ; 2 uses
  %i.gu = fcmp ogt float %i.gs, %.4.us.5.2
  %.4.us.6.2 = select i1 %i.gu, float %i.gs, float %.4.us.5.2 ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv225.2
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 28
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !28 ; 4 uses
  %i.gy = fcmp olt float %i.gx, %spec.select189.us.6.2
  %spec.select189.us.7.2 = select i1 %i.gy, float %i.gx, float %spec.select189.us.6.2 ; 3 uses
  %i.gz = fcmp ogt float %i.gx, %.4.us.6.2
  %.4.us.7.2 = select i1 %i.gz, float %i.gx, float %.4.us.6.2 ; 3 uses
  %indvars.iv.next226.7.2 = add nuw nsw i64 %indvars.iv225.2, 8 ; 2 uses
  %niter293.next.7.2 = add i64 %niter293.2, 8     ; 2 uses
  %niter293.ncmp.7.2 = icmp eq i64 %niter293.next.7.2, %unroll_iter292.2
  br i1 %niter293.ncmp.7.2, label %._crit_edge.us.unr-lcssa.2, label %.preheader194.us.new.2, !llvm.loop !215

._crit_edge.us.unr-lcssa.2:                       ; preds = %.preheader194.us.new.2
  br i1 %lcmp.mod288.2.not, label %._crit_edge.us.2, label %.epil.preheader.2

.epil.preheader.2:                                ; preds = %._crit_edge.us.unr-lcssa.2, %.preheader194.us.2
  %indvars.iv225.epil.init.2 = phi i64 [ 0, %.preheader194.us.2 ], [ %indvars.iv.next226.7.2, %._crit_edge.us.unr-lcssa.2 ]
  %.3203.us.epil.init.2 = phi float [ %.4.us.lcssa.1, %.preheader194.us.2 ], [ %.4.us.7.2, %._crit_edge.us.unr-lcssa.2 ]
  %.3165202.us.epil.init.2 = phi float [ %spec.select189.us.lcssa.1, %.preheader194.us.2 ], [ %spec.select189.us.7.2, %._crit_edge.us.unr-lcssa.2 ]
  call void @llvm.assume(i1 %lcmp.mod291.2)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader.2
  %indvars.iv225.epil.2 = phi i64 [ %indvars.iv225.epil.init.2, %.epil.preheader.2 ], [ %indvars.iv.next226.epil.2, %bb.l ] ; 2 uses
  %.3203.us.epil.2 = phi float [ %.3203.us.epil.init.2, %.epil.preheader.2 ], [ %.4.us.epil.2, %bb.l ] ; 2 uses
  %.3165202.us.epil.2 = phi float [ %.3165202.us.epil.init.2, %.epil.preheader.2 ], [ %spec.select189.us.epil.2, %bb.l ] ; 2 uses
  %epil.iter287.2 = phi i64 [ 0, %.epil.preheader.2 ], [ %epil.iter287.next.2, %bb.l ]
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv225.epil.2
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !28 ; 4 uses
  %i.hc = fcmp olt float %i.hb, %.3165202.us.epil.2
  %spec.select189.us.epil.2 = select i1 %i.hc, float %i.hb, float %.3165202.us.epil.2 ; 2 uses
  %i.hd = fcmp ogt float %i.hb, %.3203.us.epil.2
  %.4.us.epil.2 = select i1 %i.hd, float %i.hb, float %.3203.us.epil.2 ; 2 uses
  %indvars.iv.next226.epil.2 = add nuw nsw i64 %indvars.iv225.epil.2, 1
  %epil.iter287.next.2 = add i64 %epil.iter287.2, 1 ; 2 uses
  %epil.iter287.cmp.2.not = icmp eq i64 %epil.iter287.next.2, %xtraiter286.2
  br i1 %epil.iter287.cmp.2.not, label %._crit_edge.us.2, label %bb.l, !llvm.loop !216

._crit_edge.us.2:                                 ; preds = %bb.l, %._crit_edge.us.unr-lcssa.2
  %spec.select189.us.lcssa.2 = phi float [ %spec.select189.us.7.2, %._crit_edge.us.unr-lcssa.2 ], [ %spec.select189.us.epil.2, %bb.l ] ; 3 uses
  %.4.us.lcssa.2 = phi float [ %.4.us.7.2, %._crit_edge.us.unr-lcssa.2 ], [ %.4.us.epil.2, %bb.l ] ; 3 uses
  br i1 %exitcond234.not.2, label %.loopexit, label %.preheader194.us.3

.preheader194.us.3:                               ; preds = %._crit_edge.us.2
  %i.he = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !15 ; 9 uses
  br i1 %i.af, label %.epil.preheader.3, label %.preheader194.us.new.3

.preheader194.us.new.3:                           ; preds = %.preheader194.us.3, %.preheader194.us.new.3
  %indvars.iv225.3 = phi i64 [ %indvars.iv.next226.7.3, %.preheader194.us.new.3 ], [ 0, %.preheader194.us.3 ] ; 9 uses
  %.3203.us.3 = phi float [ %.4.us.7.3, %.preheader194.us.new.3 ], [ %.4.us.lcssa.2, %.preheader194.us.3 ] ; 2 uses
  %.3165202.us.3 = phi float [ %spec.select189.us.7.3, %.preheader194.us.new.3 ], [ %spec.select189.us.lcssa.2, %.preheader194.us.3 ] ; 2 uses
  %niter293.3 = phi i64 [ %niter293.next.7.3, %.preheader194.us.new.3 ], [ 0, %.preheader194.us.3 ]
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv225.3
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !28 ; 4 uses
  %i.hi = fcmp olt float %i.hh, %.3165202.us.3
  %spec.select189.us.3300 = select i1 %i.hi, float %i.hh, float %.3165202.us.3 ; 2 uses
  %i.hj = fcmp ogt float %i.hh, %.3203.us.3
  %.4.us.3301 = select i1 %i.hj, float %i.hh, float %.3203.us.3 ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv225.3
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !28 ; 4 uses
  %i.hn = fcmp olt float %i.hm, %spec.select189.us.3300
  %spec.select189.us.1.3 = select i1 %i.hn, float %i.hm, float %spec.select189.us.3300 ; 2 uses
  %i.ho = fcmp ogt float %i.hm, %.4.us.3301
  %.4.us.1.3 = select i1 %i.ho, float %i.hm, float %.4.us.3301 ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv225.3
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !28 ; 4 uses
  %i.hs = fcmp olt float %i.hr, %spec.select189.us.1.3
  %spec.select189.us.2.3 = select i1 %i.hs, float %i.hr, float %spec.select189.us.1.3 ; 2 uses
  %i.ht = fcmp ogt float %i.hr, %.4.us.1.3
  %.4.us.2.3 = select i1 %i.ht, float %i.hr, float %.4.us.1.3 ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv225.3
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 12
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !28 ; 4 uses
  %i.hx = fcmp olt float %i.hw, %spec.select189.us.2.3
  %spec.select189.us.3.3 = select i1 %i.hx, float %i.hw, float %spec.select189.us.2.3 ; 2 uses
  %i.hy = fcmp ogt float %i.hw, %.4.us.2.3
  %.4.us.3.3 = select i1 %i.hy, float %i.hw, float %.4.us.2.3 ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv225.3
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !28 ; 4 uses
  %i.ic = fcmp olt float %i.ib, %spec.select189.us.3.3
  %spec.select189.us.4.3 = select i1 %i.ic, float %i.ib, float %spec.select189.us.3.3 ; 2 uses
  %i.id = fcmp ogt float %i.ib, %.4.us.3.3
  %.4.us.4.3 = select i1 %i.id, float %i.ib, float %.4.us.3.3 ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv225.3
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 20
  %i.ig = load float, ptr %i.if, align 4, !tbaa !28 ; 4 uses
  %i.ih = fcmp olt float %i.ig, %spec.select189.us.4.3
  %spec.select189.us.5.3 = select i1 %i.ih, float %i.ig, float %spec.select189.us.4.3 ; 2 uses
  %i.ii = fcmp ogt float %i.ig, %.4.us.4.3
  %.4.us.5.3 = select i1 %i.ii, float %i.ig, float %.4.us.4.3 ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv225.3
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.il = load float, ptr %i.ik, align 4, !tbaa !28 ; 4 uses
  %i.im = fcmp olt float %i.il, %spec.select189.us.5.3
  %spec.select189.us.6.3 = select i1 %i.im, float %i.il, float %spec.select189.us.5.3 ; 2 uses
  %i.in = fcmp ogt float %i.il, %.4.us.5.3
  %.4.us.6.3 = select i1 %i.in, float %i.il, float %.4.us.5.3 ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv225.3
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 28
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !28 ; 4 uses
  %i.ir = fcmp olt float %i.iq, %spec.select189.us.6.3
  %spec.select189.us.7.3 = select i1 %i.ir, float %i.iq, float %spec.select189.us.6.3 ; 3 uses
  %i.is = fcmp ogt float %i.iq, %.4.us.6.3
  %.4.us.7.3 = select i1 %i.is, float %i.iq, float %.4.us.6.3 ; 3 uses
  %indvars.iv.next226.7.3 = add nuw nsw i64 %indvars.iv225.3, 8 ; 2 uses
  %niter293.next.7.3 = add i64 %niter293.3, 8     ; 2 uses
  %niter293.ncmp.7.3 = icmp eq i64 %niter293.next.7.3, %unroll_iter292.3
  br i1 %niter293.ncmp.7.3, label %._crit_edge.us.unr-lcssa.3, label %.preheader194.us.new.3, !llvm.loop !215

._crit_edge.us.unr-lcssa.3:                       ; preds = %.preheader194.us.new.3
  br i1 %lcmp.mod288.3.not, label %.loopexit, label %.epil.preheader.3

.epil.preheader.3:                                ; preds = %._crit_edge.us.unr-lcssa.3, %.preheader194.us.3
  %indvars.iv225.epil.init.3 = phi i64 [ 0, %.preheader194.us.3 ], [ %indvars.iv.next226.7.3, %._crit_edge.us.unr-lcssa.3 ]
  %.3203.us.epil.init.3 = phi float [ %.4.us.lcssa.2, %.preheader194.us.3 ], [ %.4.us.7.3, %._crit_edge.us.unr-lcssa.3 ]
  %.3165202.us.epil.init.3 = phi float [ %spec.select189.us.lcssa.2, %.preheader194.us.3 ], [ %spec.select189.us.7.3, %._crit_edge.us.unr-lcssa.3 ]
  call void @llvm.assume(i1 %lcmp.mod291.3)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader.3
  %indvars.iv225.epil.3 = phi i64 [ %indvars.iv225.epil.init.3, %.epil.preheader.3 ], [ %indvars.iv.next226.epil.3, %bb.m ] ; 2 uses
  %.3203.us.epil.3 = phi float [ %.3203.us.epil.init.3, %.epil.preheader.3 ], [ %.4.us.epil.3, %bb.m ] ; 2 uses
  %.3165202.us.epil.3 = phi float [ %.3165202.us.epil.init.3, %.epil.preheader.3 ], [ %spec.select189.us.epil.3, %bb.m ] ; 2 uses
  %epil.iter287.3 = phi i64 [ 0, %.epil.preheader.3 ], [ %epil.iter287.next.3, %bb.m ]
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv225.epil.3
  %i.iu = load float, ptr %i.it, align 4, !tbaa !28 ; 4 uses
  %i.iv = fcmp olt float %i.iu, %.3165202.us.epil.3
  %spec.select189.us.epil.3 = select i1 %i.iv, float %i.iu, float %.3165202.us.epil.3 ; 2 uses
  %i.iw = fcmp ogt float %i.iu, %.3203.us.epil.3
  %.4.us.epil.3 = select i1 %i.iw, float %i.iu, float %.3203.us.epil.3 ; 2 uses
  %indvars.iv.next226.epil.3 = add nuw nsw i64 %indvars.iv225.epil.3, 1
  %epil.iter287.next.3 = add i64 %epil.iter287.3, 1 ; 2 uses
  %epil.iter287.cmp.3.not = icmp eq i64 %epil.iter287.next.3, %xtraiter286.3
  br i1 %epil.iter287.cmp.3.not, label %.loopexit, label %bb.m, !llvm.loop !216

.loopexit.loopexit281.unr-lcssa:                  ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit281.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %.loopexit.loopexit281.unr-lcssa ]
  %.0161199.epil.init = phi float [ %i.ai, %.lr.ph.preheader ], [ %.1.7, %.loopexit.loopexit281.unr-lcssa ]
  %.0162198.epil.init = phi float [ %i.ai, %.lr.ph.preheader ], [ %spec.select.7, %.loopexit.loopexit281.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod285)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0161199.epil = phi float [ %.1.epil, %.lr.ph.epil ], [ %.0161199.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0162198.epil = phi float [ %spec.select.epil, %.lr.ph.epil ], [ %.0162198.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.epil
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !28 ; 4 uses
  %i.iz = fcmp olt float %i.iy, %.0162198.epil
  %spec.select.epil = select i1 %i.iz, float %i.iy, float %.0162198.epil ; 2 uses
  %i.ja = fcmp ogt float %i.iy, %.0161199.epil
  %.1.epil = select i1 %i.ja, float %i.iy, float %.0161199.epil ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !217

.loopexit:                                        ; preds = %.loopexit.loopexit281.unr-lcssa, %.lr.ph.epil, %._crit_edge.us, %._crit_edge.us.1, %._crit_edge.us.2, %bb.m, %._crit_edge.us.unr-lcssa.3, %bb.i, %bb.h
  %.5167 = phi float [ %i.bz, %bb.i ], [ %spec.select189.us.epil.3, %bb.m ], [ %i.ai, %bb.h ], [ %spec.select189.us.lcssa, %._crit_edge.us ], [ %spec.select189.us.lcssa.1, %._crit_edge.us.1 ], [ %spec.select189.us.lcssa.2, %._crit_edge.us.2 ], [ %spec.select189.us.7.3, %._crit_edge.us.unr-lcssa.3 ], [ %spec.select.7, %.loopexit.loopexit281.unr-lcssa ], [ %spec.select.epil, %.lr.ph.epil ] ; 2 uses
  %.5 = phi float [ %i.bz, %bb.i ], [ %.4.us.epil.3, %bb.m ], [ %i.ai, %bb.h ], [ %.4.us.lcssa, %._crit_edge.us ], [ %.4.us.lcssa.1, %._crit_edge.us.1 ], [ %.4.us.lcssa.2, %._crit_edge.us.2 ], [ %.4.us.7.3, %._crit_edge.us.unr-lcssa.3 ], [ %.1.7, %.loopexit.loopexit281.unr-lcssa ], [ %.1.epil, %.lr.ph.epil ] ; 3 uses
  br i1 %12, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %i.jb = fpext float %.5167 to double
  %i.jc = fsub float %.5, %.5167
  %i.jd = fpext float %i.jc to double
  %i.je = call double @llvm.fmuladd.f64(double %i.jd, double -1.000000e-01, double %i.jb)
  %i.jf = fptrunc double %i.je to float
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %bb.n
  %.6 = phi float [ %i.jf, %bb.n ], [ 0.000000e+00, %.loopexit ] ; 6 uses
  %i.jg = fpext float %.5 to double
  %i.jh = fsub float %.5, %.6
  %i.ji = fpext float %i.jh to double
  %i.jj = call double @llvm.fmuladd.f64(double %i.ji, double 1.000000e-01, double %i.jg) ; 2 uses
  %i.jk = fptrunc double %i.jj to float           ; 2 uses
  %i.jl = load float, ptr %i.q, align 4, !tbaa !28
  %i.jm = load float, ptr %8, align 4, !tbaa !28
  %i.jn = fsub float %i.jl, %i.jm
  %i.jo = fmul float %11, %i.jn                   ; 4 uses
  %i.jp = fcmp ugt float %i.jo, 0.000000e+00
  br i1 %i.jp, label %bb.p, label %_ZL12tick_spacingfi.exit

bb.p:                                             ; preds = %bb.o
  %i.jq = call float @llvm.log.f32(float %i.jo)
  %i.jr = fpext float %i.jq to double
  %i.js = fdiv double %i.jr, f0x40026BB1BBB55516
  %i.jt = call double @llvm.ceil.f64(double %i.js)
  %i.ju = fmul double %i.jt, f0x40026BB1BBB55516
  %i.jv = call double @exp(double noundef %i.ju) #23
  %i.jw = fmul double %i.jv, 2.000000e-01
  %i.jx = fptrunc double %i.jw to float           ; 3 uses
  %i.jy = fdiv float %i.jo, %i.jx
  %i.jz = fcmp olt float %i.jy, 3.000000e+00
  br i1 %i.jz, label %.lr.ph.i, label %_ZL12tick_spacingfi.exit

.lr.ph.i:                                         ; preds = %bb.p, %.lr.ph.i
  %.09.i = phi float [ %i.ka, %.lr.ph.i ], [ %i.jx, %bb.p ]
  %i.ka = fmul float %.09.i, 5.000000e-01         ; 3 uses
  %i.kb = fdiv float %i.jo, %i.ka
  %i.kc = fcmp olt float %i.kb, 3.000000e+00
  br i1 %i.kc, label %.lr.ph.i, label %_ZL12tick_spacingfi.exit, !llvm.loop !218

_ZL12tick_spacingfi.exit:                         ; preds = %.lr.ph.i, %bb.o, %bb.p
  %.07.i = phi float [ 1.000000e+00, %bb.o ], [ %i.jx, %bb.p ], [ %i.ka, %.lr.ph.i ] ; 4 uses
  %i.kd = fsub float %i.jk, %.6                   ; 4 uses
  %i.ke = fcmp ugt float %i.kd, 0.000000e+00
  br i1 %i.ke, label %bb.q, label %_ZL12tick_spacingfi.exit193

bb.q:                                             ; preds = %_ZL12tick_spacingfi.exit
  %i.kf = call float @llvm.log.f32(float %i.kd)
  %i.kg = fpext float %i.kf to double
  %i.kh = fdiv double %i.kg, f0x40026BB1BBB55516
  %i.ki = call double @llvm.ceil.f64(double %i.kh)
  %i.kj = fmul double %i.ki, f0x40026BB1BBB55516
  %i.kk = call double @exp(double noundef %i.kj) #23
  %i.kl = fmul double %i.kk, 2.000000e-01
  %i.km = fptrunc double %i.kl to float           ; 3 uses
  %i.kn = fdiv float %i.kd, %i.km
  %i.ko = fcmp olt float %i.kn, 2.000000e+00
  br i1 %i.ko, label %.lr.ph.i191, label %_ZL12tick_spacingfi.exit193

.lr.ph.i191:                                      ; preds = %bb.q, %.lr.ph.i191
  %.09.i192 = phi float [ %i.kp, %.lr.ph.i191 ], [ %i.km, %bb.q ]
  %i.kp = fmul float %.09.i192, 5.000000e-01      ; 3 uses
  %i.kq = fdiv float %i.kd, %i.kp
  %i.kr = fcmp olt float %i.kq, 2.000000e+00
  br i1 %i.kr, label %.lr.ph.i191, label %_ZL12tick_spacingfi.exit193, !llvm.loop !218

_ZL12tick_spacingfi.exit193:                      ; preds = %.lr.ph.i191, %_ZL12tick_spacingfi.exit, %bb.q
  %.07.i190 = phi float [ 1.000000e+00, %_ZL12tick_spacingfi.exit ], [ %i.km, %bb.q ], [ %i.kp, %.lr.ph.i191 ] ; 4 uses
  %i.ks = call noundef zeroext i1 @_Z31output_env_get_print_xvgr_codesPK16gmx_output_env_t(ptr noundef %14)
  br i1 %i.ks, label %bb.r, label %bb.ab

bb.r:                                             ; preds = %_ZL12tick_spacingfi.exit193
  %i.kt = trunc nuw nsw i64 %indvars.iv256 to i32 ; 2 uses
  %i.ku = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.158, i32 noundef %i.kt, i32 noundef %i.kt) #23 ; 0 uses
  %i.kv = icmp eq i64 %indvars.iv256, 0
  br i1 %i.kv, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.kw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.159, ptr noundef %3) #23 ; 0 uses
  br i1 %.not181, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.kx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.160, ptr noundef nonnull %4) #23 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r
  %i.ky = icmp eq i64 %indvars.iv256, %i.x
  br i1 %i.ky, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.kz = load ptr, ptr %5, align 8, !tbaa !25
  %i.la = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.161, ptr noundef %i.kz) #23 ; 0 uses
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %fwrite182 = call i64 @fwrite(ptr nonnull @.str.162, i64 23, i64 1, ptr %i.b) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %i.v, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.lb = load float, ptr %8, align 4, !tbaa !28
  %i.lc = fmul float %11, %i.lb
  %i.ld = fpext float %i.lc to double
  %i.le = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.163, double noundef %i.ld) #23 ; 0 uses
  %i.lf = load float, ptr %i.q, align 4, !tbaa !28
  %i.lg = fmul float %11, %i.lf
  %i.lh = fpext float %i.lg to double
  %i.li = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.164, double noundef %i.lh) #23 ; 0 uses
  %i.lj = fpext float %.6 to double
  %i.lk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.165, double noundef %i.lj) #23 ; 0 uses
  %i.ll = fpext float %i.jk to double
  %i.lm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.166, double noundef %i.ll) #23 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %fwrite183 = call i64 @fwrite(ptr nonnull @.str.167, i64 17, i64 1, ptr %i.b) ; 0 uses
  %fwrite184 = call i64 @fwrite(ptr nonnull @.str.168, i64 17, i64 1, ptr %i.b) ; 0 uses
  %i.ln = trunc i64 %indvars.iv256 to i32
  %i.lo = insertelement <2 x i32> poison, i32 %i.ln, i64 0
  %i.lp = shufflevector <2 x i32> %i.lo, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.lq = sub <2 x i32> %i.u, %i.lp
  %i.lr = uitofp <2 x i32> %i.lq to <2 x double>
  %i.ls = fmul nnan <2 x double> %i.lr, splat (double f0x3FE6666666666666)
  %i.lt = fdiv <2 x double> %i.ls, %i.aa
  %i.lu = fadd <2 x double> %i.lt, splat (double 1.500000e-01) ; 2 uses
  %i.lv = extractelement <2 x double> %i.lu, i64 0
  %i.lw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.169, double noundef %i.lv) #23 ; 0 uses
  %i.lx = extractelement <2 x double> %i.lu, i64 1
  %i.ly = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.170, double noundef %i.lx) #23 ; 0 uses
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv256
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !18
  %i.mb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.171, ptr noundef %i.ma) #23 ; 0 uses
  %i.mc = fpext float %.07.i to double
  %i.md = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.172, double noundef %i.mc) #23 ; 0 uses
  %i.me = fmul float %.07.i, 5.000000e-01
  %i.mf = fpext float %i.me to double
  %i.mg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.173, double noundef %i.mf) #23 ; 0 uses
  %fwrite185 = call i64 @fwrite(ptr nonnull @.str.174, i64 34, i64 1, ptr %i.b) ; 0 uses
  %16 = fdiv float %.6, %.07.i
  %17 = call noundef float @llvm.ceil.f32(float %16)
  %18 = fmul float %.07.i, %17
  %i.mh = fpext float %18 to double
  %19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.175, double noundef %i.mh) #23 ; 0 uses
  %i.mi = fpext float %.07.i190 to double
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.176, double noundef %i.mi) #23 ; 0 uses
  %i.mj = fmul float %.07.i190, 5.000000e-01
  %i.mk = fpext float %i.mj to double
  %i.ml = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.177, double noundef %i.mk) #23 ; 0 uses
  %fwrite186 = call i64 @fwrite(ptr nonnull @.str.178, i64 34, i64 1, ptr %i.b) ; 0 uses
  %21 = fdiv float %.6, %.07.i190
  %22 = call noundef float @llvm.ceil.f32(float %21)
  %i.mm = fmul float %.07.i190, %22
  %i.mn = fpext float %i.mm to double
  %i.mo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.179, double noundef %i.mn) #23 ; 0 uses
  %i.mp = fcmp olt float %.6, 0.000000e+00
  %i.mq = fcmp ogt double %i.jj, f0x3690000000000000
  %or.cond = select i1 %i.mp, i1 %i.mq, i1 false
  br i1 %or.cond, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %fwrite187 = call i64 @fwrite(ptr nonnull @.str.180, i64 19, i64 1, ptr %i.b) ; 0 uses
  %fwrite188 = call i64 @fwrite(ptr nonnull @.str.181, i64 28, i64 1, ptr %i.b) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %_ZL12tick_spacingfi.exit193
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv256 ; 3 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv256 ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.ab, %._crit_edge
  %indvars.iv251 = phi i64 [ 0, %bb.ab ], [ %indvars.iv.next252, %._crit_edge ] ; 4 uses
  br i1 %i.n, label %.lr.ph212, label %._crit_edge

.lr.ph212:                                        ; preds = %.preheader
  br i1 %13, label %bb.ac, label %.lr.ph212.split.us

bb.ac:                                            ; preds = %.lr.ph212
  %.pre = load float, ptr %8, align 4, !tbaa !28
  %i.mt = fmul float %11, %.pre
  %i.mu = fpext float %i.mt to double
  br i1 %.not, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.mv = load ptr, ptr %i.ms, align 8, !tbaa !13
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.mv, i64 %indvars.iv251
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn.in.peel = phi ptr [ %i.mw, %bb.ad ], [ %i.mr, %bb.ac ]
  %.pn.peel = load ptr, ptr %.pn.in.peel, align 8, !tbaa !15
  %i.mx = load float, ptr %.pn.peel, align 4, !tbaa !28
  %i.my = fpext float %i.mx to double
  %i.mz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.184, double noundef %i.mu, double noundef %i.my) #23 ; 0 uses
  br i1 %exitcond249.peel.not, label %._crit_edge, label %.lr.ph212.split.peel.next

.lr.ph212.split.us:                               ; preds = %.lr.ph212
  br i1 %.not, label %.lr.ph212.split.us.split.us, label %.lr.ph212.split.us.split

.lr.ph212.split.us.split.us:                      ; preds = %.lr.ph212.split.us, %.lr.ph212.split.us.split.us
  %indvars.iv240 = phi i64 [ %indvars.iv.next241, %.lr.ph212.split.us.split.us ], [ 0, %.lr.ph212.split.us ] ; 3 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv240
  %i.nb = load float, ptr %i.na, align 4, !tbaa !28
  %i.nc = fmul float %11, %i.nb
  %i.nd = fpext float %i.nc to double
  %i.ne = load ptr, ptr %i.ms, align 8, !tbaa !13
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %indvars.iv251
  %.pn.us.us = load ptr, ptr %i.nf, align 8, !tbaa !15
  %.in.us.us = getelementptr inbounds nuw [4 x i8], ptr %.pn.us.us, i64 %indvars.iv240
  %i.ng = load float, ptr %.in.us.us, align 4, !tbaa !28
  %i.nh = fpext float %i.ng to double
  %i.ni = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.184, double noundef %i.nd, double noundef %i.nh) #23 ; 0 uses
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %exitcond244.not = icmp eq i64 %indvars.iv.next241, %wide.trip.count243
  br i1 %exitcond244.not, label %._crit_edge, label %.lr.ph212.split.us.split.us, !llvm.loop !219

.lr.ph212.split.us.split:                         ; preds = %.lr.ph212.split.us, %.lr.ph212.split.us.split
  %indvars.iv235 = phi i64 [ %indvars.iv.next236, %.lr.ph212.split.us.split ], [ 0, %.lr.ph212.split.us ] ; 3 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv235
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !28
  %i.nl = fmul float %11, %i.nk
  %i.nm = fpext float %i.nl to double
  %.pn.us = load ptr, ptr %i.mr, align 8, !tbaa !15
  %.in.us = getelementptr inbounds nuw [4 x i8], ptr %.pn.us, i64 %indvars.iv235
  %i.nn = load float, ptr %.in.us, align 4, !tbaa !28
  %i.no = fpext float %i.nn to double
  %i.np = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.184, double noundef %i.nm, double noundef %i.no) #23 ; 0 uses
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %exitcond239.not = icmp eq i64 %indvars.iv.next236, %wide.trip.count238
  br i1 %exitcond239.not, label %._crit_edge, label %.lr.ph212.split.us.split, !llvm.loop !219

.lr.ph212.split.peel.next:                        ; preds = %bb.ae, %bb.ai
  %indvars.iv245 = phi i64 [ %indvars.iv.next246, %bb.ai ], [ 1, %bb.ae ] ; 4 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv245
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !28
  %i.ns = call noundef float @llvm.fabs.f32(float %i.nr)
  %i.nt = fpext float %i.ns to double
  %i.nu = fcmp olt double %i.nt, 1.000000e-05
  br i1 %i.nu, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph212.split.peel.next
  %i.nv = call noundef zeroext i1 @_Z31output_env_get_print_xvgr_codesPK16gmx_output_env_t(ptr noundef %14)
  %i.nw = select i1 %i.nv, ptr @.str.183, ptr @.str.38
  %i.nx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.182, ptr noundef nonnull %i.nw) #23 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph212.split.peel.next
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv245
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !28
  %i.oa = fmul float %11, %i.nz
  %i.ob = fpext float %i.oa to double
  br i1 %.not, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.oc = load ptr, ptr %i.ms, align 8, !tbaa !13
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv251
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %.pn.in = phi ptr [ %i.od, %bb.ah ], [ %i.mr, %bb.ag ]
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !15
  %.in = getelementptr inbounds nuw [4 x i8], ptr %.pn, i64 %indvars.iv245
  %i.oe = load float, ptr %.in, align 4, !tbaa !28
  %i.of = fpext float %i.oe to double
  %i.og = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.184, double noundef %i.ob, double noundef %i.of) #23 ; 0 uses
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 2 uses
  %exitcond249.not = icmp eq i64 %indvars.iv.next246, %wide.trip.count248
  br i1 %exitcond249.not, label %._crit_edge, label %.lr.ph212.split.peel.next, !llvm.loop !220

._crit_edge:                                      ; preds = %.lr.ph212.split.us.split, %.lr.ph212.split.us.split.us, %bb.ai, %bb.ae, %.preheader
  %i.oh = call noundef zeroext i1 @_Z31output_env_get_print_xvgr_codesPK16gmx_output_env_t(ptr noundef %14)
  %i.oi = select i1 %i.oh, ptr @.str.183, ptr @.str.38
  %i.oj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.182, ptr noundef nonnull %i.oi) #23 ; 0 uses
  %indvars.iv.next252 = add nuw nsw i64 %indvars.iv251, 1 ; 2 uses
  %exitcond255.not = icmp eq i64 %indvars.iv.next252, %wide.trip.count254
  br i1 %exitcond255.not, label %bb.aj, label %.preheader, !llvm.loop !221

bb.aj:                                            ; preds = %._crit_edge
  %indvars.iv.next257 = add nuw nsw i64 %indvars.iv256, 1 ; 2 uses
  %exitcond260.not = icmp eq i64 %indvars.iv.next257, %i.y
  br i1 %exitcond260.not, label %._crit_edge217, label %bb.g, !llvm.loop !222

._crit_edge217:                                   ; preds = %bb.aj, %bb.f
  %i.ok = call noundef i32 @_Z11gmx_ffcloseP8_IO_FILE(ptr noundef %i.b) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

declare noundef ptr @_Z10gmx_ffopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #3

declare noundef i32 @_Z25output_env_get_xvg_formatPK16gmx_output_env_t(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #15

declare noundef zeroext i1 @_Z31output_env_get_print_xvgr_codesPK16gmx_output_env_t(ptr noundef) local_unnamed_addr #3

declare noundef i32 @_Z11gmx_ffcloseP8_IO_FILE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #15

declare noundef ptr @_Z8open_trxRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #3

declare noundef i32 @_Z12read_first_xPK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEPfPPA3_fSC_(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z6do_fitiPfPA3_KfPA3_f(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_Z9write_trxP11t_trxstatusiPKiPK7t_atomsifPA3_fS7_S7_P12gmx_conect_t(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_Z11read_next_xPK16gmx_output_env_tP11t_trxstatusPfPA3_fS6_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z9close_trxP11t_trxstatus(ptr noundef) local_unnamed_addr #3

declare void @_Z26output_env_get_xvgr_tlabelB5cxx11PK16gmx_output_env_t(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #3

declare noundef float @_Z26output_env_get_time_factorPK16gmx_output_env_t(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

declare void @_Z9xvgrcloseP8_IO_FILE(ptr noundef) local_unnamed_addr #3

declare void @_Z12init_t_atomsP7t_atomsib(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef signext, ptr noundef, i8 noundef signext, i32 noundef, i8 noundef signext, float noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z14write_sto_confRKNSt10filesystem7__cxx114pathEPKcPK7t_atomsPA3_KfSB_7PbcTypeSB_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z9done_atomP7t_atoms(ptr noundef) local_unnamed_addr #3

declare void @_ZN3gmx26concatenateBeforeExtensionERKNSt10filesystem7__cxx114pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::filesystem::__cxx11::path") align 8, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt10filesystem7__cxx114pathaSEOS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %_ZNSt10filesystem7__cxx114path5clearEv.exit, label %bb.b, !prof !223

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !25     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = icmp eq ptr %i.b, %i.c
  %i.e = load ptr, ptr %1, align 8, !tbaa !25     ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.g = icmp eq ptr %i.e, %i.f                   ; 2 uses
  br i1 %i.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.g, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.g, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !34   ; 3 uses
  %i.j = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.j)
  switch i64 %i.i, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = load i8, ptr %i.e, align 1, !tbaa !26
  store i8 %i.k, ptr %i.b, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.b, ptr align 1 %i.e, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.l = load i64, ptr %i.h, align 8, !tbaa !34   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !34
  %i.n = load ptr, ptr %0, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !26
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !34
  store i64 %i.r, ptr %i.p, align 8, !tbaa !34
  %i.s = load i64, ptr %i.f, align 8, !tbaa !26
  store i64 %i.s, ptr %i.c, align 8, !tbaa !26
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.t = load i64, ptr %i.c, align 8, !tbaa !26
  store ptr %i.e, ptr %0, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !34
  %i.x = load i64, ptr %i.f, align 8, !tbaa !26
  store i64 %i.x, ptr %i.c, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.b, ptr %1, align 8, !tbaa !25
  store i64 %i.t, ptr %i.f, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.f, ptr %1, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.y = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.b, %bb.f ], [ %i.f, %bb.g ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.z, align 8, !tbaa !34
  store i8 0, ptr %i.y, align 1, !tbaa !26
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !22
  store ptr null, ptr %i.aa, align 8, !tbaa !22
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !22 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !22
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListaSEOS2_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.ad) #23
  br label %_ZNSt10filesystem7__cxx114path5_ListaSEOS2_.exit

_ZNSt10filesystem7__cxx114path5_ListaSEOS2_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %bb.h
  store i64 0, ptr %i.z, align 8, !tbaa !34
  %i.ae = load ptr, ptr %1, align 8, !tbaa !25
  store i8 0, ptr %i.ae, align 1, !tbaa !26
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %_ZNSt10filesystem7__cxx114path5clearEv.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZNSt10filesystem7__cxx114path5_ListaSEOS2_.exit
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #29
  unreachable

_ZNSt10filesystem7__cxx114path5clearEv.exit:      ; preds = %_ZNSt10filesystem7__cxx114path5_ListaSEOS2_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #3

declare void @_Z9write_xpmP8_IO_FILEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_iiPKfSA_PKSA_ff5t_rgbSD_Pi(ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, ptr noundef byval(%struct.t_rgb) align 8, ptr noundef byval(%struct.t_rgb) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), <8 x i1>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f32.p0(<4 x float>, ptr captures(none), <4 x i1>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.rint.v2f64(<2 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #23 = { nounwind }
attributes #24 = { cold nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { cold }
attributes #29 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"any p2 pointer", !10, i64 0}
!12 = !{!"p2 float", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 float", !10, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"p1 omnipotent char", !10, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!16, !16, i64 0}
!19 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !10, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !17, i64 8, !5, i64 16}
!25 = !{!24, !16, i64 0}
!26 = !{!5, !5, i64 0}
!27 = !{!"float", !5, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!23, !16, i64 0}
!34 = !{!24, !17, i64 8}
!35 = !{!"branch_weights", i32 4, i32 28}
!36 = !{!17, !17, i64 0}
!37 = !{!"llvm.loop.peeled.count", i32 1}
!38 = distinct !{!38, !29}
!39 = distinct !{!39, !29}
!40 = distinct !{!40, !29, !30, !31}
!41 = distinct !{!41, !32}
!42 = distinct !{!42, !29, !30}
!43 = distinct !{!43, !29, !30, !31}
!44 = distinct !{!44, !29, !30, !31}
!45 = distinct !{!45, !29, !31, !30}
!46 = distinct !{!46, !29}
!47 = distinct !{!47, !29}
!48 = distinct !{!48, !32}
!49 = distinct !{!49, !29}
!50 = distinct !{!50, !29}
!51 = distinct !{!51, !32}
!52 = distinct !{!52, !32}
!53 = distinct !{!53, !29}
!54 = distinct !{!54, !29, !30, !31}
!55 = distinct !{!55, !29, !30, !31}
!56 = distinct !{!56, !29, !31, !30}
!57 = distinct !{!57, !32}
!58 = distinct !{!58, !29}
!59 = distinct !{!59, !29}
!60 = distinct !{!60, !29}
!61 = distinct !{!61, !29}
!62 = distinct !{!62, !29}
!63 = distinct !{!63, !29}
!64 = distinct !{!64, !29, !30, !31}
!65 = distinct !{!65, !29, !30, !31}
!66 = distinct !{!66, !29, !31, !30}
!67 = distinct !{!67, !29, !30, !31}
!68 = distinct !{!68, !29, !30, !31}
!69 = distinct !{!69, !29}
!70 = distinct !{!70, !29}
!71 = distinct !{!71, !29, !31, !30}
!72 = distinct !{!72, !29}
!73 = distinct !{!73, !29, !30, !31}
!74 = distinct !{!74, !29, !30, !31}
!75 = distinct !{!75, !29, !31, !30}
!76 = distinct !{!76, !29}
!77 = distinct !{!77, !32}
!78 = distinct !{!78, !29, !30, !31}
!79 = distinct !{!79, !29, !30, !31}
!80 = distinct !{!80, !29}
!81 = distinct !{!81, !29}
!82 = distinct !{!82, !29}
!83 = distinct !{!83, !29, !31, !30}
!84 = distinct !{!84, !29}
!85 = distinct !{!85, !32}
!86 = distinct !{!86, !32}
!87 = distinct !{!87, !29}
!88 = distinct !{!88, !32}
!89 = distinct !{!89, !29}
!90 = distinct !{!90, !29}
!91 = distinct !{!91, !29, !37}
!92 = distinct !{!92, !29}
!93 = distinct !{!93, !29}
!94 = distinct !{!94, !29}
!95 = distinct !{!95, !32}
!96 = distinct !{!96, !29}
!97 = distinct !{!97, i1 false, !"_ZNSt7__cxx119to_stringEi"}
!98 = distinct !{!98, !97, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!99 = distinct !{!99, !29}
!100 = distinct !{!100, !29}
!101 = distinct !{!101, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!102 = distinct !{!102, !101, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!103 = distinct !{!103, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!104 = distinct !{!104, !103, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!105 = distinct !{!105, !29, !30, !31}
!106 = distinct !{!106, !29, !31, !30}
!107 = distinct !{!107, !29}
!108 = distinct !{!108, !29}
!109 = distinct !{!109, !29}
!110 = distinct !{!110, !29, !30, !31}
!111 = distinct !{!111, !29, !30, !31}
!112 = distinct !{!112, !29}
!113 = distinct !{!113, !29, !31, !30}
!114 = distinct !{!114, !32}
!115 = distinct !{!115, !29}
!116 = distinct !{!116, !29}
!117 = distinct !{!117, !29}
!118 = distinct !{!118, !32}
!119 = distinct !{!119, !29}
!120 = distinct !{!120, !32}
!121 = distinct !{!121, !29}
!122 = distinct !{!122, !29}
!123 = distinct !{!123, !29}
!124 = distinct !{!124, !32}
!125 = distinct !{!125, !29}
!126 = distinct !{!126, !29}
!127 = distinct !{!127, !29}
!128 = distinct !{!128, !29}
!129 = distinct !{!129, !32}
!130 = distinct !{!130, !29}
!131 = !{!"_ZTS7PbcType", !5, i64 0}
!132 = !{!131, !131, i64 0}
!133 = !{!"p1 int", !10, i64 0}
!134 = !{!133, !133, i64 0}
!135 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!136 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !135, i64 0, !135, i64 8, !135, i64 16}
!137 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !136, i64 0}
!138 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !137, i64 0}
!139 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !138, i64 0}
!140 = !{!"_ZTS8t_filenm", !6, i64 0, !16, i64 8, !16, i64 16, !17, i64 24, !139, i64 32}
!141 = !{!140, !6, i64 0}
!142 = !{!140, !16, i64 8}
!143 = !{!140, !16, i64 16}
!144 = !{!140, !17, i64 24}
!145 = !{!"p2 double", !11, i64 0}
!146 = !{!145, !145, i64 0}
!147 = !{!"p1 double", !10, i64 0}
!148 = !{!147, !147, i64 0}
!149 = !{!"double", !5, i64 0}
!150 = !{!149, !149, i64 0}
!151 = !{!"bool", !5, i64 0}
!152 = !{!151, !151, i64 0}
!153 = !{i8 0, i8 2}
!154 = !{}
!155 = !{!"branch_weights", i32 4, i32 12}
!156 = !{!"p1 _ZTS6t_atom", !10, i64 0}
!157 = !{!"any p3 pointer", !11, i64 0}
!158 = !{!"p3 omnipotent char", !157, i64 0}
!159 = !{!"p1 _ZTS9t_resinfo", !10, i64 0}
!160 = !{!"p1 _ZTS9t_pdbinfo", !10, i64 0}
!161 = !{!"_ZTS7t_atoms", !6, i64 0, !156, i64 8, !158, i64 16, !158, i64 24, !158, i64 32, !6, i64 40, !159, i64 48, !160, i64 56, !151, i64 64, !151, i64 65, !151, i64 66, !151, i64 67, !151, i64 68}
!162 = !{!161, !6, i64 0}
!163 = !{!"short", !5, i64 0}
!164 = !{!"_ZTS12ParticleType", !5, i64 0}
end_hunk_0

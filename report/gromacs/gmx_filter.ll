Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_filter?download=true
inline.NumInlined: 117
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_Z10gmx_filteriPPc:bb.a
  %i.sy = fsub float %i.sw, %i.sx
  %i.sz = load <2 x float>, ptr %i.su, align 4, !tbaa !104
  %i.ta = load <2 x float>, ptr %i.n, align 8, !tbaa !104
  %i.tb = fsub <2 x float> %i.sz, %i.ta
  store <2 x float> %i.tb, ptr %i.su, align 4, !tbaa !104
  store float %i.sy, ptr %i.sv, align 4, !tbaa !104
  %i.tc = getelementptr inbounds nuw [12 x i8], ptr %i.nn, i64 %indvars.iv491 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 36 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.tc, i64 44 ; 2 uses
  %i.tf = load float, ptr %i.te, align 4, !tbaa !104
  %i.tg = load float, ptr %i.lu, align 8, !tbaa !104
  %i.th = fsub float %i.tf, %i.tg
  %i.ti = load <2 x float>, ptr %i.td, align 4, !tbaa !104
  %i.tj = load <2 x float>, ptr %i.n, align 8, !tbaa !104
  %i.tk = fsub <2 x float> %i.ti, %i.tj
  store <2 x float> %i.tk, ptr %i.td, align 4, !tbaa !104
  store float %i.th, ptr %i.te, align 4, !tbaa !104
  %indvars.iv.next492.3 = add nuw nsw i64 %indvars.iv491, 4 ; 2 uses
  %exitcond495.not.3 = icmp eq i64 %indvars.iv.next492.3, %i.ly
  br i1 %exitcond495.not.3, label %._crit_edge403, label %.lr.ph402, !llvm.loop !42

._crit_edge403:                                   ; preds = %.lr.ph402.prol.loopexit, %.lr.ph402, %middle.block884, %.preheader356
  %i.tl = load ptr, ptr %i.f, align 8, !tbaa !103
  invoke void @_Z6do_fitiPfPA3_KfPA3_f(i32 noundef %i.jr, ptr noundef %.0, ptr noundef %i.tl, ptr noundef %i.nn)
          to label %.preheader354 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader354:                                    ; preds = %._crit_edge403
  br i1 %i.kb, label %.lr.ph405.preheader, label %.loopexit355

.lr.ph405.preheader:                              ; preds = %.preheader354
  br i1 %min.iters.check840, label %.lr.ph405.preheader888, label %vector.memcheck834

vector.memcheck834:                               ; preds = %.lr.ph405.preheader
  %scevgep835 = getelementptr i8, ptr %i.nn, i64 %i.ni
  %bound0836 = icmp ult ptr %i.nn, %scevgep742
  %bound1837 = icmp ult ptr %i.m, %scevgep835
  %found.conflict838 = and i1 %bound0836, %bound1837
  br i1 %found.conflict838, label %.lr.ph405.preheader888, label %vector.ph841

vector.ph841:                                     ; preds = %vector.memcheck834
  %i.tm = load float, ptr %i.m, align 8, !tbaa !104, !alias.scope !127
  %broadcast.splatinsert849.a = insertelement <8 x float> poison, float %i.tm, i64 0
  %i.tn = load float, ptr %i.bl, align 4, !tbaa !104, !alias.scope !127
  %broadcast.splatinsert851 = insertelement <8 x float> poison, float %i.tn, i64 0
  %i.to = load float, ptr %i.bm, align 8, !tbaa !104, !alias.scope !127
  %broadcast.splatinsert853 = insertelement <8 x float> poison, float %i.to, i64 0
  %i.tp = shufflevector <8 x float> %broadcast.splatinsert849.a, <8 x float> %broadcast.splatinsert851, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %i.tq = shufflevector <8 x float> %broadcast.splatinsert853, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body843

vector.body843:                                   ; preds = %vector.body843, %vector.ph841
  %index844 = phi i64 [ 0, %vector.ph841 ], [ %index.next856, %vector.body843 ] ; 2 uses
  %i.tr = getelementptr inbounds nuw [12 x i8], ptr %i.nn, i64 %index844 ; 2 uses
  %wide.vec845 = load <24 x float>, ptr %i.tr, align 4, !tbaa !104, !alias.scope !128, !noalias !127 ; 2 uses
  %i.ts = shufflevector <24 x float> %wide.vec845, <24 x float> poison, <16 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.tt = fadd <16 x float> %i.ts, %i.tp
  %i.tu = shufflevector <24 x float> %wide.vec845, <24 x float> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.tv = fadd <16 x float> %i.tu, %i.tq
  %interleaved.vec855 = shufflevector <16 x float> %i.tt, <16 x float> %i.tv, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec855, ptr %i.tr, align 4, !tbaa !104, !alias.scope !128, !noalias !127
  %index.next856 = add nuw i64 %index844, 8       ; 2 uses
  %i.tw = icmp eq i64 %index.next856, %n.vec842
  br i1 %i.tw, label %middle.block857, label %vector.body843, !llvm.loop !46

middle.block857:                                  ; preds = %vector.body843
  br i1 %cmp.n858, label %.loopexit355, label %.lr.ph405.preheader888

.lr.ph405.preheader888:                           ; preds = %vector.memcheck834, %.lr.ph405.preheader, %middle.block857
  %indvars.iv496.ph = phi i64 [ 0, %vector.memcheck834 ], [ 0, %.lr.ph405.preheader ], [ %n.vec842, %middle.block857 ] ; 3 uses
  br i1 %lcmp.mod914.not, label %.lr.ph405.prol.loopexit, label %.lr.ph405.prol

.lr.ph405.prol:                                   ; preds = %.lr.ph405.preheader888, %.lr.ph405.prol
  %indvars.iv496.prol = phi i64 [ %indvars.iv.next497.prol, %.lr.ph405.prol ], [ %indvars.iv496.ph, %.lr.ph405.preheader888 ] ; 2 uses
  %prol.iter915 = phi i64 [ %prol.iter915.next, %.lr.ph405.prol ], [ 0, %.lr.ph405.preheader888 ]
  %i.tx = getelementptr inbounds nuw [12 x i8], ptr %i.nn, i64 %indvars.iv496.prol ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 8 ; 2 uses
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !104
  %i.ua = load float, ptr %i.bm, align 8, !tbaa !104
  %i.ub = fadd float %i.tz, %i.ua
  %i.uc = load <2 x float>, ptr %i.tx, align 4, !tbaa !104
  %i.ud = load <2 x float>, ptr %i.m, align 8, !tbaa !104
  %i.ue = fadd <2 x float> %i.uc, %i.ud
  store <2 x float> %i.ue, ptr %i.tx, align 4, !tbaa !104
  store float %i.ub, ptr %i.ty, align 4, !tbaa !104
  %indvars.iv.next497.prol = add nuw nsw i64 %indvars.iv496.prol, 1 ; 2 uses
  %prol.iter915.next = add i64 %prol.iter915, 1   ; 2 uses
  %prol.iter915.cmp.not = icmp eq i64 %prol.iter915.next, %xtraiter913
  br i1 %prol.iter915.cmp.not, label %.lr.ph405.prol.loopexit, label %.lr.ph405.prol, !llvm.loop !47

.lr.ph405.prol.loopexit:                          ; preds = %.lr.ph405.prol, %.lr.ph405.preheader888
  %indvars.iv496.unr = phi i64 [ %indvars.iv496.ph, %.lr.ph405.preheader888 ], [ %indvars.iv.next497.prol, %.lr.ph405.prol ]
  %i.uf = sub nsw i64 %indvars.iv496.ph, %i.ly
  %i.ug = icmp ugt i64 %i.uf, -4
  br i1 %i.ug, label %.loopexit355, label %.lr.ph405

.lr.ph405:                                        ; preds = %.lr.ph405.prol.loopexit, %.lr.ph405
  %indvars.iv496 = phi i64 [ %indvars.iv.next497.3, %.lr.ph405 ], [ %indvars.iv496.unr, %.lr.ph405.prol.loopexit ] ; 5 uses
  %i.uh = getelementptr inbounds nuw [12 x i8], ptr %i.nn, i64 %indvars.iv496 ; 3 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 8 ; 2 uses
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !104
  %i.uk = load float, ptr %i.bm, align 8, !tbaa !104
  %i.ul = fadd float %i.uj, %i.uk
  %i.um = load <2 x float>, ptr %i.uh, align 4, !tbaa !104
  %i.un = load <2 x float>, ptr %i.m, align 8, !tbaa !104
  %i.uo = fadd <2 x float> %i.um, %i.un
  store <2 x float> %i.uo, ptr %i.uh, align 4, !tbaa !104
  store float %i.ul, ptr %i.ui, align 4, !tbaa !104
  %i.up = getelementptr inbounds nuw [12 x i8], ptr %i.nn, i64 %indvars.iv496 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 12 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.up, i64 20 ; 2 uses
  %i.us = load float, ptr %i.ur, align 4, !tbaa !104
  %i.ut = load float, ptr %i.bm, align 8, !tbaa !104
  %i.uu = fadd float %i.us, %i.ut
  %i.uv = load <2 x float>, ptr %i.uq, align 4, !tbaa !104
  %i.uw = load <2 x float>, ptr %i.m, align 8, !tbaa !104
  %i.ux = fadd <2 x float> %i.uv, %i.uw
  store <2 x float> %i.ux, ptr %i.uq, align 4, !tbaa !104
  store float %i.uu, ptr %i.ur, align 4, !tbaa !104
  %i.uy = getelementptr inbounds nuw [12 x i8], ptr %i.nn, i64 %indvars.iv496 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 24 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.uy, i64 32 ; 2 uses
  %i.vb = load float, ptr %i.va, align 4, !tbaa !104
  %i.vc = load float, ptr %i.bm, align 8, !tbaa !104
  %i.vd = fadd float %i.vb, %i.vc
  %i.ve = load <2 x float>, ptr %i.uz, align 4, !tbaa !104
  %i.vf = load <2 x float>, ptr %i.m, align 8, !tbaa !104
  %i.vg = fadd <2 x float> %i.ve, %i.vf
  store <2 x float> %i.vg, ptr %i.uz, align 4, !tbaa !104
  store float %i.vd, ptr %i.va, align 4, !tbaa !104
  %i.vh = getelementptr inbounds nuw [12 x i8], ptr %i.nn, i64 %indvars.iv496 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 36 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vh, i64 44 ; 2 uses
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !104
  %i.vl = load float, ptr %i.bm, align 8, !tbaa !104
  %i.vm = fadd float %i.vk, %i.vl
  %i.vn = load <2 x float>, ptr %i.vi, align 4, !tbaa !104
  %i.vo = load <2 x float>, ptr %i.m, align 8, !tbaa !104
  %i.vp = fadd <2 x float> %i.vn, %i.vo
  store <2 x float> %i.vp, ptr %i.vi, align 4, !tbaa !104
  store float %i.vm, ptr %i.vj, align 4, !tbaa !104
  %indvars.iv.next497.3 = add nuw nsw i64 %indvars.iv496, 4 ; 2 uses
  %exitcond500.not.3 = icmp eq i64 %indvars.iv.next497.3, %i.ly
  br i1 %exitcond500.not.3, label %.loopexit355, label %.lr.ph405, !llvm.loop !48

.loopexit355:                                     ; preds = %.lr.ph405.prol.loopexit, %.lr.ph405, %middle.block857, %.preheader354, %bb.ay
  %.not262 = icmp slt i32 %.0232, %i.gy
  br i1 %.not262, label %bb.bh, label %bb.ba

bb.ba:                                            ; preds = %.loopexit355
  %i.vq = load i8, ptr @_ZZ10gmx_filteriPPcE7bLowAll, align 1, !range !106
  %i.vr = trunc nuw i8 %i.vq to i1                ; 2 uses
  %or.cond3 = select i1 %i.lv, i1 true, i1 %i.vr
  br i1 %or.cond3, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.vs = load i32, ptr @_ZZ10gmx_filteriPPcE2nf, align 4, !tbaa !70 ; 2 uses
  %i.vt = srem i32 %.0232, %i.vs
  %i.vu = add nsw i32 %i.vs, -1
  %i.vv = icmp eq i32 %i.vt, %i.vu
  br i1 %i.vv, label %bb.bc, label %bb.bh

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  br i1 %i.kb, label %.lr.ph408.preheader, label %._crit_edge409

.lr.ph408.preheader:                              ; preds = %bb.bc
  call void @llvm.memset.p0.i64(ptr align 4 %i.ks, i8 0, i64 %i.lz, i1 false), !tbaa !104
  br label %._crit_edge409

._crit_edge409:                                   ; preds = %.lr.ph408.preheader, %bb.bc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.h, i8 0, i64 36, i1 false)
  br i1 %i.hb, label %.preheader348, label %._crit_edge415

.preheader348:                                    ; preds = %._crit_edge409, %.preheader347
  %i.vw = phi float [ %i.yy, %.preheader347 ], [ 0.000000e+00, %._crit_edge409 ]
  %i.vx = phi float [ %i.yu, %.preheader347 ], [ 0.000000e+00, %._crit_edge409 ]
  %i.vy = phi float [ %i.yq, %.preheader347 ], [ 0.000000e+00, %._crit_edge409 ]
  %i.vz = phi float [ %i.ym, %.preheader347 ], [ 0.000000e+00, %._crit_edge409 ]
  %i.wa = phi float [ %i.yi, %.preheader347 ], [ 0.000000e+00, %._crit_edge409 ]
  %i.wb = phi float [ %i.ye, %.preheader347 ], [ 0.000000e+00, %._crit_edge409 ]
  %i.wc = phi float [ %i.ya, %.preheader347 ], [ 0.000000e+00, %._crit_edge409 ]
  %i.wd = phi float [ %i.xw, %.preheader347 ], [ 0.000000e+00, %._crit_edge409 ]
  %i.we = phi float [ %i.xs, %.preheader347 ], [ 0.000000e+00, %._crit_edge409 ]
  %indvars.iv521 = phi i64 [ %indvars.iv.next522, %.preheader347 ], [ 0, %._crit_edge409 ] ; 5 uses
  br i1 %i.kb, label %.preheader341.lr.ph, label %.preheader347

.preheader341.lr.ph:                              ; preds = %.preheader348
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv521 ; 10 uses
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %indvars.iv521
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !103 ; 6 uses
  br i1 %min.iters.check810, label %.preheader341.preheader, label %vector.memcheck799

vector.memcheck799:                               ; preds = %.preheader341.lr.ph
  %scevgep801 = getelementptr i8, ptr %i.wh, i64 %i.ni
  %bound0805 = icmp ult ptr %i.ks, %scevgep801
  %bound1806 = icmp ult ptr %i.wh, %scevgep
  %found.conflict807 = and i1 %bound0805, %bound1806
  %conflict.rdx808 = or i1 %found.conflict804, %found.conflict807
  br i1 %conflict.rdx808, label %.preheader341.preheader, label %vector.ph811

vector.ph811:                                     ; preds = %vector.memcheck799
  %i.wi = load float, ptr %i.wf, align 4, !tbaa !104, !alias.scope !129 ; 3 uses
  %broadcast.splatinsert823 = insertelement <8 x float> poison, float %i.wi, i64 0
  %broadcast.splat824 = shufflevector <8 x float> %broadcast.splatinsert823, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert825 = insertelement <8 x float> poison, float %i.wi, i64 0
  %broadcast.splat826 = shufflevector <8 x float> %broadcast.splatinsert825, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert827 = insertelement <8 x float> poison, float %i.wi, i64 0
  %broadcast.splat828 = shufflevector <8 x float> %broadcast.splatinsert827, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body813

vector.body813:                                   ; preds = %vector.body813, %vector.ph811
  %index814 = phi i64 [ 0, %vector.ph811 ], [ %index.next830, %vector.body813 ] ; 3 uses
  %i.wj = getelementptr inbounds nuw [12 x i8], ptr %i.wh, i64 %index814
  %i.wk = getelementptr inbounds nuw [12 x i8], ptr %i.ks, i64 %index814 ; 2 uses
  %wide.vec815 = load <24 x float>, ptr %i.wj, align 4, !tbaa !104, !alias.scope !130 ; 3 uses
  %strided.vec816 = shufflevector <24 x float> %wide.vec815, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec817 = shufflevector <24 x float> %wide.vec815, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec818 = shufflevector <24 x float> %wide.vec815, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec819 = load <24 x float>, ptr %i.wk, align 4, !tbaa !104, !alias.scope !131, !noalias !132 ; 3 uses
  %strided.vec820 = shufflevector <24 x float> %wide.vec819, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec821 = shufflevector <24 x float> %wide.vec819, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec822 = shufflevector <24 x float> %wide.vec819, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %9 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat824, <8 x float> %strided.vec816, <8 x float> %strided.vec820)
  %10 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat826, <8 x float> %strided.vec817, <8 x float> %strided.vec821)
  %11 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat828, <8 x float> %strided.vec818, <8 x float> %strided.vec822)
  %12 = shufflevector <8 x float> %9, <8 x float> %10, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %13 = shufflevector <8 x float> %11, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec829 = shufflevector <16 x float> %12, <16 x float> %13, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec829, ptr %i.wk, align 4, !tbaa !104, !alias.scope !131, !noalias !132
  %index.next830 = add nuw i64 %index814, 8       ; 2 uses
  %i.wl = icmp eq i64 %index.next830, %n.vec812
  br i1 %i.wl, label %middle.block831, label %vector.body813, !llvm.loop !53

middle.block831:                                  ; preds = %vector.body813
  br i1 %cmp.n832, label %.preheader347.loopexit, label %.preheader341.preheader

.preheader341.preheader:                          ; preds = %vector.memcheck799, %.preheader341.lr.ph, %middle.block831
  %indvars.iv508.ph = phi i64 [ 0, %vector.memcheck799 ], [ 0, %.preheader341.lr.ph ], [ %n.vec812, %middle.block831 ] ; 5 uses
  br i1 %lcmp.mod917.not, label %.preheader341.prol.loopexit, label %.preheader341.prol

.preheader341.prol:                               ; preds = %.preheader341.preheader
  %i.wm = getelementptr inbounds nuw [12 x i8], ptr %i.wh, i64 %indvars.iv508.ph ; 3 uses
  %i.wn = getelementptr inbounds nuw [12 x i8], ptr %i.ks, i64 %indvars.iv508.ph ; 4 uses
  %i.wo = load float, ptr %i.wf, align 4, !tbaa !104
  %i.wp = load float, ptr %i.wm, align 4, !tbaa !104
  %i.wq = load float, ptr %i.wn, align 4, !tbaa !104
  %i.wr = call float @llvm.fmuladd.f32(float %i.wo, float %i.wp, float %i.wq)
  store float %i.wr, ptr %i.wn, align 4, !tbaa !104
  %i.ws = load float, ptr %i.wf, align 4, !tbaa !104
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wm, i64 4
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !104
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wn, i64 4 ; 2 uses
  %i.ww = load float, ptr %i.wv, align 4, !tbaa !104
  %i.wx = call float @llvm.fmuladd.f32(float %i.ws, float %i.wu, float %i.ww)
  store float %i.wx, ptr %i.wv, align 4, !tbaa !104
  %i.wy = load float, ptr %i.wf, align 4, !tbaa !104
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  %i.xa = load float, ptr %i.wz, align 4, !tbaa !104
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wn, i64 8 ; 2 uses
  %i.xc = load float, ptr %i.xb, align 4, !tbaa !104
  %i.xd = call float @llvm.fmuladd.f32(float %i.wy, float %i.xa, float %i.xc)
  store float %i.xd, ptr %i.xb, align 4, !tbaa !104
  %indvars.iv.next509.prol = or disjoint i64 %indvars.iv508.ph, 1
  br label %.preheader341.prol.loopexit

.preheader341.prol.loopexit:                      ; preds = %.preheader341.prol, %.preheader341.preheader
  %indvars.iv508.unr = phi i64 [ %indvars.iv508.ph, %.preheader341.preheader ], [ %indvars.iv.next509.prol, %.preheader341.prol ]
  %i.xe = icmp eq i64 %indvars.iv508.ph, %i.nk
  br i1 %i.xe, label %.preheader347.loopexit, label %.preheader341

.preheader347.loopexit:                           ; preds = %.preheader341.prol.loopexit, %.preheader341, %middle.block831
  %.pre571 = load float, ptr %i.h, align 16, !tbaa !104
  %.pre573 = load float, ptr %.phi.trans.insert572, align 4, !tbaa !104
  %.pre575 = load float, ptr %.phi.trans.insert574, align 8, !tbaa !104
  %.pre577 = load float, ptr %.phi.trans.insert576, align 4, !tbaa !104
  %.pre580 = load float, ptr %.phi.trans.insert579, align 16, !tbaa !104
  %.pre583 = load float, ptr %.phi.trans.insert582, align 4, !tbaa !104
  %.pre585 = load float, ptr %.phi.trans.insert584, align 8, !tbaa !104
  %.pre588 = load float, ptr %.phi.trans.insert587, align 4, !tbaa !104
  %.pre591 = load float, ptr %.phi.trans.insert590, align 16, !tbaa !104
  br label %.preheader347

.preheader347:                                    ; preds = %.preheader347.loopexit, %.preheader348
  %i.xf = phi float [ %.pre591, %.preheader347.loopexit ], [ %i.vw, %.preheader348 ]
  %i.xg = phi float [ %.pre588, %.preheader347.loopexit ], [ %i.vx, %.preheader348 ]
  %i.xh = phi float [ %.pre585, %.preheader347.loopexit ], [ %i.vy, %.preheader348 ]
  %i.xi = phi float [ %.pre583, %.preheader347.loopexit ], [ %i.vz, %.preheader348 ]
  %i.xj = phi float [ %.pre580, %.preheader347.loopexit ], [ %i.wa, %.preheader348 ]
  %i.xk = phi float [ %.pre577, %.preheader347.loopexit ], [ %i.wb, %.preheader348 ]
  %i.xl = phi float [ %.pre575, %.preheader347.loopexit ], [ %i.wc, %.preheader348 ]
  %i.xm = phi float [ %.pre573, %.preheader347.loopexit ], [ %i.wd, %.preheader348 ]
  %i.xn = phi float [ %.pre571, %.preheader347.loopexit ], [ %i.we, %.preheader348 ]
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv521 ; 9 uses
  %i.xp = getelementptr inbounds nuw [36 x i8], ptr %i.jj, i64 %indvars.iv521 ; 9 uses
  %i.xq = load float, ptr %i.xo, align 4, !tbaa !104
  %i.xr = load float, ptr %i.xp, align 4, !tbaa !104
  %i.xs = call float @llvm.fmuladd.f32(float %i.xq, float %i.xr, float %i.xn) ; 2 uses
  store float %i.xs, ptr %i.h, align 16, !tbaa !104
  %i.xt = load float, ptr %i.xo, align 4, !tbaa !104
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xp, i64 4
  %i.xv = load float, ptr %i.xu, align 4, !tbaa !104
  %i.xw = call float @llvm.fmuladd.f32(float %i.xt, float %i.xv, float %i.xm) ; 2 uses
  store float %i.xw, ptr %i.mk, align 4, !tbaa !104
  %i.xx = load float, ptr %i.xo, align 4, !tbaa !104
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  %i.xz = load float, ptr %i.xy, align 4, !tbaa !104
  %i.ya = call float @llvm.fmuladd.f32(float %i.xx, float %i.xz, float %i.xl) ; 2 uses
  store float %i.ya, ptr %i.ml, align 8, !tbaa !104
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xp, i64 12
  %i.yc = load float, ptr %i.xo, align 4, !tbaa !104
  %i.yd = load float, ptr %i.yb, align 4, !tbaa !104
  %i.ye = call float @llvm.fmuladd.f32(float %i.yc, float %i.yd, float %i.xk) ; 2 uses
  store float %i.ye, ptr %i.mm, align 4, !tbaa !104
  %i.yf = load float, ptr %i.xo, align 4, !tbaa !104
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xp, i64 16
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !104
  %i.yi = call float @llvm.fmuladd.f32(float %i.yf, float %i.yh, float %i.xj) ; 2 uses
  store float %i.yi, ptr %i.mn, align 16, !tbaa !104
  %i.yj = load float, ptr %i.xo, align 4, !tbaa !104
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xp, i64 20
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !104
  %i.ym = call float @llvm.fmuladd.f32(float %i.yj, float %i.yl, float %i.xi) ; 2 uses
  store float %i.ym, ptr %i.mo, align 4, !tbaa !104
  %i.yn = getelementptr inbounds nuw i8, ptr %i.xp, i64 24
  %i.yo = load float, ptr %i.xo, align 4, !tbaa !104
  %i.yp = load float, ptr %i.yn, align 4, !tbaa !104
  %i.yq = call float @llvm.fmuladd.f32(float %i.yo, float %i.yp, float %i.xh) ; 2 uses
  store float %i.yq, ptr %i.mp, align 8, !tbaa !104
  %i.yr = load float, ptr %i.xo, align 4, !tbaa !104
  %i.ys = getelementptr inbounds nuw i8, ptr %i.xp, i64 28
  %i.yt = load float, ptr %i.ys, align 4, !tbaa !104
  %i.yu = call float @llvm.fmuladd.f32(float %i.yr, float %i.yt, float %i.xg) ; 2 uses
  store float %i.yu, ptr %i.mq, align 4, !tbaa !104
  %i.yv = load float, ptr %i.xo, align 4, !tbaa !104
  %i.yw = getelementptr inbounds nuw i8, ptr %i.xp, i64 32
  %i.yx = load float, ptr %i.yw, align 4, !tbaa !104
  %i.yy = call float @llvm.fmuladd.f32(float %i.yv, float %i.yx, float %i.xf) ; 2 uses
  store float %i.yy, ptr %i.mr, align 16, !tbaa !104
  %indvars.iv.next522 = add nuw nsw i64 %indvars.iv521, 1 ; 2 uses
  %exitcond526.not = icmp eq i64 %indvars.iv.next522, %wide.trip.count525
  br i1 %exitcond526.not, label %._crit_edge415, label %.preheader348, !llvm.loop !54

.preheader341:                                    ; preds = %.preheader341.prol.loopexit, %.preheader341
  %indvars.iv508 = phi i64 [ %indvars.iv.next509.1, %.preheader341 ], [ %indvars.iv508.unr, %.preheader341.prol.loopexit ] ; 4 uses
  %i.yz = getelementptr inbounds nuw [12 x i8], ptr %i.wh, i64 %indvars.iv508 ; 3 uses
  %i.za = getelementptr inbounds nuw [12 x i8], ptr %i.ks, i64 %indvars.iv508 ; 4 uses
  %i.zb = load float, ptr %i.wf, align 4, !tbaa !104
  %i.zc = load float, ptr %i.yz, align 4, !tbaa !104
  %i.zd = load float, ptr %i.za, align 4, !tbaa !104
  %i.ze = call float @llvm.fmuladd.f32(float %i.zb, float %i.zc, float %i.zd)
  store float %i.ze, ptr %i.za, align 4, !tbaa !104
  %i.zf = load float, ptr %i.wf, align 4, !tbaa !104
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yz, i64 4
  %i.zh = load float, ptr %i.zg, align 4, !tbaa !104
  %i.zi = getelementptr inbounds nuw i8, ptr %i.za, i64 4 ; 2 uses
  %i.zj = load float, ptr %i.zi, align 4, !tbaa !104
  %i.zk = call float @llvm.fmuladd.f32(float %i.zf, float %i.zh, float %i.zj)
  store float %i.zk, ptr %i.zi, align 4, !tbaa !104
  %i.zl = load float, ptr %i.wf, align 4, !tbaa !104
  %i.zm = getelementptr inbounds nuw i8, ptr %i.yz, i64 8
  %i.zn = load float, ptr %i.zm, align 4, !tbaa !104
  %i.zo = getelementptr inbounds nuw i8, ptr %i.za, i64 8 ; 2 uses
  %i.zp = load float, ptr %i.zo, align 4, !tbaa !104
  %i.zq = call float @llvm.fmuladd.f32(float %i.zl, float %i.zn, float %i.zp)
  store float %i.zq, ptr %i.zo, align 4, !tbaa !104
  %indvars.iv.next509 = add nuw nsw i64 %indvars.iv508, 1 ; 2 uses
  %i.zr = getelementptr inbounds nuw [12 x i8], ptr %i.wh, i64 %indvars.iv.next509 ; 3 uses
  %i.zs = getelementptr inbounds nuw [12 x i8], ptr %i.ks, i64 %indvars.iv.next509 ; 4 uses
  %i.zt = load float, ptr %i.wf, align 4, !tbaa !104
  %i.zu = load float, ptr %i.zr, align 4, !tbaa !104
  %i.zv = load float, ptr %i.zs, align 4, !tbaa !104
  %i.zw = call float @llvm.fmuladd.f32(float %i.zt, float %i.zu, float %i.zv)
  store float %i.zw, ptr %i.zs, align 4, !tbaa !104
  %i.zx = load float, ptr %i.wf, align 4, !tbaa !104
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zr, i64 4
  %i.zz = load float, ptr %i.zy, align 4, !tbaa !104
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zs, i64 4 ; 2 uses
  %i.aab = load float, ptr %i.aaa, align 4, !tbaa !104
  %i.aac = call float @llvm.fmuladd.f32(float %i.zx, float %i.zz, float %i.aab)
  store float %i.aac, ptr %i.aaa, align 4, !tbaa !104
  %i.aad = load float, ptr %i.wf, align 4, !tbaa !104
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zr, i64 8
  %i.aaf = load float, ptr %i.aae, align 4, !tbaa !104
  %i.aag = getelementptr inbounds nuw i8, ptr %i.zs, i64 8 ; 2 uses
  %i.aah = load float, ptr %i.aag, align 4, !tbaa !104
  %i.aai = call float @llvm.fmuladd.f32(float %i.aad, float %i.aaf, float %i.aah)
  store float %i.aai, ptr %i.aag, align 4, !tbaa !104
  %indvars.iv.next509.1 = add nuw nsw i64 %indvars.iv508, 2 ; 2 uses
  %exitcond512.not.1 = icmp eq i64 %indvars.iv.next509.1, %i.ly
  br i1 %exitcond512.not.1, label %.preheader347.loopexit, label %.preheader341, !llvm.loop !55

._crit_edge415:                                   ; preds = %.preheader347, %._crit_edge409
  br i1 %.not263, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge415
  %.pre592 = load i32, ptr @_ZZ10gmx_filteriPPcE2nf, align 4, !tbaa !70 ; 3 uses
  br i1 %i.vr, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.aaj = srem i32 %.0232, %.pre592
  %i.aak = add nsw i32 %.pre592, -1
  %i.aal = icmp eq i32 %i.aaj, %i.aak
  br i1 %i.aal, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.aam = sext i32 %.pre592 to i64
  %i.aan = getelementptr [4 x i8], ptr %i.jh, i64 %i.aam
  %i.aao = getelementptr i8, ptr %i.aan, i64 -4
  %i.aap = load float, ptr %i.aao, align 4, !tbaa !104
  %i.aaq = load i8, ptr @_ZZ10gmx_filteriPPcE4bFit, align 1, !tbaa !105, !range !106, !noundef !107
  %i.aar = trunc nuw i8 %i.aaq to i1
  %.sroa.sel = select i1 %i.aar, ptr %i.g, ptr %i.h
  %i.aas = invoke noundef i32 @_Z9write_trxP11t_trxstatusiPKiPK7t_atomsifPA3_fS7_S7_P12gmx_conect_t(ptr noundef nonnull %.0242, i32 noundef %i.jr, ptr noundef %i.ka, ptr noundef %i.lx, i32 noundef 0, float noundef %i.aap, ptr noundef nonnull %.sroa.sel, ptr noundef %i.ks, ptr noundef null, ptr noundef null)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bg:                                            ; preds = %bb.bf, %bb.be, %._crit_edge415
  br i1 %i.lv, label %.preheader353, label %bb.bh

.preheader353:                                    ; preds = %bb.bg
  br i1 %i.kb, label %.preheader346.lr.ph, label %._crit_edge418.thread

._crit_edge418.thread:                            ; preds = %.preheader353
  %i.aat = load i8, ptr @_ZZ10gmx_filteriPPcE4bFit, align 1, !tbaa !105, !range !106, !noundef !107
  %i.aau = trunc nuw i8 %i.aat to i1
  %i.aav = select i1 %i.aau, ptr %i.g, ptr %i.h
  br label %.loopexit352

.preheader346.lr.ph:                              ; preds = %.preheader353
  %i.aaw = load ptr, ptr %i.f, align 8, !tbaa !103 ; 6 uses
end_hunk_0
begin_hunk_1_@llvm.lifetime.start.p0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef zeroext i1 @_Z17parse_common_argsPiPPcmiP8t_filenmiP7t_pargsiPPKciS8_PP16gmx_output_env_t(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_Z11opt2fn_nullPKciPK8t_filenm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z11ftp2fn_nulliiPK8t_filenm(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_Z13read_tps_confRKNSt10filesystem7__cxx114pathEP10t_topologyP7PbcTypePPA3_fSA_S9_b(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !12     ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #13 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.c, ptr %i.a, align 8, !tbaa !145
  %i.e = icmp ugt i64 %i.c, 15
  br i1 %i.e, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !17
  %i.g = load i64, ptr %i.a, align 8, !tbaa !145
  store i64 %i.g, ptr %i.d, align 8, !tbaa !18
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.h = phi ptr [ %i.f, %.noexc.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.c, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.i = load i8, ptr %i.b, align 1, !tbaa !18
  store i8 %i.i, ptr %i.h, align 1, !tbaa !18
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %i.b, i64 %i.c, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !145  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !146
  %i.l = load ptr, ptr %0, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !14   ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.q) #13
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.p, %bb.h ], [ %i.p, %bb.i ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.t = load i64, ptr %i.d, align 8, !tbaa !18
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #13
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !18
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef ptr @_Z14gmx_rmpbc_initPK6t_idef7PbcTypei(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_Z15gmx_rmpbc_applyP9gmx_rmpbciPA3_KfPA3_f(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare void @_Z9get_indexPK7t_atomsPKciPiPS4_PPc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef float @_Z8calc_xcmPA3_KfiPKiPK6t_atomPfb(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #6

declare noundef i32 @_Z12read_first_xPK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEPfPPA3_fSC_(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z8open_trxRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #3

declare void @_Z6do_fitiPfPA3_KfPA3_f(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

declare noundef i32 @_Z9write_trxP11t_trxstatusiPKiPK7t_atomsifPA3_fS7_S7_P12gmx_conect_t(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_Z11read_next_xPK16gmx_output_env_tP11t_trxstatusPfPA3_fS6_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z14gmx_rmpbc_doneP9gmx_rmpbc(ptr noundef) local_unnamed_addr #3

declare void @_Z9close_trxP11t_trxstatus(ptr noundef) local_unnamed_addr #3

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #10

declare noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { cold }

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
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!10, !10, i64 0}
!13 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !9, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !11, i64 8, !5, i64 16}
!17 = !{!16, !10, i64 0}
!18 = !{!5, !5, i64 0}
!19 = distinct !{!19, !116}
!20 = distinct !{!20, !117}
!21 = distinct !{!21, i1 false, !"LVerDomain"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !116, !120, !121}
!25 = distinct !{!25, !117}
!26 = distinct !{!26, !116, !120}
!27 = distinct !{!27, !116}
!28 = distinct !{!28, !117}
!29 = distinct !{!29, !116}
!30 = distinct !{!30, !116, !120, !121}
!31 = distinct !{!31, !116, !120, !121}
!32 = distinct !{!32, !116, !121, !120}
!33 = distinct !{!33, !116}
!34 = distinct !{!34, !116}
!35 = distinct !{!35, !116}
!36 = distinct !{!36, !116}
!37 = distinct !{!37, i1 false, !"LVerDomain"}
!38 = distinct !{!38, !37}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !116, !120, !121}
!41 = distinct !{!41, !117}
!42 = distinct !{!42, !116, !120}
!43 = distinct !{!43, i1 false, !"LVerDomain"}
!44 = distinct !{!44, !43}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !116, !120, !121}
!47 = distinct !{!47, !117}
!48 = distinct !{!48, !116, !120}
!49 = distinct !{!49, i1 false, !"LVerDomain"}
!50 = distinct !{!50, !49}
!51 = distinct !{!51, !49}
!52 = distinct !{!52, !49}
!53 = distinct !{!53, !116, !120, !121}
!54 = distinct !{!54, !116}
!55 = distinct !{!55, !116, !120}
!56 = distinct !{!56, i1 false, !"LVerDomain"}
!57 = distinct !{!57, !56}
!58 = distinct !{!58, !56}
!59 = distinct !{!59, !56}
!60 = distinct !{!60, !116, !120, !121}
!61 = distinct !{!61, !116, !120}
!62 = distinct !{!62, i1 false, !"LVerDomain"}
!63 = distinct !{!63, !62}
!64 = distinct !{!64, !62}
!65 = distinct !{!65, !116, !120, !121}
!66 = distinct !{!66, !117}
!67 = distinct !{!67, !116, !120}
!68 = distinct !{!68, !116}
!69 = distinct !{!69, !116}
!70 = !{!6, !6, i64 0}
!71 = !{!"_ZTS7PbcType", !5, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !73, i64 0, !73, i64 8, !73, i64 16}
!75 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !74, i64 0}
!76 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !75, i64 0}
!77 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !76, i64 0}
!78 = !{!"_ZTS8t_filenm", !6, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !77, i64 32}
!79 = !{!78, !6, i64 0}
!80 = !{!78, !10, i64 8}
!81 = !{!78, !10, i64 16}
!82 = !{!78, !11, i64 24}
!83 = !{!"any p2 pointer", !9, i64 0}
!84 = !{!"p2 omnipotent char", !83, i64 0}
!85 = !{!"p1 _ZTS9t_iparams", !9, i64 0}
!86 = !{!"float", !5, i64 0}
!87 = !{!"_ZTSN3gmx16EnumerationArrayI19InteractionFunction7t_ilistLS1_95EEE", !5, i64 0}
!88 = !{!"_ZTS6t_idef", !6, i64 0, !6, i64 4, !9, i64 8, !85, i64 16, !86, i64 24, !85, i64 32, !85, i64 40, !87, i64 48, !6, i64 2328}
!89 = !{!"p1 _ZTS6t_atom", !9, i64 0}
!90 = !{!"any p3 pointer", !83, i64 0}
!91 = !{!"p3 omnipotent char", !90, i64 0}
!92 = !{!"p1 _ZTS9t_resinfo", !9, i64 0}
!93 = !{!"p1 _ZTS9t_pdbinfo", !9, i64 0}
!94 = !{!"bool", !5, i64 0}
!95 = !{!"_ZTS7t_atoms", !6, i64 0, !89, i64 8, !91, i64 16, !91, i64 24, !91, i64 32, !6, i64 40, !92, i64 48, !93, i64 56, !94, i64 64, !94, i64 65, !94, i64 66, !94, i64 67, !94, i64 68}
!96 = !{!"p1 int", !9, i64 0}
!97 = !{!"_ZTS7t_block", !6, i64 0, !96, i64 8, !6, i64 16}
!98 = !{!"p1 _ZTS8t_symbuf", !9, i64 0}
!99 = !{!"_ZTS8t_symtab", !6, i64 0, !98, i64 8}
!100 = !{!"_ZTS10t_topology", !84, i64 0, !88, i64 8, !95, i64 2344, !97, i64 2416, !94, i64 2440, !99, i64 2448}
!101 = !{!100, !6, i64 2344}
!102 = !{!"p1 float", !9, i64 0}
!103 = !{!102, !102, i64 0}
!104 = !{!86, !86, i64 0}
!105 = !{!94, !94, i64 0}
!106 = !{i8 0, i8 2}
!107 = !{}
!108 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!109 = !{!108, !108, i64 0}
!110 = !{!96, !96, i64 0}
!111 = !{!100, !89, i64 2352}
!112 = !{!"short", !5, i64 0}
!113 = !{!"_ZTS12ParticleType", !5, i64 0}
!114 = !{!"_ZTS6t_atom", !86, i64 0, !86, i64 4, !86, i64 8, !86, i64 12, !112, i64 16, !112, i64 18, !113, i64 20, !6, i64 24, !6, i64 28, !5, i64 32}
!115 = !{!114, !86, i64 0}
!116 = !{!"llvm.loop.mustprogress"}
!117 = !{!"llvm.loop.unroll.disable"}
!118 = !{!22}
!119 = !{!23}
!120 = !{!"llvm.loop.isvectorized", i32 1}
!121 = !{!"llvm.loop.unroll.runtime.disable"}
!122 = !{!"p1 _ZTS16gmx_output_env_t", !9, i64 0}
!123 = !{!122, !122, i64 0}
!124 = !{!"branch_weights", i32 8, i32 24}
!125 = !{!38}
!126 = !{!39}
!127 = !{!44}
!128 = !{!45}
!129 = !{!50}
!130 = !{!51}
!131 = !{!52}
!132 = !{!50, !51}
!133 = !{!57}
!134 = !{!58}
!135 = !{!59}
!136 = !{!57, !58}
!137 = !{!63}
!138 = !{!64}
!139 = !{!"p1 _ZTS11t_trxstatus", !9, i64 0}
!140 = !{!139, !139, i64 0}
!141 = !{!74, !73, i64 0}
!142 = !{!74, !73, i64 8}
!143 = !{!74, !73, i64 16}
!144 = !{!15, !10, i64 0}
!145 = !{!11, !11, i64 0}
!146 = !{!16, !11, i64 8}
end_hunk_1

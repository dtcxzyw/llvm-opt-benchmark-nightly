Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_energy?download=true
inline.NumInlined: 676
inline.NumDeleted: 290
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_Z10gmx_energyiPPc:bb.a
  %i.cuh = fptrunc double %i.cug to float
  store float %i.cuh, ptr %i.cuc, align 4, !tbaa !54
  %i.cui = getelementptr inbounds nuw [8 x i8], ptr %i.crq, i64 %indvars.iv.next58.i.i
  store <2 x float> zeroinitializer, ptr %i.cui, align 4, !tbaa !54
  %indvars.iv.next58.i.i.1 = add nuw nsw i64 %indvars.iv57.i.i, 2 ; 3 uses
  %i.cuj = trunc nuw nsw i64 %indvars.iv.next58.i.i.1 to i32
  %i.cuk = uitofp nneg i32 %i.cuj to double
  %i.cul = getelementptr inbounds nuw [4 x i8], ptr %i.cro, i64 %indvars.iv.next58.i.i.1 ; 2 uses
  %i.cum = load float, ptr %i.cul, align 4, !tbaa !54
  %i.cun = fpext float %i.cum to double
  %i.cuo = fneg double %i.cuk
  %i.cup = call double @llvm.fmuladd.f64(double %i.cuo, double %i.crn, double %i.cun)
  %i.cuq = fptrunc double %i.cup to float
  store float %i.cuq, ptr %i.cul, align 4, !tbaa !54
  %i.cur = getelementptr inbounds nuw [8 x i8], ptr %i.crq, i64 %indvars.iv.next58.i.i.1
  store <2 x float> zeroinitializer, ptr %i.cur, align 4, !tbaa !54
  %indvars.iv.next58.i.i.2 = add nuw nsw i64 %indvars.iv57.i.i, 3 ; 3 uses
  %i.cus = trunc nuw nsw i64 %indvars.iv.next58.i.i.2 to i32
  %i.cut = uitofp nneg i32 %i.cus to double
  %i.cuu = getelementptr inbounds nuw [4 x i8], ptr %i.cro, i64 %indvars.iv.next58.i.i.2 ; 2 uses
  %i.cuv = load float, ptr %i.cuu, align 4, !tbaa !54
  %i.cuw = fpext float %i.cuv to double
  %i.cux = fneg double %i.cut
  %i.cuy = call double @llvm.fmuladd.f64(double %i.cux, double %i.crn, double %i.cuw)
  %i.cuz = fptrunc double %i.cuy to float
  store float %i.cuz, ptr %i.cuu, align 4, !tbaa !54
  %i.cva = getelementptr inbounds nuw [8 x i8], ptr %i.crq, i64 %indvars.iv.next58.i.i.2
  store <2 x float> zeroinitializer, ptr %i.cva, align 4, !tbaa !54
  %indvars.iv.next58.i.i.3 = add nuw nsw i64 %indvars.iv57.i.i, 4 ; 2 uses
  %exitcond61.not.i.i.3 = icmp eq i64 %indvars.iv.next58.i.i.3, %wide.trip.count60.i.i
  br i1 %exitcond61.not.i.i.3, label %._crit_edge.us.us.i.i499, label %vec.epilog.scalar.ph2044, !llvm.loop !147

._crit_edge.us.us.i.i499:                         ; preds = %vec.epilog.scalar.ph2044.prol.loopexit, %vec.epilog.scalar.ph2044, %vec.epilog.middle.block2059, %middle.block2040
  %indvars.iv.next63.i.i = add nuw nsw i64 %indvars.iv62.i.i, 1 ; 2 uses
  %exitcond66.not.i.i = icmp eq i64 %indvars.iv.next63.i.i, %wide.trip.count55.i.i
  br i1 %exitcond66.not.i.i, label %._crit_edge39.us.i.i, label %iter.check2043, !llvm.loop !148

._crit_edge39.us.i.i:                             ; preds = %._crit_edge.us45.i.i, %._crit_edge.us.us.i.i499, %.lr.ph38.split.us.us.i.i
  %i.cvb = phi i32 [ %i.cmv, %._crit_edge.us.us.i.i499 ], [ %i.cmv, %.lr.ph38.split.us.us.i.i ], [ %i.cnl, %._crit_edge.us45.i.i ]
  %i.cvc = phi i32 [ %i.cmv, %._crit_edge.us.us.i.i499 ], [ %i.cmv, %.lr.ph38.split.us.us.i.i ], [ %i.cnm, %._crit_edge.us45.i.i ]
  invoke fastcc void @_ZL13calc_averagesiP10enerdata_tii(i32 noundef %i.cml, ptr noundef nonnull %36, i32 noundef %i.cmo, i32 noundef %i.cmp)
          to label %.noexc505 unwind label %.loopexit.split-lp711.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc505:                                        ; preds = %._crit_edge39.us.i.i
  %i.cvd = add nuw nsw i32 %.040.us.i.i, 1        ; 2 uses
  %exitcond67.not.i.i = icmp eq i32 %i.cvd, 5
  br i1 %exitcond67.not.i.i, label %_ZL12remove_driftiiifP10enerdata_t.exit.i, label %.preheader.us.i.i, !llvm.loop !149

.lr.ph38.split.us.split.us.i.i:                   ; preds = %.lr.ph38.split.us.us.i.i
  %wide.trip.count60.i.i = zext nneg i32 %i.cmv to i64 ; 10 uses
  %i.cve = shl nuw nsw i64 %wide.trip.count60.i.i, 2
  %i.cvf = shl nuw nsw i64 %wide.trip.count60.i.i, 3
  %min.iters.check2024 = icmp ult i32 %i.cmv, 4
  %min.iters.check2026 = icmp ult i32 %i.cmv, 16
  %i.cvg = and i64 %wide.trip.count60.i.i, 12
  %n.vec2028 = and i64 %wide.trip.count60.i.i, 2147483632 ; 4 uses
  %cmp.n2041 = icmp eq i64 %n.vec2028, %wide.trip.count60.i.i
  %min.epilog.iters.check2046 = icmp eq i64 %i.cvg, 0
  %n.vec2048 = and i64 %wide.trip.count60.i.i, 2147483644 ; 3 uses
  %cmp.n2060 = icmp eq i64 %n.vec2048, %wide.trip.count60.i.i
  %xtraiter2395 = and i64 %wide.trip.count60.i.i, 3 ; 2 uses
  %lcmp.mod2396.not = icmp eq i64 %xtraiter2395, 0
  br label %iter.check2043

_ZL12remove_driftiiifP10enerdata_t.exit.i:        ; preds = %.noexc505, %bb.nm
  %i.cvh = icmp sgt i32 %i.cml, 0
  br i1 %i.cvh, label %.lr.ph.us.preheader.i, label %.split233.us.i

.lr.ph.us.preheader.i:                            ; preds = %_ZL12remove_driftiiifP10enerdata_t.exit.i
  %wide.trip.count.i490 = zext nneg i32 %i.cml to i64 ; 4 uses
  br label %bb.nq

bb.nq:                                            ; preds = %bb.nr, %.lr.ph.us.preheader.i
  %indvars.iv.i491 = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next.i492, %bb.nr ] ; 3 uses
  %i.cvi = getelementptr inbounds nuw [32 x i8], ptr %i.cmn, i64 %indvars.iv.i491
  %i.cvj = load ptr, ptr %i.cvi, align 8, !tbaa !23
  %i.cvk = invoke noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.cvj, ptr noundef nonnull @.str.116)
          to label %.noexc506 unwind label %.loopexit.split-lp711.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc506:                                        ; preds = %bb.nq
  %.not.us.i = icmp eq i32 %i.cvk, 0
  br i1 %.not.us.i, label %.critedge.us.split.loop.exit267.i, label %bb.nr

bb.nr:                                            ; preds = %.noexc506
  %indvars.iv.next.i492 = add nuw nsw i64 %indvars.iv.i491, 1 ; 2 uses
  %exitcond.not.i493 = icmp eq i64 %indvars.iv.next.i492, %wide.trip.count.i490
  br i1 %exitcond.not.i493, label %.critedge.us.i, label %bb.nq, !llvm.loop !150

.critedge.us.split.loop.exit267.i:                ; preds = %.noexc506
  %i.cvl = trunc nuw nsw i64 %indvars.iv.i491 to i32
  br label %.critedge.us.i

.critedge.us.i:                                   ; preds = %bb.nr, %.critedge.us.split.loop.exit267.i
  %storemerge.lcssa.us.i = phi i32 [ %i.cvl, %.critedge.us.split.loop.exit267.i ], [ %i.cml, %bb.nr ] ; 2 uses
  br label %bb.ns

bb.ns:                                            ; preds = %bb.nt, %.critedge.us.i
  %indvars.iv.1.i = phi i64 [ 0, %.critedge.us.i ], [ %indvars.iv.next.1.i, %bb.nt ] ; 3 uses
  %i.cvm = getelementptr inbounds nuw [32 x i8], ptr %i.cmn, i64 %indvars.iv.1.i
  %i.cvn = load ptr, ptr %i.cvm, align 8, !tbaa !23
  %i.cvo = invoke noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.cvn, ptr noundef nonnull @.str.276)
          to label %.noexc507 unwind label %.loopexit.split-lp711.loopexit.split-lp.loopexit

.noexc507:                                        ; preds = %bb.ns
  %.not.us.1.i = icmp eq i32 %i.cvo, 0
  br i1 %.not.us.1.i, label %.critedge.us.1.split.loop.exit269.i, label %bb.nt

bb.nt:                                            ; preds = %.noexc507
  %indvars.iv.next.1.i = add nuw nsw i64 %indvars.iv.1.i, 1 ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %indvars.iv.next.1.i, %wide.trip.count.i490
  br i1 %exitcond.1.not.i, label %.critedge.us.1.i, label %bb.ns, !llvm.loop !150

.critedge.us.1.split.loop.exit269.i:              ; preds = %.noexc507
  %i.cvp = trunc nuw nsw i64 %indvars.iv.1.i to i32
  br label %.critedge.us.1.i

.critedge.us.1.i:                                 ; preds = %bb.nt, %.critedge.us.1.split.loop.exit269.i
  %storemerge.lcssa.us.1.i = phi i32 [ %i.cvp, %.critedge.us.1.split.loop.exit269.i ], [ %i.cml, %bb.nt ] ; 2 uses
  br label %bb.nu

bb.nu:                                            ; preds = %bb.nv, %.critedge.us.1.i
  %indvars.iv.2.i = phi i64 [ 0, %.critedge.us.1.i ], [ %indvars.iv.next.2.i, %bb.nv ] ; 3 uses
  %i.cvq = getelementptr inbounds nuw [32 x i8], ptr %i.cmn, i64 %indvars.iv.2.i
  %i.cvr = load ptr, ptr %i.cvq, align 8, !tbaa !23
  %i.cvs = invoke noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.cvr, ptr noundef nonnull @.str.115)
          to label %.noexc508 unwind label %.loopexit.split-lp711.loopexit

.noexc508:                                        ; preds = %bb.nu
  %.not.us.2.i = icmp eq i32 %i.cvs, 0
  br i1 %.not.us.2.i, label %.critedge.us.2.split.loop.exit271.i, label %bb.nv

bb.nv:                                            ; preds = %.noexc508
  %indvars.iv.next.2.i = add nuw nsw i64 %indvars.iv.2.i, 1 ; 2 uses
  %exitcond.2.not.i = icmp eq i64 %indvars.iv.next.2.i, %wide.trip.count.i490
  br i1 %exitcond.2.not.i, label %.critedge.us.2.i, label %bb.nu, !llvm.loop !150

.critedge.us.2.split.loop.exit271.i:              ; preds = %.noexc508
  %i.cvt = trunc nuw nsw i64 %indvars.iv.2.i to i32
  br label %.critedge.us.2.i

.critedge.us.2.i:                                 ; preds = %bb.nv, %.critedge.us.2.split.loop.exit271.i
  %storemerge.lcssa.us.2.i = phi i32 [ %i.cvt, %.critedge.us.2.split.loop.exit271.i ], [ %i.cml, %bb.nv ] ; 2 uses
  br label %bb.nw

bb.nw:                                            ; preds = %bb.nx, %.critedge.us.2.i
  %indvars.iv.3.i = phi i64 [ 0, %.critedge.us.2.i ], [ %indvars.iv.next.3.i, %bb.nx ] ; 3 uses
  %i.cvu = getelementptr inbounds nuw [32 x i8], ptr %i.cmn, i64 %indvars.iv.3.i
  %i.cvv = load ptr, ptr %i.cvu, align 8, !tbaa !23
  %i.cvw = invoke noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.cvv, ptr noundef nonnull @.str.277)
          to label %.noexc509 unwind label %.loopexit710

.noexc509:                                        ; preds = %bb.nw
  %.not.us.3.i = icmp eq i32 %i.cvw, 0
  br i1 %.not.us.3.i, label %.split233.us.loopexit.split.loop.exit273.i, label %bb.nx

bb.nx:                                            ; preds = %.noexc509
  %indvars.iv.next.3.i = add nuw nsw i64 %indvars.iv.3.i, 1 ; 2 uses
  %exitcond.3.not.i = icmp eq i64 %indvars.iv.next.3.i, %wide.trip.count.i490
  br i1 %exitcond.3.not.i, label %.split233.us.i, label %bb.nw, !llvm.loop !150

.split233.us.loopexit.split.loop.exit273.i:       ; preds = %.noexc509
  %i.cvx = trunc nuw nsw i64 %indvars.iv.3.i to i32
  br label %.split233.us.i

.split233.us.i:                                   ; preds = %bb.nx, %.noexc503, %.split233.us.loopexit.split.loop.exit273.i, %_ZL12remove_driftiiifP10enerdata_t.exit.i
  %.sroa.0.0.i = phi i32 [ 0, %_ZL12remove_driftiiifP10enerdata_t.exit.i ], [ %storemerge.lcssa.us.i, %.split233.us.loopexit.split.loop.exit273.i ], [ 0, %.noexc503 ], [ %storemerge.lcssa.us.i, %bb.nx ] ; 3 uses
  %.sroa.5.0.i = phi i32 [ 0, %_ZL12remove_driftiiifP10enerdata_t.exit.i ], [ %storemerge.lcssa.us.1.i, %.split233.us.loopexit.split.loop.exit273.i ], [ 0, %.noexc503 ], [ %storemerge.lcssa.us.1.i, %bb.nx ] ; 3 uses
  %.sroa.7.0.i = phi i32 [ 0, %_ZL12remove_driftiiifP10enerdata_t.exit.i ], [ %storemerge.lcssa.us.2.i, %.split233.us.loopexit.split.loop.exit273.i ], [ 0, %.noexc503 ], [ %storemerge.lcssa.us.2.i, %bb.nx ] ; 2 uses
  %.sroa.9.0.i = phi i32 [ 0, %_ZL12remove_driftiiifP10enerdata_t.exit.i ], [ %i.cvx, %.split233.us.loopexit.split.loop.exit273.i ], [ 0, %.noexc503 ], [ %i.cml, %bb.nx ] ; 2 uses
  %i.cvy = icmp slt i32 %.sroa.7.0.i, %i.cml
  br i1 %i.cvy, label %bb.ny, label %.thread206.i

bb.ny:                                            ; preds = %.split233.us.i
  %i.cvz = load ptr, ptr %i.np, align 8, !tbaa !64 ; 6 uses
  %i.cwa = sext i32 %.sroa.7.0.i to i64
  %i.cwb = getelementptr inbounds [56 x i8], ptr %i.cvz, i64 %i.cwa
  %i.cwc = getelementptr inbounds nuw i8, ptr %i.cwb, i64 24
  %i.cwd = load double, ptr %i.cwc, align 8, !tbaa !66 ; 10 uses
  %i.cwe = icmp slt i32 %.sroa.0.0.i, %i.cml      ; 2 uses
  br i1 %i.cwe, label %bb.nz, label %bb.oa

bb.nz:                                            ; preds = %bb.ny
  %i.cwf = sext i32 %.sroa.0.0.i to i64
  %i.cwg = getelementptr inbounds [56 x i8], ptr %i.cvz, i64 %i.cwf ; 2 uses
  %i.cwh = getelementptr inbounds nuw i8, ptr %i.cwg, i64 24
  %i.cwi = load double, ptr %i.cwh, align 8, !tbaa !66
  %i.cwj = fmul double %i.cwi, f0x3A53CE9A36F23C11 ; 2 uses
  %i.cwk = getelementptr inbounds nuw i8, ptr %i.cwg, i64 32
  %i.cwl = load double, ptr %i.cwk, align 8, !tbaa !73
  %i.cwm = fmul double %i.cwl, f0x3A53CE9A36F23C11 ; 2 uses
  %i.cwn = fmul double %i.cwm, %i.cwm             ; 2 uses
  %i.cwo = fdiv double %i.cwn, %i.cwj
  %i.cwp = fmul double %i.cwd, f0x3B30B0E6D55E647C
  %i.cwq = fdiv double %i.cwo, %i.cwp
  br label %bb.oa

bb.oa:                                            ; preds = %bb.nz, %bb.ny
  %.0133.i = phi double [ %i.cwj, %bb.nz ], [ -2.345100e+04, %bb.ny ] ; 2 uses
  %.0132.i = phi double [ %i.cwn, %bb.nz ], [ -2.345100e+04, %bb.ny ] ; 2 uses
  %.0125.i = phi double [ %i.cwq, %bb.nz ], [ -2.345100e+04, %bb.ny ] ; 4 uses
  %i.cwr = icmp slt i32 %.sroa.5.0.i, %i.cml      ; 3 uses
  br i1 %i.cwr, label %bb.ob, label %bb.oc

bb.ob:                                            ; preds = %bb.oa
  %i.cws = sext i32 %.sroa.5.0.i to i64
  %i.cwt = getelementptr inbounds [56 x i8], ptr %i.cvz, i64 %i.cws
  %i.cwu = getelementptr inbounds nuw i8, ptr %i.cwt, i64 24
  %i.cwv = load <2 x double>, ptr %i.cwu, align 8, !tbaa !29
  %i.cww = fmul <2 x double> %i.cwv, splat (double 1.000000e+03)
  %i.cwx = fdiv <2 x double> %i.cww, splat (double f0x44DFE185CA57C517) ; 3 uses
  %foldExtExtBinop = fmul <2 x double> %i.cwx, %i.cwx
  %i.cwy = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.cwz = sitofp i32 %i.cmm to double
  %i.cxa = fdiv double %i.cwy, %i.cwz
  %i.cxb = fmul double %i.cwd, f0x3B30B0E6D55E647C
  %i.cxc = fmul double %i.cwd, %i.cxb
  %i.cxd = fdiv double %i.cxa, %i.cxc
  %i.cxe = fmul double %i.cxd, f0x44DFE185CA57C517
  %i.cxf = extractelement <2 x double> %i.cwx, i64 0
  br label %bb.oc

bb.oc:                                            ; preds = %bb.ob, %bb.oa
  %.0131.i = phi double [ %i.cxf, %bb.ob ], [ -2.345100e+04, %bb.oa ] ; 2 uses
  %.0127.i = phi double [ %i.cxe, %bb.ob ], [ -2.345100e+04, %bb.oa ] ; 2 uses
  %i.cxg = icmp slt i32 %.sroa.9.0.i, %i.cml
  %i.cxh = fcmp oeq double %.0131.i, -2.345100e+04
  %or.cond.i486 = select i1 %i.cxg, i1 %i.cxh, i1 false
  %i.cxi = fcmp une double %i.cwd, -2.345100e+04  ; 3 uses
  %or.cond3.i487 = select i1 %or.cond.i486, i1 %i.cxi, i1 false
  br i1 %or.cond3.i487, label %bb.od, label %bb.oe

bb.od:                                            ; preds = %bb.oc
  %i.cxj = sext i32 %.sroa.9.0.i to i64
  %i.cxk = getelementptr inbounds [56 x i8], ptr %i.cvz, i64 %i.cxj
  %i.cxl = getelementptr inbounds nuw i8, ptr %i.cxk, i64 32
  %i.cxm = load double, ptr %i.cxl, align 8, !tbaa !73 ; 2 uses
  %i.cxn = fmul double %i.cxm, %i.cxm
  %i.cxo = sitofp i32 %i.cmm to double
  %i.cxp = fdiv double %i.cxn, %i.cxo
  %i.cxq = fmul double %i.cwd, f0x3F81072C483AF26D
  %i.cxr = fmul double %i.cwd, %i.cxq
  %i.cxs = fdiv double %i.cxp, %i.cxr
  %i.cxt = fmul double %i.cxs, 1.000000e+03
  br label %bb.oe

bb.oe:                                            ; preds = %bb.od, %bb.oc
  %.0128.i = phi double [ %i.cxt, %bb.od ], [ -2.345100e+04, %bb.oc ] ; 2 uses
  %or.cond154.i = and i1 %i.cwe, %i.cwr
  br i1 %or.cond154.i, label %.preheader.i488, label %bb.oh

.preheader.i488:                                  ; preds = %bb.oe
  %i.cxu = load i32, ptr %i.nk, align 8, !tbaa !58 ; 4 uses
  %i.cxv = icmp sgt i32 %i.cxu, 0
  br i1 %i.cxv, label %.lr.ph.i489, label %.split.i

.lr.ph.i489:                                      ; preds = %.preheader.i488
  %i.cxw = sext i32 %.sroa.0.0.i to i64
  %i.cxx = getelementptr inbounds [56 x i8], ptr %i.cvz, i64 %i.cxw
  %i.cxy = load ptr, ptr %i.cxx, align 8, !tbaa !56 ; 5 uses
  %i.cxz = sext i32 %.sroa.5.0.i to i64
  %i.cya = getelementptr inbounds [56 x i8], ptr %i.cvz, i64 %i.cxz
  %i.cyb = load ptr, ptr %i.cya, align 8, !tbaa !56 ; 5 uses
  %wide.trip.count254.i = zext nneg i32 %i.cxu to i64 ; 2 uses
  %xtraiter2399 = and i64 %wide.trip.count254.i, 3 ; 3 uses
  %i.cyc = icmp ult i32 %i.cxu, 4
  br i1 %i.cyc, label %.epil.preheader2398, label %.lr.ph.i489.new

.lr.ph.i489.new:                                  ; preds = %.lr.ph.i489
  %unroll_iter2407 = and i64 %wide.trip.count254.i, 2147483644
  br label %bb.of

bb.of:                                            ; preds = %bb.of, %.lr.ph.i489.new
  %indvars.iv251.i = phi i64 [ 0, %.lr.ph.i489.new ], [ %indvars.iv.next252.i.3, %bb.of ] ; 6 uses
  %.0237.i = phi double [ 0.000000e+00, %.lr.ph.i489.new ], [ %i.dad, %bb.of ]
  %i.cyd = phi <2 x double> [ zeroinitializer, %.lr.ph.i489.new ], [ %i.daa, %bb.of ]
  %niter2408 = phi i64 [ 0, %.lr.ph.i489.new ], [ %niter2408.next.3, %bb.of ]
  %i.cye = getelementptr inbounds nuw [4 x i8], ptr %i.cxy, i64 %indvars.iv251.i
  %i.cyf = load float, ptr %i.cye, align 4, !tbaa !54
  %i.cyg = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %indvars.iv251.i
  %i.cyh = load float, ptr %i.cyg, align 4, !tbaa !54
  %i.cyi = insertelement <2 x float> poison, float %i.cyf, i64 0
  %i.cyj = insertelement <2 x float> %i.cyi, float %i.cyh, i64 1
  %i.cyk = fpext <2 x float> %i.cyj to <2 x double>
  %i.cyl = fmul <2 x double> %i.cyk, <double f0x3A53CE9A36F23C11, double 1.000000e+03> ; 2 uses
  %i.cym = fdiv <2 x double> %i.cyl, <double 1.000000e+00, double f0x44DFE185CA57C517> ; 2 uses
  %i.cyn = fadd <2 x double> %i.cyd, %i.cym
  %i.cyo = extractelement <2 x double> %i.cym, i64 1
  %i.cyp = extractelement <2 x double> %i.cyl, i64 0
  %i.cyq = call double @llvm.fmuladd.f64(double %i.cyp, double %i.cyo, double %.0237.i)
  %indvars.iv.next252.i = or disjoint i64 %indvars.iv251.i, 1 ; 2 uses
  %i.cyr = getelementptr inbounds nuw [4 x i8], ptr %i.cxy, i64 %indvars.iv.next252.i
  %i.cys = load float, ptr %i.cyr, align 4, !tbaa !54
  %i.cyt = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %indvars.iv.next252.i
  %i.cyu = load float, ptr %i.cyt, align 4, !tbaa !54
  %i.cyv = insertelement <2 x float> poison, float %i.cys, i64 0
  %i.cyw = insertelement <2 x float> %i.cyv, float %i.cyu, i64 1
  %i.cyx = fpext <2 x float> %i.cyw to <2 x double>
  %i.cyy = fmul <2 x double> %i.cyx, <double f0x3A53CE9A36F23C11, double 1.000000e+03> ; 2 uses
  %i.cyz = fdiv <2 x double> %i.cyy, <double 1.000000e+00, double f0x44DFE185CA57C517> ; 2 uses
  %i.cza = fadd <2 x double> %i.cyn, %i.cyz
  %i.czb = extractelement <2 x double> %i.cyz, i64 1
  %i.czc = extractelement <2 x double> %i.cyy, i64 0
  %i.czd = call double @llvm.fmuladd.f64(double %i.czc, double %i.czb, double %i.cyq)
  %indvars.iv.next252.i.1 = or disjoint i64 %indvars.iv251.i, 2 ; 2 uses
  %i.cze = getelementptr inbounds nuw [4 x i8], ptr %i.cxy, i64 %indvars.iv.next252.i.1
  %i.czf = load float, ptr %i.cze, align 4, !tbaa !54
  %i.czg = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %indvars.iv.next252.i.1
  %i.czh = load float, ptr %i.czg, align 4, !tbaa !54
  %i.czi = insertelement <2 x float> poison, float %i.czf, i64 0
  %i.czj = insertelement <2 x float> %i.czi, float %i.czh, i64 1
  %i.czk = fpext <2 x float> %i.czj to <2 x double>
  %i.czl = fmul <2 x double> %i.czk, <double f0x3A53CE9A36F23C11, double 1.000000e+03> ; 2 uses
  %i.czm = fdiv <2 x double> %i.czl, <double 1.000000e+00, double f0x44DFE185CA57C517> ; 2 uses
  %i.czn = fadd <2 x double> %i.cza, %i.czm
  %i.czo = extractelement <2 x double> %i.czm, i64 1
  %i.czp = extractelement <2 x double> %i.czl, i64 0
  %i.czq = call double @llvm.fmuladd.f64(double %i.czp, double %i.czo, double %i.czd)
  %indvars.iv.next252.i.2 = or disjoint i64 %indvars.iv251.i, 3 ; 2 uses
  %i.czr = getelementptr inbounds nuw [4 x i8], ptr %i.cxy, i64 %indvars.iv.next252.i.2
  %i.czs = load float, ptr %i.czr, align 4, !tbaa !54
  %i.czt = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %indvars.iv.next252.i.2
  %i.czu = load float, ptr %i.czt, align 4, !tbaa !54
  %i.czv = insertelement <2 x float> poison, float %i.czs, i64 0
  %i.czw = insertelement <2 x float> %i.czv, float %i.czu, i64 1
  %i.czx = fpext <2 x float> %i.czw to <2 x double>
  %i.czy = fmul <2 x double> %i.czx, <double f0x3A53CE9A36F23C11, double 1.000000e+03> ; 2 uses
  %i.czz = fdiv <2 x double> %i.czy, <double 1.000000e+00, double f0x44DFE185CA57C517> ; 2 uses
  %i.daa = fadd <2 x double> %i.czn, %i.czz       ; 3 uses
  %i.dab = extractelement <2 x double> %i.czz, i64 1
  %i.dac = extractelement <2 x double> %i.czy, i64 0
  %i.dad = call double @llvm.fmuladd.f64(double %i.dac, double %i.dab, double %i.czq) ; 3 uses
  %indvars.iv.next252.i.3 = add nuw nsw i64 %indvars.iv251.i, 4 ; 2 uses
  %niter2408.next.3 = add i64 %niter2408, 4       ; 2 uses
  %niter2408.ncmp.3 = icmp eq i64 %niter2408.next.3, %unroll_iter2407
  br i1 %niter2408.ncmp.3, label %.split.i.loopexit.unr-lcssa, label %bb.of, !llvm.loop !151

.split.i.loopexit.unr-lcssa:                      ; preds = %bb.of
  %lcmp.mod2403.not = icmp eq i64 %xtraiter2399, 0
  br i1 %lcmp.mod2403.not, label %.split.i, label %.epil.preheader2398

.epil.preheader2398:                              ; preds = %.split.i.loopexit.unr-lcssa, %.lr.ph.i489
  %indvars.iv251.i.epil.init = phi i64 [ 0, %.lr.ph.i489 ], [ %indvars.iv.next252.i.3, %.split.i.loopexit.unr-lcssa ]
  %.0237.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i489 ], [ %i.dad, %.split.i.loopexit.unr-lcssa ]
  %.epil.init2402 = phi <2 x double> [ zeroinitializer, %.lr.ph.i489 ], [ %i.daa, %.split.i.loopexit.unr-lcssa ]
  %lcmp.mod2406 = icmp ne i64 %xtraiter2399, 0
  call void @llvm.assume(i1 %lcmp.mod2406)
  br label %bb.og

bb.og:                                            ; preds = %bb.og, %.epil.preheader2398
  %indvars.iv251.i.epil = phi i64 [ %indvars.iv251.i.epil.init, %.epil.preheader2398 ], [ %indvars.iv.next252.i.epil, %bb.og ] ; 3 uses
  %.0237.i.epil = phi double [ %.0237.i.epil.init, %.epil.preheader2398 ], [ %i.dar, %bb.og ]
  %i.dae = phi <2 x double> [ %.epil.init2402, %.epil.preheader2398 ], [ %i.dao, %bb.og ]
  %epil.iter2400 = phi i64 [ 0, %.epil.preheader2398 ], [ %epil.iter2400.next, %bb.og ]
  %i.daf = getelementptr inbounds nuw [4 x i8], ptr %i.cxy, i64 %indvars.iv251.i.epil
  %i.dag = load float, ptr %i.daf, align 4, !tbaa !54
  %i.dah = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %indvars.iv251.i.epil
  %i.dai = load float, ptr %i.dah, align 4, !tbaa !54
  %i.daj = insertelement <2 x float> poison, float %i.dag, i64 0
  %i.dak = insertelement <2 x float> %i.daj, float %i.dai, i64 1
  %i.dal = fpext <2 x float> %i.dak to <2 x double>
  %i.dam = fmul <2 x double> %i.dal, <double f0x3A53CE9A36F23C11, double 1.000000e+03> ; 2 uses
  %i.dan = fdiv <2 x double> %i.dam, <double 1.000000e+00, double f0x44DFE185CA57C517> ; 2 uses
  %i.dao = fadd <2 x double> %i.dae, %i.dan       ; 2 uses
  %i.dap = extractelement <2 x double> %i.dan, i64 1
  %i.daq = extractelement <2 x double> %i.dam, i64 0
  %i.dar = call double @llvm.fmuladd.f64(double %i.daq, double %i.dap, double %.0237.i.epil) ; 2 uses
  %indvars.iv.next252.i.epil = add nuw nsw i64 %indvars.iv251.i.epil, 1
  %epil.iter2400.next = add i64 %epil.iter2400, 1 ; 2 uses
  %epil.iter2400.cmp.not = icmp eq i64 %epil.iter2400.next, %xtraiter2399
  br i1 %epil.iter2400.cmp.not, label %.split.i, label %bb.og, !llvm.loop !152

.split.i:                                         ; preds = %.split.i.loopexit.unr-lcssa, %bb.og, %.preheader.i488
  %.0.lcssa.i = phi double [ 0.000000e+00, %.preheader.i488 ], [ %i.dad, %.split.i.loopexit.unr-lcssa ], [ %i.dar, %bb.og ]
  %i.das = phi <2 x double> [ zeroinitializer, %.preheader.i488 ], [ %i.daa, %.split.i.loopexit.unr-lcssa ], [ %i.dao, %bb.og ]
  %i.dat = sitofp i32 %i.cxu to double            ; 2 uses
  %i.dau = fdiv double %.0.lcssa.i, %i.dat
  %i.dav = sitofp i32 %i.cmm to double
  %i.daw = insertelement <2 x double> poison, double %i.dat, i64 0
  %i.dax = shufflevector <2 x double> %i.daw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.day = fdiv <2 x double> %i.das, %i.dax       ; 3 uses
  %i.daz = extractelement <2 x double> %i.day, i64 0
  %i.dba = fmul double %i.daz, f0x3B30B0E6D55E647C
  %i.dbb = fmul double %i.cwd, %i.dba
  %i.dbc = fmul double %i.cwd, %i.dbb
  %i.dbd = fneg <2 x double> %i.day
  %i.dbe = shufflevector <2 x double> <double f0x44DFE185CA57C517, double poison>, <2 x double> %i.dbd, <2 x i32> <i32 0, i32 2>
  %i.dbf = insertelement <2 x double> <double -0.000000e+00, double poison>, double %i.dau, i64 1
  %i.dbg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dbe, <2 x double> %i.day, <2 x double> %i.dbf)
  %i.dbh = insertelement <2 x double> poison, double %i.dav, i64 0
  %i.dbi = insertelement <2 x double> %i.dbh, double %i.dbc, i64 1
  %i.dbj = fdiv <2 x double> %i.dbg, %i.dbi       ; 3 uses
  %i.dbk = insertelement <2 x double> %i.dbj, double %i.cwd, i64 0
  %i.dbl = fmul <2 x double> %i.dbk, %i.dbj       ; 2 uses
  %shift = shufflevector <2 x double> %i.dbl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2130 = fmul <2 x double> %i.dbl, %shift
  %i.dbm = extractelement <2 x double> %foldExtExtBinop2130, i64 0
  %i.dbn = fdiv double %i.dbm, %.0125.i
  %i.dbo = extractelement <2 x double> %i.dbj, i64 1
  br i1 %i.cxi, label %bb.oi, label %.thread206.i

bb.oh:                                            ; preds = %bb.oe
  br i1 %i.cxi, label %bb.oi, label %.thread206.i

bb.oi:                                            ; preds = %bb.oh, %.split.i
  %.0124226.i = phi double [ %i.dbn, %.split.i ], [ -2.345100e+04, %bb.oh ] ; 2 uses
  %.0126225.i = phi double [ %i.dbo, %.split.i ], [ -2.345100e+04, %bb.oh ] ; 2 uses
  %i.dbp = icmp slt i32 %i.cmm, 2
  br i1 %i.dbp, label %bb.oj, label %bb.ok

bb.oj:                                            ; preds = %bb.oi
  %i.dbq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cmi, ptr noundef nonnull @.str.279, i32 noundef %i.cmm) #27 ; 0 uses
  br label %bb.ok

bb.ok:                                            ; preds = %bb.oj, %bb.oi
  %i.dbr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cmi, ptr noundef nonnull @.str.280, double noundef %i.cwd) #27 ; 0 uses
  %fwrite145.i = call i64 @fwrite(ptr nonnull @.str.281, i64 61, i64 1, ptr %i.cmi) ; 0 uses
  %fwrite146.i = call i64 @fwrite(ptr nonnull @.str.282, i64 65, i64 1, ptr %i.cmi) ; 0 uses
  %fwrite147.i = call i64 @fwrite(ptr nonnull @.str.283, i64 33, i64 1, ptr %i.cmi) ; 0 uses
  %fwrite148.i = call i64 @fwrite(ptr nonnull @.str.284, i64 140, i64 1, ptr %i.cmi) ; 0 uses
  %i.dbs = load ptr, ptr @debug, align 8, !tbaa !61
  %i.dbt = icmp ne ptr %i.dbs, null
  %i.dbu = fcmp une double %.0132.i, -2.345100e+04
  %or.cond5.i = and i1 %i.dbu, %i.dbt
  br i1 %or.cond5.i, label %bb.ol, label %bb.om

bb.ol:                                            ; preds = %bb.ok
  %i.dbv = fmul double %.0132.i, f0x44DFE185CA57C517
  %i.dbw = sitofp i32 %i.cmm to double
  %i.dbx = fdiv double %i.dbv, %i.dbw
  %i.dby = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cmi, ptr noundef nonnull @.str.285, double noundef %i.dbx) #27 ; 0 uses
  br label %bb.om

bb.om:                                            ; preds = %bb.ol, %bb.ok
  %i.dbz = fcmp une double %.0133.i, -2.345100e+04
  br i1 %i.dbz, label %bb.on, label %bb.oo

bb.on:                                            ; preds = %bb.om
  %i.dca = fmul double %.0133.i, f0x44DFE185CA57C517
  %i.dcb = sitofp i32 %i.cmm to double
  %i.dcc = fdiv double %i.dca, %i.dcb
  %i.dcd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cmi, ptr noundef nonnull @.str.286, double noundef %i.dcc) #27 ; 0 uses
  br label %bb.oo

bb.oo:                                            ; preds = %bb.on, %bb.om
  br i1 %i.cwr, label %bb.op, label %bb.oq

bb.op:                                            ; preds = %bb.oo
  %i.dce = fmul double %.0131.i, f0x44DFE185CA57C517
  %i.dcf = sitofp i32 %i.cmm to double
  %i.dcg = fmul nnan double %i.dcf, 1.000000e+03
  %i.dch = fdiv double %i.dce, %i.dcg
  %i.dci = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cmi, ptr noundef nonnull @.str.287, double noundef %i.dch) #27 ; 0 uses
  br label %bb.oq

bb.oq:                                            ; preds = %bb.op, %bb.oo
  %i.dcj = fcmp une double %.0126225.i, -2.345100e+04
  br i1 %i.dcj, label %bb.or, label %bb.os

bb.or:                                            ; preds = %bb.oq
  %i.dck = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cmi, ptr noundef nonnull @.str.288, double noundef %.0126225.i) #27 ; 0 uses
  br label %bb.os

bb.os:                                            ; preds = %bb.or, %bb.oq
  %i.dcl = fcmp une double %.0125.i, -2.345100e+04
  br i1 %i.dcl, label %bb.ot, label %bb.ou

bb.ot:                                            ; preds = %bb.os
  %i.dcm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cmi, ptr noundef nonnull @.str.289, double noundef %.0125.i) #27 ; 0 uses
  %i.dcn = fdiv double 1.000000e+00, %.0125.i
  %i.dco = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cmi, ptr noundef nonnull @.str.290, double noundef %i.dcn) #27 ; 0 uses
  br label %bb.ou

bb.ou:                                            ; preds = %bb.ot, %bb.os
  %i.dcp = fcmp une double %.0127.i, -2.345100e+04
  br i1 %i.dcp, label %bb.ov, label %bb.ow

bb.ov:                                            ; preds = %bb.ou
  %i.dcq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cmi, ptr noundef nonnull @.str.291, double noundef %.0127.i) #27 ; 0 uses
  br label %bb.ow

bb.ow:                                            ; preds = %bb.ov, %bb.ou
  %i.dcr = fcmp une double %.0128.i, -2.345100e+04
  br i1 %i.dcr, label %bb.ox, label %bb.oy

bb.ox:                                            ; preds = %bb.ow
  %i.dcs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cmi, ptr noundef nonnull @.str.292, double noundef %.0128.i) #27 ; 0 uses
  br label %bb.oy

bb.oy:                                            ; preds = %bb.ox, %bb.ow
  %i.dct = fcmp une double %.0124226.i, -2.345100e+04
  br i1 %i.dct, label %bb.oz, label %bb.pa

bb.oz:                                            ; preds = %bb.oy
  %i.dcu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cmi, ptr noundef nonnull @.str.293, double noundef %.0124226.i) #27 ; 0 uses
  br label %bb.pa

bb.pa:                                            ; preds = %bb.oz, %bb.oy
  invoke void @_Z11please_citeP8_IO_FILEPKc(ptr noundef %i.cmi, ptr noundef nonnull @.str.294)
          to label %_ZL22calc_fluctuation_propsP8_IO_FILEbfiiN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEP10enerdata_tii.exit unwind label %.loopexit.split-lp711.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread206.i:                                     ; preds = %bb.oh, %.split.i, %.split233.us.i
  %fwrite144.i = call i64 @fwrite(ptr nonnull @.str.295, i64 77, i64 1, ptr %i.cmi) ; 0 uses
  br label %_ZL22calc_fluctuation_propsP8_IO_FILEbfiiN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEP10enerdata_tii.exit

.loopexit710:                                     ; preds = %bb.nw
  %lpad.loopexit712 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp711.loopexit:                   ; preds = %bb.nu
  %lpad.loopexit715 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp711.loopexit.split-lp.loopexit: ; preds = %bb.ns
  %lpad.loopexit718 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp711.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.nq
  %lpad.loopexit721 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp711.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %._crit_edge39.us.i.i
  %lpad.loopexit725 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp711.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.kp
  %lpad.loopexit728 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp711.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.pa, %.noexc503, %.noexc502, %.noexc501, %.noexc500, %_ZL12remove_driftiiifP10enerdata_t.exit.thread.i, %bb.kt, %bb.kg, %._crit_edge52.i, %._crit_edge.thread.i, %_ZL8calc_sumiP10enerdata_tii.exit.i, %.noexc475, %.noexc474, %.noexc473, %bb.jk, %.noexc471, %bb.jj, %bb.ji, %bb.jg, %bb.jf, %bb.je, %bb.jd, %bb.jc
  %lpad.loopexit.split-lp729 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZL22calc_fluctuation_propsP8_IO_FILEbfiiN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEP10enerdata_tii.exit: ; preds = %.thread206.i, %bb.pa, %bb.nk, %bb.iu
  %i.dcv = invoke noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef nonnull @.str.119, i32 noundef 12, ptr noundef nonnull %38)
          to label %bb.pb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.pb:                                            ; preds = %_ZL22calc_fluctuation_propsP8_IO_FILEbfiiN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEP10enerdata_tii.exit
  br i1 %i.dcv, label %bb.pc, label %bb.qz

bb.pc:                                            ; preds = %bb.pb
  %i.dcw = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.119, i32 noundef 12, ptr noundef nonnull %38)
          to label %bb.pd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.pd:                                            ; preds = %bb.pc
  %i.dcx = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.135, i32 noundef 12, ptr noundef nonnull %38)
          to label %bb.pe unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.pe:                                            ; preds = %bb.pd
  %i.dcy = load float, ptr @_ZZ10gmx_energyiPPcE7reftemp, align 4, !tbaa !54
  %i.dcz = load i32, ptr %i.aj, align 4, !tbaa !11 ; 6 uses
  %i.dda = load ptr, ptr %37, align 8, !tbaa !41
  %i.ddb = load ptr, ptr %i.al, align 8, !tbaa !171 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.dcw, ptr %i.c, align 8, !tbaa !18
  store ptr %i.dcx, ptr %i.d, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.ddc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.ddc, ptr %2, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 22, ptr %i.b, align 8, !tbaa !34
  %i.ddd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc537 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc537:                                        ; preds = %bb.pe
  store ptr %i.ddd, ptr %2, align 8, !tbaa !23
  %i.dde = load i64, ptr %i.b, align 8, !tbaa !34 ; 3 uses
  store i64 %i.dde, ptr %i.ddc, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.ddd, ptr noundef nonnull align 1 dereferenceable(22) @.str.297, i64 22, i1 false)
  %i.ddf = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.dde, ptr %i.ddf, align 8, !tbaa !33
  %i.ddg = load ptr, ptr %2, align 8, !tbaa !23
  %i.ddh = getelementptr inbounds nuw i8, ptr %i.ddg, i64 %i.dde
  store i8 0, ptr %i.ddh, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.ddi = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.ddj = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  store ptr %i.ddj, ptr %i.ddi, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 25, ptr %i.a, align 8, !tbaa !34
  %i.ddk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ddi, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc119.i unwind label %bb.pt ; 2 uses

.noexc119.i:                                      ; preds = %.noexc537
  store ptr %i.ddk, ptr %i.ddi, align 8, !tbaa !23
  %i.ddl = load i64, ptr %i.a, align 8, !tbaa !34 ; 3 uses
  store i64 %i.ddl, ptr %i.ddj, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.ddk, ptr noundef nonnull align 1 dereferenceable(25) @.str.298, i64 25, i1 false)
  %i.ddm = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.ddl, ptr %i.ddm, align 8, !tbaa !33
  %i.ddn = load ptr, ptr %i.ddi, align 8, !tbaa !23
  %i.ddo = getelementptr inbounds nuw i8, ptr %i.ddn, i64 %i.ddl
  store i8 0, ptr %i.ddo, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %i.ddp = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.299, ptr noundef nonnull @.str.140, i32 noundef 1333, i64 noundef 1, i64 noundef 80)
          to label %_ZL13gmx_snew_implI10t_enxframeEvPKcS2_iRPT_m.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ; 9 uses

_ZL13gmx_snew_implI10t_enxframeEvPKcS2_iRPT_m.exit.i: ; preds = %.noexc119.i
  store ptr null, ptr %i.e, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i8 noundef zeroext 2)
          to label %bb.pf unwind label %bb.pu

bb.pf:                                            ; preds = %_ZL13gmx_snew_implI10t_enxframeEvPKcS2_iRPT_m.exit.i
  %i.ddq = invoke noundef ptr @_Z8open_enxRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull @.str.142)
          to label %bb.pg unwind label %bb.pv     ; 3 uses

bb.pg:                                            ; preds = %bb.pf
  %i.ddr = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.dds = load ptr, ptr %i.ddr, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i.i514 = icmp eq ptr %i.dds, null
  br i1 %.not.i.i.i.i514, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i515, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ddr, ptr noundef nonnull %i.dds) #27
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i515

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i515: ; preds = %bb.ph, %bb.pg
  %i.ddt = load ptr, ptr %3, align 8, !tbaa !23   ; 2 uses
  %i.ddu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ddv = icmp eq ptr %i.ddt, %i.ddu
  br i1 %i.ddv, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i517, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i516

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i516: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i515
  %i.ddw = load i64, ptr %i.ddu, align 8, !tbaa !24
  %i.ddx = add i64 %i.ddw, 1
  call void @_ZdlPvm(ptr noundef %i.ddt, i64 noundef %i.ddx) #28
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i517

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i517:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i515, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i516
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.ddy = getelementptr inbounds nuw i8, ptr %i.ddp, i64 36 ; 3 uses
  invoke void @_Z9do_enxnmsP9ener_filePiPP11gmx_enxnm_t(ptr noundef %i.ddq, ptr noundef nonnull %i.ddy, ptr noundef nonnull %i.e)
          to label %bb.pi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.pi:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i517
end_hunk_0

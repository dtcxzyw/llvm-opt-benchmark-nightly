Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/membed?download=true
inline.NumInlined: 899
inline.NumDeleted: 473
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_Z11init_membedP8_IO_FILEiPK8t_filenmP10gmx_mtop_tP10t_inputrecP7t_stateP9t_commrecPf:bb.a
  %i.bzh = load ptr, ptr %i.ye, align 8, !tbaa !75 ; 2 uses
  %.not280.i = icmp eq ptr %i.bzg, %i.bzh
  br i1 %.not280.i, label %_ZNSt6vectorI14gmx_molblock_tSaIS0_EE6resizeEm.exit.i, label %.lr.ph274.i

._crit_edge275.i:                                 ; preds = %_ZN14gmx_molblock_taSERKS_.exit.i
  %i.bzi = sext i32 %.1158.i to i64               ; 3 uses
  %i.bzj = sub nuw nsw i64 %i.caz, %i.bzi
  %i.bzk = icmp ult i64 %i.caz, %i.bzi
  br i1 %i.bzk, label %bb.om, label %bb.on

bb.om:                                            ; preds = %._crit_edge275.i
  %i.bzl = sub nsw i64 0, %i.bzi
  invoke void @_ZNSt6vectorI14gmx_molblock_tSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ye, i64 noundef %i.bzl)
          to label %_ZNSt6vectorI14gmx_molblock_tSaIS0_EE6resizeEm.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i350.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.on:                                            ; preds = %._crit_edge275.i
  %.not281.i351 = icmp eq i32 %.1158.i, 0
  br i1 %.not281.i351, label %_ZNSt6vectorI14gmx_molblock_tSaIS0_EE6resizeEm.exit.i, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  %i.bzm = getelementptr inbounds nuw [56 x i8], ptr %i.cat, i64 %i.bzj ; 3 uses
  %.not.i.i185.i = icmp eq ptr %i.cau, %i.bzm
  br i1 %.not.i.i185.i, label %_ZNSt6vectorI14gmx_molblock_tSaIS0_EE6resizeEm.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.oo, %_ZSt8_DestroyI14gmx_molblock_tEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.cab, %_ZSt8_DestroyI14gmx_molblock_tEvPT_.exit.i.i.i.i.i ], [ %i.bzm, %bb.oo ] ; 5 uses
  %i.bzn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.bzo = load ptr, ptr %i.bzn, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bzo, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i, label %bb.op

bb.op:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.bzp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.bzq = load ptr, ptr %i.bzp, align 8, !tbaa !88
  %i.bzr = ptrtoint ptr %i.bzq to i64
  %i.bzs = ptrtoint ptr %i.bzo to i64
  %i.bzt = sub i64 %i.bzr, %i.bzs
  call void @_ZdlPvm(ptr noundef nonnull %i.bzo, i64 noundef %i.bzt) #27
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.op, %.lr.ph.i.i.i.i.i
  %i.bzu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.bzv = load ptr, ptr %i.bzu, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.bzv, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyI14gmx_molblock_tEvPT_.exit.i.i.i.i.i, label %bb.oq

bb.oq:                                            ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i
  %i.bzw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.bzx = load ptr, ptr %i.bzw, align 8, !tbaa !88
  %i.bzy = ptrtoint ptr %i.bzx to i64
  %i.bzz = ptrtoint ptr %i.bzv to i64
  %i.caa = sub i64 %i.bzy, %i.bzz
  call void @_ZdlPvm(ptr noundef nonnull %i.bzv, i64 noundef %i.caa) #27
  br label %_ZSt8_DestroyI14gmx_molblock_tEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyI14gmx_molblock_tEvPT_.exit.i.i.i.i.i: ; preds = %bb.oq, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i
  %i.cab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i352 = icmp eq ptr %i.cab, %i.cau
  br i1 %.not.i.i.i.i.i352, label %_ZSt8_DestroyIP14gmx_molblock_tS0_EvT_S2_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !170

_ZSt8_DestroyIP14gmx_molblock_tS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyI14gmx_molblock_tEvPT_.exit.i.i.i.i.i
  store ptr %i.bzm, ptr %i.ayu, align 8, !tbaa !74
  br label %_ZNSt6vectorI14gmx_molblock_tSaIS0_EE6resizeEm.exit.i

.lr.ph274.i:                                      ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.9.i, %_ZN14gmx_molblock_taSERKS_.exit.i
  %i.cac = phi ptr [ %i.cat, %_ZN14gmx_molblock_taSERKS_.exit.i ], [ %i.bzh, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.9.i ] ; 3 uses
  %i.cad = phi ptr [ %i.cau, %_ZN14gmx_molblock_taSERKS_.exit.i ], [ %i.bzg, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.9.i ]
  %.0273.i = phi i64 [ %i.cav, %_ZN14gmx_molblock_taSERKS_.exit.i ], [ 0, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.9.i ] ; 3 uses
  %.0157272.i = phi i32 [ %.1158.i, %_ZN14gmx_molblock_taSERKS_.exit.i ], [ 0, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.9.i ] ; 3 uses
  %i.cae = getelementptr inbounds nuw [56 x i8], ptr %i.cac, i64 %.0273.i ; 4 uses
  %i.caf = getelementptr inbounds nuw i8, ptr %i.cae, i64 4
  %i.cag = load i32, ptr %i.caf, align 4, !tbaa !358
  %i.cah = icmp eq i32 %i.cag, 0
  br i1 %i.cah, label %bb.or, label %bb.os

bb.or:                                            ; preds = %.lr.ph274.i
  %i.cai = add nsw i32 %.0157272.i, 1
  br label %_ZN14gmx_molblock_taSERKS_.exit.i

bb.os:                                            ; preds = %.lr.ph274.i
  %i.caj = sext i32 %.0157272.i to i64
  %i.cak = sub i64 %.0273.i, %i.caj
  %i.cal = getelementptr inbounds nuw [56 x i8], ptr %i.cac, i64 %i.cak ; 3 uses
  %i.cam = load i64, ptr %i.cae, align 8
  store i64 %i.cam, ptr %i.cal, align 8
  %i.can = getelementptr inbounds nuw i8, ptr %i.cal, i64 8
  %i.cao = getelementptr inbounds nuw i8, ptr %i.cae, i64 8
  %i.cap = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.can, ptr noundef nonnull align 8 dereferenceable(24) %i.cao)
          to label %.noexc187.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i350.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc187.i:                                      ; preds = %bb.os
  %i.caq = getelementptr inbounds nuw i8, ptr %i.cal, i64 32
  %i.car = getelementptr inbounds nuw i8, ptr %i.cae, i64 32
  %i.cas = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.caq, ptr noundef nonnull align 8 dereferenceable(24) %i.car)
          to label %.noexc187._ZN14gmx_molblock_taSERKS_.exit_crit_edge.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i350.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc187._ZN14gmx_molblock_taSERKS_.exit_crit_edge.i: ; preds = %.noexc187.i
  %.pre333.i = load ptr, ptr %i.ayu, align 8, !tbaa !74
  %.pre334.i = load ptr, ptr %i.ye, align 8, !tbaa !75
  br label %_ZN14gmx_molblock_taSERKS_.exit.i

_ZN14gmx_molblock_taSERKS_.exit.i:                ; preds = %.noexc187._ZN14gmx_molblock_taSERKS_.exit_crit_edge.i, %bb.or
  %i.cat = phi ptr [ %i.cac, %bb.or ], [ %.pre334.i, %.noexc187._ZN14gmx_molblock_taSERKS_.exit_crit_edge.i ] ; 3 uses
  %i.cau = phi ptr [ %i.cad, %bb.or ], [ %.pre333.i, %.noexc187._ZN14gmx_molblock_taSERKS_.exit_crit_edge.i ] ; 4 uses
  %.1158.i = phi i32 [ %i.cai, %bb.or ], [ %.0157272.i, %.noexc187._ZN14gmx_molblock_taSERKS_.exit_crit_edge.i ] ; 3 uses
  %i.cav = add nuw i64 %.0273.i, 1                ; 2 uses
  %i.caw = ptrtoint ptr %i.cau to i64
  %i.cax = ptrtoint ptr %i.cat to i64
  %i.cay = sub i64 %i.caw, %i.cax
  %i.caz = sdiv exact i64 %i.cay, 56              ; 3 uses
  %i.cba = icmp ult i64 %i.cav, %i.caz
  br i1 %i.cba, label %.lr.ph274.i, label %._crit_edge275.i, !llvm.loop !171

_ZNSt6vectorI14gmx_molblock_tSaIS0_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIP14gmx_molblock_tS0_EvT_S2_RSaIT0_E.exit.i.i.i, %bb.oo, %bb.on, %bb.om, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.9.i
  %i.cbb = load ptr, ptr %12, align 8, !tbaa !312 ; 3 uses
  %.not.i.i.i.i189.i = icmp eq ptr %i.cbb, null
  br i1 %.not.i.i.i.i189.i, label %bb.ov, label %bb.ot

bb.ot:                                            ; preds = %_ZNSt6vectorI14gmx_molblock_tSaIS0_EE6resizeEm.exit.i
  %i.cbc = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cbd = load ptr, ptr %i.cbc, align 8, !tbaa !375
  %i.cbe = ptrtoint ptr %i.cbd to i64
  %i.cbf = ptrtoint ptr %i.cbb to i64
  %i.cbg = sub i64 %i.cbe, %i.cbf
  call void @_ZdlPvm(ptr noundef nonnull %i.cbb, i64 noundef %i.cbg) #27
  br label %bb.ov

bb.ou:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i350.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cbh = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cbi = load ptr, ptr %i.cbh, align 8, !tbaa !375
  %i.cbj = ptrtoint ptr %i.cbi to i64
  %i.cbk = ptrtoint ptr %i.bxm to i64
  %i.cbl = sub i64 %i.cbj, %i.cbk
  call void @_ZdlPvm(ptr noundef nonnull %i.bxm, i64 noundef %i.cbl) #27
  br label %_ZN3gmx17RangePartitioningD2Ev.exit191.i

_ZN3gmx17RangePartitioningD2Ev.exit191.i:         ; preds = %bb.ou, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i350.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.kf
  %.pn168.pn.i = phi { ptr, i32 } [ %i.bbo, %bb.kf ], [ %lpad.loopexit.split-lp1595, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i350.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1595, %bb.ou ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @_ZN3gmx16EnumerationArrayI23SimulationAtomGroupTypeSt6vectorIhSaIhEELS1_10EED2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %.body273

bb.ov:                                            ; preds = %bb.ot, %_ZNSt6vectorI14gmx_molblock_tSaIS0_EE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @_ZN3gmx16EnumerationArrayI23SimulationAtomGroupTypeSt6vectorIhSaIhEELS1_10EED2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.cbm = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 3 uses
  %i.cbn = load ptr, ptr %i.cbm, align 8, !tbaa !422
  %i.cbo = load ptr, ptr %i.yd, align 8, !tbaa !351
  %i.cbp = ptrtoint ptr %i.cbn to i64
  %i.cbq = ptrtoint ptr %i.cbo to i64
  %i.cbr = sub i64 %i.cbp, %i.cbq
  %i.cbs = sdiv exact i64 %i.cbr, 2408
  %i.cbt = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 869, i64 noundef %i.cbs, i64 noundef 1)
          to label %.noexc376 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc376:                                        ; preds = %bb.ov
  %i.cbu = load ptr, ptr %i.cbm, align 8, !tbaa !422 ; 2 uses
  %i.cbv = load ptr, ptr %i.yd, align 8, !tbaa !351 ; 4 uses
  %i.cbw = ptrtoint ptr %i.cbu to i64
  %i.cbx = ptrtoint ptr %i.cbv to i64
  %i.cby = sub i64 %i.cbw, %i.cbx
  %i.cbz = sdiv exact i64 %i.cby, 2408            ; 2 uses
  %.not.i364 = icmp eq ptr %i.cbu, %i.cbv         ; 2 uses
  br i1 %.not.i364, label %.preheader72.i, label %.lr.ph.preheader.i365

.lr.ph.preheader.i365:                            ; preds = %.noexc376
  call void @llvm.memset.p0.i64(ptr align 1 %i.cbt, i8 1, i64 %i.cbz, i1 false), !tbaa !306
  br label %.preheader72.i

.preheader72.i:                                   ; preds = %.lr.ph.preheader.i365, %.noexc376
  %i.cca = load ptr, ptr %i.ayu, align 8, !tbaa !74 ; 2 uses
  %i.ccb = load ptr, ptr %i.ye, align 8, !tbaa !75 ; 3 uses
  %.not97.i = icmp eq ptr %i.cca, %i.ccb
  br i1 %.not97.i, label %.preheader71.i, label %.lr.ph90.i

.lr.ph90.i:                                       ; preds = %.preheader72.i
  %i.ccc = ptrtoint ptr %i.cca to i64
  %i.ccd = ptrtoint ptr %i.ccb to i64
  %i.cce = sub i64 %i.ccc, %i.ccd
  %i.ccf = sdiv exact i64 %i.cce, 56
  br label %bb.ow

.preheader71.i:                                   ; preds = %.critedge.i367, %.preheader72.i
  %.054.lcssa.i = phi i32 [ 0, %.preheader72.i ], [ %spec.select61.i, %.critedge.i367 ] ; 2 uses
  br i1 %.not.i364, label %._crit_edge96.i, label %.lr.ph95.i

bb.ow:                                            ; preds = %.critedge.i367, %.lr.ph90.i
  %.05189.i = phi i64 [ 0, %.lr.ph90.i ], [ %i.cde, %.critedge.i367 ] ; 2 uses
  %.05488.i = phi i32 [ 0, %.lr.ph90.i ], [ %spec.select61.i, %.critedge.i367 ]
  %.05687.i = phi i32 [ 0, %.lr.ph90.i ], [ %i.cdb, %.critedge.i367 ] ; 2 uses
  %i.ccg = getelementptr inbounds nuw [56 x i8], ptr %i.ccb, i64 %.05189.i ; 2 uses
  %i.cch = load i32, ptr %i.ccg, align 8, !tbaa !84
  %i.cci = sext i32 %i.cch to i64                 ; 2 uses
  %i.ccj = getelementptr inbounds nuw [2408 x i8], ptr %i.cbv, i64 %i.cci
  %i.cck = getelementptr inbounds nuw i8, ptr %i.ccj, i64 8
  %i.ccl = load i32, ptr %i.cck, align 8, !tbaa !366
  %i.ccm = getelementptr inbounds nuw i8, ptr %i.ccg, i64 4
  %i.ccn = load i32, ptr %i.ccm, align 4, !tbaa !358
  %52 = getelementptr inbounds i8, ptr %i.cbt, i64 %i.cci ; 2 uses
  %53 = mul nsw i32 %i.ccn, %i.ccl                ; 4 uses
  %54 = icmp sgt i32 %53, 0
  %.pre.i366 = load i8, ptr %52, align 1, !tbaa !306, !range !423 ; 2 uses
  br i1 %54, label %.lr.ph83.i, label %.critedge.i367

.lr.ph83.i:                                       ; preds = %bb.ow, %._crit_edge.i374
  %i.cco = phi i8 [ %.053.lcssa.i, %._crit_edge.i374 ], [ %.pre.i366, %bb.ow ]
  %.05881.i = phi i32 [ %i.ccz, %._crit_edge.i374 ], [ 0, %bb.ow ] ; 2 uses
  %i.ccp = trunc nuw i8 %i.cco to i1
  br i1 %i.ccp, label %bb.ox, label %.critedge.i367

bb.ox:                                            ; preds = %.lr.ph83.i
  %i.ccq = add nsw i32 %.05881.i, %.05687.i
  %i.ccr = load i32, ptr %i.k, align 8, !tbaa !64 ; 2 uses
  %i.ccs = icmp slt i32 %i.ccr, 1
  br i1 %i.ccs, label %._crit_edge.i374, label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %bb.ox
  %i.cct = load ptr, ptr %i.ig, align 8, !tbaa !65
  %i.ccu = zext nneg i32 %i.ccr to i64
  br label %bb.oy

bb.oy:                                            ; preds = %bb.oy, %.lr.ph79.i
  %indvars.iv.i370 = phi i64 [ 0, %.lr.ph79.i ], [ %indvars.iv.next.i371, %bb.oy ] ; 2 uses
  %i.ccv = getelementptr inbounds nuw [4 x i8], ptr %i.cct, i64 %indvars.iv.i370
  %i.ccw = load i32, ptr %i.ccv, align 4, !tbaa !30
  %i.ccx = icmp eq i32 %i.ccq, %i.ccw             ; 2 uses
  %indvars.iv.next.i371 = add nuw nsw i64 %indvars.iv.i370, 1 ; 2 uses
  %i.ccy = icmp samesign uge i64 %indvars.iv.next.i371, %i.ccu
  %.not60.i = select i1 %i.ccy, i1 true, i1 %i.ccx
  br i1 %.not60.i, label %._crit_edge.loopexit.i372, label %bb.oy, !llvm.loop !172

._crit_edge.loopexit.i372:                        ; preds = %bb.oy
  %spec.select.i373 = zext i1 %i.ccx to i8
  br label %._crit_edge.i374

._crit_edge.i374:                                 ; preds = %._crit_edge.loopexit.i372, %bb.ox
  %.053.lcssa.i = phi i8 [ 0, %bb.ox ], [ %spec.select.i373, %._crit_edge.loopexit.i372 ] ; 3 uses
  store i8 %.053.lcssa.i, ptr %52, align 1, !tbaa !306
  %i.ccz = add nuw nsw i32 %.05881.i, 1           ; 2 uses
  %exitcond.not.i375 = icmp eq i32 %i.ccz, %53
  br i1 %exitcond.not.i375, label %.critedge.i367, label %.lr.ph83.i, !llvm.loop !173

.critedge.i367:                                   ; preds = %._crit_edge.i374, %.lr.ph83.i, %bb.ow
  %i.cda = phi i8 [ %.pre.i366, %bb.ow ], [ %.053.lcssa.i, %._crit_edge.i374 ], [ 0, %.lr.ph83.i ]
  %i.cdb = add nsw i32 %53, %.05687.i
  %i.cdc = trunc nuw i8 %i.cda to i1
  %i.cdd = select i1 %i.cdc, i32 %53, i32 0
  %spec.select61.i = add nsw i32 %i.cdd, %.05488.i ; 2 uses
  %i.cde = add nuw i64 %.05189.i, 1               ; 2 uses
  %exitcond100.not.i = icmp eq i64 %i.cde, %i.ccf
  br i1 %exitcond100.not.i, label %.preheader71.i, label %bb.ow, !llvm.loop !174

._crit_edge96.i:                                  ; preds = %.loopexit.i368, %.preheader71.i
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 924, ptr noundef %i.cbt)
          to label %_ZL9rm_bondedP7t_blockP10gmx_mtop_t.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph95.i:                                       ; preds = %.preheader71.i, %.loopexit.i368
  %.094.i = phi i64 [ %i.cmp, %.loopexit.i368 ], [ 0, %.preheader71.i ] ; 3 uses
  %i.cdf = getelementptr inbounds nuw i8, ptr %i.cbt, i64 %.094.i
  %i.cdg = load i8, ptr %i.cdf, align 1, !tbaa !306, !range !423, !noundef !184
  %i.cdh = trunc nuw i8 %i.cdg to i1
  br i1 %i.cdh, label %.preheader70.i, label %.loopexit.i368

.preheader70.i:                                   ; preds = %.lr.ph95.i
  %i.cdi = getelementptr inbounds nuw [2408 x i8], ptr %i.cbv, i64 %.094.i ; 120 uses
  %i.cdj = getelementptr inbounds nuw i8, ptr %i.cdi, i64 80
  %i.cdk = load ptr, ptr %i.cdj, align 8, !tbaa !312 ; 2 uses
  %i.cdl = getelementptr inbounds nuw i8, ptr %i.cdi, i64 88 ; 2 uses
  %i.cdm = load ptr, ptr %i.cdl, align 8, !tbaa !314
  %.not.i.i.i369 = icmp eq ptr %i.cdm, %i.cdk
  br i1 %.not.i.i.i369, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %.preheader70.i
  store ptr %i.cdk, ptr %i.cdl, align 8, !tbaa !314
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.i:              ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i, %.preheader70.i
  %i.cdn = getelementptr inbounds nuw i8, ptr %i.cdi, i64 104
  %i.cdo = load ptr, ptr %i.cdn, align 8, !tbaa !312 ; 2 uses
  %i.cdp = getelementptr inbounds nuw i8, ptr %i.cdi, i64 112 ; 2 uses
  %i.cdq = load ptr, ptr %i.cdp, align 8, !tbaa !314
  %.not.i.i.1.i = icmp eq ptr %i.cdq, %i.cdo
  br i1 %.not.i.i.1.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.1.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.1.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.1.i:    ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
  store ptr %i.cdo, ptr %i.cdp, align 8, !tbaa !314
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.1.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.1.i:            ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.1.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
  %i.cdr = getelementptr inbounds nuw i8, ptr %i.cdi, i64 128
  %i.cds = load ptr, ptr %i.cdr, align 8, !tbaa !312 ; 2 uses
  %i.cdt = getelementptr inbounds nuw i8, ptr %i.cdi, i64 136 ; 2 uses
  %i.cdu = load ptr, ptr %i.cdt, align 8, !tbaa !314
  %.not.i.i.2.i = icmp eq ptr %i.cdu, %i.cds
  br i1 %.not.i.i.2.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.2.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2.i:    ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.1.i
  store ptr %i.cds, ptr %i.cdt, align 8, !tbaa !314
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.2.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.2.i:            ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.1.i
  %i.cdv = getelementptr inbounds nuw i8, ptr %i.cdi, i64 152
  %i.cdw = load ptr, ptr %i.cdv, align 8, !tbaa !312 ; 2 uses
  %i.cdx = getelementptr inbounds nuw i8, ptr %i.cdi, i64 160 ; 2 uses
  %i.cdy = load ptr, ptr %i.cdx, align 8, !tbaa !314
  %.not.i.i.3.i = icmp eq ptr %i.cdy, %i.cdw
  br i1 %.not.i.i.3.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.3.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.3.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.3.i:    ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.2.i
  store ptr %i.cdw, ptr %i.cdx, align 8, !tbaa !314
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.3.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.3.i:            ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.3.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.2.i
  %i.cdz = getelementptr inbounds nuw i8, ptr %i.cdi, i64 176
  %i.cea = load ptr, ptr %i.cdz, align 8, !tbaa !312 ; 2 uses
  %i.ceb = getelementptr inbounds nuw i8, ptr %i.cdi, i64 184 ; 2 uses
  %i.cec = load ptr, ptr %i.ceb, align 8, !tbaa !314
  %.not.i.i.4.i = icmp eq ptr %i.cec, %i.cea
  br i1 %.not.i.i.4.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.4.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.4.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.4.i:    ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.3.i
  store ptr %i.cea, ptr %i.ceb, align 8, !tbaa !314
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.4.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.4.i:            ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.4.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.3.i
  %i.ced = getelementptr inbounds nuw i8, ptr %i.cdi, i64 200
  %i.cee = load ptr, ptr %i.ced, align 8, !tbaa !312 ; 2 uses
  %i.cef = getelementptr inbounds nuw i8, ptr %i.cdi, i64 208 ; 2 uses
  %i.ceg = load ptr, ptr %i.cef, align 8, !tbaa !314
  %.not.i.i.5.i = icmp eq ptr %i.ceg, %i.cee
  br i1 %.not.i.i.5.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.5.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.5.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.5.i:    ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.4.i
  store ptr %i.cee, ptr %i.cef, align 8, !tbaa !314
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.5.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.5.i:            ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.5.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.4.i
  %i.ceh = getelementptr inbounds nuw i8, ptr %i.cdi, i64 224
  %i.cei = load ptr, ptr %i.ceh, align 8, !tbaa !312 ; 2 uses
  %i.cej = getelementptr inbounds nuw i8, ptr %i.cdi, i64 232 ; 2 uses
  %i.cek = load ptr, ptr %i.cej, align 8, !tbaa !314
  %.not.i.i.6.i = icmp eq ptr %i.cek, %i.cei
  br i1 %.not.i.i.6.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.6.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.6.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.6.i:    ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.5.i
  store ptr %i.cei, ptr %i.cej, align 8, !tbaa !314
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.6.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.6.i:            ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.6.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.5.i
  %i.cel = getelementptr inbounds nuw i8, ptr %i.cdi, i64 248
  %i.cem = load ptr, ptr %i.cel, align 8, !tbaa !312 ; 2 uses
  %i.cen = getelementptr inbounds nuw i8, ptr %i.cdi, i64 256 ; 2 uses
  %i.ceo = load ptr, ptr %i.cen, align 8, !tbaa !314
  %.not.i.i.7.i = icmp eq ptr %i.ceo, %i.cem
  br i1 %.not.i.i.7.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.7.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.7.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.7.i:    ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.6.i
  store ptr %i.cem, ptr %i.cen, align 8, !tbaa !314
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.7.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.7.i:            ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.7.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.6.i
  %i.cep = getelementptr inbounds nuw i8, ptr %i.cdi, i64 272
  %i.ceq = load ptr, ptr %i.cep, align 8, !tbaa !312 ; 2 uses
  %i.cer = getelementptr inbounds nuw i8, ptr %i.cdi, i64 280 ; 2 uses
  %i.ces = load ptr, ptr %i.cer, align 8, !tbaa !314
  %.not.i.i.8.i = icmp eq ptr %i.ces, %i.ceq
  br i1 %.not.i.i.8.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.8.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.8.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.8.i:    ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.7.i
  store ptr %i.ceq, ptr %i.cer, align 8, !tbaa !314
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.8.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.8.i:            ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.8.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.7.i
  %i.cet = getelementptr inbounds nuw i8, ptr %i.cdi, i64 296
  %i.ceu = load ptr, ptr %i.cet, align 8, !tbaa !312 ; 2 uses
  %i.cev = getelementptr inbounds nuw i8, ptr %i.cdi, i64 304 ; 2 uses
  %i.cew = load ptr, ptr %i.cev, align 8, !tbaa !314
  %.not.i.i.9.i = icmp eq ptr %i.cew, %i.ceu
  br i1 %.not.i.i.9.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.9.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.9.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.9.i:    ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.8.i
  store ptr %i.ceu, ptr %i.cev, align 8, !tbaa !314
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.9.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.9.i:            ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.9.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.8.i
  %i.cex = getelementptr inbounds nuw i8, ptr %i.cdi, i64 320
  %i.cey = load ptr, ptr %i.cex, align 8, !tbaa !312 ; 2 uses
  %i.cez = getelementptr inbounds nuw i8, ptr %i.cdi, i64 328 ; 2 uses
  %i.cfa = load ptr, ptr %i.cez, align 8, !tbaa !314
  %.not.i.i.10.i = icmp eq ptr %i.cfa, %i.cey
  br i1 %.not.i.i.10.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.10.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.10.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.10.i:   ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.9.i
  store ptr %i.cey, ptr %i.cez, align 8, !tbaa !314
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.10.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.10.i:           ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.10.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.9.i
  %i.cfb = getelementptr inbounds nuw i8, ptr %i.cdi, i64 344
  %i.cfc = load ptr, ptr %i.cfb, align 8, !tbaa !312 ; 2 uses
  %i.cfd = getelementptr inbounds nuw i8, ptr %i.cdi, i64 352 ; 2 uses
  %i.cfe = load ptr, ptr %i.cfd, align 8, !tbaa !314
  %.not.i.i.11.i = icmp eq ptr %i.cfe, %i.cfc
  br i1 %.not.i.i.11.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.11.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.11.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.11.i:   ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.10.i
  store ptr %i.cfc, ptr %i.cfd, align 8, !tbaa !314
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.11.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.11.i:           ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.11.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.10.i
  %i.cff = getelementptr inbounds nuw i8, ptr %i.cdi, i64 368
  %i.cfg = load ptr, ptr %i.cff, align 8, !tbaa !312 ; 2 uses
  %i.cfh = getelementptr inbounds nuw i8, ptr %i.cdi, i64 376 ; 2 uses
  %i.cfi = load ptr, ptr %i.cfh, align 8, !tbaa !314
  %.not.i.i.12.i = icmp eq ptr %i.cfi, %i.cfg
  br i1 %.not.i.i.12.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.12.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.12.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.12.i:   ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.11.i
  store ptr %i.cfg, ptr %i.cfh, align 8, !tbaa !314
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.12.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.12.i:           ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.12.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.11.i
  %i.cfj = getelementptr inbounds nuw i8, ptr %i.cdi, i64 392
  %i.cfk = load ptr, ptr %i.cfj, align 8, !tbaa !312 ; 2 uses
  %i.cfl = getelementptr inbounds nuw i8, ptr %i.cdi, i64 400 ; 2 uses
  %i.cfm = load ptr, ptr %i.cfl, align 8, !tbaa !314
  %.not.i.i.13.i = icmp eq ptr %i.cfm, %i.cfk
  br i1 %.not.i.i.13.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.13.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.13.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.13.i:   ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.12.i
  store ptr %i.cfk, ptr %i.cfl, align 8, !tbaa !314
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.13.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.13.i:           ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.13.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.12.i
  %i.cfn = getelementptr inbounds nuw i8, ptr %i.cdi, i64 416
  %i.cfo = load ptr, ptr %i.cfn, align 8, !tbaa !312 ; 2 uses
  %i.cfp = getelementptr inbounds nuw i8, ptr %i.cdi, i64 424 ; 2 uses
  %i.cfq = load ptr, ptr %i.cfp, align 8, !tbaa !314
  %.not.i.i.14.i = icmp eq ptr %i.cfq, %i.cfo
  br i1 %.not.i.i.14.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.14.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.14.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.14.i:   ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.13.i
  store ptr %i.cfo, ptr %i.cfp, align 8, !tbaa !314
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.14.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.14.i:           ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.14.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.13.i
  %i.cfr = getelementptr inbounds nuw i8, ptr %i.cdi, i64 440
  %i.cfs = load ptr, ptr %i.cfr, align 8, !tbaa !312 ; 2 uses
end_hunk_0

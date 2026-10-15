Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarcomp?download=true
inline.NumInlined: 1563
inline.NumDeleted: 578
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6colvar3cvc15debug_gradientsEv:bb.a
  %.sroa.71215.0..sroa_idx1216 = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  store double %i.nl, ptr %.sroa.71215.0..sroa_idx1216, align 8, !tbaa !24
  %.not10.i.i.i.i.i287 = icmp eq ptr %i.nn, %i.mz
  br i1 %.not10.i.i.i.i.i287, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i292, label %.lr.ph.i.i.i.i.i288

.lr.ph.i.i.i.i.i288:                              ; preds = %.noexc297, %.lr.ph.i.i.i.i.i288
  %.012.i.i.i.i.i289 = phi ptr [ %i.ob, %.lr.ph.i.i.i.i.i288 ], [ %i.ny, %.noexc297 ] ; 2 uses
  %.0911.i.i.i.i.i290 = phi ptr [ %i.oa, %.lr.ph.i.i.i.i.i288 ], [ %i.nn, %.noexc297 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i289, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i290, i64 24, i1 false), !tbaa.struct !152, !alias.scope !393
  %i.oa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i290, i64 24 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i289, i64 24 ; 2 uses
  %.not.i.i.i.i.i291 = icmp eq ptr %i.oa, %i.mz
  br i1 %.not.i.i.i.i.i291, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i292, label %.lr.ph.i.i.i.i.i288, !llvm.loop !273

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i292: ; preds = %.lr.ph.i.i.i.i.i288, %.noexc297
  %.0.lcssa.i.i.i.i.i293 = phi ptr [ %i.ny, %.noexc297 ], [ %i.ob, %.lr.ph.i.i.i.i.i288 ]
  %i.oc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i293, i64 24 ; 2 uses
  %.not.i23.i.i294 = icmp eq ptr %i.nn, null
  br i1 %.not.i23.i.i294, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i295, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i292
  %i.od = load ptr, ptr %i.bb, align 8, !tbaa !153
  %i.oe = ptrtoint ptr %i.od to i64
  %i.of = sub i64 %i.oe, %i.np
  call void @_ZdlPvm(ptr noundef nonnull %i.nn, i64 noundef %i.of) #31
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i295

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i295: ; preds = %bb.x, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i292
  store ptr %i.ny, ptr %i.az, align 8, !tbaa !154
  store ptr %i.oc, ptr %i.ba, align 8, !tbaa !151
  %i.og = getelementptr inbounds nuw [24 x i8], ptr %i.ny, i64 %i.nw ; 2 uses
  store ptr %i.og, ptr %i.bb, align 8, !tbaa !153
  %.pre3452 = load i64, ptr %i.mv, align 8, !tbaa !147
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE9push_backERKS1_.exit298

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE9push_backERKS1_.exit298: ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i295, %bb.u
  %i.oh = phi i64 [ %.pre3452, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i295 ], [ %i.my, %bb.u ] ; 2 uses
  %i.oi = phi ptr [ %i.og, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i295 ], [ %i.mz, %bb.u ]
  %i.oj = phi ptr [ %i.oc, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i295 ], [ %i.nm, %bb.u ]
  %i.ok = add nuw i64 %.0753150, 1                ; 2 uses
  %i.ol = icmp ult i64 %i.ok, %i.oh
  br i1 %i.ol, label %bb.t, label %.loopexit1453, !llvm.loop !278

.loopexit1454:                                    ; preds = %_ZNKSt6vectorIN12colvarmodule7rvectorESaIS1_EE12_M_check_lenEmPKc.exit.i.i284
  %lpad.loopexit1456 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1455:                           ; preds = %bb.w
  %lpad.loopexit.split-lp1457 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit1453:                                    ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE9push_backERKS1_.exit298, %.preheader1452, %bb.s, %._crit_edge
  %i.om = ptrtoint ptr %i.hj to i64               ; 2 uses
  %i.on = load i64, ptr %i.al, align 8, !tbaa !141 ; 2 uses
  %i.oo = urem i64 %i.om, %i.on                   ; 3 uses
  %i.op = load ptr, ptr %4, align 8, !tbaa !140
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %i.oo
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !155 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.or, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.y

bb.y:                                             ; preds = %.loopexit1453
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !156 ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !121
  %i.ov = icmp eq ptr %i.hj, %i.ou
  br i1 %i.ov, label %.loopexit1451, label %.lr.ph.i.i.i.i

bb.z:                                             ; preds = %bb.aa
  %i.ow = icmp eq ptr %i.hj, %i.oz
  br i1 %i.ow, label %.loopexit1451, label %.lr.ph.i.i.i.i, !llvm.loop !279

.lr.ph.i.i.i.i:                                   ; preds = %bb.y, %bb.z
  %.020.i.i.i.i = phi ptr [ %i.ox, %bb.z ], [ %i.os, %bb.y ]
  %i.ox = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !156 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ox, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !121 ; 2 uses
  %i.pa = ptrtoint ptr %i.oz to i64
  %i.pb = urem i64 %i.pa, %i.on
  %.not19.i.i.i.i = icmp eq i64 %i.pb, %i.oo
  br i1 %.not19.i.i.i.i, label %bb.z, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !279

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.aa
  br label %.loopexit.i.i, !llvm.loop !279

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %.loopexit1453
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store ptr %4, ptr %1, align 8, !tbaa !394
  %i.pc = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #32
          to label %.noexc299 unwind label %bb.af ; 5 uses

.noexc299:                                        ; preds = %.loopexit.i.i
  store ptr null, ptr %i.pc, align 8, !tbaa !156
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  store ptr %i.hj, ptr %i.pd, align 8, !tbaa !397
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.pe, i8 0, i64 48, i1 false)
  store ptr %i.pc, ptr %i.bc, align 8, !tbaa !160
  %i.pf = invoke ptr @_ZNSt10_HashtableIPN12colvarmodule10atom_groupESt4pairIKS2_St5arrayISt6vectorINS0_7rvectorESaIS7_EELm2EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSD_10_Hash_nodeISB_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %4, i64 noundef %i.oo, i64 noundef %i.om, ptr noundef nonnull %i.pc, i64 noundef 1)
          to label %_ZNSt10_HashtableIPN12colvarmodule10atom_groupESt4pairIKS2_St5arrayISt6vectorINS0_7rvectorESaIS7_EELm2EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i unwind label %bb.ab

_ZNSt10_HashtableIPN12colvarmodule10atom_groupESt4pairIKS2_St5arrayISt6vectorINS0_7rvectorESaIS7_EELm2EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i: ; preds = %.noexc299
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %.loopexit1451

bb.ab:                                            ; preds = %.noexc299
  %i.pg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIPN12colvarmodule10atom_groupESt4pairIKS2_St5arrayISt6vectorINS0_7rvectorESaIS7_EELm2EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %.body

.loopexit1451:                                    ; preds = %bb.z, %_ZNSt10_HashtableIPN12colvarmodule10atom_groupESt4pairIKS2_St5arrayISt6vectorINS0_7rvectorESaIS7_EELm2EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i, %bb.y
  %.pn.i.i = phi ptr [ %i.pf, %_ZNSt10_HashtableIPN12colvarmodule10atom_groupESt4pairIKS2_St5arrayISt6vectorINS0_7rvectorESaIS7_EELm2EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i ], [ %i.os, %bb.y ], [ %i.ox, %bb.z ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.ph = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(48) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %.noexc300 unwind label %bb.af ; 0 uses

.noexc300:                                        ; preds = %.loopexit1451
  %i.pi = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 40
  %i.pj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.pi, ptr noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_ZNSt5arrayISt6vectorIN12colvarmodule7rvectorESaIS2_EELm2EEaSERKS5_.exit unwind label %bb.af ; 0 uses

_ZNSt5arrayISt6vectorIN12colvarmodule7rvectorESaIS2_EELm2EEaSERKS5_.exit: ; preds = %.noexc300
  %i.pk = load ptr, ptr %i.az, align 8, !tbaa !154 ; 3 uses
  %.not.i.i.i.i302 = icmp eq ptr %i.pk, null
  br i1 %.not.i.i.i.i302, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt5arrayISt6vectorIN12colvarmodule7rvectorESaIS2_EELm2EEaSERKS5_.exit
  %i.pl = load ptr, ptr %i.bb, align 8, !tbaa !153
  %i.pm = ptrtoint ptr %i.pl to i64
  %i.pn = ptrtoint ptr %i.pk to i64
  %i.po = sub i64 %i.pm, %i.pn
  call void @_ZdlPvm(ptr noundef nonnull %i.pk, i64 noundef %i.po) #31
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit.i: ; preds = %bb.ac, %_ZNSt5arrayISt6vectorIN12colvarmodule7rvectorESaIS2_EELm2EEaSERKS5_.exit
  %i.pp = load ptr, ptr %6, align 8, !tbaa !154   ; 3 uses
  %.not.i.i.i.1.i = icmp eq ptr %i.pp, null
  br i1 %.not.i.i.i.1.i, label %_ZNSt5arrayISt6vectorIN12colvarmodule7rvectorESaIS2_EELm2EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit.i
  %i.pq = load ptr, ptr %i.ay, align 8, !tbaa !153
  %i.pr = ptrtoint ptr %i.pq to i64
  %i.ps = ptrtoint ptr %i.pp to i64
  %i.pt = sub i64 %i.pr, %i.ps
  call void @_ZdlPvm(ptr noundef nonnull %i.pp, i64 noundef %i.pt) #31
  br label %_ZNSt5arrayISt6vectorIN12colvarmodule7rvectorESaIS2_EELm2EED2Ev.exit

_ZNSt5arrayISt6vectorIN12colvarmodule7rvectorESaIS2_EELm2EED2Ev.exit: ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %.pre3453 = load ptr, ptr %i.aq, align 8, !tbaa !142
  %.pre3454 = load ptr, ptr %i.ap, align 8, !tbaa !143
  br label %bb.ae

bb.ae:                                            ; preds = %bb.f, %_ZNSt5arrayISt6vectorIN12colvarmodule7rvectorESaIS2_EELm2EED2Ev.exit
  %i.pu = phi ptr [ %i.hg, %bb.f ], [ %.pre3454, %_ZNSt5arrayISt6vectorIN12colvarmodule7rvectorESaIS2_EELm2EED2Ev.exit ] ; 4 uses
  %i.pv = phi ptr [ %i.hh, %bb.f ], [ %.pre3453, %_ZNSt5arrayISt6vectorIN12colvarmodule7rvectorESaIS2_EELm2EED2Ev.exit ] ; 3 uses
  %i.pw = add nuw i64 %.0773152, 1                ; 2 uses
  %i.px = ptrtoint ptr %i.pv to i64
  %i.py = ptrtoint ptr %i.pu to i64
  %i.pz = sub i64 %i.px, %i.py
  %i.qa = ashr exact i64 %i.pz, 3
  %i.qb = icmp ult i64 %i.pw, %i.qa
  br i1 %i.qb, label %bb.f, label %.preheader1398, !llvm.loop !280

bb.af:                                            ; preds = %.noexc300, %.loopexit1451, %.loopexit.i.i
  %i.qc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit1454, %.loopexit.split-lp1455, %.loopexit1459, %.loopexit.split-lp1460, %bb.af, %bb.ab
  %.pn257.pn = phi { ptr, i32 } [ %i.pg, %bb.ab ], [ %lpad.loopexit.split-lp1462, %.loopexit.split-lp1460 ], [ %i.qc, %bb.af ], [ %lpad.loopexit1461, %.loopexit1459 ], [ %lpad.loopexit1456, %.loopexit1454 ], [ %lpad.loopexit.split-lp1457, %.loopexit.split-lp1455 ]
  call void @_ZNSt5arrayISt6vectorIN12colvarmodule7rvectorESaIS2_EELm2EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.lm

.preheader1254:                                   ; preds = %bb.kw
  %.not3178 = icmp eq ptr %i.chw, %i.chx
  br i1 %.not3178, label %._crit_edge3170, label %.lr.ph3169

bb.ag:                                            ; preds = %.lr.ph3164, %bb.kw
  %i.qd = phi ptr [ %i.pu, %.lr.ph3164 ], [ %i.chx, %bb.kw ]
  %.0743163 = phi i64 [ 0, %.lr.ph3164 ], [ %i.chv, %bb.kw ] ; 2 uses
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.qd, i64 %.0743163
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !121 ; 37 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 472
  %i.qh = load i8, ptr %i.qg, align 8, !tbaa !144, !range !96, !noundef !97
  %i.qi = trunc nuw i8 %i.qh to i1
  br i1 %i.qi, label %bb.kw, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qf, i64 1016
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qf, i64 1032
  %i.ql = load <2 x double>, ptr %i.qj, align 8, !tbaa !24, !noalias !398 ; 10 uses
  %71 = extractelement <2 x double> %i.ql, i64 1  ; 2 uses
  %i.qm = extractelement <2 x double> %i.ql, i64 0
  %72 = load <2 x double>, ptr %i.qk, align 8, !tbaa !24, !noalias !398 ; 11 uses
  %i.qn = extractelement <2 x double> %72, i64 0  ; 3 uses
  %73 = fneg double %i.qn                         ; 3 uses
  %74 = extractelement <2 x double> %72, i64 1    ; 2 uses
  %75 = fneg double %74                           ; 3 uses
  %i.qo = fneg double %71                         ; 2 uses
  %76 = shufflevector <2 x double> %i.ql, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %77 = insertelement <2 x double> %76, double %i.qo, i64 1
  %78 = fmul <2 x double> %76, %77
  %79 = shufflevector <2 x double> %i.ql, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %80 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %79, <2 x double> %79, <2 x double> %78) ; 2 uses
  %81 = extractelement <2 x double> %80, i64 0
  %82 = insertelement <2 x double> %72, double %73, i64 1
  %83 = shufflevector <2 x double> %72, <2 x double> poison, <2 x i32> zeroinitializer
  %84 = shufflevector <2 x double> %80, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %85 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %82, <2 x double> %83, <2 x double> %84) ; 2 uses
  %86 = fmul double %i.qm, %75
  %87 = shufflevector <2 x double> %i.ql, <2 x double> %72, <2 x i32> <i32 1, i32 3> ; 2 uses
  %88 = insertelement <2 x double> %85, double %86, i64 0
  %89 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %87, <2 x double> %72, <2 x double> %88) ; 2 uses
  %i.qp = insertelement <2 x double> %72, double %i.qo, i64 0
  %i.qq = fmul <2 x double> %i.ql, %i.qp
  %i.qr = shufflevector <2 x double> %i.qq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.qs = shufflevector <2 x double> %i.ql, <2 x double> %72, <2 x i32> <i32 0, i32 2>
  %i.qt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qs, <2 x double> %72, <2 x double> %i.qr)
  %90 = call double @llvm.fmuladd.f64(double %73, double %i.qn, double %81)
  %91 = fmul double %71, %i.qn
  %92 = insertelement <2 x double> %i.ql, double %75, i64 1
  %93 = shufflevector <2 x double> %72, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.qu = insertelement <2 x double> poison, double %91, i64 0
  %94 = insertelement <2 x double> %i.qu, double %90, i64 1
  %i.qv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %92, <2 x double> %93, <2 x double> %94) ; 2 uses
  %95 = extractelement <2 x double> %85, i64 0
  %96 = call double @llvm.fmuladd.f64(double %75, double %74, double %95)
  %97 = shufflevector <2 x double> %89, <2 x double> %i.qv, <2 x i32> <i32 0, i32 2>
  %i.qw = fmul <2 x double> %97, splat (double 2.000000e+00) ; 2 uses
  %i.qx = fmul <2 x double> %i.qt, splat (double 2.000000e+00)
  %i.qy = shufflevector <2 x double> %72, <2 x double> %i.ql, <2 x i32> <i32 0, i32 2>
  %i.qz = insertelement <2 x double> %93, double %73, i64 1
  %i.ra = fmul <2 x double> %i.qy, %i.qz
  %i.rb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ql, <2 x double> %87, <2 x double> %i.ra)
  %i.rc = fmul <2 x double> %i.rb, splat (double 2.000000e+00) ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qf, i64 512 ; 3 uses
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !133 ; 2 uses
  %.not = icmp eq ptr %i.re, null
  %.263 = select i1 %.not, ptr %i.qf, ptr %i.re   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qf, i64 368 ; 3 uses
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !93 ; 3 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 33
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !95, !range !96, !noundef !97
  %i.rj = trunc nuw i8 %i.ri to i1
  br i1 %i.rj, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rg, i64 97
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !95, !range !96, !noundef !97
  %i.rm = trunc nuw i8 %i.rl to i1
  br i1 %i.rm, label %bb.aj, label %bb.bw

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rg, i64 193
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !95, !range !96, !noundef !97
  %i.rp = trunc nuw i8 %i.ro to i1
  br i1 %i.rp, label %bb.ak, label %bb.bw

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qf, i64 480 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !21, !noalias !399
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qf, i64 488 ; 2 uses
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !20, !noalias !399 ; 3 uses
  store ptr %i.be, ptr %10, align 8, !tbaa !100, !alias.scope !400
  store i64 0, ptr %i.bf, align 8, !tbaa !20, !alias.scope !400
  store i8 0, ptr %i.be, align 8, !tbaa !102, !alias.scope !400
  %i.ru = add i64 %i.rt, 24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.ru)
          to label %bb.al unwind label %.loopexit1399

bb.al:                                            ; preds = %bb.ak
  %i.rv = load i64, ptr %i.bf, align 8, !tbaa !20, !alias.scope !400
  %i.rw = add i64 %i.rv, -4611686018427387880
  %i.rx = icmp ult i64 %i.rw, 24
  br i1 %i.rx, label %.invoke.i.i309, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i306: ; preds = %bb.al
  %i.ry = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.73, i64 noundef 24)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i307 unwind label %.loopexit1399 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i307: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i306
  %i.rz = load i64, ptr %i.bf, align 8, !tbaa !20, !alias.scope !400
  %i.sa = sub i64 4611686018427387903, %i.rz
  %i.sb = icmp ult i64 %i.sa, %i.rt
  br i1 %i.sb, label %.invoke.i.i309, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i308

.invoke.i.i309:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i307, %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #30
          to label %.cont.i.i310 unwind label %.loopexit.split-lp1400

.cont.i.i310:                                     ; preds = %.invoke.i.i309
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i308: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i307
  %i.sc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.rr, i64 noundef %i.rt)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit313 unwind label %.loopexit1399 ; 0 uses

.loopexit1399:                                    ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i306, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i308
  %lpad.loopexit1401 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp1400:                           ; preds = %.invoke.i.i309
  %lpad.loopexit.split-lp1402 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %.loopexit.split-lp1400, %.loopexit1399
  %lpad.phi1403 = phi { ptr, i32 } [ %lpad.loopexit1401, %.loopexit1399 ], [ %lpad.loopexit.split-lp1402, %.loopexit.split-lp1400 ] ; 2 uses
  %i.sd = load ptr, ptr %10, align 8, !tbaa !21, !alias.scope !400 ; 2 uses
  %i.se = icmp eq ptr %i.sd, %i.be
  br i1 %i.se, label %.body311, label %.body311.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit313: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i308
  call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %i.sf = load i64, ptr %i.bf, align 8, !tbaa !20, !noalias !401
  %i.sg = and i64 %i.sf, -2
  %i.sh = icmp eq i64 %i.sg, 4611686018427387902
  br i1 %i.sh, label %bb.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.an:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit313
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #30
          to label %.noexc315 unwind label %.loopexit.split-lp1405

.noexc315:                                        ; preds = %bb.an
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit313
  %i.si = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.74, i64 noundef 2)
          to label %.noexc316 unwind label %.loopexit1404 ; 6 uses

.noexc316:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.bg, ptr %9, align 8, !tbaa !100, !alias.scope !401
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !21 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.si, i64 16 ; 5 uses
  %i.sl = icmp eq ptr %i.sj, %i.sk
  br i1 %i.sl, label %bb.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314

bb.ao:                                            ; preds = %.noexc316
  %i.sm = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  %i.sn = load i64, ptr %i.sm, align 8, !tbaa !20 ; 3 uses
  %i.so = icmp ult i64 %i.sn, 16
  call void @llvm.assume(i1 %i.so)
  %i.sp = add nuw nsw i64 %i.sn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bg, ptr noundef nonnull align 8 dereferenceable(1) %i.sk, i64 %i.sp, i1 false)
  br label %bb.ap

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314: ; preds = %.noexc316
  store ptr %i.sj, ptr %9, align 8, !tbaa !21, !alias.scope !401
  %i.sq = load i64, ptr %i.sk, align 8, !tbaa !102
  store i64 %i.sq, ptr %i.bg, align 8, !tbaa !102, !alias.scope !401
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !20
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314, %bb.ao
  %i.sr = phi i64 [ %i.sn, %bb.ao ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314 ]
  %i.ss = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  store i64 %i.sr, ptr %i.bh, align 8, !tbaa !20, !alias.scope !401
  store ptr %i.sk, ptr %i.si, align 8, !tbaa !21
  store i64 0, ptr %i.ss, align 8, !tbaa !20
  store i8 0, ptr %i.sk, align 8, !tbaa !102
  invoke void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 10)
          to label %bb.aq unwind label %bb.bq

bb.aq:                                            ; preds = %bb.ap
  %i.st = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %i.su = icmp eq ptr %i.st, %i.bg
  br i1 %i.su, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317: ; preds = %bb.aq
  %i.sv = load i64, ptr %i.bg, align 8, !tbaa !102
  %i.sw = add i64 %i.sv, 1
  call void @_ZdlPvm(ptr noundef %i.st, i64 noundef %i.sw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317
  %i.sx = load ptr, ptr %10, align 8, !tbaa !21   ; 2 uses
  %i.sy = icmp eq ptr %i.sx, %i.be
  br i1 %i.sy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319
  %i.sz = load i64, ptr %i.be, align 8, !tbaa !102
  %i.ta = add i64 %i.sz, 1
  call void @_ZdlPvm(ptr noundef %i.sx, i64 noundef %i.ta) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.tb = getelementptr inbounds nuw i8, ptr %.263, i64 1144 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !101
  %i.tc = load i64, ptr %i.tb, align 8, !tbaa !147
  %.not3175 = icmp eq i64 %i.tc, 0
  br i1 %.not3175, label %._crit_edge3156, label %.lr.ph3155

.lr.ph3155:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322
  %i.td = getelementptr inbounds nuw i8, ptr %.263, i64 512
  %i.te = insertelement <2 x double> %i.qw, double %96, i64 1
  %98 = extractelement <2 x double> %89, i64 1
  %99 = shufflevector <2 x double> %i.qv, <2 x double> %i.qw, <2 x i32> <i32 1, i32 3>
  %i.tf = extractelement <2 x double> %i.rc, i64 0
  %i.tg = extractelement <2 x double> %i.rc, i64 1
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph3155, %.critedge
  %storemerge3154 = phi i64 [ 0, %.lr.ph3155 ], [ %i.aaa, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.th = load ptr, ptr %i.td, align 8, !tbaa !133 ; 2 uses
  %.not.i323 = icmp eq ptr %i.th, null
  %spec.select.i324 = select i1 %.not.i323, ptr %.263, ptr %i.th ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %spec.select.i324, i64 1096
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !148
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.tj, i64 %storemerge3154 ; 3 uses
  %i.tl = load double, ptr %i.tk, align 8, !tbaa !24
  %i.tm = getelementptr inbounds nuw i8, ptr %spec.select.i324, i64 1144
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !147 ; 2 uses
  %i.to = getelementptr [8 x i8], ptr %i.tk, i64 %i.tn
  %i.tp = load double, ptr %i.to, align 8, !tbaa !24
  %.idx.i329 = shl i64 %i.tn, 4
  %i.tq = getelementptr i8, ptr %i.tk, i64 %.idx.i329
  %i.tr = load double, ptr %i.tq, align 8, !tbaa !24
  store double %i.tl, ptr %11, align 8, !tbaa !402
  store double %i.tp, ptr %i.bi, align 8, !tbaa !403
  store double %i.tr, ptr %i.bj, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %i.ts = load ptr, ptr %i.rd, align 8, !tbaa !133
  %.not239.not = icmp eq ptr %i.ts, null
  store ptr %i.bk, ptr %16, align 8, !tbaa !100
  br i1 %.not239.not, label %bb.as, label %.thread

.thread:                                          ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bk, ptr noundef nonnull align 1 dereferenceable(12) @.str.75, i64 12, i1 false)
  store i64 12, ptr %i.bl, align 8, !tbaa !20
  store i8 0, ptr %i.ha, align 4, !tbaa !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i334

bb.as:                                            ; preds = %bb.ar
  %i.tt = load ptr, ptr %i.rq, align 8, !tbaa !21 ; 2 uses
  %i.tu = load i64, ptr %i.rs, align 8, !tbaa !20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.tu, ptr %i.a, align 8, !tbaa !101
  %i.tv = icmp ugt i64 %i.tu, 15
  br i1 %i.tv, label %.noexc.i332, label %._crit_edge.i.i331

.noexc.i332:                                      ; preds = %bb.as
  %i.tw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc333 unwind label %bb.br ; 2 uses

.noexc333:                                        ; preds = %.noexc.i332
  store ptr %i.tw, ptr %16, align 8, !tbaa !21
  %i.tx = load i64, ptr %i.a, align 8, !tbaa !101
  store i64 %i.tx, ptr %i.bk, align 8, !tbaa !102
  br label %._crit_edge.i.i331

._crit_edge.i.i331:                               ; preds = %.noexc333, %bb.as
  %i.ty = phi ptr [ %i.tw, %.noexc333 ], [ %i.bk, %bb.as ] ; 2 uses
  switch i64 %i.tu, label %bb.au [
    i64 1, label %bb.at
    i64 0, label %bb.av
  ]

bb.at:                                            ; preds = %._crit_edge.i.i331
  %i.tz = load i8, ptr %i.tt, align 1, !tbaa !102
  store i8 %i.tz, ptr %i.ty, align 1, !tbaa !102
  br label %bb.av

bb.au:                                            ; preds = %._crit_edge.i.i331
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ty, ptr align 1 %i.tt, i64 %i.tu, i1 false)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %._crit_edge.i.i331
  %i.ua = load i64, ptr %i.a, align 8, !tbaa !101 ; 2 uses
  store i64 %i.ua, ptr %i.bl, align 8, !tbaa !20
  %i.ub = load ptr, ptr %16, align 8, !tbaa !21
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 %i.ua
  store i8 0, ptr %i.uc, align 1, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.pre3455 = load i64, ptr %i.bl, align 8, !tbaa !20, !noalias !404
  %i.ud = icmp eq i64 %.pre3455, 4611686018427387903
  call void @llvm.experimental.noalias.scope.decl(metadata !404)
  br i1 %i.ud, label %bb.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i334

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #30
          to label %.noexc338 unwind label %.loopexit.split-lp1379

.noexc338:                                        ; preds = %bb.aw
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i334: ; preds = %.thread, %bb.av
  %i.ue = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.76, i64 noundef 1)
          to label %.noexc339 unwind label %.loopexit1378 ; 6 uses

.noexc339:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i334
  store ptr %i.bm, ptr %15, align 8, !tbaa !100, !alias.scope !404
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !21 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ue, i64 16 ; 5 uses
  %i.uh = icmp eq ptr %i.uf, %i.ug
  br i1 %i.uh, label %bb.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335

bb.ax:                                            ; preds = %.noexc339
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  %i.uj = load i64, ptr %i.ui, align 8, !tbaa !20 ; 3 uses
  %i.uk = icmp ult i64 %i.uj, 16
  call void @llvm.assume(i1 %i.uk)
  %i.ul = add nuw nsw i64 %i.uj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bm, ptr noundef nonnull align 8 dereferenceable(1) %i.ug, i64 %i.ul, i1 false)
  br label %bb.ay

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335: ; preds = %.noexc339
  store ptr %i.uf, ptr %15, align 8, !tbaa !21, !alias.scope !404
  %i.um = load i64, ptr %i.ug, align 8, !tbaa !102
  store i64 %i.um, ptr %i.bm, align 8, !tbaa !102, !alias.scope !404
  %.phi.trans.insert.i336 = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  %.pre.i337 = load i64, ptr %.phi.trans.insert.i336, align 8, !tbaa !20
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335, %bb.ax
  %i.un = phi i64 [ %i.uj, %bb.ax ], [ %.pre.i337, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335 ]
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  store i64 %i.un, ptr %i.bn, align 8, !tbaa !20, !alias.scope !404
  store ptr %i.ug, ptr %i.ue, align 8, !tbaa !21
  store i64 0, ptr %i.uo, align 8, !tbaa !20
  store i8 0, ptr %i.ug, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  invoke void @_ZN12colvarmodule6to_strB5cxx11ERKmmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0, i64 noundef 0)
          to label %bb.az unwind label %bb.bs

bb.az:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.up = load i64, ptr %i.bn, align 8, !tbaa !20, !noalias !405 ; 4 uses
  %i.uq = load i64, ptr %i.bo, align 8, !tbaa !20, !noalias !405 ; 4 uses
  %i.ur = add i64 %i.uq, %i.up                    ; 2 uses
  %i.us = load ptr, ptr %15, align 8, !tbaa !21, !noalias !405 ; 2 uses
  %i.ut = icmp eq ptr %i.us, %i.bm
  br i1 %i.ut, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i343, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i343: ; preds = %bb.az
  %i.uu = icmp ult i64 %i.up, 16
  call void @llvm.assume(i1 %i.uu)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341: ; preds = %bb.az
  %i.uv = load i64, ptr %i.bm, align 8, !tbaa !102, !noalias !405
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i343
  %i.uw = phi i64 [ %i.uv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i343 ]
  %i.ux = icmp ugt i64 %i.ur, %i.uw
  br i1 %i.ux, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.uy = load ptr, ptr %17, align 8, !tbaa !21, !noalias !405
  %i.uz = icmp eq ptr %i.uy, %i.bp
  br i1 %i.uz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i: ; preds = %bb.ba
  %i.va = icmp ult i64 %i.uq, 16
  call void @llvm.assume(i1 %i.va)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.ba
  %i.vb = load i64, ptr %i.bp, align 8, !tbaa !102, !noalias !405
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i
  %i.vc = phi i64 [ %i.vb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i ]
  %.not.i342 = icmp ugt i64 %i.ur, %i.vc
  br i1 %.not.i342, label %bb.bc, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i
  %i.vd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef 0, ptr noundef %i.us, i64 noundef %i.up)
          to label %.noexc344 unwind label %.loopexit1383 ; 5 uses

.noexc344:                                        ; preds = %.critedge.i
  store ptr %i.bq, ptr %14, align 8, !tbaa !100, !alias.scope !405
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !21 ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vd, i64 16 ; 5 uses
  %i.vg = icmp eq ptr %i.ve, %i.vf
  br i1 %i.vg, label %bb.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.bb:                                            ; preds = %.noexc344
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  %i.vi = load i64, ptr %i.vh, align 8, !tbaa !20 ; 2 uses
  %i.vj = icmp ult i64 %i.vi, 16
  call void @llvm.assume(i1 %i.vj)
  %i.vk = add nuw nsw i64 %i.vi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bq, ptr noundef nonnull align 8 dereferenceable(1) %i.vf, i64 %i.vk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i: ; preds = %.noexc344
  store ptr %i.ve, ptr %14, align 8, !tbaa !21, !alias.scope !405
  %i.vl = load i64, ptr %i.vf, align 8, !tbaa !102
  store i64 %i.vl, ptr %i.bq, align 8, !tbaa !102, !alias.scope !405
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i, %bb.bb
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vd, i64 8 ; 2 uses
  %i.vn = load i64, ptr %i.vm, align 8, !tbaa !20
  store i64 %i.vn, ptr %i.br, align 8, !tbaa !20, !alias.scope !405
  store ptr %i.vf, ptr %i.vd, align 8, !tbaa !21
  store i64 0, ptr %i.vm, align 8, !tbaa !20
  store i8 0, ptr %i.vf, align 8, !tbaa !102
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.vo = sub i64 4611686018427387903, %i.up
  %i.vp = icmp ult i64 %i.vo, %i.uq
  br i1 %i.vp, label %bb.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #30
          to label %.noexc345 unwind label %.loopexit.split-lp1384

.noexc345:                                        ; preds = %bb.bd
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.bc
  %i.vq = load ptr, ptr %17, align 8, !tbaa !21, !noalias !405
  %i.vr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef %i.vq, i64 noundef %i.uq)
          to label %.noexc346 unwind label %.loopexit1383 ; 5 uses

.noexc346:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.bq, ptr %14, align 8, !tbaa !100, !alias.scope !405
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !21 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vr, i64 16 ; 5 uses
  %i.vu = icmp eq ptr %i.vs, %i.vt
  br i1 %i.vu, label %bb.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i

bb.be:                                            ; preds = %.noexc346
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %i.vw = load i64, ptr %i.vv, align 8, !tbaa !20 ; 2 uses
  %i.vx = icmp ult i64 %i.vw, 16
  call void @llvm.assume(i1 %i.vx)
  %i.vy = add nuw nsw i64 %i.vw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bq, ptr noundef nonnull align 8 dereferenceable(1) %i.vt, i64 %i.vy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i: ; preds = %.noexc346
  store ptr %i.vs, ptr %14, align 8, !tbaa !21, !alias.scope !405
  %i.vz = load i64, ptr %i.vt, align 8, !tbaa !102
  store i64 %i.vz, ptr %i.bq, align 8, !tbaa !102, !alias.scope !405
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i, %bb.be
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vr, i64 8 ; 2 uses
  %i.wb = load i64, ptr %i.wa, align 8, !tbaa !20
  store i64 %i.wb, ptr %i.br, align 8, !tbaa !20, !alias.scope !405
  store ptr %i.vt, ptr %i.vr, align 8, !tbaa !21
  store i64 0, ptr %i.wa, align 8, !tbaa !20
  store i8 0, ptr %i.vt, align 8, !tbaa !102
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !406)
  %i.wc = load i64, ptr %i.br, align 8, !tbaa !20, !noalias !406
  %i.wd = and i64 %i.wc, -4
  %i.we = icmp eq i64 %i.wd, 4611686018427387900
  br i1 %i.we, label %bb.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i347

bb.bf:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #30
          to label %.noexc352 unwind label %.loopexit.split-lp1389

.noexc352:                                        ; preds = %bb.bf
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i347: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.wf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.77, i64 noundef 4)
          to label %.noexc353 unwind label %.loopexit1388 ; 6 uses

.noexc353:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i347
  store ptr %i.bs, ptr %13, align 8, !tbaa !100, !alias.scope !406
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !21 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wf, i64 16 ; 5 uses
  %i.wi = icmp eq ptr %i.wg, %i.wh
  br i1 %i.wi, label %bb.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348

bb.bg:                                            ; preds = %.noexc353
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  %i.wk = load i64, ptr %i.wj, align 8, !tbaa !20 ; 3 uses
  %i.wl = icmp ult i64 %i.wk, 16
  call void @llvm.assume(i1 %i.wl)
  %i.wm = add nuw nsw i64 %i.wk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bs, ptr noundef nonnull align 8 dereferenceable(1) %i.wh, i64 %i.wm, i1 false)
  br label %bb.bh

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348: ; preds = %.noexc353
  store ptr %i.wg, ptr %13, align 8, !tbaa !21, !alias.scope !406
  %i.wn = load i64, ptr %i.wh, align 8, !tbaa !102
  store i64 %i.wn, ptr %i.bs, align 8, !tbaa !102, !alias.scope !406
  %.phi.trans.insert.i349 = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  %.pre.i350 = load i64, ptr %.phi.trans.insert.i349, align 8, !tbaa !20
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348, %bb.bg
  %i.wo = phi i64 [ %i.wk, %bb.bg ], [ %.pre.i350, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348 ]
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  store i64 %i.wo, ptr %i.bt, align 8, !tbaa !20, !alias.scope !406
  store ptr %i.wh, ptr %i.wf, align 8, !tbaa !21
  store i64 0, ptr %i.wp, align 8, !tbaa !20
  store i8 0, ptr %i.wh, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.wq = load ptr, ptr %i.rf, align 8, !tbaa !93
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 97
  %i.ws = load i8, ptr %i.wr, align 1, !tbaa !95, !range !96, !noundef !97
  %i.wt = trunc nuw i8 %i.ws to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  br i1 %i.wt, label %bb.bi, label %.invoke

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %i.wu = load double, ptr %i.bj, align 8, !tbaa !161, !noalias !407 ; 2 uses
  %i.wv = load double, ptr %11, align 8, !tbaa !402, !noalias !407 ; 2 uses
  %i.ww = load double, ptr %i.bi, align 8, !tbaa !403, !noalias !407 ; 2 uses
  %i.wx = insertelement <2 x double> poison, double %i.ww, i64 0
  %i.wy = shufflevector <2 x double> %i.wx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wz = fmul <2 x double> %i.te, %i.wy
  %i.xa = insertelement <2 x double> poison, double %i.wv, i64 0
  %i.xb = shufflevector <2 x double> %i.xa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %99, <2 x double> %i.xb, <2 x double> %i.wz)
  %i.xd = insertelement <2 x double> poison, double %i.wu, i64 0
  %i.xe = shufflevector <2 x double> %i.xd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qx, <2 x double> %i.xe, <2 x double> %i.xc)
  %i.xg = fmul double %i.tf, %i.ww
  %i.xh = call double @llvm.fmuladd.f64(double %i.tg, double %i.wv, double %i.xg)
  %i.xi = call double @llvm.fmuladd.f64(double %98, double %i.wu, double %i.xh)
  store <2 x double> %i.xf, ptr %19, align 16, !tbaa !24, !alias.scope !407
  store double %i.xi, ptr %i.bu, align 16, !tbaa !161, !alias.scope !407
  br label %.invoke

.invoke:                                          ; preds = %bb.bh, %bb.bi
  %i.xj = phi ptr [ %19, %bb.bi ], [ %11, %bb.bh ]
  invoke void @_ZN12colvarmodule6to_strB5cxx11ERKNS_7rvectorEmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %i.xj, i64 noundef 0, i64 noundef 0)
          to label %bb.bj unwind label %bb.bt

bb.bj:                                            ; preds = %.invoke
  call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.xk = load i64, ptr %i.bt, align 8, !tbaa !20, !noalias !408 ; 4 uses
  %i.xl = load i64, ptr %i.bv, align 8, !tbaa !20, !noalias !408 ; 4 uses
  %i.xm = add i64 %i.xl, %i.xk                    ; 2 uses
  %i.xn = load ptr, ptr %13, align 8, !tbaa !21, !noalias !408 ; 2 uses
  %i.xo = icmp eq ptr %i.xn, %i.bs
  br i1 %i.xo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i367, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i367: ; preds = %bb.bj
  %i.xp = icmp ult i64 %i.xk, 16
  call void @llvm.assume(i1 %i.xp)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i356

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355: ; preds = %bb.bj
  %i.xq = load i64, ptr %i.bs, align 8, !tbaa !102, !noalias !408
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i356

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i356: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i367
  %i.xr = phi i64 [ %i.xq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i367 ]
  %i.xs = icmp ugt i64 %i.xm, %i.xr
  br i1 %i.xs, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i356
  %i.xt = load ptr, ptr %18, align 8, !tbaa !21, !noalias !408
  %i.xu = icmp eq ptr %i.xt, %i.bw
  br i1 %i.xu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i366, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i366: ; preds = %bb.bk
  %i.xv = icmp ult i64 %i.xl, 16
  call void @llvm.assume(i1 %i.xv)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i361

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i360: ; preds = %bb.bk
  %i.xw = load i64, ptr %i.bw, align 8, !tbaa !102, !noalias !408
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i361

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i361: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i360, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i366
  %i.xx = phi i64 [ %i.xw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i360 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i366 ]
  %.not.i362 = icmp ugt i64 %i.xm, %i.xx
  br i1 %.not.i362, label %bb.bm, label %.critedge.i363

.critedge.i363:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i361
  %i.xy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef 0, i64 noundef 0, ptr noundef %i.xn, i64 noundef %i.xk)
          to label %.noexc368 unwind label %.loopexit1393 ; 5 uses

.noexc368:                                        ; preds = %.critedge.i363
  store ptr %i.bx, ptr %12, align 8, !tbaa !100, !alias.scope !408
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !21 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xy, i64 16 ; 5 uses
  %i.yb = icmp eq ptr %i.xz, %i.ya
  br i1 %i.yb, label %bb.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i364

bb.bl:                                            ; preds = %.noexc368
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xy, i64 8
  %i.yd = load i64, ptr %i.yc, align 8, !tbaa !20 ; 2 uses
  %i.ye = icmp ult i64 %i.yd, 16
  call void @llvm.assume(i1 %i.ye)
  %i.yf = add nuw nsw i64 %i.yd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bx, ptr noundef nonnull align 8 dereferenceable(1) %i.ya, i64 %i.yf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i365

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i364: ; preds = %.noexc368
  store ptr %i.xz, ptr %12, align 8, !tbaa !21, !alias.scope !408
  %i.yg = load i64, ptr %i.ya, align 8, !tbaa !102
  store i64 %i.yg, ptr %i.bx, align 8, !tbaa !102, !alias.scope !408
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i365

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i365: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i364, %bb.bl
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xy, i64 8 ; 2 uses
  %i.yi = load i64, ptr %i.yh, align 8, !tbaa !20
  store i64 %i.yi, ptr %i.by, align 8, !tbaa !20, !alias.scope !408
  store ptr %i.ya, ptr %i.xy, align 8, !tbaa !21
  store i64 0, ptr %i.yh, align 8, !tbaa !20
  store i8 0, ptr %i.ya, align 8, !tbaa !102
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit371

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i361, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i356
  %i.yj = sub i64 4611686018427387903, %i.xk
  %i.yk = icmp ult i64 %i.yj, %i.xl
  br i1 %i.yk, label %bb.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i357

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #30
          to label %.noexc369 unwind label %.loopexit.split-lp1394

.noexc369:                                        ; preds = %bb.bn
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i357: ; preds = %bb.bm
  %i.yl = load ptr, ptr %18, align 8, !tbaa !21, !noalias !408
  %i.ym = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %i.yl, i64 noundef %i.xl)
          to label %.noexc370 unwind label %.loopexit1393 ; 5 uses

.noexc370:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i357
  store ptr %i.bx, ptr %12, align 8, !tbaa !100, !alias.scope !408
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !21 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ym, i64 16 ; 5 uses
  %i.yp = icmp eq ptr %i.yn, %i.yo
  br i1 %i.yp, label %bb.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i358

bb.bo:                                            ; preds = %.noexc370
  %i.yq = getelementptr inbounds nuw i8, ptr %i.ym, i64 8
  %i.yr = load i64, ptr %i.yq, align 8, !tbaa !20 ; 2 uses
  %i.ys = icmp ult i64 %i.yr, 16
  call void @llvm.assume(i1 %i.ys)
  %i.yt = add nuw nsw i64 %i.yr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bx, ptr noundef nonnull align 8 dereferenceable(1) %i.yo, i64 %i.yt, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i359

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i358: ; preds = %.noexc370
  store ptr %i.yn, ptr %12, align 8, !tbaa !21, !alias.scope !408
  %i.yu = load i64, ptr %i.yo, align 8, !tbaa !102
  store i64 %i.yu, ptr %i.bx, align 8, !tbaa !102, !alias.scope !408
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i359

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i359: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i358, %bb.bo
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ym, i64 8 ; 2 uses
  %i.yw = load i64, ptr %i.yv, align 8, !tbaa !20
  store i64 %i.yw, ptr %i.by, align 8, !tbaa !20, !alias.scope !408
  store ptr %i.yo, ptr %i.ym, align 8, !tbaa !21
  store i64 0, ptr %i.yv, align 8, !tbaa !20
  store i8 0, ptr %i.yo, align 8, !tbaa !102
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit371

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit371: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i359, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i365
  invoke void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 10)
          to label %bb.bp unwind label %bb.bu

bb.bp:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit371
  %i.yx = load ptr, ptr %12, align 8, !tbaa !21   ; 2 uses
  %i.yy = icmp eq ptr %i.yx, %i.bx
  br i1 %i.yy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372: ; preds = %bb.bp
  %i.yz = load i64, ptr %i.bx, align 8, !tbaa !102
  %i.za = add i64 %i.yz, 1
  call void @_ZdlPvm(ptr noundef %i.yx, i64 noundef %i.za) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372
  %i.zb = load ptr, ptr %18, align 8, !tbaa !21   ; 2 uses
  %i.zc = icmp eq ptr %i.zb, %i.bw
  br i1 %i.zc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374
  %i.zd = load i64, ptr %i.bw, align 8, !tbaa !102
  %i.ze = add i64 %i.zd, 1
  call void @_ZdlPvm(ptr noundef %i.zb, i64 noundef %i.ze) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  %i.zf = load ptr, ptr %13, align 8, !tbaa !21   ; 2 uses
  %i.zg = icmp eq ptr %i.zf, %i.bs
  br i1 %i.zg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377
  %i.zh = load i64, ptr %i.bs, align 8, !tbaa !102
  %i.zi = add i64 %i.zh, 1
  call void @_ZdlPvm(ptr noundef %i.zf, i64 noundef %i.zi) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378
  %i.zj = load ptr, ptr %14, align 8, !tbaa !21   ; 2 uses
  %i.zk = icmp eq ptr %i.zj, %i.bq
  br i1 %i.zk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380
  %i.zl = load i64, ptr %i.bq, align 8, !tbaa !102
  %i.zm = add i64 %i.zl, 1
  call void @_ZdlPvm(ptr noundef %i.zj, i64 noundef %i.zm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381
  %i.zn = load ptr, ptr %17, align 8, !tbaa !21   ; 2 uses
  %i.zo = icmp eq ptr %i.zn, %i.bp
  br i1 %i.zo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383
  %i.zp = load i64, ptr %i.bp, align 8, !tbaa !102
  %i.zq = add i64 %i.zp, 1
  call void @_ZdlPvm(ptr noundef %i.zn, i64 noundef %i.zq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.zr = load ptr, ptr %15, align 8, !tbaa !21   ; 2 uses
  %i.zs = icmp eq ptr %i.zr, %i.bm
  br i1 %i.zs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387
end_hunk_0

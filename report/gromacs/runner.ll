Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/runner?download=true
inline.NumInlined: 4414
inline.NumDeleted: 2750
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN3gmx8Mdrunner8mdrunnerEv:bb.a
          catch ptr @_ZTISt9exception
  br label %bb.abn

bb.zj:                                            ; preds = %bb.zc, %bb.zb
  %i.chj = getelementptr inbounds nuw i8, ptr %73, i64 15 ; 3 uses
  %i.chk = load i8, ptr %i.chj, align 1, !tbaa !1213, !range !38, !noundef !39
  %i.chl = trunc nuw i8 %i.chk to i1
  br i1 %i.chl, label %bb.zk, label %bb.aab

bb.zk:                                            ; preds = %bb.zj
  %i.chm = load ptr, ptr %76, align 8, !tbaa !304
  %i.chn = invoke noundef nonnull align 1 ptr @_ZNK3gmx19DeviceStreamManager7contextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.chm)
          to label %bb.zl unwind label %bb.aaa

bb.zl:                                            ; preds = %bb.zk
  %i.cho = load ptr, ptr %76, align 8, !tbaa !304
  %i.chp = invoke noundef nonnull align 1 ptr @_ZNK3gmx19DeviceStreamManager6streamENS_16DeviceStreamTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.cho, i32 noundef 0)
          to label %bb.zm unwind label %bb.aaa

bb.zm:                                            ; preds = %bb.zl
  %i.chq = load ptr, ptr %81, align 8, !tbaa !310
  %i.chr = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33
          to label %.noexc1263 unwind label %bb.aaa ; 3 uses

.noexc1263:                                       ; preds = %bb.zm
  invoke void @_ZN3gmx17GpuForceReductionC1ERK13DeviceContextRK12DeviceStreamP13gmx_wallcycle(ptr noundef nonnull align 8 dereferenceable(8) %i.chr, ptr noundef nonnull align 1 %i.chn, ptr noundef nonnull align 1 %i.chp, ptr noundef %i.chq)
          to label %_ZSt11make_uniqueIN3gmx17GpuForceReductionEJRK13DeviceContextRK12DeviceStreamP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.zn, !noalias !1214

bb.zn:                                            ; preds = %.noexc1263
  %i.chs = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZdlPvm(ptr noundef nonnull %i.chr, i64 noundef 8) #30, !noalias !1214
  br label %.body1264

_ZSt11make_uniqueIN3gmx17GpuForceReductionEJRK13DeviceContextRK12DeviceStreamP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.noexc1263
  %i.cht = getelementptr inbounds nuw i8, ptr %i.ceh, i64 544 ; 2 uses
  %i.chu = load ptr, ptr %i.cht, align 8, !tbaa !1216 ; 3 uses
  store ptr %i.chr, ptr %i.cht, align 8, !tbaa !1216
  %.not.i.i.i.i1266 = icmp eq ptr %i.chu, null
  br i1 %.not.i.i.i.i1266, label %_ZNSt10unique_ptrIN3gmx17GpuForceReductionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx17GpuForceReductionEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN3gmx17GpuForceReductionEEclEPS1_.exit.i.i.i.i: ; preds = %_ZSt11make_uniqueIN3gmx17GpuForceReductionEJRK13DeviceContextRK12DeviceStreamP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  call void @_ZN3gmx17GpuForceReductionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.chu) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.chu, i64 noundef 8) #30
  br label %_ZNSt10unique_ptrIN3gmx17GpuForceReductionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx17GpuForceReductionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN3gmx17GpuForceReductionEEclEPS1_.exit.i.i.i.i, %_ZSt11make_uniqueIN3gmx17GpuForceReductionEJRK13DeviceContextRK12DeviceStreamP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.chv = getelementptr inbounds nuw i8, ptr %73, i64 17
  %i.chw = load i8, ptr %i.chv, align 1, !tbaa !856, !range !38, !noundef !39
  %i.chx = trunc nuw i8 %i.chw to i1
  br i1 %i.chx, label %bb.zo, label %_ZNSt10unique_ptrIN3gmx17GpuForceReductionESt14default_deleteIS1_EED2Ev.exit1277

bb.zo:                                            ; preds = %_ZNSt10unique_ptrIN3gmx17GpuForceReductionESt14default_deleteIS1_EED2Ev.exit
  %i.chy = load ptr, ptr %76, align 8, !tbaa !304
  %i.chz = invoke noundef nonnull align 1 ptr @_ZNK3gmx19DeviceStreamManager7contextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.chy)
          to label %bb.zp unwind label %bb.aaa

bb.zp:                                            ; preds = %bb.zo
  %i.cia = load ptr, ptr %76, align 8, !tbaa !304
  %i.cib = invoke noundef nonnull align 1 ptr @_ZNK3gmx19DeviceStreamManager6streamENS_16DeviceStreamTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.cia, i32 noundef 1)
          to label %bb.zq unwind label %bb.aaa

bb.zq:                                            ; preds = %bb.zp
  %i.cic = load ptr, ptr %81, align 8, !tbaa !310
  %i.cid = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33
          to label %.noexc1268 unwind label %bb.aaa ; 3 uses

.noexc1268:                                       ; preds = %bb.zq
  invoke void @_ZN3gmx17GpuForceReductionC1ERK13DeviceContextRK12DeviceStreamP13gmx_wallcycle(ptr noundef nonnull align 8 dereferenceable(8) %i.cid, ptr noundef nonnull align 1 %i.chz, ptr noundef nonnull align 1 %i.cib, ptr noundef %i.cic)
          to label %_ZSt11make_uniqueIN3gmx17GpuForceReductionEJRK13DeviceContextRK12DeviceStreamP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit1271 unwind label %bb.zr, !noalias !1217

bb.zr:                                            ; preds = %.noexc1268
  %i.cie = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZdlPvm(ptr noundef nonnull %i.cid, i64 noundef 8) #30, !noalias !1217
  br label %.body1264

_ZSt11make_uniqueIN3gmx17GpuForceReductionEJRK13DeviceContextRK12DeviceStreamP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit1271: ; preds = %.noexc1268
  %i.cif = getelementptr inbounds nuw i8, ptr %i.ceh, i64 552 ; 2 uses
  %i.cig = load ptr, ptr %i.cif, align 8, !tbaa !1216 ; 3 uses
  store ptr %i.cid, ptr %i.cif, align 8, !tbaa !1216
  %.not.i.i.i.i1272 = icmp eq ptr %i.cig, null
  br i1 %.not.i.i.i.i1272, label %_ZNSt10unique_ptrIN3gmx17GpuForceReductionESt14default_deleteIS1_EED2Ev.exit1277, label %_ZNKSt14default_deleteIN3gmx17GpuForceReductionEEclEPS1_.exit.i.i.i.i1273

_ZNKSt14default_deleteIN3gmx17GpuForceReductionEEclEPS1_.exit.i.i.i.i1273: ; preds = %_ZSt11make_uniqueIN3gmx17GpuForceReductionEJRK13DeviceContextRK12DeviceStreamP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit1271
  call void @_ZN3gmx17GpuForceReductionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cig) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.cig, i64 noundef 8) #30
  br label %_ZNSt10unique_ptrIN3gmx17GpuForceReductionESt14default_deleteIS1_EED2Ev.exit1277

_ZNSt10unique_ptrIN3gmx17GpuForceReductionESt14default_deleteIS1_EED2Ev.exit1277: ; preds = %_ZSt11make_uniqueIN3gmx17GpuForceReductionEJRK13DeviceContextRK12DeviceStreamP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit1271, %_ZNKSt14default_deleteIN3gmx17GpuForceReductionEEclEPS1_.exit.i.i.i.i1273, %_ZNSt10unique_ptrIN3gmx17GpuForceReductionESt14default_deleteIS1_EED2Ev.exit
  %i.cih = getelementptr inbounds nuw i8, ptr %73, i64 27
  %i.cii = load i8, ptr %i.cih, align 1, !tbaa !1218, !range !38, !noundef !39
  %i.cij = trunc nuw i8 %i.cii to i1
  br i1 %i.cij, label %bb.zs, label %bb.aab

bb.zs:                                            ; preds = %_ZNSt10unique_ptrIN3gmx17GpuForceReductionESt14default_deleteIS1_EED2Ev.exit1277
  %i.cik = getelementptr inbounds nuw i8, ptr %i.ceh, i64 528 ; 2 uses
  %i.cil = load ptr, ptr %i.cik, align 8, !tbaa !1102
  %i.cim = load ptr, ptr %i.bcc, align 8, !tbaa !917, !nonnull !39, !align !853
  %i.cin = load ptr, ptr %i.cim, align 8, !tbaa !634
  %i.cio = load ptr, ptr %81, align 8, !tbaa !310
  %i.cip = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33
          to label %.noexc1278 unwind label %bb.aaa ; 3 uses

.noexc1278:                                       ; preds = %bb.zs
  invoke void @_ZN3gmx10MdGpuGraphC1ERKNS_19DeviceStreamManagerENS_18SimulationWorkloadEP10tmpi_comm_20MdGraphEvenOrOddStepP13gmx_wallcycle(ptr noundef nonnull align 8 dereferenceable(8) %i.cip, ptr noundef nonnull align 8 dereferenceable(8) %i.cil, ptr noundef nonnull byval(%"class.gmx::SimulationWorkload") align 8 %73, ptr noundef %i.cin, i32 noundef 0, ptr noundef %i.cio)
          to label %bb.zu unwind label %bb.zt, !noalias !1219

bb.zt:                                            ; preds = %.noexc1278
  %i.ciq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZdlPvm(ptr noundef nonnull %i.cip, i64 noundef 8) #30, !noalias !1219
  br label %.body1264

bb.zu:                                            ; preds = %.noexc1278
  %i.cir = getelementptr inbounds nuw i8, ptr %i.ceh, i64 568 ; 4 uses
  %i.cis = load ptr, ptr %i.cir, align 8, !tbaa !1221 ; 3 uses
  store ptr %i.cip, ptr %i.cir, align 8, !tbaa !1221
  %.not.i.i.i.i1281 = icmp eq ptr %i.cis, null
  br i1 %.not.i.i.i.i1281, label %_ZNSt10unique_ptrIN3gmx10MdGpuGraphESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx10MdGpuGraphEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN3gmx10MdGpuGraphEEclEPS1_.exit.i.i.i.i: ; preds = %bb.zu
  call void @_ZN3gmx10MdGpuGraphD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cis) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.cis, i64 noundef 8) #30
  br label %_ZNSt10unique_ptrIN3gmx10MdGpuGraphESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx10MdGpuGraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN3gmx10MdGpuGraphEEclEPS1_.exit.i.i.i.i, %bb.zu
  %i.cit = load ptr, ptr %i.cik, align 8, !tbaa !1102
  %i.ciu = load ptr, ptr %i.bcc, align 8, !tbaa !917, !nonnull !39, !align !853
  %i.civ = load ptr, ptr %i.ciu, align 8, !tbaa !634
  %i.ciw = load ptr, ptr %81, align 8, !tbaa !310
  %i.cix = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33
          to label %.noexc1283 unwind label %bb.aaa ; 4 uses

.noexc1283:                                       ; preds = %_ZNSt10unique_ptrIN3gmx10MdGpuGraphESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZN3gmx10MdGpuGraphC1ERKNS_19DeviceStreamManagerENS_18SimulationWorkloadEP10tmpi_comm_20MdGraphEvenOrOddStepP13gmx_wallcycle(ptr noundef nonnull align 8 dereferenceable(8) %i.cix, ptr noundef nonnull align 8 dereferenceable(8) %i.cit, ptr noundef nonnull byval(%"class.gmx::SimulationWorkload") align 8 %73, ptr noundef %i.civ, i32 noundef 1, ptr noundef %i.ciw)
          to label %bb.zw unwind label %bb.zv, !noalias !1222

bb.zv:                                            ; preds = %.noexc1283
  %i.ciy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZdlPvm(ptr noundef nonnull %i.cix, i64 noundef 8) #30, !noalias !1222
  br label %.body1264

bb.zw:                                            ; preds = %.noexc1283
  %i.ciz = getelementptr inbounds nuw i8, ptr %i.ceh, i64 576 ; 4 uses
  %i.cja = load ptr, ptr %i.ciz, align 8, !tbaa !1221 ; 3 uses
  store ptr %i.cix, ptr %i.ciz, align 8, !tbaa !1221
  %.not.i.i.i.i1287 = icmp eq ptr %i.cja, null
  br i1 %.not.i.i.i.i1287, label %_ZNSt10unique_ptrIN3gmx10MdGpuGraphESt14default_deleteIS1_EED2Ev.exit1292, label %_ZNKSt14default_deleteIN3gmx10MdGpuGraphEEclEPS1_.exit.i.i.i.i1288

_ZNKSt14default_deleteIN3gmx10MdGpuGraphEEclEPS1_.exit.i.i.i.i1288: ; preds = %bb.zw
  call void @_ZN3gmx10MdGpuGraphD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cja) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.cja, i64 noundef 8) #30
  %.pre1959 = load ptr, ptr %i.ciz, align 8, !tbaa !1221
  br label %_ZNSt10unique_ptrIN3gmx10MdGpuGraphESt14default_deleteIS1_EED2Ev.exit1292

_ZNSt10unique_ptrIN3gmx10MdGpuGraphESt14default_deleteIS1_EED2Ev.exit1292: ; preds = %_ZNKSt14default_deleteIN3gmx10MdGpuGraphEEclEPS1_.exit.i.i.i.i1288, %bb.zw
  %i.cjb = phi ptr [ %.pre1959, %_ZNKSt14default_deleteIN3gmx10MdGpuGraphEEclEPS1_.exit.i.i.i.i1288 ], [ %i.cix, %bb.zw ]
  %i.cjc = load ptr, ptr %i.cir, align 8, !tbaa !1221
  %i.cjd = invoke noundef ptr @_ZN3gmx10MdGpuGraph24getPpTaskCompletionEventEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cjb)
          to label %bb.zx unwind label %bb.aaa

bb.zx:                                            ; preds = %_ZNSt10unique_ptrIN3gmx10MdGpuGraphESt14default_deleteIS1_EED2Ev.exit1292
  invoke void @_ZN3gmx10MdGpuGraph37setAlternateStepPpTaskCompletionEventEP20GpuEventSynchronizer(ptr noundef nonnull align 8 dereferenceable(8) %i.cjc, ptr noundef %i.cjd)
          to label %bb.zy unwind label %bb.aaa

bb.zy:                                            ; preds = %bb.zx
  %i.cje = load ptr, ptr %i.ciz, align 8, !tbaa !1221
  %i.cjf = load ptr, ptr %i.cir, align 8, !tbaa !1221
  %i.cjg = invoke noundef ptr @_ZN3gmx10MdGpuGraph24getPpTaskCompletionEventEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cjf)
          to label %bb.zz unwind label %bb.aaa

bb.zz:                                            ; preds = %bb.zy
  invoke void @_ZN3gmx10MdGpuGraph37setAlternateStepPpTaskCompletionEventEP20GpuEventSynchronizer(ptr noundef nonnull align 8 dereferenceable(8) %i.cje, ptr noundef %i.cjg)
          to label %bb.aab unwind label %bb.aaa

bb.aaa:                                           ; preds = %bb.zs, %bb.zq, %bb.zo, %bb.zp, %bb.zm, %bb.zk, %bb.zl, %bb.zc, %_ZNSt10unique_ptrIN3gmx10MdGpuGraphESt14default_deleteIS1_EED2Ev.exit1292, %bb.zx, %bb.zy, %bb.zz, %_ZNSt10unique_ptrIN3gmx10MdGpuGraphESt14default_deleteIS1_EED2Ev.exit
  %i.cjh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body1264

bb.aab:                                           ; preds = %_ZNSt10unique_ptrIN3gmx17GpuForceReductionESt14default_deleteIS1_EED2Ev.exit1277, %bb.zz, %bb.zj
  call void @llvm.lifetime.start.p0(ptr nonnull %124) #31
  store ptr null, ptr %124, align 8, !tbaa !1224
  br i1 %i.iw, label %bb.aac, label %bb.aai

bb.aac:                                           ; preds = %bb.aab
  %.sroa.21707.0..sroa_idx = getelementptr inbounds nuw i8, ptr %73, i64 10
  %.sroa.21707.0.copyload = load i8, ptr %.sroa.21707.0..sroa_idx, align 2, !tbaa !96
  %.sroa.41709.0..sroa_idx = getelementptr inbounds nuw i8, ptr %73, i64 13
  %.sroa.41709.0.copyload = load i8, ptr %.sroa.41709.0..sroa_idx, align 1, !tbaa !96
  %.sroa.51710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %73, i64 14
  %.sroa.51710.0.copyload = load i8, ptr %.sroa.51710.0..sroa_idx, align 2, !tbaa !96
  %.sroa.61711.0.copyload = load i8, ptr %i.chj, align 1, !tbaa !96
  %.sroa.91714.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %73, i64 19
  %.sroa.91714.0.copyload.a = load i8, ptr %.sroa.91714.0..sroa_idx.a, align 1, !tbaa !96
  %i.cji = trunc nuw i8 %.sroa.21707.0.copyload to i1
  br i1 %i.cji, label %130, label %133

130:                                              ; preds = %bb.aac
  %.sroa.91714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %73, i64 20
  %.sroa.91714.0.copyload = load i8, ptr %.sroa.91714.0..sroa_idx, align 4, !tbaa !96
  %131 = trunc nuw i8 %.sroa.91714.0.copyload to i1
  %132 = xor i1 %131, true
  br label %133

133:                                              ; preds = %130, %bb.aac
  %134 = phi i1 [ false, %bb.aac ], [ %132, %130 ]
  %135 = trunc nuw i8 %.sroa.51710.0.copyload to i1
  %or.cond.i1293 = select i1 %134, i1 true, i1 %135
  %136 = trunc nuw i8 %.sroa.61711.0.copyload to i1
  %or.cond5.i1294 = select i1 %or.cond.i1293, i1 true, i1 %136
  %137 = trunc nuw i8 %.sroa.91714.0.copyload.a to i1
  %or.cond8.i = select i1 %or.cond5.i1294, i1 true, i1 %137
  %138 = trunc nuw i8 %.sroa.41709.0.copyload to i1
  %139 = select i1 %or.cond8.i, i1 true, i1 %138
  br i1 %139, label %bb.aad, label %bb.aai

bb.aad:                                           ; preds = %133
  %i.cjj = load i32, ptr %i.cba, align 4, !tbaa !658
  %i.cjk = icmp ne i32 %i.cjj, 0
  %or.cond25 = or i1 %i.cjk, %i.as
  %.demorgan = or i1 %i.ki, %or.cond25
  %i.cjl = xor i1 %.demorgan, true
  %i.cjm = zext i1 %i.cjl to i32
  %i.cjn = load ptr, ptr %76, align 8, !tbaa !304 ; 2 uses
  %.not1827 = icmp eq ptr %i.cjn, null
  br i1 %.not1827, label %bb.aae, label %bb.aaf

bb.aae:                                           ; preds = %bb.aad
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.113, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx8Mdrunner8mdrunnerEvENK3$_0clEv", ptr noundef nonnull @.str.9, i32 noundef 2336) #34
          to label %.noexc1295 unwind label %bb.aah

.noexc1295:                                       ; preds = %bb.aae
  unreachable

bb.aaf:                                           ; preds = %bb.aad
  %i.cjo = load ptr, ptr %81, align 8, !tbaa !310
  %i.cjp = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33
          to label %.noexc1296 unwind label %bb.aah ; 4 uses

.noexc1296:                                       ; preds = %bb.aaf
  %i.cjq = load i8, ptr %i.ayh, align 4, !tbaa !96, !range !38, !noalias !1225, !noundef !39
  %i.cjr = trunc nuw i8 %i.cjq to i1
  %i.cjs = load i8, ptr %i.chj, align 1, !tbaa !96, !range !38, !noalias !1225, !noundef !39
  %i.cjt = trunc nuw i8 %i.cjs to i1
  invoke void @_ZN3gmx22StatePropagatorDataGpuC1ERKNS_19DeviceStreamManagerE18GpuApiCallBehavioribbP13gmx_wallcycle(ptr noundef nonnull align 8 dereferenceable(8) %i.cjp, ptr noundef nonnull align 8 dereferenceable(8) %i.cjn, i32 noundef %i.cjm, i32 noundef 0, i1 noundef zeroext %i.cjr, i1 noundef zeroext %i.cjt, ptr noundef %i.cjo)
          to label %_ZSt11make_uniqueIN3gmx22StatePropagatorDataGpuEJRNS0_19DeviceStreamManagerER18GpuApiCallBehavioriRbS6_P13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.aag, !noalias !1225

bb.aag:                                           ; preds = %.noexc1296
  %i.cju = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZdlPvm(ptr noundef nonnull %i.cjp, i64 noundef 8) #30, !noalias !1225
  br label %.body1297

_ZSt11make_uniqueIN3gmx22StatePropagatorDataGpuEJRNS0_19DeviceStreamManagerER18GpuApiCallBehavioriRbS6_P13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.noexc1296
  %i.cjv = load ptr, ptr %124, align 8, !tbaa !342 ; 3 uses
  store ptr %i.cjp, ptr %124, align 8, !tbaa !342
  %.not.i.i.i.i1299 = icmp eq ptr %i.cjv, null
  br i1 %.not.i.i.i.i1299, label %_ZNSt10unique_ptrIN3gmx22StatePropagatorDataGpuESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx22StatePropagatorDataGpuEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN3gmx22StatePropagatorDataGpuEEclEPS1_.exit.i.i.i.i: ; preds = %_ZSt11make_uniqueIN3gmx22StatePropagatorDataGpuEJRNS0_19DeviceStreamManagerER18GpuApiCallBehavioriRbS6_P13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  call void @_ZN3gmx22StatePropagatorDataGpuD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cjv) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.cjv, i64 noundef 8) #30
  %.pre1960 = load ptr, ptr %124, align 8, !tbaa !342
  br label %_ZNSt10unique_ptrIN3gmx22StatePropagatorDataGpuESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx22StatePropagatorDataGpuESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN3gmx22StatePropagatorDataGpuEEclEPS1_.exit.i.i.i.i, %_ZSt11make_uniqueIN3gmx22StatePropagatorDataGpuEJRNS0_19DeviceStreamManagerER18GpuApiCallBehavioriRbS6_P13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.cjw = phi ptr [ %.pre1960, %_ZNKSt14default_deleteIN3gmx22StatePropagatorDataGpuEEclEPS1_.exit.i.i.i.i ], [ %i.cjp, %_ZSt11make_uniqueIN3gmx22StatePropagatorDataGpuEJRNS0_19DeviceStreamManagerER18GpuApiCallBehavioriRbS6_P13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit ]
  %i.cjx = getelementptr inbounds nuw i8, ptr %i.ceh, i64 520
  store ptr %i.cjw, ptr %i.cjx, align 8, !tbaa !1226
  br label %bb.aai

bb.aah:                                           ; preds = %bb.aae, %bb.aaf
  %i.cjy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body1297

bb.aai:                                           ; preds = %_ZNSt10unique_ptrIN3gmx22StatePropagatorDataGpuESt14default_deleteIS1_EED2Ev.exit, %133, %bb.aab
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #31
  invoke void @_ZN3gmx16SimulatorBuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %125)
          to label %bb.aaj unwind label %bb.abb

bb.aaj:                                           ; preds = %bb.aai
  %i.cjz = load ptr, ptr %27, align 8, !tbaa !159
  %i.cka = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #33
          to label %.noexc1302 unwind label %bb.abe ; 6 uses

.noexc1302:                                       ; preds = %bb.aaj
  store ptr %i.cjz, ptr %i.cka, align 16, !tbaa !159, !noalias !1227
  %.sroa.51501.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cka, i64 8
  store ptr %.0473, ptr %.sroa.51501.0..sroa_idx, align 8, !tbaa !159, !noalias !1227
  %.sroa.61502.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cka, i64 16
  store ptr %48, ptr %.sroa.61502.0..sroa_idx, align 16, !tbaa !1229, !noalias !1227
  %.sroa.71503.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cka, i64 24
  store ptr %120, ptr %.sroa.71503.0..sroa_idx, align 8, !tbaa !1231, !noalias !1227
  %.sroa.81504.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cka, i64 32
  store ptr %121, ptr %.sroa.81504.0..sroa_idx, align 16, !tbaa !1233, !noalias !1227
  %i.ckb = getelementptr inbounds nuw i8, ptr %125, i64 24 ; 2 uses
  %i.ckc = load ptr, ptr %i.ckb, align 8, !tbaa !1235 ; 2 uses
  store ptr %i.cka, ptr %i.ckb, align 8, !tbaa !1235
  %.not.i.i.i.i.i1301 = icmp eq ptr %i.ckc, null
  br i1 %.not.i.i.i.i.i1301, label %_ZN3gmx16SimulatorBuilder3addEONS_18SimulatorStateDataE.exit, label %_ZNKSt14default_deleteIN3gmx18SimulatorStateDataEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN3gmx18SimulatorStateDataEEclEPS1_.exit.i.i.i.i.i: ; preds = %.noexc1302
  call void @_ZdlPvm(ptr noundef nonnull %i.ckc, i64 noundef 40) #30
  br label %_ZN3gmx16SimulatorBuilder3addEONS_18SimulatorStateDataE.exit

_ZN3gmx16SimulatorBuilder3addEONS_18SimulatorStateDataE.exit: ; preds = %_ZNKSt14default_deleteIN3gmx18SimulatorStateDataEEclEPS1_.exit.i.i.i.i.i, %.noexc1302
  invoke void @_ZN3gmx16SimulatorBuilder3addEONS_12MembedHolderE(ptr noundef nonnull align 8 dereferenceable(128) %125, ptr noundef nonnull align 8 dereferenceable(9) %19)
          to label %bb.aak unwind label %bb.abe

bb.aak:                                           ; preds = %_ZN3gmx16SimulatorBuilder3addEONS_18SimulatorStateDataE.exit
  %i.ckd = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.cke = load i64, ptr %i.ckd, align 8, !tbaa !114
  store i64 %i.cke, ptr %126, align 8, !tbaa !114
  store ptr null, ptr %i.ckd, align 8, !tbaa !114
  invoke void @_ZN3gmx16SimulatorBuilder3addESt10unique_ptrINS_18StopHandlerBuilderESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(128) %125, ptr noundef nonnull align 8 %126)
          to label %bb.aal unwind label %bb.abc

bb.aal:                                           ; preds = %bb.aak
  %i.ckf = load ptr, ptr %126, align 8, !tbaa !114 ; 6 uses
  %.not.i1303 = icmp eq ptr %i.ckf, null
  br i1 %.not.i1303, label %_ZNSt10unique_ptrIN3gmx18StopHandlerBuilderESt14default_deleteIS1_EED2Ev.exit, label %bb.aam

bb.aam:                                           ; preds = %bb.aal
  %i.ckg = load ptr, ptr %i.ckf, align 8, !tbaa !118 ; 3 uses
  %i.ckh = getelementptr inbounds nuw i8, ptr %i.ckf, i64 8
  %i.cki = load ptr, ptr %i.ckh, align 8, !tbaa !117 ; 2 uses
  %.not4.i.i.i.i.i.i1304 = icmp eq ptr %i.ckg, %i.cki
  br i1 %.not4.i.i.i.i.i.i1304, label %_ZSt8_DestroyIPSt8functionIFN3gmx10StopSignalEvEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i1305

.lr.ph.i.i.i.i.i.i1305:                           ; preds = %bb.aam, %_ZSt8_DestroyISt8functionIFN3gmx10StopSignalEvEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i1306 = phi ptr [ %i.cko, %_ZSt8_DestroyISt8functionIFN3gmx10StopSignalEvEEEvPT_.exit.i.i.i.i.i.i ], [ %i.ckg, %bb.aam ] ; 4 uses
  %i.ckj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i1306, i64 16
  %i.ckk = load ptr, ptr %i.ckj, align 8, !tbaa !122 ; 2 uses
  %.not.i.i.i.i.i.i.i.i1307 = icmp eq ptr %i.ckk, null
  br i1 %.not.i.i.i.i.i.i.i.i1307, label %_ZSt8_DestroyISt8functionIFN3gmx10StopSignalEvEEEvPT_.exit.i.i.i.i.i.i, label %bb.aan

bb.aan:                                           ; preds = %.lr.ph.i.i.i.i.i.i1305
  %i.ckl = invoke noundef zeroext i1 %i.ckk(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i.i.i.i1306, ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i.i.i.i1306, i32 noundef 3)
          to label %_ZSt8_DestroyISt8functionIFN3gmx10StopSignalEvEEEvPT_.exit.i.i.i.i.i.i unwind label %bb.aao ; 0 uses

bb.aao:                                           ; preds = %bb.aan
  %i.ckm = landingpad { ptr, i32 }
          catch ptr null
  %i.ckn = extractvalue { ptr, i32 } %i.ckm, 0
  call void @__clang_call_terminate(ptr %i.ckn) #32
  unreachable

_ZSt8_DestroyISt8functionIFN3gmx10StopSignalEvEEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.aan, %.lr.ph.i.i.i.i.i.i1305
  %i.cko = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i1306, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i1308 = icmp eq ptr %i.cko, %i.cki
  br i1 %.not.i.i.i.i.i.i1308, label %_ZSt8_DestroyIPSt8functionIFN3gmx10StopSignalEvEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i1305, !llvm.loop !0

_ZSt8_DestroyIPSt8functionIFN3gmx10StopSignalEvEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyISt8functionIFN3gmx10StopSignalEvEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.ckf, align 8, !tbaa !118
  br label %_ZSt8_DestroyIPSt8functionIFN3gmx10StopSignalEvEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt8functionIFN3gmx10StopSignalEvEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt8functionIFN3gmx10StopSignalEvEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.aam
  %i.ckp = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPSt8functionIFN3gmx10StopSignalEvEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.ckg, %bb.aam ] ; 3 uses
  %.not.i.i1.i.i.i.i1309 = icmp eq ptr %i.ckp, null
  br i1 %.not.i.i1.i.i.i.i1309, label %_ZNKSt14default_deleteIN3gmx18StopHandlerBuilderEEclEPS1_.exit.i, label %bb.aap

bb.aap:                                           ; preds = %_ZSt8_DestroyIPSt8functionIFN3gmx10StopSignalEvEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i
  %i.ckq = getelementptr inbounds nuw i8, ptr %i.ckf, i64 16
  %i.ckr = load ptr, ptr %i.ckq, align 8, !tbaa !120
  %i.cks = ptrtoint ptr %i.ckr to i64
  %i.ckt = ptrtoint ptr %i.ckp to i64
  %i.cku = sub i64 %i.cks, %i.ckt
  call void @_ZdlPvm(ptr noundef nonnull %i.ckp, i64 noundef %i.cku) #30
  br label %_ZNKSt14default_deleteIN3gmx18StopHandlerBuilderEEclEPS1_.exit.i

_ZNKSt14default_deleteIN3gmx18StopHandlerBuilderEEclEPS1_.exit.i: ; preds = %bb.aap, %_ZSt8_DestroyIPSt8functionIFN3gmx10StopSignalEvEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ckf, i64 noundef 24) #30
  br label %_ZNSt10unique_ptrIN3gmx18StopHandlerBuilderESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx18StopHandlerBuilderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.aal, %_ZNKSt14default_deleteIN3gmx18StopHandlerBuilderEEclEPS1_.exit.i
  %i.ckv = load i32, ptr %i.yx, align 8, !tbaa !113
  %i.ckw = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %.noexc1311 unwind label %bb.abe ; 4 uses

.noexc1311:                                       ; preds = %_ZNSt10unique_ptrIN3gmx18StopHandlerBuilderESt14default_deleteIS1_EED2Ev.exit
  store ptr %i.aq, ptr %i.ckw, align 16, !tbaa !1237, !noalias !1238
  %.sroa.51497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ckw, i64 8
  store i32 %i.ckv, ptr %.sroa.51497.0..sroa_idx, align 8, !tbaa !1239, !noalias !1238
  %.sroa.61499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ckw, i64 16
  store ptr %73, ptr %.sroa.61499.0..sroa_idx, align 16, !tbaa !1241, !noalias !1238
  %i.ckx = load ptr, ptr %125, align 8, !tbaa !1243 ; 2 uses
  store ptr %i.ckw, ptr %125, align 8, !tbaa !1243
  %.not.i.i.i.i.i1310 = icmp eq ptr %i.ckx, null
  br i1 %.not.i.i.i.i.i1310, label %_ZN3gmx16SimulatorBuilder3addEONS_15SimulatorConfigE.exit, label %_ZNKSt14default_deleteIN3gmx15SimulatorConfigEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN3gmx15SimulatorConfigEEclEPS1_.exit.i.i.i.i.i: ; preds = %.noexc1311
  call void @_ZdlPvm(ptr noundef nonnull %i.ckx, i64 noundef 24) #30
  br label %_ZN3gmx16SimulatorBuilder3addEONS_15SimulatorConfigE.exit

_ZN3gmx16SimulatorBuilder3addEONS_15SimulatorConfigE.exit: ; preds = %_ZNKSt14default_deleteIN3gmx15SimulatorConfigEEclEPS1_.exit.i.i.i.i.i, %.noexc1311
  %i.cky = load ptr, ptr %i.t, align 8, !tbaa !150
  %i.ckz = load ptr, ptr %i.eh, align 8, !tbaa !112
  %i.cla = load ptr, ptr %i.cgr, align 8, !tbaa !95
  %i.clb = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #33
          to label %.noexc1313 unwind label %bb.abe ; 7 uses

.noexc1313:                                       ; preds = %_ZN3gmx16SimulatorBuilder3addEONS_15SimulatorConfigE.exit
  store ptr %i.cky, ptr %i.clb, align 16, !tbaa !150, !noalias !1244
  %.sroa.51493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.clb, i64 8
  store ptr %.sroa.01628.0, ptr %.sroa.51493.0..sroa_idx, align 8, !tbaa !1246, !noalias !1244
  %.sroa.61494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.clb, i64 16
  store ptr %i.ckz, ptr %.sroa.61494.0..sroa_idx, align 16, !tbaa !313, !noalias !1244
  %.sroa.71495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.clb, i64 24
  store ptr %24, ptr %.sroa.71495.0..sroa_idx, align 8, !tbaa !1247, !noalias !1244
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.clb, i64 32
  store ptr %i.cla, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !1248, !noalias !1244
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.clb, i64 40
  store ptr %35, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !341, !noalias !1244
  %i.clc = getelementptr inbounds nuw i8, ptr %125, i64 32 ; 2 uses
  %i.cld = load ptr, ptr %i.clc, align 8, !tbaa !1250 ; 2 uses
  store ptr %i.clb, ptr %i.clc, align 8, !tbaa !1250
  %.not.i.i.i.i.i1312 = icmp eq ptr %i.cld, null
  br i1 %.not.i.i.i.i.i1312, label %_ZN3gmx16SimulatorBuilder3addEONS_12SimulatorEnvE.exit, label %_ZNKSt14default_deleteIN3gmx12SimulatorEnvEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN3gmx12SimulatorEnvEEclEPS1_.exit.i.i.i.i.i: ; preds = %.noexc1313
  call void @_ZdlPvm(ptr noundef nonnull %i.cld, i64 noundef 48) #30
  br label %_ZN3gmx16SimulatorBuilder3addEONS_12SimulatorEnvE.exit

_ZN3gmx16SimulatorBuilder3addEONS_12SimulatorEnvE.exit: ; preds = %_ZNKSt14default_deleteIN3gmx12SimulatorEnvEEclEPS1_.exit.i.i.i.i.i, %.noexc1313
  %i.cle = load ptr, ptr %81, align 8, !tbaa !310
  %i.clf = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %.noexc1315 unwind label %bb.abe ; 4 uses

.noexc1315:                                       ; preds = %_ZN3gmx16SimulatorBuilder3addEONS_12SimulatorEnvE.exit
  store ptr %84, ptr %i.clf, align 16, !tbaa !339, !noalias !1251
  %.sroa.51490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.clf, i64 8
  store ptr %i.cle, ptr %.sroa.51490.0..sroa_idx, align 8, !tbaa !310, !noalias !1251
  %.sroa.61491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.clf, i64 16
  store ptr %i.cbh, ptr %.sroa.61491.0..sroa_idx, align 16, !tbaa !1253, !noalias !1251
  %i.clg = getelementptr inbounds nuw i8, ptr %125, i64 40 ; 2 uses
  %i.clh = load ptr, ptr %i.clg, align 8, !tbaa !1255 ; 2 uses
  store ptr %i.clf, ptr %i.clg, align 8, !tbaa !1255
  %.not.i.i.i.i.i1314 = icmp eq ptr %i.clh, null
  br i1 %.not.i.i.i.i.i1314, label %_ZN3gmx16SimulatorBuilder3addEONS_9ProfilingE.exit, label %_ZNKSt14default_deleteIN3gmx9ProfilingEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN3gmx9ProfilingEEclEPS1_.exit.i.i.i.i.i: ; preds = %.noexc1315
  call void @_ZdlPvm(ptr noundef nonnull %i.clh, i64 noundef 24) #30
  br label %_ZN3gmx16SimulatorBuilder3addEONS_9ProfilingE.exit

_ZN3gmx16SimulatorBuilder3addEONS_9ProfilingE.exit: ; preds = %_ZNKSt14default_deleteIN3gmx9ProfilingEEclEPS1_.exit.i.i.i.i.i, %.noexc1315
  %i.cli = load ptr, ptr %119, align 8, !tbaa !344
  %i.clj = load ptr, ptr %115, align 8, !tbaa !335 ; 2 uses
  %.not1828 = icmp eq ptr %i.clj, null
  br i1 %.not1828, label %bb.aar, label %bb.aaq

bb.aaq:                                           ; preds = %_ZN3gmx16SimulatorBuilder3addEONS_9ProfilingE.exit
  %i.clk = invoke noundef ptr @_ZN3gmx16EnforcedRotation15getLegacyEnfrotEv(ptr noundef nonnull align 8 dereferenceable(8) %i.clj)
          to label %bb.aar unwind label %bb.abe

bb.aar:                                           ; preds = %_ZN3gmx16SimulatorBuilder3addEONS_9ProfilingE.exit, %bb.aaq
  %i.cll = phi ptr [ %i.clk, %bb.aaq ], [ null, %_ZN3gmx16SimulatorBuilder3addEONS_9ProfilingE.exit ]
  %i.clm = load ptr, ptr %83, align 8, !tbaa !322
  %i.cln = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %.noexc1317 unwind label %bb.abe ; 4 uses

.noexc1317:                                       ; preds = %bb.aar
  store ptr %i.cli, ptr %i.cln, align 16, !tbaa !344, !noalias !1256
  %.sroa.51487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cln, i64 8
  store ptr %i.cll, ptr %.sroa.51487.0..sroa_idx, align 8, !tbaa !1258, !noalias !1256
  %.sroa.61488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cln, i64 16
  store ptr %i.clm, ptr %.sroa.61488.0..sroa_idx, align 16, !tbaa !322, !noalias !1256
  %i.clo = getelementptr inbounds nuw i8, ptr %125, i64 48 ; 2 uses
  %i.clp = load ptr, ptr %i.clo, align 8, !tbaa !1260 ; 2 uses
  store ptr %i.cln, ptr %i.clo, align 8, !tbaa !1260
  %.not.i.i.i.i.i1316 = icmp eq ptr %i.clp, null
  br i1 %.not.i.i.i.i.i1316, label %_ZN3gmx16SimulatorBuilder3addEONS_16ConstraintsParamE.exit, label %_ZNKSt14default_deleteIN3gmx16ConstraintsParamEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN3gmx16ConstraintsParamEEclEPS1_.exit.i.i.i.i.i: ; preds = %.noexc1317
  call void @_ZdlPvm(ptr noundef nonnull %i.clp, i64 noundef 24) #30
  br label %_ZN3gmx16SimulatorBuilder3addEONS_16ConstraintsParamE.exit

end_hunk_0

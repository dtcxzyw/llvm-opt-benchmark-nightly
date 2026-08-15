inline.NumInlined: 1232
inline.NumDeleted: 633
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3gmxL27setupLocalGpuForceReductionERKNS_21MdrunScheduleWorkloadEPNS_18nonbonded_verlet_tEPNS_22StatePropagatorDataGpuEPNS_17GpuForceReductionEPNS_12PmePpCommGpuEPK9gmx_pme_tPK12gmx_domdec_t:bb.a
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZNRSt8optionalIPvE5valueEv.exit, label %.critedge

_ZNRSt8optionalIPvE5valueEv.exit:                 ; preds = %bb.c
  %i.ab = tail call { ptr, i8 } @_ZN3gmx12PmePpCommGpu26getForcesReadySynchronizerEv(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.ac = extractvalue { ptr, i8 } %i.ab, 0
  %i.ad = extractvalue { ptr, i8 } %i.ab, 1
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_ZNOSt8optionalIP20GpuEventSynchronizerE5valueEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNRSt8optionalIPvE5valueEv.exit
  tail call void @_ZSt27__throw_bad_optional_accessv() #27
  unreachable

_ZNOSt8optionalIP20GpuEventSynchronizerE5valueEv.exit: ; preds = %_ZNRSt8optionalIPvE5valueEv.exit
  tail call void @_ZN3gmx17GpuForceReduction17registerRvecForceEPv(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.y)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !202, !range !147, !noundef !148
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNOSt8optionalIP20GpuEventSynchronizerE5valueEv.exit
  %i.ai = tail call noundef ptr @_ZN3gmx12PmePpCommGpu19getGpuForcesSyncObjEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  tail call void @_ZN3gmx17GpuForceReduction31registerForcesReadyNvshmemFlagsEPv(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.ai)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNOSt8optionalIP20GpuEventSynchronizerE5valueEv.exit
  tail call void @_ZN3gmx17GpuForceReduction13addDependencyEP20GpuEventSynchronizer(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.ac)
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.a, %bb.b, %bb.f
  %i.aj = load i8, ptr %i.a, align 1, !tbaa !300, !range !147, !noundef !148
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.al = load i8, ptr %i.d, align 1, !tbaa !542, !range !147, !noundef !148
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !543, !range !147, !noundef !148
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge
  %i.aq = tail call noundef ptr @_ZN3gmx22StatePropagatorDataGpu14fReadyOnDeviceENS_12AtomLocalityE(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0)
  tail call void @_ZN3gmx17GpuForceReduction13addDependencyEP20GpuEventSynchronizer(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.aq)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !543, !range !147, !noundef !148
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.av = load i8, ptr %i.au, align 1, !tbaa !202, !range !147, !noundef !148
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 1016
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !544 ; 2 uses
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmxL27setupLocalGpuForceReductionERKNS_21MdrunScheduleWorkloadEPNS_18nonbonded_verlet_tEPNS_22StatePropagatorDataGpuEPNS_17GpuForceReductionEPNS_12PmePpCommGpuEPK9gmx_pme_tPK12gmx_domdec_tENK3$_0clEv", ptr noundef nonnull @.str.19, i32 noundef 1277) #27
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.az = tail call noundef ptr @_ZN3gmx28GpuHaloExchangeNvshmemHelper27getForcesReadyOnDeviceEventEv(ptr noundef nonnull align 8 dereferenceable(184) %i.ay)
  br label %.sink.split

bb.o:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 1024
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !546
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !549
  %i.bd = tail call noundef ptr @_ZN3gmx15GpuHaloExchange27getForcesReadyOnDeviceEventEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bc)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.o, %bb.n
  %.sink = phi ptr [ %i.az, %bb.n ], [ %i.bd, %bb.o ]
  tail call void @_ZN3gmx17GpuForceReduction13addDependencyEP20GpuEventSynchronizer(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %.sink)
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.j
  ret void
}

declare void @_ZN3gmx18nonbonded_verlet_t21convertCoordinatesGpuENS_12AtomLocalityEPvP20GpuEventSynchronizer(ptr noundef nonnull align 8 dereferenceable(65), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN3gmx22StatePropagatorDataGpu14getCoordinatesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_ZN3gmx18nonbonded_verlet_t18convertCoordinatesENS_12AtomLocalityENS_8ArrayRefIKNS_11BasicVectorIfEEEE(ptr noundef nonnull align 8 dereferenceable(65), i32 noundef, ptr, ptr) local_unnamed_addr #4

declare void @_ZN3gmx15ListedForcesGpu21setPbcAndlaunchKernelE7PbcTypePA3_KfbRKNS_12StepWorkloadE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef nonnull align 1 dereferenceable(19)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3gmxL12do_nb_verletEP10t_forcerecPK19interaction_const_tP14gmx_enerdata_tRKNS_12StepWorkloadENS_19InteractionLocalityEilP6t_nrnbP13gmx_wallcycle(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull align 1 dereferenceable(19) %3, i32 noundef range(i32 0, 2) %4, i32 noundef range(i32 0, 2) %5, i64 noundef %6, ptr noundef %7) unnamed_addr #8 {
bb.a:
  %8 = alloca %"class.gmx::ArrayRef.120", align 8 ; 3 uses
  %9 = alloca %"class.gmx::ArrayRef.399", align 8 ; 3 uses
  %10 = alloca %"class.gmx::ArrayRef.399", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.b = load i8, ptr %i.a, align 1, !tbaa !305, !range !147, !noundef !148
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !420
  %i.h = icmp eq i32 %i.g, 4
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_ZNK3gmx18nonbonded_verlet_t23isDynamicPruningStepCpuEl(ptr noundef nonnull align 8 dereferenceable(65) %i.e, i64 noundef %6)
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !278  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !279
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.p
  tail call void @_ZNK3gmx18nonbonded_verlet_t22dispatchPruneKernelCpuENS_19InteractionLocalityENS_8ArrayRefIKNS_11BasicVectorIfEEEE(ptr noundef nonnull align 8 dereferenceable(65) %i.e, i32 noundef %4, ptr %i.k, ptr %i.q)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !278  ; 3 uses
  store ptr %i.s, ptr %8, align 8, !tbaa !222
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !279
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.y
  store ptr %i.z, ptr %i.t, align 8, !tbaa !222
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 392 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !551, !range !147, !noundef !148
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = select i1 %i.ad, i64 2, i64 1
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ae ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !468 ; 3 uses
  store ptr %i.ag, ptr %9, align 8, !tbaa !263
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !469
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ag to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.am
  store ptr %i.an, ptr %i.ah, align 8, !tbaa !263
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !468 ; 3 uses
  store ptr %i.ao, ptr %10, align 8, !tbaa !263
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 400
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !469
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ao to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  store ptr %i.av, ptr %i.ap, align 8, !tbaa !263
  tail call void @_ZNK3gmx18nonbonded_verlet_t23dispatchNonbondedKernelENS_19InteractionLocalityERK19interaction_const_tRKNS_12StepWorkloadEiNS_8ArrayRefIKNS_11BasicVectorIfEEEENS8_IfEESD_P6t_nrnb(ptr noundef nonnull align 8 dereferenceable(65) %i.e, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(137) %1, ptr noundef nonnull align 1 dereferenceable(19) %3, i32 noundef %5, ptr noundef nonnull byval(%"class.gmx::ArrayRef.120") align 8 %8, ptr noundef nonnull byval(%"class.gmx::ArrayRef.399") align 8 %9, ptr noundef nonnull byval(%"class.gmx::ArrayRef.399") align 8 %10, ptr noundef %7)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

declare void @_ZN3gmx18nonbonded_verlet_t28dispatchFreeEnergyGpuKernelsENS_19InteractionLocalityERKNS_18SimulationWorkloadERKNS_12StepWorkloadE(ptr noundef nonnull align 8 dereferenceable(65), i32 noundef, ptr noundef nonnull align 1 dereferenceable(29), ptr noundef nonnull align 1 dereferenceable(19)) local_unnamed_addr #4

declare noundef ptr @_Z29communicateGpuHaloCoordinatesRK9t_commrecPA3_KfP20GpuEventSynchronizer(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN3gmx12HaloExchange5moveXEPA3_KfNS_8ArrayRefINS_11BasicVectorIfEEEE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef, ptr, ptr) local_unnamed_addr #4

declare void @_Z9dd_move_xP12gmx_domdec_tPA3_KfN3gmx8ArrayRefINS4_11BasicVectorIfEEEEP13gmx_wallcycle(ptr noundef, ptr noundef, ptr, ptr, ptr noundef) local_unnamed_addr #4

declare void @_ZN3gmx15ListedForcesGpu20launchEnergyTransferEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare { ptr, ptr } @_ZN3gmx22WholeMoleculeTransform24wholeMoleculeCoordinatesENS_8ArrayRefIKNS_11BasicVectorIfEEEEPA3_Kf(ptr noundef nonnull align 8 dereferenceable(216), ptr, ptr, ptr noundef) local_unnamed_addr #4

declare void @_ZN3gmx22StatePropagatorDataGpu30waitCoordinatesUpdatedOnDeviceEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3gmxL17setupForceOutputsEP18ForceHelperBuffersNS_19ArrayRefWithPaddingINS_11BasicVectorIfEEEERKNS_22DomainLifetimeWorkloadERKNS_12StepWorkloadEbP13gmx_wallcycle(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 25), (32, 49), (56, 57), (64, 120)) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return %2, i8 %.4.val, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(19) %3, i1 noundef zeroext %4) unnamed_addr #8 {
_ZN3gmx20ForceWithShiftForcesC2ERKNS_19ArrayRefWithPaddingINS_11BasicVectorIfEEEEbRKNS_8ArrayRefIS3_EE.exit:
  %5 = alloca %"class.gmx::ArrayRef", align 8     ; 5 uses
  %6 = alloca %"class.gmx::ArrayRef", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 3 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !157, !range !147, !noundef !148 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !278  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !279
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j
  %i.l = load ptr, ptr %2, align 8, !tbaa !16     ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !tbaa !22
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !23   ; 3 uses
  %spec.select = select i1 %i.c, ptr %i.k, ptr null ; 3 uses
  %spec.select20 = select i1 %i.c, ptr %i.e, ptr null ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 5 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !470, !range !147, !noundef !148
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 2 uses
  br i1 %i.r, label %bb.a, label %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit29

bb.a:                                             ; preds = %_ZN3gmx20ForceWithShiftForcesC2ERKNS_19ArrayRefWithPaddingINS_11BasicVectorIfEEEEbRKNS_8ArrayRefIS3_EE.exit
  %i.t = trunc nuw i8 %.4.val to i1
  br i1 %i.t, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.v = load i8, ptr %i.u, align 1, !tbaa !516, !range !147, !noundef !148
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %4, label %bb.d, label %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit29

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.y = load i8, ptr %i.x, align 1, !tbaa !515, !range !147, !noundef !148
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit29, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.l, ptr %6, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.o, ptr %i.aa, align 8
  %i.ab = ptrtoint ptr %i.o to i64
  %i.ac = ptrtoint ptr %i.l to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %reass.sub.fr = freeze i64 %i.ad                ; 3 uses
  %i.ae = sdiv exact i64 %reass.sub.fr, 12
  %i.af = trunc i64 %i.ae to i32
  %i.ag = icmp slt i32 %i.af, 2000
  br i1 %i.ag, label %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i, label %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.i

_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.i: ; preds = %bb.e
  %i.ah = tail call noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef 0) ; 2 uses
  %.not = icmp eq i32 %i.ah, 1
  br i1 %.not, label %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i, label %bb.f

_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i: ; preds = %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.i, %bb.e
  %.not13.i = icmp eq ptr %i.l, %i.o
  br i1 %.not13.i, label %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i
  %i.ai = add i64 %reass.sub.fr, -12
  %i.aj = urem i64 %i.ai, 12
  %i.ak = sub i64 %reass.sub.fr, %i.aj
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %i.ak, i1 false), !tbaa !156
  br label %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit

bb.f:                                             ; preds = %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.i
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.s, i32 %i.ah)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 1, ptr nonnull @_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.omp_outlined, ptr nonnull %6)
  br label %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit

_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit: ; preds = %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i, %.lr.ph.preheader.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.al = ptrtoint ptr %spec.select to i64
  %i.am = ptrtoint ptr %spec.select20 to i64
  %i.an = sub i64 %i.al, %i.am
  %reass.sub27.fr = freeze i64 %i.an              ; 3 uses
  %i.ao = sdiv exact i64 %reass.sub27.fr, 12
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = icmp slt i32 %i.ap, 2000
  br i1 %i.aq, label %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i25, label %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.i24

_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.i24: ; preds = %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit
  %i.ar = call noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef 0) ; 0 uses
  br label %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i25

_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i25: ; preds = %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.i24, %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit
  %.not13.i26 = icmp eq ptr %spec.select20, %spec.select
  br i1 %.not13.i26, label %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit29, label %.lr.ph.preheader.i27

.lr.ph.preheader.i27:                             ; preds = %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i25
  %i.as = add i64 %reass.sub27.fr, -12
  %i.at = urem i64 %i.as, 12
  %i.au = sub i64 %reass.sub27.fr, %i.at
  call void @llvm.memset.p0.i64(ptr align 4 %spec.select20, i8 0, i64 %i.au, i1 false), !tbaa !156
  br label %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit29

_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit29: ; preds = %.lr.ph.preheader.i27, %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i25, %bb.d, %bb.c, %_ZN3gmx20ForceWithShiftForcesC2ERKNS_19ArrayRefWithPaddingINS_11BasicVectorIfEEEEbRKNS_8ArrayRefIS3_EE.exit
  %i.av = load i8, ptr %i.p, align 1, !tbaa !470, !range !147, !noundef !148
  %i.aw = trunc nuw i8 %i.av to i1
  %.pre.pre = load i8, ptr %i.a, align 1, !tbaa !157, !range !147 ; 2 uses
  %i.ax = trunc nuw i8 %.pre.pre to i1
  %or.cond = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit29
  %i.ay = load i8, ptr %1, align 8, !tbaa !552, !range !147, !noundef !148
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit29, %bb.g
  %i.ba = phi i8 [ 1, %bb.g ], [ %.pre.pre, %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit29 ]
  %i.bb = load ptr, ptr %2, align 8, !tbaa !16
  %i.bc = load ptr, ptr %i.m, align 8, !tbaa !23
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !278 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !279 ; 2 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %reass.sub28.fr = freeze i64 %i.bj              ; 4 uses
  %.sroa.8.3.scevgep12.i.sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.be, i64 %reass.sub28.fr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.be, ptr %5, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.8.3.scevgep12.i.sroa_idx34, ptr %i.bk, align 8
  %i.bl = sdiv exact i64 %reass.sub28.fr, 12
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = icmp slt i32 %i.bm, 2000
  br i1 %i.bn, label %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i35, label %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.i34

_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.i34: ; preds = %bb.i
  %i.bo = call noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef 0) ; 2 uses
  %.not21 = icmp eq i32 %i.bo, 1
  br i1 %.not21, label %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i35, label %bb.j

_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i35: ; preds = %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.i34, %bb.i
  %.not13.i36 = icmp eq ptr %i.be, %i.bg
  br i1 %.not13.i36, label %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit39, label %.lr.ph.preheader.i37

.lr.ph.preheader.i37:                             ; preds = %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i35
  %i.bp = add i64 %reass.sub28.fr, -12
  %i.bq = urem i64 %i.bp, 12
  %i.br = sub i64 %reass.sub28.fr, %i.bq
  call void @llvm.memset.p0.i64(ptr align 4 %i.be, i8 0, i64 %i.br, i1 false), !tbaa !156
  br label %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit39

bb.j:                                             ; preds = %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.i34
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.s, i32 %i.bo)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 1, ptr nonnull @_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.omp_outlined, ptr nonnull %5)
  br label %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit39

_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit39: ; preds = %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i35, %.lr.ph.preheader.i37, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit39
  %i.bs = phi i8 [ 1, %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit39 ], [ %i.ba, %bb.h ]
  %.sroa.0.019 = phi ptr [ %i.be, %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit39 ], [ %i.bb, %bb.h ]
  %.sroa.5.016 = phi ptr [ %.sroa.8.3.scevgep12.i.sroa_idx34, %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit39 ], [ %i.bc, %bb.h ]
  %i.bt = load i8, ptr %1, align 8, !tbaa !552, !range !147, !noundef !148
  store ptr %i.l, ptr %0, align 8, !tbaa !16
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.n, ptr %i.bu, align 8, !tbaa !22
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.b, ptr %i.bv, align 8
  %.sroa.1210.24..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %spec.select20, ptr %.sroa.1210.24..sroa_idx, align 8
  %.sroa.15.24..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %spec.select, ptr %.sroa.15.24..sroa_idx, align 8
  %.sroa.17.24..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %.sroa.17.24..sroa_idx, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %i.bt, ptr %i.bw, align 8, !tbaa !404
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.0.019, ptr %i.bx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.5.016, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %i.bs, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 81
  store <39 x i8> <i8 undef, i8 undef, i8 undef, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, ptr %.sroa.8.0..sroa_idx, align 1
  ret void
}

declare noundef zeroext i1 @_Z20pull_have_constraintRK6pull_t(ptr noundef nonnull align 1) local_unnamed_addr #4

declare void @_Z17clear_pull_forcesP6pull_t(ptr noundef) local_unnamed_addr #4

declare void @_Z7calc_muiiN3gmx8ArrayRefIKNS_11BasicVectorIfEEEENS0_IKfEES6_bPdS7_(i32 noundef, i32 noundef, ptr, ptr, ptr, ptr, ptr noundef byval(%"class.gmx::ArrayRef.0") align 8, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_Z14reset_enerdataP14gmx_enerdata_t(ptr noundef) local_unnamed_addr #4

declare void @_Z19dd_force_flop_startP12gmx_domdec_tP6t_nrnb(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_Z11do_rotationRKN3gmx7MpiCommEPK12gmx_domdec_tP10gmx_enfrotPA3_KfNS_8ArrayRefIKNS_11BasicVectorIfEEEEflb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr, ptr, float noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN3gmx18nonbonded_verlet_t28dispatchFreeEnergyCpuKernelsERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEPNS_20ForceWithShiftForcesEbiRK19interaction_const_tNS_8ArrayRefIS4_EENSD_IKfEESG_SG_SG_NSD_IKiEESI_SG_P14gmx_enerdata_tRKNS_12StepWorkloadEP6t_nrnb(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef nonnull align 8 dereferenceable(137), ptr noundef byval(%"class.gmx::ArrayRef.120") align 8, ptr noundef byval(%"class.gmx::ArrayRef.0") align 8, ptr noundef byval(%"class.gmx::ArrayRef.0") align 8, ptr noundef byval(%"class.gmx::ArrayRef.0") align 8, ptr noundef byval(%"class.gmx::ArrayRef.0") align 8, ptr noundef byval(%"class.gmx::ArrayRef.649") align 8, ptr noundef byval(%"class.gmx::ArrayRef.649") align 8, ptr noundef byval(%"class.gmx::ArrayRef.0") align 8, ptr noundef, ptr noundef nonnull align 1 dereferenceable(19), ptr noundef) local_unnamed_addr #4

declare void @_ZN3gmx18nonbonded_verlet_t24atomdata_add_nbat_f_to_fENS_12AtomLocalityENS_8ArrayRefINS_11BasicVectorIfEEEE(ptr noundef nonnull align 8 dereferenceable(65), i32 noundef, ptr, ptr) local_unnamed_addr #4

declare void @_ZN3gmx40nbnxn_atomdata_add_nbat_fshift_to_fshiftERKNS_16nbnxn_atomdata_tENS_8ArrayRefINS_11BasicVectorIfEEEE(ptr noundef nonnull align 8 dereferenceable(656), ptr, ptr) local_unnamed_addr #4

declare noundef float @_Z8do_wallsRK10t_inputrecRK10t_forcerecPA3_KfN3gmx8ArrayRefIKiEESB_NS9_IKtEEiiNS9_IKNS8_11BasicVectorIfEEEEPNS8_15ForceWithVirialEfNS9_IfEEP6t_nrnb(ptr noundef nonnull align 8 dereferenceable(888), ptr noundef nonnull align 8 dereferenceable(584), ptr noundef, ptr, ptr, ptr noundef byval(%"class.gmx::ArrayRef.649") align 8, ptr noundef byval(%"class.gmx::ArrayRef.669") align 8, i32 noundef, i32 noundef, ptr noundef byval(%"class.gmx::ArrayRef.120") align 8, ptr noundef, float noundef, ptr noundef byval(%"class.gmx::ArrayRef.399") align 8, ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK12ListedForces19haveCpuListedForcesERK8t_fcdata(ptr noundef nonnull align 8 dereferenceable(2880), ptr noundef nonnull align 1) local_unnamed_addr #4

declare noundef ptr @_Z10set_pbc_ddP5t_pbc7PbcTypePKN3gmx11BasicVectorIiEEbPA3_Kf(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

declare void @_ZN12ListedForces9calculateEP13gmx_wallcyclePA3_KfN3gmx19ArrayRefWithPaddingIKNS5_11BasicVectorIfEEEENS5_8ArrayRefIS9_EEP8t_fcdataPK9history_tPNS5_12ForceOutputsEPK10t_forcerecPK5t_pbcP14gmx_enerdata_tP6t_nrnbNSB_IS2_EESU_SU_NSB_IKbEENSB_IKtEEiPiRKNS5_12StepWorkloadE(ptr noundef nonnull align 8 dereferenceable(2880), ptr noundef, ptr noundef, ptr noundef align 8 dead_on_return, ptr, ptr, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef byval(%"class.gmx::ArrayRef.0") align 8, ptr noundef byval(%"class.gmx::ArrayRef.0") align 8, ptr noundef byval(%"class.gmx::ArrayRef.0") align 8, ptr noundef byval(%"class.gmx::ArrayRef.702") align 8, ptr noundef byval(%"class.gmx::ArrayRef.669") align 8, i32 noundef, ptr noundef, ptr noundef nonnull align 1 dereferenceable(19)) local_unnamed_addr #4

declare { ptr, ptr } @_ZN3gmx17makeConstArrayRefERKSt6vectorINS_8BoolTypeESaIS1_EE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN24CpuPpLongRangeNonbondeds9calculateEP9gmx_pme_tPK9t_commrecN3gmx8ArrayRefIKNS5_11BasicVectorIfEEEEPNS5_15ForceWithVirialEP14gmx_enerdata_tPA3_KfNS6_ISF_EESA_RKNS5_12StepWorkloadERK22DDBalanceRegionHandler(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef, ptr noundef, ptr, ptr, ptr noundef, ptr noundef, ptr noundef, ptr noundef byval(%"class.gmx::ArrayRef.0") align 8, ptr noundef byval(%"class.gmx::ArrayRef.120") align 8, ptr noundef nonnull align 1 dereferenceable(19), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare { <2 x float>, <2 x float> } @_ZNK20DispersionCorrection9calculateEPA3_Kff(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, float noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK3gmx3Awh21hasFepLambdaDimensionEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3gmxL19pmeGpuWaitAndReduceEP9gmx_pme_tRKNS_12StepWorkloadEP13gmx_wallcyclePNS_15ForceWithVirialEP14gmx_enerdata_tf(ptr noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %0)
  %i.b = tail call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !232 ; 2 uses
  %i.c = extractvalue { i32, i32 } %i.b, 0
  %i.d = extractvalue { i32, i32 } %i.b, 1
  %i.e = zext i32 %i.c to i64
  %i.f = zext i32 %i.d to i64
  %i.g = shl nuw i64 %i.f, 32
  %i.h = or disjoint i64 %i.g, %i.e               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  store i64 %i.h, ptr %i.j, align 8, !tbaa !233
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2584 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !236  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2592 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !236
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2608 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !238
  %i.r = add nsw i32 %i.q, 1                      ; 2 uses
  store i32 %i.r, ptr %i.p, align 8, !tbaa !238
  %i.s = icmp eq i32 %i.r, 3
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2612
  %i.u = load i32, ptr %i.t, align 4, !tbaa !255
  %i.v = mul nsw i32 %i.u, 60
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr [24 x i8], ptr %i.l, i64 %i.w ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 456      ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !256
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !256
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2616
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !257
  %i.ad = sub i64 %i.h, %i.ac
  %i.ae = getelementptr i8, ptr %i.x, i64 464     ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !258
  %i.ag = add i64 %i.ad, %i.af
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !258
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ah = load i32, ptr %i.i, align 8, !tbaa !256
  %i.ai = add nsw i32 %i.ah, -1
  store i32 %i.ai, ptr %i.i, align 8, !tbaa !256
  tail call void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %0)
  %i.aj = tail call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !232 ; 2 uses
  %i.ak = extractvalue { i32, i32 } %i.aj, 0
  %i.al = extractvalue { i32, i32 } %i.aj, 1
  %i.am = zext i32 %i.ak to i64
  %i.an = zext i32 %i.al to i64
  %i.ao = shl nuw i64 %i.an, 32
  %i.ap = or disjoint i64 %i.ao, %i.am            ; 3 uses
  %i.aq = load i64, ptr %i.j, align 8, !tbaa !233 ; 2 uses
  %.not.i = icmp ult i64 %i.ap, %i.aq
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = sub nuw i64 %i.ap, %i.aq
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2624
  store i8 1, ptr %i.as, align 8, !tbaa !266
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i = phi i64 [ %i.ar, %bb.f ], [ 0, %bb.g ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !258
  %i.av = add i64 %i.au, %.0.i
  store i64 %i.av, ptr %i.at, align 8, !tbaa !258
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !256
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.i, align 8, !tbaa !256
  %i.ay = load ptr, ptr %i.k, align 8, !tbaa !236
  %i.az = load ptr, ptr %i.m, align 8, !tbaa !236
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2608 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !238
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !238
  %i.be = icmp eq i32 %i.bd, 2
  br i1 %i.be, label %bb.j, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 2612
  store i32 19, ptr %i.bf, align 4, !tbaa !255
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 2616
  store i64 %i.ap, ptr %i.bg, align 8, !tbaa !257
  br label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit

_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit: ; preds = %bb.a, %bb.h, %bb.i, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3gmxL22pme_receive_force_enerEP10t_forcerecP12gmx_domdec_tPNS_15ForceWithVirialEP14gmx_enerdata_tbbP13gmx_wallcycle(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef nonnull %2, ptr nofree noundef captures(none) %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %6) unnamed_addr #8 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.f = icmp eq ptr %6, null                     ; 2 uses
  br i1 %i.f, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit.thread, label %bb.b

_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit.thread: ; preds = %bb.a
  tail call void @_Z13dd_cycles_addPK12gmx_domdec_tfi(ptr noundef %1, float noundef 0.000000e+00, i32 noundef 1)
  br label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %6)
  %i.g = tail call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !232 ; 2 uses
  %i.h = extractvalue { i32, i32 } %i.g, 0
  %i.i = extractvalue { i32, i32 } %i.g, 1
  %i.j = zext i32 %i.h to i64
  %i.k = zext i32 %i.i to i64
  %i.l = shl nuw i64 %i.k, 32
  %i.m = or disjoint i64 %i.l, %i.j               ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !233  ; 2 uses
  %.not.i = icmp ult i64 %i.m, %i.p
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = sub nuw i64 %i.m, %i.p
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 2624
  store i8 1, ptr %i.r, align 8, !tbaa !266
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i64 [ %i.q, %bb.c ], [ 0, %bb.d ]   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !258
  %i.u = add i64 %i.t, %.0.i
  store i64 %i.u, ptr %i.s, align 8, !tbaa !258
  %i.v = load i32, ptr %i.n, align 8, !tbaa !256
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.n, align 8, !tbaa !256
end_hunk_0

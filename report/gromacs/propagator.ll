Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/propagator?download=true
inline.NumInlined: 5754
inline.NumDeleted: 2455
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN3gmx10PropagatorILNS_16IntegrationStageE0EE21getElementPointerImplEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataEPNS_26FreeEnergyPerturbationDataEPNS_25GlobalCommunicationHelperEPNS_18ObservablesReducerERKNS_13PropagatorTagENS_8TimeStepE:bb.a
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE0EEESt14default_deleteIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i:              ; preds = %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i:             ; preds = %bb.f, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i3.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i3.i.i.i, label %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE0EEEEclEPS3_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !46
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #28
  br label %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE0EEEEclEPS3_.exit.i

_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE0EEEEclEPS3_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 200) #28
  br label %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE0EEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE0EEESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE0EEEEclEPS3_.exit.i
  %.val = load ptr, ptr %7, align 8, !tbaa !175   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.val11 = load i64, ptr %i.af, align 8, !tbaa !180 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !514)
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.ag, ptr %10, align 8, !tbaa !181, !alias.scope !514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !514
  store i64 %.val11, ptr %i.a, align 8, !tbaa !182, !noalias !514
  %i.ah = icmp ugt i64 %.val11, 15
  br i1 %i.ah, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE0EEESt14default_deleteIS3_EED2Ev.exit
  %i.ai = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ai, ptr %10, align 8, !tbaa !175, !alias.scope !514
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !182, !noalias !514
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !176, !alias.scope !514
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE0EEESt14default_deleteIS3_EED2Ev.exit
  %i.ak = phi ptr [ %i.ai, %.noexc.i.i.i ], [ %i.ag, %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE0EEESt14default_deleteIS3_EED2Ev.exit ] ; 2 uses
  switch i64 %.val11, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE0EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.al = load i8, ptr %.val, align 1, !tbaa !176, !noalias !514
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !176
  br label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE0EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr readonly align 1 %.val, i64 %.val11, i1 false)
  br label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE0EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit

_ZN3gmxL13getConnectionILNS_16IntegrationStageE0EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit: ; preds = %._crit_edge.i.i.i.i, %bb.h, %bb.i
  %i.am = load i64, ptr %i.a, align 8, !tbaa !182, !noalias !514 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !180, !alias.scope !514
  %i.ao = load ptr, ptr %10, align 8, !tbaa !175, !alias.scope !514
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ap, align 1, !tbaa !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !514
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.aq, i8 0, i64 288, i1 false), !alias.scope !514
  invoke void @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper18registerPropagatorENS_20PropagatorConnectionE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 %10)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZN3gmxL13getConnectionILNS_16IntegrationStageE0EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  call void @_ZN3gmx20PropagatorConnectionD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %10) #12
  ret ptr %i.i

bb.k:                                             ; preds = %_ZSt11make_uniqueIN3gmx10PropagatorILNS0_16IntegrationStageE0EEEJRNS0_8TimeStepERPNS0_19StatePropagatorDataERPNS0_7MDAtomsERP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE0EEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #12
  br label %common.resume

bb.l:                                             ; preds = %_ZN3gmxL13getConnectionILNS_16IntegrationStageE0EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20PropagatorConnectionD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %10) #12
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper12storeElementINS_10PropagatorILNS_16IntegrationStageE0EEEEEPT_St10unique_ptrIS5_St14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef align 8 %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.129", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !185    ; 4 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !38     ; 2 uses
  store i64 %i.b, ptr %2, align 8, !tbaa !38
  store ptr null, ptr %1, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !188  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !189
  %.not.i.i = icmp eq ptr %i.d, %i.f
  %i.g = inttoptr i64 %i.b to ptr                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !38
  store ptr %i.g, ptr %i.d, align 8, !tbaa !192
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !188
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE0EEES3_ISB_EEEEERS5_DpOT_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !193  ; 9 uses
  %i.k = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.83) #26
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %bb.d
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i, %i.o  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i3 = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i3)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #29
          to label %.noexc5 unwind label %bb.f    ; 9 uses

.noexc5:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store ptr null, ptr %2, align 8, !tbaa !38
  store ptr %i.g, ptr %i.v, align 8, !tbaa !192
  %.not10.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %iter.check

iter.check:                                       ; preds = %.noexc5
  %i.w = add i64 %i.k, -8
  %i.x = sub i64 %i.w, %i.l                       ; 3 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.x, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp ult i64 %i.x, 120
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %i.z, 12
  %n.vec = and i64 %i.z, 4611686018427387888      ; 4 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.j, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ae ; 4 uses
  %next.gep14 = getelementptr i8, ptr %i.j, i64 %i.ae ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.af = getelementptr i8, ptr %next.gep14, i64 32 ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep14, i64 64 ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep14, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %next.gep14, align 8, !tbaa !194, !alias.scope !522
  %wide.load15 = load <4 x i64>, ptr %i.af, align 8, !tbaa !194, !alias.scope !522
  %wide.load16 = load <4 x i64>, ptr %i.ag, align 8, !tbaa !194, !alias.scope !522
  %wide.load17 = load <4 x i64>, ptr %i.ah, align 8, !tbaa !194, !alias.scope !522
  %i.ai = getelementptr i8, ptr %next.gep, i64 32
  %i.aj = getelementptr i8, ptr %next.gep, i64 64
  %i.ak = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !194, !alias.scope !521
  store <4 x i64> %wide.load15, ptr %i.ai, align 8, !tbaa !194, !alias.scope !521
  store <4 x i64> %wide.load16, ptr %i.aj, align 8, !tbaa !194, !alias.scope !521
  store <4 x i64> %wide.load17, ptr %i.ak, align 8, !tbaa !194, !alias.scope !521
  store <4 x ptr> splat (ptr null), ptr %next.gep14, align 8, !tbaa !194, !alias.scope !522
  store <4 x ptr> splat (ptr null), ptr %i.af, align 8, !tbaa !194, !alias.scope !522
  store <4 x ptr> splat (ptr null), ptr %i.ag, align 8, !tbaa !194, !alias.scope !522
  store <4 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !194, !alias.scope !522
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !518

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !195

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %i.z, 4611686018427387900    ; 3 uses
  %i.am = shl i64 %n.vec18, 3                     ; 2 uses
  %i.an = getelementptr i8, ptr %i.u, i64 %i.am   ; 2 uses
  %i.ao = getelementptr i8, ptr %i.j, i64 %i.am
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 2 uses
  %i.ap = shl i64 %index19, 3                     ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.u, i64 %i.ap
  %next.gep21 = getelementptr i8, ptr %i.j, i64 %i.ap ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %wide.load22 = load <4 x i64>, ptr %next.gep21, align 8, !tbaa !194, !alias.scope !522
  store <4 x i64> %wide.load22, ptr %next.gep20, align 8, !tbaa !194, !alias.scope !521
  store <4 x ptr> splat (ptr null), ptr %next.gep21, align 8, !tbaa !194, !alias.scope !522
  %index.next23 = add nuw i64 %index19, 4         ; 2 uses
  %i.aq = icmp eq i64 %index.next23, %n.vec18
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !519

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %i.z, %n.vec18
  br i1 %cmp.n24, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.j, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.ar = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !194, !alias.scope !522
  store i64 %i.ar, ptr %.012.i.i.i.i, align 8, !tbaa !194, !alias.scope !521
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !194, !alias.scope !522
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !520

_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc5
  %.0.lcssa.i.i.i.i = phi ptr [ %i.u, %.noexc5 ], [ %i.an, %vec.epilog.middle.block ], [ %i.ac, %middle.block ], [ %i.at, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i, label %.noexc, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ax) #28
  br label %.noexc

.noexc:                                           ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.u, ptr %i.i, align 8, !tbaa !193
  store ptr %i.au, ptr %i.c, align 8, !tbaa !188
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ay, ptr %i.e, align 8, !tbaa !189
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE0EEES3_ISB_EEEEERS5_DpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE0EEES3_ISB_EEEEERS5_DpOT_.exit.i: ; preds = %.noexc, %bb.b
  %i.az = phi ptr [ %i.d, %bb.b ], [ %.0.lcssa.i.i.i.i, %.noexc ]
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !194 ; 2 uses
  invoke void @_ZN3gmx32ModularSimulatorAlgorithmBuilder23registerExistingElementINS_10PropagatorILNS_16IntegrationStageE0EEEEEvPT_(ptr noundef nonnull align 8 dereferenceable(712) %i.a, ptr noundef %i.ba)
          to label %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE0EEESt14default_deleteIS3_EED2Ev.exit unwind label %bb.f

_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE0EEESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE0EEES3_ISB_EEEEERS5_DpOT_.exit.i
  ret ptr %i.ba

bb.f:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.d, %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE0EEES3_ISB_EEEEERS5_DpOT_.exit.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE0EEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #12
  resume { ptr, i32 } %i.bb
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE0EEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !38     ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i:                ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i:               ; preds = %bb.d, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i3.i.i, label %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE0EEEEclEPS3_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #28
  br label %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE0EEEEclEPS3_.exit

_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE0EEEEclEPS3_.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 200) #28
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE0EEEEclEPS3_.exit, %bb.a
  ret void
}

declare void @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper18registerPropagatorENS_20PropagatorConnectionE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx20PropagatorConnectionD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42   ; 2 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZNSt14_Function_baseD2Ev.exit2, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.j = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2 unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit2:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !42   ; 2 uses
  %.not.i3 = icmp eq ptr %i.n, null
  br i1 %.not.i3, label %_ZNSt14_Function_baseD2Ev.exit4, label %bb.f

bb.f:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3gmx10PropagatorILNS_16IntegrationStageE1EE21getElementPointerImplEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataEPNS_26FreeEnergyPerturbationDataEPNS_25GlobalCommunicationHelperEPNS_18ObservablesReducerERKNS_13PropagatorTagENS_8TimeStepE:bb.a
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #28
  br label %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE1EEEEclEPS3_.exit.i

_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE1EEEEclEPS3_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 200) #28
  br label %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE1EEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE1EEESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE1EEEEclEPS3_.exit.i
  %.val = load ptr, ptr %7, align 8, !tbaa !175   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.val11 = load i64, ptr %i.af, align 8, !tbaa !180 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !886)
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.ag, ptr %10, align 8, !tbaa !181, !alias.scope !886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !886
  store i64 %.val11, ptr %i.a, align 8, !tbaa !182, !noalias !886
  %i.ah = icmp ugt i64 %.val11, 15
  br i1 %i.ah, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE1EEESt14default_deleteIS3_EED2Ev.exit
  %i.ai = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ai, ptr %10, align 8, !tbaa !175, !alias.scope !886
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !182, !noalias !886
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !176, !alias.scope !886
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE1EEESt14default_deleteIS3_EED2Ev.exit
  %i.ak = phi ptr [ %i.ai, %.noexc.i.i.i ], [ %i.ag, %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE1EEESt14default_deleteIS3_EED2Ev.exit ] ; 2 uses
  switch i64 %.val11, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE1EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.al = load i8, ptr %.val, align 1, !tbaa !176, !noalias !886
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !176
  br label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE1EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr readonly align 1 %.val, i64 %.val11, i1 false)
  br label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE1EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit

_ZN3gmxL13getConnectionILNS_16IntegrationStageE1EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit: ; preds = %._crit_edge.i.i.i.i, %bb.h, %bb.i
  %i.am = load i64, ptr %i.a, align 8, !tbaa !182, !noalias !886 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !180, !alias.scope !886
  %i.ao = load ptr, ptr %10, align 8, !tbaa !175, !alias.scope !886
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ap, align 1, !tbaa !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !886
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 192
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 256
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 288
  %i.aw = ptrtoint ptr %i.i to i64                ; 6 uses
  store i64 %i.aw, ptr %i.aq, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ax, i8 0, i64 192, i1 false), !alias.scope !886
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr @_ZNSt17_Function_handlerIFviN3gmx15ScaleVelocitiesEEZNS0_L13getConnectionILNS0_16IntegrationStageE1EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUliS1_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation, ptr %i.ay, align 8, !tbaa !95, !alias.scope !886
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr @_ZNSt17_Function_handlerIFviN3gmx15ScaleVelocitiesEEZNS0_L13getConnectionILNS0_16IntegrationStageE1EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUliS1_E_E9_M_invokeERKSt9_Any_dataOiOS1_, ptr %i.az, align 8, !tbaa !95, !alias.scope !886
  store i64 %i.aw, ptr %i.at, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 208
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE1EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, ptr %i.ba, align 8, !tbaa !95, !alias.scope !886
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 216
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE1EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.bb, align 8, !tbaa !95, !alias.scope !886
  store i64 %i.aw, ptr %i.ar, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 112
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE1EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE0_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.bc, align 8, !tbaa !95, !alias.scope !886
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 120
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE1EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE0_E9_M_invokeERKSt9_Any_data, ptr %i.bd, align 8, !tbaa !95, !alias.scope !886
  store i64 %i.aw, ptr %i.as, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 144
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE1EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE1_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.be, align 8, !tbaa !95, !alias.scope !886
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 152
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE1EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE1_E9_M_invokeERKSt9_Any_data, ptr %i.bf, align 8, !tbaa !95, !alias.scope !886
  store i64 %i.aw, ptr %i.au, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 264
  store i64 0, ptr %.sroa.423.0..sroa_idx, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 272
  store ptr @_ZNSt17_Function_handlerIFPN3gmx14BasicMatrix3x3IfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE1EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE2_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, ptr %i.bg, align 8, !tbaa !95, !alias.scope !886
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 280
  store ptr @_ZNSt17_Function_handlerIFPN3gmx14BasicMatrix3x3IfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE1EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE2_E9_M_invokeERKSt9_Any_data, ptr %i.bh, align 8, !tbaa !95, !alias.scope !886
  store i64 %i.aw, ptr %i.av, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 296
  store i64 0, ptr %.sroa.426.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 304
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE1EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE3_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, ptr %i.bi, align 8, !tbaa !95, !alias.scope !886
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 312
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE1EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE3_E9_M_invokeERKSt9_Any_data, ptr %i.bj, align 8, !tbaa !95, !alias.scope !886
  invoke void @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper18registerPropagatorENS_20PropagatorConnectionE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 %10)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZN3gmxL13getConnectionILNS_16IntegrationStageE1EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  call void @_ZN3gmx20PropagatorConnectionD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %10) #12
  ret ptr %i.i

bb.k:                                             ; preds = %_ZSt11make_uniqueIN3gmx10PropagatorILNS0_16IntegrationStageE1EEEJRNS0_8TimeStepERPNS0_19StatePropagatorDataERPNS0_7MDAtomsERP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE1EEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #12
  br label %common.resume

bb.l:                                             ; preds = %_ZN3gmxL13getConnectionILNS_16IntegrationStageE1EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20PropagatorConnectionD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %10) #12
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper12storeElementINS_10PropagatorILNS_16IntegrationStageE1EEEEEPT_St10unique_ptrIS5_St14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef align 8 %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.368", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !185    ; 4 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !52     ; 2 uses
  store i64 %i.b, ptr %2, align 8, !tbaa !52
  store ptr null, ptr %1, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !188  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !189
  %.not.i.i = icmp eq ptr %i.d, %i.f
  %i.g = inttoptr i64 %i.b to ptr                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !52
  store ptr %i.g, ptr %i.d, align 8, !tbaa !192
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !188
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE1EEES3_ISB_EEEEERS5_DpOT_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !193  ; 9 uses
  %i.k = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.83) #26
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %bb.d
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i, %i.o  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i3 = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i3)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #29
          to label %.noexc5 unwind label %bb.f    ; 9 uses

.noexc5:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store ptr null, ptr %2, align 8, !tbaa !52
  store ptr %i.g, ptr %i.v, align 8, !tbaa !192
  %.not10.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %iter.check

iter.check:                                       ; preds = %.noexc5
  %i.w = add i64 %i.k, -8
  %i.x = sub i64 %i.w, %i.l                       ; 3 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.x, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp ult i64 %i.x, 120
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %i.z, 12
  %n.vec = and i64 %i.z, 4611686018427387888      ; 4 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.j, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ae ; 4 uses
  %next.gep14 = getelementptr i8, ptr %i.j, i64 %i.ae ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  %i.af = getelementptr i8, ptr %next.gep14, i64 32 ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep14, i64 64 ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep14, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %next.gep14, align 8, !tbaa !194, !alias.scope !894
  %wide.load15 = load <4 x i64>, ptr %i.af, align 8, !tbaa !194, !alias.scope !894
  %wide.load16 = load <4 x i64>, ptr %i.ag, align 8, !tbaa !194, !alias.scope !894
  %wide.load17 = load <4 x i64>, ptr %i.ah, align 8, !tbaa !194, !alias.scope !894
  %i.ai = getelementptr i8, ptr %next.gep, i64 32
  %i.aj = getelementptr i8, ptr %next.gep, i64 64
  %i.ak = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !194, !alias.scope !893
  store <4 x i64> %wide.load15, ptr %i.ai, align 8, !tbaa !194, !alias.scope !893
  store <4 x i64> %wide.load16, ptr %i.aj, align 8, !tbaa !194, !alias.scope !893
  store <4 x i64> %wide.load17, ptr %i.ak, align 8, !tbaa !194, !alias.scope !893
  store <4 x ptr> splat (ptr null), ptr %next.gep14, align 8, !tbaa !194, !alias.scope !894
  store <4 x ptr> splat (ptr null), ptr %i.af, align 8, !tbaa !194, !alias.scope !894
  store <4 x ptr> splat (ptr null), ptr %i.ag, align 8, !tbaa !194, !alias.scope !894
  store <4 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !194, !alias.scope !894
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !890

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !195

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %i.z, 4611686018427387900    ; 3 uses
  %i.am = shl i64 %n.vec18, 3                     ; 2 uses
  %i.an = getelementptr i8, ptr %i.u, i64 %i.am   ; 2 uses
  %i.ao = getelementptr i8, ptr %i.j, i64 %i.am
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 2 uses
  %i.ap = shl i64 %index19, 3                     ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.u, i64 %i.ap
  %next.gep21 = getelementptr i8, ptr %i.j, i64 %i.ap ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  %wide.load22 = load <4 x i64>, ptr %next.gep21, align 8, !tbaa !194, !alias.scope !894
  store <4 x i64> %wide.load22, ptr %next.gep20, align 8, !tbaa !194, !alias.scope !893
  store <4 x ptr> splat (ptr null), ptr %next.gep21, align 8, !tbaa !194, !alias.scope !894
  %index.next23 = add nuw i64 %index19, 4         ; 2 uses
  %i.aq = icmp eq i64 %index.next23, %n.vec18
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !891

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %i.z, %n.vec18
  br i1 %cmp.n24, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.j, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  %i.ar = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !194, !alias.scope !894
  store i64 %i.ar, ptr %.012.i.i.i.i, align 8, !tbaa !194, !alias.scope !893
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !194, !alias.scope !894
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !892

_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc5
  %.0.lcssa.i.i.i.i = phi ptr [ %i.u, %.noexc5 ], [ %i.an, %vec.epilog.middle.block ], [ %i.ac, %middle.block ], [ %i.at, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i, label %.noexc, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ax) #28
  br label %.noexc

.noexc:                                           ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.u, ptr %i.i, align 8, !tbaa !193
  store ptr %i.au, ptr %i.c, align 8, !tbaa !188
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ay, ptr %i.e, align 8, !tbaa !189
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE1EEES3_ISB_EEEEERS5_DpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE1EEES3_ISB_EEEEERS5_DpOT_.exit.i: ; preds = %.noexc, %bb.b
  %i.az = phi ptr [ %i.d, %bb.b ], [ %.0.lcssa.i.i.i.i, %.noexc ]
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !194 ; 2 uses
  invoke void @_ZN3gmx32ModularSimulatorAlgorithmBuilder23registerExistingElementINS_10PropagatorILNS_16IntegrationStageE1EEEEEvPT_(ptr noundef nonnull align 8 dereferenceable(712) %i.a, ptr noundef %i.ba)
          to label %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE1EEESt14default_deleteIS3_EED2Ev.exit unwind label %bb.f

_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE1EEESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE1EEES3_ISB_EEEEERS5_DpOT_.exit.i
  ret ptr %i.ba

bb.f:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.d, %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE1EEES3_ISB_EEEEERS5_DpOT_.exit.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE1EEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #12
  resume { ptr, i32 } %i.bb
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE1EEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !52     ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i:                ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i:               ; preds = %bb.d, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i3.i.i, label %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE1EEEEclEPS3_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #28
  br label %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE1EEEEclEPS3_.exit

_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE1EEEEclEPS3_.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 200) #28
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE1EEEEclEPS3_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx32ModularSimulatorAlgorithmBuilder23registerExistingElementINS_10PropagatorILNS_16IntegrationStageE1EEEEEvPT_(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::ElementNotFoundError", align 8 ; 4 uses
  %3 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %4 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = tail call noundef zeroext i1 @_ZNK3gmx32ModularSimulatorAlgorithmBuilder13elementExistsEPKNS_17ISimulatorElementE(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef %1)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 24) #12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull @.str.84)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.d unwind label %.thread15

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx20ElementNotFoundErrorE, i64 16), ptr %2, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %4, align 8, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx32ModularSimulatorAlgorithmBuilder23registerExistingElementINS_10PropagatorILNS_16IntegrationStageE1EEEEEvPT_, ptr %i.c, align 8, !tbaa !196
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.85, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !196
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 735, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !129
  invoke void @_ZN3gmxlsINS_20ElementNotFoundErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::ElementNotFoundError") align 8 %i.b, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr %i.b, ptr nonnull @_ZTIN3gmx20ElementNotFoundErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #26
          to label %bb.o unwind label %bb.f

.thread:                                          ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread15:                                        ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #12
  br label %.sink.split

bb.f:                                             ; preds = %bb.d, %bb.e
end_hunk_1
begin_hunk_2_@_ZN3gmx10PropagatorILNS_16IntegrationStageE2EE21getElementPointerImplEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataEPNS_26FreeEnergyPerturbationDataEPNS_25GlobalCommunicationHelperEPNS_18ObservablesReducerERKNS_13PropagatorTagENS_8TimeStepE:bb.a
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #28
  br label %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE2EEEEclEPS3_.exit.i

_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE2EEEEclEPS3_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 200) #28
  br label %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE2EEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE2EEESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE2EEEEclEPS3_.exit.i
  %.val = load ptr, ptr %7, align 8, !tbaa !175   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.val11 = load i64, ptr %i.af, align 8, !tbaa !180 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1291)
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.ag, ptr %10, align 8, !tbaa !181, !alias.scope !1291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !1291
  store i64 %.val11, ptr %i.a, align 8, !tbaa !182, !noalias !1291
  %i.ah = icmp ugt i64 %.val11, 15
  br i1 %i.ah, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE2EEESt14default_deleteIS3_EED2Ev.exit
  %i.ai = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ai, ptr %10, align 8, !tbaa !175, !alias.scope !1291
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !182, !noalias !1291
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !176, !alias.scope !1291
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE2EEESt14default_deleteIS3_EED2Ev.exit
  %i.ak = phi ptr [ %i.ai, %.noexc.i.i.i ], [ %i.ag, %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE2EEESt14default_deleteIS3_EED2Ev.exit ] ; 2 uses
  switch i64 %.val11, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE2EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.al = load i8, ptr %.val, align 1, !tbaa !176, !noalias !1291
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !176
  br label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE2EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr readonly align 1 %.val, i64 %.val11, i1 false)
  br label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE2EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit

_ZN3gmxL13getConnectionILNS_16IntegrationStageE2EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit: ; preds = %._crit_edge.i.i.i.i, %bb.h, %bb.i
  %i.am = load i64, ptr %i.a, align 8, !tbaa !182, !noalias !1291 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !180, !alias.scope !1291
  %i.ao = load ptr, ptr %10, align 8, !tbaa !175, !alias.scope !1291
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ap, align 1, !tbaa !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !1291
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 192
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 256
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 288
  %i.aw = ptrtoint ptr %i.i to i64                ; 6 uses
  store i64 %i.aw, ptr %i.aq, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ax, i8 0, i64 192, i1 false), !alias.scope !1291
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr @_ZNSt17_Function_handlerIFviN3gmx15ScaleVelocitiesEEZNS0_L13getConnectionILNS0_16IntegrationStageE2EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUliS1_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation, ptr %i.ay, align 8, !tbaa !95, !alias.scope !1291
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr @_ZNSt17_Function_handlerIFviN3gmx15ScaleVelocitiesEEZNS0_L13getConnectionILNS0_16IntegrationStageE2EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUliS1_E_E9_M_invokeERKSt9_Any_dataOiOS1_, ptr %i.az, align 8, !tbaa !95, !alias.scope !1291
  store i64 %i.aw, ptr %i.at, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 208
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE2EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, ptr %i.ba, align 8, !tbaa !95, !alias.scope !1291
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 216
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE2EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.bb, align 8, !tbaa !95, !alias.scope !1291
  store i64 %i.aw, ptr %i.ar, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 112
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE2EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE0_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.bc, align 8, !tbaa !95, !alias.scope !1291
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 120
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE2EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE0_E9_M_invokeERKSt9_Any_data, ptr %i.bd, align 8, !tbaa !95, !alias.scope !1291
  store i64 %i.aw, ptr %i.as, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 144
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE2EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE1_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.be, align 8, !tbaa !95, !alias.scope !1291
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 152
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE2EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE1_E9_M_invokeERKSt9_Any_data, ptr %i.bf, align 8, !tbaa !95, !alias.scope !1291
  store i64 %i.aw, ptr %i.au, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 264
  store i64 0, ptr %.sroa.423.0..sroa_idx, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 272
  store ptr @_ZNSt17_Function_handlerIFPN3gmx14BasicMatrix3x3IfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE2EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE2_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, ptr %i.bg, align 8, !tbaa !95, !alias.scope !1291
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 280
  store ptr @_ZNSt17_Function_handlerIFPN3gmx14BasicMatrix3x3IfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE2EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE2_E9_M_invokeERKSt9_Any_data, ptr %i.bh, align 8, !tbaa !95, !alias.scope !1291
  store i64 %i.aw, ptr %i.av, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 296
  store i64 0, ptr %.sroa.426.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 304
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE2EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE3_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, ptr %i.bi, align 8, !tbaa !95, !alias.scope !1291
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 312
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE2EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE3_E9_M_invokeERKSt9_Any_data, ptr %i.bj, align 8, !tbaa !95, !alias.scope !1291
  invoke void @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper18registerPropagatorENS_20PropagatorConnectionE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 %10)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZN3gmxL13getConnectionILNS_16IntegrationStageE2EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  call void @_ZN3gmx20PropagatorConnectionD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %10) #12
  ret ptr %i.i

bb.k:                                             ; preds = %_ZSt11make_uniqueIN3gmx10PropagatorILNS0_16IntegrationStageE2EEEJRNS0_8TimeStepERPNS0_19StatePropagatorDataERPNS0_7MDAtomsERP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE2EEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #12
  br label %common.resume

bb.l:                                             ; preds = %_ZN3gmxL13getConnectionILNS_16IntegrationStageE2EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20PropagatorConnectionD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %10) #12
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper12storeElementINS_10PropagatorILNS_16IntegrationStageE2EEEEEPT_St10unique_ptrIS5_St14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef align 8 %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.416", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !185    ; 4 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !60     ; 2 uses
  store i64 %i.b, ptr %2, align 8, !tbaa !60
  store ptr null, ptr %1, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !188  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !189
  %.not.i.i = icmp eq ptr %i.d, %i.f
  %i.g = inttoptr i64 %i.b to ptr                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !60
  store ptr %i.g, ptr %i.d, align 8, !tbaa !192
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !188
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE2EEES3_ISB_EEEEERS5_DpOT_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !193  ; 9 uses
  %i.k = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.83) #26
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %bb.d
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i, %i.o  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i3 = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i3)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #29
          to label %.noexc5 unwind label %bb.f    ; 9 uses

.noexc5:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store ptr null, ptr %2, align 8, !tbaa !60
  store ptr %i.g, ptr %i.v, align 8, !tbaa !192
  %.not10.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %iter.check

iter.check:                                       ; preds = %.noexc5
  %i.w = add i64 %i.k, -8
  %i.x = sub i64 %i.w, %i.l                       ; 3 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.x, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp ult i64 %i.x, 120
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %i.z, 12
  %n.vec = and i64 %i.z, 4611686018427387888      ; 4 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.j, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ae ; 4 uses
  %next.gep14 = getelementptr i8, ptr %i.j, i64 %i.ae ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  %i.af = getelementptr i8, ptr %next.gep14, i64 32 ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep14, i64 64 ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep14, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %next.gep14, align 8, !tbaa !194, !alias.scope !1299
  %wide.load15 = load <4 x i64>, ptr %i.af, align 8, !tbaa !194, !alias.scope !1299
  %wide.load16 = load <4 x i64>, ptr %i.ag, align 8, !tbaa !194, !alias.scope !1299
  %wide.load17 = load <4 x i64>, ptr %i.ah, align 8, !tbaa !194, !alias.scope !1299
  %i.ai = getelementptr i8, ptr %next.gep, i64 32
  %i.aj = getelementptr i8, ptr %next.gep, i64 64
  %i.ak = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !194, !alias.scope !1298
  store <4 x i64> %wide.load15, ptr %i.ai, align 8, !tbaa !194, !alias.scope !1298
  store <4 x i64> %wide.load16, ptr %i.aj, align 8, !tbaa !194, !alias.scope !1298
  store <4 x i64> %wide.load17, ptr %i.ak, align 8, !tbaa !194, !alias.scope !1298
  store <4 x ptr> splat (ptr null), ptr %next.gep14, align 8, !tbaa !194, !alias.scope !1299
  store <4 x ptr> splat (ptr null), ptr %i.af, align 8, !tbaa !194, !alias.scope !1299
  store <4 x ptr> splat (ptr null), ptr %i.ag, align 8, !tbaa !194, !alias.scope !1299
  store <4 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !194, !alias.scope !1299
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !1295

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !195

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %i.z, 4611686018427387900    ; 3 uses
  %i.am = shl i64 %n.vec18, 3                     ; 2 uses
  %i.an = getelementptr i8, ptr %i.u, i64 %i.am   ; 2 uses
  %i.ao = getelementptr i8, ptr %i.j, i64 %i.am
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 2 uses
  %i.ap = shl i64 %index19, 3                     ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.u, i64 %i.ap
  %next.gep21 = getelementptr i8, ptr %i.j, i64 %i.ap ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  %wide.load22 = load <4 x i64>, ptr %next.gep21, align 8, !tbaa !194, !alias.scope !1299
  store <4 x i64> %wide.load22, ptr %next.gep20, align 8, !tbaa !194, !alias.scope !1298
  store <4 x ptr> splat (ptr null), ptr %next.gep21, align 8, !tbaa !194, !alias.scope !1299
  %index.next23 = add nuw i64 %index19, 4         ; 2 uses
  %i.aq = icmp eq i64 %index.next23, %n.vec18
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1296

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %i.z, %n.vec18
  br i1 %cmp.n24, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.j, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  %i.ar = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !194, !alias.scope !1299
  store i64 %i.ar, ptr %.012.i.i.i.i, align 8, !tbaa !194, !alias.scope !1298
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !194, !alias.scope !1299
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1297

_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc5
  %.0.lcssa.i.i.i.i = phi ptr [ %i.u, %.noexc5 ], [ %i.an, %vec.epilog.middle.block ], [ %i.ac, %middle.block ], [ %i.at, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i, label %.noexc, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ax) #28
  br label %.noexc

.noexc:                                           ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.u, ptr %i.i, align 8, !tbaa !193
  store ptr %i.au, ptr %i.c, align 8, !tbaa !188
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ay, ptr %i.e, align 8, !tbaa !189
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE2EEES3_ISB_EEEEERS5_DpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE2EEES3_ISB_EEEEERS5_DpOT_.exit.i: ; preds = %.noexc, %bb.b
  %i.az = phi ptr [ %i.d, %bb.b ], [ %.0.lcssa.i.i.i.i, %.noexc ]
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !194 ; 2 uses
  invoke void @_ZN3gmx32ModularSimulatorAlgorithmBuilder23registerExistingElementINS_10PropagatorILNS_16IntegrationStageE2EEEEEvPT_(ptr noundef nonnull align 8 dereferenceable(712) %i.a, ptr noundef %i.ba)
          to label %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE2EEESt14default_deleteIS3_EED2Ev.exit unwind label %bb.f

_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE2EEESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE2EEES3_ISB_EEEEERS5_DpOT_.exit.i
  ret ptr %i.ba

bb.f:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.d, %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE2EEES3_ISB_EEEEERS5_DpOT_.exit.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE2EEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #12
  resume { ptr, i32 } %i.bb
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE2EEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !60     ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i:                ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i:               ; preds = %bb.d, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i3.i.i, label %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE2EEEEclEPS3_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #28
  br label %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE2EEEEclEPS3_.exit

_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE2EEEEclEPS3_.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 200) #28
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE2EEEEclEPS3_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx32ModularSimulatorAlgorithmBuilder23registerExistingElementINS_10PropagatorILNS_16IntegrationStageE2EEEEEvPT_(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::ElementNotFoundError", align 8 ; 4 uses
  %3 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %4 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = tail call noundef zeroext i1 @_ZNK3gmx32ModularSimulatorAlgorithmBuilder13elementExistsEPKNS_17ISimulatorElementE(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef %1)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 24) #12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull @.str.84)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.d unwind label %.thread15

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx20ElementNotFoundErrorE, i64 16), ptr %2, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %4, align 8, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx32ModularSimulatorAlgorithmBuilder23registerExistingElementINS_10PropagatorILNS_16IntegrationStageE2EEEEEvPT_, ptr %i.c, align 8, !tbaa !196
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.85, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !196
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 735, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !129
  invoke void @_ZN3gmxlsINS_20ElementNotFoundErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::ElementNotFoundError") align 8 %i.b, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr %i.b, ptr nonnull @_ZTIN3gmx20ElementNotFoundErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #26
          to label %bb.o unwind label %bb.f

.thread:                                          ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread15:                                        ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #12
  br label %.sink.split

bb.f:                                             ; preds = %bb.d, %bb.e
end_hunk_2
begin_hunk_3_@_ZN3gmx10PropagatorILNS_16IntegrationStageE3EE21getElementPointerImplEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataEPNS_26FreeEnergyPerturbationDataEPNS_25GlobalCommunicationHelperEPNS_18ObservablesReducerERKNS_13PropagatorTagENS_8TimeStepE:bb.a
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #28
  br label %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE3EEEEclEPS3_.exit.i

_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE3EEEEclEPS3_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 200) #28
  br label %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE3EEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE3EEESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE3EEEEclEPS3_.exit.i
  %.val = load ptr, ptr %7, align 8, !tbaa !175   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.val11 = load i64, ptr %i.af, align 8, !tbaa !180 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1696)
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.ag, ptr %10, align 8, !tbaa !181, !alias.scope !1696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !1696
  store i64 %.val11, ptr %i.a, align 8, !tbaa !182, !noalias !1696
  %i.ah = icmp ugt i64 %.val11, 15
  br i1 %i.ah, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE3EEESt14default_deleteIS3_EED2Ev.exit
  %i.ai = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ai, ptr %10, align 8, !tbaa !175, !alias.scope !1696
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !182, !noalias !1696
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !176, !alias.scope !1696
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE3EEESt14default_deleteIS3_EED2Ev.exit
  %i.ak = phi ptr [ %i.ai, %.noexc.i.i.i ], [ %i.ag, %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE3EEESt14default_deleteIS3_EED2Ev.exit ] ; 2 uses
  switch i64 %.val11, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE3EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.al = load i8, ptr %.val, align 1, !tbaa !176, !noalias !1696
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !176
  br label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE3EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr readonly align 1 %.val, i64 %.val11, i1 false)
  br label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE3EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit

_ZN3gmxL13getConnectionILNS_16IntegrationStageE3EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit: ; preds = %._crit_edge.i.i.i.i, %bb.h, %bb.i
  %i.am = load i64, ptr %i.a, align 8, !tbaa !182, !noalias !1696 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !180, !alias.scope !1696
  %i.ao = load ptr, ptr %10, align 8, !tbaa !175, !alias.scope !1696
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ap, align 1, !tbaa !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !1696
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 192
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 256
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 288
  %i.aw = ptrtoint ptr %i.i to i64                ; 6 uses
  store i64 %i.aw, ptr %i.aq, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ax, i8 0, i64 192, i1 false), !alias.scope !1696
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr @_ZNSt17_Function_handlerIFviN3gmx15ScaleVelocitiesEEZNS0_L13getConnectionILNS0_16IntegrationStageE3EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUliS1_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation, ptr %i.ay, align 8, !tbaa !95, !alias.scope !1696
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr @_ZNSt17_Function_handlerIFviN3gmx15ScaleVelocitiesEEZNS0_L13getConnectionILNS0_16IntegrationStageE3EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUliS1_E_E9_M_invokeERKSt9_Any_dataOiOS1_, ptr %i.az, align 8, !tbaa !95, !alias.scope !1696
  store i64 %i.aw, ptr %i.at, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 208
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE3EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, ptr %i.ba, align 8, !tbaa !95, !alias.scope !1696
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 216
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE3EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.bb, align 8, !tbaa !95, !alias.scope !1696
  store i64 %i.aw, ptr %i.ar, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 112
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE3EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE0_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.bc, align 8, !tbaa !95, !alias.scope !1696
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 120
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE3EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE0_E9_M_invokeERKSt9_Any_data, ptr %i.bd, align 8, !tbaa !95, !alias.scope !1696
  store i64 %i.aw, ptr %i.as, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 144
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE3EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE1_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.be, align 8, !tbaa !95, !alias.scope !1696
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 152
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE3EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE1_E9_M_invokeERKSt9_Any_data, ptr %i.bf, align 8, !tbaa !95, !alias.scope !1696
  store i64 %i.aw, ptr %i.au, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 264
  store i64 0, ptr %.sroa.423.0..sroa_idx, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 272
  store ptr @_ZNSt17_Function_handlerIFPN3gmx14BasicMatrix3x3IfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE3EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE2_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, ptr %i.bg, align 8, !tbaa !95, !alias.scope !1696
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 280
  store ptr @_ZNSt17_Function_handlerIFPN3gmx14BasicMatrix3x3IfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE3EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE2_E9_M_invokeERKSt9_Any_data, ptr %i.bh, align 8, !tbaa !95, !alias.scope !1696
  store i64 %i.aw, ptr %i.av, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 296
  store i64 0, ptr %.sroa.426.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 304
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE3EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE3_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, ptr %i.bi, align 8, !tbaa !95, !alias.scope !1696
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 312
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE3EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE3_E9_M_invokeERKSt9_Any_data, ptr %i.bj, align 8, !tbaa !95, !alias.scope !1696
  invoke void @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper18registerPropagatorENS_20PropagatorConnectionE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 %10)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZN3gmxL13getConnectionILNS_16IntegrationStageE3EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  call void @_ZN3gmx20PropagatorConnectionD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %10) #12
  ret ptr %i.i

bb.k:                                             ; preds = %_ZSt11make_uniqueIN3gmx10PropagatorILNS0_16IntegrationStageE3EEEJRNS0_8TimeStepERPNS0_19StatePropagatorDataERPNS0_7MDAtomsERP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE3EEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #12
  br label %common.resume

bb.l:                                             ; preds = %_ZN3gmxL13getConnectionILNS_16IntegrationStageE3EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20PropagatorConnectionD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %10) #12
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper12storeElementINS_10PropagatorILNS_16IntegrationStageE3EEEEEPT_St10unique_ptrIS5_St14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef align 8 %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.464", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !185    ; 4 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !68     ; 2 uses
  store i64 %i.b, ptr %2, align 8, !tbaa !68
  store ptr null, ptr %1, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !188  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !189
  %.not.i.i = icmp eq ptr %i.d, %i.f
  %i.g = inttoptr i64 %i.b to ptr                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !68
  store ptr %i.g, ptr %i.d, align 8, !tbaa !192
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !188
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE3EEES3_ISB_EEEEERS5_DpOT_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !193  ; 9 uses
  %i.k = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.83) #26
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %bb.d
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i, %i.o  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i3 = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i3)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #29
          to label %.noexc5 unwind label %bb.f    ; 9 uses

.noexc5:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store ptr null, ptr %2, align 8, !tbaa !68
  store ptr %i.g, ptr %i.v, align 8, !tbaa !192
  %.not10.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %iter.check

iter.check:                                       ; preds = %.noexc5
  %i.w = add i64 %i.k, -8
  %i.x = sub i64 %i.w, %i.l                       ; 3 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.x, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp ult i64 %i.x, 120
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %i.z, 12
  %n.vec = and i64 %i.z, 4611686018427387888      ; 4 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.j, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ae ; 4 uses
  %next.gep14 = getelementptr i8, ptr %i.j, i64 %i.ae ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1704)
  %i.af = getelementptr i8, ptr %next.gep14, i64 32 ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep14, i64 64 ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep14, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %next.gep14, align 8, !tbaa !194, !alias.scope !1704
  %wide.load15 = load <4 x i64>, ptr %i.af, align 8, !tbaa !194, !alias.scope !1704
  %wide.load16 = load <4 x i64>, ptr %i.ag, align 8, !tbaa !194, !alias.scope !1704
  %wide.load17 = load <4 x i64>, ptr %i.ah, align 8, !tbaa !194, !alias.scope !1704
  %i.ai = getelementptr i8, ptr %next.gep, i64 32
  %i.aj = getelementptr i8, ptr %next.gep, i64 64
  %i.ak = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !194, !alias.scope !1703
  store <4 x i64> %wide.load15, ptr %i.ai, align 8, !tbaa !194, !alias.scope !1703
  store <4 x i64> %wide.load16, ptr %i.aj, align 8, !tbaa !194, !alias.scope !1703
  store <4 x i64> %wide.load17, ptr %i.ak, align 8, !tbaa !194, !alias.scope !1703
  store <4 x ptr> splat (ptr null), ptr %next.gep14, align 8, !tbaa !194, !alias.scope !1704
  store <4 x ptr> splat (ptr null), ptr %i.af, align 8, !tbaa !194, !alias.scope !1704
  store <4 x ptr> splat (ptr null), ptr %i.ag, align 8, !tbaa !194, !alias.scope !1704
  store <4 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !194, !alias.scope !1704
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !1700

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !195

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %i.z, 4611686018427387900    ; 3 uses
  %i.am = shl i64 %n.vec18, 3                     ; 2 uses
  %i.an = getelementptr i8, ptr %i.u, i64 %i.am   ; 2 uses
  %i.ao = getelementptr i8, ptr %i.j, i64 %i.am
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 2 uses
  %i.ap = shl i64 %index19, 3                     ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.u, i64 %i.ap
  %next.gep21 = getelementptr i8, ptr %i.j, i64 %i.ap ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1704)
  %wide.load22 = load <4 x i64>, ptr %next.gep21, align 8, !tbaa !194, !alias.scope !1704
  store <4 x i64> %wide.load22, ptr %next.gep20, align 8, !tbaa !194, !alias.scope !1703
  store <4 x ptr> splat (ptr null), ptr %next.gep21, align 8, !tbaa !194, !alias.scope !1704
  %index.next23 = add nuw i64 %index19, 4         ; 2 uses
  %i.aq = icmp eq i64 %index.next23, %n.vec18
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1701

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %i.z, %n.vec18
  br i1 %cmp.n24, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.j, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1704)
  %i.ar = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !194, !alias.scope !1704
  store i64 %i.ar, ptr %.012.i.i.i.i, align 8, !tbaa !194, !alias.scope !1703
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !194, !alias.scope !1704
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1702

_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc5
  %.0.lcssa.i.i.i.i = phi ptr [ %i.u, %.noexc5 ], [ %i.an, %vec.epilog.middle.block ], [ %i.ac, %middle.block ], [ %i.at, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i, label %.noexc, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ax) #28
  br label %.noexc

.noexc:                                           ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.u, ptr %i.i, align 8, !tbaa !193
  store ptr %i.au, ptr %i.c, align 8, !tbaa !188
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ay, ptr %i.e, align 8, !tbaa !189
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE3EEES3_ISB_EEEEERS5_DpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE3EEES3_ISB_EEEEERS5_DpOT_.exit.i: ; preds = %.noexc, %bb.b
  %i.az = phi ptr [ %i.d, %bb.b ], [ %.0.lcssa.i.i.i.i, %.noexc ]
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !194 ; 2 uses
  invoke void @_ZN3gmx32ModularSimulatorAlgorithmBuilder23registerExistingElementINS_10PropagatorILNS_16IntegrationStageE3EEEEEvPT_(ptr noundef nonnull align 8 dereferenceable(712) %i.a, ptr noundef %i.ba)
          to label %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE3EEESt14default_deleteIS3_EED2Ev.exit unwind label %bb.f

_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE3EEESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE3EEES3_ISB_EEEEERS5_DpOT_.exit.i
  ret ptr %i.ba

bb.f:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.d, %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE3EEES3_ISB_EEEEERS5_DpOT_.exit.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE3EEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #12
  resume { ptr, i32 } %i.bb
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE3EEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !68     ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i:                ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i:               ; preds = %bb.d, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i3.i.i, label %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE3EEEEclEPS3_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #28
  br label %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE3EEEEclEPS3_.exit

_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE3EEEEclEPS3_.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 200) #28
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE3EEEEclEPS3_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx32ModularSimulatorAlgorithmBuilder23registerExistingElementINS_10PropagatorILNS_16IntegrationStageE3EEEEEvPT_(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::ElementNotFoundError", align 8 ; 4 uses
  %3 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %4 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = tail call noundef zeroext i1 @_ZNK3gmx32ModularSimulatorAlgorithmBuilder13elementExistsEPKNS_17ISimulatorElementE(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef %1)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 24) #12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull @.str.84)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.d unwind label %.thread15

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx20ElementNotFoundErrorE, i64 16), ptr %2, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %4, align 8, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx32ModularSimulatorAlgorithmBuilder23registerExistingElementINS_10PropagatorILNS_16IntegrationStageE3EEEEEvPT_, ptr %i.c, align 8, !tbaa !196
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.85, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !196
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 735, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !129
  invoke void @_ZN3gmxlsINS_20ElementNotFoundErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::ElementNotFoundError") align 8 %i.b, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr %i.b, ptr nonnull @_ZTIN3gmx20ElementNotFoundErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #26
          to label %bb.o unwind label %bb.f

.thread:                                          ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread15:                                        ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #12
  br label %.sink.split

bb.f:                                             ; preds = %bb.d, %bb.e
end_hunk_3
begin_hunk_4_@_ZN3gmx10PropagatorILNS_16IntegrationStageE4EE21getElementPointerImplEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataEPNS_26FreeEnergyPerturbationDataEPNS_25GlobalCommunicationHelperEPNS_18ObservablesReducerERKNS_13PropagatorTagENS_8TimeStepE:bb.a
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i:             ; preds = %bb.h, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !45  ; 3 uses
  %.not.i.i.i3.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i3.i.i.i, label %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE4EEEEclEPS3_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !46
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #28
  br label %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE4EEEEclEPS3_.exit.i

_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE4EEEEclEPS3_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 200) #28
  br label %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE4EEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE4EEESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.e, %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE4EEEEclEPS3_.exit.i
  %.val = load ptr, ptr %7, align 8, !tbaa !175   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.val11 = load i64, ptr %i.ag, align 8, !tbaa !180 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1815)
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.ah, ptr %10, align 8, !tbaa !181, !alias.scope !1815
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !1815
  store i64 %.val11, ptr %i.a, align 8, !tbaa !182, !noalias !1815
  %i.ai = icmp ugt i64 %.val11, 15
  br i1 %i.ai, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE4EEESt14default_deleteIS3_EED2Ev.exit
  %i.aj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.aj, ptr %10, align 8, !tbaa !175, !alias.scope !1815
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !182, !noalias !1815
  store i64 %i.ak, ptr %i.ah, align 8, !tbaa !176, !alias.scope !1815
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE4EEESt14default_deleteIS3_EED2Ev.exit
  %i.al = phi ptr [ %i.aj, %.noexc.i.i.i ], [ %i.ah, %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE4EEESt14default_deleteIS3_EED2Ev.exit ] ; 2 uses
  switch i64 %.val11, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE4EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.am = load i8, ptr %.val, align 1, !tbaa !176, !noalias !1815
  store i8 %i.am, ptr %i.al, align 1, !tbaa !176
  br label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE4EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr readonly align 1 %.val, i64 %.val11, i1 false)
  br label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE4EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit

_ZN3gmxL13getConnectionILNS_16IntegrationStageE4EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit: ; preds = %._crit_edge.i.i.i.i, %bb.j, %bb.k
  %i.an = load i64, ptr %i.a, align 8, !tbaa !182, !noalias !1815 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !180, !alias.scope !1815
  %i.ap = load ptr, ptr %10, align 8, !tbaa !175, !alias.scope !1815
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1, !tbaa !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !1815
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 192
  %i.au = ptrtoint ptr %i.j to i64                ; 3 uses
  store i64 %i.au, ptr %i.ar, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.av, i8 0, i64 256, i1 false), !alias.scope !1815
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr @_ZNSt17_Function_handlerIFviN3gmx15ScaleVelocitiesEEZNS0_L13getConnectionILNS0_16IntegrationStageE4EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUliS1_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation, ptr %i.aw, align 8, !tbaa !95, !alias.scope !1815
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr @_ZNSt17_Function_handlerIFviN3gmx15ScaleVelocitiesEEZNS0_L13getConnectionILNS0_16IntegrationStageE4EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUliS1_E_E9_M_invokeERKSt9_Any_dataOiOS1_, ptr %i.ax, align 8, !tbaa !95, !alias.scope !1815
  store i64 %i.au, ptr %i.at, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 208
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE4EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, ptr %i.ay, align 8, !tbaa !95, !alias.scope !1815
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 216
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE4EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.az, align 8, !tbaa !95, !alias.scope !1815
  store i64 %i.au, ptr %i.as, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 112
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE4EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE0_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.ba, align 8, !tbaa !95, !alias.scope !1815
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 120
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE4EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE0_E9_M_invokeERKSt9_Any_data, ptr %i.bb, align 8, !tbaa !95, !alias.scope !1815
  invoke void @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper18registerPropagatorENS_20PropagatorConnectionE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 %10)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %_ZN3gmxL13getConnectionILNS_16IntegrationStageE4EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  call void @_ZN3gmx20PropagatorConnectionD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %10) #12
  ret ptr %i.j

bb.m:                                             ; preds = %_ZSt11make_uniqueIN3gmx10PropagatorILNS0_16IntegrationStageE4EEEJRNS0_8TimeStepERPNS0_19StatePropagatorDataERPNS0_7MDAtomsERP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE4EEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #12
  br label %common.resume

bb.n:                                             ; preds = %_ZN3gmxL13getConnectionILNS_16IntegrationStageE4EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20PropagatorConnectionD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %10) #12
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper12storeElementINS_10PropagatorILNS_16IntegrationStageE4EEEEEPT_St10unique_ptrIS5_St14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef align 8 %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.520", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !185    ; 4 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !77     ; 2 uses
  store i64 %i.b, ptr %2, align 8, !tbaa !77
  store ptr null, ptr %1, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !188  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !189
  %.not.i.i = icmp eq ptr %i.d, %i.f
  %i.g = inttoptr i64 %i.b to ptr                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !77
  store ptr %i.g, ptr %i.d, align 8, !tbaa !192
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !188
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE4EEES3_ISB_EEEEERS5_DpOT_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !193  ; 9 uses
  %i.k = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.83) #26
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %bb.d
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i, %i.o  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i3 = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i3)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #29
          to label %.noexc5 unwind label %bb.f    ; 9 uses

.noexc5:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store ptr null, ptr %2, align 8, !tbaa !77
  store ptr %i.g, ptr %i.v, align 8, !tbaa !192
  %.not10.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %iter.check

iter.check:                                       ; preds = %.noexc5
  %i.w = add i64 %i.k, -8
  %i.x = sub i64 %i.w, %i.l                       ; 3 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.x, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp ult i64 %i.x, 120
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %i.z, 12
  %n.vec = and i64 %i.z, 4611686018427387888      ; 4 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.j, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ae ; 4 uses
  %next.gep14 = getelementptr i8, ptr %i.j, i64 %i.ae ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1823)
  %i.af = getelementptr i8, ptr %next.gep14, i64 32 ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep14, i64 64 ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep14, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %next.gep14, align 8, !tbaa !194, !alias.scope !1823
  %wide.load15 = load <4 x i64>, ptr %i.af, align 8, !tbaa !194, !alias.scope !1823
  %wide.load16 = load <4 x i64>, ptr %i.ag, align 8, !tbaa !194, !alias.scope !1823
  %wide.load17 = load <4 x i64>, ptr %i.ah, align 8, !tbaa !194, !alias.scope !1823
  %i.ai = getelementptr i8, ptr %next.gep, i64 32
  %i.aj = getelementptr i8, ptr %next.gep, i64 64
  %i.ak = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !194, !alias.scope !1822
  store <4 x i64> %wide.load15, ptr %i.ai, align 8, !tbaa !194, !alias.scope !1822
  store <4 x i64> %wide.load16, ptr %i.aj, align 8, !tbaa !194, !alias.scope !1822
  store <4 x i64> %wide.load17, ptr %i.ak, align 8, !tbaa !194, !alias.scope !1822
  store <4 x ptr> splat (ptr null), ptr %next.gep14, align 8, !tbaa !194, !alias.scope !1823
  store <4 x ptr> splat (ptr null), ptr %i.af, align 8, !tbaa !194, !alias.scope !1823
  store <4 x ptr> splat (ptr null), ptr %i.ag, align 8, !tbaa !194, !alias.scope !1823
  store <4 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !194, !alias.scope !1823
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !1819

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !195

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %i.z, 4611686018427387900    ; 3 uses
  %i.am = shl i64 %n.vec18, 3                     ; 2 uses
  %i.an = getelementptr i8, ptr %i.u, i64 %i.am   ; 2 uses
  %i.ao = getelementptr i8, ptr %i.j, i64 %i.am
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 2 uses
  %i.ap = shl i64 %index19, 3                     ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.u, i64 %i.ap
  %next.gep21 = getelementptr i8, ptr %i.j, i64 %i.ap ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1823)
  %wide.load22 = load <4 x i64>, ptr %next.gep21, align 8, !tbaa !194, !alias.scope !1823
  store <4 x i64> %wide.load22, ptr %next.gep20, align 8, !tbaa !194, !alias.scope !1822
  store <4 x ptr> splat (ptr null), ptr %next.gep21, align 8, !tbaa !194, !alias.scope !1823
  %index.next23 = add nuw i64 %index19, 4         ; 2 uses
  %i.aq = icmp eq i64 %index.next23, %n.vec18
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1820

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %i.z, %n.vec18
  br i1 %cmp.n24, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.j, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1823)
  %i.ar = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !194, !alias.scope !1823
  store i64 %i.ar, ptr %.012.i.i.i.i, align 8, !tbaa !194, !alias.scope !1822
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !194, !alias.scope !1823
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1821

_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc5
  %.0.lcssa.i.i.i.i = phi ptr [ %i.u, %.noexc5 ], [ %i.an, %vec.epilog.middle.block ], [ %i.ac, %middle.block ], [ %i.at, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i, label %.noexc, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ax) #28
  br label %.noexc

.noexc:                                           ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.u, ptr %i.i, align 8, !tbaa !193
  store ptr %i.au, ptr %i.c, align 8, !tbaa !188
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ay, ptr %i.e, align 8, !tbaa !189
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE4EEES3_ISB_EEEEERS5_DpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE4EEES3_ISB_EEEEERS5_DpOT_.exit.i: ; preds = %.noexc, %bb.b
  %i.az = phi ptr [ %i.d, %bb.b ], [ %.0.lcssa.i.i.i.i, %.noexc ]
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !194 ; 2 uses
  invoke void @_ZN3gmx32ModularSimulatorAlgorithmBuilder23registerExistingElementINS_10PropagatorILNS_16IntegrationStageE4EEEEEvPT_(ptr noundef nonnull align 8 dereferenceable(712) %i.a, ptr noundef %i.ba)
          to label %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE4EEESt14default_deleteIS3_EED2Ev.exit unwind label %bb.f

_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE4EEESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE4EEES3_ISB_EEEEERS5_DpOT_.exit.i
  ret ptr %i.ba

bb.f:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.d, %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE4EEES3_ISB_EEEEERS5_DpOT_.exit.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE4EEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #12
  resume { ptr, i32 } %i.bb
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE4EEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !77     ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i:                ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i:               ; preds = %bb.d, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i3.i.i, label %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE4EEEEclEPS3_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #28
  br label %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE4EEEEclEPS3_.exit

_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE4EEEEclEPS3_.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 200) #28
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE4EEEEclEPS3_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx32ModularSimulatorAlgorithmBuilder23registerExistingElementINS_10PropagatorILNS_16IntegrationStageE4EEEEEvPT_(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::ElementNotFoundError", align 8 ; 4 uses
  %3 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %4 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = tail call noundef zeroext i1 @_ZNK3gmx32ModularSimulatorAlgorithmBuilder13elementExistsEPKNS_17ISimulatorElementE(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef %1)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 24) #12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull @.str.84)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.d unwind label %.thread15

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx20ElementNotFoundErrorE, i64 16), ptr %2, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %4, align 8, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx32ModularSimulatorAlgorithmBuilder23registerExistingElementINS_10PropagatorILNS_16IntegrationStageE4EEEEEvPT_, ptr %i.c, align 8, !tbaa !196
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.85, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !196
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 735, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !129
  invoke void @_ZN3gmxlsINS_20ElementNotFoundErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::ElementNotFoundError") align 8 %i.b, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr %i.b, ptr nonnull @_ZTIN3gmx20ElementNotFoundErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #26
          to label %bb.o unwind label %bb.f

.thread:                                          ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread15:                                        ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #12
  br label %.sink.split

bb.f:                                             ; preds = %bb.d, %bb.e
end_hunk_4
begin_hunk_5_@_ZN3gmx10PropagatorILNS_16IntegrationStageE5EE21getElementPointerImplEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataEPNS_26FreeEnergyPerturbationDataEPNS_25GlobalCommunicationHelperEPNS_18ObservablesReducerERKNS_13PropagatorTagENS_8TimeStepE:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i:             ; preds = %bb.h, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !45  ; 3 uses
  %.not.i.i.i3.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i3.i.i.i, label %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE5EEEEclEPS3_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !46
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #28
  br label %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE5EEEEclEPS3_.exit.i

_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE5EEEEclEPS3_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 200) #28
  br label %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE5EEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE5EEESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.e, %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE5EEEEclEPS3_.exit.i
  %.val = load ptr, ptr %7, align 8, !tbaa !175   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.val11 = load i64, ptr %i.ag, align 8, !tbaa !180 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1882)
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.ah, ptr %10, align 8, !tbaa !181, !alias.scope !1882
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !1882
  store i64 %.val11, ptr %i.a, align 8, !tbaa !182, !noalias !1882
  %i.ai = icmp ugt i64 %.val11, 15
  br i1 %i.ai, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE5EEESt14default_deleteIS3_EED2Ev.exit
  %i.aj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.aj, ptr %10, align 8, !tbaa !175, !alias.scope !1882
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !182, !noalias !1882
  store i64 %i.ak, ptr %i.ah, align 8, !tbaa !176, !alias.scope !1882
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE5EEESt14default_deleteIS3_EED2Ev.exit
  %i.al = phi ptr [ %i.aj, %.noexc.i.i.i ], [ %i.ah, %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE5EEESt14default_deleteIS3_EED2Ev.exit ] ; 2 uses
  switch i64 %.val11, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE5EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.am = load i8, ptr %.val, align 1, !tbaa !176, !noalias !1882
  store i8 %i.am, ptr %i.al, align 1, !tbaa !176
  br label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE5EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr readonly align 1 %.val, i64 %.val11, i1 false)
  br label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE5EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit

_ZN3gmxL13getConnectionILNS_16IntegrationStageE5EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit: ; preds = %._crit_edge.i.i.i.i, %bb.j, %bb.k
  %i.an = load i64, ptr %i.a, align 8, !tbaa !182, !noalias !1882 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !180, !alias.scope !1882
  %i.ap = load ptr, ptr %10, align 8, !tbaa !175, !alias.scope !1882
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1, !tbaa !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !1882
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 160
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 224
  %i.av = ptrtoint ptr %i.j to i64                ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.ar, i8 0, i64 288, i1 false), !alias.scope !1882
  store i64 %i.av, ptr %i.as, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 80
  store ptr @_ZNSt17_Function_handlerIFviEZN3gmxL13getConnectionILNS1_16IntegrationStageE5EEENS1_20PropagatorConnectionEPNS1_10PropagatorIXT_EEERKNS1_13PropagatorTagEEUliE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.aw, align 8, !tbaa !95, !alias.scope !1882
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 88
  store ptr @_ZNSt17_Function_handlerIFviEZN3gmxL13getConnectionILNS1_16IntegrationStageE5EEENS1_20PropagatorConnectionEPNS1_10PropagatorIXT_EEERKNS1_13PropagatorTagEEUliE_E9_M_invokeERKSt9_Any_dataOi, ptr %i.ax, align 8, !tbaa !95, !alias.scope !1882
  store i64 %i.av, ptr %i.at, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 176
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE5EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.ay, align 8, !tbaa !95, !alias.scope !1882
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 184
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE5EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.az, align 8, !tbaa !95, !alias.scope !1882
  store i64 %i.av, ptr %i.au, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 240
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE5EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE0_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, ptr %i.ba, align 8, !tbaa !95, !alias.scope !1882
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 248
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE5EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE0_E9_M_invokeERKSt9_Any_data, ptr %i.bb, align 8, !tbaa !95, !alias.scope !1882
  invoke void @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper18registerPropagatorENS_20PropagatorConnectionE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 %10)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %_ZN3gmxL13getConnectionILNS_16IntegrationStageE5EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  call void @_ZN3gmx20PropagatorConnectionD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %10) #12
  ret ptr %i.j

bb.m:                                             ; preds = %_ZSt11make_uniqueIN3gmx10PropagatorILNS0_16IntegrationStageE5EEEJRNS0_8TimeStepERPNS0_19StatePropagatorDataERPNS0_7MDAtomsERP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE5EEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #12
  br label %common.resume

bb.n:                                             ; preds = %_ZN3gmxL13getConnectionILNS_16IntegrationStageE5EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20PropagatorConnectionD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %10) #12
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper12storeElementINS_10PropagatorILNS_16IntegrationStageE5EEEEEPT_St10unique_ptrIS5_St14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef align 8 %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.573", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !185    ; 4 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !83     ; 2 uses
  store i64 %i.b, ptr %2, align 8, !tbaa !83
  store ptr null, ptr %1, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !188  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !189
  %.not.i.i = icmp eq ptr %i.d, %i.f
  %i.g = inttoptr i64 %i.b to ptr                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !83
  store ptr %i.g, ptr %i.d, align 8, !tbaa !192
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !188
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE5EEES3_ISB_EEEEERS5_DpOT_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !193  ; 9 uses
  %i.k = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.83) #26
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %bb.d
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i, %i.o  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i3 = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i3)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #29
          to label %.noexc5 unwind label %bb.f    ; 9 uses

.noexc5:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store ptr null, ptr %2, align 8, !tbaa !83
  store ptr %i.g, ptr %i.v, align 8, !tbaa !192
  %.not10.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %iter.check

iter.check:                                       ; preds = %.noexc5
  %i.w = add i64 %i.k, -8
  %i.x = sub i64 %i.w, %i.l                       ; 3 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.x, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp ult i64 %i.x, 120
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %i.z, 12
  %n.vec = and i64 %i.z, 4611686018427387888      ; 4 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.j, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ae ; 4 uses
  %next.gep14 = getelementptr i8, ptr %i.j, i64 %i.ae ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1890)
  %i.af = getelementptr i8, ptr %next.gep14, i64 32 ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep14, i64 64 ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep14, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %next.gep14, align 8, !tbaa !194, !alias.scope !1890
  %wide.load15 = load <4 x i64>, ptr %i.af, align 8, !tbaa !194, !alias.scope !1890
  %wide.load16 = load <4 x i64>, ptr %i.ag, align 8, !tbaa !194, !alias.scope !1890
  %wide.load17 = load <4 x i64>, ptr %i.ah, align 8, !tbaa !194, !alias.scope !1890
  %i.ai = getelementptr i8, ptr %next.gep, i64 32
  %i.aj = getelementptr i8, ptr %next.gep, i64 64
  %i.ak = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !194, !alias.scope !1889
  store <4 x i64> %wide.load15, ptr %i.ai, align 8, !tbaa !194, !alias.scope !1889
  store <4 x i64> %wide.load16, ptr %i.aj, align 8, !tbaa !194, !alias.scope !1889
  store <4 x i64> %wide.load17, ptr %i.ak, align 8, !tbaa !194, !alias.scope !1889
  store <4 x ptr> splat (ptr null), ptr %next.gep14, align 8, !tbaa !194, !alias.scope !1890
  store <4 x ptr> splat (ptr null), ptr %i.af, align 8, !tbaa !194, !alias.scope !1890
  store <4 x ptr> splat (ptr null), ptr %i.ag, align 8, !tbaa !194, !alias.scope !1890
  store <4 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !194, !alias.scope !1890
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !1886

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !195

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %i.z, 4611686018427387900    ; 3 uses
  %i.am = shl i64 %n.vec18, 3                     ; 2 uses
  %i.an = getelementptr i8, ptr %i.u, i64 %i.am   ; 2 uses
  %i.ao = getelementptr i8, ptr %i.j, i64 %i.am
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 2 uses
  %i.ap = shl i64 %index19, 3                     ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.u, i64 %i.ap
  %next.gep21 = getelementptr i8, ptr %i.j, i64 %i.ap ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1890)
  %wide.load22 = load <4 x i64>, ptr %next.gep21, align 8, !tbaa !194, !alias.scope !1890
  store <4 x i64> %wide.load22, ptr %next.gep20, align 8, !tbaa !194, !alias.scope !1889
  store <4 x ptr> splat (ptr null), ptr %next.gep21, align 8, !tbaa !194, !alias.scope !1890
  %index.next23 = add nuw i64 %index19, 4         ; 2 uses
  %i.aq = icmp eq i64 %index.next23, %n.vec18
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1887

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %i.z, %n.vec18
  br i1 %cmp.n24, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.j, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1890)
  %i.ar = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !194, !alias.scope !1890
  store i64 %i.ar, ptr %.012.i.i.i.i, align 8, !tbaa !194, !alias.scope !1889
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !194, !alias.scope !1890
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1888

_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc5
  %.0.lcssa.i.i.i.i = phi ptr [ %i.u, %.noexc5 ], [ %i.an, %vec.epilog.middle.block ], [ %i.ac, %middle.block ], [ %i.at, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i, label %.noexc, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ax) #28
  br label %.noexc

.noexc:                                           ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.u, ptr %i.i, align 8, !tbaa !193
  store ptr %i.au, ptr %i.c, align 8, !tbaa !188
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ay, ptr %i.e, align 8, !tbaa !189
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE5EEES3_ISB_EEEEERS5_DpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE5EEES3_ISB_EEEEERS5_DpOT_.exit.i: ; preds = %.noexc, %bb.b
  %i.az = phi ptr [ %i.d, %bb.b ], [ %.0.lcssa.i.i.i.i, %.noexc ]
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !194 ; 2 uses
  invoke void @_ZN3gmx32ModularSimulatorAlgorithmBuilder23registerExistingElementINS_10PropagatorILNS_16IntegrationStageE5EEEEEvPT_(ptr noundef nonnull align 8 dereferenceable(712) %i.a, ptr noundef %i.ba)
          to label %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE5EEESt14default_deleteIS3_EED2Ev.exit unwind label %bb.f

_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE5EEESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE5EEES3_ISB_EEEEERS5_DpOT_.exit.i
  ret ptr %i.ba

bb.f:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.d, %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE5EEES3_ISB_EEEEERS5_DpOT_.exit.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE5EEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #12
  resume { ptr, i32 } %i.bb
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE5EEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !83     ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i:                ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i:               ; preds = %bb.d, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i3.i.i, label %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE5EEEEclEPS3_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #28
  br label %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE5EEEEclEPS3_.exit

_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE5EEEEclEPS3_.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 200) #28
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE5EEEEclEPS3_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx32ModularSimulatorAlgorithmBuilder23registerExistingElementINS_10PropagatorILNS_16IntegrationStageE5EEEEEvPT_(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::ElementNotFoundError", align 8 ; 4 uses
  %3 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %4 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = tail call noundef zeroext i1 @_ZNK3gmx32ModularSimulatorAlgorithmBuilder13elementExistsEPKNS_17ISimulatorElementE(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef %1)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 24) #12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull @.str.84)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.d unwind label %.thread15

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx20ElementNotFoundErrorE, i64 16), ptr %2, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %4, align 8, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx32ModularSimulatorAlgorithmBuilder23registerExistingElementINS_10PropagatorILNS_16IntegrationStageE5EEEEEvPT_, ptr %i.c, align 8, !tbaa !196
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.85, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !196
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 735, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !129
  invoke void @_ZN3gmxlsINS_20ElementNotFoundErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::ElementNotFoundError") align 8 %i.b, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr %i.b, ptr nonnull @_ZTIN3gmx20ElementNotFoundErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #26
          to label %bb.o unwind label %bb.f

.thread:                                          ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread15:                                        ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #12
  br label %.sink.split

bb.f:                                             ; preds = %bb.d, %bb.e
end_hunk_5

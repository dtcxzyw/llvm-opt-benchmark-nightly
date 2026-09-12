Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/energyoutput?download=true
inline.NumInlined: 1042
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN3gmx12EnergyOutputC2EP9ener_fileRK10gmx_mtop_tRK10t_inputrecPK6pull_tP8_IO_FILEbNS_16StartingBehaviorEbRKNS_18MDModulesNotifiersE:bb.a
          to label %bb.ah unwind label %bb.z

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.ha, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 624
  %i.hc = load i8, ptr %i.hb, align 8, !tbaa !304, !range !151, !noundef !152
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.hd = phi i8 [ 1, %bb.ah ], [ %i.hc, %bb.ai ]
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 99
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store i8 0, ptr %11, align 1, !tbaa !306
  %i.hf = getelementptr inbounds nuw i8, ptr %9, i64 624
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !308 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %9, i64 632
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !308 ; 2 uses
  %.not8.i = icmp eq ptr %i.hg, %i.hi
  br i1 %.not8.i, label %_ZNK3gmx17MDModulesNotifierIPNS_51MDModulesEnergyOutputToDensityFittingRequestCheckerENS0_IPNS_41MDModulesEnergyOutputToQMMMRequestCheckerENS0_IPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aj, %.noexc345
  %.sroa.05.09.i = phi ptr [ %i.hn, %.noexc345 ], [ %i.hg, %bb.aj ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %11, ptr %i.c, align 8, !tbaa !310
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !312
  %.not.i.i.i = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i, label %bb.ak, label %_ZNKSt8functionIFvPN3gmx51MDModulesEnergyOutputToDensityFittingRequestCheckerEEEclES2_.exit.i

bb.ak:                                            ; preds = %.lr.ph.i
  invoke void @_ZSt25__throw_bad_function_callv() #24
          to label %.noexc344 unwind label %.loopexit.split-lp452

.noexc344:                                        ; preds = %bb.ak
  unreachable

_ZNKSt8functionIFvPN3gmx51MDModulesEnergyOutputToDensityFittingRequestCheckerEEEclES2_.exit.i: ; preds = %.lr.ph.i
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !314
  invoke void %i.hm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.09.i, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc345 unwind label %.loopexit451, !inline_history !269

.noexc345:                                        ; preds = %_ZNKSt8functionIFvPN3gmx51MDModulesEnergyOutputToDensityFittingRequestCheckerEEEclES2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 32 ; 2 uses
  %.not.i343 = icmp eq ptr %i.hn, %i.hi
  br i1 %.not.i343, label %_ZNK3gmx17MDModulesNotifierIPNS_51MDModulesEnergyOutputToDensityFittingRequestCheckerENS0_IPNS_41MDModulesEnergyOutputToQMMMRequestCheckerENS0_IPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit.loopexit, label %.lr.ph.i

_ZNK3gmx17MDModulesNotifierIPNS_51MDModulesEnergyOutputToDensityFittingRequestCheckerENS0_IPNS_41MDModulesEnergyOutputToQMMMRequestCheckerENS0_IPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit.loopexit: ; preds = %.noexc345
  %.pre = load i8, ptr %11, align 1, !tbaa !306, !range !151
  br label %_ZNK3gmx17MDModulesNotifierIPNS_51MDModulesEnergyOutputToDensityFittingRequestCheckerENS0_IPNS_41MDModulesEnergyOutputToQMMMRequestCheckerENS0_IPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit

_ZNK3gmx17MDModulesNotifierIPNS_51MDModulesEnergyOutputToDensityFittingRequestCheckerENS0_IPNS_41MDModulesEnergyOutputToQMMMRequestCheckerENS0_IPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit: ; preds = %_ZNK3gmx17MDModulesNotifierIPNS_51MDModulesEnergyOutputToDensityFittingRequestCheckerENS0_IPNS_41MDModulesEnergyOutputToQMMMRequestCheckerENS0_IPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit.loopexit, %bb.aj
  %i.ho = phi i8 [ %.pre, %_ZNK3gmx17MDModulesNotifierIPNS_51MDModulesEnergyOutputToDensityFittingRequestCheckerENS0_IPNS_41MDModulesEnergyOutputToQMMMRequestCheckerENS0_IPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit.loopexit ], [ 0, %bb.aj ]
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i8 %i.ho, ptr %i.hp, align 4, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store i8 0, ptr %12, align 1, !tbaa !316
  %i.hq = getelementptr inbounds nuw i8, ptr %9, i64 600
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !318 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %9, i64 608
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !318 ; 2 uses
  %.not8.i346 = icmp eq ptr %i.hr, %i.ht
  br i1 %.not8.i346, label %_ZNK3gmx17MDModulesNotifierIPNS_41MDModulesEnergyOutputToQMMMRequestCheckerENS0_IPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit, label %.lr.ph.i347

.lr.ph.i347:                                      ; preds = %_ZNK3gmx17MDModulesNotifierIPNS_51MDModulesEnergyOutputToDensityFittingRequestCheckerENS0_IPNS_41MDModulesEnergyOutputToQMMMRequestCheckerENS0_IPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit, %.noexc352
  %.sroa.05.09.i348 = phi ptr [ %i.hy, %.noexc352 ], [ %i.hr, %_ZNK3gmx17MDModulesNotifierIPNS_51MDModulesEnergyOutputToDensityFittingRequestCheckerENS0_IPNS_41MDModulesEnergyOutputToQMMMRequestCheckerENS0_IPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %12, ptr %i.b, align 8, !tbaa !320
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i348, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !312
  %.not.i.i.i349 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i349, label %bb.al, label %_ZNKSt8functionIFvPN3gmx41MDModulesEnergyOutputToQMMMRequestCheckerEEEclES2_.exit.i

bb.al:                                            ; preds = %.lr.ph.i347
  invoke void @_ZSt25__throw_bad_function_callv() #24
          to label %.noexc351 unwind label %.loopexit.split-lp447

.noexc351:                                        ; preds = %bb.al
  unreachable

_ZNKSt8functionIFvPN3gmx41MDModulesEnergyOutputToQMMMRequestCheckerEEEclES2_.exit.i: ; preds = %.lr.ph.i347
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i348, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !322
  invoke void %i.hx(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.09.i348, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc352 unwind label %.loopexit446, !inline_history !270

.noexc352:                                        ; preds = %_ZNKSt8functionIFvPN3gmx41MDModulesEnergyOutputToQMMMRequestCheckerEEEclES2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i348, i64 32 ; 2 uses
  %.not.i350 = icmp eq ptr %i.hy, %i.ht
  br i1 %.not.i350, label %_ZNK3gmx17MDModulesNotifierIPNS_41MDModulesEnergyOutputToQMMMRequestCheckerENS0_IPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit.loopexit, label %.lr.ph.i347

_ZNK3gmx17MDModulesNotifierIPNS_41MDModulesEnergyOutputToQMMMRequestCheckerENS0_IPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit.loopexit: ; preds = %.noexc352
  %.pre551 = load i8, ptr %12, align 1, !tbaa !316, !range !151
  br label %_ZNK3gmx17MDModulesNotifierIPNS_41MDModulesEnergyOutputToQMMMRequestCheckerENS0_IPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit

_ZNK3gmx17MDModulesNotifierIPNS_41MDModulesEnergyOutputToQMMMRequestCheckerENS0_IPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit: ; preds = %_ZNK3gmx17MDModulesNotifierIPNS_41MDModulesEnergyOutputToQMMMRequestCheckerENS0_IPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit.loopexit, %_ZNK3gmx17MDModulesNotifierIPNS_51MDModulesEnergyOutputToDensityFittingRequestCheckerENS0_IPNS_41MDModulesEnergyOutputToQMMMRequestCheckerENS0_IPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit
  %i.hz = phi i8 [ %.pre551, %_ZNK3gmx17MDModulesNotifierIPNS_41MDModulesEnergyOutputToQMMMRequestCheckerENS0_IPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit.loopexit ], [ 0, %_ZNK3gmx17MDModulesNotifierIPNS_51MDModulesEnergyOutputToDensityFittingRequestCheckerENS0_IPNS_41MDModulesEnergyOutputToQMMMRequestCheckerENS0_IPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit ]
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 101
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  store i8 0, ptr %13, align 1, !tbaa !324
  %i.ib = getelementptr inbounds nuw i8, ptr %9, i64 576
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !326 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %9, i64 584
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !326 ; 2 uses
  %.not8.i353 = icmp eq ptr %i.ic, %i.ie
  br i1 %.not8.i353, label %_ZNK3gmx17MDModulesNotifierIPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit, label %.lr.ph.i354

.lr.ph.i354:                                      ; preds = %_ZNK3gmx17MDModulesNotifierIPNS_41MDModulesEnergyOutputToQMMMRequestCheckerENS0_IPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit, %.noexc359
  %.sroa.05.09.i355 = phi ptr [ %i.ij, %.noexc359 ], [ %i.ic, %_ZNK3gmx17MDModulesNotifierIPNS_41MDModulesEnergyOutputToQMMMRequestCheckerENS0_IPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %13, ptr %i.a, align 8, !tbaa !328
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i355, i64 16
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !312
  %.not.i.i.i356 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i.i356, label %bb.am, label %_ZNKSt8functionIFvPN3gmx42MDModulesEnergyOutputToNNPotRequestCheckerEEEclES2_.exit.i

bb.am:                                            ; preds = %.lr.ph.i354
  invoke void @_ZSt25__throw_bad_function_callv() #24
          to label %.noexc358 unwind label %.loopexit.split-lp

.noexc358:                                        ; preds = %bb.am
  unreachable

_ZNKSt8functionIFvPN3gmx42MDModulesEnergyOutputToNNPotRequestCheckerEEEclES2_.exit.i: ; preds = %.lr.ph.i354
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i355, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !330
  invoke void %i.ii(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.09.i355, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc359 unwind label %.loopexit, !inline_history !271

.noexc359:                                        ; preds = %_ZNKSt8functionIFvPN3gmx42MDModulesEnergyOutputToNNPotRequestCheckerEEEclES2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i355, i64 32 ; 2 uses
  %.not.i357 = icmp eq ptr %i.ij, %i.ie
  br i1 %.not.i357, label %_ZNK3gmx17MDModulesNotifierIPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit.loopexit, label %.lr.ph.i354

_ZNK3gmx17MDModulesNotifierIPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit.loopexit: ; preds = %.noexc359
  %.pre552 = load i8, ptr %13, align 1, !tbaa !324, !range !151
  br label %_ZNK3gmx17MDModulesNotifierIPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit

_ZNK3gmx17MDModulesNotifierIPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit: ; preds = %_ZNK3gmx17MDModulesNotifierIPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit.loopexit, %_ZNK3gmx17MDModulesNotifierIPNS_41MDModulesEnergyOutputToQMMMRequestCheckerENS0_IPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit
  %i.ik = phi i8 [ %.pre552, %_ZNK3gmx17MDModulesNotifierIPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit.loopexit ], [ 0, %_ZNK3gmx17MDModulesNotifierIPNS_41MDModulesEnergyOutputToQMMMRequestCheckerENS0_IPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit ]
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 102
  store i8 %i.ik, ptr %i.il, align 2, !tbaa !165
  store i32 0, ptr %i.m, align 4, !tbaa !167
  br label %bb.ao

bb.an:                                            ; preds = %bb.au
  br i1 %6, label %bb.az, label %bb.ay

.loopexit451:                                     ; preds = %_ZNKSt8functionIFvPN3gmx51MDModulesEnergyOutputToDensityFittingRequestCheckerEEEclES2_.exit.i
  %lpad.loopexit453 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

.loopexit.split-lp452:                            ; preds = %bb.ak
  %lpad.loopexit.split-lp454 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

.loopexit446:                                     ; preds = %_ZNKSt8functionIFvPN3gmx41MDModulesEnergyOutputToQMMMRequestCheckerEEEclES2_.exit.i
  %lpad.loopexit448 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

.loopexit.split-lp447:                            ; preds = %bb.al
  %lpad.loopexit.split-lp449 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

.loopexit:                                        ; preds = %_ZNKSt8functionIFvPN3gmx42MDModulesEnergyOutputToNNPotRequestCheckerEEEclES2_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.bi, %bb.bl, %bb.bm, %bb.bo, %bb.br, %bb.bs, %bb.bt, %bb.bv, %bb.by, %bb.bz, %bb.ca, %bb.cc, %bb.cd, %bb.cg, %bb.ch, %bb.ci, %bb.cl, %bb.co, %bb.cr, %bb.cs, %bb.am, %bb.cy, %bb.db, %._crit_edge477, %bb.eh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ao:                                            ; preds = %bb.ax, %_ZNK3gmx17MDModulesNotifierIPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit
  %i.im = phi i32 [ 0, %_ZNK3gmx17MDModulesNotifierIPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit ], [ %i.ka, %bb.ax ] ; 3 uses
  %indvars.iv511 = phi i64 [ 0, %_ZNK3gmx17MDModulesNotifierIPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEE6notifyES2_.exit ], [ %indvars.iv.next512.3, %bb.ax ] ; 7 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv511
  %i.io = load i8, ptr %i.in, align 4, !tbaa !165, !range !151, !noundef !152
  %i.ip = trunc nuw i8 %i.io to i1
  br i1 %i.ip, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.iq = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv511
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !331
  %i.it = sext i32 %i.im to i64
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.it
  store ptr %i.is, ptr %i.iu, align 8, !tbaa !12
  %i.iv = add nsw i32 %i.im, 1                    ; 2 uses
  store i32 %i.iv, ptr %i.m, align 4, !tbaa !167
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.iw = phi i32 [ %i.iv, %bb.ap ], [ %i.im, %bb.ao ] ; 3 uses
  %indvars.iv.next512 = or disjoint i64 %indvars.iv511, 1 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next512
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !165, !range !151, !noundef !152
  %i.iz = trunc nuw i8 %i.iy to i1
  br i1 %i.iz, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ja = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv.next512
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !331
  %i.jd = sext i32 %i.iw to i64
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.jd
  store ptr %i.jc, ptr %i.je, align 8, !tbaa !12
  %i.jf = add nsw i32 %i.iw, 1                    ; 2 uses
  store i32 %i.jf, ptr %i.m, align 4, !tbaa !167
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.jg = phi i32 [ %i.jf, %bb.ar ], [ %i.iw, %bb.aq ] ; 3 uses
  %indvars.iv.next512.1 = or disjoint i64 %indvars.iv511, 2 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next512.1
  %i.ji = load i8, ptr %i.jh, align 2, !tbaa !165, !range !151, !noundef !152
  %i.jj = trunc nuw i8 %i.ji to i1
  br i1 %i.jj, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.jk = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv.next512.1
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !331
  %i.jn = sext i32 %i.jg to i64
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.jn
  store ptr %i.jm, ptr %i.jo, align 8, !tbaa !12
  %i.jp = add nsw i32 %i.jg, 1                    ; 2 uses
  store i32 %i.jp, ptr %i.m, align 4, !tbaa !167
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.jq = phi i32 [ %i.jp, %bb.at ], [ %i.jg, %bb.as ] ; 3 uses
  %indvars.iv.next512.2 = or disjoint i64 %indvars.iv511, 3 ; 2 uses
  %.not436.2 = icmp eq i64 %indvars.iv511, 92
  br i1 %.not436.2, label %bb.an, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jr = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next512.2
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !165, !range !151, !noundef !152
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ju = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv.next512.2
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !331
  %i.jx = sext i32 %i.jq to i64
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.jx
  store ptr %i.jw, ptr %i.jy, align 8, !tbaa !12
  %i.jz = add nsw i32 %i.jq, 1                    ; 2 uses
  store i32 %i.jz, ptr %i.m, align 4, !tbaa !167
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.ka = phi i32 [ %i.jz, %bb.aw ], [ %i.jq, %bb.av ]
  %indvars.iv.next512.3 = add nuw nsw i64 %indvars.iv511, 4
  br label %bb.ao

bb.ay:                                            ; preds = %bb.an
  %i.kb = getelementptr inbounds nuw i8, ptr %3, i64 204
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !168
  br label %bb.az

bb.az:                                            ; preds = %bb.an, %bb.ay
  %i.kd = phi i32 [ %i.kc, %bb.ay ], [ 0, %bb.an ]
  store i32 %i.kd, ptr %i.ab, align 8, !tbaa !169
  %i.ke = getelementptr inbounds nuw i8, ptr %3, i64 220
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.kg = load float, ptr %i.kf, align 8, !tbaa !170
  %i.kh = fcmp une float %i.kg, 0.000000e+00
  br i1 %i.kh, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ki = getelementptr inbounds nuw i8, ptr %3, i64 244
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !170
  %i.kk = fcmp une float %i.kj, 0.000000e+00
  br i1 %i.kk, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kl = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.km = load float, ptr %i.kl, align 8, !tbaa !170
  %i.kn = fcmp oeq float %i.km, 0.000000e+00
  %narrow = and i1 %i.kn, %i.cv
  %spec.select = zext i1 %narrow to i8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %i.ko = phi i8 [ %spec.select, %bb.bb ], [ 0, %bb.ba ], [ 0, %bb.az ]
  store i8 %i.ko, ptr %i.t, align 8, !tbaa !171
  %i.kp = load float, ptr %i.ke, align 4, !tbaa !170
  %i.kq = getelementptr inbounds nuw i8, ptr %3, i64 236
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !170
  %i.ks = fadd float %i.kp, %i.kr
  %i.kt = getelementptr inbounds nuw i8, ptr %3, i64 252
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !170
  %i.kv = fadd float %i.ks, %i.ku
  %i.kw = fdiv float %i.kv, 3.000000e+00
  store float %i.kw, ptr %i.u, align 4, !tbaa !172
  %i.kx = getelementptr inbounds nuw i8, ptr %3, i64 268
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !170
  %i.kz = fcmp une float %i.ky, 0.000000e+00
  br i1 %i.kz, label %bb.bi, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.la = getelementptr inbounds nuw i8, ptr %3, i64 280
  %i.lb = load float, ptr %i.la, align 8, !tbaa !170
  %i.lc = fcmp une float %i.lb, 0.000000e+00
  br i1 %i.lc, label %bb.bi, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ld = getelementptr inbounds nuw i8, ptr %3, i64 284
  %i.le = load float, ptr %i.ld, align 4, !tbaa !170
  %i.lf = fcmp une float %i.le, 0.000000e+00
  br i1 %i.lf, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lg = getelementptr inbounds nuw i8, ptr %3, i64 688
  %i.lh = load float, ptr %i.lg, align 8, !tbaa !170
  %i.li = fcmp une float %i.lh, 0.000000e+00
  br i1 %i.li, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lj = getelementptr inbounds nuw i8, ptr %3, i64 700
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !170
  %i.ll = fcmp une float %i.lk, 0.000000e+00
  br i1 %i.ll, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.lm = getelementptr inbounds nuw i8, ptr %3, i64 704
  %i.ln = load float, ptr %i.lm, align 8, !tbaa !170
  %i.lo = fcmp une float %i.ln, 0.000000e+00
  %i.lp = zext i1 %i.lo to i8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bf, %bb.bg, %bb.bh, %bb.be, %bb.bd, %bb.bc
  %i.lq = phi i8 [ 1, %bb.be ], [ 1, %bb.bd ], [ 1, %bb.bc ], [ 1, %bb.bg ], [ 1, %bb.bf ], [ %i.lp, %bb.bh ]
  store i8 %i.lq, ptr %i.f, align 8, !tbaa !173
  %i.lr = invoke noundef zeroext i1 @_Z18inputrecDynamicBoxPK10t_inputrec(ptr noundef nonnull %3)
          to label %bb.bj unwind label %.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bi
  %i.ls = zext i1 %i.lr to i8
  store i8 %i.ls, ptr %i.p, align 8, !tbaa !174
  br i1 %6, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lt = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.lu = load i32, ptr %i.lt, align 8, !tbaa !332
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk
  %i.lv = phi i32 [ %i.lu, %bb.bk ], [ 0, %bb.bj ]
  store i32 %i.lv, ptr %i.j, align 4, !tbaa !175
  %i.lw = invoke noundef zeroext i1 @_Z18inputrecNvtTrotterPK10t_inputrec(ptr noundef nonnull %3)
          to label %bb.bm unwind label %.loopexit.split-lp

bb.bm:                                            ; preds = %bb.bl
  %i.lx = and i1 %i.lw, %i.cv
  %i.ly = zext i1 %i.lx to i8
  store i8 %i.ly, ptr %i.g, align 1, !tbaa !176
  %i.lz = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.ma = load i8, ptr %i.lz, align 8, !tbaa !333, !range !151, !noundef !152
  %i.mb = select i1 %6, i8 0, i8 %i.ma
  store i8 %i.mb, ptr %i.h, align 2, !tbaa !177
  %i.mc = invoke noundef zeroext i1 @_Z18inputrecNptTrotterPK10t_inputrec(ptr noundef nonnull %3)
          to label %bb.bn unwind label %.loopexit.split-lp

bb.bn:                                            ; preds = %bb.bm
  br i1 %i.mc, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.md = invoke noundef zeroext i1 @_Z18inputrecNphTrotterPK10t_inputrec(ptr noundef nonnull %3)
          to label %bb.bp unwind label %.loopexit.split-lp

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.md, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp, %bb.bn
  %i.me = zext i1 %i.cv to i8
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.mf = phi i8 [ 0, %bb.bp ], [ %i.me, %bb.bq ]
  store i8 %i.mf, ptr %i.i, align 1, !tbaa !178
  %i.mg = invoke noundef zeroext i1 @_Z17inputrecNeedMutotPK10t_inputrec(ptr noundef nonnull %3)
          to label %bb.bs unwind label %.loopexit.split-lp

bb.bs:                                            ; preds = %bb.br
  %i.mh = zext i1 %i.mg to i8
  store i8 %i.mh, ptr %i.ad, align 8, !tbaa !179
  %i.mi = zext i1 %i.cv to i8
  store i8 %i.mi, ptr %i.x, align 8, !tbaa !180
  %i.mj = invoke noundef ptr @_Z7mk_ebinv()
          to label %bb.bt unwind label %.loopexit.split-lp ; 2 uses

bb.bt:                                            ; preds = %bb.bs
  store ptr %i.mj, ptr %i.e, align 8, !tbaa !181
  %i.mk = load i32, ptr %i.m, align 4, !tbaa !167
  %i.ml = invoke noundef i32 @_Z14get_ebin_spaceP6t_ebiniPKPKcS2_(ptr noundef %i.mj, i32 noundef %i.mk, ptr noundef nonnull %10, ptr noundef null)
          to label %bb.bu unwind label %.loopexit.split-lp

bb.bu:                                            ; preds = %bb.bt
  store i32 %i.ml, ptr %i.l, align 8, !tbaa !182
  %i.mm = load i32, ptr %i.o, align 4, !tbaa !164 ; 2 uses
  %.not318 = icmp eq i32 %i.mm, 0
  br i1 %.not318, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.mn = load ptr, ptr %i.e, align 8, !tbaa !181
  %i.mo = invoke noundef i32 @_Z14get_ebin_spaceP6t_ebiniPKPKcS2_(ptr noundef %i.mn, i32 noundef %i.mm, ptr noundef nonnull @_ZL10conrmsd_nm, ptr noundef nonnull @.str.32)
          to label %bb.bw unwind label %.loopexit.split-lp

bb.bw:                                            ; preds = %bb.bv
  store i32 %i.mo, ptr %i.n, align 8, !tbaa !183
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bu
  %i.mp = load i8, ptr %i.p, align 8, !tbaa !174, !range !151, !noundef !152
  %i.mq = trunc nuw i8 %i.mp to i1
  br i1 %i.mq, label %bb.by, label %bb.cf

bb.by:                                            ; preds = %bb.bx
  %i.mr = load ptr, ptr %i.e, align 8, !tbaa !181
  %i.ms = load i8, ptr %i.f, align 8, !tbaa !173, !range !151, !noundef !152
  %i.mt = trunc nuw i8 %i.ms to i1                ; 2 uses
  %i.mu = select i1 %i.mt, i32 6, i32 3
  %i.mv = select i1 %i.mt, ptr @_ZL13tricl_boxs_nm, ptr @_ZL7boxs_nm
  %i.mw = invoke noundef i32 @_Z14get_ebin_spaceP6t_ebiniPKPKcS2_(ptr noundef %i.mr, i32 noundef %i.mu, ptr noundef nonnull %i.mv, ptr noundef nonnull @.str.33)
          to label %bb.bz unwind label %.loopexit.split-lp

bb.bz:                                            ; preds = %bb.by
  store i32 %i.mw, ptr %i.q, align 4, !tbaa !184
  %i.mx = load ptr, ptr %i.e, align 8, !tbaa !181
  %i.my = invoke noundef i32 @_Z14get_ebin_spaceP6t_ebiniPKPKcS2_(ptr noundef %i.mx, i32 noundef 1, ptr noundef nonnull @_ZL6vol_nm, ptr noundef nonnull @.str.34)
          to label %bb.ca unwind label %.loopexit.split-lp

bb.ca:                                            ; preds = %bb.bz
  store i32 %i.my, ptr %i.r, align 8, !tbaa !185
  %i.mz = load ptr, ptr %i.e, align 8, !tbaa !181
  %i.na = invoke noundef i32 @_Z14get_ebin_spaceP6t_ebiniPKPKcS2_(ptr noundef %i.mz, i32 noundef 1, ptr noundef nonnull @_ZL7dens_nm, ptr noundef nonnull @.str.35)
          to label %bb.cb unwind label %.loopexit.split-lp

bb.cb:                                            ; preds = %bb.ca
  store i32 %i.na, ptr %i.s, align 4, !tbaa !186
  %i.nb = load i8, ptr %i.t, align 8, !tbaa !171, !range !151, !noundef !152
  %i.nc = trunc nuw i8 %i.nb to i1
  br i1 %i.nc, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  %i.nd = load ptr, ptr %i.e, align 8, !tbaa !181
end_hunk_0

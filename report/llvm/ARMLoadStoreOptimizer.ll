Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMLoadStoreOptimizer?download=true
inline.NumInlined: 4536
inline.NumDeleted: 1959
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN12_GLOBAL__N_123ARMPreAllocLoadStoreOpt20runOnMachineFunctionERN4llvm15MachineFunctionEPNS1_9AAResultsEPNS1_20MachineDominatorTreeE:bb.a
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !459, !noalias !816
  %i.iu = and i32 %.0.i61.i, 31
  %i.iv = lshr i32 %i.it, %i.iu
  %i.iw = trunc i32 %i.iv to i1
  br i1 %i.iw, label %.lr.ph.i60.i, label %.loopexit.i, !prof !461, !llvm.loop !643

.lr.ph.i60.i:                                     ; preds = %bb.y, %bb.z
  %i.ix = phi ptr [ %i.iq, %bb.z ], [ %i.ih, %bb.y ] ; 2 uses
  %.025.i.i = phi i32 [ %.0.i61.i, %bb.z ], [ %.024.i.i, %bb.y ]
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !454, !noalias !816
  %i.iz = icmp eq i32 %i.cd, %i.iy
  br i1 %i.iz, label %.loopexit.i, label %bb.z, !prof !455

.loopexit.i:                                      ; preds = %.lr.ph.i60.i, %bb.z, %bb.y, %.loopexit.i.i
  %i.ja = phi ptr [ %i.gw, %.loopexit.i.i ], [ %i.ia, %bb.y ], [ %i.ia, %bb.z ], [ %i.ia, %.lr.ph.i60.i ]
  %i.jb = phi ptr [ %i.gx, %.loopexit.i.i ], [ %i.ib, %bb.y ], [ %i.ib, %bb.z ], [ %i.ib, %.lr.ph.i60.i ]
  %i.jc = phi ptr [ %.lcssa30.sink.i.ph.i.i, %.loopexit.i.i ], [ %i.ih, %bb.y ], [ %i.ix, %.lr.ph.i60.i ], [ %i.iq, %bb.z ] ; 2 uses
  %i.jd = ptrtoint ptr %i.jc to i64
  %i.je = ptrtoint ptr %i.ja to i64
  %i.jf = sub i64 %i.jd, %i.je
  %i.jg = ashr exact i64 %i.jf, 2                 ; 2 uses
  %i.jh = trunc i64 %i.jg to i32
  %i.ji = and i32 %i.jh, 31
  %i.jj = shl nuw i32 1, %i.ji
  %i.jk = lshr i64 %i.jg, 5
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.jk ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !459, !noalias !816
  %i.jn = or i32 %i.jj, %i.jm
  store i32 %i.jn, ptr %i.jl, align 4, !tbaa !459, !noalias !816
  %i.jo = load i32, ptr %i.ah, align 8, !tbaa !453, !noalias !816
  %i.jp = add i32 %i.jo, 1
  store i32 %i.jp, ptr %i.ah, align 8, !tbaa !453, !noalias !816
  store i32 %i.cd, ptr %i.jc, align 4, !tbaa !459, !noalias !816
  %i.jq = load i32, ptr %i.ad, align 8, !tbaa !67 ; 2 uses
  %i.jr = load i32, ptr %i.ae, align 4, !tbaa !68
  %.not.i10.i.i = icmp ult i32 %i.jq, %i.jr
  br i1 %.not.i10.i.i, label %bb.ab, label %bb.aa, !prof !455

bb.aa:                                            ; preds = %.loopexit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i32 %i.cd)
  br label %_ZN4llvm9SetVectorINS_8RegisterENS_11SmallVectorIS1_Lj4EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj4EE6insertERKS1_.exit.i

bb.ab:                                            ; preds = %.loopexit.i
  %i.js = zext i32 %i.jq to i64
  %i.jt = load ptr, ptr %i.ab, align 8, !tbaa !38
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.js
  store i32 %i.cd, ptr %i.ju, align 1
  %i.jv = load i32, ptr %i.ad, align 8, !tbaa !67
  %i.jw = add i32 %i.jv, 1
  store i32 %i.jw, ptr %i.ad, align 8, !tbaa !67
  br label %_ZN4llvm9SetVectorINS_8RegisterENS_11SmallVectorIS1_Lj4EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj4EE6insertERKS1_.exit.i

_ZN4llvm9SetVectorINS_8RegisterENS_11SmallVectorIS1_Lj4EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj4EE6insertERKS1_.exit.i: ; preds = %.lr.ph.i.i33.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS8_bEOT_DpOT0_.exit50.i, %bb.ab, %bb.aa, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit.i.i, %_ZN4llvm12is_containedIRNS_11SmallVectorINS_8RegisterELj4EEES2_EEbOT_RKT0_.exit.i.i, %bb.e, %bb.d, %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.079.0137.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.079.0137.i, align 8
  %i.jx = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.jx, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %_ZN4llvm9SetVectorINS_8RegisterENS_11SmallVectorIS1_Lj4EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj4EE6insertERKS1_.exit.i
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.079.0137.i, i64 44
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !380
  %i.ka = and i32 %i.jz, 8
  %.not34.i.i.i.i = icmp eq i32 %i.ka, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.kc, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %.sroa.079.0137.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !366 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 44
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !380
  %i.kf = and i32 %i.ke, 8
  %.not3.i.i.i.i = icmp eq i32 %i.kf, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !3

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZN4llvm9SetVectorINS_8RegisterENS_11SmallVectorIS1_Lj4EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj4EE6insertERKS1_.exit.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.079.0137.i, %_ZN4llvm9SetVectorINS_8RegisterENS_11SmallVectorIS1_Lj4EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj4EE6insertERKS1_.exit.i ], [ %.sroa.079.0137.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.kc, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ]
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %.sroa.079.0.i = load ptr, ptr %i.kg, align 8, !tbaa !366 ; 2 uses
  %.not101.i = icmp eq ptr %.sroa.079.0.i, %i.bq
  br i1 %.not101.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge153.loopexit.i:                        ; preds = %_ZN12_GLOBAL__N_123ARMPreAllocLoadStoreOpt20DistributeIncrementsEN4llvm8RegisterE.exit.i
  %.pre186.i = load ptr, ptr %i.ab, align 8, !tbaa !38
  br label %._crit_edge153.i

._crit_edge153.i:                                 ; preds = %._crit_edge153.loopexit.i, %._crit_edge143.i
  %i.kh = phi ptr [ %.pre183.i, %._crit_edge143.i ], [ %.pre186.i, %._crit_edge153.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi i1 [ false, %._crit_edge143.i ], [ %.17.i.i, %._crit_edge153.loopexit.i ] ; 2 uses
  %i.ki = icmp eq ptr %i.kh, %i.ac
  br i1 %i.ki, label %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge153.i
  call void @free(ptr noundef %i.kh) #25
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i.i: ; preds = %bb.ac, %._crit_edge153.i, %bb.b
  %.0.lcssa240.i = phi i1 [ %.0.lcssa.i, %._crit_edge153.i ], [ %.0.lcssa.i, %bb.ac ], [ false, %bb.b ] ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %47, i64 20
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !458 ; 2 uses
  %i.kl = icmp eq i32 %i.kk, 0
  br i1 %i.kl, label %_ZN12_GLOBAL__N_123ARMPreAllocLoadStoreOpt20DistributeIncrementsEv.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i.i
  %i.km = load ptr, ptr %47, align 8, !tbaa !456
  %i.kn = zext i32 %i.kk to i64                   ; 2 uses
  %i.ko = add nuw nsw i64 %i.kn, 31
  %i.kp = lshr i64 %i.ko, 5
  %i.kq = add nuw nsw i64 %i.kp, %i.kn
  %i.kr = shl nuw nsw i64 %i.kq, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.km, i64 noundef %i.kr, i64 noundef 4) #25
  br label %_ZN12_GLOBAL__N_123ARMPreAllocLoadStoreOpt20DistributeIncrementsEv.exit

bb.ae:                                            ; preds = %_ZN12_GLOBAL__N_123ARMPreAllocLoadStoreOpt20DistributeIncrementsEN4llvm8RegisterE.exit.i, %.lr.ph152.i
  %.0148.i = phi i1 [ false, %.lr.ph152.i ], [ %.17.i.i, %_ZN12_GLOBAL__N_123ARMPreAllocLoadStoreOpt20DistributeIncrementsEN4llvm8RegisterE.exit.i ] ; 25 uses
  %.021147.i = phi ptr [ %.pre183.i, %.lr.ph152.i ], [ %i.aeo, %_ZN12_GLOBAL__N_123ARMPreAllocLoadStoreOpt20DistributeIncrementsEN4llvm8RegisterE.exit.i ] ; 2 uses
  %.sroa.01.0.copyload.i = load i32, ptr %.021147.i, align 4, !tbaa !459 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #25
  store ptr %i.am, ptr %44, align 8, !tbaa !36
  store i32 8, ptr %i.an, align 8, !tbaa !73
  store i32 0, ptr %i.ao, align 4, !tbaa !74
  store i8 1, ptr %i.ap, align 8, !tbaa !33
  %i.ks = load ptr, ptr %i.z, align 8, !tbaa !450 ; 2 uses
  %i.kt = icmp slt i32 %.sroa.01.0.copyload.i, 0
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 48
  %i.kv = and i32 %.sroa.01.0.copyload.i, 2147483647
  %i.kw = zext nneg i32 %i.kv to i64
  %i.kx = load ptr, ptr %i.ku, align 8
  %i.ky = getelementptr inbounds nuw [16 x i8], ptr %i.kx, i64 %i.kw
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.la = getelementptr inbounds nuw i8, ptr %i.ks, i64 312
  %i.lb = zext nneg i32 %.sroa.01.0.copyload.i to i64
  %i.lc = load ptr, ptr %i.la, align 8
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.lb
  %.0.in.i.i.i.i.i = select i1 %i.kt, ptr %i.kz, ptr %i.ld
  %.0.i.i.i.i.i = load ptr, ptr %.0.in.i.i.i.i.i, align 8, !tbaa !818 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %.critedge.thread336.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.le = load i32, ptr %.0.i.i.i.i.i, align 8
  %i.lf = and i32 %i.le, -2130706432
  %or.cond.not.i.i.i.i.i = icmp eq i32 %i.lf, 0
  br i1 %or.cond.not.i.i.i.i.i, label %.lr.ph.preheader.i.i, label %.critedge2.i.i.i.i.i.i

.critedge2.i.i.i.i.i.i:                           ; preds = %bb.af, %bb.ag
  %.pn.i.i.i.i.i.i = phi ptr [ %storemerge.i.i.i.i.i.i, %bb.ag ], [ %.0.i.i.i.i.i, %bb.af ]
  %storemerge.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 24
  %storemerge.i.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i.i, align 8, !tbaa !382 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %.critedge.thread336.i.i, label %bb.ag

bb.ag:                                            ; preds = %.critedge2.i.i.i.i.i.i
  %i.lg = load i32, ptr %storemerge.i.i.i.i.i.i, align 8
  %i.lh = and i32 %i.lg, -2130706432
  %or.cond.not.i.i.i.i.i.i = icmp eq i32 %i.lh, 0
  br i1 %or.cond.not.i.i.i.i.i.i, label %.lr.ph.preheader.i.i, label %.critedge2.i.i.i.i.i.i, !llvm.loop !662

.lr.ph.preheader.i.i:                             ; preds = %bb.ag, %bb.af
  %.sroa.0.0.i.i.i.i = phi ptr [ %.0.i.i.i.i.i, %bb.af ], [ %storemerge.i.i.i.i.i.i, %bb.ag ] ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %.pre187.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !433
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i.i.i, %.lr.ph.preheader.i.i
  %i.li = phi ptr [ %.pre187.i, %.lr.ph.preheader.i.i ], [ %i.ni, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i.i.i ] ; 38 uses
  %i.lj = phi i8 [ 1, %.lr.ph.preheader.i.i ], [ %i.my, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i.i.i ] ; 34 uses
  %i.lk = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.mz, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i.i.i ] ; 34 uses
  %i.ll = phi i32 [ 8, %.lr.ph.preheader.i.i ], [ %i.na, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i.i.i ] ; 35 uses
  %i.lm = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.nb, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i.i.i ] ; 36 uses
  %i.ln = phi ptr [ %i.am, %.lr.ph.preheader.i.i ], [ %i.nc, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i.i.i ] ; 35 uses
  %i.lo = phi i8 [ 1, %.lr.ph.preheader.i.i ], [ %i.nd, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i.i.i ] ; 33 uses
  %.098389.i.i = phi ptr [ null, %.lr.ph.preheader.i.i ], [ %.3101.ph.i.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i.i.i ] ; 34 uses
  %.0104388.i.i = phi ptr [ null, %.lr.ph.preheader.i.i ], [ %.3107.ph.i.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i.i.i ] ; 5 uses
  %.0109387.i.i = phi ptr [ null, %.lr.ph.preheader.i.i ], [ %.1110.ph.i.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i.i.i ] ; 35 uses
  %.sroa.0317.0386.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %.lr.ph.preheader.i.i ], [ %storemerge.i.i.i.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i.i.i ] ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.0317.0386.i.i, i64 8
  %.not.i24.i = icmp eq ptr %.0109387.i.i, null
  %i.lq = getelementptr i8, ptr %i.li, i64 52
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !379 ; 3 uses
  br i1 %.not.i24.i, label %bb.ah, label %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.thread.i.i

bb.ah:                                            ; preds = %.lr.ph.i.i
  switch i32 %i.lr, label %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.thread.i.i [
    i32 4049, label %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.i.i
    i32 4383, label %bb.ai
    i32 4384, label %bb.ai
    i32 4518, label %bb.aj
    i32 4519, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ah
  br label %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.i.i

bb.aj:                                            ; preds = %bb.ah, %bb.ah
  br label %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.i.i

_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.i.i: ; preds = %bb.aj, %bb.ai, %bb.ah
  %.04.i.i.i = phi i64 [ -1, %bb.aj ], [ -1, %bb.ai ], [ 1, %bb.ah ]
  %.0.i.i.i = phi i64 [ 3, %bb.aj ], [ 2, %bb.ai ], [ 2, %bb.ah ]
  %i.ls = getelementptr inbounds nuw i8, ptr %i.li, i64 32
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !381
  %i.lu = getelementptr inbounds nuw [32 x i8], ptr %i.lt, i64 %.0.i.i.i
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !382
  %i.lx = mul nsw i64 %i.lw, %.04.i.i.i
  %i.ly = and i64 %i.lx, 4294967295
  %.not126.i.i = icmp eq i64 %i.ly, 0
  br i1 %.not126.i.i, label %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.thread.i.i, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i

_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.thread.i.i: ; preds = %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.i.i, %bb.ah, %.lr.ph.i.i
  %i.lz = call fastcc noundef i32 @_ZL19getBaseOperandIndexRN4llvm12MachineInstrE(i32 %i.lr) ; 2 uses
  %i.ma = icmp eq i32 %i.lz, -1
  br i1 %i.ma, label %.critedge.thread336.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.thread.i.i
  %i.mb = getelementptr inbounds nuw i8, ptr %i.li, i64 32
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !381
  %i.md = zext nneg i32 %i.lz to i64
  %i.me = getelementptr inbounds nuw [32 x i8], ptr %i.mc, i64 %i.md ; 3 uses
  %i.mf = load i32, ptr %i.me, align 8
  %i.mg = and i32 %i.mf, 255
  %i.mh = icmp eq i32 %i.mg, 0
  br i1 %i.mh, label %bb.al, label %.critedge.thread336.i.i

bb.al:                                            ; preds = %bb.ak
  %i.mi = getelementptr inbounds nuw i8, ptr %i.me, i64 4
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !382
  %.not365.i.i = icmp eq i32 %i.mj, %.sroa.01.0.copyload.i
  br i1 %.not365.i.i, label %bb.am, label %.critedge.thread336.i.i

bb.am:                                            ; preds = %bb.al
  switch i32 %i.lr, label %_ZL11isPostIndexRN4llvm12MachineInstrE.exit.i.i [
    i32 1265, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
    i32 1269, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
    i32 1273, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
    i32 1277, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
    i32 1289, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
    i32 1299, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
    i32 1281, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
    i32 1294, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
    i32 1304, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
    i32 1818, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
    i32 1822, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
    i32 1836, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
    i32 1827, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
    i32 1841, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
    i32 1848, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
    i32 1264, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
    i32 1268, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
    i32 1272, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
    i32 1276, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
    i32 1288, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
    i32 1298, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
    i32 1280, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
    i32 1293, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
    i32 1303, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
    i32 1817, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
    i32 1821, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
    i32 1835, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
    i32 1826, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
    i32 1840, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
    i32 1847, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
  ]

_ZL11isPostIndexRN4llvm12MachineInstrE.exit.i.i:  ; preds = %bb.am
  %i.mk = getelementptr inbounds nuw i8, ptr %i.me, i64 48
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !382
  %i.mm = icmp eq i64 %i.ml, 0
  br i1 %i.mm, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i, label %bb.an

bb.an:                                            ; preds = %_ZL11isPostIndexRN4llvm12MachineInstrE.exit.i.i
  %i.mn = trunc nuw i8 %i.lo to i1
  br i1 %i.mn, label %bb.ao, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.mo = zext i32 %i.lm to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.mo, 3
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ln, i64 %.idx.i.i.i.i ; 2 uses
  %.not22.i.i.i.i = icmp eq i32 %i.lm, 0
  br i1 %.not22.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ao, %.critedge.i.i.i.i
  %.023.i.i.i.i = phi ptr [ %i.mr, %.critedge.i.i.i.i ], [ %i.ln, %bb.ao ] ; 2 uses
  %i.mq = load ptr, ptr %.023.i.i.i.i, align 8, !tbaa !39, !noalias !819
  %.not15.i.i.i.i = icmp eq ptr %i.mq, %i.li
  br i1 %.not15.i.i.i.i, label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.mr = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i28.i = icmp eq ptr %i.mr, %i.mp
  br i1 %.not.i.i.i28.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.critedge.i.i.i.i, %bb.ao
  %i.ms = icmp ult i32 %i.lm, %i.ll
  br i1 %i.ms, label %bb.ap, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i

bb.ap:                                            ; preds = %._crit_edge.i.i.i.i
  %i.mt = add nuw i32 %i.lm, 1
  store i32 %i.mt, ptr %i.ao, align 4, !tbaa !74, !noalias !819
  store ptr %i.li, ptr %i.mp, align 8, !tbaa !39, !noalias !819
  %i.mu = load ptr, ptr %44, align 8, !tbaa !36, !noalias !819
  %.pre.i29.i = load i32, ptr %i.ao, align 4, !noalias !819 ; 2 uses
  br label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.an
  %i.mv = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %44, ptr noundef nonnull %i.li) #25, !noalias !819 ; 0 uses
  %.pre.i.i.i = load i8, ptr %i.ap, align 8, !tbaa !33, !range !34, !noalias !819
  %.pre.fr.i.i.i = freeze i8 %.pre.i.i.i          ; 2 uses
  %.pre5.i.i.i = load ptr, ptr %44, align 8, !noalias !819
  %i.mw = load i32, ptr %i.ao, align 4, !noalias !819 ; 2 uses
  %i.mx = load i32, ptr %i.an, align 8, !noalias !819
  br label %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i

_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i, %bb.ap, %_ZL11isPostIndexRN4llvm12MachineInstrE.exit.i.i, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.i.i
  %i.my = phi i8 [ %i.lj, %bb.am ], [ %i.lj, %bb.am ], [ %i.lj, %bb.am ], [ %i.lj, %_ZL11isPostIndexRN4llvm12MachineInstrE.exit.i.i ], [ %i.lj, %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.i.i ], [ %i.lj, %bb.am ], [ %i.lj, %bb.am ], [ %i.lj, %bb.am ], [ %i.lj, %bb.am ], [ %i.lj, %bb.am ], [ %i.lj, %bb.am ], [ %i.lj, %bb.am ], [ %i.lj, %bb.am ], [ %i.lj, %bb.am ], [ %i.lj, %bb.am ], [ %i.lj, %bb.am ], [ %i.lj, %bb.am ], [ %i.lj, %bb.am ], [ %i.lj, %bb.am ], [ %i.lj, %bb.am ], [ %i.lj, %bb.am ], [ %i.lj, %bb.am ], [ %i.lj, %bb.am ], [ %i.lj, %bb.am ], [ %i.lj, %bb.am ], [ %i.lj, %bb.am ], [ %i.lj, %bb.am ], [ %i.lj, %bb.am ], [ %i.lj, %bb.am ], [ %i.lj, %bb.am ], [ %i.lj, %bb.am ], [ %i.lj, %bb.am ], [ %.pre.fr.i.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i ], [ %i.lj, %bb.ap ], [ %i.lj, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.mz = phi i32 [ %i.lk, %bb.am ], [ %i.lk, %bb.am ], [ %i.lk, %bb.am ], [ %i.lk, %_ZL11isPostIndexRN4llvm12MachineInstrE.exit.i.i ], [ %i.lk, %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.i.i ], [ %i.lk, %bb.am ], [ %i.lk, %bb.am ], [ %i.lk, %bb.am ], [ %i.lk, %bb.am ], [ %i.lk, %bb.am ], [ %i.lk, %bb.am ], [ %i.lk, %bb.am ], [ %i.lk, %bb.am ], [ %i.lk, %bb.am ], [ %i.lk, %bb.am ], [ %i.lk, %bb.am ], [ %i.lk, %bb.am ], [ %i.lk, %bb.am ], [ %i.lk, %bb.am ], [ %i.lk, %bb.am ], [ %i.lk, %bb.am ], [ %i.lk, %bb.am ], [ %i.lk, %bb.am ], [ %i.lk, %bb.am ], [ %i.lk, %bb.am ], [ %i.lk, %bb.am ], [ %i.lk, %bb.am ], [ %i.lk, %bb.am ], [ %i.lk, %bb.am ], [ %i.lk, %bb.am ], [ %i.lk, %bb.am ], [ %i.lk, %bb.am ], [ %i.mw, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i ], [ %.pre.i29.i, %bb.ap ], [ %i.lk, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.na = phi i32 [ %i.ll, %bb.am ], [ %i.ll, %bb.am ], [ %i.ll, %bb.am ], [ %i.ll, %_ZL11isPostIndexRN4llvm12MachineInstrE.exit.i.i ], [ %i.ll, %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.i.i ], [ %i.ll, %bb.am ], [ %i.ll, %bb.am ], [ %i.ll, %bb.am ], [ %i.ll, %bb.am ], [ %i.ll, %bb.am ], [ %i.ll, %bb.am ], [ %i.ll, %bb.am ], [ %i.ll, %bb.am ], [ %i.ll, %bb.am ], [ %i.ll, %bb.am ], [ %i.ll, %bb.am ], [ %i.ll, %bb.am ], [ %i.ll, %bb.am ], [ %i.ll, %bb.am ], [ %i.ll, %bb.am ], [ %i.ll, %bb.am ], [ %i.ll, %bb.am ], [ %i.ll, %bb.am ], [ %i.ll, %bb.am ], [ %i.ll, %bb.am ], [ %i.ll, %bb.am ], [ %i.ll, %bb.am ], [ %i.ll, %bb.am ], [ %i.ll, %bb.am ], [ %i.ll, %bb.am ], [ %i.ll, %bb.am ], [ %i.ll, %bb.am ], [ %i.mx, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i ], [ %i.ll, %bb.ap ], [ %i.ll, %.lr.ph.i.i.i.i ]
  %i.nb = phi i32 [ %i.lm, %bb.am ], [ %i.lm, %bb.am ], [ %i.lm, %bb.am ], [ %i.lm, %_ZL11isPostIndexRN4llvm12MachineInstrE.exit.i.i ], [ %i.lm, %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.i.i ], [ %i.lm, %bb.am ], [ %i.lm, %bb.am ], [ %i.lm, %bb.am ], [ %i.lm, %bb.am ], [ %i.lm, %bb.am ], [ %i.lm, %bb.am ], [ %i.lm, %bb.am ], [ %i.lm, %bb.am ], [ %i.lm, %bb.am ], [ %i.lm, %bb.am ], [ %i.lm, %bb.am ], [ %i.lm, %bb.am ], [ %i.lm, %bb.am ], [ %i.lm, %bb.am ], [ %i.lm, %bb.am ], [ %i.lm, %bb.am ], [ %i.lm, %bb.am ], [ %i.lm, %bb.am ], [ %i.lm, %bb.am ], [ %i.lm, %bb.am ], [ %i.lm, %bb.am ], [ %i.lm, %bb.am ], [ %i.lm, %bb.am ], [ %i.lm, %bb.am ], [ %i.lm, %bb.am ], [ %i.lm, %bb.am ], [ %i.lm, %bb.am ], [ %i.mw, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i ], [ %.pre.i29.i, %bb.ap ], [ %i.lk, %.lr.ph.i.i.i.i ]
  %i.nc = phi ptr [ %i.ln, %bb.am ], [ %i.ln, %bb.am ], [ %i.ln, %bb.am ], [ %i.ln, %_ZL11isPostIndexRN4llvm12MachineInstrE.exit.i.i ], [ %i.ln, %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.i.i ], [ %i.ln, %bb.am ], [ %i.ln, %bb.am ], [ %i.ln, %bb.am ], [ %i.ln, %bb.am ], [ %i.ln, %bb.am ], [ %i.ln, %bb.am ], [ %i.ln, %bb.am ], [ %i.ln, %bb.am ], [ %i.ln, %bb.am ], [ %i.ln, %bb.am ], [ %i.ln, %bb.am ], [ %i.ln, %bb.am ], [ %i.ln, %bb.am ], [ %i.ln, %bb.am ], [ %i.ln, %bb.am ], [ %i.ln, %bb.am ], [ %i.ln, %bb.am ], [ %i.ln, %bb.am ], [ %i.ln, %bb.am ], [ %i.ln, %bb.am ], [ %i.ln, %bb.am ], [ %i.ln, %bb.am ], [ %i.ln, %bb.am ], [ %i.ln, %bb.am ], [ %i.ln, %bb.am ], [ %i.ln, %bb.am ], [ %i.ln, %bb.am ], [ %.pre5.i.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i ], [ %i.mu, %bb.ap ], [ %i.ln, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.nd = phi i8 [ %i.lo, %bb.am ], [ %i.lo, %bb.am ], [ %i.lo, %bb.am ], [ %i.lo, %_ZL11isPostIndexRN4llvm12MachineInstrE.exit.i.i ], [ %i.lo, %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.i.i ], [ %i.lo, %bb.am ], [ %i.lo, %bb.am ], [ %i.lo, %bb.am ], [ %i.lo, %bb.am ], [ %i.lo, %bb.am ], [ %i.lo, %bb.am ], [ %i.lo, %bb.am ], [ %i.lo, %bb.am ], [ %i.lo, %bb.am ], [ %i.lo, %bb.am ], [ %i.lo, %bb.am ], [ %i.lo, %bb.am ], [ %i.lo, %bb.am ], [ %i.lo, %bb.am ], [ %i.lo, %bb.am ], [ %i.lo, %bb.am ], [ %i.lo, %bb.am ], [ %i.lo, %bb.am ], [ %i.lo, %bb.am ], [ %i.lo, %bb.am ], [ %i.lo, %bb.am ], [ %i.lo, %bb.am ], [ %i.lo, %bb.am ], [ %i.lo, %bb.am ], [ %i.lo, %bb.am ], [ %i.lo, %bb.am ], [ %i.lo, %bb.am ], [ %.pre.fr.i.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i ], [ 1, %bb.ap ], [ 1, %.lr.ph.i.i.i.i ]
  %.1110.ph.i.i = phi ptr [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %_ZL11isPostIndexRN4llvm12MachineInstrE.exit.i.i ], [ %i.li, %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.i.i ], [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %bb.am ], [ %.0109387.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i ], [ %.0109387.i.i, %bb.ap ], [ %.0109387.i.i, %.lr.ph.i.i.i.i ] ; 9 uses
  %.3107.ph.i.i = phi ptr [ %i.li, %bb.am ], [ %i.li, %bb.am ], [ %i.li, %bb.am ], [ %.0104388.i.i, %_ZL11isPostIndexRN4llvm12MachineInstrE.exit.i.i ], [ %.0104388.i.i, %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.i.i ], [ %i.li, %bb.am ], [ %i.li, %bb.am ], [ %i.li, %bb.am ], [ %i.li, %bb.am ], [ %i.li, %bb.am ], [ %i.li, %bb.am ], [ %i.li, %bb.am ], [ %i.li, %bb.am ], [ %i.li, %bb.am ], [ %i.li, %bb.am ], [ %i.li, %bb.am ], [ %i.li, %bb.am ], [ %i.li, %bb.am ], [ %i.li, %bb.am ], [ %i.li, %bb.am ], [ %i.li, %bb.am ], [ %i.li, %bb.am ], [ %i.li, %bb.am ], [ %i.li, %bb.am ], [ %i.li, %bb.am ], [ %i.li, %bb.am ], [ %i.li, %bb.am ], [ %i.li, %bb.am ], [ %i.li, %bb.am ], [ %i.li, %bb.am ], [ %i.li, %bb.am ], [ %i.li, %bb.am ], [ %.0104388.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i ], [ %.0104388.i.i, %bb.ap ], [ %.0104388.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %.3101.ph.i.i = phi ptr [ %.098389.i.i, %bb.am ], [ %.098389.i.i, %bb.am ], [ %.098389.i.i, %bb.am ], [ %i.li, %_ZL11isPostIndexRN4llvm12MachineInstrE.exit.i.i ], [ %.098389.i.i, %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.i.i ], [ %.098389.i.i, %bb.am ], [ %.098389.i.i, %bb.am ], [ %.098389.i.i, %bb.am ], [ %.098389.i.i, %bb.am ], [ %.098389.i.i, %bb.am ], [ %.098389.i.i, %bb.am ], [ %.098389.i.i, %bb.am ], [ %.098389.i.i, %bb.am ], [ %.098389.i.i, %bb.am ], [ %.098389.i.i, %bb.am ], [ %.098389.i.i, %bb.am ], [ %.098389.i.i, %bb.am ], [ %.098389.i.i, %bb.am ], [ %.098389.i.i, %bb.am ], [ %.098389.i.i, %bb.am ], [ %.098389.i.i, %bb.am ], [ %.098389.i.i, %bb.am ], [ %.098389.i.i, %bb.am ], [ %.098389.i.i, %bb.am ], [ %.098389.i.i, %bb.am ], [ %.098389.i.i, %bb.am ], [ %.098389.i.i, %bb.am ], [ %.098389.i.i, %bb.am ], [ %.098389.i.i, %bb.am ], [ %.098389.i.i, %bb.am ], [ %.098389.i.i, %bb.am ], [ %.098389.i.i, %bb.am ], [ %.098389.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i ], [ %.098389.i.i, %bb.ap ], [ %.098389.i.i, %.lr.ph.i.i.i.i ] ; 9 uses
  %i.ne = load ptr, ptr %i.lp, align 8, !tbaa !433
  br label %.critedge2.i.i.i.i

.critedge2.i.i.i.i:                               ; preds = %.critedge2.i.i.i.i.backedge, %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i
  %.pn.i.i.i.i = phi ptr [ %.sroa.0317.0386.i.i, %_ZL10isPreIndexRN4llvm12MachineInstrE.exit.thread.i.i ], [ %storemerge.i.i.i.i, %.critedge2.i.i.i.i.backedge ]
  %storemerge.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 24
  %storemerge.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i, align 8, !tbaa !382 ; 5 uses
  %.not.i.i151.i.i = icmp eq ptr %storemerge.i.i.i.i, null
  br i1 %.not.i.i151.i.i, label %.critedge.i.i, label %bb.aq

bb.aq:                                            ; preds = %.critedge2.i.i.i.i
  %i.nf = load i32, ptr %storemerge.i.i.i.i, align 8
  %i.ng = and i32 %i.nf, -2130706432
  %or.cond.not.i.i.i.i = icmp eq i32 %i.ng, 0
  br i1 %or.cond.not.i.i.i.i, label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i.i.i, label %.critedge2.i.i.i.i.backedge

.critedge2.i.i.i.i.backedge:                      ; preds = %bb.aq, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i.i.i
  br label %.critedge2.i.i.i.i, !llvm.loop !665

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i.i.i: ; preds = %bb.aq
  %i.nh = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 8
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !433 ; 2 uses
  %i.nj = icmp eq ptr %i.ni, %i.ne
  br i1 %i.nj, label %.critedge2.i.i.i.i.backedge, label %.lr.ph.i.i, !llvm.loop !665

.critedge.i.i:                                    ; preds = %.critedge2.i.i.i.i
  %i.nk = icmp ne ptr %.3101.ph.i.i, null
  %i.nl = icmp ne ptr %.1110.ph.i.i, null         ; 2 uses
  %or.cond.i.i = and i1 %i.nl, %i.nk
  %.not128.i.i = icmp eq ptr %.3107.ph.i.i, null  ; 3 uses
  br i1 %or.cond.i.i, label %bb.ar, label %bb.bg

bb.ar:                                            ; preds = %.critedge.i.i
  br i1 %.not128.i.i, label %bb.as, label %.critedge.thread336.i.i

bb.as:                                            ; preds = %bb.ar
  %i.nm = getelementptr inbounds nuw i8, ptr %.3101.ph.i.i, i64 24 ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !462
  %i.no = getelementptr inbounds nuw i8, ptr %.1110.ph.i.i, i64 24
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !462
  %.not129.i.i = icmp eq ptr %i.nn, %i.np
  br i1 %.not129.i.i, label %bb.at, label %.critedge.thread336.i.i

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #25
  store i32 0, ptr %45, align 4, !tbaa !454
  %i.nq = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %.1110.ph.i.i, i32 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #25
  %.not360.i.i = icmp eq i32 %i.nq, -1
  br i1 %.not360.i.i, label %bb.au, label %.critedge138.i.i

bb.au:                                            ; preds = %bb.at
  %i.nr = call noundef i32 @_ZN4llvm17getInstrPredicateERKNS_12MachineInstrERNS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(80) %.1110.ph.i.i, ptr noundef nonnull align 4 dereferenceable(4) %45) #25
  %.not130.i.i = icmp eq i32 %i.nr, 14
  br i1 %.not130.i.i, label %bb.av, label %.critedge138.i.i

bb.av:                                            ; preds = %bb.au
  %i.ns = load ptr, ptr %i.z, align 8, !tbaa !450 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.1110.ph.i.i, i64 32 ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !381
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 4
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !382 ; 3 uses
  %i.nx = icmp slt i32 %i.nw, 0
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ns, i64 48
  %i.nz = and i32 %i.nw, 2147483647
  %i.oa = zext nneg i32 %i.nz to i64
  %i.ob = load ptr, ptr %i.ny, align 8
  %i.oc = getelementptr inbounds nuw [16 x i8], ptr %i.ob, i64 %i.oa
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ns, i64 312
  %i.of = zext nneg i32 %i.nw to i64
  %i.og = load ptr, ptr %i.oe, align 8
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.og, i64 %i.of
  %.0.in.i.i.i.i = select i1 %i.nx, ptr %i.od, ptr %i.oh
  %.0.i.i.i.i = load ptr, ptr %.0.in.i.i.i.i, align 8, !tbaa !818 ; 4 uses
  %.not.i.i.i55.i = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not.i.i.i55.i, label %.critedge136.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.oi = load i32, ptr %.0.i.i.i.i, align 8
  %i.oj = and i32 %i.oi, -2130706432
  %or.cond.not.i.i.i56.i = icmp eq i32 %i.oj, 0
  br i1 %or.cond.not.i.i.i56.i, label %.lr.ph394.i.i, label %.critedge2.i.i.i.i.i

.critedge2.i.i.i.i.i:                             ; preds = %bb.aw, %bb.ax
  %.pn.i.i.i.i.i = phi ptr [ %storemerge.i.i.i.i.i, %bb.ax ], [ %.0.i.i.i.i, %bb.aw ]
  %storemerge.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 24
  %storemerge.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i, align 8, !tbaa !382 ; 4 uses
  %.not.i.i.i.i57.i = icmp eq ptr %storemerge.i.i.i.i.i, null
  br i1 %.not.i.i.i.i57.i, label %.critedge136.i.i, label %bb.ax

bb.ax:                                            ; preds = %.critedge2.i.i.i.i.i
  %i.ok = load i32, ptr %storemerge.i.i.i.i.i, align 8
  %i.ol = and i32 %i.ok, -2130706432
  %or.cond.not.i.i.i.i58.i = icmp eq i32 %i.ol, 0
  br i1 %or.cond.not.i.i.i.i58.i, label %.lr.ph394.i.i, label %.critedge2.i.i.i.i.i, !llvm.loop !662

.lr.ph394.i.i:                                    ; preds = %bb.ax, %bb.aw
  %.sroa.0.0.i.i59.i = phi ptr [ %.0.i.i.i.i, %bb.aw ], [ %storemerge.i.i.i.i.i, %bb.ax ] ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i59.i, i64 8 ; 2 uses
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !433 ; 2 uses
  %i.oo = icmp eq ptr %i.on, %.3101.ph.i.i
  br i1 %i.oo, label %.critedge138.i.i, label %.lr.ph145.i

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EEppEv.exit164.i.loopexit.i: ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i163.i.i
  %i.op = getelementptr inbounds nuw i8, ptr %storemerge.i.i160.i.i, i64 8
  %i.oq = icmp eq ptr %i.pp, %.3101.ph.i.i
  br i1 %i.oq, label %.critedge138.i.i, label %.lr.ph145.i, !llvm.loop !665

.lr.ph145.i:                                      ; preds = %.lr.ph394.i.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EEppEv.exit164.i.loopexit.i
  %i.or = phi ptr [ %i.pp, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EEppEv.exit164.i.loopexit.i ], [ %i.on, %.lr.ph394.i.i ] ; 6 uses
  %i.os = phi ptr [ %i.op, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EEppEv.exit164.i.loopexit.i ], [ %i.om, %.lr.ph394.i.i ]
  %.sroa.0303.0393.i144.i = phi ptr [ %storemerge.i.i160.i.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EEppEv.exit164.i.loopexit.i ], [ %.sroa.0.0.i.i59.i, %.lr.ph394.i.i ]
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 52
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !379
  %.not131.i.i = icmp eq i32 %i.ou, 0
  br i1 %.not131.i.i, label %.critedge134.i.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph145.i
  %i.ov = load ptr, ptr %i.nm, align 8, !tbaa !462 ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.or, i64 24
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !462 ; 2 uses
  %.not.i.i26.i = icmp eq ptr %i.ov, %i.ox
  br i1 %.not.i.i26.i, label %bb.az, label %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit.i.i

bb.az:                                            ; preds = %bb.ay
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 56
  %.sroa.0.018.i.i.i = load ptr, ptr %i.oy, align 8, !tbaa !366 ; 2 uses
  %.not1419.i.i.i = icmp eq ptr %.sroa.0.018.i.i.i, %.3101.ph.i.i
  br i1 %.not1419.i.i.i, label %.critedge134.i.i, label %.lr.ph.i.i27.i

.lr.ph.i.i27.i:                                   ; preds = %bb.az, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i.i.i
  %.sroa.0.020.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i.i.i ], [ %.sroa.0.018.i.i.i, %bb.az ] ; 7 uses
  %.not15.not.i.i.i = icmp eq ptr %.sroa.0.020.i.i.i, %i.or
  br i1 %.not15.not.i.i.i, label %.critedge138.i.i, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i27.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.020.i.i.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.020.i.i.i, align 8
  %i.oz = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i155.i.i = icmp eq i64 %i.oz, 0
  br i1 %.not.i.i.i.i155.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i.i.i: ; preds = %bb.ba
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i.i, i64 44
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !380
  %i.pc = and i32 %i.pb, 8
  %.not34.i.i.i.i.i.i = icmp eq i32 %i.pc, 0
  br i1 %.not34.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i.i = phi ptr [ %i.pe, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i.i.i ], [ %.sroa.0.020.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i.i.i ]
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i, i64 8
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !366 ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 44
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !380
  %i.ph = and i32 %i.pg, 8
  %.not3.i.i.i.i.i.i = icmp eq i32 %i.ph, 0
  br i1 %.not3.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i.i.i, !llvm.loop !666

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i.i.i, %bb.ba
  %.sroa.0.1.i.i.i.i.i.i = phi ptr [ %.sroa.0.020.i.i.i, %bb.ba ], [ %.sroa.0.020.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i.i.i ], [ %i.pe, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i.i.i ]
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i.i, i64 8
  %.sroa.0.0.i.i.i = load ptr, ptr %i.pi, align 8, !tbaa !366 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i, %.3101.ph.i.i
  br i1 %.not14.i.i.i, label %.critedge134.i.i, label %.lr.ph.i.i27.i, !llvm.loop !667

_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit.i.i: ; preds = %bb.ay
  %i.pj = load ptr, ptr %i.g, align 8, !tbaa !809
  %i.pk = call noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE9dominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(204) %i.pj, ptr noundef %i.ov, ptr noundef %i.ox) #25
  br i1 %i.pk, label %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit..critedge134_crit_edge.i.i, label %.critedge138.i.i

_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit..critedge134_crit_edge.i.i: ; preds = %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit.i.i
  %.pre420.i.i = load ptr, ptr %i.os, align 8, !tbaa !433
  br label %.critedge134.i.i

.critedge134.i.i:                                 ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i.i.i, %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit..critedge134_crit_edge.i.i, %bb.az, %.lr.ph145.i
  %i.pl = phi ptr [ %.pre420.i.i, %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit..critedge134_crit_edge.i.i ], [ %i.or, %.lr.ph145.i ], [ %i.or, %bb.az ], [ %i.or, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i.i.i ]
  br label %.critedge2.i.i157.i.i

.critedge2.i.i157.i.i:                            ; preds = %.critedge2.i.i157.i.i.backedge, %.critedge134.i.i
  %.pn.i.i158.i.i = phi ptr [ %.sroa.0303.0393.i144.i, %.critedge134.i.i ], [ %storemerge.i.i160.i.i, %.critedge2.i.i157.i.i.backedge ]
  %storemerge.in.i.i159.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i158.i.i, i64 24
  %storemerge.i.i160.i.i = load ptr, ptr %storemerge.in.i.i159.i.i, align 8, !tbaa !382 ; 6 uses
  %.not.i.i161.i.i = icmp eq ptr %storemerge.i.i160.i.i, null
  br i1 %.not.i.i161.i.i, label %.critedge136.i.i, label %bb.bb

bb.bb:                                            ; preds = %.critedge2.i.i157.i.i
  %i.pm = load i32, ptr %storemerge.i.i160.i.i, align 8
  %i.pn = and i32 %i.pm, -2130706432
  %or.cond.not.i.i162.i.i = icmp eq i32 %i.pn, 0
  br i1 %or.cond.not.i.i162.i.i, label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i163.i.i, label %.critedge2.i.i157.i.i.backedge

.critedge2.i.i157.i.i.backedge:                   ; preds = %bb.bb, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i163.i.i
  br label %.critedge2.i.i157.i.i, !llvm.loop !665

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i163.i.i: ; preds = %bb.bb
  %i.po = getelementptr inbounds nuw i8, ptr %storemerge.i.i160.i.i, i64 8
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !433 ; 3 uses
  %i.pq = icmp eq ptr %i.pp, %i.pl
  br i1 %i.pq, label %.critedge2.i.i157.i.i.backedge, label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EEppEv.exit164.i.loopexit.i

.critedge136.i.i:                                 ; preds = %.critedge2.i.i.i.i.i, %.critedge2.i.i157.i.i, %bb.av
  %i.pr = getelementptr inbounds nuw i8, ptr %.1110.ph.i.i, i64 52
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !379
  switch i32 %i.ps, label %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.i [
    i32 4049, label %bb.be
    i32 4383, label %bb.bc
    i32 4384, label %bb.bc
    i32 4518, label %bb.bd
    i32 4519, label %bb.bd
  ]

bb.bc:                                            ; preds = %.critedge136.i.i, %.critedge136.i.i
  br label %bb.be

bb.bd:                                            ; preds = %.critedge136.i.i, %.critedge136.i.i
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %.critedge136.i.i
  %.04.i.i = phi i64 [ -1, %bb.bd ], [ -1, %bb.bc ], [ 1, %.critedge136.i.i ]
  %.0.i54.i = phi i64 [ 3, %bb.bd ], [ 2, %bb.bc ], [ 2, %.critedge136.i.i ]
  %i.pt = load ptr, ptr %i.nt, align 8, !tbaa !381
  %i.pu = getelementptr inbounds nuw [32 x i8], ptr %i.pt, i64 %.0.i54.i
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !382
  %i.px = mul nsw i64 %i.pw, %.04.i.i
  %i.py = trunc i64 %i.px to i32
  br label %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.i

_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.i: ; preds = %bb.be, %.critedge136.i.i
  %.05.i.i = phi i32 [ %i.py, %bb.be ], [ 0, %.critedge136.i.i ] ; 14 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %.3101.ph.i.i, i64 52
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !379
  %i.qb = icmp sgt i32 %.05.i.i, 0
  %i.qc = zext i1 %i.qb to i32
  %i.qd = call fastcc noundef i32 @_ZL29getPostIndexedLoadStoreOpcodejN4llvm6ARM_AM7AddrOpcE(i32 noundef %i.qa, i32 noundef %i.qc)
  %i.qe = load ptr, ptr %i.q, align 8, !tbaa !447
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !386
  %i.qh = zext nneg i32 %i.qd to i64
  %i.qi = sub nsw i64 0, %i.qh
  %i.qj = getelementptr inbounds [32 x i8], ptr %i.qg, i64 %i.qi
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 24
  %i.ql = load i64, ptr %i.qk, align 8, !tbaa !464
  %i.qm = trunc i64 %i.ql to i32
  %i.qn = and i32 %i.qm, 31
  switch i32 %i.qn, label %bb.bf [
    i32 23, label %.split.i
    i32 22, label %_ZN4llvm17isLegalAddressImmEjiPKNS_15TargetInstrInfoE.exit.i
    i32 21, label %.split99.i
    i32 12, label %.split98.i
    i32 13, label %.split97.i
    i32 14, label %.split96.i
    i32 17, label %.split95.i
    i32 11, label %.split94.i
    i32 2, label %.split93.i
  ]

.split.i:                                         ; preds = %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.i
  %i.qo = add i32 %.05.i.i, 127
  %i.qp = icmp ult i32 %i.qo, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25
  br i1 %i.qp, label %.critedge136._crit_edge.i.i, label %.critedge.thread336.i.i

.split99.i:                                       ; preds = %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.i
  %i.qq = add i32 %.05.i.i, 511
  %i.qr = icmp ult i32 %i.qq, 1023
  %i.qs = and i32 %.05.i.i, 3
  %i.qt = icmp eq i32 %i.qs, 0
  %i.qu = and i1 %i.qr, %i.qt
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25
  br i1 %i.qu, label %.critedge136._crit_edge.i.i, label %.critedge.thread336.i.i

.split98.i:                                       ; preds = %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.i
  %i.qv = add i32 %.05.i.i, 255
  %i.qw = icmp ult i32 %i.qv, 511
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25
  br i1 %i.qw, label %.critedge136._crit_edge.i.i, label %.critedge.thread336.i.i

.split97.i:                                       ; preds = %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.i
  %i.qx = icmp ult i32 %.05.i.i, 256
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25
  br i1 %i.qx, label %.critedge136._crit_edge.i.i, label %.critedge.thread336.i.i

.split96.i:                                       ; preds = %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.i
  %i.qy = icmp ugt i32 %.05.i.i, -256
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25
  br i1 %i.qy, label %.critedge136._crit_edge.i.i, label %.critedge.thread336.i.i

.split95.i:                                       ; preds = %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.i
  %i.qz = add i32 %.05.i.i, 1023
  %i.ra = icmp ult i32 %i.qz, 2047
  %i.rb = and i32 %.05.i.i, 3
  %i.rc = icmp eq i32 %i.rb, 0
  %i.rd = and i1 %i.ra, %i.rc
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25
  br i1 %i.rd, label %.critedge136._crit_edge.i.i, label %.critedge.thread336.i.i

.split94.i:                                       ; preds = %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.i
  %i.re = icmp ult i32 %.05.i.i, 4096
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25
  br i1 %i.re, label %.critedge136._crit_edge.i.i, label %.critedge.thread336.i.i

.split93.i:                                       ; preds = %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.i
  %i.rf = add i32 %.05.i.i, 4095
  %i.rg = icmp ult i32 %i.rf, 8191
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25
  br i1 %i.rg, label %.critedge136._crit_edge.i.i, label %.critedge.thread336.i.i

bb.bf:                                            ; preds = %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.i
  unreachable

_ZN4llvm17isLegalAddressImmEjiPKNS_15TargetInstrInfoE.exit.i: ; preds = %_ZN4llvm18getAddSubImmediateERNS_12MachineInstrE.exit.i
  %i.rh = add i32 %.05.i.i, 255
  %i.ri = icmp ult i32 %i.rh, 511
  %i.rj = and i32 %.05.i.i, 1
  %i.rk = icmp eq i32 %i.rj, 0
  %i.rl = and i1 %i.ri, %i.rk
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25
  br i1 %i.rl, label %.critedge136._crit_edge.i.i, label %.critedge.thread336.i.i

.critedge136._crit_edge.i.i:                      ; preds = %_ZN4llvm17isLegalAddressImmEjiPKNS_15TargetInstrInfoE.exit.i, %.split93.i, %.split94.i, %.split95.i, %.split96.i, %.split97.i, %.split98.i, %.split99.i, %.split.i
  %.pre421.i.i = load ptr, ptr %44, align 8, !tbaa !36
  %.pre422.i.i = load i32, ptr %i.ao, align 4
  %.pre185.i = load i8, ptr %i.ap, align 8, !tbaa !33, !range !34
  br label %bb.bi

bb.bg:                                            ; preds = %.critedge.i.i
  %brmerge.i.i = or i1 %i.nl, %.not128.i.i
  br i1 %brmerge.i.i, label %.critedge.thread336.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.rm = getelementptr i8, ptr %.3107.ph.i.i, i64 52
  %.4108.val.i.i = load i32, ptr %i.rm, align 4, !tbaa !379
  %i.rn = call fastcc noundef i32 @_ZL19getBaseOperandIndexRN4llvm12MachineInstrE(i32 %.4108.val.i.i)
  %i.ro = getelementptr inbounds nuw i8, ptr %.3107.ph.i.i, i64 32
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !381 ; 2 uses
  %i.rq = sext i32 %i.rn to i64
  %i.rr = getelementptr [32 x i8], ptr %i.rp, i64 %i.rq
  %i.rs = getelementptr i8, ptr %i.rr, i64 48
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !382
  %i.ru = trunc i64 %i.rt to i32
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rp, i64 4
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !382
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.critedge136._crit_edge.i.i
  %i.rx = phi i8 [ %.pre185.i, %.critedge136._crit_edge.i.i ], [ %i.my, %bb.bh ]
  %i.ry = phi i32 [ %.pre422.i.i, %.critedge136._crit_edge.i.i ], [ %i.mz, %bb.bh ]
  %i.rz = phi ptr [ %.pre421.i.i, %.critedge136._crit_edge.i.i ], [ %i.nc, %bb.bh ] ; 4 uses
  %.sroa.0309.0.i.i = phi i32 [ 0, %.critedge136._crit_edge.i.i ], [ %i.rw, %bb.bh ]
  %.1123.i.i = phi i32 [ %.05.i.i, %.critedge136._crit_edge.i.i ], [ %i.ru, %bb.bh ] ; 6 uses
  %.5103.i.i = phi ptr [ %.3101.ph.i.i, %.critedge136._crit_edge.i.i ], [ %.3107.ph.i.i, %bb.bh ] ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #25
  store ptr %i.aq, ptr %46, align 8, !tbaa !36
  store i32 4, ptr %i.ar, align 8, !tbaa !73
  store i32 0, ptr %i.as, align 4, !tbaa !74
  store i8 1, ptr %i.at, align 8, !tbaa !33
  %i.sa = trunc nuw i8 %i.rx to i1
  %i.sb = load i32, ptr %i.an, align 8
  %.v.v.i.i.i.i.i = select i1 %i.sa, i32 %i.ry, i32 %i.sb ; 2 uses
  %.v.i.i.i165.i.i = zext i32 %.v.v.i.i.i.i.i to i64 ; 2 uses
  %.idx.i.i25.i = shl nuw nsw i64 %.v.i.i.i165.i.i, 3
  %i.sc = getelementptr i8, ptr %i.rz, i64 %.idx.i.i25.i ; 4 uses
  %.not1.i.i.i.i.i166.i.i = icmp eq i32 %.v.v.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i166.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5beginEv.exit.i.i, label %.lr.ph.i.i.i.i.i167.i.i

.lr.ph.i.i.i.i.i167.i.i:                          ; preds = %bb.bi, %bb.bj
  %.sroa.0.0.i.i168.i.i = phi ptr [ %i.sf, %bb.bj ], [ %i.rz, %bb.bi ] ; 3 uses
  %i.sd = load ptr, ptr %.sroa.0.0.i.i168.i.i, align 8, !tbaa !39
  %i.se = icmp eq ptr %i.sd, inttoptr (i64 -1 to ptr)
  br i1 %i.se, label %bb.bj, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5beginEv.exit.i.i

bb.bj:                                            ; preds = %.lr.ph.i.i.i.i.i167.i.i
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i168.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i172.i.i = icmp eq ptr %i.sf, %i.sc
  br i1 %.not.i.i.i.i.i172.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5beginEv.exit.i.i, label %.lr.ph.i.i.i.i.i167.i.i, !llvm.loop !5

_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5beginEv.exit.i.i: ; preds = %bb.bj, %.lr.ph.i.i.i.i.i167.i.i, %bb.bi
  %.sroa.0.1.i.i169.i.i = phi ptr [ %i.rz, %bb.bi ], [ %.sroa.0.0.i.i168.i.i, %.lr.ph.i.i.i.i.i167.i.i ], [ %i.sc, %bb.bj ] ; 2 uses
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %.v.i.i.i165.i.i ; 2 uses
  %.not362395.i.i = icmp eq ptr %.sroa.0.1.i.i169.i.i, %i.sg
  br i1 %.not362395.i.i, label %.critedge142.thread.i.i, label %.lr.ph398.i.i

.lr.ph398.i.i:                                    ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5beginEv.exit.i.i
  %i.sh = getelementptr inbounds nuw i8, ptr %.5103.i.i, i64 24 ; 2 uses
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN4llvm19SmallPtrSetIteratorIPNS_12MachineInstrEEppEv.exit.i.i, %.lr.ph398.i.i
  %.sroa.0298.0397.i.i = phi ptr [ %.sroa.0.1.i.i169.i.i, %.lr.ph398.i.i ], [ %.sroa.0298.2.i.i, %_ZN4llvm19SmallPtrSetIteratorIPNS_12MachineInstrEEppEv.exit.i.i ] ; 2 uses
  %.0396.i.i = phi i32 [ -1, %.lr.ph398.i.i ], [ %.1.i.i, %_ZN4llvm19SmallPtrSetIteratorIPNS_12MachineInstrEEppEv.exit.i.i ] ; 13 uses
  %i.si = load ptr, ptr %.sroa.0298.0397.i.i, align 8, !tbaa !39 ; 9 uses
  %i.sj = load ptr, ptr %i.sh, align 8, !tbaa !462 ; 4 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.si, i64 24 ; 2 uses
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !462 ; 3 uses
  %.not.i175.i.i = icmp eq ptr %i.sj, %i.sl
  br i1 %.not.i175.i.i, label %bb.bl, label %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit193.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 56
  %.sroa.0.018.i177.i.i = load ptr, ptr %i.sm, align 8, !tbaa !366 ; 2 uses
  %.not1419.i178.i.i = icmp eq ptr %.sroa.0.018.i177.i.i, %.5103.i.i
  br i1 %.not1419.i178.i.i, label %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit193.thread.i.i, label %.lr.ph.i179.i.i

.lr.ph.i179.i.i:                                  ; preds = %bb.bl, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i184.i.i
  %.sroa.0.020.i180.i.i = phi ptr [ %.sroa.0.0.i186.i.i, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i184.i.i ], [ %.sroa.0.018.i177.i.i, %bb.bl ] ; 7 uses
  %.not15.not.i181.i.i = icmp eq ptr %.sroa.0.020.i180.i.i, %i.si
  br i1 %.not15.not.i181.i.i, label %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit193.thread345.i.i, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i179.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.020.i180.i.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i182.i.i = load i64, ptr %.sroa.0.020.i180.i.i, align 8
  %i.sn = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i182.i.i, 4
  %.not.i.i.i.i183.i.i = icmp eq i64 %i.sn, 0
  br i1 %.not.i.i.i.i183.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i188.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i184.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i188.i.i: ; preds = %bb.bm
  %i.so = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i180.i.i, i64 44
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !380
  %i.sq = and i32 %i.sp, 8
  %.not34.i.i.i.i189.i.i = icmp eq i32 %i.sq, 0
  br i1 %.not34.i.i.i.i189.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i184.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i190.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i190.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i188.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i190.i.i
  %.sroa.0.05.i.i.i.i191.i.i = phi ptr [ %i.ss, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i190.i.i ], [ %.sroa.0.020.i180.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i188.i.i ]
  %i.sr = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i191.i.i, i64 8
end_hunk_0
begin_hunk_1_@_ZL15findIncDecAfterN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8RegisterENS_5ARMCC9CondCodesES3_RiPKNS_18TargetRegisterInfoE:bb.a
  %.sroa.0.05.i.i.i = phi ptr [ %i.al, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ], [ %.sroa.0.154, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !366 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 44
  %i.an = load i32, ptr %i.am, align 4, !tbaa !380
  %i.ao = and i32 %i.an, 8
  %.not3.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, !llvm.loop !3

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, %bb.d, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.0.154, %bb.d ], [ %.sroa.0.154, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ], [ %i.al, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !366 ; 3 uses
  %.not47 = icmp eq ptr %i.aq, %i.c
  br i1 %.not47, label %.critedge, label %.preheader.backedge

.preheader.backedge:                              ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %.sroa.0.154.be = phi ptr [ %i.aq, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %i.bf, %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit ]
  br label %.preheader, !llvm.loop !1315

.critedge:                                        ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, %.preheader
  %.sroa.0.1.lcssa = phi ptr [ %i.aq, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %.sroa.0.154, %.preheader ] ; 10 uses
  %i.ar = icmp eq ptr %.sroa.0.1.lcssa, %i.c
  br i1 %i.ar, label %.thread, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.as = tail call fastcc noundef i32 @_ZL22isIncrementOrDecrementRKN4llvm12MachineInstrENS_8RegisterENS_5ARMCC9CondCodesES3_(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.1.lcssa, i32 %.fr60, i32 noundef %2, i32 %3) ; 2 uses
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %bb.f, label %.split.us

.split.us:                                        ; preds = %bb.e, %bb.c
  %.us-phi = phi i32 [ %i.ad, %bb.c ], [ %i.as, %bb.e ]
  %.us-phi59 = phi ptr [ %.sroa.0.1.lcssa.us, %bb.c ], [ %.sroa.0.1.lcssa, %bb.e ]
  store i32 %.us-phi, ptr %4, align 4, !tbaa !459
  br label %.thread

bb.f:                                             ; preds = %bb.e
  %i.at = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.1.lcssa, i32 %.fr60, ptr noundef %5, i1 noundef zeroext false) #25
  %.not48 = icmp eq i32 %i.at, -1
  br i1 %.not48, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.au = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.1.lcssa, i32 %.fr60, ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext false) #25
  %.not49 = icmp eq i32 %i.au, -1
  br i1 %.not49, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %.0.copyload.i.i.i.i.i.i.i.i.i19 = load i64, ptr %.sroa.0.1.lcssa, align 8
  %i.av = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i19, 4
  %.not.i.i.i20 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i20, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i22, label %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i22: ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.1.lcssa, i64 44
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !380
  %i.ay = and i32 %i.ax, 8
  %.not34.i.i.i23 = icmp eq i32 %i.ay, 0
  br i1 %.not34.i.i.i23, label %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i24

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i24: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i22, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i24
  %.sroa.0.05.i.i.i25 = phi ptr [ %i.ba, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i24 ], [ %.sroa.0.1.lcssa, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i22 ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i25, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !366 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 44
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !380
  %i.bd = and i32 %i.bc, 8
  %.not3.i.i.i26 = icmp eq i32 %i.bd, 0
  br i1 %.not3.i.i.i26, label %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i24, !llvm.loop !3

_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i24, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i22, %bb.h
  %.sroa.0.1.i.i.i21 = phi ptr [ %.sroa.0.1.lcssa, %bb.h ], [ %.sroa.0.1.lcssa, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i22 ], [ %i.ba, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i24 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i21, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !366 ; 2 uses
  %.not46 = icmp eq ptr %i.bf, %i.c
  br i1 %.not46, label %.thread, label %.preheader.backedge

.thread:                                          ; preds = %.critedge, %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, %bb.g, %bb.f, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, %.critedge.us, %bb.c, %.split.us
  %.sroa.013.2 = phi ptr [ %.us-phi59, %.split.us ], [ %i.c, %bb.c ], [ %i.c, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ], [ %i.c, %.critedge.us ], [ %i.c, %bb.f ], [ %i.c, %bb.g ], [ %i.c, %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit ], [ %i.c, %.critedge ]
  ret ptr %.sroa.013.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm17isLegalAddressImmEjiPKNS_15TargetInstrInfoE(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !386
  %i.c = zext i32 %0 to i64
  %i.d = sub nsw i64 0, %i.c
  %i.e = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !464
  %i.h = trunc i64 %i.g to i32
  %i.i = and i32 %i.h, 31
  switch i32 %i.i, label %bb.k [
    i32 23, label %bb.b
    i32 22, label %bb.c
    i32 21, label %bb.d
    i32 12, label %bb.e
    i32 13, label %bb.f
    i32 14, label %bb.g
    i32 17, label %bb.h
    i32 11, label %bb.i
    i32 2, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = add i32 %1, 127
  %i.k = icmp ult i32 %i.j, 255
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.l = add i32 %1, 255
  %i.m = icmp ult i32 %i.l, 511
  %i.n = and i32 %1, 1
  %i.o = icmp eq i32 %i.n, 0
  %i.p = and i1 %i.m, %i.o
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.q = add i32 %1, 511
  %i.r = icmp ult i32 %i.q, 1023
  %i.s = and i32 %1, 3
  %i.t = icmp eq i32 %i.s, 0
  %i.u = and i1 %i.r, %i.t
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.v = add i32 %1, 255
  %i.w = icmp ult i32 %i.v, 511
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.x = icmp ult i32 %1, 256
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.y = icmp ugt i32 %1, -256
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.z = add i32 %1, 1023
  %i.aa = icmp ult i32 %i.z, 2047
  %i.ab = and i32 %1, 3
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = and i1 %i.aa, %i.ac
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.ae = icmp ult i32 %1, 4096
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %i.af = add i32 %1, 4095
  %i.ag = icmp ult i32 %i.af, 8191
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ %i.k, %bb.b ], [ %i.p, %bb.c ], [ %i.u, %bb.d ], [ %i.w, %bb.e ], [ %i.x, %bb.f ], [ %i.y, %bb.g ], [ %i.ad, %bb.h ], [ %i.ae, %bb.i ], [ %i.ag, %bb.j ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZL22isIncrementOrDecrementRKN4llvm12MachineInstrENS_8RegisterENS_5ARMCC9CondCodesES3_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 %1, i32 noundef %2, i32 %3) unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.llvm::Register", align 4    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !379
  switch i32 %i.b, label %bb.m [
    i32 4446, label %bb.g
    i32 4519, label %bb.b
    i32 4383, label %bb.c
    i32 4387, label %bb.c
    i32 2055, label %bb.c
    i32 4049, label %bb.d
    i32 4053, label %bb.d
    i32 817, label %bb.d
    i32 4450, label %bb.e
    i32 4521, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.g

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  br label %bb.g

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.09 = phi i1 [ false, %bb.f ], [ true, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.a ]
  %.0 = phi i64 [ -4, %bb.f ], [ -4, %bb.b ], [ -1, %bb.c ], [ 1, %bb.d ], [ 4, %bb.e ], [ 4, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store i32 0, ptr %4, align 4, !tbaa !454
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !381  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !382
  %.not18 = icmp eq i32 %i.f, %1
  br i1 %.not18, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !382
  %.not19 = icmp eq i32 %i.h, %1
  br i1 %.not19, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.i = call noundef i32 @_ZN4llvm17getInstrPredicateERKNS_12MachineInstrERNS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(4) %4) #25
  %.not = icmp ne i32 %i.i, %2
  %i.j = load i32, ptr %4, align 4
  %i.k = icmp ne i32 %i.j, %3
  %or.cond = select i1 %.not, i1 true, i1 %i.k
  br i1 %or.cond, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !381 ; 3 uses
  br i1 %.09, label %bb.k, label %_ZL11definesCPSRRKN4llvm12MachineInstrE.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val11 = load i24, ptr %i.l, align 8           ; 2 uses
  %i.m = zext i24 %.val11 to i64
  %.idx.i = shl nuw nsw i64 %i.m, 5
  %i.n = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.i
  %.not8.not.i = icmp eq i24 %.val11, 0
  br i1 %.not8.not.i, label %_ZL11definesCPSRRKN4llvm12MachineInstrE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.critedge.i
  %.0139.i = phi ptr [ %i.v, %.critedge.i ], [ %.pre, %bb.k ] ; 3 uses
  %i.o = load i32, ptr %.0139.i, align 8          ; 2 uses
  %i.p = and i32 %i.o, 16777471
  %or.cond.i = icmp eq i32 %i.p, 16777216
  br i1 %or.cond.i, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0139.i, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !382
  %i.s = icmp ne i32 %i.r, 3
  %i.t = and i32 %i.o, 83886080
  %i.u = icmp eq i32 %i.t, 83886080
  %or.cond7.i = or i1 %i.u, %i.s
  br i1 %or.cond7.i, label %.critedge.i, label %.critedge

.critedge.i:                                      ; preds = %bb.l, %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0139.i, i64 32 ; 2 uses
  %.not.not.i = icmp eq ptr %i.v, %i.n
  br i1 %.not.not.i, label %_ZL11definesCPSRRKN4llvm12MachineInstrE.exit.thread, label %.lr.ph.i

_ZL11definesCPSRRKN4llvm12MachineInstrE.exit.thread: ; preds = %.critedge.i, %bb.k, %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %.pre, i64 80
  %i.x = load i64, ptr %i.w, align 8, !tbaa !382
  %i.y = mul nsw i64 %i.x, %.0
  %i.z = trunc i64 %i.y to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.i, %bb.h, %bb.g, %_ZL11definesCPSRRKN4llvm12MachineInstrE.exit.thread
  %.010 = phi i32 [ %i.z, %_ZL11definesCPSRRKN4llvm12MachineInstrE.exit.thread ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %.critedge
  %.1 = phi i32 [ %.010, %.critedge ], [ 0, %bb.a ]
  ret i32 %.1
}

declare void @_ZN4llvm12MachineInstr10setMemRefsERNS_15MachineFunctionENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 990, 4378) i32 @_ZL29getPostIndexedLoadStoreOpcodejN4llvm6ARM_AM7AddrOpcE(i32 noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #7 {
bb.a:
  switch i32 %0, label %bb.ad [
    i32 995, label %bb.ae
    i32 2053, label %bb.b
    i32 2911, label %bb.c
    i32 2909, label %bb.d
    i32 3900, label %bb.e
    i32 3898, label %bb.f
    i32 4185, label %bb.g
    i32 4184, label %bb.g
    i32 4150, label %bb.h
    i32 4149, label %bb.h
    i32 4171, label %bb.i
    i32 4170, label %bb.i
    i32 4164, label %bb.j
    i32 4163, label %bb.j
    i32 4178, label %bb.k
    i32 4177, label %bb.k
    i32 4380, label %bb.l
    i32 4379, label %bb.l
    i32 4361, label %bb.m
    i32 4360, label %bb.m
    i32 4374, label %bb.n
    i32 4373, label %bb.n
    i32 1263, label %bb.o
    i32 1267, label %bb.p
    i32 1271, label %bb.q
    i32 1275, label %bb.r
    i32 1287, label %bb.s
    i32 1297, label %bb.t
    i32 1279, label %bb.u
    i32 1292, label %bb.v
    i32 1302, label %bb.w
    i32 1816, label %bb.x
    i32 1820, label %bb.y
    i32 1834, label %bb.z
    i32 1825, label %bb.aa
    i32 1839, label %bb.ab
    i32 1846, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  %.not8 = icmp eq i32 %1, 0
  %i.a = select i1 %.not8, i32 2906, i32 2908
  br label %bb.ae

bb.d:                                             ; preds = %bb.a
  %.not7 = icmp eq i32 %1, 0
  %i.b = select i1 %.not7, i32 2902, i32 2904
  br label %bb.ae

bb.e:                                             ; preds = %bb.a
  %.not6 = icmp eq i32 %1, 0
  %i.c = select i1 %.not6, i32 3895, i32 3897
  br label %bb.ae

bb.f:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  %i.d = select i1 %.not, i32 3891, i32 3893
  br label %bb.ae

bb.g:                                             ; preds = %bb.a, %bb.a
  br label %bb.ae

bb.h:                                             ; preds = %bb.a, %bb.a
  br label %bb.ae

bb.i:                                             ; preds = %bb.a, %bb.a
  br label %bb.ae

bb.j:                                             ; preds = %bb.a, %bb.a
  br label %bb.ae

bb.k:                                             ; preds = %bb.a, %bb.a
  br label %bb.ae

bb.l:                                             ; preds = %bb.a, %bb.a
  br label %bb.ae

bb.m:                                             ; preds = %bb.a, %bb.a
  br label %bb.ae

bb.n:                                             ; preds = %bb.a, %bb.a
  br label %bb.ae

bb.o:                                             ; preds = %bb.a
  br label %bb.ae

bb.p:                                             ; preds = %bb.a
  br label %bb.ae

bb.q:                                             ; preds = %bb.a
  br label %bb.ae

bb.r:                                             ; preds = %bb.a
  br label %bb.ae

bb.s:                                             ; preds = %bb.a
  br label %bb.ae

bb.t:                                             ; preds = %bb.a
  br label %bb.ae

bb.u:                                             ; preds = %bb.a
  br label %bb.ae

bb.v:                                             ; preds = %bb.a
  br label %bb.ae

bb.w:                                             ; preds = %bb.a
  br label %bb.ae

bb.x:                                             ; preds = %bb.a
  br label %bb.ae

bb.y:                                             ; preds = %bb.a
  br label %bb.ae

bb.z:                                             ; preds = %bb.a
  br label %bb.ae

bb.aa:                                            ; preds = %bb.a
  br label %bb.ae

bb.ab:                                            ; preds = %bb.a
  br label %bb.ae

bb.ac:                                            ; preds = %bb.a
  br label %bb.ae

bb.ad:                                            ; preds = %bb.a
  unreachable

bb.ae:                                            ; preds = %bb.a, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 1847, %bb.ac ], [ 2049, %bb.b ], [ %i.a, %bb.c ], [ %i.b, %bb.d ], [ %i.c, %bb.e ], [ %i.d, %bb.f ], [ 4182, %bb.g ], [ 4147, %bb.h ], [ 4168, %bb.i ], [ 4161, %bb.j ], [ 4175, %bb.k ], [ 4377, %bb.l ], [ 4358, %bb.m ], [ 4371, %bb.n ], [ 1264, %bb.o ], [ 1268, %bb.p ], [ 1272, %bb.q ], [ 1276, %bb.r ], [ 1288, %bb.s ], [ 1298, %bb.t ], [ 1280, %bb.u ], [ 1293, %bb.v ], [ 1303, %bb.w ], [ 1817, %bb.x ], [ 1821, %bb.y ], [ 1835, %bb.z ], [ 1826, %bb.aa ], [ 1840, %bb.ab ], [ 990, %bb.a ]
  ret i32 %.0
}

declare ptr @_ZN4llvm17MachineBasicBlock20getLastNonDebugInstrEb(ptr noundef nonnull align 8 dereferenceable(360), i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32), i32) local_unnamed_addr #5

declare void @_ZN4llvm12MachineInstr15copyImplicitOpsERNS_15MachineFunctionERKS0_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

declare ptr @_ZN4llvm17MachineBasicBlock18getFirstTerminatorEv(ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #5

declare { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17RegisterClassInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !495  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #28
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit
  tail call void @free(ptr noundef %i.d) #25
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN4llvm9BitVectorD2Ev.exit1, label %bb.c

end_hunk_1

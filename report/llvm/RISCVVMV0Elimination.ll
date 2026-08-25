Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVVMV0Elimination?download=true
inline.NumInlined: 364
inline.NumDeleted: 271
begin_hunk_0_@_ZN4llvm30createRISCVVMV0EliminationPassEv:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN12_GLOBAL__N_120RISCVVMV0EliminationE, i64 16), ptr %i.a, align 8, !tbaa !29
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_120RISCVVMV0EliminationEEEPNS_4PassEv() #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #16 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_120RISCVVMV0Elimination2IDE, ptr %i.c, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.d, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN12_GLOBAL__N_120RISCVVMV0EliminationE, i64 16), ptr %i.a, align 8, !tbaa !29
  ret ptr %i.a
}

declare void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120RISCVVMV0EliminationD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #17
  ret void
}

declare { ptr, i64 } @_ZNK4llvm4Pass11getPassNameEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm19MachineFunctionPass16doInitializationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i64 %i.c(ptr noundef nonnull align 8 dereferenceable(56) %0) #14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.d, ptr %i.e, align 8
  %i.f = load ptr, ptr %0, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i64 %i.h(ptr noundef nonnull align 8 dereferenceable(56) %0) #14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.i, ptr %i.j, align 8
  %i.k = load ptr, ptr %0, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i64 %i.m(ptr noundef nonnull align 8 dereferenceable(56) %0) #14
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.n, ptr %i.o, align 8
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #3

declare noundef ptr @_ZNK4llvm19MachineFunctionPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

declare void @_ZN4llvm12FunctionPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #3

declare void @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1) unnamed_addr #3

declare noundef i32 @_ZNK4llvm12FunctionPass27getPotentialPassManagerTypeEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_120RISCVVMV0Elimination16getAnalysisUsageERN4llvm13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm13AnalysisUsage15setPreservesCFGEv(ptr noundef nonnull align 8 dereferenceable(161) %1) #14
  tail call void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) #14
  ret void
}

declare void @_ZN4llvm4Pass13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare noundef ptr @_ZN4llvm4Pass18getAsImmutablePassEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare noundef ptr @_ZN4llvm4Pass18getAsPMDataManagerEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare void @_ZNK4llvm4Pass14verifyAnalysisEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare void @_ZN4llvm4Pass17dumpPassStructureEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) unnamed_addr #3

declare noundef zeroext i1 @_ZN4llvm19MachineFunctionPass13runOnFunctionERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #3

declare noundef zeroext i1 @_ZN4llvm19MachineFunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_120RISCVVMV0Elimination20runOnMachineFunctionERN4llvm15MachineFunctionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1065) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %5 = alloca %"class.llvm::SmallVector.233", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31, !nonnull !148, !align !149 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 534
  %i.d = load i8, ptr %i.c, align 2, !tbaa !150, !range !292, !noundef !148
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !293  ; 4 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(519768) %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.l, ptr %5, align 8, !tbaa !294
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i32 0, ptr %i.m, align 8, !tbaa !295
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 6, ptr %i.n, align 4, !tbaa !296
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 4 uses
  %.sroa.0125.0147 = load ptr, ptr %i.o, align 8, !tbaa !297 ; 2 uses
  %.not129148 = icmp eq ptr %.sroa.0125.0147, %i.p
  br i1 %.not129148, label %.loopexit, label %.lr.ph152

.lr.ph152:                                        ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.c

._crit_edge153:                                   ; preds = %._crit_edge
  %.pre = load ptr, ptr %5, align 8, !tbaa !294   ; 2 uses
  %.pre178 = load i32, ptr %i.m, align 8, !tbaa !295 ; 2 uses
  %i.aa = zext i32 %.pre178 to i64
  %.idx175 = shl nuw nsw i64 %i.aa, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx175
  %.not155 = icmp eq i32 %.pre178, 0
  br i1 %.not155, label %._crit_edge159, label %.lr.ph158

bb.c:                                             ; preds = %.lr.ph152, %._crit_edge
  %.sroa.0125.0150 = phi ptr [ %.sroa.0125.0147, %.lr.ph152 ], [ %.sroa.0125.0, %._crit_edge ] ; 6 uses
  %.070149 = phi i1 [ false, %.lr.ph152 ], [ %.171.lcssa, %._crit_edge ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0125.0150, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0125.0150, i64 48 ; 2 uses
  %.sroa.0122.0142 = load ptr, ptr %i.ac, align 8, !tbaa !298 ; 2 uses
  %.not132143 = icmp eq ptr %.sroa.0122.0142, %i.ad
  br i1 %.not132143, label %._crit_edge, label %.lr.ph146

.lr.ph146:                                        ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0125.0150, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0125.0150, i64 40
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, %bb.c
  %.171.lcssa = phi i1 [ %.070149, %bb.c ], [ %.4, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0125.0150, i64 8
  %.sroa.0125.0 = load ptr, ptr %i.ag, align 8, !tbaa !297 ; 2 uses
  %.not129 = icmp eq ptr %.sroa.0125.0, %i.p
  br i1 %.not129, label %._crit_edge153, label %bb.c

bb.d:                                             ; preds = %.lr.ph146, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit
  %.sroa.0122.0145 = phi ptr [ %.sroa.0122.0142, %.lr.ph146 ], [ %.sroa.0122.0, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ] ; 15 uses
  %.171144 = phi i1 [ %.070149, %.lr.ph146 ], [ %.4, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0122.0145, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !303 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !315
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ao = load i16, ptr %i.an, align 4, !tbaa !317
  %i.ap = zext i16 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [6 x i8], ptr %i.am, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.as = load i16, ptr %i.ar, align 4, !tbaa !318 ; 2 uses
  %i.at = zext i16 %i.as to i64
  %.idx = mul nuw nsw i64 %i.at, 6
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx
  %.not133139 = icmp eq i16 %i.as, 0
  br i1 %.not133139, label %.loopexit136, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.l
  %.sroa.0112.0141 = phi ptr [ %i.ct, %bb.l ], [ %i.aq, %bb.d ] ; 2 uses
  %.sroa.7.0140 = phi i64 [ %i.cs, %bb.l ], [ 0, %bb.d ] ; 2 uses
  %.val = load i16, ptr %.sroa.0112.0141, align 2, !tbaa !319
  %i.av = icmp eq i16 %.val, 101
  br i1 %i.av, label %bb.e, label %bb.l

bb.e:                                             ; preds = %.lr.ph
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0122.0145, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !321
  %i.ay = and i64 %.sroa.7.0140, 4294967295
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !322 ; 5 uses
  %i.bc = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.g, i32 %i.bb) #14 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 52
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !323
  %i.bf = icmp eq i32 %i.be, 20
  br i1 %i.bf, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !321 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 36
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !322
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = and i32 %i.bm, 1048320
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.bp = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo15hasOneNonDBGUseENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.g, i32 %i.bb) #14
  br i1 %i.bp, label %bb.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

bb.i:                                             ; preds = %bb.h
  %i.bq = load i32, ptr %i.m, align 8, !tbaa !295 ; 2 uses
  %i.br = load i32, ptr %i.n, align 4, !tbaa !296
  %.not.i = icmp ult i32 %i.bq, %i.br
  br i1 %.not.i, label %bb.k, label %bb.j, !prof !324

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.bc)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

bb.k:                                             ; preds = %bb.i
  %i.bs = zext i32 %i.bq to i64
  %i.bt = load ptr, ptr %5, align 8, !tbaa !294
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bs
  store ptr %i.bc, ptr %i.bu, align 1
  %i.bv = load i32, ptr %i.m, align 8, !tbaa !295
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.m, align 8, !tbaa !295
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit: ; preds = %bb.k, %bb.j, %bb.h
  %i.bx = load ptr, ptr %i.bg, align 8, !tbaa !321
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 36
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !322
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.e, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit, %bb.g
  %.sroa.037.0 = phi i32 [ %i.bz, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit ], [ %i.bb, %bb.g ], [ %i.bb, %bb.e ], [ %i.bb, %bb.f ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0122.0145, i64 72
  %.sroa.028.0.copyload = load ptr, ptr %i.ca, align 8, !tbaa !325
  %i.cb = load ptr, ptr %i.q, align 8, !tbaa !326
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -640
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0122.0145, i64 44
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !327
  %i.cf = and i32 %i.ce, 4
  %.not.i75 = icmp eq i32 %i.cf, 0
  %i.cg = load ptr, ptr %i.ae, align 8, !tbaa !328 ; 4 uses
  %i.ch = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr %.sroa.028.0.copyload, i1 noundef zeroext false) #14 ; 10 uses
  br i1 %.not.i75, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i: ; preds = %.critedge
  %i.ci = call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.0125.0150, ptr nonnull align 8 dereferenceable(80) %.sroa.0122.0145, ptr noundef %i.ch) #14 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr null, ptr %i.r, align 8, !tbaa !372, !alias.scope !375
  store i32 36, ptr %i.s, align 4, !tbaa !322, !alias.scope !375
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false), !alias.scope !375
  store i32 16777216, ptr %4, align 8, !alias.scope !375
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ch, ptr noundef nonnull align 8 dereferenceable(1065) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %.thread

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit: ; preds = %.critedge
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef %i.ch) #14
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0122.0145, align 8
  %i.cj = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %.sroa.0122.0145, ptr %i.cl, align 8, !tbaa !298
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.ch, align 8
  %i.cm = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.cn = or disjoint i64 %i.cm, %i.cj
  store i64 %i.cn, ptr %i.ch, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.ch, ptr %i.co, align 8, !tbaa !298
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %.sroa.0122.0145, align 8
  %i.cp = ptrtoint ptr %i.ch to i64
  %i.cq = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.cr = or disjoint i64 %i.cq, %i.cp
  store i64 %i.cr, ptr %.sroa.0122.0145, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr null, ptr %i.u, align 8, !tbaa !372, !alias.scope !378
  store i32 36, ptr %i.v, align 4, !tbaa !322, !alias.scope !378
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false), !alias.scope !378
  store i32 16777216, ptr %2, align 8, !alias.scope !378
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ch, ptr noundef nonnull align 8 dereferenceable(1065) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %.thread

.thread:                                          ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr null, ptr %i.x, align 8, !tbaa !372, !alias.scope !381
  store i32 %.sroa.037.0, ptr %i.y, align 4, !tbaa !322, !alias.scope !381
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false), !alias.scope !381
  store i32 0, ptr %3, align 8, !alias.scope !381
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ch, ptr noundef nonnull align 8 dereferenceable(1065) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.az, i32 36) #14
  br label %.loopexit136

bb.l:                                             ; preds = %.lr.ph
  %i.cs = add nuw nsw i64 %.sroa.7.0140, 1
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0112.0141, i64 6 ; 2 uses
  %.not133 = icmp eq ptr %i.ct, %i.au
  br i1 %.not133, label %.loopexit136, label %.lr.ph

.loopexit136:                                     ; preds = %bb.l, %bb.d, %.thread
  %.4 = phi i1 [ true, %.thread ], [ %.171144, %bb.d ], [ %.171144, %bb.l ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0122.0145) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0122.0145, align 8
  %i.cu = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i76 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.i76, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i: ; preds = %.loopexit136
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0122.0145, i64 44
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !327
  %i.cx = and i32 %i.cw, 8
  %.not34.i.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.cz, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ], [ %.sroa.0122.0145, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !298 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 44
  %i.db = load i32, ptr %i.da, align 4, !tbaa !327
  %i.dc = and i32 %i.db, 8
  %.not3.i.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, !llvm.loop !384

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, %.loopexit136, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.0122.0145, %.loopexit136 ], [ %.sroa.0122.0145, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ], [ %i.cz, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %.sroa.0122.0 = load ptr, ptr %i.dd, align 8, !tbaa !298 ; 2 uses
  %.not132 = icmp eq ptr %.sroa.0122.0, %i.ad
  br i1 %.not132, label %._crit_edge, label %bb.d

._crit_edge159:                                   ; preds = %.lr.ph158, %._crit_edge153
  br i1 %.171.lcssa, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge159
  %.sroa.096.0171 = load ptr, ptr %i.o, align 8, !tbaa !297 ; 2 uses
  %.not130172 = icmp eq ptr %.sroa.096.0171, %i.p
  br i1 %.not130172, label %.loopexit, label %.lr.ph174

.lr.ph174:                                        ; preds = %.preheader
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  br label %bb.m

.lr.ph158:                                        ; preds = %._crit_edge153, %.lr.ph158
  %.073156 = phi ptr [ %i.dh, %.lr.ph158 ], [ %.pre, %._crit_edge153 ] ; 2 uses
  %i.df = load ptr, ptr %.073156, align 8, !tbaa !386
  %i.dg = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.df) #14 ; 0 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.073156, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dh, %i.ab
  br i1 %.not, label %._crit_edge159, label %.lr.ph158

bb.m:                                             ; preds = %.lr.ph174, %._crit_edge170
  %.sroa.096.0173 = phi ptr [ %.sroa.096.0171, %.lr.ph174 ], [ %.sroa.096.0, %._crit_edge170 ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.096.0173, i64 56
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.096.0173, i64 48 ; 2 uses
  %.sroa.093.0165 = load ptr, ptr %i.di, align 8, !tbaa !298 ; 2 uses
  %.not131166 = icmp eq ptr %.sroa.093.0165, %i.dj
  br i1 %.not131166, label %._crit_edge170, label %.lr.ph169

._crit_edge170:                                   ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit88, %bb.m
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.096.0173, i64 8
  %.sroa.096.0 = load ptr, ptr %i.dk, align 8, !tbaa !297 ; 2 uses
  %.not130 = icmp eq ptr %.sroa.096.0, %i.p
  br i1 %.not130, label %.loopexit, label %bb.m

.lr.ph169:                                        ; preds = %bb.m, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit88
  %.sroa.093.0167 = phi ptr [ %.sroa.093.0, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit88 ], [ %.sroa.093.0165, %bb.m ] ; 8 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.093.0167, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !321 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.093.0167, i64 40
  %i.do = load i24, ptr %i.dn, align 8
  %i.dp = zext i24 %i.do to i64                   ; 2 uses
  %i.dq = call noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.093.0167) #14
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %i.dm, i64 %i.dp
  %.not74160 = icmp samesign eq i64 %i.dr, %i.dp
  br i1 %.not74160, label %._crit_edge164, label %.lr.ph163.preheader

.lr.ph163.preheader:                              ; preds = %.lr.ph169
  %i.dt = getelementptr inbounds nuw [32 x i8], ptr %i.dm, i64 %i.dr
  br label %.lr.ph163

._crit_edge164:                                   ; preds = %.critedge2, %.lr.ph169
  %.0.copyload.i.i.i.i.i.i.i.i.i80 = load i64, ptr %.sroa.093.0167, align 8
  %i.du = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i80, 4
  %.not.i.i.i81 = icmp eq i64 %i.du, 0
  br i1 %.not.i.i.i81, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i83, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit88

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i83: ; preds = %._crit_edge164
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.093.0167, i64 44
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !327
  %i.dx = and i32 %i.dw, 8
  %.not34.i.i.i84 = icmp eq i32 %i.dx, 0
  br i1 %.not34.i.i.i84, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit88, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i85

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i85: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i83, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i85
  %.sroa.0.05.i.i.i86 = phi ptr [ %i.dz, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i85 ], [ %.sroa.093.0167, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i83 ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i86, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !298 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 44
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !327
  %i.ec = and i32 %i.eb, 8
  %.not3.i.i.i87 = icmp eq i32 %i.ec, 0
  br i1 %.not3.i.i.i87, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit88, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i85, !llvm.loop !384

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit88: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i85, %._crit_edge164, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i83
  %.sroa.0.1.i.i.i82 = phi ptr [ %.sroa.093.0167, %._crit_edge164 ], [ %.sroa.093.0167, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i83 ], [ %i.dz, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i85 ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i82, i64 8
  %.sroa.093.0 = load ptr, ptr %i.ed, align 8, !tbaa !298 ; 2 uses
  %.not131 = icmp eq ptr %.sroa.093.0, %i.dj
  br i1 %.not131, label %._crit_edge170, label %.lr.ph169

.lr.ph163:                                        ; preds = %.lr.ph163.preheader, %.critedge2
  %.072161 = phi ptr [ %i.er, %.critedge2 ], [ %i.dt, %.lr.ph163.preheader ] ; 3 uses
  %i.ee = load i32, ptr %.072161, align 8
  %i.ef = and i32 %i.ee, 255
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.n, label %.critedge2

bb.n:                                             ; preds = %.lr.ph163
  %i.eh = getelementptr inbounds nuw i8, ptr %.072161, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !322 ; 3 uses
  %i.ej = icmp slt i32 %i.ei, 0
  br i1 %i.ej, label %bb.o, label %.critedge2

bb.o:                                             ; preds = %bb.n
  %i.ek = and i32 %i.ei, 2147483647
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = load ptr, ptr %i.de, align 8, !tbaa !294
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.em, i64 %i.el
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.en, align 8
  %i.eo = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.ep = icmp eq i64 %i.eo, ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 6464) to i64)
  br i1 %i.ep, label %bb.p, label %.critedge2

bb.p:                                             ; preds = %bb.o
  %i.eq = call noundef zeroext i1 @_ZN4llvm19MachineRegisterInfo17recomputeRegClassENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.g, i32 %i.ei) #14 ; 0 uses
  br label %.critedge2

.critedge2:                                       ; preds = %bb.n, %.lr.ph163, %bb.p, %bb.o
  %i.er = getelementptr inbounds nuw i8, ptr %.072161, i64 32 ; 2 uses
  %.not74 = icmp eq ptr %i.er, %i.ds
  br i1 %.not74, label %._crit_edge164, label %.lr.ph163

.loopexit:                                        ; preds = %._crit_edge170, %bb.b, %.preheader, %._crit_edge159
  %.070.lcssa190192 = phi i1 [ false, %bb.b ], [ false, %._crit_edge159 ], [ true, %.preheader ], [ true, %._crit_edge170 ]
  %i.es = load ptr, ptr %5, align 8, !tbaa !294   ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.l
  br i1 %i.et, label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj6EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.loopexit
  call void @free(ptr noundef %i.es) #14
  br label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj6EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_12MachineInstrELj6EED2Ev.exit: ; preds = %.loopexit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj6EED2Ev.exit
  %.1 = phi i1 [ %.070.lcssa190192, %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj6EED2Ev.exit ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_ZNK12_GLOBAL__N_120RISCVVMV0Elimination21getRequiredPropertiesEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret i64 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZN4llvm13AnalysisUsage15setPreservesCFGEv(ptr noundef nonnull align 8 dereferenceable(161)) local_unnamed_addr #3

declare void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(161)) unnamed_addr #3

declare noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520), i32) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo15hasOneNonDBGUseENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520), i32) local_unnamed_addr #3

declare void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32), i32) local_unnamed_addr #3

declare ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

end_hunk_0

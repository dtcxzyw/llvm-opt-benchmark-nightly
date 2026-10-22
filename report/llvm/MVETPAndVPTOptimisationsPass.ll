Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MVETPAndVPTOptimisationsPass?download=true
inline.NumInlined: 1636
inline.NumDeleted: 716
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12_GLOBAL__N_124MVETPAndVPTOptimisations20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
  br i1 %i.and, label %bb.df, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i151.i

bb.df:                                            ; preds = %._crit_edge.i.i173.i
  %i.ane = add nuw i32 %i.amx, 1
  store i32 %i.ane, ptr %i.ep, align 4, !tbaa !488, !noalias !518
  store ptr %i.amt, ptr %i.amz, align 8, !tbaa !24, !noalias !518
  br label %_ZNK4llvm19MachineRegisterInfo9use_emptyENS_8RegisterE.exit116.i

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i151.i: ; preds = %._crit_edge.i.i173.i, %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit150.thread55.i
  %i.anf = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %17, ptr noundef %i.amt) #16, !noalias !518 ; 0 uses
  br label %_ZNK4llvm19MachineRegisterInfo9use_emptyENS_8RegisterE.exit116.i

_ZNK4llvm19MachineRegisterInfo9use_emptyENS_8RegisterE.exit116.i: ; preds = %bb.cz, %.lr.ph.i.i168.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i151.i, %bb.df, %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit150.i, %bb.dc, %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit144.i, %bb.cy
  %i.ang = load ptr, ptr %i.ak, align 8, !tbaa !472
  call void @_ZNK4llvm19MachineRegisterInfo14clearKillFlagsENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.ang, i32 %.sroa.038.076.i) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  br label %.critedge.i87

.critedge.i87:                                    ; preds = %bb.cp, %.lr.ph.i.i94.i, %_ZNK4llvm19MachineRegisterInfo9use_emptyENS_8RegisterE.exit116.i, %bb.cw, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i77.i, %bb.cv, %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit.i, %bb.cs, %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit.i, %bb.co, %bb.cl, %"_ZZN12_GLOBAL__N_124MVETPAndVPTOptimisations20ReplaceConstByVPNOTsERN4llvm17MachineBasicBlockEPNS1_20MachineDominatorTreeEENK3$_0clENS1_8RegisterE.exit.i", %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %.lr.ph.i86
  %.sroa.038.3.i = phi i32 [ %.sroa.038.076.i, %.lr.ph.i86 ], [ %.sroa.038.076.i, %bb.ce ], [ 0, %bb.ci ], [ 0, %bb.ch ], [ 0, %bb.cg ], [ 0, %bb.cf ], [ 0, %"_ZZN12_GLOBAL__N_124MVETPAndVPTOptimisations20ReplaceConstByVPNOTsERN4llvm17MachineBasicBlockEPNS1_20MachineDominatorTreeEENK3$_0clENS1_8RegisterE.exit.i" ], [ 0, %bb.cj ], [ %i.ahn, %bb.cw ], [ %i.akx, %_ZNK4llvm19MachineRegisterInfo9use_emptyENS_8RegisterE.exit116.i ], [ %.sroa.038.076.i, %bb.cs ], [ %.sroa.038.076.i, %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit.i ], [ 0, %bb.ck ], [ %i.ahn, %bb.cl ], [ %.sroa.038.076.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i77.i ], [ %.sroa.038.076.i, %bb.co ], [ %.sroa.038.076.i, %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit.i ], [ %.sroa.038.076.i, %.lr.ph.i.i94.i ], [ %.sroa.038.076.i, %bb.cv ], [ %.sroa.038.076.i, %bb.cp ]
  %.4.i = phi i32 [ %.077.i, %.lr.ph.i86 ], [ %.077.i, %bb.ce ], [ %.077.i, %bb.ci ], [ %.077.i, %bb.ch ], [ %.077.i, %bb.cg ], [ %.077.i, %bb.cf ], [ %.077.i, %"_ZZN12_GLOBAL__N_124MVETPAndVPTOptimisations20ReplaceConstByVPNOTsERN4llvm17MachineBasicBlockEPNS1_20MachineDominatorTreeEENK3$_0clENS1_8RegisterE.exit.i" ], [ %.077.i, %bb.cj ], [ %i.aio, %bb.cw ], [ %i.aio, %_ZNK4llvm19MachineRegisterInfo9use_emptyENS_8RegisterE.exit116.i ], [ %.077.i, %bb.cs ], [ %.077.i, %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit.i ], [ %.077.i, %bb.ck ], [ %i.aio, %bb.cl ], [ %.077.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i77.i ], [ %.077.i, %bb.co ], [ %.077.i, %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit.i ], [ %.077.i, %.lr.ph.i.i94.i ], [ %.077.i, %bb.cv ], [ %.077.i, %bb.cp ]
  %i.anh = getelementptr inbounds nuw i8, ptr %.sroa.033.078.i, i64 8
  %.sroa.033.0.i = load ptr, ptr %i.anh, align 8, !tbaa !87 ; 2 uses
  %.not61.i = icmp eq ptr %.sroa.033.0.i, %i.afn
  br i1 %.not61.i, label %._crit_edge.loopexit.i, label %.lr.ph.i86

._crit_edge82.loopexit.i:                         ; preds = %_ZN4llvm19SmallPtrSetIteratorIPNS_12MachineInstrEEppEv.exit.i
  %.pre96.i = load i32, ptr %i.ep, align 4, !tbaa !488
  %.pre97.i = load i8, ptr %i.eq, align 8, !tbaa !18, !range !19
  br label %._crit_edge82.i

._crit_edge82.i:                                  ; preds = %._crit_edge82.loopexit.i, %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5beginEv.exit.i
  %i.ani = phi i8 [ %.pre97.i, %._crit_edge82.loopexit.i ], [ %i.agx, %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5beginEv.exit.i ]
  %i.anj = phi i32 [ %.pre96.i, %._crit_edge82.loopexit.i ], [ %i.agw, %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5beginEv.exit.i ]
  %i.ank = trunc nuw i8 %i.ani to i1
  br i1 %i.ank, label %_ZN12_GLOBAL__N_124MVETPAndVPTOptimisations20ReplaceConstByVPNOTsERN4llvm17MachineBasicBlockEPNS1_20MachineDominatorTreeE.exit, label %bb.dg

bb.dg:                                            ; preds = %._crit_edge82.i
  %i.anl = load ptr, ptr %17, align 8, !tbaa !21
  call void @free(ptr noundef %i.anl) #16
  br label %_ZN12_GLOBAL__N_124MVETPAndVPTOptimisations20ReplaceConstByVPNOTsERN4llvm17MachineBasicBlockEPNS1_20MachineDominatorTreeE.exit

.lr.ph81.i:                                       ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5beginEv.exit.i, %_ZN4llvm19SmallPtrSetIteratorIPNS_12MachineInstrEEppEv.exit.i
  %.sroa.01.080.i = phi ptr [ %.sroa.01.2.i, %_ZN4llvm19SmallPtrSetIteratorIPNS_12MachineInstrEEppEv.exit.i ], [ %.sroa.0.1.i.i.i, %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5beginEv.exit.i ] ; 2 uses
  %i.anm = load ptr, ptr %.sroa.01.080.i, align 8, !tbaa !24
  %i.ann = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.anm) #16 ; 0 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %.sroa.01.080.i, i64 8 ; 3 uses
  %.not1.i.i.i.i = icmp eq ptr %i.ano, %i.aha
  br i1 %.not1.i.i.i.i, label %_ZN4llvm19SmallPtrSetIteratorIPNS_12MachineInstrEEppEv.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph81.i, %bb.dh
  %.sroa.01.1.i = phi ptr [ %i.anr, %bb.dh ], [ %i.ano, %.lr.ph81.i ] ; 3 uses
  %i.anp = load ptr, ptr %.sroa.01.1.i, align 8, !tbaa !24
  %i.anq = icmp eq ptr %i.anp, inttoptr (i64 -1 to ptr)
  br i1 %i.anq, label %bb.dh, label %_ZN4llvm19SmallPtrSetIteratorIPNS_12MachineInstrEEppEv.exit.i

bb.dh:                                            ; preds = %.lr.ph.i.i.i.i
  %i.anr = getelementptr inbounds nuw i8, ptr %.sroa.01.1.i, i64 8 ; 3 uses
  %.not.i.i.i179.i = icmp eq ptr %i.anr, %i.aha
  br i1 %.not.i.i.i179.i, label %_ZN4llvm19SmallPtrSetIteratorIPNS_12MachineInstrEEppEv.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !216

_ZN4llvm19SmallPtrSetIteratorIPNS_12MachineInstrEEppEv.exit.i: ; preds = %bb.dh, %.lr.ph.i.i.i.i, %.lr.ph81.i
  %.sroa.01.2.i = phi ptr [ %i.ano, %.lr.ph81.i ], [ %i.anr, %bb.dh ], [ %.sroa.01.1.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %.not63.i = icmp eq ptr %.sroa.01.2.i, %i.ahe
  br i1 %.not63.i, label %._crit_edge82.loopexit.i, label %.lr.ph81.i

_ZN12_GLOBAL__N_124MVETPAndVPTOptimisations20ReplaceConstByVPNOTsERN4llvm17MachineBasicBlockEPNS1_20MachineDominatorTreeE.exit: ; preds = %._crit_edge82.i, %bb.dg
  %i.ans = icmp ne i32 %i.anj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %i.ant = or i1 %.0.lcssa.i, %i.ans
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  store ptr %i.ev, ptr %13, align 8, !tbaa !23
  store i32 0, ptr %i.ew, align 8, !tbaa !37
  store i32 4, ptr %i.ex, align 4, !tbaa !39
  %.sroa.052.063.i = load ptr, ptr %i.afm, align 8, !tbaa !87 ; 2 uses
  %.not6264.i = icmp eq ptr %.sroa.052.063.i, %i.afn
  br i1 %.not6264.i, label %_ZN12_GLOBAL__N_124MVETPAndVPTOptimisations20ReplaceVCMPsByVPNOTsERN4llvm17MachineBasicBlockE.exit, label %.lr.ph.i102

._crit_edge.i104:                                 ; preds = %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i
  %.pre.i105 = load ptr, ptr %13, align 8, !tbaa !23 ; 3 uses
  %.pre74.i = load i32, ptr %i.ew, align 8, !tbaa !37 ; 2 uses
  %i.anu = zext i32 %.pre74.i to i64
  %.idx.i106 = shl nuw nsw i64 %i.anu, 3
  %i.anv = getelementptr inbounds nuw i8, ptr %.pre.i105, i64 %.idx.i106
  %.not69.i = icmp eq i32 %.pre74.i, 0
  br i1 %.not69.i, label %._crit_edge73.i, label %.lr.ph72.i

.lr.ph.i102:                                      ; preds = %_ZN12_GLOBAL__N_124MVETPAndVPTOptimisations20ReplaceConstByVPNOTsERN4llvm17MachineBasicBlockEPNS1_20MachineDominatorTreeE.exit, %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i
  %.sroa.052.067.i = phi ptr [ %.sroa.052.0.i, %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i ], [ %.sroa.052.063.i, %_ZN12_GLOBAL__N_124MVETPAndVPTOptimisations20ReplaceConstByVPNOTsERN4llvm17MachineBasicBlockEPNS1_20MachineDominatorTreeE.exit ] ; 31 uses
  %.066.i = phi ptr [ %.2.i, %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i ], [ null, %_ZN12_GLOBAL__N_124MVETPAndVPTOptimisations20ReplaceConstByVPNOTsERN4llvm17MachineBasicBlockEPNS1_20MachineDominatorTreeE.exit ] ; 10 uses
  %.03565.i = phi ptr [ %.3.i, %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i ], [ null, %_ZN12_GLOBAL__N_124MVETPAndVPTOptimisations20ReplaceConstByVPNOTsERN4llvm17MachineBasicBlockEPNS1_20MachineDominatorTreeE.exit ] ; 2 uses
  %.not40.i = icmp eq ptr %.066.i, null           ; 2 uses
  br i1 %.not40.i, label %bb.dk, label %bb.di

bb.di:                                            ; preds = %.lr.ph.i102
  %i.anw = getelementptr inbounds nuw i8, ptr %.066.i, i64 32
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !69
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 4
  %i.anz = load i32, ptr %i.any, align 4, !tbaa !70
  %i.aoa = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.052.067.i, i32 %i.anz, ptr noundef null, i1 noundef zeroext true) #16 ; 2 uses
  %i.aob = icmp eq i32 %i.aoa, -1
  br i1 %i.aob, label %_ZN4llvm12MachineInstr22findRegisterUseOperandENS_8RegisterEPKNS_18TargetRegisterInfoEb.exit.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.aoc = getelementptr inbounds nuw i8, ptr %.sroa.052.067.i, i64 32
  %i.aod = load ptr, ptr %i.aoc, align 8, !tbaa !69
  %i.aoe = zext i32 %i.aoa to i64
  %i.aof = getelementptr inbounds nuw [32 x i8], ptr %i.aod, i64 %i.aoe
  br label %_ZN4llvm12MachineInstr22findRegisterUseOperandENS_8RegisterEPKNS_18TargetRegisterInfoEb.exit.i

_ZN4llvm12MachineInstr22findRegisterUseOperandENS_8RegisterEPKNS_18TargetRegisterInfoEb.exit.i: ; preds = %bb.dj, %bb.di
  %i.aog = phi ptr [ %i.aof, %bb.dj ], [ null, %bb.di ] ; 2 uses
  %.not41.i = icmp eq ptr %i.aog, null
  %spec.select.i = select i1 %.not41.i, ptr %.03565.i, ptr %i.aog
  br label %bb.dk

bb.dk:                                            ; preds = %_ZN4llvm12MachineInstr22findRegisterUseOperandENS_8RegisterEPKNS_18TargetRegisterInfoEb.exit.i, %.lr.ph.i102
  %.237.i = phi ptr [ %spec.select.i, %_ZN4llvm12MachineInstr22findRegisterUseOperandENS_8RegisterEPKNS_18TargetRegisterInfoEb.exit.i ], [ %.03565.i, %.lr.ph.i102 ] ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  store i32 0, ptr %12, align 4, !tbaa !519
  %i.aoh = call noundef i32 @_ZN4llvm20getVPTInstrPredicateERKNS_12MachineInstrERNS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.052.067.i, ptr noundef nonnull align 4 dereferenceable(4) %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  %.not42.i = icmp eq i32 %i.aoh, 0
  br i1 %.not42.i, label %bb.dl, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i

bb.dl:                                            ; preds = %bb.dk
  %i.aoi = getelementptr inbounds nuw i8, ptr %.sroa.052.067.i, i64 52 ; 2 uses
  %i.aoj = load i32, ptr %i.aoi, align 4, !tbaa !68 ; 2 uses
  %.off.i.i = add i32 %i.aoj, -1112
  %switch.i.i109 = icmp ult i32 %.off.i.i, 22
  br i1 %switch.i.i109, label %bb.dq, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.aok = getelementptr inbounds nuw i8, ptr %.sroa.052.067.i, i64 40
  %i.aol = load i24, ptr %i.aok, align 8
  %i.aom = icmp eq i24 %i.aol, 0
  br i1 %i.aom, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.aon = getelementptr inbounds nuw i8, ptr %.sroa.052.067.i, i64 32
  %i.aoo = load ptr, ptr %i.aon, align 8, !tbaa !69 ; 2 uses
  %i.aop = load i32, ptr %i.aoo, align 8
  %i.aoq = and i32 %i.aop, 255
  %i.aor = icmp eq i32 %i.aoq, 0
  br i1 %i.aor, label %bb.do, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i

bb.do:                                            ; preds = %bb.dn
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aoo, i64 4
  %i.aot = load i32, ptr %i.aos, align 4, !tbaa !70 ; 2 uses
  %i.aou = icmp slt i32 %i.aot, 0
  br i1 %i.aou, label %bb.dp, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i

bb.dp:                                            ; preds = %bb.do
  %i.aov = call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.052.067.i) #16
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 32
  %i.aox = load ptr, ptr %i.aow, align 8, !tbaa !471
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 48
  %i.aoz = and i32 %i.aot, 2147483647
  %i.apa = zext nneg i32 %i.aoz to i64
  %i.apb = load ptr, ptr %i.aoy, align 8, !tbaa !23
  %i.apc = getelementptr inbounds nuw [16 x i8], ptr %i.apb, i64 %i.apa
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.apc, align 8 ; 2 uses
  %i.apd = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %i.ape = icmp ne i64 %i.apd, 0
  %i.apf = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -5 ; 2 uses
  %.not11.i.i = icmp eq i64 %i.apf, 0
  %.not.i.i110 = or i1 %i.ape, %.not11.i.i
  br i1 %.not.i.i110, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.i

_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.i: ; preds = %bb.dp
  %i.apg = inttoptr i64 %i.apf to ptr
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 20
  %i.api = load i16, ptr %i.aph, align 4, !tbaa !522
  %.fr.i = freeze i16 %i.api
  %i.apj = icmp eq i16 %.fr.i, 47
  %spec.select61.i = select i1 %i.apj, ptr null, ptr %.066.i
  br label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i

bb.dq:                                            ; preds = %bb.dl
  br i1 %.not40.i, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.apk = getelementptr inbounds nuw i8, ptr %.066.i, i64 52
  %i.apl = load i32, ptr %i.apk, align 4, !tbaa !68
  %.not.i46.i = icmp eq i32 %i.aoj, %i.apl
  br i1 %.not.i46.i, label %switch.lookup, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i

switch.lookup:                                    ; preds = %bb.dr
  %i.apm = getelementptr inbounds nuw i8, ptr %.sroa.052.067.i, i64 32 ; 2 uses
  %i.apn = load ptr, ptr %i.apm, align 8, !tbaa !69 ; 3 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apn, i64 32 ; 2 uses
  %i.app = getelementptr inbounds nuw i8, ptr %i.apn, i64 64 ; 2 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %.066.i, i64 32 ; 3 uses
  %i.apr = load ptr, ptr %i.apq, align 8, !tbaa !69 ; 3 uses
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apr, i64 32 ; 2 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apr, i64 64 ; 2 uses
  %i.apu = getelementptr i8, ptr %i.apn, i64 112
  %.val23.val.i.i = load i64, ptr %i.apu, align 8, !tbaa !70
  %i.apv = and i64 %.val23.val.i.i, 4294967295
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_124MVETPAndVPTOptimisations20runOnMachineFunctionERN4llvm15MachineFunctionE, i64 %i.apv
  %switch.load = load i8, ptr %switch.gep, align 1 ; 3 uses
  %switch.ext = zext i8 %switch.load to i32
  %i.apw = getelementptr i8, ptr %i.apr, i64 112
  %.val22.val.i.i = load i64, ptr %i.apw, align 8, !tbaa !70
  %i.apx = trunc i64 %.val22.val.i.i to i32
  %i.apy = icmp eq i32 %switch.ext, %i.apx
  br i1 %i.apy, label %bb.ds, label %bb.du

bb.ds:                                            ; preds = %switch.lookup
  %i.apz = call noundef zeroext i1 @_ZNK4llvm14MachineOperand13isIdenticalToERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.apo, ptr noundef nonnull align 8 dereferenceable(32) %i.aps) #16
  br i1 %i.apz, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.aqa = call noundef zeroext i1 @_ZNK4llvm14MachineOperand13isIdenticalToERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.app, ptr noundef nonnull align 8 dereferenceable(32) %i.apt) #16
  br i1 %i.aqa, label %_ZL17IsVPNOTEquivalentRN4llvm12MachineInstrES1_.exit.thread59.i, label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds, %switch.lookup
  %i.aqb = load i32, ptr %i.aoi, align 4, !tbaa !68
  switch i32 %i.aqb, label %66 [
    i32 1114, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i
    i32 1112, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i
    i32 1115, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i
    i32 1113, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i
    i32 1121, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i
    i32 1117, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i
    i32 1119, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i
    i32 1133, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i
    i32 1129, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i
    i32 1131, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i
    i32 1127, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i
    i32 1123, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i
    i32 1125, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i
  ]

66:                                               ; preds = %bb.du
  %67 = icmp ult i8 %switch.load, 14
  br i1 %67, label %switch.lookup424, label %_ZN4llvm5ARMCCL19getSwappedConditionENS0_9CondCodesE.exit.i.i

switch.lookup424:                                 ; preds = %66
  %68 = zext nneg i8 %switch.load to i64
  %switch.gep425 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_124MVETPAndVPTOptimisations20runOnMachineFunctionERN4llvm15MachineFunctionE.17, i64 %68
  %switch.load426 = load i8, ptr %switch.gep425, align 1
  %switch.ext427 = zext i8 %switch.load426 to i32
  br label %_ZN4llvm5ARMCCL19getSwappedConditionENS0_9CondCodesE.exit.i.i

_ZN4llvm5ARMCCL19getSwappedConditionENS0_9CondCodesE.exit.i.i: ; preds = %switch.lookup424, %66
  %.0.i25.i.i = phi i32 [ 14, %66 ], [ %switch.ext427, %switch.lookup424 ]
  %.val.i.i112 = load ptr, ptr %i.apq, align 8, !tbaa !69
  %i.aqc = getelementptr i8, ptr %.val.i.i112, i64 112
  %.val.val.i.i = load i64, ptr %i.aqc, align 8, !tbaa !70
  %i.aqd = trunc i64 %.val.val.i.i to i32
  %i.aqe = icmp eq i32 %.0.i25.i.i, %i.aqd
  br i1 %i.aqe, label %bb.dv, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i

bb.dv:                                            ; preds = %_ZN4llvm5ARMCCL19getSwappedConditionENS0_9CondCodesE.exit.i.i
  %i.aqf = call noundef zeroext i1 @_ZNK4llvm14MachineOperand13isIdenticalToERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.apo, ptr noundef nonnull align 8 dereferenceable(32) %i.apt) #16
  br i1 %i.aqf, label %_ZL17IsVPNOTEquivalentRN4llvm12MachineInstrES1_.exit.i, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i

_ZL17IsVPNOTEquivalentRN4llvm12MachineInstrES1_.exit.i: ; preds = %bb.dv
  %i.aqg = call noundef zeroext i1 @_ZNK4llvm14MachineOperand13isIdenticalToERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.app, ptr noundef nonnull align 8 dereferenceable(32) %i.aps) #16
  br i1 %i.aqg, label %_ZL17IsVPNOTEquivalentRN4llvm12MachineInstrES1_.exit.thread59.i, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i

_ZL17IsVPNOTEquivalentRN4llvm12MachineInstrES1_.exit.thread59.i: ; preds = %_ZL17IsVPNOTEquivalentRN4llvm12MachineInstrES1_.exit.i, %bb.dt
  %i.aqh = load ptr, ptr %i.apq, align 8, !tbaa !69
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqh, i64 4
  %i.aqj = load i32, ptr %i.aqi, align 4, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  %i.aqk = getelementptr inbounds nuw i8, ptr %.sroa.052.067.i, i64 72
  %.sroa.08.0.copyload.i = load ptr, ptr %i.aqk, align 8, !tbaa !81
  store ptr %.sroa.08.0.copyload.i, ptr %15, align 8, !tbaa !81
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ey, i8 0, i64 24, i1 false)
  %i.aql = load ptr, ptr %i.ah, align 8, !tbaa !470
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aql, i64 8
  %i.aqn = load ptr, ptr %i.aqm, align 8, !tbaa !85
  %i.aqo = getelementptr inbounds i8, ptr %i.aqn, i64 -47616
  %i.aqp = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.0176.0227, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.052.067.i, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.aqo) ; 2 uses
  %i.aqq = extractvalue { ptr, ptr } %i.aqp, 0    ; 3 uses
  %i.aqr = extractvalue { ptr, ptr } %i.aqp, 1    ; 3 uses
  %i.aqs = load ptr, ptr %i.apm, align 8, !tbaa !69
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aqr, ptr noundef nonnull align 8 dereferenceable(1065) %i.aqq, ptr noundef nonnull align 8 dereferenceable(32) %i.aqs) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store ptr null, ptr %i.ez, align 8, !tbaa !73, !alias.scope !523
  store i32 %i.aqj, ptr %i.fa, align 4, !tbaa !70, !alias.scope !523
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, i8 0, i64 16, i1 false), !alias.scope !523
  store i32 0, ptr %11, align 8, !alias.scope !523
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aqr, ptr noundef nonnull align 8 dereferenceable(1065) %i.aqq, ptr noundef nonnull align 8 dereferenceable(32) %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  store ptr %i.aqq, ptr %14, align 8, !tbaa !516
  store ptr %i.aqr, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void @_ZN4llvm26addUnpredicatedMveVpredNOpERNS_19MachineInstrBuilderE(ptr noundef nonnull align 8 dereferenceable(16) %14) #16
  %.not43.i = icmp eq ptr %.237.i, null
  br i1 %.not43.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %_ZL17IsVPNOTEquivalentRN4llvm12MachineInstrES1_.exit.thread59.i
  %i.aqt = load i32, ptr %.237.i, align 8
  %i.aqu = and i32 %i.aqt, -67108865
  store i32 %i.aqu, ptr %.237.i, align 8
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %_ZL17IsVPNOTEquivalentRN4llvm12MachineInstrES1_.exit.thread59.i
  %i.aqv = load i32, ptr %i.ew, align 8, !tbaa !37 ; 2 uses
  %i.aqw = load i32, ptr %i.ex, align 4, !tbaa !39
  %.not.i47.i = icmp ult i32 %i.aqv, %i.aqw
  br i1 %.not.i47.i, label %bb.dz, label %bb.dy, !prof !40

bb.dy:                                            ; preds = %bb.dx
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %.sroa.052.067.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i113

bb.dz:                                            ; preds = %bb.dx
  %i.aqx = zext i32 %i.aqv to i64
  %i.aqy = load ptr, ptr %13, align 8, !tbaa !23
  %i.aqz = getelementptr inbounds nuw [8 x i8], ptr %i.aqy, i64 %i.aqx
  store ptr %.sroa.052.067.i, ptr %i.aqz, align 1
  %i.ara = load i32, ptr %i.ew, align 8, !tbaa !37
  %i.arb = add i32 %i.ara, 1
  store i32 %i.arb, ptr %i.ew, align 8, !tbaa !37
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i113

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i113: ; preds = %bb.dz, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  br label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i

_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i113, %_ZL17IsVPNOTEquivalentRN4llvm12MachineInstrES1_.exit.i, %bb.dv, %_ZN4llvm5ARMCCL19getSwappedConditionENS0_9CondCodesE.exit.i.i, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.dr, %bb.dq, %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.i, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dk
  %.3.i = phi ptr [ %.237.i, %bb.dq ], [ null, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i113 ], [ %.237.i, %bb.dk ], [ %.237.i, %_ZL17IsVPNOTEquivalentRN4llvm12MachineInstrES1_.exit.i ], [ %.237.i, %bb.dp ], [ %.237.i, %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.i ], [ %.237.i, %bb.du ], [ %.237.i, %bb.dm ], [ %.237.i, %bb.dn ], [ %.237.i, %bb.do ], [ %.237.i, %bb.dr ], [ %.237.i, %bb.dv ], [ %.237.i, %_ZN4llvm5ARMCCL19getSwappedConditionENS0_9CondCodesE.exit.i.i ], [ %.237.i, %bb.du ], [ %.237.i, %bb.du ], [ %.237.i, %bb.du ], [ %.237.i, %bb.du ], [ %.237.i, %bb.du ], [ %.237.i, %bb.du ], [ %.237.i, %bb.du ], [ %.237.i, %bb.du ], [ %.237.i, %bb.du ], [ %.237.i, %bb.du ], [ %.237.i, %bb.du ], [ %.237.i, %bb.du ]
  %.2.i = phi ptr [ %.sroa.052.067.i, %bb.dq ], [ null, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i113 ], [ %.066.i, %bb.dk ], [ %.sroa.052.067.i, %_ZL17IsVPNOTEquivalentRN4llvm12MachineInstrES1_.exit.i ], [ %.066.i, %bb.dp ], [ %spec.select61.i, %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.i ], [ %.sroa.052.067.i, %bb.du ], [ %.066.i, %bb.dm ], [ %.066.i, %bb.dn ], [ %.066.i, %bb.do ], [ %.sroa.052.067.i, %bb.dr ], [ %.sroa.052.067.i, %bb.dv ], [ %.sroa.052.067.i, %_ZN4llvm5ARMCCL19getSwappedConditionENS0_9CondCodesE.exit.i.i ], [ %.sroa.052.067.i, %bb.du ], [ %.sroa.052.067.i, %bb.du ], [ %.sroa.052.067.i, %bb.du ], [ %.sroa.052.067.i, %bb.du ], [ %.sroa.052.067.i, %bb.du ], [ %.sroa.052.067.i, %bb.du ], [ %.sroa.052.067.i, %bb.du ], [ %.sroa.052.067.i, %bb.du ], [ %.sroa.052.067.i, %bb.du ], [ %.sroa.052.067.i, %bb.du ], [ %.sroa.052.067.i, %bb.du ], [ %.sroa.052.067.i, %bb.du ]
  %i.arc = getelementptr inbounds nuw i8, ptr %.sroa.052.067.i, i64 8
  %.sroa.052.0.i = load ptr, ptr %i.arc, align 8, !tbaa !87 ; 2 uses
  %.not62.i103 = icmp eq ptr %.sroa.052.0.i, %i.afn
  br i1 %.not62.i103, label %._crit_edge.i104, label %.lr.ph.i102

._crit_edge73.loopexit.i:                         ; preds = %.lr.ph72.i
  %.pre75.i = load i32, ptr %i.ew, align 8, !tbaa !37
  %.pre76.i = load ptr, ptr %13, align 8, !tbaa !23
  %i.ard = icmp ne i32 %.pre75.i, 0
  br label %._crit_edge73.i

._crit_edge73.i:                                  ; preds = %._crit_edge73.loopexit.i, %._crit_edge.i104
  %i.are = phi ptr [ %.pre76.i, %._crit_edge73.loopexit.i ], [ %.pre.i105, %._crit_edge.i104 ] ; 2 uses
  %.not.i48.i = phi i1 [ %i.ard, %._crit_edge73.loopexit.i ], [ false, %._crit_edge.i104 ] ; 2 uses
  %i.arf = icmp eq ptr %i.are, %i.ev
  br i1 %i.arf, label %_ZN12_GLOBAL__N_124MVETPAndVPTOptimisations20ReplaceVCMPsByVPNOTsERN4llvm17MachineBasicBlockE.exit, label %bb.ea

bb.ea:                                            ; preds = %._crit_edge73.i
  call void @free(ptr noundef %i.are) #16
  br label %_ZN12_GLOBAL__N_124MVETPAndVPTOptimisations20ReplaceVCMPsByVPNOTsERN4llvm17MachineBasicBlockE.exit

.lr.ph72.i:                                       ; preds = %._crit_edge.i104, %.lr.ph72.i
  %.03870.i = phi ptr [ %i.ari, %.lr.ph72.i ], [ %.pre.i105, %._crit_edge.i104 ] ; 2 uses
  %i.arg = load ptr, ptr %.03870.i, align 8, !tbaa !51
  %i.arh = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.arg) #16 ; 0 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %.03870.i, i64 8 ; 2 uses
  %.not.i107 = icmp eq ptr %i.ari, %i.anv
  br i1 %.not.i107, label %._crit_edge73.loopexit.i, label %.lr.ph72.i

_ZN12_GLOBAL__N_124MVETPAndVPTOptimisations20ReplaceVCMPsByVPNOTsERN4llvm17MachineBasicBlockE.exit: ; preds = %_ZN12_GLOBAL__N_124MVETPAndVPTOptimisations20ReplaceConstByVPNOTsERN4llvm17MachineBasicBlockEPNS1_20MachineDominatorTreeE.exit, %._crit_edge73.i, %bb.ea
  %.not.i4885.i = phi i1 [ %.not.i48.i, %bb.ea ], [ %.not.i48.i, %._crit_edge73.i ], [ false, %_ZN12_GLOBAL__N_124MVETPAndVPTOptimisations20ReplaceConstByVPNOTsERN4llvm17MachineBasicBlockEPNS1_20MachineDominatorTreeE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  %i.arj = or i1 %i.ant, %.not.i4885.i
  %i.ark = load ptr, ptr %i.afm, align 8, !tbaa !87 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store ptr %i.fc, ptr %10, align 8, !tbaa !23
  store i32 0, ptr %i.fd, align 8, !tbaa !37
  store i32 4, ptr %i.fe, align 4, !tbaa !39
  %.not158183.i = icmp eq ptr %i.ark, %i.afn
  br i1 %.not158183.i, label %_ZN12_GLOBAL__N_124MVETPAndVPTOptimisations22ReduceOldVCCRValueUsesERN4llvm17MachineBasicBlockE.exit, label %.preheader162.lr.ph.i

.preheader162.lr.ph.i:                            ; preds = %_ZN12_GLOBAL__N_124MVETPAndVPTOptimisations20ReplaceVCMPsByVPNOTsERN4llvm17MachineBasicBlockE.exit
  %i.arl = getelementptr inbounds nuw i8, ptr %.sroa.0176.0227, i64 40 ; 3 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %.sroa.0176.0227, i64 32
  br label %.preheader162.i

.preheader162.i:                                  ; preds = %bb.fj, %.preheader162.lr.ph.i
  %.0185.i = phi i1 [ false, %.preheader162.lr.ph.i ], [ %.6.i, %bb.fj ] ; 2 uses
  %.sroa.0101.0184.i = phi ptr [ %i.ark, %.preheader162.lr.ph.i ], [ %.sroa.0101.5.lcssa.i, %bb.fj ]
  br label %bb.eb

bb.eb:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit60.i, %.preheader162.i
  %.sroa.091.0177.i = phi i32 [ 0, %.preheader162.i ], [ %.sroa.091.2.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit60.i ] ; 11 uses
  %.sroa.0101.1176.i = phi ptr [ %.sroa.0101.0184.i, %.preheader162.i ], [ %i.avv, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit60.i ] ; 31 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %.sroa.0101.1176.i, i64 40
  %i.aro = load i24, ptr %i.arn, align 8
  %i.arp = icmp eq i24 %i.aro, 0
  br i1 %i.arp, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i114, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.arq = getelementptr inbounds nuw i8, ptr %.sroa.0101.1176.i, i64 32 ; 3 uses
  %i.arr = load ptr, ptr %i.arq, align 8, !tbaa !69 ; 2 uses
  %i.ars = load i32, ptr %i.arr, align 8
  %i.art = and i32 %i.ars, 255
  %i.aru = icmp eq i32 %i.art, 0
  br i1 %i.aru, label %bb.ed, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i114

bb.ed:                                            ; preds = %bb.ec
  %i.arv = getelementptr inbounds nuw i8, ptr %i.arr, i64 4
  %i.arw = load i32, ptr %i.arv, align 4, !tbaa !70 ; 2 uses
  %i.arx = icmp slt i32 %i.arw, 0
  br i1 %i.arx, label %bb.ee, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i114

bb.ee:                                            ; preds = %bb.ed
  %i.ary = call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0101.1176.i) #16
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ary, i64 32
  %i.asa = load ptr, ptr %i.arz, align 8, !tbaa !471
  %i.asb = getelementptr inbounds nuw i8, ptr %i.asa, i64 48
  %i.asc = and i32 %i.arw, 2147483647
  %i.asd = zext nneg i32 %i.asc to i64
  %i.ase = load ptr, ptr %i.asb, align 8, !tbaa !23
  %i.asf = getelementptr inbounds nuw [16 x i8], ptr %i.ase, i64 %i.asd
  %.sroa.0.0.copyload.i.i.i.i.i.i127 = load i64, ptr %i.asf, align 8 ; 2 uses
  %i.asg = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i127, 4
  %i.ash = icmp ne i64 %i.asg, 0
  %i.asi = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i127, -5 ; 2 uses
  %.not11.i.i128 = icmp eq i64 %i.asi, 0
  %.not.i.i129 = or i1 %i.ash, %.not11.i.i128
  br i1 %.not.i.i129, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i114, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.i130

_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.i130: ; preds = %bb.ee
  %i.asj = inttoptr i64 %i.asi to ptr
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asj, i64 20
  %i.asl = load i16, ptr %i.ask, align 4, !tbaa !522
  %i.asm = icmp eq i16 %i.asl, 47
  br i1 %i.asm, label %bb.ef, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i114

bb.ef:                                            ; preds = %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.i130
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store i32 0, ptr %9, align 4, !tbaa !519
  %i.asn = call noundef i32 @_ZN4llvm20getVPTInstrPredicateERKNS_12MachineInstrERNS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0101.1176.i, ptr noundef nonnull align 4 dereferenceable(4) %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %.not.i131 = icmp eq i32 %i.asn, 0
  br i1 %.not.i131, label %bb.eg, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i114

bb.eg:                                            ; preds = %bb.ef
  %i.aso = load ptr, ptr %i.arq, align 8, !tbaa !69
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aso, i64 4
  %i.asq = load i32, ptr %i.asp, align 4, !tbaa !70 ; 4 uses
  %.not45.i = icmp eq i32 %.sroa.091.0177.i, 0
  br i1 %.not45.i, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i114, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.asr = getelementptr inbounds nuw i8, ptr %.sroa.0101.1176.i, i64 52
  %i.ass = load i32, ptr %i.asr, align 4, !tbaa !68
  %i.ast = icmp eq i32 %i.ass, 1488
  br i1 %i.ast, label %bb.ei, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i114

bb.ei:                                            ; preds = %bb.eh
  %i.asu = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0101.1176.i, i32 %.sroa.091.0177.i, ptr noundef null, i1 noundef zeroext false) #16
  %.not46.i = icmp eq i32 %i.asu, -1
  br i1 %.not46.i, label %_ZL15IsWritingToVCCRRN4llvm12MachineInstrE.exit.thread.i114, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
end_hunk_0

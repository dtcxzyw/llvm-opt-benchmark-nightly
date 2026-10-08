Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMConstantIslandPass?download=true
inline.NumInlined: 2880
inline.NumDeleted: 1313
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN12_GLOBAL__N_118ARMConstantIslands20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
  %i.dlm = add i32 %i.dll, -2
  store i32 %i.dlm, ptr %i.dlk, align 4, !tbaa !812
  br label %bb.ni

bb.nh:                                            ; preds = %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit.i
  %.0.copyload.i.i.i.i.i.i.i.i.i.i93.i = load i64, ptr %i.dcc, align 8
  %i.dln = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i93.i, -8
  %i.dlo = inttoptr i64 %i.dln to ptr             ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dlo) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i.i94.i = load i64, ptr %i.dlo, align 8
  %i.dlp = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i.i94.i, 4
  %.not.i5.i.i.i95.i = icmp eq i64 %i.dlp, 0
  br i1 %.not.i5.i.i.i95.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i97.i, label %_ZN4llvm17MachineBasicBlock4backEv.exit103.thread.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i97.i: ; preds = %bb.nh
  %i.dlq = getelementptr inbounds nuw i8, ptr %i.dlo, i64 44
  %i.dlr = load i32, ptr %i.dlq, align 4, !tbaa !243
  %i.dls = and i32 %i.dlr, 4
  %.not45.i.i.i.i98.i = icmp eq i32 %i.dls, 0
  br i1 %.not45.i.i.i.i98.i, label %_ZN4llvm17MachineBasicBlock4backEv.exit103.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i99.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i99.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i97.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i99.i
  %.sroa.0.06.i.i.i.i100.i = phi ptr [ %i.dlu, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i99.i ], [ %i.dlo, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i97.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i101.i = load i64, ptr %.sroa.0.06.i.i.i.i100.i, align 8
  %i.dlt = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i101.i, -8
  %i.dlu = inttoptr i64 %i.dlt to ptr             ; 3 uses
  %i.dlv = getelementptr inbounds nuw i8, ptr %i.dlu, i64 44
  %i.dlw = load i32, ptr %i.dlv, align 4, !tbaa !243
  %i.dlx = and i32 %i.dlw, 4
  %.not4.i.i.i.i102.i = icmp eq i32 %i.dlx, 0
  br i1 %.not4.i.i.i.i102.i, label %_ZN4llvm17MachineBasicBlock4backEv.exit103.thread171.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i99.i, !llvm.loop !3

_ZN4llvm17MachineBasicBlock4backEv.exit103.i:     ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i97.i
  %i.dly = getelementptr inbounds nuw i8, ptr %i.dlo, i64 52
  %i.dlz = load i32, ptr %i.dly, align 4, !tbaa !657
  %.not.i298 = icmp eq i32 %i.dlz, 4188
  br i1 %.not.i298, label %bb.ni, label %_ZN4llvm17MachineBasicBlock4backEv.exit114.i

_ZN4llvm17MachineBasicBlock4backEv.exit103.thread171.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i99.i
  %i.dma = getelementptr inbounds nuw i8, ptr %i.dlu, i64 52
  %i.dmb = load i32, ptr %i.dma, align 4, !tbaa !657
  %.not173.i = icmp eq i32 %i.dmb, 4188
  br i1 %.not173.i, label %bb.ni, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i110.i

_ZN4llvm17MachineBasicBlock4backEv.exit103.thread.i: ; preds = %bb.nh
  %i.dmc = getelementptr inbounds nuw i8, ptr %i.dlo, i64 52
  %i.dmd = load i32, ptr %i.dmc, align 4, !tbaa !657
  %.not144.i = icmp eq i32 %i.dmd, 4188
  br i1 %.not144.i, label %bb.ni, label %_ZN4llvm17MachineBasicBlock4backEv.exit114.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i110.i: ; preds = %_ZN4llvm17MachineBasicBlock4backEv.exit103.thread171.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i110.i
  %.sroa.0.06.i.i.i.i111.i = phi ptr [ %i.dmf, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i110.i ], [ %i.dlo, %_ZN4llvm17MachineBasicBlock4backEv.exit103.thread171.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i112.i = load i64, ptr %.sroa.0.06.i.i.i.i111.i, align 8
  %i.dme = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i112.i, -8
  %i.dmf = inttoptr i64 %i.dme to ptr             ; 3 uses
  %i.dmg = getelementptr inbounds nuw i8, ptr %i.dmf, i64 44
  %i.dmh = load i32, ptr %i.dmg, align 4, !tbaa !243
  %i.dmi = and i32 %i.dmh, 4
  %.not4.i.i.i.i113.i = icmp eq i32 %i.dmi, 0
  br i1 %.not4.i.i.i.i113.i, label %_ZN4llvm17MachineBasicBlock4backEv.exit114.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i110.i, !llvm.loop !3

_ZN4llvm17MachineBasicBlock4backEv.exit114.i:     ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i110.i, %_ZN4llvm17MachineBasicBlock4backEv.exit103.thread.i, %_ZN4llvm17MachineBasicBlock4backEv.exit103.i
  %.sroa.0.1.i.i.i.i107.i = phi ptr [ %i.dlo, %_ZN4llvm17MachineBasicBlock4backEv.exit103.thread.i ], [ %i.dlo, %_ZN4llvm17MachineBasicBlock4backEv.exit103.i ], [ %i.dmf, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i110.i ] ; 2 uses
  %i.dmj = load ptr, ptr %i.an, align 8, !tbaa !111
  %i.dmk = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i107.i, i64 16
  %i.dml = load ptr, ptr %i.dmk, align 8, !tbaa !654
  %i.dmm = getelementptr inbounds nuw i8, ptr %i.dml, i64 7
  %i.dmn = load i8, ptr %i.dmm, align 1, !tbaa !858
  %i.dmo = zext i8 %i.dmn to i32
  %i.dmp = getelementptr inbounds nuw i8, ptr %i.dmj, i64 24
  %i.dmq = getelementptr inbounds nuw i8, ptr %i.dcb, i64 24
  %i.dmr = load i32, ptr %i.dmq, align 8, !tbaa !291
  %i.dms = sext i32 %i.dmr to i64
  %i.dmt = load ptr, ptr %i.dmp, align 8, !tbaa !27
  %i.dmu = getelementptr inbounds nuw [12 x i8], ptr %i.dmt, i64 %i.dms
  %i.dmv = getelementptr inbounds nuw i8, ptr %i.dmu, i64 4 ; 2 uses
  %i.dmw = load i32, ptr %i.dmv, align 4, !tbaa !812
  %i.dmx = sub i32 %i.dmw, %i.dmo
  store i32 %i.dmx, ptr %i.dmv, align 4, !tbaa !812
  %i.dmy = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.1.i.i.i.i107.i) #19 ; 0 uses
  br label %bb.ni

bb.ni:                                            ; preds = %_ZN4llvm17MachineBasicBlock4backEv.exit114.i, %_ZN4llvm17MachineBasicBlock4backEv.exit103.thread.i, %_ZN4llvm17MachineBasicBlock4backEv.exit103.thread171.i, %_ZN4llvm17MachineBasicBlock4backEv.exit103.i, %bb.ng
  %i.dmz = load ptr, ptr %i.an, align 8, !tbaa !111
  call void @_ZN4llvm18ARMBasicBlockUtils20adjustBBOffsetsAfterEPNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(136) %i.dmz, ptr noundef nonnull %i.dcb) #19
  br label %bb.nj

bb.nj:                                            ; preds = %bb.ni, %"_ZZN12_GLOBAL__N_118ARMConstantIslands22optimizeThumb2BranchesEvENK3$_0clERNS0_9ImmBranchE.exit.i"
  %.2.i289 = phi i1 [ true, %bb.ni ], [ %.1.i288, %"_ZZN12_GLOBAL__N_118ARMConstantIslands22optimizeThumb2BranchesEvENK3$_0clERNS0_9ImmBranchE.exit.i" ] ; 2 uses
  %.not147.i = icmp eq ptr %i.dbu, %.val.i280
  br i1 %.not147.i, label %_ZN12_GLOBAL__N_118ARMConstantIslands22optimizeThumb2BranchesEv.exit.loopexit, label %bb.me

_ZN12_GLOBAL__N_118ARMConstantIslands22optimizeThumb2BranchesEv.exit.loopexit: ; preds = %bb.nj
  %i.dna = or i1 %.3, %.2.i289
  br label %_ZN12_GLOBAL__N_118ARMConstantIslands22optimizeThumb2BranchesEv.exit

_ZN12_GLOBAL__N_118ARMConstantIslands22optimizeThumb2BranchesEv.exit: ; preds = %bb.md, %_ZN12_GLOBAL__N_118ARMConstantIslands22optimizeThumb2BranchesEv.exit.loopexit, %bb.mc, %_ZN12_GLOBAL__N_118ARMConstantIslands26optimizeThumb2InstructionsEv.exit
  %.4 = phi i1 [ %.3, %_ZN12_GLOBAL__N_118ARMConstantIslands26optimizeThumb2InstructionsEv.exit ], [ %.3, %bb.mc ], [ %.3, %bb.md ], [ %i.dna, %_ZN12_GLOBAL__N_118ARMConstantIslands22optimizeThumb2BranchesEv.exit.loopexit ] ; 5 uses
  br i1 %spec.select, label %bb.nk, label %_ZN12_GLOBAL__N_118ARMConstantIslands24optimizeThumb2JumpTablesEv.exit

bb.nk:                                            ; preds = %_ZN12_GLOBAL__N_118ARMConstantIslands22optimizeThumb2BranchesEv.exit
  %i.dnb = load ptr, ptr %i.aw, align 8, !tbaa !531
  %i.dnc = getelementptr inbounds nuw i8, ptr %i.dnb, i64 356
  %i.dnd = load i8, ptr %i.dnc, align 4, !tbaa !859, !range !23, !noundef !24
  %i.dne = trunc nuw i8 %i.dnd to i1
  br i1 %i.dne, label %_ZN12_GLOBAL__N_118ARMConstantIslands24optimizeThumb2JumpTablesEv.exit, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.dnf = load ptr, ptr %i.s, align 8, !tbaa !112
  %i.dng = getelementptr inbounds nuw i8, ptr %i.dnf, i64 64
  %i.dnh = load ptr, ptr %i.dng, align 8, !tbaa !658 ; 2 uses
  %.not.i314 = icmp eq ptr %i.dnh, null
  br i1 %.not.i314, label %_ZN12_GLOBAL__N_118ARMConstantIslands24optimizeThumb2JumpTablesEv.exit, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.dni = getelementptr inbounds nuw i8, ptr %i.dnh, i64 8
  %i.dnj = load ptr, ptr %i.ahz, align 8, !tbaa !27 ; 2 uses
  %i.dnk = load i32, ptr %i.aia, align 8, !tbaa !36 ; 2 uses
  %i.dnl = zext i32 %i.dnk to i64
  %.idx.i315 = shl nuw nsw i64 %i.dnl, 3
  %i.dnm = getelementptr inbounds nuw i8, ptr %i.dnj, i64 %.idx.i315
  %.not173395.i = icmp eq i32 %i.dnk, 0
  br i1 %.not173395.i, label %_ZN12_GLOBAL__N_118ARMConstantIslands24optimizeThumb2JumpTablesEv.exit, label %.lr.ph399.i

.lr.ph399.i:                                      ; preds = %bb.nm
  %i.dnn = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dno = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dnp = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.dnq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dnr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dns = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dnt = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dnu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dnv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dnw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dnx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dny = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  br label %bb.nn

bb.nn:                                            ; preds = %.critedge.thread.i, %.lr.ph399.i
  %.0156397.i = phi i1 [ false, %.lr.ph399.i ], [ %.3.i324, %.critedge.thread.i ] ; 24 uses
  %.0161396.i = phi ptr [ %i.dnj, %.lr.ph399.i ], [ %i.eih, %.critedge.thread.i ] ; 2 uses
  %i.dnz = load ptr, ptr %.0161396.i, align 8, !tbaa !247 ; 23 uses
  %i.doa = getelementptr inbounds nuw i8, ptr %i.dnz, i64 16
  %i.dob = load ptr, ptr %i.doa, align 8, !tbaa !654 ; 2 uses
  %i.doc = getelementptr inbounds nuw i8, ptr %i.dob, i64 4
  %i.dod = load i16, ptr %i.doc, align 4, !tbaa !659
  %i.doe = zext i16 %i.dod to i64
  %i.dof = getelementptr inbounds nuw i8, ptr %i.dnz, i64 44
  %i.dog = load i32, ptr %i.dof, align 4, !tbaa !243 ; 2 uses
  %i.doh = and i32 %i.dog, 12
  %i.doi = icmp eq i32 %i.doh, 0
  %i.doj = and i32 %i.dog, 4
  %i.dok = icmp ne i32 %i.doj, 0
  %or.cond.i.i.i316 = or i1 %i.doi, %i.dok
  br i1 %or.cond.i.i.i316, label %bb.no, label %bb.np

bb.no:                                            ; preds = %bb.nn
  %i.dol = getelementptr inbounds nuw i8, ptr %i.dob, i64 16
  %i.dom = load i64, ptr %i.dol, align 8, !tbaa !656
  %i.don = and i64 %i.dom, 4194304
  %i.doo = icmp ne i64 %i.don, 0
  br label %_ZNK4llvm12MachineInstr12isPredicableENS0_9QueryTypeE.exit.i317

bb.np:                                            ; preds = %bb.nn
  %i.dop = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %i.dnz, i64 noundef 4194304, i32 noundef 2) #19
  br label %_ZNK4llvm12MachineInstr12isPredicableENS0_9QueryTypeE.exit.i317

_ZNK4llvm12MachineInstr12isPredicableENS0_9QueryTypeE.exit.i317: ; preds = %bb.np, %bb.no
  %.0.i.i.i318 = phi i1 [ %i.doo, %bb.no ], [ %i.dop, %bb.np ]
  %.neg.i319 = select i1 %.0.i.i.i318, i64 4294967294, i64 4294967295
  %i.doq = add nuw nsw i64 %.neg.i319, %i.doe
  %i.dor = getelementptr inbounds nuw i8, ptr %i.dnz, i64 32 ; 5 uses
  %i.dos = load ptr, ptr %i.dor, align 8, !tbaa !660
  %i.dot = and i64 %i.doq, 4294967295
  %i.dou = getelementptr inbounds nuw [32 x i8], ptr %i.dos, i64 %i.dot ; 2 uses
  %.sroa.0299.0.copyload.i = load i32, ptr %i.dou, align 8, !tbaa !307 ; 2 uses
  %.sroa.4301.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dou, i64 16
  %.sroa.4301.0.copyload.i = load i32, ptr %.sroa.4301.0..sroa_idx.i, align 8 ; 4 uses
  %i.dov = load ptr, ptr %i.an, align 8, !tbaa !111
  %i.dow = call noundef i32 @_ZNK4llvm18ARMBasicBlockUtils11getOffsetOfEPNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(136) %i.dov, ptr noundef nonnull %i.dnz) #19
  %i.dox = zext i32 %.sroa.4301.0.copyload.i to i64
  %i.doy = load ptr, ptr %i.dni, align 8, !tbaa !663
  %i.doz = getelementptr inbounds nuw [32 x i8], ptr %i.doy, i64 %i.dox ; 2 uses
  %i.dpa = load ptr, ptr %i.an, align 8, !tbaa !111
  %i.dpb = getelementptr inbounds nuw i8, ptr %i.dpa, i64 24 ; 2 uses
  %i.dpc = load ptr, ptr %i.doz, align 8, !tbaa !292 ; 2 uses
  %i.dpd = getelementptr inbounds nuw i8, ptr %i.doz, i64 8
  %i.dpe = load ptr, ptr %i.dpd, align 8, !tbaa !292 ; 2 uses
  %.not337379.i = icmp eq ptr %i.dpc, %i.dpe
  br i1 %.not337379.i, label %._crit_edge.thread.i, label %.lr.ph.i320

.lr.ph.i320:                                      ; preds = %_ZNK4llvm12MachineInstr12isPredicableENS0_9QueryTypeE.exit.i317
  %i.dpf = load ptr, ptr %i.dpb, align 8, !tbaa !27
  %invariant.op = sub i32 -4, %i.dow
  br label %bb.nr

bb.nq:                                            ; preds = %bb.nr
  %i.dpg = getelementptr inbounds nuw i8, ptr %.sroa.0296.0380.i, i64 8 ; 2 uses
  %.not337.i = icmp eq ptr %i.dpg, %i.dpe
  br i1 %.not337.i, label %._crit_edge.i323, label %bb.nr

bb.nr:                                            ; preds = %bb.nq, %.lr.ph.i320
  %.0163382.i = phi i8 [ 1, %.lr.ph.i320 ], [ %.1164.i, %bb.nq ] ; 2 uses
  %.0166381.i = phi i8 [ 1, %.lr.ph.i320 ], [ %.1167.i, %bb.nq ] ; 2 uses
  %.sroa.0296.0380.i = phi ptr [ %i.dpc, %.lr.ph.i320 ], [ %i.dpg, %bb.nq ] ; 2 uses
  %i.dph = load ptr, ptr %.sroa.0296.0380.i, align 8, !tbaa !293
  %i.dpi = getelementptr inbounds nuw i8, ptr %i.dph, i64 24
  %i.dpj = load i32, ptr %i.dpi, align 8, !tbaa !291
  %i.dpk = sext i32 %i.dpj to i64
  %i.dpl = getelementptr inbounds nuw [12 x i8], ptr %i.dpf, i64 %i.dpk
  %i.dpm = load i32, ptr %i.dpl, align 4, !tbaa !823
  %i.dpn = trunc nuw i8 %.0163382.i to i1
  %.reass.i.reass.reass.reass = add i32 %i.dpm, %invariant.op ; 2 uses
  %i.dpo = icmp ugt i32 %.reass.i.reass.reass.reass, 510
  %or.cond180.i = select i1 %i.dpn, i1 %i.dpo, i1 false
  %.1164.i = select i1 %or.cond180.i, i8 0, i8 %.0163382.i ; 2 uses
  %i.dpp = trunc nuw i8 %.0166381.i to i1
  %i.dpq = icmp ugt i32 %.reass.i.reass.reass.reass, 131070
  %or.cond182.i = select i1 %i.dpp, i1 %i.dpq, i1 false
  %.1167.i = select i1 %or.cond182.i, i8 0, i8 %.0166381.i ; 2 uses
  %i.dpr = trunc nuw i8 %.1164.i to i1            ; 3 uses
  %i.dps = trunc nuw i8 %.1167.i to i1            ; 2 uses
  %or.cond.i322 = select i1 %i.dpr, i1 true, i1 %i.dps
  br i1 %or.cond.i322, label %bb.nq, label %._crit_edge.i323

._crit_edge.i323:                                 ; preds = %bb.nq, %bb.nr
  %.2168.ph.i = phi i1 [ false, %bb.nr ], [ %i.dps, %bb.nq ]
  %or.cond8.i = select i1 %i.dpr, i1 true, i1 %.2168.ph.i
  br i1 %or.cond8.i, label %._crit_edge.thread.i, label %.critedge.thread.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i323, %_ZNK4llvm12MachineInstr12isPredicableENS0_9QueryTypeE.exit.i317
  %.2165463.i = phi i1 [ %i.dpr, %._crit_edge.i323 ], [ true, %_ZNK4llvm12MachineInstr12isPredicableENS0_9QueryTypeE.exit.i317 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 %.sroa.4301.0.copyload.i, ptr %i.c, align 4, !tbaa !302
  %i.dpt = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E24lookupOrInsertIntoBucketIiJEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.dnn, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %.fca.0.extract.i.i328 = extractvalue { ptr, i8 } %i.dpt, 0
  %i.dpu = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i328, i64 4
  %i.dpv = load i32, ptr %i.dpu, align 4, !tbaa !302
  %i.dpw = sext i32 %i.dpv to i64
  %.val183.i = load ptr, ptr %i.akn, align 8, !tbaa !107
  %i.dpx = getelementptr inbounds nuw [32 x i8], ptr %.val183.i, i64 %i.dpw ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.dpy = getelementptr inbounds nuw i8, ptr %i.dnz, i64 24 ; 3 uses
  %i.dpz = load ptr, ptr %i.dpy, align 8, !tbaa !248 ; 14 uses
  %i.dqa = load ptr, ptr %i.dor, align 8, !tbaa !660 ; 4 uses
  %i.dqb = load i32, ptr %i.dqa, align 8          ; 2 uses
  %i.dqc = lshr i32 %i.dqb, 26
  %i.dqd = lshr i32 %i.dqb, 24
  %.lobit.i.i = and i32 %i.dqd, 1
  %i.dqe = xor i32 %.lobit.i.i, 1
  %i.dqf = and i32 %i.dqe, %i.dqc
  %.not338.i = icmp eq i32 %i.dqf, 0
  br i1 %.not338.i, label %.critedge.thread.i, label %bb.ns

bb.ns:                                            ; preds = %._crit_edge.thread.i
  %i.dqg = load i8, ptr %i.cr, align 2, !tbaa !223, !range !23, !noundef !24
  %i.dqh = trunc nuw i8 %i.dqg to i1
  br i1 %i.dqh, label %bb.nt, label %bb.oi

bb.nt:                                            ; preds = %bb.ns
  %i.dqi = getelementptr inbounds nuw i8, ptr %i.dqa, i64 32
  %i.dqj = getelementptr inbounds nuw i8, ptr %i.dqa, i64 36
  %i.dqk = load i32, ptr %i.dqj, align 4, !tbaa !307 ; 2 uses
  %i.dql = load i32, ptr %i.dqi, align 8          ; 2 uses
  %i.dqm = lshr i32 %i.dql, 26
  %i.dqn = lshr i32 %i.dql, 24
  %.lobit.i190.i = and i32 %i.dqn, 1
  %i.dqo = xor i32 %.lobit.i190.i, 1
  %i.dqp = and i32 %i.dqo, %i.dqm
  %i.dqq = icmp ne i32 %i.dqp, 0                  ; 2 uses
  %i.dqr = load ptr, ptr %i.dpx, align 8, !tbaa !814 ; 8 uses
  %i.dqs = getelementptr inbounds nuw i8, ptr %i.dqr, i64 24
  %i.dqt = load ptr, ptr %i.dqs, align 8, !tbaa !248
  %.not.i.i371 = icmp eq ptr %i.dpz, %i.dqt
  br i1 %.not.i.i371, label %bb.nu, label %_ZN12_GLOBAL__N_118ARMConstantIslands20preserveBaseRegisterEPN4llvm12MachineInstrES3_RjRbS5_.exit.i

bb.nu:                                            ; preds = %bb.nt
  %i.dqu = getelementptr inbounds nuw i8, ptr %i.dqa, i64 4
  %i.dqv = load i32, ptr %i.dqu, align 4, !tbaa !307 ; 3 uses
  %i.dqw = getelementptr inbounds nuw i8, ptr %i.dqr, i64 32
  %i.dqx = load ptr, ptr %i.dqw, align 8, !tbaa !660
  %i.dqy = getelementptr inbounds nuw i8, ptr %i.dqx, i64 4
  %i.dqz = load i32, ptr %i.dqy, align 4, !tbaa !307 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dqr) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i374 = load i64, ptr %i.dqr, align 8
  %i.dra = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i374, 4
  %.not.i.i.i.i.i375 = icmp eq i64 %i.dra, 0
  br i1 %.not.i.i.i.i.i375, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i386, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i376

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i386: ; preds = %bb.nu
  %i.drb = getelementptr inbounds nuw i8, ptr %i.dqr, i64 44
  %i.drc = load i32, ptr %i.drb, align 4, !tbaa !243
  %i.drd = and i32 %i.drc, 8
  %.not34.i.i.i.i.i387 = icmp eq i32 %i.drd, 0
  br i1 %.not34.i.i.i.i.i387, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i376, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i388

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i388: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i386, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i388
  %.sroa.0.05.i.i.i.i.i389 = phi ptr [ %i.drf, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i388 ], [ %i.dqr, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i386 ]
  %i.dre = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i389, i64 8
  %i.drf = load ptr, ptr %i.dre, align 8, !tbaa !230 ; 3 uses
  %i.drg = getelementptr inbounds nuw i8, ptr %i.drf, i64 44
  %i.drh = load i32, ptr %i.drg, align 4, !tbaa !243
  %i.dri = and i32 %i.drh, 8
  %.not3.i.i.i.i.i390 = icmp eq i32 %i.dri, 0
  br i1 %.not3.i.i.i.i.i390, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i376, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i388, !llvm.loop !342

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i376: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i388, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i386, %bb.nu
  %.sroa.0.1.i.i.i.i.i377 = phi ptr [ %i.dqr, %bb.nu ], [ %i.dqr, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i386 ], [ %i.drf, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i388 ]
  %.sroa.0121.0.in160.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i377, i64 8
  %.sroa.0121.0161.i.i = load ptr, ptr %.sroa.0121.0.in160.i.i, align 8, !tbaa !230 ; 2 uses
  %.not69162.i.i = icmp eq ptr %.sroa.0121.0161.i.i, %i.dnz
  br i1 %.not69162.i.i, label %_ZN12_GLOBAL__N_118ARMConstantIslands20preserveBaseRegisterEPN4llvm12MachineInstrES3_RjRbS5_.exit.i, label %.lr.ph164.i.i

.lr.ph164.i.i:                                    ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i376, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit90.i.i
  %.1318.i = phi i8 [ %.4321.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit90.i.i ], [ 0, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i376 ] ; 5 uses
  %.4312.i = phi i1 [ %.7315.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit90.i.i ], [ true, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i376 ] ; 5 uses
  %.sroa.0121.0163.i.i = phi ptr [ %.sroa.0121.0.i.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit90.i.i ], [ %.sroa.0121.0161.i.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i376 ] ; 17 uses
  %i.drj = getelementptr i8, ptr %.sroa.0121.0163.i.i, i64 32
  %.val.i.i378 = load ptr, ptr %i.drj, align 8    ; 4 uses
  %i.drk = getelementptr i8, ptr %.sroa.0121.0163.i.i, i64 52
  %.val79.i.i = load i32, ptr %i.drk, align 4, !tbaa !657
  %.not.i.i.i379 = icmp eq i32 %.val79.i.i, 4052
  br i1 %.not.i.i.i379, label %bb.nv, label %_ZL17isSimpleIndexCalcRN4llvm12MachineInstrEjj.exit.thread.i.i

bb.nv:                                            ; preds = %.lr.ph164.i.i
  %i.drl = getelementptr inbounds nuw i8, ptr %.val.i.i378, i64 4
  %i.drm = load i32, ptr %i.drl, align 4, !tbaa !307
  %.not2.i.i.i = icmp eq i32 %i.drm, %i.dqv
  br i1 %.not2.i.i.i, label %_ZL17isSimpleIndexCalcRN4llvm12MachineInstrEjj.exit.i.i, label %_ZL17isSimpleIndexCalcRN4llvm12MachineInstrEjj.exit.thread.i.i

_ZL17isSimpleIndexCalcRN4llvm12MachineInstrEjj.exit.i.i: ; preds = %bb.nv
  %i.drn = getelementptr inbounds nuw i8, ptr %.val.i.i378, i64 36
  %i.dro = load i32, ptr %i.drn, align 4, !tbaa !307
  %.not3.i.i.i382 = icmp eq i32 %i.dro, %i.dqz
  br i1 %.not3.i.i.i382, label %bb.ob, label %_ZL17isSimpleIndexCalcRN4llvm12MachineInstrEjj.exit.thread.i.i

_ZL17isSimpleIndexCalcRN4llvm12MachineInstrEjj.exit.thread.i.i: ; preds = %_ZL17isSimpleIndexCalcRN4llvm12MachineInstrEjj.exit.i.i, %bb.nv, %.lr.ph164.i.i
  %i.drp = getelementptr inbounds nuw i8, ptr %.sroa.0121.0163.i.i, i64 40
  %i.drq = load i24, ptr %i.drp, align 8          ; 2 uses
  %i.drr = zext i24 %i.drq to i64
  %.idx.i.i380 = shl nuw nsw i64 %i.drr, 5
  %i.drs = getelementptr inbounds nuw i8, ptr %.val.i.i378, i64 %.idx.i.i380
  %.not70158.i.i = icmp eq i24 %i.drq, 0
  br i1 %.not70158.i.i, label %.critedge78.i.i, label %.lr.ph.i.i381

.lr.ph.i.i381:                                    ; preds = %_ZL17isSimpleIndexCalcRN4llvm12MachineInstrEjj.exit.thread.i.i, %.critedge5.i.i
  %.2319.i = phi i8 [ %.3320.i, %.critedge5.i.i ], [ %.1318.i, %_ZL17isSimpleIndexCalcRN4llvm12MachineInstrEjj.exit.thread.i.i ] ; 6 uses
  %.5313.i = phi i1 [ %.6314.i, %.critedge5.i.i ], [ %.4312.i, %_ZL17isSimpleIndexCalcRN4llvm12MachineInstrEjj.exit.thread.i.i ] ; 5 uses
  %.062159.i.i = phi ptr [ %i.dsf, %.critedge5.i.i ], [ %.val.i.i378, %_ZL17isSimpleIndexCalcRN4llvm12MachineInstrEjj.exit.thread.i.i ] ; 3 uses
  %i.drt = load i32, ptr %.062159.i.i, align 8    ; 3 uses
  %i.dru = and i32 %i.drt, 255
  %i.drv = icmp eq i32 %i.dru, 0
  br i1 %i.drv, label %bb.nw, label %.critedge5.i.i

bb.nw:                                            ; preds = %.lr.ph.i.i381
  %i.drw = getelementptr inbounds nuw i8, ptr %.062159.i.i, i64 4
  %i.drx = load i32, ptr %i.drw, align 4, !tbaa !307 ; 2 uses
  %.not71.i.i = icmp eq i32 %i.drx, 0
  br i1 %.not71.i.i, label %.critedge5.i.i, label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  %i.dry = and i32 %i.drt, 16777216
  %.not147.i.i = icmp eq i32 %i.dry, 0
  %i.drz = icmp eq i32 %i.drx, %i.dqz             ; 2 uses
  br i1 %.not147.i.i, label %bb.nz, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  br i1 %i.drz, label %_ZN12_GLOBAL__N_118ARMConstantIslands20preserveBaseRegisterEPN4llvm12MachineInstrES3_RjRbS5_.exit.i, label %.critedge5.i.i

bb.nz:                                            ; preds = %bb.nx
  br i1 %i.drz, label %bb.oa, label %.critedge5.i.i

bb.oa:                                            ; preds = %bb.nz
  %i.dsa = trunc nuw i8 %.2319.i to i1
  %i.dsb = lshr i32 %i.drt, 26
  %i.dsc = trunc nuw nsw i32 %i.dsb to i8
  %i.dsd = and i8 %i.dsc, 1
  %i.dse = select i1 %i.dsa, i8 1, i8 %i.dsd
  br label %.critedge5.i.i

.critedge5.i.i:                                   ; preds = %bb.oa, %bb.nz, %bb.ny, %bb.nw, %.lr.ph.i.i381
  %.3320.i = phi i8 [ %.2319.i, %bb.nw ], [ %i.dse, %bb.oa ], [ %.2319.i, %bb.nz ], [ %.2319.i, %bb.ny ], [ %.2319.i, %.lr.ph.i.i381 ] ; 2 uses
  %.6314.i = phi i1 [ %.5313.i, %bb.nw ], [ false, %bb.oa ], [ %.5313.i, %bb.nz ], [ %.5313.i, %bb.ny ], [ %.5313.i, %.lr.ph.i.i381 ] ; 2 uses
  %i.dsf = getelementptr inbounds nuw i8, ptr %.062159.i.i, i64 32 ; 2 uses
  %.not70.i.i = icmp eq ptr %i.dsf, %i.drs
  br i1 %.not70.i.i, label %.critedge78.i.i, label %.lr.ph.i.i381

.critedge78.i.i:                                  ; preds = %.critedge5.i.i, %_ZL17isSimpleIndexCalcRN4llvm12MachineInstrEjj.exit.thread.i.i
  %.4321.i = phi i8 [ %.1318.i, %_ZL17isSimpleIndexCalcRN4llvm12MachineInstrEjj.exit.thread.i.i ], [ %.3320.i, %.critedge5.i.i ] ; 2 uses
  %.7315.i = phi i1 [ %.4312.i, %_ZL17isSimpleIndexCalcRN4llvm12MachineInstrEjj.exit.thread.i.i ], [ %.6314.i, %.critedge5.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0121.0163.i.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i82.i.i = load i64, ptr %.sroa.0121.0163.i.i, align 8
  %i.dsg = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i82.i.i, 4
  %.not.i.i.i83.i.i = icmp eq i64 %i.dsg, 0
  br i1 %.not.i.i.i83.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i85.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit90.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i85.i.i: ; preds = %.critedge78.i.i
  %i.dsh = getelementptr inbounds nuw i8, ptr %.sroa.0121.0163.i.i, i64 44
  %i.dsi = load i32, ptr %i.dsh, align 4, !tbaa !243
  %i.dsj = and i32 %i.dsi, 8
  %.not34.i.i.i86.i.i = icmp eq i32 %i.dsj, 0
  br i1 %.not34.i.i.i86.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit90.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i87.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i87.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i85.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i87.i.i
  %.sroa.0.05.i.i.i88.i.i = phi ptr [ %i.dsl, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i87.i.i ], [ %.sroa.0121.0163.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i85.i.i ]
  %i.dsk = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i88.i.i, i64 8
  %i.dsl = load ptr, ptr %i.dsk, align 8, !tbaa !230 ; 3 uses
  %i.dsm = getelementptr inbounds nuw i8, ptr %i.dsl, i64 44
  %i.dsn = load i32, ptr %i.dsm, align 4, !tbaa !243
  %i.dso = and i32 %i.dsn, 8
  %.not3.i.i.i89.i.i = icmp eq i32 %i.dso, 0
  br i1 %.not3.i.i.i89.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit90.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i87.i.i, !llvm.loop !342

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit90.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i87.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i85.i.i, %.critedge78.i.i
  %.sroa.0.1.i.i.i84.i.i = phi ptr [ %.sroa.0121.0163.i.i, %.critedge78.i.i ], [ %.sroa.0121.0163.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i85.i.i ], [ %i.dsl, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i87.i.i ]
  %.sroa.0121.0.in.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i84.i.i, i64 8
  %.sroa.0121.0.i.i = load ptr, ptr %.sroa.0121.0.in.i.i, align 8, !tbaa !230 ; 2 uses
  %.not69.i.i = icmp eq ptr %.sroa.0121.0.i.i, %i.dnz
  br i1 %.not69.i.i, label %_ZN12_GLOBAL__N_118ARMConstantIslands20preserveBaseRegisterEPN4llvm12MachineInstrES3_RjRbS5_.exit.i, label %.lr.ph164.i.i, !llvm.loop !476

bb.ob:                                            ; preds = %_ZL17isSimpleIndexCalcRN4llvm12MachineInstrEjj.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0121.0163.i.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i92.i.i = load i64, ptr %.sroa.0121.0163.i.i, align 8
  %i.dsp = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i92.i.i, 4
  %.not.i.i.i93.i.i = icmp eq i64 %i.dsp, 0
  br i1 %.not.i.i.i93.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i95.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit100.i.i

end_hunk_0

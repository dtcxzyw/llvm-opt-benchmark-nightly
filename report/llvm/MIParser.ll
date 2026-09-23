Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MIParser?download=true
inline.NumInlined: 5289
inline.NumDeleted: 2148
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12_GLOBAL__N_18MIParser16parseBasicBlocksEv:bb.a
    i32 125, label %bb.fd
    i32 126, label %bb.fe
    i32 127, label %bb.ff
    i32 128, label %bb.fg
  ]

bb.ex:                                            ; preds = %.lr.ph.i.i.i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %i.ahi = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_18MIParser14parseAlignmentERm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br i1 %i.ahi, label %.loopexit129.i.i.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.ahj = load i64, ptr %i.dm, align 8
  %i.ahk = load i64, ptr %i.f, align 8, !tbaa !261 ; 2 uses
  %i.ahl = add i64 %i.ahk, -1
  %i.ahm = and i64 %i.ahl, %i.ahj
  %.not26.i.i.i = icmp eq i64 %i.ahm, 0
  br i1 %.not26.i.i.i, label %.critedge30.i.i.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  store i8 1, ptr %i.ed, align 1, !tbaa !297
  store ptr @.str.241, ptr %31, align 8, !tbaa !75
  store i8 3, ptr %i.ec, align 8, !tbaa !298
  %i.ahn = load ptr, ptr %i.bn, align 8, !tbaa !68
  call fastcc void @_ZN12_GLOBAL__N_18MIParser5errorEPKcRKN4llvm5TwineE(ptr noundef nonnull readonly align 8 dereferenceable(184) %0, ptr noundef %i.ahn, ptr noundef nonnull align 8 dereferenceable(34) %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  br label %.loopexit129.i.i.i

.critedge30.i.i.i:                                ; preds = %bb.ey
  store i64 %i.ahk, ptr %i.d, align 8, !tbaa !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  br label %bb.fi

.loopexit129.i.i.i:                               ; preds = %bb.ex, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  br label %_ZN12_GLOBAL__N_18MIParser25parseMachineMemoryOperandERPN4llvm17MachineMemOperandE.exit.thread124.i.i

bb.fa:                                            ; preds = %.lr.ph.i.i.i8
  %i.aho = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_18MIParser14parseAlignmentERm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br i1 %i.aho, label %_ZN12_GLOBAL__N_18MIParser25parseMachineMemoryOperandERPN4llvm17MachineMemOperandE.exit.thread124.i.i, label %bb.fi

bb.fb:                                            ; preds = %.lr.ph.i.i.i8
  %i.ahp = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_18MIParser14parseAddrspaceERj(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.dn)
  br i1 %i.ahp, label %_ZN12_GLOBAL__N_18MIParser25parseMachineMemoryOperandERPN4llvm17MachineMemOperandE.exit.thread124.i.i, label %bb.fi

bb.fc:                                            ; preds = %.lr.ph.i.i.i8
  call fastcc void @_ZN12_GLOBAL__N_18MIParser3lexEj(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.ahq = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_18MIParser11parseMDNodeERPN4llvm6MDNodeE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(8) %30)
  br i1 %i.ahq, label %_ZN12_GLOBAL__N_18MIParser25parseMachineMemoryOperandERPN4llvm17MachineMemOperandE.exit.thread124.i.i, label %bb.fi

bb.fd:                                            ; preds = %.lr.ph.i.i.i8
  call fastcc void @_ZN12_GLOBAL__N_18MIParser3lexEj(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.ahr = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_18MIParser11parseMDNodeERPN4llvm6MDNodeE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.dr)
  br i1 %i.ahr, label %_ZN12_GLOBAL__N_18MIParser25parseMachineMemoryOperandERPN4llvm17MachineMemOperandE.exit.thread124.i.i, label %bb.fi

bb.fe:                                            ; preds = %.lr.ph.i.i.i8
  call fastcc void @_ZN12_GLOBAL__N_18MIParser3lexEj(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.ahs = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_18MIParser11parseMDNodeERPN4llvm6MDNodeE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.dq)
  br i1 %i.ahs, label %_ZN12_GLOBAL__N_18MIParser25parseMachineMemoryOperandERPN4llvm17MachineMemOperandE.exit.thread124.i.i, label %bb.fi

bb.ff:                                            ; preds = %.lr.ph.i.i.i8
  call fastcc void @_ZN12_GLOBAL__N_18MIParser3lexEj(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.aht = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_18MIParser11parseMDNodeERPN4llvm6MDNodeE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
  br i1 %i.aht, label %_ZN12_GLOBAL__N_18MIParser25parseMachineMemoryOperandERPN4llvm17MachineMemOperandE.exit.thread124.i.i, label %bb.fi

bb.fg:                                            ; preds = %.lr.ph.i.i.i8
  call fastcc void @_ZN12_GLOBAL__N_18MIParser3lexEj(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.ahu = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_18MIParser11parseMDNodeERPN4llvm6MDNodeE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br i1 %i.ahu, label %_ZN12_GLOBAL__N_18MIParser25parseMachineMemoryOperandERPN4llvm17MachineMemOperandE.exit.thread124.i.i, label %bb.fi

bb.fh:                                            ; preds = %.lr.ph.i.i.i8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  store i8 1, ptr %i.eh, align 1, !tbaa !297
  store ptr @.str.242, ptr %32, align 8, !tbaa !75
  store i8 3, ptr %i.eg, align 8, !tbaa !298
  %i.ahv = load ptr, ptr %i.bn, align 8, !tbaa !68
  call fastcc void @_ZN12_GLOBAL__N_18MIParser5errorEPKcRKN4llvm5TwineE(ptr noundef nonnull readonly align 8 dereferenceable(184) %0, ptr noundef %i.ahv, ptr noundef nonnull align 8 dereferenceable(34) %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  br label %_ZN12_GLOBAL__N_18MIParser25parseMachineMemoryOperandERPN4llvm17MachineMemOperandE.exit.thread124.i.i

bb.fi:                                            ; preds = %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %.critedge30.i.i.i
  %i.ahw = load i32, ptr %i.y, align 8, !tbaa !287
  %.not.i76.i.i.i = icmp eq i32 %i.ahw, 3
  br i1 %.not.i76.i.i.i, label %.lr.ph.i.i.i8, label %_ZN12_GLOBAL__N_18MIParser16consumeIfPresentEN4llvm7MIToken9TokenKindE.exit.i.i.i, !llvm.loop !767

_ZN12_GLOBAL__N_18MIParser16consumeIfPresentEN4llvm7MIToken9TokenKindE.exit.i.i.i: ; preds = %bb.fi, %_ZN4llvm12PowerOf2CeilEm.exit.i.i.i
  %i.ahx = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_18MIParser16expectAndConsumeEN4llvm7MIToken9TokenKindE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 11)
  br i1 %i.ahx, label %_ZN12_GLOBAL__N_18MIParser25parseMachineMemoryOperandERPN4llvm17MachineMemOperandE.exit.thread124.i.i, label %bb.fj

.critedge.i.i.i:                                  ; preds = %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %_ZN12_GLOBAL__N_18MIParser25parseMachineMemoryOperandERPN4llvm17MachineMemOperandE.exit.thread120.i.i

_ZN12_GLOBAL__N_18MIParser25parseMachineMemoryOperandERPN4llvm17MachineMemOperandE.exit.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %bb.ed, %_ZN4llvmneENS_9StringRefES0_.exit39.thread.i.i.i, %_ZN4llvmplERKNS_5TwineES2_.exit39.i.i.i.i, %.thread.i.i.i.i, %_ZN12_GLOBAL__N_18MIParser16expectAndConsumeEN4llvm7MIToken9TokenKindE.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  br label %.thread128.i.i

_ZN12_GLOBAL__N_18MIParser25parseMachineMemoryOperandERPN4llvm17MachineMemOperandE.exit.thread116.i.i: ; preds = %bb.ei, %_ZN4llvmeqENS_9StringRefES0_.exit.thread11.i.i.i.i, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  br label %.thread128.i.i

_ZN12_GLOBAL__N_18MIParser25parseMachineMemoryOperandERPN4llvm17MachineMemOperandE.exit.thread120.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit71.thread121.i.i.i, %bb.eq, %bb.ep, %bb.eo, %.critedge.i.i.i, %_ZN4llvm5TwineC2EPKc.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  br label %.thread128.i.i

_ZN12_GLOBAL__N_18MIParser25parseMachineMemoryOperandERPN4llvm17MachineMemOperandE.exit.thread124.i.i: ; preds = %_ZN12_GLOBAL__N_18MIParser16consumeIfPresentEN4llvm7MIToken9TokenKindE.exit.i.i.i, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.fh, %.loopexit129.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  br label %.thread128.i.i

bb.fj:                                            ; preds = %_ZN12_GLOBAL__N_18MIParser16consumeIfPresentEN4llvm7MIToken9TokenKindE.exit.i.i.i
  %i.ahy = load ptr, ptr %0, align 8, !tbaa !308, !nonnull !33, !align !34
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %23, align 8, !tbaa !75
  %i.ahz = load i64, ptr %i.d, align 8, !tbaa !261
  %i.aia = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ahz, i1 false)
  %i.aib = trunc nuw nsw i64 %i.aia to i8
  %i.aic = sub nsw i8 63, %i.aib
  %i.aid = load ptr, ptr %i.e, align 8, !tbaa !347
  %i.aie = load i32, ptr %i.a, align 4, !tbaa !353
  %i.aif = load i32, ptr %i.b, align 4, !tbaa !353
  %i.aig = call noundef ptr @_ZN4llvm15MachineFunction20getMachineMemOperandENS_18MachinePointerInfoENS_17MachineMemOperand5FlagsENS_3LLTENS_5AlignERKNS_9AAMDNodesEPKNS_6MDNodeEhNS_14AtomicOrderingESC_(ptr noundef nonnull align 8 dereferenceable(1065) %i.ahy, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %24, i16 noundef zeroext %.2.i.i.i, i64 %.sroa.0.0.copyload.i.i.i, i8 %i.aic, ptr noundef nonnull align 8 dereferenceable(40) %30, ptr noundef %i.aid, i8 noundef zeroext %.299.ph.i.i.i, i32 noundef %i.aie, i32 noundef %i.aif) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineMemOperandELb1EE9push_backES2_(ptr noundef nonnull align 8 dereferenceable(16) %58, ptr noundef %i.aig)
  %i.aih = load i32, ptr %i.y, align 8, !tbaa !287 ; 3 uses
  %i.aii = and i32 %i.aih, -3
  %spec.select.i74.i.i = icmp eq i32 %i.aii, 0
  %i.aij = icmp eq i32 %i.aih, 12
  %or.cond134.i.i = and i1 %i.abq, %i.aij
  %or.cond.i.i = select i1 %spec.select.i74.i.i, i1 true, i1 %or.cond134.i.i
  br i1 %or.cond.i.i, label %.thread131.i.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %.not139.i.i = icmp eq i32 %i.aih, 3
  br i1 %.not139.i.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #19
  store i8 1, ptr %i.ef, align 1, !tbaa !297
  store ptr @.str.50, ptr %59, align 8, !tbaa !75
  store i8 3, ptr %i.ee, align 8, !tbaa !298
  %i.aik = load ptr, ptr %i.bn, align 8, !tbaa !68
  call fastcc void @_ZN12_GLOBAL__N_18MIParser5errorEPKcRKN4llvm5TwineE(ptr noundef nonnull readonly align 8 dereferenceable(184) %0, ptr noundef %i.aik, ptr noundef nonnull align 8 dereferenceable(34) %59)
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #19
  br label %.thread128.i.i

bb.fm:                                            ; preds = %bb.fk
  call fastcc void @_ZN12_GLOBAL__N_18MIParser3lexEj(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.ail = load i32, ptr %i.y, align 8, !tbaa !287 ; 2 uses
  %i.aim = and i32 %i.ail, -3
  %spec.select.i69.i.i = icmp eq i32 %i.aim, 0
  br i1 %spec.select.i69.i.i, label %.thread131.i.i, label %bb.ds

.thread131.i.i:                                   ; preds = %bb.fm, %bb.fj, %bb.dr, %bb.dq
  %i.ain = load ptr, ptr %0, align 8, !tbaa !308, !nonnull !33, !align !34
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 16
  %i.aip = load ptr, ptr %i.aio, align 8, !tbaa !354, !nonnull !33, !align !34 ; 2 uses
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !44
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 128
  %i.ais = load ptr, ptr %i.air, align 8
  %i.ait = call noundef ptr %i.ais(ptr noundef nonnull align 8 dereferenceable(344) %i.aip) #19, !inline_history !768
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 8
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !803
  %i.aiw = zext i32 %i.ye to i64
  %i.aix = sub nsw i64 0, %i.aiw
  %i.aiy = getelementptr inbounds [32 x i8], ptr %i.aiv, i64 %i.aix ; 3 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 16
  %i.aja = load i64, ptr %i.aiz, align 8, !tbaa !356
  %i.ajb = and i64 %i.aja, 2
  %.not140.i.i = icmp eq i64 %i.ajb, 0
  br i1 %.not140.i.i, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %.thread131.i.i
  %.val59.i.i = load ptr, ptr %48, align 8, !tbaa !100
  %.val60.i.i = load i32, ptr %i.bl, align 8, !tbaa !101
  %i.ajc = zext i32 %.val60.i.i to i64
  %i.ajd = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_18MIParser22verifyImplicitOperandsEN4llvm8ArrayRefINS_20ParsedMachineOperandEEERKNS1_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr %.val59.i.i, i64 %i.ajc, ptr noundef nonnull align 8 dereferenceable(32) %i.aiy)
  br i1 %i.ajd, label %.thread128.i.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %.thread131.i.i
  %i.aje = load ptr, ptr %0, align 8, !tbaa !308, !nonnull !33, !align !34
  %i.ajf = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.aje, ptr noundef nonnull align 8 dereferenceable(32) %i.aiy, ptr %.sroa.081.0.i.i, i1 noundef zeroext true) #19 ; 15 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 44 ; 2 uses
  %i.ajh = load i32, ptr %i.ajg, align 4, !tbaa !812
  %i.aji = and i32 %i.ajh, 12
  %i.ajj = or disjoint i32 %i.aji, %.086.i.i
  store i32 %i.ajj, ptr %i.ajg, align 4, !tbaa !812
  %.val.i.i = load ptr, ptr %48, align 8, !tbaa !100 ; 3 uses
  %.val56.i.i = load i32, ptr %i.bl, align 8, !tbaa !101 ; 2 uses
  %i.ajk = zext i32 %.val56.i.i to i64
  %.idx.i.i = mul nuw nsw i64 %i.ajk, 56
  %i.ajl = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx.i.i
  %.not195.i.i = icmp eq i32 %.val56.i.i, 0
  br i1 %.not195.i.i, label %._crit_edge.i69.i, label %.lr.ph197.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph197.i.i
  %.val57.pre.i.i = load ptr, ptr %48, align 8, !tbaa !100
  %.val58.pre.i.i = load i32, ptr %i.bl, align 8, !tbaa !101
  %i.ajm = zext i32 %.val58.pre.i.i to i64
  br label %._crit_edge.i69.i

._crit_edge.i69.i:                                ; preds = %._crit_edge.loopexit.i.i, %bb.fo
  %.val58.i.i = phi i64 [ %i.ajm, %._crit_edge.loopexit.i.i ], [ 0, %bb.fo ]
  %.val57.i.i = phi ptr [ %.val57.pre.i.i, %._crit_edge.loopexit.i.i ], [ %.val.i.i, %bb.fo ]
  %i.ajn = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_18MIParser18assignRegisterTiesERN4llvm12MachineInstrENS1_8ArrayRefINS_20ParsedMachineOperandEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.ajf, ptr %.val57.i.i, i64 %.val58.i.i)
  br i1 %i.ajn, label %.thread128.i.i, label %bb.fp

.lr.ph197.i.i:                                    ; preds = %bb.fo, %.lr.ph197.i.i
  %.032196.i.i = phi ptr [ %i.ajp, %.lr.ph197.i.i ], [ %.val.i.i, %bb.fo ] ; 2 uses
  %i.ajo = load ptr, ptr %0, align 8, !tbaa !308, !nonnull !33, !align !34
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ajf, ptr noundef nonnull align 8 dereferenceable(1065) %i.ajo, ptr noundef nonnull align 8 dereferenceable(32) %.032196.i.i) #19
  %i.ajp = getelementptr inbounds nuw i8, ptr %.032196.i.i, i64 56 ; 2 uses
  %.not.i68.i = icmp eq ptr %i.ajp, %i.ajl
  br i1 %.not.i68.i, label %._crit_edge.loopexit.i.i, label %.lr.ph197.i.i

bb.fp:                                            ; preds = %._crit_edge.i69.i
  %i.ajq = load ptr, ptr %i.g, align 8, !tbaa !345 ; 2 uses
  %.not45.i.i = icmp eq ptr %i.ajq, null
  br i1 %.not45.i.i, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.ajr = load ptr, ptr %0, align 8, !tbaa !308, !nonnull !33, !align !34
  call void @_ZN4llvm12MachineInstr17setPreInstrSymbolERNS_15MachineFunctionEPNS_8MCSymbolE(ptr noundef nonnull align 8 dereferenceable(80) %i.ajf, ptr noundef nonnull align 8 dereferenceable(1065) %i.ajr, ptr noundef nonnull %i.ajq) #19
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.ajs = load ptr, ptr %i.h, align 8, !tbaa !345 ; 2 uses
  %.not46.i.i = icmp eq ptr %i.ajs, null
  br i1 %.not46.i.i, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.ajt = load ptr, ptr %0, align 8, !tbaa !308, !nonnull !33, !align !34
  call void @_ZN4llvm12MachineInstr18setPostInstrSymbolERNS_15MachineFunctionEPNS_8MCSymbolE(ptr noundef nonnull align 8 dereferenceable(80) %i.ajf, ptr noundef nonnull align 8 dereferenceable(1065) %i.ajt, ptr noundef nonnull %i.ajs) #19
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %.not47.i.i = icmp eq ptr %i.abl, null
  br i1 %.not47.i.i, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.aju = load ptr, ptr %0, align 8, !tbaa !308, !nonnull !33, !align !34
  call void @_ZN4llvm12MachineInstr18setHeapAllocMarkerERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.ajf, ptr noundef nonnull align 8 dereferenceable(1065) %i.aju, ptr noundef nonnull %i.abl) #19
  %.pre225.i.i = load ptr, ptr %i.j, align 8, !tbaa !347
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %i.ajv = phi ptr [ %.pre225.i.i, %bb.fu ], [ %i.abk, %bb.ft ] ; 2 uses
  %.not48.i.i = icmp eq ptr %i.ajv, null
  br i1 %.not48.i.i, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.ajw = load ptr, ptr %0, align 8, !tbaa !308, !nonnull !33, !align !34
  call void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.ajf, ptr noundef nonnull align 8 dereferenceable(1065) %i.ajw, ptr noundef nonnull %i.ajv) #19
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %i.ajx = load ptr, ptr %i.k, align 8, !tbaa !347 ; 2 uses
  %.not49.i.i = icmp eq ptr %i.ajx, null
  br i1 %.not49.i.i, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.ajy = load ptr, ptr %0, align 8, !tbaa !308, !nonnull !33, !align !34
  call void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.ajf, ptr noundef nonnull align 8 dereferenceable(1065) %i.ajy, ptr noundef nonnull %i.ajx) #19
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %i.ajz = load i32, ptr %i.l, align 4, !tbaa !79 ; 2 uses
  %.not50.i.i = icmp eq i32 %i.ajz, 0
  br i1 %.not50.i.i, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.aka = load ptr, ptr %0, align 8, !tbaa !308, !nonnull !33, !align !34
  call void @_ZN4llvm12MachineInstr10setCFITypeERNS_15MachineFunctionEj(ptr noundef nonnull align 8 dereferenceable(80) %i.ajf, ptr noundef nonnull align 8 dereferenceable(1065) %i.aka, i32 noundef %i.ajz) #19
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.akb = load ptr, ptr %i.m, align 8, !tbaa !349 ; 2 uses
  %.not51.i.i = icmp eq ptr %i.akb, null
  br i1 %.not51.i.i, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.akc = load ptr, ptr %0, align 8, !tbaa !308, !nonnull !33, !align !34
  call void @_ZN4llvm12MachineInstr21setDeactivationSymbolERNS_15MachineFunctionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80) %i.ajf, ptr noundef nonnull align 8 dereferenceable(1065) %i.akc, ptr noundef nonnull %i.akb) #19
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %i.akd = load i32, ptr %i.cy, align 8, !tbaa !101 ; 2 uses
  %.not.i75.i.i = icmp eq i32 %i.akd, 0
  br i1 %.not.i75.i.i, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.ake = load ptr, ptr %0, align 8, !tbaa !308, !nonnull !33, !align !34
  %i.akf = load ptr, ptr %58, align 8, !tbaa !100
  %i.akg = zext i32 %i.akd to i64
  call void @_ZN4llvm12MachineInstr10setMemRefsERNS_15MachineFunctionENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.ajf, ptr noundef nonnull align 8 dereferenceable(1065) %i.ake, ptr %i.akf, i64 %i.akg) #19
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %i.akh = load i32, ptr %i.n, align 4, !tbaa !79 ; 2 uses
  %.not52.i.i = icmp eq i32 %i.akh, 0
  br i1 %.not52.i.i, label %.thread128.i.i, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.aki = getelementptr inbounds nuw i8, ptr %i.ajf, i64 56
  store i32 %i.akh, ptr %i.aki, align 8, !tbaa !813
  br label %.thread128.i.i

.thread128.i.i:                                   ; preds = %bb.gg, %bb.gf, %._crit_edge.i69.i, %bb.fn, %bb.fl, %_ZN12_GLOBAL__N_18MIParser25parseMachineMemoryOperandERPN4llvm17MachineMemOperandE.exit.thread124.i.i, %_ZN12_GLOBAL__N_18MIParser25parseMachineMemoryOperandERPN4llvm17MachineMemOperandE.exit.thread120.i.i, %_ZN12_GLOBAL__N_18MIParser25parseMachineMemoryOperandERPN4llvm17MachineMemOperandE.exit.thread116.i.i, %_ZN12_GLOBAL__N_18MIParser25parseMachineMemoryOperandERPN4llvm17MachineMemOperandE.exit.thread.i.i
  %.1.i = phi ptr [ null, %bb.fn ], [ %i.ajf, %._crit_edge.i69.i ], [ %i.ajf, %bb.gf ], [ %i.ajf, %bb.gg ], [ null, %_ZN12_GLOBAL__N_18MIParser25parseMachineMemoryOperandERPN4llvm17MachineMemOperandE.exit.thread.i.i ], [ null, %_ZN12_GLOBAL__N_18MIParser25parseMachineMemoryOperandERPN4llvm17MachineMemOperandE.exit.thread116.i.i ], [ null, %_ZN12_GLOBAL__N_18MIParser25parseMachineMemoryOperandERPN4llvm17MachineMemOperandE.exit.thread120.i.i ], [ null, %_ZN12_GLOBAL__N_18MIParser25parseMachineMemoryOperandERPN4llvm17MachineMemOperandE.exit.thread124.i.i ], [ null, %bb.fl ]
  %.11.i.i = phi i1 [ true, %bb.fn ], [ true, %._crit_edge.i69.i ], [ false, %bb.gf ], [ false, %bb.gg ], [ true, %_ZN12_GLOBAL__N_18MIParser25parseMachineMemoryOperandERPN4llvm17MachineMemOperandE.exit.thread.i.i ], [ true, %_ZN12_GLOBAL__N_18MIParser25parseMachineMemoryOperandERPN4llvm17MachineMemOperandE.exit.thread116.i.i ], [ true, %_ZN12_GLOBAL__N_18MIParser25parseMachineMemoryOperandERPN4llvm17MachineMemOperandE.exit.thread120.i.i ], [ true, %_ZN12_GLOBAL__N_18MIParser25parseMachineMemoryOperandERPN4llvm17MachineMemOperandE.exit.thread124.i.i ], [ true, %bb.fl ]
  %i.akj = load ptr, ptr %58, align 8, !tbaa !100 ; 2 uses
  %i.akk = icmp eq ptr %i.akj, %i.cx
  br i1 %i.akk, label %_ZN4llvm11SmallVectorIPNS_17MachineMemOperandELj2EED2Ev.exit.i.i, label %bb.gh

bb.gh:                                            ; preds = %.thread128.i.i
  call void @free(ptr noundef %i.akj) #19
  br label %_ZN4llvm11SmallVectorIPNS_17MachineMemOperandELj2EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPNS_17MachineMemOperandELj2EED2Ev.exit.i.i: ; preds = %bb.gh, %.thread128.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #19
  br label %bb.gi

.critedge54.i.i:                                  ; preds = %bb.do, %bb.dm, %bb.dl, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #19
  br label %bb.gi

bb.gi:                                            ; preds = %.critedge54.i.i, %_ZN4llvm11SmallVectorIPNS_17MachineMemOperandELj2EED2Ev.exit.i.i, %bb.df, %bb.de
  %.2.i = phi ptr [ %.1.i, %_ZN4llvm11SmallVectorIPNS_17MachineMemOperandELj2EED2Ev.exit.i.i ], [ null, %bb.df ], [ null, %.critedge54.i.i ], [ null, %bb.de ]
  %.13.i.i = phi i1 [ %.11.i.i, %_ZN4llvm11SmallVectorIPNS_17MachineMemOperandELj2EED2Ev.exit.i.i ], [ true, %bb.df ], [ true, %.critedge54.i.i ], [ true, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #19
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.da
  %.391.i = phi ptr [ %.2.i, %bb.gi ], [ null, %bb.da ]
  %.14.i.i = phi i1 [ %.13.i.i, %bb.gi ], [ true, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.cx, %bb.cw
  %.4.i = phi ptr [ %.391.i, %bb.gj ], [ null, %bb.cx ], [ null, %bb.cw ]
  %.15.i.i = phi i1 [ %.14.i.i, %bb.gj ], [ true, %bb.cx ], [ true, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.cu
  %.5.i = phi ptr [ %.4.i, %bb.gk ], [ null, %bb.cu ]
  %.16.i.i = phi i1 [ %.15.i.i, %bb.gk ], [ true, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  br label %_ZN12_GLOBAL__N_18MIParser15parsePCSectionsERPN4llvm6MDNodeE.exit.thread.i.i

_ZN12_GLOBAL__N_18MIParser15parsePCSectionsERPN4llvm6MDNodeE.exit.thread.i.i: ; preds = %bb.gl, %bb.cs, %bb.cq, %bb.co
  %.6.i = phi ptr [ %.5.i, %bb.gl ], [ null, %bb.co ], [ null, %bb.cq ], [ null, %bb.cs ]
  %.17.i.i = phi i1 [ %.16.i.i, %bb.gl ], [ true, %bb.co ], [ true, %bb.cq ], [ true, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  br label %_ZN12_GLOBAL__N_18MIParser20parseHeapAllocMarkerERPN4llvm6MDNodeE.exit.thread.i.i

_ZN12_GLOBAL__N_18MIParser20parseHeapAllocMarkerERPN4llvm6MDNodeE.exit.thread.i.i: ; preds = %_ZN12_GLOBAL__N_18MIParser15parsePCSectionsERPN4llvm6MDNodeE.exit.thread.i.i, %bb.cm, %bb.ck, %bb.ci
  %.7.i = phi ptr [ %.6.i, %_ZN12_GLOBAL__N_18MIParser15parsePCSectionsERPN4llvm6MDNodeE.exit.thread.i.i ], [ null, %bb.ci ], [ null, %bb.ck ], [ null, %bb.cm ]
  %.18.i.i = phi i1 [ %.17.i.i, %_ZN12_GLOBAL__N_18MIParser15parsePCSectionsERPN4llvm6MDNodeE.exit.thread.i.i ], [ true, %bb.ci ], [ true, %bb.ck ], [ true, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  br label %bb.gm

bb.gm:                                            ; preds = %_ZN12_GLOBAL__N_18MIParser20parseHeapAllocMarkerERPN4llvm6MDNodeE.exit.thread.i.i, %bb.cg
  %.8.i = phi ptr [ %.7.i, %_ZN12_GLOBAL__N_18MIParser20parseHeapAllocMarkerERPN4llvm6MDNodeE.exit.thread.i.i ], [ null, %bb.cg ]
  %.19.i.i = phi i1 [ %.18.i.i, %_ZN12_GLOBAL__N_18MIParser20parseHeapAllocMarkerERPN4llvm6MDNodeE.exit.thread.i.i ], [ true, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.cf
  %.9.i = phi ptr [ %.8.i, %bb.gm ], [ null, %bb.cf ]
  %.20.i.i = phi i1 [ %.19.i.i, %bb.gm ], [ true, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  br label %_ZN12_GLOBAL__N_18MIParser16parseInstructionERjS1_.exit.thread.i.i

_ZN12_GLOBAL__N_18MIParser16parseInstructionERjS1_.exit.thread.i.i: ; preds = %bb.gn, %.thread96.i.i, %_ZN4llvmplERKNS_5TwineES2_.exit42.i.i.i, %bb.bx, %bb.be, %_ZN12_GLOBAL__N_18MIParser16expectAndConsumeEN4llvm7MIToken9TokenKindE.exit.thread.i62.i, %.thread.i71.i
  %.0.i = phi ptr [ null, %bb.be ], [ null, %bb.bx ], [ null, %_ZN4llvmplERKNS_5TwineES2_.exit42.i.i.i ], [ %.9.i, %bb.gn ], [ null, %.thread96.i.i ], [ null, %_ZN12_GLOBAL__N_18MIParser16expectAndConsumeEN4llvm7MIToken9TokenKindE.exit.thread.i62.i ], [ null, %.thread.i71.i ] ; 9 uses
  %.22.i.i = phi i1 [ true, %bb.be ], [ true, %bb.bx ], [ true, %_ZN4llvmplERKNS_5TwineES2_.exit42.i.i.i ], [ %.20.i.i, %bb.gn ], [ true, %.thread96.i.i ], [ true, %_ZN12_GLOBAL__N_18MIParser16expectAndConsumeEN4llvm7MIToken9TokenKindE.exit.thread.i62.i ], [ true, %.thread.i71.i ]
  %i.akl = load ptr, ptr %48, align 8, !tbaa !100 ; 2 uses
  %i.akm = icmp eq ptr %i.akl, %i.bk
  br i1 %i.akm, label %_ZN12_GLOBAL__N_18MIParser5parseERPN4llvm12MachineInstrE.exit.i, label %bb.go

bb.go:                                            ; preds = %_ZN12_GLOBAL__N_18MIParser16parseInstructionERjS1_.exit.thread.i.i
  call void @free(ptr noundef %i.akl) #19
  br label %_ZN12_GLOBAL__N_18MIParser5parseERPN4llvm12MachineInstrE.exit.i

_ZN12_GLOBAL__N_18MIParser5parseERPN4llvm12MachineInstrE.exit.i: ; preds = %bb.go, %_ZN12_GLOBAL__N_18MIParser16parseInstructionERjS1_.exit.thread.i.i
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_18MIParser20parseRegisterOperandERN4llvm14MachineOperandERSt8optionalIjEb:bb.a
bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.dl = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_18MIParser25parseRegisterTiedDefIndexERj(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br i1 %i.dl, label %.critedge27, label %.thread62

.thread62:                                        ; preds = %bb.t
  %i.dm = load i32, ptr %i.b, align 4, !tbaa !79
  %.sroa.041.0.insert.ext = zext i32 %i.dm to i64
  %.sroa.041.0.insert.insert = or disjoint i64 %.sroa.041.0.insert.ext, 4294967296
  store i64 %.sroa.041.0.insert.insert, ptr %2, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %.critedge31

bb.u:                                             ; preds = %bb.q
  %i.dn = load i32, ptr %15, align 4, !tbaa !331  ; 5 uses
  %i.do = icmp slt i32 %i.dn, 0
  br i1 %i.do, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  %i.dp = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %19, i64 33
  store i8 1, ptr %i.dq, align 1, !tbaa !297
  store ptr @.str.55, ptr %19, align 8, !tbaa !75
  store i8 3, ptr %i.dp, align 8, !tbaa !298
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !68
  call fastcc void @_ZN12_GLOBAL__N_18MIParser5errorEPKcRKN4llvm5TwineE(ptr noundef nonnull readonly align 8 dereferenceable(184) %0, ptr noundef %i.ds, ptr noundef nonnull align 8 dereferenceable(34) %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %_ZN12_GLOBAL__N_18MIParser13parseRegisterERN4llvm8RegisterERPNS1_8VRegInfoE.exit.thread58

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  store i64 0, ptr %20, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !68
  %i.dv = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_18MIParser17parseLowLevelTypeEPKcRN4llvm3LLTE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.du, ptr noundef nonnull align 8 dereferenceable(8) %20)
  br i1 %i.dv, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  br i1 %.not, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dw = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %21, i64 33
  store i8 1, ptr %i.dx, align 1, !tbaa !297
  store ptr @.str.56, ptr %21, align 8, !tbaa !75
  store i8 3, ptr %i.dw, align 8, !tbaa !298
  %i.dy = load ptr, ptr %i.dt, align 8, !tbaa !68
  call fastcc void @_ZN12_GLOBAL__N_18MIParser5errorEPKcRKN4llvm5TwineE(ptr noundef nonnull readonly align 8 dereferenceable(184) %0, ptr noundef %i.dy, ptr noundef nonnull align 8 dereferenceable(34) %21)
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %.critedge29

bb.aa:                                            ; preds = %bb.w
  %i.dz = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_18MIParser16expectAndConsumeEN4llvm7MIToken9TokenKindE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 11)
  br i1 %i.dz, label %.critedge29, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ea = load ptr, ptr %0, align 8, !tbaa !308, !nonnull !33, !align !34
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !253 ; 6 uses
  %i.ed = and i32 %i.dn, 2147483647               ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 472
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !101
  %i.eg = icmp ugt i32 %i.ef, %i.ed
  br i1 %i.eg, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit.thread

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.ab
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 464
  %i.ei = zext nneg i32 %i.ed to i64
  %i.ej = load ptr, ptr %i.eh, align 8, !tbaa !100
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.ei
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !75 ; 2 uses
  %i.em = icmp eq i64 %i.el, 1152921504606846976
  %i.en = and i64 %i.el, 1152921504606846975
  %i.eo = icmp ne i64 %i.en, 0
  %i.ep = or i1 %i.em, %i.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  br i1 %i.ep, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit37, label %.critedge

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit.thread: ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  br label %.critedge

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit37: ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ec, i64 464
  %i.er = zext nneg i32 %i.ed to i64
  %i.es = load ptr, ptr %i.eq, align 8, !tbaa !100
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.er
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !75
  store i64 %i.eu, ptr %22, align 8
  %i.ev = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br i1 %i.ev, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit37
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  %i.ew = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.ex = getelementptr inbounds nuw i8, ptr %23, i64 33
  store i8 1, ptr %i.ex, align 1, !tbaa !297
  store ptr @.str.57, ptr %23, align 8, !tbaa !75
  store i8 3, ptr %i.ew, align 8, !tbaa !298
  %i.ey = load ptr, ptr %i.dt, align 8, !tbaa !68
  call fastcc void @_ZN12_GLOBAL__N_18MIParser5errorEPKcRKN4llvm5TwineE(ptr noundef nonnull readonly align 8 dereferenceable(184) %0, ptr noundef %i.ey, ptr noundef nonnull align 8 dereferenceable(34) %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %.critedge29

.critedge:                                        ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit.thread, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br label %bb.ag

_ZN12_GLOBAL__N_18MIParser16consumeIfPresentEN4llvm7MIToken9TokenKindE.exit: ; preds = %bb.p
  br i1 %.not, label %.critedge31, label %bb.ad

bb.ad:                                            ; preds = %_ZN12_GLOBAL__N_18MIParser16consumeIfPresentEN4llvm7MIToken9TokenKindE.exit
  %i.ez = load i32, ptr %15, align 4, !tbaa !331  ; 3 uses
  %i.fa = icmp slt i32 %i.ez, 0
  br i1 %i.fa, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  %i.fb = load i8, ptr %i.al, align 8, !tbaa !259
  %i.fc = and i8 %i.fb, -2
  %switch = icmp eq i8 %i.fc, 2
  br i1 %switch, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  %i.fd = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.fe = getelementptr inbounds nuw i8, ptr %24, i64 33
  store i8 1, ptr %i.fe, align 1, !tbaa !297
  store ptr @.str.58, ptr %24, align 8, !tbaa !75
  store i8 3, ptr %i.fd, align 8, !tbaa !298
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !68
  call fastcc void @_ZN12_GLOBAL__N_18MIParser5errorEPKcRKN4llvm5TwineE(ptr noundef nonnull readonly align 8 dereferenceable(184) %0, ptr noundef %i.fg, ptr noundef nonnull align 8 dereferenceable(34) %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  br label %_ZN12_GLOBAL__N_18MIParser13parseRegisterERN4llvm8RegisterERPNS1_8VRegInfoE.exit.thread58

bb.ag:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit37, %.critedge
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %i.fi = zext nneg i32 %i.ed to i64
  %i.fj = load ptr, ptr %i.fh, align 8, !tbaa !100
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.fj, i64 %i.fi
  store i64 4, ptr %i.fk, align 8
  %.sroa.03.0.copyload = load i64, ptr %20, align 8, !tbaa !75
  call void @_ZN4llvm19MachineRegisterInfo7setTypeENS_8RegisterENS_3LLTE(ptr noundef nonnull align 8 dereferenceable(520) %i.ec, i32 %i.dn, i64 %.sroa.03.0.copyload) #19
  call void @_ZN4llvm19MachineRegisterInfo22noteNewVirtualRegisterENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.ec, i32 %i.dn)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br i1 %.not, label %.critedge31, label %.thread

.thread:                                          ; preds = %bb.ad, %bb.ae, %bb.ag
  %.sroa.0.0.copyload79 = phi i32 [ %i.ez, %bb.ad ], [ %i.ez, %bb.ae ], [ %i.dn, %bb.ag ]
  %i.fl = and i16 %.0, 8
  %.not63 = icmp eq i16 %i.fl, 0
  br i1 %.not63, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  %i.fm = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.fn = getelementptr inbounds nuw i8, ptr %25, i64 33
  store i8 1, ptr %i.fn, align 1, !tbaa !297
  store ptr @.str.59, ptr %25, align 8, !tbaa !75
  store i8 3, ptr %i.fm, align 8, !tbaa !298
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !68
  call fastcc void @_ZN12_GLOBAL__N_18MIParser5errorEPKcRKN4llvm5TwineE(ptr noundef nonnull readonly align 8 dereferenceable(184) %0, ptr noundef %i.fp, ptr noundef nonnull align 8 dereferenceable(34) %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  br label %_ZN12_GLOBAL__N_18MIParser13parseRegisterERN4llvm8RegisterERPNS1_8VRegInfoE.exit.thread58

.critedge31:                                      ; preds = %.thread62, %_ZN12_GLOBAL__N_18MIParser16consumeIfPresentEN4llvm7MIToken9TokenKindE.exit, %bb.ag
  %i.fq = and i16 %.0, 16
  %.not64 = icmp eq i16 %i.fq, 0
  br i1 %.not64, label %.critedge31._crit_edge, label %bb.ai

.critedge31._crit_edge:                           ; preds = %.critedge31
  %.sroa.0.0.copyload.pre = load i32, ptr %15, align 4, !tbaa !79
  br label %bb.aj

bb.ai:                                            ; preds = %.critedge31
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  %i.fr = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.fs = getelementptr inbounds nuw i8, ptr %26, i64 33
  store i8 1, ptr %i.fs, align 1, !tbaa !297
  store ptr @.str.60, ptr %26, align 8, !tbaa !75
  store i8 3, ptr %i.fr, align 8, !tbaa !298
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !68
  call fastcc void @_ZN12_GLOBAL__N_18MIParser5errorEPKcRKN4llvm5TwineE(ptr noundef nonnull readonly align 8 dereferenceable(184) %0, ptr noundef %i.fu, ptr noundef nonnull align 8 dereferenceable(34) %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  br label %_ZN12_GLOBAL__N_18MIParser13parseRegisterERN4llvm8RegisterERPNS1_8VRegInfoE.exit.thread58

bb.aj:                                            ; preds = %.critedge31._crit_edge, %.thread
  %.sroa.0.0.copyload = phi i32 [ %.sroa.0.0.copyload.pre, %.critedge31._crit_edge ], [ %.sroa.0.0.copyload79, %.thread ]
  %i.fv = and i16 %.0, 4
  %i.fw = and i16 %.0, 32
  %i.fx = and i16 %.0, 256
  %.not70 = icmp samesign ult i16 %.0, 512
  %i.fy = select i1 %.not, i32 0, i32 16777216
  %i.fz = zext nneg i16 %i.fv to i32
  %i.ga = shl nuw nsw i32 %i.fz, 23
  %i.gb = or disjoint i32 %i.ga, %i.fy
  %i.gc = and i16 %.0, 24
  %.not71 = icmp eq i16 %i.gc, 0
  %i.gd = select i1 %.not71, i32 0, i32 67108864
  %i.ge = or disjoint i32 %i.gb, %i.gd
  %27 = select i1 %.not70, i32 0, i32 134217728
  %i.gf = zext nneg i16 %i.fw to i32
  %i.gg = shl nuw nsw i32 %i.gf, 23
  %i.gh = zext nneg i16 %i.fx to i32
  %i.gi = shl nuw nsw i32 %i.gh, 21
  %i.gj = or disjoint i32 %i.ge, %i.gg
  %i.gk = and i16 %.0, 192
  %i.gl = zext nneg i16 %i.gk to i32
  %i.gm = shl nuw i32 %i.gl, 24
  %.masked11.masked.i = or disjoint i32 %i.gj, %i.gm
  %.masked.i = or disjoint i32 %i.gi, %27
  %i.gn = or i32 %.masked.i, %.masked11.masked.i
  %i.go = or disjoint i32 %i.gn, %.056
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  store i32 %i.go, ptr %1, align 8, !tbaa !75
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !75
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !335
  br label %_ZN12_GLOBAL__N_18MIParser13parseRegisterERN4llvm8RegisterERPNS1_8VRegInfoE.exit.thread58

.critedge27:                                      ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %_ZN12_GLOBAL__N_18MIParser13parseRegisterERN4llvm8RegisterERPNS1_8VRegInfoE.exit.thread58

.critedge29:                                      ; preds = %bb.ac, %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %_ZN12_GLOBAL__N_18MIParser13parseRegisterERN4llvm8RegisterERPNS1_8VRegInfoE.exit.thread58

_ZN12_GLOBAL__N_18MIParser13parseRegisterERN4llvm8RegisterERPNS1_8VRegInfoE.exit.thread58: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit22.i, %bb.h, %bb.d, %bb.k, %bb.n, %bb.s, %bb.v, %bb.af, %bb.ah, %bb.ai, %bb.aj, %bb.o, %.critedge27, %.critedge29, %_ZN12_GLOBAL__N_18MIParser13parseRegisterERN4llvm8RegisterERPNS1_8VRegInfoE.exit
  %.4 = phi i1 [ true, %bb.o ], [ true, %_ZN12_GLOBAL__N_18MIParser13parseRegisterERN4llvm8RegisterERPNS1_8VRegInfoE.exit ], [ true, %bb.k ], [ true, %bb.d ], [ true, %bb.s ], [ true, %bb.ah ], [ false, %bb.aj ], [ true, %bb.ai ], [ true, %.critedge27 ], [ true, %.critedge29 ], [ true, %bb.v ], [ true, %bb.af ], [ true, %bb.n ], [ true, %bb.h ], [ true, %_ZN4llvmplERKNS_5TwineES2_.exit22.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN12_GLOBAL__N_18MIParser17parseRegisterFlagERN4llvm8RegStateE.exit.thread, %_ZN12_GLOBAL__N_18MIParser13parseRegisterERN4llvm8RegisterERPNS1_8VRegInfoE.exit.thread58, %_ZNK4llvm7MIToken10isRegisterEv.exit
  %.5 = phi i1 [ true, %_ZNK4llvm7MIToken10isRegisterEv.exit ], [ %.4, %_ZN12_GLOBAL__N_18MIParser13parseRegisterERN4llvm8RegisterERPNS1_8VRegInfoE.exit.thread58 ], [ true, %_ZN12_GLOBAL__N_18MIParser17parseRegisterFlagERN4llvm8RegStateE.exit.thread ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_18MIParser33parseMachineOperandAndTargetFlagsEjjRN4llvm14MachineOperandERSt8optionalIjE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %class.anon.391, align 8            ; 4 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %class.anon.391, align 8            ; 4 uses
  %8 = alloca %class.anon.391, align 8            ; 4 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %class.anon.391, align 8           ; 4 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %16 = alloca %class.anon.391, align 8           ; 4 uses
  %17 = alloca %class.anon.391, align 8           ; 4 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %20 = alloca %class.anon.391, align 8           ; 4 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %22 = alloca %class.anon.391, align 8           ; 4 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %24 = alloca %class.anon.391, align 8           ; 4 uses
  %25 = alloca %class.anon.391, align 8           ; 4 uses
  %26 = alloca %class.anon.391, align 8           ; 4 uses
  %27 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %28 = alloca %class.anon.391, align 8           ; 4 uses
  %29 = alloca %class.anon.391, align 8           ; 4 uses
  %30 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %31 = alloca %class.anon.391, align 8           ; 4 uses
  %32 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %33 = alloca %class.anon.391, align 8           ; 4 uses
  %34 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %35 = alloca %class.anon.391, align 8           ; 4 uses
  %36 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %37 = alloca %class.anon.391, align 8           ; 4 uses
  %38 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %39 = alloca %class.anon.391, align 8           ; 4 uses
  %40 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %41 = alloca %class.anon.391, align 8           ; 4 uses
  %42 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %43 = alloca %class.anon.391, align 8           ; 4 uses
  %44 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %45 = alloca %class.anon.391, align 8           ; 4 uses
  %i.b = alloca i32, align 4                      ; 14 uses
  %i.c = alloca i32, align 4                      ; 22 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %46 = alloca %"class.llvm::MCCFIInstruction", align 8 ; 13 uses
  %47 = alloca %"class.llvm::MCCFIInstruction", align 8 ; 12 uses
  %48 = alloca %"class.llvm::MCCFIInstruction", align 8 ; 12 uses
  %49 = alloca %"class.llvm::MCCFIInstruction", align 8 ; 13 uses
  %50 = alloca %"class.llvm::MCCFIInstruction", align 8 ; 13 uses
  %51 = alloca %"class.llvm::MCCFIInstruction", align 8 ; 13 uses
  %52 = alloca %"class.llvm::MCCFIInstruction", align 8 ; 12 uses
  %53 = alloca %"class.llvm::MCCFIInstruction", align 8 ; 12 uses
  %54 = alloca %"class.llvm::MCCFIInstruction", align 8 ; 13 uses
  %55 = alloca %"class.llvm::MCCFIInstruction", align 8 ; 13 uses
  %56 = alloca %"class.llvm::MCCFIInstruction", align 8 ; 13 uses
  %57 = alloca %"class.llvm::MCCFIInstruction", align 8 ; 13 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %58 = alloca %"class.llvm::MCCFIInstruction", align 8 ; 12 uses
  %59 = alloca %"class.llvm::MCCFIInstruction", align 8 ; 13 uses
  %60 = alloca %"class.llvm::MCCFIInstruction", align 8 ; 13 uses
  %61 = alloca %"class.llvm::MCCFIInstruction", align 8 ; 13 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %62 = alloca %"class.llvm::MCCFIInstruction", align 8 ; 13 uses
  %i.k = alloca i32, align 4                      ; 8 uses
  %i.l = alloca i32, align 4                      ; 7 uses
  %i.m = alloca i32, align 4                      ; 7 uses
  %63 = alloca %"class.llvm::MCCFIInstruction", align 8 ; 5 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %i.q = alloca i32, align 4                      ; 5 uses
  %i.r = alloca i32, align 4                      ; 6 uses
  %64 = alloca %"class.llvm::MCCFIInstruction", align 8 ; 13 uses
  %i.s = alloca i32, align 4                      ; 5 uses
  %i.t = alloca i32, align 4                      ; 5 uses
  %i.u = alloca i32, align 4                      ; 5 uses
  %i.v = alloca i32, align 4                      ; 5 uses
  %i.w = alloca i32, align 4                      ; 5 uses
  %65 = alloca %"class.llvm::MCCFIInstruction", align 8 ; 13 uses
  %66 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %67 = alloca %"class.llvm::MCCFIInstruction", align 8 ; 9 uses
  %68 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %i.x = alloca ptr, align 8                      ; 6 uses
  %i.y = alloca i64, align 8                      ; 5 uses
  %69 = alloca %class.anon.391, align 8           ; 4 uses
  %i.z = alloca ptr, align 8                      ; 5 uses
  %i.aa = alloca i32, align 4                     ; 4 uses
  %i.ab = alloca i32, align 4                     ; 4 uses
  %70 = alloca %class.anon.391, align 8           ; 4 uses
  %71 = alloca %class.anon.560, align 8           ; 4 uses
  %72 = alloca %class.anon.391, align 8           ; 4 uses
  %73 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.ac = alloca ptr, align 8                     ; 4 uses
  %74 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %75 = alloca %class.anon.391, align 8           ; 4 uses
  %76 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %77 = alloca %class.anon.391, align 8           ; 4 uses
  %78 = alloca %class.anon.391, align 8           ; 4 uses
  %79 = alloca %class.anon.391, align 8           ; 4 uses
  %80 = alloca %class.anon.391, align 8           ; 4 uses
  %81 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %82 = alloca %class.anon.391, align 8           ; 4 uses
  %83 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %84 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %85 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %86 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %87 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %88 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %89 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 55 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !287 ; 2 uses
  %i.af = icmp ne i32 %i.ae, 83                   ; 2 uses
  br i1 %i.af, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !69
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #19
  store ptr %0, ptr %82, align 8, !tbaa !294
  %i.ak = ptrtoint ptr %82 to i64
  %i.al = call { ptr, i64 } @_ZN4llvm10lexMITokenENS_9StringRefERNS_7MITokenENS_12function_refIFvPKcRKNS_5TwineEEEE(ptr %i.aj, i64 %i.ai, ptr noundef nonnull align 8 dereferenceable(88) %i.ad, ptr nonnull @"_ZN4llvm12function_refIFvPKcRKNS_5TwineEEE11callback_fnIZN12_GLOBAL__N_18MIParser3lexEjE3$_0EEvlS2_S5_", i64 %i.ak) #19 ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.al, 0      ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.al, 1      ; 2 uses
  store ptr %i.am, ptr %i.ag, align 8, !tbaa !88
  store i64 %i.an, ptr %i.ah, align 8, !tbaa !261
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #19
  %i.ao = load i32, ptr %i.ad, align 8, !tbaa !287
  %.not91 = icmp eq i32 %i.ao, 10
  br i1 %.not91, label %bb.c, label %_ZN12_GLOBAL__N_18MIParser16expectAndConsumeEN4llvm7MIToken9TokenKindE.exit.thread

_ZN12_GLOBAL__N_18MIParser16expectAndConsumeEN4llvm7MIToken9TokenKindE.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #19
  store ptr @.str.26, ptr %81, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %81, i64 16
  store ptr @.str.30, ptr %i.ap, align 8, !alias.scope !1140
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %81, i64 32
  store i8 3, ptr %.sroa.57.0..sroa_idx.i, align 8, !tbaa !309
  %.sroa.78.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %81, i64 33
  store i8 3, ptr %.sroa.78.0..sroa_idx.i, align 1, !tbaa !309
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !68
  call fastcc void @_ZN12_GLOBAL__N_18MIParser5errorEPKcRKN4llvm5TwineE(ptr noundef nonnull readonly align 8 dereferenceable(184) %0, ptr noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(34) %81)
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #19
  br label %_ZN12_GLOBAL__N_18MIParser19parseMachineOperandEjjRN4llvm14MachineOperandERSt8optionalIjE.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #19
  store ptr %0, ptr %80, align 8, !tbaa !294
  %i.as = ptrtoint ptr %80 to i64
  %i.at = call { ptr, i64 } @_ZN4llvm10lexMITokenENS_9StringRefERNS_7MITokenENS_12function_refIFvPKcRKNS_5TwineEEEE(ptr %i.am, i64 %i.an, ptr noundef nonnull align 8 dereferenceable(88) %i.ad, ptr nonnull @"_ZN4llvm12function_refIFvPKcRKNS_5TwineEEE11callback_fnIZN12_GLOBAL__N_18MIParser3lexEjE3$_0EEvlS2_S5_", i64 %i.as) #19 ; 2 uses
  %i.au = extractvalue { ptr, i64 } %i.at, 0
  %i.av = extractvalue { ptr, i64 } %i.at, 1
  store ptr %i.au, ptr %i.ag, align 8, !tbaa !88
  store i64 %i.av, ptr %i.ah, align 8, !tbaa !261
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #19
  %i.aw = load i32, ptr %i.ad, align 8, !tbaa !287
  %.not92 = icmp eq i32 %i.aw, 131
  br i1 %.not92, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_1

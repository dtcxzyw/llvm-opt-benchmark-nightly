Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HWAddressSanitizer?download=true
inline.NumInlined: 4610
inline.NumDeleted: 2491
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm22HWAddressSanitizerPass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE:bb.a
  br i1 %.not.i115.i, label %bb.hi, label %bb.hh, !prof !198

bb.hh:                                            ; preds = %_ZN12_GLOBAL__N_118HWAddressSanitizer18ignoreMemIntrinsicERN4llvm25OptimizationRemarkEmitterEPNS1_12MemIntrinsicE.exit.thread181.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MemIntrinsicELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %159, ptr noundef nonnull %i.bxy)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MemIntrinsicELb1EE9push_backES2_.exit.i

bb.hi:                                            ; preds = %_ZN12_GLOBAL__N_118HWAddressSanitizer18ignoreMemIntrinsicERN4llvm25OptimizationRemarkEmitterEPNS1_12MemIntrinsicE.exit.thread181.i
  %i.ceh = zext i32 %i.cef to i64
  %i.cei = load ptr, ptr %159, align 8, !tbaa !47
  %i.cej = getelementptr inbounds nuw [8 x i8], ptr %i.cei, i64 %i.ceh
  store ptr %i.bxy, ptr %i.cej, align 1
  %i.cek = load i32, ptr %i.ail, align 8, !tbaa !194
  %i.cel = add i32 %i.cek, 1
  store i32 %i.cel, ptr %i.ail, align 8, !tbaa !194
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MemIntrinsicELb1EE9push_backES2_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MemIntrinsicELb1EE9push_backES2_.exit.i: ; preds = %bb.hi, %bb.hh, %_ZN12_GLOBAL__N_118HWAddressSanitizer18ignoreMemIntrinsicERN4llvm25OptimizationRemarkEmitterEPNS1_12MemIntrinsicE.exit.i, %bb.hf, %bb.hd, %bb.ha, %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i, %bb.gz, %bb.gy, %_ZN12_GLOBAL__N_118HWAddressSanitizer28getInterestingMemoryOperandsERN4llvm25OptimizationRemarkEmitterEPNS1_11InstructionERKNS1_17TargetLibraryInfoERNS1_15SmallVectorImplINS1_24InterestingMemoryOperandEEE.exit.i
  %i.cem = getelementptr inbounds nuw i8, ptr %.sroa.8169.0204.i, i64 8
  %i.cen = load ptr, ptr %i.cem, align 8, !tbaa !247 ; 3 uses
  %i.ceo = getelementptr inbounds nuw i8, ptr %.sroa.5168.0207.i, i64 24
  %i.cep = icmp eq ptr %i.cen, %i.ceo
  br i1 %i.cep, label %.lr.ph.i.i116.preheader.i, label %_ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit.i

.lr.ph.i.i116.preheader.i:                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MemIntrinsicELb1EE9push_backES2_.exit.i
  %i.ceq = getelementptr inbounds nuw i8, ptr %.sroa.5168.0207.i, i64 8
  %i.cer = load ptr, ptr %i.ceq, align 8, !tbaa !123 ; 3 uses
  %i.ces = icmp eq ptr %i.cer, %i.ayf
  br i1 %i.ces, label %_ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit.i, label %.lr.ph.i

.lr.ph.i.i116.i:                                  ; preds = %.lr.ph.i
  %i.cet = getelementptr inbounds nuw i8, ptr %i.cew, i64 8
  %i.ceu = load ptr, ptr %i.cet, align 8, !tbaa !123 ; 3 uses
  %i.cev = icmp eq ptr %i.ceu, %i.ayf
  br i1 %i.cev, label %_ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit.i, label %.lr.ph.i, !llvm.loop !379

.lr.ph.i:                                         ; preds = %.lr.ph.i.i116.preheader.i, %.lr.ph.i.i116.i
  %i.cew = phi ptr [ %i.ceu, %.lr.ph.i.i116.i ], [ %i.cer, %.lr.ph.i.i116.preheader.i ] ; 4 uses
  %i.cex = getelementptr inbounds nuw i8, ptr %i.cew, i64 32
  %i.cey = load ptr, ptr %i.cex, align 8, !tbaa !247 ; 3 uses
  %i.cez = getelementptr inbounds nuw i8, ptr %i.cew, i64 24
  %i.cfa = icmp eq ptr %i.cey, %i.cez
  br i1 %i.cfa, label %.lr.ph.i.i116.i, label %._ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit.loopexit_crit_edge.i, !llvm.loop !379

._ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit.loopexit_crit_edge.i: ; preds = %.lr.ph.i
  br label %_ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit.i, !llvm.loop !379

_ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit.i: ; preds = %.lr.ph.i.i116.i, %._ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit.loopexit_crit_edge.i, %.lr.ph.i.i116.preheader.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MemIntrinsicELb1EE9push_backES2_.exit.i
  %.sroa.8169.3.i = phi ptr [ %i.cen, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MemIntrinsicELb1EE9push_backES2_.exit.i ], [ %i.cey, %._ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit.loopexit_crit_edge.i ], [ %i.cen, %.lr.ph.i.i116.preheader.i ], [ %i.cey, %.lr.ph.i.i116.i ]
  %.sroa.5168.1.i = phi ptr [ %.sroa.5168.0207.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MemIntrinsicELb1EE9push_backES2_.exit.i ], [ %i.cew, %._ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit.loopexit_crit_edge.i ], [ %i.cer, %.lr.ph.i.i116.preheader.i ], [ %i.ceu, %.lr.ph.i.i116.i ] ; 2 uses
  %i.cfb = icmp eq ptr %.sroa.5168.1.i, %i.ayf
  br i1 %i.cfb, label %_ZNK4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EneERKSD_.exit.i, label %.lr.ph208.i

.lr.ph.i174:                                      ; preds = %_ZN12_GLOBAL__N_118HWAddressSanitizer19initializeCallbacksERN4llvm6ModuleE.exit
  %.val.i = load ptr, ptr %160, align 8, !tbaa !47 ; 2 uses
  %i.cfc = zext i32 %i.bxx to i64
  %.idx.i173 = shl nuw nsw i64 %i.cfc, 3
  %i.cfd = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx.i173
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hj, %.lr.ph.i174
  %.04.i = phi ptr [ %.val.i, %.lr.ph.i174 ], [ %i.cga, %bb.hj ] ; 2 uses
  %i.cfe = load ptr, ptr %.04.i, align 8, !tbaa !250 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  %i.cff = getelementptr inbounds nuw i8, ptr %i.cfe, i64 40
  %i.cfg = load ptr, ptr %i.cff, align 8, !tbaa !262
  %i.cfh = getelementptr inbounds nuw i8, ptr %i.cfg, i64 48
  %i.cfi = getelementptr inbounds nuw i8, ptr %i.cfe, i64 32
  %i.cfj = load ptr, ptr %i.cfi, align 8, !tbaa !247 ; 4 uses
  %i.cfk = icmp eq ptr %i.cfj, %i.cfh
  %i.cfl = getelementptr inbounds i8, ptr %i.cfj, i64 -24 ; 2 uses
  %spec.select.i.i.i176 = select i1 %i.cfk, ptr null, ptr %i.cfl
  %i.cfm = getelementptr inbounds i8, ptr %i.cfj, i64 -16
  %i.cfn = load ptr, ptr %i.cfm, align 8, !tbaa !175
  %i.cfo = load ptr, ptr %i.cfn, align 8, !tbaa !184, !nonnull !44, !align !116
  store ptr null, ptr %28, align 8, !tbaa !141
  store ptr %i.cfo, ptr %i.amm, align 8, !tbaa !142
  store ptr %i.amk, ptr %i.amn, align 8, !tbaa !144
  store ptr %i.aml, ptr %i.amo, align 8, !tbaa !146
  store ptr null, ptr %i.amp, align 8, !tbaa !157
  store i32 0, ptr %i.amq, align 8, !tbaa !158
  store i8 0, ptr %i.amr, align 4, !tbaa !159
  store i8 2, ptr %i.ams, align 1, !tbaa !160
  store i8 7, ptr %i.amt, align 2, !tbaa !161
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.amv, i8 0, i64 18, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.amu, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16)>, ptr %i.amk, align 8, !tbaa !29
  %i.cfp = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i176, i64 24
  %i.cfq = getelementptr inbounds nuw i8, ptr %i.cfj, i64 16
  %i.cfr = load ptr, ptr %i.cfq, align 8, !tbaa !262
  store ptr %i.cfr, ptr %i.amv, align 8, !tbaa !211
  store ptr %i.cfp, ptr %i.amw, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i175, align 8
  %i.cfs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cfl) #24
  %i.cft = load i64, ptr %i.cfs, align 8, !tbaa !263
  store i64 %i.cft, ptr %28, align 8, !tbaa !263
  %.sroa.01.0.copyload.i = load ptr, ptr %i.amj, align 8, !tbaa !248
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #24
  %i.cfu = load i32, ptr %i.cr, align 8, !tbaa !124
  %i.cfv = icmp eq i32 %i.cfu, 41                 ; 2 uses
  %i.cfw = select i1 %i.cfv, ptr @.str.161, ptr @.str.162
  %i.cfx = select i1 %i.cfv, i64 3, i64 2
  %i.cfy = call noundef ptr @_ZN4llvm6memtag12readRegisterERNS_9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(104) %28, ptr nonnull %i.cfw, i64 %i.cfx) #24
  store ptr %i.cfy, ptr %i.l, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  store i16 257, ptr %i.amx, align 8
  %i.cfz = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %28, ptr noundef %.sroa.01.0.copyload.i, ptr noundef %.sroa.22.0.copyload.i, ptr nonnull %i.l, i64 1, ptr noundef nonnull align 8 dereferenceable(34) %29, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #24
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aml) #24
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.amk) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  %i.cga = getelementptr inbounds nuw i8, ptr %.04.i, i64 8 ; 2 uses
  %.not.i177 = icmp eq ptr %i.cga, %i.cfd
  br i1 %.not.i177, label %_ZN12_GLOBAL__N_118HWAddressSanitizer21instrumentLandingPadsERN4llvm15SmallVectorImplIPNS1_11InstructionEEE.exit, label %bb.hj

_ZN12_GLOBAL__N_118HWAddressSanitizer21instrumentLandingPadsERN4llvm15SmallVectorImplIPNS1_11InstructionEEE.exit: ; preds = %bb.hj, %_ZN12_GLOBAL__N_118HWAddressSanitizer19initializeCallbacksERN4llvm6ModuleE.exit
  %i.cgb = load i32, ptr %i.ais, align 8, !tbaa !194
  %.not.i.i117.i = icmp eq i32 %i.cgb, 0
  br i1 %.not.i.i117.i, label %bb.hk, label %.thread.i

bb.hk:                                            ; preds = %_ZN12_GLOBAL__N_118HWAddressSanitizer21instrumentLandingPadsERN4llvm15SmallVectorImplIPNS1_11InstructionEEE.exit
  %i.cgc = getelementptr inbounds i8, ptr %.sroa.0197.0241, i64 -62
  %i.cgd = load i16, ptr %i.cgc, align 2, !tbaa !635
  %i.cge = and i16 %i.cgd, 8
  %.not188.i = icmp eq i16 %i.cge, 0
  br i1 %.not188.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread184.i, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.cgf = call noundef ptr @_ZNK4llvm8Function16getPersonalityFnEv(ptr noundef nonnull align 8 dereferenceable(140) %i.aya) #24
  %i.cgg = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cgf) #24 ; 2 uses
  %i.cgh = extractvalue { ptr, i64 } %i.cgg, 1
  %.not.i118.i = icmp eq i64 %i.cgh, 26
  br i1 %.not.i118.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread184.i

_ZN4llvmeqENS_9StringRefES0_.exit.i:              ; preds = %bb.hl
  %i.cgi = extractvalue { ptr, i64 } %i.cgg, 0    ; 2 uses
  %i.cgj = load i128, ptr %i.cgi, align 1
  %i.cgk = xor i128 %i.cgj, 129508528739684288479478469909161729887
  %i.cgl = getelementptr i8, ptr %i.cgi, i64 10
  %i.cgm = load i128, ptr %i.cgl, align 1
  %i.cgn = xor i128 %i.cgm, 142800929521093040814679132922644230757
  %i.cgo = or i128 %i.cgk, %i.cgn
  %i.cgp = icmp ne i128 %i.cgo, 0
  %i.cgq = zext i1 %i.cgp to i32
  %i.cgr = icmp eq i32 %i.cgq, 0
  br i1 %i.cgr, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread184.i

_ZN4llvmeqENS_9StringRefES0_.exit.thread.i:       ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i
  call void @_ZN4llvm8Function16setPersonalityFnEPNS_8ConstantE(ptr noundef nonnull align 8 dereferenceable(140) %i.aya, ptr noundef null) #24
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread184.i

_ZN4llvmeqENS_9StringRefES0_.exit.thread184.i:    ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i, %bb.hl, %bb.hk
  %.pr.i30 = load i32, ptr %i.ais, align 8, !tbaa !194
  %.not.i.i119.i = icmp eq i32 %.pr.i30, 0
  %i.cgs = load i32, ptr %i.aii, align 8
  %.not.i120.i = icmp eq i32 %i.cgs, 0
  %or.cond.i31 = select i1 %.not.i.i119.i, i1 %.not.i120.i, i1 false
  %i.cgt = load i32, ptr %i.ail, align 8
  %.not.i121.i = icmp eq i32 %i.cgt, 0
  %or.cond187.i = select i1 %or.cond.i31, i1 %.not.i121.i, i1 false
  br i1 %or.cond187.i, label %bb.nu, label %.thread.i

.thread.i:                                        ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread184.i, %_ZN12_GLOBAL__N_118HWAddressSanitizer21instrumentLandingPadsERN4llvm15SmallVectorImplIPNS1_11InstructionEEE.exit
  %i.cgu = load ptr, ptr %i.bgr, align 8, !tbaa !123 ; 3 uses
  %i.cgv = getelementptr inbounds i8, ptr %i.cgu, i64 -24 ; 2 uses
  %i.cgw = getelementptr inbounds nuw i8, ptr %i.cgu, i64 32
  %i.cgx = load ptr, ptr %i.cgw, align 8, !tbaa !247 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %162) #24
  %i.cgy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm10BasicBlock10getContextEv(ptr noundef nonnull align 8 dereferenceable(80) %i.cgv) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ana, i8 0, i64 16, i1 false)
  store ptr null, ptr %162, align 8, !tbaa !141
  store ptr %i.cgy, ptr %i.anb, align 8, !tbaa !142
  store ptr %i.amy, ptr %i.anc, align 8, !tbaa !144
  store ptr %i.amz, ptr %i.and, align 8, !tbaa !146
  store ptr null, ptr %i.ane, align 8, !tbaa !157
  store i32 0, ptr %i.anf, align 8, !tbaa !158
  store i8 0, ptr %i.ang, align 4, !tbaa !159
  store i8 2, ptr %i.anh, align 1, !tbaa !160
  store i8 7, ptr %i.ani, align 2, !tbaa !161
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16)>, ptr %i.amy, align 8, !tbaa !29
  store ptr %i.cgv, ptr %i.anj, align 8, !tbaa !211
  store ptr %i.cgx, ptr %i.ank, align 8
  store i16 1, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8
  %i.cgz = getelementptr inbounds nuw i8, ptr %i.cgu, i64 24
  %.not.i.i122.i = icmp eq ptr %i.cgx, %i.cgz
  br i1 %.not.i.i122.i, label %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i, label %bb.hm

bb.hm:                                            ; preds = %.thread.i
  %i.cha = getelementptr inbounds i8, ptr %i.cgx, i64 -24
  %i.chb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cha) #24
  %i.chc = load i64, ptr %i.chb, align 8, !tbaa !263
  store i64 %i.chc, ptr %162, align 8, !tbaa !263
  br label %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i

_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i: ; preds = %bb.hm, %.thread.i
  %i.chd = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL20ClRecordStackHistory, i64 120), align 8, !tbaa !269 ; 2 uses
  %.not.i26 = icmp ne i32 %i.chd, 0
  %.val111.i = load i8, ptr %i.fj, align 1, !range !43
  %i.che = trunc nuw i8 %.val111.i to i1
  %i.chf = select i1 %.not.i26, i1 %i.che, i1 false
  br i1 %i.chf, label %199, label %201

199:                                              ; preds = %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i
  %200 = load i32, ptr %i.ais, align 8, !tbaa !194
  %.not.i.i123.i = icmp ne i32 %200, 0
  br label %201

201:                                              ; preds = %199, %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i
  %202 = phi i1 [ %.not.i.i123.i, %199 ], [ false, %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i ] ; 2 uses
  %.val.i155 = load i32, ptr %i.ff, align 8, !tbaa !136
  switch i32 %.val.i155, label %bb.hr [
    i32 3, label %bb.hs
    i32 0, label %bb.hn
    i32 2, label %bb.hp
  ]

bb.hn:                                            ; preds = %201
  %i.chg = load ptr, ptr %i.cw, align 8, !tbaa !118
  %.val7.i.i = load i64, ptr %i.ann, align 8, !tbaa !135
  %i.chh = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.chg, i64 noundef %.val7.i.i, i1 noundef zeroext false, i1 noundef zeroext false) #24
  %i.chi = load ptr, ptr %i.db, align 8, !tbaa !119
  %i.chj = call noundef ptr @_ZN4llvm12ConstantExpr11getIntToPtrEPNS_8ConstantEPNS_4TypeEb(ptr noundef %i.chh, ptr noundef %i.chi, i1 noundef zeroext false) #24 ; 2 uses
  %.val8.i.i = load ptr, ptr %i.db, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #24
  %i.chk = getelementptr inbounds nuw i8, ptr %i.chj, i64 8
  %i.chl = load ptr, ptr %i.chk, align 8, !tbaa !175
  store ptr %i.chl, ptr %i.q, align 8, !tbaa !185
  %i.chm = call noundef ptr @_ZN4llvm12FunctionType3getEPNS_4TypeENS_8ArrayRefIS2_EEb(ptr noundef %.val8.i.i, ptr nonnull %i.q, i64 1, i1 noundef zeroext false) #24
  %i.chn = call noundef ptr @_ZN4llvm9InlineAsm3getEPNS_12FunctionTypeENS_9StringRefES3_bbNS0_10AsmDialectEb(ptr noundef %i.chm, ptr nonnull @.str.124, i64 0, ptr nonnull @.str.164, i64 4, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 0, i1 noundef zeroext false) #24 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #24
  %.not.i.i.i.i168 = icmp eq ptr %i.chn, null
  br i1 %.not.i.i.i.i168, label %_ZN12_GLOBAL__N_118HWAddressSanitizer17getOpaqueNoopCastERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEPNS1_5ValueE.exit.i.i, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.cho = call noundef ptr @_ZNK4llvm9InlineAsm15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(112) %i.chn) #24
  br label %_ZN12_GLOBAL__N_118HWAddressSanitizer17getOpaqueNoopCastERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEPNS1_5ValueE.exit.i.i

_ZN12_GLOBAL__N_118HWAddressSanitizer17getOpaqueNoopCastERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEPNS1_5ValueE.exit.i.i: ; preds = %bb.ho, %bb.hn
  %i.chp = phi ptr [ %i.cho, %bb.ho ], [ null, %bb.hn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #24
  store ptr %i.chj, ptr %i.r, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #24
  store i8 1, ptr %i.anp, align 1, !tbaa !180
  store ptr @.str.165, ptr %41, align 8, !tbaa !38
  store i8 3, ptr %i.ano, align 8, !tbaa !179
  %i.chq = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(104) %162, ptr noundef %i.chp, ptr noundef %i.chn, ptr nonnull %i.r, i64 1, ptr noundef nonnull align 8 dereferenceable(34) %41, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #24
  br label %bb.hw

bb.hp:                                            ; preds = %201
  %.val10.i.i = load ptr, ptr %i.db, align 8, !tbaa !119
  %.val11.i.i = load ptr, ptr %i.amf, align 8, !tbaa !737 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #24
  %i.chr = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 8
  %i.chs = load ptr, ptr %i.chr, align 8, !tbaa !175
  store ptr %i.chs, ptr %i.o, align 8, !tbaa !185
  %i.cht = call noundef ptr @_ZN4llvm12FunctionType3getEPNS_4TypeENS_8ArrayRefIS2_EEb(ptr noundef %.val10.i.i, ptr nonnull %i.o, i64 1, i1 noundef zeroext false) #24
  %i.chu = call noundef ptr @_ZN4llvm9InlineAsm3getEPNS_12FunctionTypeENS_9StringRefES3_bbNS0_10AsmDialectEb(ptr noundef %i.cht, ptr nonnull @.str.124, i64 0, ptr nonnull @.str.164, i64 4, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 0, i1 noundef zeroext false) #24 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #24
  %.not.i.i.i.i.i156 = icmp eq ptr %i.chu, null
  br i1 %.not.i.i.i.i.i156, label %_ZN12_GLOBAL__N_118HWAddressSanitizer21getDynamicShadowIfuncERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit.i.i, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.chv = call noundef ptr @_ZNK4llvm9InlineAsm15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(112) %i.chu) #24
  br label %_ZN12_GLOBAL__N_118HWAddressSanitizer21getDynamicShadowIfuncERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit.i.i

_ZN12_GLOBAL__N_118HWAddressSanitizer21getDynamicShadowIfuncERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit.i.i: ; preds = %bb.hq, %bb.hp
  %i.chw = phi ptr [ %i.chv, %bb.hq ], [ null, %bb.hp ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #24
  store ptr %.val11.i.i, ptr %i.p, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #24
  store i8 1, ptr %i.anm, align 1, !tbaa !180
  store ptr @.str.165, ptr %40, align 8, !tbaa !38
  store i8 3, ptr %i.anl, align 8, !tbaa !179
  %i.chx = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(104) %162, ptr noundef %i.chw, ptr noundef %i.chu, ptr nonnull %i.p, i64 1, ptr noundef nonnull align 8 dereferenceable(34) %40, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #24
  br label %bb.hw

bb.hr:                                            ; preds = %201
  %i.chy = load ptr, ptr %i.anj, align 8, !tbaa !211
  %i.chz = getelementptr inbounds nuw i8, ptr %i.chy, i64 72
  %i.cia = load ptr, ptr %i.chz, align 8, !tbaa !749
  %i.cib = getelementptr inbounds nuw i8, ptr %i.cia, i64 40
  %i.cic = load ptr, ptr %i.cib, align 8, !tbaa !659
  %i.cid = load ptr, ptr %i.db, align 8, !tbaa !119
  %i.cie = call noundef ptr @_ZN4llvm6Module17getOrInsertGlobalENS_9StringRefEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(1288) %i.cic, ptr nonnull @_ZL33kHwasanShadowMemoryDynamicAddress, i64 38, ptr noundef %i.cid) #24
  %i.cif = load ptr, ptr %i.db, align 8, !tbaa !119 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #24
  store i16 257, ptr %i.ans, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %39)
  %i.cig = load ptr, ptr %i.anj, align 8, !tbaa !211
  %i.cih = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.cig) #24
  %i.cii = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.cih, ptr noundef %i.cif) #24
  %i.cij = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 1) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #24
  store i8 1, ptr %i.ant, align 8, !tbaa !179
  store i8 1, ptr %i.anu, align 1, !tbaa !180
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, i8 0, i64 16, i1 false)
  call void @_ZN4llvm8LoadInstC1EPNS_4TypeEPNS_5ValueERKNS_5TwineEbNS_5AlignENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.cij, ptr noundef %i.cif, ptr noundef %i.cie, ptr noundef nonnull align 8 dereferenceable(34) %38, i1 noundef zeroext false, i8 %i.cii, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %39) #24
  %i.cik = load ptr, ptr %i.and, align 8, !tbaa !216, !nonnull !44, !align !116 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i170 = load ptr, ptr %i.ank, align 8
  %.sroa.2.0.copyload.i.i.i.i172 = load i64, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8
  %i.cil = load ptr, ptr %i.cik, align 8, !tbaa !29
  %i.cim = getelementptr inbounds nuw i8, ptr %i.cil, i64 16
  %i.cin = load ptr, ptr %i.cim, align 8
  call void %i.cin(ptr noundef nonnull align 8 dereferenceable(8) %i.cik, ptr noundef nonnull %i.cij, ptr noundef nonnull align 8 dereferenceable(34) %42, ptr %.sroa.0.0.copyload.i.i.i.i170, i64 %.sroa.2.0.copyload.i.i.i.i172) #24, !inline_history !425
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(104) %162, ptr noundef nonnull %i.cij) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %39)
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #24
  br label %bb.hw

bb.hs:                                            ; preds = %201
  br i1 %202, label %bb.hx, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.cio = load i32, ptr %i.gm, align 8, !tbaa !615
  %i.cip = icmp eq i32 %i.cio, 17
  br i1 %i.cip, label %bb.hu, label %..thread_crit_edge.i

..thread_crit_edge.i:                             ; preds = %bb.ht
  %.pre.i169 = load ptr, ptr %i.dt, align 8, !tbaa !258
  br label %.thread.i158

bb.hu:                                            ; preds = %bb.ht
  %.val28.i = load ptr, ptr %i.db, align 8, !tbaa !119
  %.val29.i = load ptr, ptr %i.amf, align 8, !tbaa !737 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #24
  %i.ciq = getelementptr inbounds nuw i8, ptr %.val29.i, i64 8
  %i.cir = load ptr, ptr %i.ciq, align 8, !tbaa !175
  store ptr %i.cir, ptr %i.m, align 8, !tbaa !185
  %i.cis = call noundef ptr @_ZN4llvm12FunctionType3getEPNS_4TypeENS_8ArrayRefIS2_EEb(ptr noundef %.val28.i, ptr nonnull %i.m, i64 1, i1 noundef zeroext false) #24
  %i.cit = call noundef ptr @_ZN4llvm9InlineAsm3getEPNS_12FunctionTypeENS_9StringRefES3_bbNS0_10AsmDialectEb(ptr noundef %i.cis, ptr nonnull @.str.124, i64 0, ptr nonnull @.str.164, i64 4, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 0, i1 noundef zeroext false) #24 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #24
  %.not.i.i.i30.i = icmp eq ptr %i.cit, null
  br i1 %.not.i.i.i30.i, label %_ZN12_GLOBAL__N_118HWAddressSanitizer21getDynamicShadowIfuncERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit.i, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.ciu = call noundef ptr @_ZNK4llvm9InlineAsm15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(112) %i.cit) #24
  br label %_ZN12_GLOBAL__N_118HWAddressSanitizer21getDynamicShadowIfuncERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit.i

_ZN12_GLOBAL__N_118HWAddressSanitizer21getDynamicShadowIfuncERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit.i: ; preds = %bb.hv, %bb.hu
  %i.civ = phi ptr [ %i.ciu, %bb.hv ], [ null, %bb.hu ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #24
  store ptr %.val29.i, ptr %i.n, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24
  store i8 1, ptr %i.anr, align 1, !tbaa !180
  store ptr @.str.165, ptr %37, align 8, !tbaa !38
  store i8 3, ptr %i.anq, align 8, !tbaa !179
  %i.ciw = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(104) %162, ptr noundef %i.civ, ptr noundef %i.cit, ptr nonnull %i.n, i64 1, ptr noundef nonnull align 8 dereferenceable(34) %37, ptr noundef null) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #24
  store ptr %i.ciw, ptr %i.dt, align 8, !tbaa !258
  br label %.thread.i158

bb.hw:                                            ; preds = %bb.hr, %_ZN12_GLOBAL__N_118HWAddressSanitizer21getDynamicShadowIfuncERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit.i.i, %_ZN12_GLOBAL__N_118HWAddressSanitizer17getOpaqueNoopCastERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEPNS1_5ValueE.exit.i.i
  %.0.i.i157 = phi ptr [ %i.chq, %_ZN12_GLOBAL__N_118HWAddressSanitizer17getOpaqueNoopCastERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEPNS1_5ValueE.exit.i.i ], [ %i.chx, %_ZN12_GLOBAL__N_118HWAddressSanitizer21getDynamicShadowIfuncERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit.i.i ], [ %i.cij, %bb.hr ] ; 2 uses
  store ptr %.0.i.i157, ptr %i.dt, align 8, !tbaa !258
  br i1 %202, label %._crit_edge273, label %.thread.i158

._crit_edge273:                                   ; preds = %bb.hw
  %.pre274 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL20ClRecordStackHistory, i64 120), align 8, !tbaa !269
  br label %bb.hx

.thread.i158:                                     ; preds = %bb.hw, %_ZN12_GLOBAL__N_118HWAddressSanitizer21getDynamicShadowIfuncERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit.i, %..thread_crit_edge.i
  %i.cix = phi ptr [ %.pre.i169, %..thread_crit_edge.i ], [ %i.ciw, %_ZN12_GLOBAL__N_118HWAddressSanitizer21getDynamicShadowIfuncERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE.exit.i ], [ %.0.i.i157, %bb.hw ]
  %.not.i159 = icmp eq ptr %i.cix, null
  br i1 %.not.i159, label %.critedge.i160, label %_ZN12_GLOBAL__N_118HWAddressSanitizer12emitPrologueERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEb.exit

.critedge.i160:                                   ; preds = %.thread.i158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #24
  store ptr null, ptr %i.s, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #24
  store ptr null, ptr %i.t, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #24
  store ptr %i.s, ptr %43, align 8, !tbaa !750
  store ptr %198, ptr %i.anv, align 8, !tbaa !273
  store ptr %162, ptr %i.anw, align 8, !tbaa !751
  store ptr %i.t, ptr %i.anx, align 8, !tbaa !750
  br label %bb.ib

bb.hx:                                            ; preds = %._crit_edge273, %bb.hs
  %i.ciy = phi i32 [ %.pre274, %._crit_edge273 ], [ %i.chd, %bb.hs ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #24
  store ptr null, ptr %i.s, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #24
  store ptr null, ptr %i.t, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #24
  store ptr %i.s, ptr %43, align 8, !tbaa !750
  store ptr %198, ptr %i.anv, align 8, !tbaa !273
  store ptr %162, ptr %i.anw, align 8, !tbaa !751
  store ptr %i.t, ptr %i.anx, align 8, !tbaa !750
  switch i32 %i.ciy, label %bb.ib [
    i32 2, label %bb.hy
    i32 1, label %bb.hz
  ]

bb.hy:                                            ; preds = %bb.hx
  %i.ciz = call fastcc noundef ptr @_ZN12_GLOBAL__N_118HWAddressSanitizer18getFrameRecordInfoERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE(ptr noundef nonnull align 8 dereferenceable(544) %198, ptr noundef nonnull align 8 dereferenceable(104) %162)
  %.sroa.02.0.copyload.i = load ptr, ptr %i.ame, align 8, !tbaa !248
  %.sroa.23.0.copyload.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #24
  store ptr %i.ciz, ptr %i.u, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #24
  store i16 257, ptr %i.aoe, align 8
  %i.cja = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(104) %162, ptr noundef %.sroa.02.0.copyload.i, ptr noundef %.sroa.23.0.copyload.i, ptr nonnull %i.u, i64 1, ptr noundef nonnull align 8 dereferenceable(34) %44, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #24
  br label %bb.ib

bb.hz:                                            ; preds = %bb.hx
  %i.cjb = call fastcc noundef ptr @"_ZZN12_GLOBAL__N_118HWAddressSanitizer12emitPrologueERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(32) %43) ; 2 uses
  %i.cjc = load ptr, ptr %i.t, align 8, !tbaa !214 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #24
  %i.cjd = getelementptr inbounds nuw i8, ptr %i.cjc, i64 8
  store i16 257, ptr %i.any, align 8
  %i.cje = load ptr, ptr %i.cjd, align 8, !tbaa !175
  %i.cjf = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.cje, i64 noundef 3, i1 noundef zeroext false, i1 noundef zeroext false) #24 ; 2 uses
  %i.cjg = load ptr, ptr %i.anc, align 8, !tbaa !274, !nonnull !44, !align !116 ; 2 uses
  %i.cjh = load ptr, ptr %i.cjg, align 8, !tbaa !29
  %i.cji = getelementptr inbounds nuw i8, ptr %i.cjh, i64 24
  %i.cjj = load ptr, ptr %i.cji, align 8
  %i.cjk = call noundef ptr %i.cjj(ptr noundef nonnull align 8 dereferenceable(8) %i.cjg, i32 noundef 28, ptr noundef nonnull %i.cjc, ptr noundef %i.cjf, i1 noundef zeroext false) #24, !inline_history !426 ; 2 uses
  %.not.not.i37.i = icmp eq ptr %i.cjk, null
  br i1 %.not.not.i37.i, label %bb.ia, label %_ZN4llvm13IRBuilderBase10CreateAShrEPNS_5ValueES2_RKNS_5TwineEb.exit.i

bb.ia:                                            ; preds = %bb.hz
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #24
  store i16 257, ptr %i.anz, align 8
  %i.cjl = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 28, ptr noundef nonnull %i.cjc, ptr noundef %i.cjf, ptr noundef nonnull align 8 dereferenceable(34) %34, ptr null, i64 0) #24 ; 3 uses
  %i.cjm = load ptr, ptr %i.and, align 8, !tbaa !216, !nonnull !44, !align !116 ; 2 uses
  %.sroa.0.0.copyload.i.i39.i = load ptr, ptr %i.ank, align 8
  %.sroa.2.0.copyload.i.i41.i = load i64, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8
  %i.cjn = load ptr, ptr %i.cjm, align 8, !tbaa !29
  %i.cjo = getelementptr inbounds nuw i8, ptr %i.cjn, i64 16
  %i.cjp = load ptr, ptr %i.cjo, align 8
  call void %i.cjp(ptr noundef nonnull align 8 dereferenceable(8) %i.cjm, ptr noundef %i.cjl, ptr noundef nonnull align 8 dereferenceable(34) %45, ptr %.sroa.0.0.copyload.i.i39.i, i64 %.sroa.2.0.copyload.i.i41.i) #24, !inline_history !427
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(104) %162, ptr noundef %i.cjl) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  br label %_ZN4llvm13IRBuilderBase10CreateAShrEPNS_5ValueES2_RKNS_5TwineEb.exit.i

_ZN4llvm13IRBuilderBase10CreateAShrEPNS_5ValueES2_RKNS_5TwineEb.exit.i: ; preds = %bb.ia, %bb.hz
  %.1.i38.i = phi ptr [ %i.cjk, %bb.hz ], [ %i.cjl, %bb.ia ]
  store ptr %.1.i38.i, ptr %i.aoa, align 8, !tbaa !752
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #24
  %i.cjq = call fastcc noundef ptr @_ZN12_GLOBAL__N_118HWAddressSanitizer18getFrameRecordInfoERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE(ptr noundef nonnull align 8 dereferenceable(544) %198, ptr noundef nonnull align 8 dereferenceable(104) %162) ; 2 uses
  %i.cjr = load ptr, ptr %i.anb, align 8, !tbaa !215, !nonnull !44, !align !116
  %i.cjs = call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.cjr, i32 noundef 0) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #24
  store i16 257, ptr %i.aob, align 8
  %i.cjt = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(104) %162, i32 noundef 50, ptr noundef %i.cjb, ptr noundef %i.cjs, ptr noundef nonnull align 8 dereferenceable(34) %46, ptr noundef null, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  %i.cju = load ptr, ptr %i.anj, align 8, !tbaa !211
  %i.cjv = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.cju) #24
  %i.cjw = getelementptr inbounds nuw i8, ptr %i.cjq, i64 8
  %i.cjx = load ptr, ptr %i.cjw, align 8, !tbaa !175
  %i.cjy = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.cjv, ptr noundef %i.cjx) #24
  %i.cjz = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 2) #24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  call void @_ZN4llvm9StoreInstC1EPNS_5ValueES2_bNS_5AlignENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.cjz, ptr noundef %i.cjq, ptr noundef %i.cjt, i1 noundef zeroext false, i8 %i.cjy, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %32) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24
  store i16 257, ptr %i.aoc, align 8
  %i.cka = load ptr, ptr %i.and, align 8, !tbaa !216, !nonnull !44, !align !116 ; 2 uses
  %.sroa.0.0.copyload.i.i42.i = load ptr, ptr %i.ank, align 8
  %.sroa.2.0.copyload.i.i44.i = load i64, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8
  %i.ckb = load ptr, ptr %i.cka, align 8, !tbaa !29
  %i.ckc = getelementptr inbounds nuw i8, ptr %i.ckb, i64 16
  %i.ckd = load ptr, ptr %i.ckc, align 8
  call void %i.ckd(ptr noundef nonnull align 8 dereferenceable(8) %i.cka, ptr noundef nonnull %i.cjz, ptr noundef nonnull align 8 dereferenceable(34) %33, ptr %.sroa.0.0.copyload.i.i42.i, i64 %.sroa.2.0.copyload.i.i44.i) #24, !inline_history !428
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(104) %162, ptr noundef nonnull %i.cjz) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  %i.cke = load ptr, ptr %i.t, align 8, !tbaa !214
  %i.ckf = call noundef ptr @_ZN4llvm6memtag19incrementThreadLongERNS_9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEPNS_5ValueEjb(ptr noundef nonnull align 8 dereferenceable(104) %162, ptr noundef %i.cke, i32 noundef 8, i1 noundef zeroext false) #24 ; 2 uses
  %i.ckg = load ptr, ptr %i.s, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  %i.ckh = load ptr, ptr %i.anj, align 8, !tbaa !211
  %i.cki = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ckh) #24
  %i.ckj = getelementptr inbounds nuw i8, ptr %i.ckf, i64 8
  %i.ckk = load ptr, ptr %i.ckj, align 8, !tbaa !175
  %i.ckl = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.cki, ptr noundef %i.ckk) #24
  %i.ckm = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 2) #24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  call void @_ZN4llvm9StoreInstC1EPNS_5ValueES2_bNS_5AlignENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.ckm, ptr noundef %i.ckf, ptr noundef %i.ckg, i1 noundef zeroext false, i8 %i.ckl, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %30) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #24
  store i16 257, ptr %i.aod, align 8
  %i.ckn = load ptr, ptr %i.and, align 8, !tbaa !216, !nonnull !44, !align !116 ; 2 uses
  %.sroa.0.0.copyload.i.i45.i = load ptr, ptr %i.ank, align 8
  %.sroa.2.0.copyload.i.i47.i = load i64, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8
  %i.cko = load ptr, ptr %i.ckn, align 8, !tbaa !29
  %i.ckp = getelementptr inbounds nuw i8, ptr %i.cko, i64 16
  %i.ckq = load ptr, ptr %i.ckp, align 8
  call void %i.ckq(ptr noundef nonnull align 8 dereferenceable(8) %i.ckn, ptr noundef nonnull %i.ckm, ptr noundef nonnull align 8 dereferenceable(34) %31, ptr %.sroa.0.0.copyload.i.i45.i, i64 %.sroa.2.0.copyload.i.i47.i) #24, !inline_history !428
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(104) %162, ptr noundef nonnull %i.ckm) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  br label %bb.ib

bb.ib:                                            ; preds = %_ZN4llvm13IRBuilderBase10CreateAShrEPNS_5ValueES2_RKNS_5TwineEb.exit.i, %bb.hy, %bb.hx, %.critedge.i160
  %.0.i161 = phi ptr [ null, %bb.hx ], [ null, %bb.hy ], [ %i.cjb, %_ZN4llvm13IRBuilderBase10CreateAShrEPNS_5ValueES2_RKNS_5TwineEb.exit.i ], [ null, %.critedge.i160 ] ; 2 uses
  %i.ckr = load ptr, ptr %i.dt, align 8, !tbaa !258
  %.not26.i = icmp eq ptr %i.ckr, null
  br i1 %.not26.i, label %bb.ic, label %bb.ih

bb.ic:                                            ; preds = %bb.ib
  %.not27.i = icmp eq ptr %.0.i161, null
  br i1 %.not27.i, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.cks = call fastcc noundef ptr @"_ZZN12_GLOBAL__N_118HWAddressSanitizer12emitPrologueERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(32) %43)
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic
  %.1.i = phi ptr [ %.0.i161, %bb.ic ], [ %i.cks, %bb.id ] ; 2 uses
  %i.ckt = load ptr, ptr %i.cw, align 8, !tbaa !118
  %i.cku = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.ckt, i64 noundef 4294967295, i1 noundef zeroext false, i1 noundef zeroext false) #24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #24
  store i16 257, ptr %i.aof, align 8
  %i.ckv = load ptr, ptr %i.anc, align 8, !tbaa !274, !nonnull !44, !align !116 ; 2 uses
  %i.ckw = load ptr, ptr %i.ckv, align 8, !tbaa !29
  %i.ckx = getelementptr inbounds nuw i8, ptr %i.ckw, i64 16
  %i.cky = load ptr, ptr %i.ckx, align 8
  %i.ckz = call noundef ptr %i.cky(ptr noundef nonnull align 8 dereferenceable(8) %i.ckv, i32 noundef 30, ptr noundef %.1.i, ptr noundef %i.cku) #24, !inline_history !429 ; 2 uses
  %.not.not.i.i162 = icmp eq ptr %i.ckz, null
  br i1 %.not.not.i.i162, label %bb.if, label %_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit.i

bb.if:                                            ; preds = %bb.ie
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #24
  store i16 257, ptr %i.aog, align 8
  %i.cla = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 30, ptr noundef %.1.i, ptr noundef %i.cku, ptr noundef nonnull align 8 dereferenceable(34) %36, ptr null, i64 0) #24 ; 3 uses
  %i.clb = load ptr, ptr %i.and, align 8, !tbaa !216, !nonnull !44, !align !116 ; 2 uses
  %.sroa.0.0.copyload.i.i.i165 = load ptr, ptr %i.ank, align 8
  %.sroa.2.0.copyload.i.i.i167 = load i64, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8
  %i.clc = load ptr, ptr %i.clb, align 8, !tbaa !29
  %i.cld = getelementptr inbounds nuw i8, ptr %i.clc, i64 16
  %i.cle = load ptr, ptr %i.cld, align 8
  call void %i.cle(ptr noundef nonnull align 8 dereferenceable(8) %i.clb, ptr noundef %i.cla, ptr noundef nonnull align 8 dereferenceable(34) %47, ptr %.sroa.0.0.copyload.i.i.i165, i64 %.sroa.2.0.copyload.i.i.i167) #24, !inline_history !430
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(104) %162, ptr noundef %i.cla) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  br label %_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit.i

_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit.i: ; preds = %bb.if, %bb.ie
  %.1.i.i163 = phi ptr [ %i.cla, %bb.if ], [ %i.ckz, %bb.ie ] ; 2 uses
  %i.clf = load ptr, ptr %i.cw, align 8, !tbaa !118
  %i.clg = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.clf, i64 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false) #24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #24
  store i8 1, ptr %i.aoi, align 1, !tbaa !180
  store ptr @.str.163, ptr %48, align 8, !tbaa !38
  store i8 3, ptr %i.aoh, align 8, !tbaa !179
  %i.clh = load ptr, ptr %i.anc, align 8, !tbaa !274, !nonnull !44, !align !116 ; 2 uses
  %i.cli = load ptr, ptr %i.clh, align 8, !tbaa !29
  %i.clj = getelementptr inbounds nuw i8, ptr %i.cli, i64 32
  %i.clk = load ptr, ptr %i.clj, align 8
  %i.cll = call noundef ptr %i.clk(ptr noundef nonnull align 8 dereferenceable(8) %i.clh, i32 noundef 14, ptr noundef %.1.i.i163, ptr noundef %i.clg, i1 noundef zeroext false, i1 noundef zeroext false) #24, !inline_history !431 ; 2 uses
  %.not.not.i32.i = icmp eq ptr %i.cll, null
  br i1 %.not.not.i32.i, label %bb.ig, label %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit.i164

bb.ig:                                            ; preds = %_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit.i
end_hunk_0

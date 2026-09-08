Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUPromoteAlloca?download=true
inline.NumInlined: 5003
inline.NumDeleted: 2606
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN12_GLOBAL__N_123AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEb:bb.a
  %i.abs = and i32 %i.abr, 254
  %spec.select.i263.i = icmp eq i32 %i.abs, 16
  br i1 %spec.select.i263.i, label %_ZNK12_GLOBAL__N_123AMDGPUPromoteAllocaImpl22analyzePromoteToVectorERNS_14AllocaAnalysisE.exit.sink.split, label %bb.dd

.split.i:                                         ; preds = %_ZN4llvm16getLoadStoreTypeEPKNS_5ValueE.exit.i
  %i.abt = call noundef zeroext i1 @_ZNK4llvm11Instruction8isAtomicEv(ptr noundef nonnull align 8 dereferenceable(73) %i.abg) #24
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abg, i64 2
  %i.abv = load i16, ptr %i.abu, align 2
  %i.abw = trunc i16 %i.abv to i1
  %i.abx = select i1 %i.abt, i1 true, i1 %i.abw
  br i1 %i.abx, label %_ZNK12_GLOBAL__N_123AMDGPUPromoteAllocaImpl22analyzePromoteToVectorERNS_14AllocaAnalysisE.exit.sink.split, label %bb.de

bb.dd:                                            ; preds = %_ZN4llvm16getLoadStoreTypeEPKNS_5ValueE.exit.thread.i
  %i.aby = call noundef zeroext i1 @_ZNK4llvm11Instruction8isAtomicEv(ptr noundef nonnull align 8 dereferenceable(73) %i.abg) #24
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abg, i64 2
  %i.aca = load i16, ptr %i.abz, align 2
  %i.acb = trunc i16 %i.aca to i1
  %i.acc = select i1 %i.aby, i1 true, i1 %i.acb
  br i1 %i.acc, label %_ZNK12_GLOBAL__N_123AMDGPUPromoteAllocaImpl22analyzePromoteToVectorERNS_14AllocaAnalysisE.exit.sink.split, label %bb.de

bb.de:                                            ; preds = %bb.dd, %.split.i
  %i.acd = phi ptr [ %i.abl, %.split.i ], [ %i.abq, %bb.dd ]
  %.1.i264266269.i = phi ptr [ %.1.i.i, %.split.i ], [ %.1.i262.i, %bb.dd ] ; 4 uses
  %i.ace = call noundef ptr @_ZNK4llvm5Value17stripPointerCastsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.abj) #20
  %i.acf = load ptr, ptr %68, align 8, !tbaa !160 ; 2 uses
  %i.acg = icmp eq ptr %i.ace, %i.acf
  br i1 %i.acg, label %bb.df, label %.critedge.i86

bb.df:                                            ; preds = %bb.de
  %i.ach = load ptr, ptr %i.mn, align 8, !tbaa !107, !nonnull !34, !align !46
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acf, i64 72
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !658
  %i.ack = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.ach, ptr noundef %i.acj) ; 2 uses
  %.fca.0.extract.i.i.i = extractvalue { i64, i8 } %i.ack, 0
  %.fca.1.extract.i.i.i = extractvalue { i64, i8 } %i.ack, 1
  %i.acl = add i64 %.fca.0.extract.i.i.i, 7
  %i.acm = load ptr, ptr %i.mn, align 8, !tbaa !107, !nonnull !34, !align !46
  %i.acn = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.acm, ptr noundef nonnull %.1.i264266269.i) ; 2 uses
  %.fca.0.extract.i.i152.i = extractvalue { i64, i8 } %i.acn, 0
  %.fca.1.extract.i.i153.i = extractvalue { i64, i8 } %i.acn, 1
  %i.aco = add i64 %.fca.0.extract.i.i152.i, 7
  %.unshifted.i = xor i64 %i.aco, %i.acl
  %i.acp = icmp ult i64 %.unshifted.i, 8
  %i.acq = icmp eq i8 %.fca.1.extract.i.i.i, %.fca.1.extract.i.i153.i
  %i.acr = select i1 %i.acp, i1 %i.acq, i1 false
  br i1 %i.acr, label %bb.dg, label %.critedge.i86

bb.dg:                                            ; preds = %bb.df
  %i.acs = load i32, ptr %i.lq, align 8, !tbaa !94 ; 2 uses
  %i.act = load i32, ptr %i.lr, align 4, !tbaa !95
  %.not.i156.i = icmp ult i32 %i.acs, %i.act
  br i1 %.not.i156.i, label %bb.di, label %bb.dh, !prof !106

bb.dh:                                            ; preds = %bb.dg
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.lo, ptr noundef nonnull %i.abg)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit176.thread298.i

bb.di:                                            ; preds = %bb.dg
  %i.acu = zext i32 %i.acs to i64
  %i.acv = load ptr, ptr %i.lo, align 8, !tbaa !37
  %i.acw = getelementptr inbounds nuw [8 x i8], ptr %i.acv, i64 %i.acu
  store ptr %i.abg, ptr %i.acw, align 1
  %i.acx = load i32, ptr %i.lq, align 8, !tbaa !94
  %i.acy = add i32 %i.acx, 1
  store i32 %i.acy, ptr %i.lq, align 8, !tbaa !94
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit176.thread298.i

.critedge.i86:                                    ; preds = %bb.df, %bb.de
  %i.acz = load ptr, ptr %i.ln, align 8, !tbaa !189 ; 2 uses
  %i.ada = load ptr, ptr %i.mn, align 8, !tbaa !107, !nonnull !34, !align !46 ; 4 uses
  %i.adb = load i32, ptr %i.acd, align 8
  %i.adc = and i32 %i.adb, 255
  %i.add = icmp eq i32 %i.adc, 18
  br i1 %i.add, label %bb.dj, label %.split271.i

bb.dj:                                            ; preds = %.critedge.i86
  %i.ade = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.ada, ptr noundef nonnull %.1.i264266269.i) ; 2 uses
  %.fca.0.extract.i.i.i158.i = extractvalue { i64, i8 } %i.ade, 0
  %.fca.1.extract.i.i.i159.i = extractvalue { i64, i8 } %i.ade, 1 ; 2 uses
  %i.adf = add i64 %.fca.0.extract.i.i.i158.i, 7  ; 2 uses
  %i.adg = lshr i64 %i.adf, 3
  %i.adh = and i64 %i.adf, -8
  %i.adi = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.ada, ptr noundef nonnull %.1.i264266269.i) ; 2 uses
  %.fca.0.extract1.i.i = extractvalue { i64, i8 } %i.adi, 0
  %.fca.1.extract2.i.i = extractvalue { i64, i8 } %i.adi, 1
  %.not.i.i.i87 = icmp ne i64 %i.adh, %.fca.0.extract1.i.i
  %i.adj = icmp ne i8 %.fca.1.extract.i.i.i159.i, %.fca.1.extract2.i.i
  %i.adk = select i1 %.not.i.i.i87, i1 true, i1 %i.adj
  br i1 %i.adk, label %_ZNK12_GLOBAL__N_123AMDGPUPromoteAllocaImpl22analyzePromoteToVectorERNS_14AllocaAnalysisE.exit.sink.split, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.adl = getelementptr inbounds nuw i8, ptr %i.acz, i64 24
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !188
  %i.adn = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.ada, ptr noundef %i.adm) ; 2 uses
  %.fca.0.extract.i.i19.i.i = extractvalue { i64, i8 } %i.adn, 0
  %.fca.1.extract.i.i20.i.i = extractvalue { i64, i8 } %i.adn, 1
  %i.ado = add i64 %.fca.0.extract.i.i19.i.i, 7
  %i.adp = lshr i64 %i.ado, 3                     ; 2 uses
  %i.adq = trunc nuw i8 %.fca.1.extract.i.i.i159.i to i1
  %.not5.i.i.i = xor i1 %i.adq, true
  %i.adr = trunc nuw i8 %.fca.1.extract.i.i20.i.i to i1
  %or.cond.i.i.i = select i1 %.not5.i.i.i, i1 %i.adr, i1 false
  %.not.i23.i.i = icmp eq i64 %i.adp, 0
  %or.cond.i160.i = select i1 %or.cond.i.i.i, i1 true, i1 %.not.i23.i.i
  br i1 %or.cond.i160.i, label %_ZNK12_GLOBAL__N_123AMDGPUPromoteAllocaImpl22analyzePromoteToVectorERNS_14AllocaAnalysisE.exit.sink.split, label %_ZL21isSupportedAccessTypePN4llvm15FixedVectorTypeEPNS_4TypeERKNS_10DataLayoutE.exit.i

.split271.i:                                      ; preds = %.critedge.i86
  %i.ads = getelementptr inbounds nuw i8, ptr %i.acz, i64 24
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !188
  %i.adu = call noundef zeroext i1 @_ZN4llvm8CastInst26isBitOrNoopPointerCastableEPNS_4TypeES2_RKNS_10DataLayoutE(ptr noundef %i.adt, ptr noundef nonnull %.1.i264266269.i, ptr noundef nonnull align 8 dereferenceable(912) %i.ada) #20
  br i1 %i.adu, label %bb.dl, label %_ZNK12_GLOBAL__N_123AMDGPUPromoteAllocaImpl22analyzePromoteToVectorERNS_14AllocaAnalysisE.exit.sink.split

_ZL21isSupportedAccessTypePN4llvm15FixedVectorTypeEPNS_4TypeERKNS_10DataLayoutE.exit.i: ; preds = %bb.dk
  %i.adv = urem i64 %i.adg, %i.adp
  %i.adw = icmp eq i64 %i.adv, 0
  br i1 %i.adw, label %bb.dl, label %_ZNK12_GLOBAL__N_123AMDGPUPromoteAllocaImpl22analyzePromoteToVectorERNS_14AllocaAnalysisE.exit.sink.split

bb.dl:                                            ; preds = %_ZL21isSupportedAccessTypePN4llvm15FixedVectorTypeEPNS_4TypeERKNS_10DataLayoutE.exit.i, %.split271.i
  %i.adx = load i32, ptr %i.lq, align 8, !tbaa !94 ; 2 uses
  %i.ady = load i32, ptr %i.lr, align 4, !tbaa !95
  %.not.i161.i = icmp ult i32 %i.adx, %i.ady
  br i1 %.not.i161.i, label %bb.dn, label %bb.dm, !prof !106

bb.dm:                                            ; preds = %bb.dl
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.lo, ptr noundef nonnull %i.abg)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit176.thread298.i

bb.dn:                                            ; preds = %bb.dl
  %i.adz = zext i32 %i.adx to i64
  %i.aea = load ptr, ptr %i.lo, align 8, !tbaa !37
  %i.aeb = getelementptr inbounds nuw [8 x i8], ptr %i.aea, i64 %i.adz
  store ptr %i.abg, ptr %i.aeb, align 1
  %i.aec = load i32, ptr %i.lq, align 8, !tbaa !94
  %i.aed = add i32 %i.aec, 1
  store i32 %i.aed, ptr %i.lq, align 8, !tbaa !94
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit176.thread298.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit.i: ; preds = %_ZN4llvm26getLoadStorePointerOperandEPNS_5ValueE.exit.i, %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  %i.aee = load i8, ptr %i.abg, align 8, !tbaa !105
  %i.aef = icmp eq i8 %i.aee, 65
  %spec.select.i.i.i = select i1 %i.aef, ptr %i.abg, ptr null ; 2 uses
  store ptr %spec.select.i.i.i, ptr %i.j, align 8, !tbaa !191
  %.not119.i = icmp eq ptr %spec.select.i.i.i, null
  br i1 %.not119.i, label %bb.gh, label %bb.do

bb.do:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #20
  %i.aeg = load ptr, ptr %i.mn, align 8, !tbaa !107, !nonnull !34, !align !46 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.abg, i64 8
  %i.aei = load ptr, ptr %i.aeh, align 8, !tbaa !100, !noalias !659 ; 2 uses
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !192, !noalias !659, !nonnull !34, !align !46 ; 3 uses
  %i.aek = call noundef i32 @_ZNK4llvm10DataLayout22getIndexTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.aeg, ptr noundef nonnull %i.aei) #20, !noalias !659 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #20, !noalias !659
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %53, i8 0, i64 24, i1 false), !noalias !659
  store ptr %i.mp, ptr %i.mo, align 8, !tbaa !37, !noalias !659
  store i32 0, ptr %i.mq, align 8, !tbaa !94, !noalias !659
  store i32 4, ptr %i.mr, align 4, !tbaa !95, !noalias !659
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #20, !noalias !659
  store i32 %i.aek, ptr %i.ms, align 8, !tbaa !194, !noalias !659
  %i.ael = icmp ult i32 %i.aek, 65                ; 3 uses
  br i1 %i.ael, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  store i64 0, ptr %54, align 8, !tbaa !111, !noalias !659
  br label %_ZN4llvm5APIntC2Ejmbb.exit.i.i

bb.dq:                                            ; preds = %bb.do
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %54, i64 noundef 0, i1 noundef zeroext false) #20, !noalias !659
  br label %_ZN4llvm5APIntC2Ejmbb.exit.i.i

_ZN4llvm5APIntC2Ejmbb.exit.i.i:                   ; preds = %bb.dq, %bb.dp
  %i.aem = load i8, ptr %i.abg, align 8, !tbaa !105, !noalias !659
  %.not18.i.i = icmp eq i8 %i.aem, 65
  br i1 %.not18.i.i, label %.lr.ph.i.i81, label %._crit_edge.i.i

.lr.ph.i.i81:                                     ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i.i, %bb.dr
  %.04219.i.i = phi ptr [ %i.aeu, %bb.dr ], [ %i.abg, %_ZN4llvm5APIntC2Ejmbb.exit.i.i ] ; 3 uses
  %i.aen = call noundef zeroext i1 @_ZNK4llvm17GetElementPtrInst13collectOffsetERKNS_10DataLayoutEjRNS_14SmallMapVectorIPNS_5ValueENS_5APIntELj4EEERS7_(ptr noundef nonnull align 8 dereferenceable(88) %.04219.i.i, ptr noundef nonnull align 8 dereferenceable(912) %i.aeg, i32 noundef %i.aek, ptr noundef nonnull align 8 dereferenceable(136) %53, ptr noundef nonnull align 8 dereferenceable(12) %54) #20, !noalias !659
  br i1 %i.aen, label %bb.dr, label %.thread.i164.i

.thread.i164.i:                                   ; preds = %.lr.ph.i.i81
  store i8 0, ptr %i.mt, align 8, !tbaa !661, !alias.scope !659
  br label %bb.fn

bb.dr:                                            ; preds = %.lr.ph.i.i81
  %i.aeo = getelementptr inbounds nuw i8, ptr %.04219.i.i, i64 4
  %i.aep = load i32, ptr %i.aeo, align 4, !noalias !659
  %i.aeq = and i32 %i.aep, 268435455
  %i.aer = zext nneg i32 %i.aeq to i64
  %i.aes = sub nsw i64 0, %i.aer
  %i.aet = getelementptr inbounds [32 x i8], ptr %.04219.i.i, i64 %i.aes
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !172, !noalias !659 ; 2 uses
  %i.aev = load i8, ptr %i.aeu, align 8, !tbaa !105, !noalias !659
  %.not.i165.i = icmp eq i8 %i.aev, 65
  br i1 %.not.i165.i, label %.lr.ph.i.i81, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.dr, %_ZN4llvm5APIntC2Ejmbb.exit.i.i
  %i.aew = call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.aeg, ptr noundef %i.aau) #20, !noalias !659 ; 2 uses
  %.fca.0.extract.i.i = extractvalue { i64, i8 } %i.aew, 0 ; 7 uses
  %.fca.1.extract.i.i = extractvalue { i64, i8 } %i.aew, 1
  %i.aex = trunc nuw i8 %.fca.1.extract.i.i to i1
  br i1 %i.aex, label %bb.ds, label %_ZNK4llvm8TypeSizecvmEv.exit.i163.i

bb.ds:                                            ; preds = %._crit_edge.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.35) #21, !noalias !659
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i163.i:              ; preds = %._crit_edge.i.i
  %i.aey = load i32, ptr %i.mq, align 8, !tbaa !94, !noalias !659
  %i.aez = icmp ugt i32 %i.aey, 1
  br i1 %i.aez, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i163.i
  store i8 0, ptr %i.mt, align 8, !tbaa !661, !alias.scope !659
  br label %bb.fn

bb.du:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i163.i
  %i.afa = call noundef i64 @_ZNK4llvm5APInt4sremEl(ptr noundef nonnull align 8 dereferenceable(12) %54, i64 noundef %.fca.0.extract.i.i) #20, !noalias !659
  %.not50.i.i = icmp eq i64 %i.afa, 0
  br i1 %.not50.i.i, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  store i8 0, ptr %i.mt, align 8, !tbaa !661, !alias.scope !659
  br label %bb.fn

bb.dw:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #20, !noalias !659
  call void @_ZNK4llvm5APInt4sdivEl(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %55, ptr noundef nonnull align 8 dereferenceable(12) %54, i64 noundef %.fca.0.extract.i.i) #20, !noalias !659
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #20, !noalias !659
  store i64 6, ptr %56, align 8, !noalias !659
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.mu, i8 0, i64 48, i1 false), !noalias !659
  %i.afb = load i32, ptr %i.ms, align 8, !tbaa !194, !noalias !659 ; 2 uses
  %i.afc = icmp ult i32 %i.afb, 65
  br i1 %i.afc, label %.split.i.i, label %_ZNK4llvm5APInt6isZeroEv.exit.i.i

.split.i.i:                                       ; preds = %bb.dw
  %i.afd = load i64, ptr %54, align 8, !tbaa !111, !noalias !659
  %i.afe = icmp eq i64 %i.afd, 0
  br i1 %i.afe, label %bb.ea, label %bb.dx

_ZNK4llvm5APInt6isZeroEv.exit.i.i:                ; preds = %bb.dw
  %i.aff = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %54) #24, !noalias !659
  %i.afg = icmp eq i32 %i.aff, %i.afb
  br i1 %i.afg, label %bb.ea, label %bb.dx

bb.dx:                                            ; preds = %_ZNK4llvm5APInt6isZeroEv.exit.i.i, %.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #20, !noalias !659
  call void @_ZNK4llvm5APInt11sextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %57, ptr noundef nonnull align 8 dereferenceable(12) %55, i32 noundef %i.aek) #20, !noalias !659
  %i.afh = call noundef ptr @_ZN4llvm11ConstantInt3getERNS_11LLVMContextERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(8) %i.aej, ptr noundef nonnull align 8 dereferenceable(12) %57) #20, !noalias !659
  store ptr %i.afh, ptr %i.mv, align 8, !tbaa !202, !noalias !659
  %i.afi = load i32, ptr %i.mw, align 8, !tbaa !194, !noalias !659
  %i.afj = icmp ugt i32 %i.afi, 64
  br i1 %i.afj, label %bb.dy, label %_ZN4llvm5APIntD2Ev.exit.i.i

bb.dy:                                            ; preds = %bb.dx
  %i.afk = load ptr, ptr %57, align 8, !tbaa !111, !noalias !659 ; 2 uses
  %i.afl = icmp eq ptr %i.afk, null
  br i1 %i.afl, label %_ZN4llvm5APIntD2Ev.exit.i.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @_ZdaPv(ptr noundef nonnull %i.afk) #25, !noalias !659
  br label %_ZN4llvm5APIntD2Ev.exit.i.i

_ZN4llvm5APIntD2Ev.exit.i.i:                      ; preds = %bb.dz, %bb.dy, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #20, !noalias !659
  br label %bb.ea

bb.ea:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i, %_ZNK4llvm5APInt6isZeroEv.exit.i.i, %.split.i.i
  %i.afm = load i32, ptr %i.mq, align 8, !tbaa !94, !noalias !659
  %.not.i.i.i.i79 = icmp eq i32 %i.afm, 0
  br i1 %.not.i.i.i.i79, label %bb.eb, label %bb.ed

bb.eb:                                            ; preds = %bb.ea
  store i64 6, ptr %61, align 8, !alias.scope !659
  store ptr null, ptr %i.nd, align 8, !tbaa !203, !alias.scope !659
  %i.afn = load ptr, ptr %i.mx, align 8, !tbaa !204, !noalias !659 ; 2 uses
  store ptr %i.afn, ptr %i.ne, align 8, !tbaa !204, !alias.scope !659
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.afn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8optionalIN12_GLOBAL__N_116GEPToVectorIndexEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit.i.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %56, align 8, !noalias !659
  %i.afo = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.afp = inttoptr i64 %i.afo to ptr
  call void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(64) %61, ptr noundef %i.afp) #20
  br label %_ZNSt8optionalIN12_GLOBAL__N_116GEPToVectorIndexEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit.i.i

_ZNSt8optionalIN12_GLOBAL__N_116GEPToVectorIndexEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit.i.i: ; preds = %bb.ec, %bb.eb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.nf, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.mz, i64 32, i1 false)
  store i8 1, ptr %i.mt, align 8, !tbaa !661, !alias.scope !659
  br label %bb.fj

bb.ed:                                            ; preds = %bb.ea
  %i.afq = load ptr, ptr %i.mo, align 8, !tbaa !37, !noalias !659 ; 4 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 8 ; 4 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afq, i64 16
  %i.aft = load i32, ptr %i.afs, align 8, !tbaa !194, !noalias !659 ; 3 uses
  %i.afu = icmp ult i32 %i.aft, 65                ; 2 uses
  br i1 %i.afu, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %.neg.i.i.i.i.i = add nsw i32 %i.aft, -64
  %i.afv = load i64, ptr %i.afr, align 8, !tbaa !111, !noalias !659
  %i.afw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.afv, i1 false)
  %i.afx = trunc nuw nsw i64 %i.afw to i32
  %i.afy = add nsw i32 %.neg.i.i.i.i.i, %i.afx
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i

bb.ef:                                            ; preds = %bb.ed
  %i.afz = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.afr) #24, !noalias !659
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i:      ; preds = %bb.ef, %bb.ee
  %.0.i.i.i.i.i = phi i32 [ %i.afy, %bb.ee ], [ %i.afz, %bb.ef ]
  %i.aga = sub i32 %i.aft, %.0.i.i.i.i.i
  %i.agb = icmp ult i32 %i.aga, 65
  br i1 %i.agb, label %bb.eg, label %_ZNK4llvm5APInt12tryZExtValueEv.exit.i.i

bb.eg:                                            ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i
  %i.agc = load ptr, ptr %i.afr, align 8, !noalias !659
  %spec.select.i.i56.i.i = select i1 %i.afu, ptr %i.afr, ptr %i.agc
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i56.i.i, align 8, !tbaa !111, !noalias !659 ; 6 uses
  %i.agd = icmp eq i64 %.0.i.i.i.i, 0
  br i1 %i.agd, label %_ZNK4llvm5APInt12tryZExtValueEv.exit.i.i, label %bb.eh

_ZNK4llvm5APInt12tryZExtValueEv.exit.i.i:         ; preds = %bb.eg, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i
  store i8 0, ptr %i.mt, align 8, !tbaa !661, !alias.scope !659
  br label %bb.fj

bb.eh:                                            ; preds = %bb.eg
  %i.age = load ptr, ptr %i.afq, align 8, !tbaa !663, !noalias !659 ; 3 uses
  %i.agf = load ptr, ptr %i.mx, align 8, !tbaa !204, !noalias !659 ; 3 uses
  %i.agg = icmp eq ptr %i.agf, %i.age
  br i1 %i.agg, label %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %.not.i.i198.i = icmp eq ptr %i.agf, null
  br i1 %.not.i.i198.i, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %56) #20, !noalias !659
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  store ptr %i.age, ptr %i.mx, align 8, !tbaa !204, !noalias !659
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.age) ]
  call void @_ZN4llvm15ValueHandleBase12AddToUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %56) #20, !noalias !659
  %.pre.i = load ptr, ptr %i.mx, align 8, !tbaa !204, !noalias !659
  br label %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit.i

_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit.i:    ; preds = %bb.ek, %bb.eh
  %i.agh = phi ptr [ %i.agf, %bb.eh ], [ %.pre.i, %bb.ek ]
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !100, !noalias !659 ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 8
  %i.agl = load i32, ptr %i.agk, align 8, !noalias !659
  %i.agm = and i32 %i.agl, 255
  %i.agn = icmp ne i32 %i.agm, 12
  %.not5116.i.i = icmp eq ptr %i.agj, null
  %.not51.i.i = or i1 %.not5116.i.i, %i.agn
  br i1 %.not51.i.i, label %bb.el, label %bb.em

bb.el:                                            ; preds = %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit.i
  store i8 0, ptr %i.mt, align 8, !tbaa !661, !alias.scope !659
  br label %bb.fj

bb.em:                                            ; preds = %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit.i
  %.not52.i.i = icmp ult i64 %.0.i.i.i.i, %.fca.0.extract.i.i
  br i1 %.not52.i.i, label %bb.ev, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ago = urem i64 %.0.i.i.i.i, %.fca.0.extract.i.i
  %i.agp = udiv i64 %.0.i.i.i.i, %.fca.0.extract.i.i ; 3 uses
  %.not54.i.i = icmp eq i64 %i.ago, 0
  br i1 %.not54.i.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  store i8 0, ptr %i.mt, align 8, !tbaa !661, !alias.scope !659
  br label %bb.fj

bb.ep:                                            ; preds = %bb.en
  %.not55.i.i = icmp eq i64 %i.agp, 1
  br i1 %.not55.i.i, label %bb.fh, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #20, !noalias !659
  store i32 %i.aek, ptr %i.my, align 8, !tbaa !194, !noalias !659
  br i1 %i.ael, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  store i64 %i.agp, ptr %58, align 8, !tbaa !111, !noalias !659
  br label %_ZN4llvm5APIntC2Ejmbb.exit58.i.i

bb.es:                                            ; preds = %bb.eq
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %58, i64 noundef %i.agp, i1 noundef zeroext false) #20, !noalias !659
  br label %_ZN4llvm5APIntC2Ejmbb.exit58.i.i

_ZN4llvm5APIntC2Ejmbb.exit58.i.i:                 ; preds = %bb.es, %bb.er
  %i.agq = call noundef ptr @_ZN4llvm11ConstantInt3getERNS_11LLVMContextERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(8) %i.aej, ptr noundef nonnull align 8 dereferenceable(12) %58) #20, !noalias !659
  store ptr %i.agq, ptr %i.mz, align 8, !tbaa !664, !noalias !659
  %i.agr = load i32, ptr %i.my, align 8, !tbaa !194, !noalias !659
  %i.ags = icmp ugt i32 %i.agr, 64
  br i1 %i.ags, label %bb.et, label %_ZN4llvm5APIntD2Ev.exit59.i.i

bb.et:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit58.i.i
  %i.agt = load ptr, ptr %58, align 8, !tbaa !111, !noalias !659 ; 2 uses
  %i.agu = icmp eq ptr %i.agt, null
  br i1 %i.agu, label %_ZN4llvm5APIntD2Ev.exit59.i.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  call void @_ZdaPv(ptr noundef nonnull %i.agt) #25, !noalias !659
  br label %_ZN4llvm5APIntD2Ev.exit59.i.i

_ZN4llvm5APIntD2Ev.exit59.i.i:                    ; preds = %bb.eu, %bb.et, %_ZN4llvm5APIntC2Ejmbb.exit58.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #20, !noalias !659
  br label %bb.fh

bb.ev:                                            ; preds = %bb.em
  %i.agv = urem i64 %.fca.0.extract.i.i, %.0.i.i.i.i
  %i.agw = udiv i64 %.fca.0.extract.i.i, %.0.i.i.i.i ; 2 uses
  %.not53.i.i = icmp eq i64 %i.agv, 0
  br i1 %.not53.i.i, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  store i8 0, ptr %i.mt, align 8, !tbaa !661, !alias.scope !659
  br label %bb.fj

bb.ex:                                            ; preds = %bb.ev
  %i.agx = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.agw)
  %i.agy = icmp samesign ult i64 %i.agx, 2
  br i1 %i.agy, label %bb.ey, label %.critedge.i.i80

.critedge.i.i80:                                  ; preds = %bb.ex
  store i8 0, ptr %i.mt, align 8, !tbaa !661, !alias.scope !659
  br label %bb.fj

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #20, !noalias !659
  %i.agz = load ptr, ptr %i.afq, align 8, !tbaa !663, !noalias !659
  call void @_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_10DataLayoutEPNS_15AssumptionCacheEPKNS_11InstructionEPKNS_13DominatorTreeEbj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %59, ptr noundef %i.agz, ptr noundef nonnull align 8 dereferenceable(912) %i.aeg, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext true, i32 noundef 0) #20, !noalias !659
  %i.aha = load i32, ptr %i.na, align 8, !tbaa !194, !noalias !659
  %i.ahb = icmp ult i32 %i.aha, 65
  br i1 %i.ahb, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.ahc = load i64, ptr %59, align 8, !tbaa !111, !noalias !659
  %i.ahd = xor i64 %i.ahc, -1
  %i.ahe = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ahd, i1 false)
  %i.ahf = trunc nuw nsw i64 %i.ahe to i32
  br label %_ZNK4llvm9KnownBits21countMinTrailingZerosEv.exit.i.i

bb.fa:                                            ; preds = %bb.ey
  %i.ahg = call noundef i32 @_ZNK4llvm5APInt25countTrailingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(32) %59) #24, !noalias !659
  br label %_ZNK4llvm9KnownBits21countMinTrailingZerosEv.exit.i.i

_ZNK4llvm9KnownBits21countMinTrailingZerosEv.exit.i.i: ; preds = %bb.fa, %bb.ez
  %.0.i.i61.i.i = phi i32 [ %i.ahf, %bb.ez ], [ %i.ahg, %bb.fa ]
  %i.ahh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.agw, i1 false)
  %i.ahi = trunc nuw nsw i64 %i.ahh to i32
  %71 = sub nuw nsw i32 63, %i.ahi                ; 2 uses
  %.not17.i.i = icmp ult i32 %.0.i.i61.i.i, %71
  br i1 %.not17.i.i, label %bb.fg, label %bb.fb

bb.fb:                                            ; preds = %_ZNK4llvm9KnownBits21countMinTrailingZerosEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #20, !noalias !659
  %i.ahj = zext nneg i32 %71 to i64               ; 2 uses
  store i32 %i.aek, ptr %i.nb, align 8, !tbaa !194, !noalias !659
  br i1 %i.ael, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  store i64 %i.ahj, ptr %60, align 8, !tbaa !111, !noalias !659
  br label %_ZN4llvm5APIntC2Ejmbb.exit62.i.i

bb.fd:                                            ; preds = %bb.fb
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %60, i64 noundef %i.ahj, i1 noundef zeroext false) #20, !noalias !659
  br label %_ZN4llvm5APIntC2Ejmbb.exit62.i.i

_ZN4llvm5APIntC2Ejmbb.exit62.i.i:                 ; preds = %bb.fd, %bb.fc
  %i.ahk = call noundef ptr @_ZN4llvm11ConstantInt3getERNS_11LLVMContextERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(8) %i.aej, ptr noundef nonnull align 8 dereferenceable(12) %60) #20, !noalias !659
  store ptr %i.ahk, ptr %i.nc, align 8, !tbaa !665, !noalias !659
  %i.ahl = load i32, ptr %i.nb, align 8, !tbaa !194, !noalias !659
  %i.ahm = icmp ugt i32 %i.ahl, 64
  br i1 %i.ahm, label %bb.fe, label %.thread13.i.i

bb.fe:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit62.i.i
  %i.ahn = load ptr, ptr %60, align 8, !tbaa !111, !noalias !659 ; 2 uses
  %i.aho = icmp eq ptr %i.ahn, null
  br i1 %i.aho, label %.thread13.i.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void @_ZdaPv(ptr noundef nonnull %i.ahn) #25, !noalias !659
  br label %.thread13.i.i

.thread13.i.i:                                    ; preds = %bb.ff, %bb.fe, %_ZN4llvm5APIntC2Ejmbb.exit62.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #20, !noalias !659
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %59) #20, !noalias !659
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #20, !noalias !659
  br label %bb.fh

bb.fg:                                            ; preds = %_ZNK4llvm9KnownBits21countMinTrailingZerosEv.exit.i.i
  store i8 0, ptr %i.mt, align 8, !tbaa !661, !alias.scope !659
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %59) #20, !noalias !659
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #20, !noalias !659
  br label %bb.fj

bb.fh:                                            ; preds = %.thread13.i.i, %_ZN4llvm5APIntD2Ev.exit59.i.i, %bb.ep
  store i64 6, ptr %61, align 8, !alias.scope !659
  store ptr null, ptr %i.nd, align 8, !tbaa !203, !alias.scope !659
  %i.ahp = load ptr, ptr %i.mx, align 8, !tbaa !204, !noalias !659 ; 2 uses
  store ptr %i.ahp, ptr %i.ne, align 8, !tbaa !204, !alias.scope !659
  %.not.i.i.i.i.i.i.i.i.i64.i.i = icmp eq ptr %i.ahp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i64.i.i, label %_ZNSt8optionalIN12_GLOBAL__N_116GEPToVectorIndexEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit66.i.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i65.i.i = load i64, ptr %56, align 8, !noalias !659
  %i.ahq = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i65.i.i, -8
  %i.ahr = inttoptr i64 %i.ahq to ptr
  call void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(64) %61, ptr noundef %i.ahr) #20
  br label %_ZNSt8optionalIN12_GLOBAL__N_116GEPToVectorIndexEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit66.i.i

_ZNSt8optionalIN12_GLOBAL__N_116GEPToVectorIndexEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit66.i.i: ; preds = %bb.fi, %bb.fh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.nf, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.mz, i64 32, i1 false)
  store i8 1, ptr %i.mt, align 8, !tbaa !661, !alias.scope !659
  br label %bb.fj

bb.fj:                                            ; preds = %_ZNSt8optionalIN12_GLOBAL__N_116GEPToVectorIndexEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit66.i.i, %bb.fg, %.critedge.i.i80, %bb.ew, %bb.eo, %bb.el, %_ZNK4llvm5APInt12tryZExtValueEv.exit.i.i, %_ZNSt8optionalIN12_GLOBAL__N_116GEPToVectorIndexEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit.i.i
  %i.ahs = load ptr, ptr %i.mx, align 8, !tbaa !204, !noalias !659
  %.not.i.i67.i.i = icmp eq ptr %i.ahs, null
  br i1 %.not.i.i67.i.i, label %_ZN12_GLOBAL__N_116GEPToVectorIndexD2Ev.exit.i.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(56) %56) #20
  br label %_ZN12_GLOBAL__N_116GEPToVectorIndexD2Ev.exit.i.i

_ZN12_GLOBAL__N_116GEPToVectorIndexD2Ev.exit.i.i: ; preds = %bb.fk, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #20, !noalias !659
  %i.aht = load i32, ptr %i.ng, align 8, !tbaa !194, !noalias !659
  %i.ahu = icmp ugt i32 %i.aht, 64
  br i1 %i.ahu, label %bb.fl, label %_ZN4llvm5APIntD2Ev.exit68.i.i

bb.fl:                                            ; preds = %_ZN12_GLOBAL__N_116GEPToVectorIndexD2Ev.exit.i.i
  %i.ahv = load ptr, ptr %55, align 8, !tbaa !111, !noalias !659 ; 2 uses
  %i.ahw = icmp eq ptr %i.ahv, null
  br i1 %i.ahw, label %_ZN4llvm5APIntD2Ev.exit68.i.i, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  call void @_ZdaPv(ptr noundef nonnull %i.ahv) #25
  br label %_ZN4llvm5APIntD2Ev.exit68.i.i

_ZN4llvm5APIntD2Ev.exit68.i.i:                    ; preds = %bb.fm, %bb.fl, %_ZN12_GLOBAL__N_116GEPToVectorIndexD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #20, !noalias !659
  br label %bb.fn

bb.fn:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit68.i.i, %bb.dv, %bb.dt, %.thread.i164.i
  %i.ahx = load i32, ptr %i.ms, align 8, !tbaa !194, !noalias !659
  %i.ahy = icmp ugt i32 %i.ahx, 64
  br i1 %i.ahy, label %bb.fo, label %_ZN4llvm5APIntD2Ev.exit69.i.i

bb.fo:                                            ; preds = %bb.fn
  %i.ahz = load ptr, ptr %54, align 8, !tbaa !111, !noalias !659 ; 2 uses
  %i.aia = icmp eq ptr %i.ahz, null
  br i1 %i.aia, label %_ZN4llvm5APIntD2Ev.exit69.i.i, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  call void @_ZdaPv(ptr noundef nonnull %i.ahz) #25
  br label %_ZN4llvm5APIntD2Ev.exit69.i.i

_ZN4llvm5APIntD2Ev.exit69.i.i:                    ; preds = %bb.fp, %bb.fo, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #20, !noalias !659
  %i.aib = load ptr, ptr %i.mo, align 8, !tbaa !37, !noalias !659 ; 3 uses
  %i.aic = load i32, ptr %i.mq, align 8, !tbaa !94, !noalias !659 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq i32 %i.aic, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueENS_5APIntEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %_ZN4llvm5APIntD2Ev.exit69.i.i
  %i.aid = zext i32 %i.aic to i64
  %.idx.i.i.i.i76 = mul nuw nsw i64 %i.aid, 24
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aib, i64 %.idx.i.i.i.i76
  br label %.lr.ph.i.i.i.i.i77

.lr.ph.i.i.i.i.i77:                               ; preds = %_ZNSt4pairIPN4llvm5ValueENS0_5APIntEED2Ev.exit.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.aif, %_ZNSt4pairIPN4llvm5ValueENS0_5APIntEED2Ev.exit.i.i.i.i.i ], [ %i.aie, %.lr.ph.i.preheader.i.i.i.i ] ; 3 uses
  %i.aif = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -24 ; 2 uses
  %i.aig = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -8
  %i.aih = load i32, ptr %i.aig, align 8, !tbaa !194
  %i.aii = icmp ugt i32 %i.aih, 64
  br i1 %i.aii, label %bb.fq, label %_ZNSt4pairIPN4llvm5ValueENS0_5APIntEED2Ev.exit.i.i.i.i.i

bb.fq:                                            ; preds = %.lr.ph.i.i.i.i.i77
  %i.aij = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -16
  %i.aik = load ptr, ptr %i.aij, align 8, !tbaa !111 ; 2 uses
  %i.ail = icmp eq ptr %i.aik, null
  br i1 %i.ail, label %_ZNSt4pairIPN4llvm5ValueENS0_5APIntEED2Ev.exit.i.i.i.i.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  call void @_ZdaPv(ptr noundef nonnull %i.aik) #25
  br label %_ZNSt4pairIPN4llvm5ValueENS0_5APIntEED2Ev.exit.i.i.i.i.i

_ZNSt4pairIPN4llvm5ValueENS0_5APIntEED2Ev.exit.i.i.i.i.i: ; preds = %bb.fr, %bb.fq, %.lr.ph.i.i.i.i.i77
  %.not.i.i.i.i.i78 = icmp eq ptr %i.aib, %i.aif
  br i1 %.not.i.i.i.i.i78, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueENS_5APIntEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i77, !llvm.loop !375

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueENS_5APIntEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i.i: ; preds = %_ZNSt4pairIPN4llvm5ValueENS0_5APIntEED2Ev.exit.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.mo, align 8, !tbaa !37, !noalias !659
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueENS_5APIntEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueENS_5APIntEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueENS_5APIntEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i.i, %_ZN4llvm5APIntD2Ev.exit69.i.i
  %i.aim = phi ptr [ %.pre.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueENS_5APIntEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i.i ], [ %i.aib, %_ZN4llvm5APIntD2Ev.exit69.i.i ] ; 2 uses
  %i.ain = icmp eq ptr %i.aim, %i.mp
  br i1 %i.ain, label %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueENS_5APIntEELj4EED2Ev.exit.i.i.i, label %bb.fs

bb.fs:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueENS_5APIntEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i.i
  call void @free(ptr noundef %i.aim) #20
  br label %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueENS_5APIntEELj4EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorISt4pairIPNS_5ValueENS_5APIntEELj4EED2Ev.exit.i.i.i: ; preds = %bb.fs, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueENS_5APIntEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i.i
  %i.aio = load i32, ptr %i.nh, align 4, !tbaa !668, !noalias !659 ; 2 uses
  %i.aip = icmp eq i32 %i.aio, 0
  br i1 %i.aip, label %_ZL23computeGEPToVectorIndexPN4llvm17GetElementPtrInstEPNS_10AllocaInstEPNS_4TypeERKNS_10DataLayoutE.exit.i, label %bb.ft

bb.ft:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueENS_5APIntEELj4EED2Ev.exit.i.i.i
  %i.aiq = load ptr, ptr %53, align 8, !tbaa !669, !noalias !659
  %i.air = zext i32 %i.aio to i64                 ; 2 uses
  %i.ais = shl nuw nsw i64 %i.air, 4
  %i.ait = add nuw nsw i64 %i.air, 31
  %i.aiu = lshr i64 %i.ait, 3
  %i.aiv = and i64 %i.aiu, 1073741820
  %i.aiw = add nuw nsw i64 %i.aiv, %i.ais
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aiq, i64 noundef %i.aiw, i64 noundef 8) #20
  br label %_ZL23computeGEPToVectorIndexPN4llvm17GetElementPtrInstEPNS_10AllocaInstEPNS_4TypeERKNS_10DataLayoutE.exit.i

_ZL23computeGEPToVectorIndexPN4llvm17GetElementPtrInstEPNS_10AllocaInstEPNS_4TypeERKNS_10DataLayoutE.exit.i: ; preds = %bb.ft, %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueENS_5APIntEELj4EED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #20, !noalias !659
  %.val144.i = load i8, ptr %i.mt, align 8, !tbaa !661, !range !33, !noundef !34
  %i.aix = trunc nuw i8 %.val144.i to i1
  br i1 %i.aix, label %_ZNRSt8optionalIN12_GLOBAL__N_116GEPToVectorIndexEE5valueEv.exit.i, label %bb.fu

bb.fu:                                            ; preds = %_ZL23computeGEPToVectorIndexPN4llvm17GetElementPtrInstEPNS_10AllocaInstEPNS_4TypeERKNS_10DataLayoutE.exit.i
  store ptr null, ptr %i.ln, align 8, !tbaa !189
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit169.i

_ZNRSt8optionalIN12_GLOBAL__N_116GEPToVectorIndexEE5valueEv.exit.i: ; preds = %_ZL23computeGEPToVectorIndexPN4llvm17GetElementPtrInstEPNS_10AllocaInstEPNS_4TypeERKNS_10DataLayoutE.exit.i
  %i.aiy = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17GetElementPtrInstEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %i.lw, ptr noundef nonnull align 8 dereferenceable(8) %i.j), !noalias !670 ; 2 uses
  %.fca.0.extract.i.i.i.i.i = extractvalue { ptr, i8 } %i.aiy, 0
  %.fca.1.extract.i.i.i.i.i = extractvalue { ptr, i8 } %i.aiy, 1
  %i.aiz = trunc nuw i8 %.fca.1.extract.i.i.i.i.i to i1
  %i.aja = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i.i, i64 8 ; 2 uses
  br i1 %i.aiz, label %bb.fv, label %bb.fy

bb.fv:                                            ; preds = %_ZNRSt8optionalIN12_GLOBAL__N_116GEPToVectorIndexEE5valueEv.exit.i
  %i.ajb = load i32, ptr %i.lz, align 8, !tbaa !94 ; 3 uses
  store i32 %i.ajb, ptr %i.aja, align 8, !tbaa !672
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #20
  store ptr %i.j, ptr %52, align 8, !tbaa !206, !alias.scope !673
  %i.ajc = load i32, ptr %i.ni, align 4, !tbaa !95
  %.not.i.i.i166.i = icmp ult i32 %i.ajb, %i.ajc
  br i1 %.not.i.i.i166.i, label %bb.fx, label %bb.fw, !prof !106

bb.fw:                                            ; preds = %bb.fv
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_17GetElementPtrInstEN12_GLOBAL__N_116GEPToVectorIndexEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESC_IJEEEEERS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.lx, ptr noundef nonnull readonly align 8 dereferenceable(8) %52)
end_hunk_0

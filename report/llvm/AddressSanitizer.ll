Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AddressSanitizer?download=true
inline.NumInlined: 7429
inline.NumDeleted: 3672
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN12_GLOBAL__N_121FunctionStackPoisoner13runOnFunctionEv:bb.a
  call void @_ZN4llvm11Instruction10moveBeforeENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(72) %i.amd, ptr nonnull %i.ajh, i64 0) #25
  %i.ame = getelementptr inbounds nuw i8, ptr %.0252445.i, i64 8 ; 2 uses
  %.not271.i = icmp eq ptr %i.ame, %i.alv
  br i1 %.not271.i, label %._crit_edge447.i, label %.lr.ph446.i

bb.ed:                                            ; preds = %._crit_edge447.i
  call void @_ZN4llvm11Instruction10moveBeforeENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(72) %i.amc, ptr nonnull %i.ajh, i64 0) #25
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %._crit_edge447.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  %i.amf = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  store ptr %i.amf, ptr %22, align 8, !tbaa !37
  %i.amg = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 6 uses
  store i32 0, ptr %i.amg, align 8, !tbaa !297
  %i.amh = getelementptr inbounds nuw i8, ptr %22, i64 12 ; 2 uses
  store i32 16, ptr %i.amh, align 4, !tbaa !296
  %i.ami = load i32, ptr %i.fi, align 8, !tbaa !297 ; 3 uses
  %i.amj = icmp ugt i32 %i.ami, 16
  br i1 %i.amj, label %bb.ef, label %_ZN4llvm15SmallVectorImplINS_28ASanStackVariableDescriptionEE7reserveEm.exit.i

bb.ef:                                            ; preds = %bb.ee
  %i.amk = zext i32 %i.ami to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull %i.amf, i64 noundef %i.amk, i64 noundef 56) #25
  %.pre505.i = load i32, ptr %i.fi, align 8, !tbaa !297
  br label %_ZN4llvm15SmallVectorImplINS_28ASanStackVariableDescriptionEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplINS_28ASanStackVariableDescriptionEE7reserveEm.exit.i: ; preds = %bb.ef, %bb.ee
  %i.aml = phi i32 [ %i.ami, %bb.ee ], [ %.pre505.i, %bb.ef ] ; 2 uses
  %i.amm = load ptr, ptr %i.fh, align 8, !tbaa !37 ; 2 uses
  %i.amn = zext i32 %i.aml to i64
  %.idx492.i = shl nuw nsw i64 %i.amn, 3
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amm, i64 %.idx492.i
  %.not273448.i = icmp eq i32 %i.aml, 0
  br i1 %.not273448.i, label %._crit_edge451.i, label %.lr.ph450.i

.lr.ph450.i:                                      ; preds = %_ZN4llvm15SmallVectorImplINS_28ASanStackVariableDescriptionEE7reserveEm.exit.i
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.amp = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.amq = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.amr = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.ams = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.amt = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.amu = getelementptr inbounds nuw i8, ptr %23, i64 48
  br label %bb.eg

._crit_edge451.i:                                 ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_28ASanStackVariableDescriptionELb1EE9push_backERKS1_.exit.i, %_ZN4llvm15SmallVectorImplINS_28ASanStackVariableDescriptionEE7reserveEm.exit.i
  %i.amv = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.amw = load i32, ptr %i.amv, align 8, !tbaa !1029
  %i.amx = zext nneg i32 %i.amw to i64
  %i.amy = shl nuw i64 1, %i.amx                  ; 2 uses
  %i.amz = load ptr, ptr %i.fb, align 8, !tbaa !530, !nonnull !34, !align !258
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amz, i64 88
  %i.anb = load i32, ptr %i.ana, align 8, !tbaa !334
  %i.anc = sext i32 %i.anb to i64
  %i.and = lshr i64 %i.anc, 1
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.and, i64 %i.amy)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  call void @_ZN4llvm27ComputeASanStackFrameLayoutERNS_15SmallVectorImplINS_28ASanStackVariableDescriptionEEEmm(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::ASanStackFrameLayout") align 8 %24, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 noundef %i.amy, i64 noundef %.sroa.speculated.i) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  %i.ane = load ptr, ptr %22, align 8, !tbaa !37  ; 2 uses
  %i.anf = load i32, ptr %i.amg, align 8, !tbaa !297 ; 2 uses
  %i.ang = zext i32 %i.anf to i64
  %.idx493.i = mul nuw nsw i64 %i.ang, 56
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ane, i64 %.idx493.i
  %.not274452.i = icmp eq i32 %i.anf, 0
  br i1 %.not274452.i, label %._crit_edge456.i, label %.lr.ph455.i

bb.eg:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_28ASanStackVariableDescriptionELb1EE9push_backERKS1_.exit.i, %.lr.ph450.i
  %.0254449.i = phi ptr [ %i.amm, %.lr.ph450.i ], [ %i.aqh, %_ZN4llvm23SmallVectorTemplateBaseINS_28ASanStackVariableDescriptionELb1EE9push_backERKS1_.exit.i ] ; 2 uses
  %i.ani = load ptr, ptr %.0254449.i, align 8, !tbaa !367 ; 7 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 56
  %i.ank = load i32, ptr %i.anj, align 8, !tbaa !378
  %.not.i.i.i.i46 = icmp eq i32 %i.ank, 0
  br i1 %.not.i.i.i.i46, label %_ZNK4llvm11Instruction11hasMetadataEj.exit.thread.i.i, label %_ZNK4llvm11Instruction11hasMetadataEj.exit.i.i

_ZNK4llvm11Instruction11hasMetadataEj.exit.i.i:   ; preds = %bb.eg
  %i.anl = call noundef ptr @_ZNK4llvm5Value15getMetadataImplEj(ptr noundef nonnull align 8 dereferenceable(72) %i.ani, i32 noundef 30) #28 ; 4 uses
  %.not79.i.i47 = icmp eq ptr %i.anl, null
  br i1 %.not79.i.i47, label %_ZNK4llvm11Instruction11hasMetadataEj.exit.thread.i.i, label %_ZNK4llvm11Instruction11getMetadataEj.exit.i.i

_ZNK4llvm11Instruction11getMetadataEj.exit.i.i:   ; preds = %_ZNK4llvm11Instruction11hasMetadataEj.exit.i.i
  %i.anm = getelementptr inbounds i8, ptr %i.anl, i64 -16 ; 2 uses
  %i.ann = load i64, ptr %i.anm, align 8          ; 3 uses
  %i.ano = and i64 %i.ann, 2
  %.not.i.i34.i.i = icmp eq i64 %i.ano, 0
  br i1 %.not.i.i34.i.i, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %_ZNK4llvm11Instruction11getMetadataEj.exit.i.i
  %i.anp = getelementptr inbounds i8, ptr %i.anl, i64 -32
  %i.anq = load ptr, ptr %i.anp, align 8, !tbaa !37
  %i.anr = getelementptr inbounds i8, ptr %i.anl, i64 -24
  %i.ans = load i32, ptr %i.anr, align 8, !tbaa !297
  %i.ant = zext i32 %i.ans to i64
  br label %_ZNK4llvm6MDNode8operandsEv.exit.i.i

bb.ei:                                            ; preds = %_ZNK4llvm11Instruction11getMetadataEj.exit.i.i
  %i.anu = lshr i64 %i.ann, 2
  %i.anv = and i64 %i.anu, 15
  %i.anw = sub nsw i64 0, %i.anv
  %i.anx = getelementptr inbounds [8 x i8], ptr %i.anm, i64 %i.anw
  %i.any = lshr i64 %i.ann, 6
  %i.anz = and i64 %i.any, 15
  br label %_ZNK4llvm6MDNode8operandsEv.exit.i.i

_ZNK4llvm6MDNode8operandsEv.exit.i.i:             ; preds = %bb.ei, %bb.eh
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.anz, %bb.ei ], [ %i.ant, %bb.eh ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.anx, %bb.ei ], [ %i.anq, %bb.eh ] ; 2 uses
  %.idx.i.i48 = shl nuw nsw i64 %.sroa.3.0.i.i.i.i, 3
  %i.aoa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %.idx.i.i48
  %.not83.i.i = icmp eq i64 %.sroa.3.0.i.i.i.i, 0
  br i1 %.not83.i.i, label %_ZNK4llvm11Instruction11hasMetadataEj.exit.thread.i.i, label %.lr.ph.i301.i

.lr.ph.i301.i:                                    ; preds = %_ZNK4llvm6MDNode8operandsEv.exit.i.i, %.loopexit.i.i
  %.03284.i.i = phi ptr [ %110, %.loopexit.i.i ], [ %.sroa.0.0.i.i.i.i, %_ZNK4llvm6MDNode8operandsEv.exit.i.i ] ; 2 uses
  %i.aob = load ptr, ptr %.03284.i.i, align 8, !tbaa !1031 ; 4 uses
  %i.aoc = load i8, ptr %i.aob, align 4, !tbaa !1032
  %i.aod = icmp eq i8 %i.aoc, 5
  br i1 %i.aod, label %.preheader.i.i, label %.loopexit.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i301.i
  %i.aoe = getelementptr inbounds i8, ptr %i.aob, i64 -16 ; 4 uses
  %i.aof = getelementptr inbounds i8, ptr %i.aob, i64 -24
  %i.aog = getelementptr inbounds i8, ptr %i.aob, i64 -32 ; 2 uses
  br label %bb.ej

bb.ej:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread52.i.i, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.thread52.i.i ] ; 5 uses
  %i.aoh = load i64, ptr %i.aoe, align 8          ; 3 uses
  %i.aoi = and i64 %i.aoh, 2
  %.not.i.i35.i.i = icmp eq i64 %i.aoi, 0
  br i1 %.not.i.i35.i.i, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i

_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i:      ; preds = %bb.ej
  %i.aoj = lshr i64 %i.aoh, 6
  %i.aok = and i64 %i.aoj, 15
  %.not33.i.i = icmp samesign ult i64 %indvars.iv.i.i, %i.aok
  br i1 %.not33.i.i, label %bb.ek, label %.loopexit.i.i

_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i: ; preds = %bb.ej
  %i.aol = load i32, ptr %i.aof, align 8, !tbaa !297
  %i.aom = zext i32 %i.aol to i64
  %.not3348.i.i = icmp samesign ult i64 %indvars.iv.i.i, %i.aom
  br i1 %.not3348.i.i, label %.thread.i.i, label %.loopexit.i.i

.thread.i.i:                                      ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i
  %i.aon = load ptr, ptr %i.aog, align 8, !tbaa !37
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i

bb.ek:                                            ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i
  %i.aoo = lshr i64 %i.aoh, 2
  %i.aop = and i64 %i.aoo, 15
  %i.aoq = sub nsw i64 0, %i.aop
  %i.aor = getelementptr inbounds [8 x i8], ptr %i.aoe, i64 %i.aoq
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i

_ZNK4llvm6MDNode10getOperandEj.exit.i.i:          ; preds = %bb.ek, %.thread.i.i
  %.sroa.0.0.i.i38.i.i = phi ptr [ %i.aor, %bb.ek ], [ %i.aon, %.thread.i.i ]
  %i.aos = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i38.i.i, i64 %indvars.iv.i.i
  %i.aot = load ptr, ptr %i.aos, align 8, !tbaa !1031
  %i.aou = call { ptr, i64 } @_ZNK4llvm8MDString9getStringEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aot) #25 ; 2 uses
  %i.aov = extractvalue { ptr, i64 } %i.aou, 1
  %.not.i39.i.i = icmp eq i64 %i.aov, 19
  br i1 %.not.i39.i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread52.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i:            ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit.i.i
  %i.aow = extractvalue { ptr, i64 } %i.aou, 0    ; 2 uses
  %i.aox = load i128, ptr %i.aow, align 1
  %i.aoy = xor i128 %i.aox, 134856532224759195408283433102719347809
  %i.aoz = getelementptr i8, ptr %i.aow, i64 3
  %i.apa = load i128, ptr %i.aoz, align 1
  %i.apb = xor i128 %i.apa, 133449541793974120069081251269773976431
  %i.apc = or i128 %i.aoy, %i.apb
  %i.apd = icmp ne i128 %i.apc, 0
  %i.ape = zext i1 %i.apd to i32
  %i.apf = icmp eq i32 %i.ape, 0
  br i1 %i.apf, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread52.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i
  %i.apg = load i64, ptr %i.aoe, align 8          ; 2 uses
  %i.aph = and i64 %i.apg, 2
  %.not.i.i41.i.i = icmp eq i64 %i.aph, 0
  br i1 %.not.i.i41.i.i, label %bb.em, label %bb.el

bb.el:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i
  %i.api = load ptr, ptr %i.aog, align 8, !tbaa !37
  br label %bb.en

bb.em:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i
  %i.apj = lshr i64 %i.apg, 2
  %i.apk = and i64 %i.apj, 15
  %i.apl = sub nsw i64 0, %i.apk
  %i.apm = getelementptr inbounds [8 x i8], ptr %i.aoe, i64 %i.apl
  br label %bb.en

_ZN4llvmeqENS_9StringRefES0_.exit.thread52.i.i:   ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  br label %bb.ej, !llvm.loop !955

.loopexit.i.i:                                    ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i, %.lr.ph.i301.i
  %110 = getelementptr inbounds nuw i8, ptr %.03284.i.i, i64 8 ; 2 uses
  %.not.i302.i = icmp eq ptr %110, %i.aoa
  br i1 %.not.i302.i, label %_ZNK4llvm11Instruction11hasMetadataEj.exit.thread.i.i, label %.lr.ph.i301.i

bb.en:                                            ; preds = %bb.em, %bb.el
  %.sroa.0.0.i.i42.i.i = phi ptr [ %i.apm, %bb.em ], [ %i.api, %bb.el ]
  %i.apn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i42.i.i, i64 %indvars.iv.i.i
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apn, i64 8
  %i.app = load ptr, ptr %i.apo, align 8, !tbaa !1031
  %i.apq = call { ptr, i64 } @_ZNK4llvm8MDString9getStringEv(ptr noundef nonnull align 8 dereferenceable(16) %i.app) #25
  br label %_ZL13getAllocaNamePN4llvm10AllocaInstE.exit.i

_ZNK4llvm11Instruction11hasMetadataEj.exit.thread.i.i: ; preds = %.loopexit.i.i, %_ZNK4llvm6MDNode8operandsEv.exit.i.i, %_ZNK4llvm11Instruction11hasMetadataEj.exit.i.i, %bb.eg
  %i.apr = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ani) #25
  br label %_ZL13getAllocaNamePN4llvm10AllocaInstE.exit.i

_ZL13getAllocaNamePN4llvm10AllocaInstE.exit.i:    ; preds = %_ZNK4llvm11Instruction11hasMetadataEj.exit.thread.i.i, %bb.en
  %.pn.i.i = phi { ptr, i64 } [ %i.apr, %_ZNK4llvm11Instruction11hasMetadataEj.exit.thread.i.i ], [ %i.apq, %bb.en ]
  %i.aps = extractvalue { ptr, i64 } %.pn.i.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  store ptr %i.aps, ptr %23, align 8, !tbaa !1034
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  %i.apt = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm11Instruction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ani) #25
  call void @_ZNK4llvm10AllocaInst17getAllocationSizeERKNS_10DataLayoutE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.502") align 8 %19, ptr noundef nonnull align 8 dereferenceable(80) %i.ani, ptr noundef nonnull align 8 dereferenceable(912) %i.apt) #25
  %.sroa.0.0.copyload.i.i = load i64, ptr %19, align 8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  %i.apu = trunc nuw i8 %.sroa.2.0.copyload.i.i to i1
  br i1 %i.apu, label %bb.eo, label %_ZNK4llvm8TypeSizecvmEv.exit.i49

bb.eo:                                            ; preds = %_ZL13getAllocaNamePN4llvm10AllocaInstE.exit.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.192) #27
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i49:                 ; preds = %_ZL13getAllocaNamePN4llvm10AllocaInstE.exit.i
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.amp, align 8, !tbaa !1035
  store i64 0, ptr %i.amq, align 8, !tbaa !1036
  %i.apv = getelementptr inbounds nuw i8, ptr %i.ani, i64 2
  %i.apw = load i16, ptr %i.apv, align 2, !tbaa !107
  %i.apx = and i16 %i.apw, 63
  %i.apy = zext nneg i16 %i.apx to i64
  %i.apz = shl nuw i64 1, %i.apy
  store i64 %i.apz, ptr %i.amr, align 8, !tbaa !1037
  store ptr %i.ani, ptr %i.ams, align 8, !tbaa !1038
  store i64 0, ptr %i.amt, align 8, !tbaa !1039
  store i32 0, ptr %i.amu, align 8, !tbaa !1040
  %i.aqa = load i32, ptr %i.amg, align 8, !tbaa !297 ; 2 uses
  %i.aqb = load i32, ptr %i.amh, align 4, !tbaa !296
  %.not.i305.i = icmp ult i32 %i.aqa, %i.aqb
  br i1 %.not.i305.i, label %bb.eq, label %bb.ep, !prof !344

bb.ep:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i49
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_28ASanStackVariableDescriptionELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(56) %23)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_28ASanStackVariableDescriptionELb1EE9push_backERKS1_.exit.i

bb.eq:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i49
  %i.aqc = zext i32 %i.aqa to i64
  %i.aqd = load ptr, ptr %22, align 8, !tbaa !37
  %i.aqe = getelementptr inbounds nuw [56 x i8], ptr %i.aqd, i64 %i.aqc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.aqe, ptr noundef nonnull align 8 dereferenceable(56) %23, i64 56, i1 false)
  %i.aqf = load i32, ptr %i.amg, align 8, !tbaa !297
  %i.aqg = add i32 %i.aqf, 1
  store i32 %i.aqg, ptr %i.amg, align 8, !tbaa !297
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_28ASanStackVariableDescriptionELb1EE9push_backERKS1_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_28ASanStackVariableDescriptionELb1EE9push_backERKS1_.exit.i: ; preds = %bb.eq, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  %i.aqh = getelementptr inbounds nuw i8, ptr %.0254449.i, i64 8 ; 2 uses
  %.not273.i = icmp eq ptr %i.aqh, %i.amo
  br i1 %.not273.i, label %._crit_edge451.i, label %bb.eg

._crit_edge456.i:                                 ; preds = %.lr.ph455.i, %._crit_edge451.i
  %i.aqi = getelementptr inbounds nuw i8, ptr %0, i64 5608 ; 2 uses
  %.val289.i = load ptr, ptr %i.aqi, align 8, !tbaa !37 ; 2 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %0, i64 5616 ; 3 uses
  %.val293.i = load i32, ptr %i.aqj, align 8, !tbaa !297 ; 2 uses
  %i.aqk = zext i32 %.val293.i to i64
  %.idx494.i = shl nuw nsw i64 %i.aqk, 5
  %i.aql = getelementptr inbounds nuw i8, ptr %.val289.i, i64 %.idx494.i
  %.not275457.i = icmp eq i32 %.val293.i, 0
  br i1 %.not275457.i, label %._crit_edge461.i, label %.lr.ph460.i

.lr.ph460.i:                                      ; preds = %._crit_edge456.i
  %.not285.i = icmp eq ptr %.sroa.0425.0.i, null
  %i.aqm = getelementptr inbounds i8, ptr %.sroa.0425.0.i, i64 -16 ; 2 uses
  %i.aqn = getelementptr inbounds i8, ptr %.sroa.0425.0.i, i64 -32
  br label %bb.er

.lr.ph455.i:                                      ; preds = %._crit_edge451.i, %.lr.ph455.i
  %.0257453.i = phi ptr [ %i.aqr, %.lr.ph455.i ], [ %i.ane, %._crit_edge451.i ] ; 3 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %.0257453.i, i64 32
  %i.aqp = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10AllocaInstEPNS_28ASanStackVariableDescriptionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.aqo)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.aqp, 0
  %i.aqq = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  store ptr %.0257453.i, ptr %i.aqq, align 8, !tbaa !562
  %i.aqr = getelementptr inbounds nuw i8, ptr %.0257453.i, i64 56 ; 2 uses
  %.not274.i = icmp eq ptr %i.aqr, %i.anh
  br i1 %.not274.i, label %._crit_edge456.i, label %.lr.ph455.i

._crit_edge461.i:                                 ; preds = %bb.fg, %._crit_edge456.i
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  call void @_ZN4llvm32ComputeASanStackFrameDescriptionERKNS_15SmallVectorImplINS_28ASanStackVariableDescriptionEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallString") align 8 %26, ptr noundef nonnull align 8 dereferenceable(16) %22) #25
  %i.aqs = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.aqt = load i64, ptr %i.aqs, align 8, !tbaa !564 ; 8 uses
  %i.aqu = load ptr, ptr %i.fb, align 8, !tbaa !530, !nonnull !34, !align !258 ; 2 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 96
  %i.aqw = load i32, ptr %i.aqv, align 8, !tbaa !328
  %.not276.i = icmp eq i32 %i.aqw, 0
  br i1 %.not276.i, label %bb.fj, label %bb.fh

bb.er:                                            ; preds = %bb.fg, %.lr.ph460.i
  %.0258458.i = phi ptr [ %.val289.i, %.lr.ph460.i ], [ %i.atg, %bb.fg ] ; 3 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %.0258458.i, i64 8
  %i.aqy = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10AllocaInstEPNS_28ASanStackVariableDescriptionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.aqx)
  %.fca.0.extract.i306.i = extractvalue { ptr, i8 } %i.aqy, 0
  %i.aqz = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i306.i, i64 8
  %i.ara = load ptr, ptr %i.aqz, align 8, !tbaa !562 ; 3 uses
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ara, i64 8
  %i.arc = load i64, ptr %i.arb, align 8, !tbaa !1035
  %i.ard = getelementptr inbounds nuw i8, ptr %i.ara, i64 16
  store i64 %i.arc, ptr %i.ard, align 8, !tbaa !1036
  br i1 %.not285.i, label %bb.fg, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.are = load ptr, ptr %.0258458.i, align 8, !tbaa !550
  %i.arf = getelementptr inbounds nuw i8, ptr %i.are, i64 48
  %i.arg = load ptr, ptr %i.arf, align 8, !tbaa !273 ; 4 uses
  %.not286.i = icmp eq ptr %i.arg, null
  br i1 %.not286.i, label %bb.fg, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.arh = getelementptr inbounds i8, ptr %i.arg, i64 -16 ; 2 uses
  %i.ari = load i64, ptr %i.arh, align 8          ; 2 uses
  %i.arj = and i64 %i.ari, 2
  %.not.i.i.i.i.i.i50 = icmp eq i64 %i.arj, 0
  br i1 %.not.i.i.i.i.i.i50, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ark = getelementptr inbounds i8, ptr %i.arg, i64 -32
  %i.arl = load ptr, ptr %i.ark, align 8, !tbaa !37
  br label %_ZNK4llvm10DILocation8getScopeEv.exit.i.i

bb.ev:                                            ; preds = %bb.et
  %i.arm = lshr i64 %i.ari, 2
  %i.arn = and i64 %i.arm, 15
  %i.aro = sub nsw i64 0, %i.arn
  %i.arp = getelementptr inbounds [8 x i8], ptr %i.arh, i64 %i.aro
  br label %_ZNK4llvm10DILocation8getScopeEv.exit.i.i

_ZNK4llvm10DILocation8getScopeEv.exit.i.i:        ; preds = %bb.ev, %bb.eu
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.arp, %bb.ev ], [ %i.arl, %bb.eu ]
  %i.arq = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !tbaa !1031 ; 4 uses
  %i.arr = load i8, ptr %i.arq, align 4, !tbaa !1032
  %i.ars = icmp eq i8 %i.arr, 16
  br i1 %i.ars, label %_ZNK4llvm10DILocation7getFileEv.exit.i, label %bb.ew

bb.ew:                                            ; preds = %_ZNK4llvm10DILocation8getScopeEv.exit.i.i
  %i.art = getelementptr inbounds i8, ptr %i.arq, i64 -16 ; 2 uses
  %i.aru = load i64, ptr %i.art, align 8          ; 2 uses
  %i.arv = and i64 %i.aru, 2
  %.not.i.i.i.i1.i.i = icmp eq i64 %i.arv, 0
  br i1 %.not.i.i.i.i1.i.i, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.arw = getelementptr inbounds i8, ptr %i.arq, i64 -32
  %i.arx = load ptr, ptr %i.arw, align 8, !tbaa !37
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i

bb.ey:                                            ; preds = %bb.ew
  %i.ary = lshr i64 %i.aru, 2
  %i.arz = and i64 %i.ary, 15
  %i.asa = sub nsw i64 0, %i.arz
  %i.asb = getelementptr inbounds [8 x i8], ptr %i.art, i64 %i.asa
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i

_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i:      ; preds = %bb.ey, %bb.ex
  %.sroa.0.0.i.i.i.i2.i.i = phi ptr [ %i.asb, %bb.ey ], [ %i.arx, %bb.ex ]
  %i.asc = load ptr, ptr %.sroa.0.0.i.i.i.i2.i.i, align 8, !tbaa !1031
  br label %_ZNK4llvm10DILocation7getFileEv.exit.i

_ZNK4llvm10DILocation7getFileEv.exit.i:           ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i, %_ZNK4llvm10DILocation8getScopeEv.exit.i.i
  %i.asd = phi ptr [ %i.asc, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i ], [ %i.arq, %_ZNK4llvm10DILocation8getScopeEv.exit.i.i ]
  %i.ase = load i64, ptr %i.aqm, align 8          ; 2 uses
  %i.asf = and i64 %i.ase, 2
  %.not.i.i.i.i.i307.i = icmp eq i64 %i.asf, 0
  br i1 %.not.i.i.i.i.i307.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %_ZNK4llvm10DILocation7getFileEv.exit.i
  %i.asg = load ptr, ptr %i.aqn, align 8, !tbaa !37
  br label %_ZNK4llvm10DILocation8getScopeEv.exit.i308.i

bb.fa:                                            ; preds = %_ZNK4llvm10DILocation7getFileEv.exit.i
  %i.ash = lshr i64 %i.ase, 2
  %i.asi = and i64 %i.ash, 15
  %i.asj = sub nsw i64 0, %i.asi
  %i.ask = getelementptr inbounds [8 x i8], ptr %i.aqm, i64 %i.asj
  br label %_ZNK4llvm10DILocation8getScopeEv.exit.i308.i

_ZNK4llvm10DILocation8getScopeEv.exit.i308.i:     ; preds = %bb.fa, %bb.ez
  %.sroa.0.0.i.i.i.i.i309.i = phi ptr [ %i.ask, %bb.fa ], [ %i.asg, %bb.ez ]
  %i.asl = load ptr, ptr %.sroa.0.0.i.i.i.i.i309.i, align 8, !tbaa !1031 ; 4 uses
  %i.asm = load i8, ptr %i.asl, align 4, !tbaa !1032
  %i.asn = icmp eq i8 %i.asm, 16
  br i1 %i.asn, label %_ZNK4llvm10DILocation7getFileEv.exit313.i, label %bb.fb

bb.fb:                                            ; preds = %_ZNK4llvm10DILocation8getScopeEv.exit.i308.i
  %i.aso = getelementptr inbounds i8, ptr %i.asl, i64 -16 ; 2 uses
  %i.asp = load i64, ptr %i.aso, align 8          ; 2 uses
  %i.asq = and i64 %i.asp, 2
  %.not.i.i.i.i1.i310.i = icmp eq i64 %i.asq, 0
  br i1 %.not.i.i.i.i1.i310.i, label %bb.fd, label %bb.fc

end_hunk_0

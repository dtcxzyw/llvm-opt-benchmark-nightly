Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopStrengthReduce?download=true
inline.NumInlined: 10948
inline.NumDeleted: 5106
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZL18ReduceLoopStrengthPN4llvm4LoopERNS_7IVUsersERNS_15ScalarEvolutionERNS_13DominatorTreeERNS_8LoopInfoERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_17TargetLibraryInfoEPNS_9MemorySSAEb:bb.a
  %.05.i.i128 = phi ptr [ %i.ari, %.lr.ph.i.i127 ], [ %i.arh, %.lr.ph.i.preheader.i125 ]
  %i.ari = getelementptr inbounds i8, ptr %.05.i.i128, i64 -8 ; 3 uses
  call fastcc void @_ZNSt10unique_ptrIN12_GLOBAL__N_114DVIRecoveryRecESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ari) #23
  %.not.i.i129 = icmp eq ptr %.val.i123.pre, %i.ari
  br i1 %.not.i.i129, label %_ZN4llvm15SmallVectorImplISt10unique_ptrIN12_GLOBAL__N_114DVIRecoveryRecESt14default_deleteIS3_EEE5clearEv.exit, label %.lr.ph.i.i127, !llvm.loop !175

_ZN4llvm15SmallVectorImplISt10unique_ptrIN12_GLOBAL__N_114DVIRecoveryRecESt14default_deleteIS3_EEE5clearEv.exit: ; preds = %.lr.ph.i.i127, %._crit_edge, %._crit_edge174
  store i32 0, ptr %i.f, align 8, !tbaa !50
  br label %bb.hr

.lr.ph173:                                        ; preds = %.lr.ph173.preheader, %.lr.ph173
  %.059171 = phi ptr [ %i.arj, %.lr.ph173 ], [ %.val335, %.lr.ph173.preheader ] ; 2 uses
  %.059.val = load ptr, ptr %.059171, align 8, !tbaa !143
  call fastcc void @_ZN12_GLOBAL__N_114DVIRecoveryRec5clearEv(ptr noundef nonnull align 8 dereferenceable(152) %.059.val)
  %i.arj = getelementptr inbounds nuw i8, ptr %.059171, i64 8 ; 2 uses
  %.not65 = icmp eq ptr %i.arj, %i.uf
  br i1 %.not65, label %._crit_edge174, label %.lr.ph173

bb.hr:                                            ; preds = %bb.bq, %_ZN4llvm15SmallVectorImplISt10unique_ptrIN12_GLOBAL__N_114DVIRecoveryRecESt14default_deleteIS3_EEE5clearEv.exit
  %i.ark = getelementptr inbounds nuw i8, ptr %39, i64 35556
  %i.arl = load i32, ptr %i.ark, align 4, !tbaa !470 ; 2 uses
  %i.arm = icmp eq i32 %i.arl, 0
  br i1 %i.arm, label %_ZN4llvm8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj2ES9_EEEEmNS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_mEEED2Ev.exit.i, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.arn = getelementptr inbounds nuw i8, ptr %39, i64 35536
  %i.aro = load ptr, ptr %i.arn, align 8, !tbaa !471
  %i.arp = zext i32 %i.arl to i64                 ; 2 uses
  %i.arq = shl nuw nsw i64 %i.arp, 4
  %i.arr = add nuw nsw i64 %i.arp, 31
  %i.ars = lshr i64 %i.arr, 3
  %i.art = and i64 %i.ars, 1073741820
  %i.aru = add nuw nsw i64 %i.art, %i.arq
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aro, i64 noundef %i.aru, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj2ES9_EEEEmNS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_mEEED2Ev.exit.i

_ZN4llvm8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj2ES9_EEEEmNS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_mEEED2Ev.exit.i: ; preds = %bb.hs, %bb.hr
  %i.arv = getelementptr inbounds nuw i8, ptr %39, i64 35464
  %i.arw = getelementptr inbounds nuw i8, ptr %39, i64 35488
  %i.arx = load ptr, ptr %i.arw, align 8, !tbaa !21 ; 2 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %39, i64 35504
  %i.arz = icmp eq ptr %i.arx, %i.ary
  br i1 %i.arz, label %_ZN4llvm11SmallVectorIPNS_11InstructionELj4EED2Ev.exit.i.i, label %bb.ht

bb.ht:                                            ; preds = %_ZN4llvm8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj2ES9_EEEEmNS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_mEEED2Ev.exit.i
  call void @free(ptr noundef %i.arx) #23
  br label %_ZN4llvm11SmallVectorIPNS_11InstructionELj4EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPNS_11InstructionELj4EED2Ev.exit.i.i: ; preds = %bb.ht, %_ZN4llvm8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj2ES9_EEEEmNS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_mEEED2Ev.exit.i
  %i.asa = getelementptr inbounds nuw i8, ptr %39, i64 35484
  %i.asb = load i32, ptr %i.asa, align 4, !tbaa !472 ; 2 uses
  %i.asc = icmp eq i32 %i.asb, 0
  br i1 %i.asc, label %_ZN4llvm9SetVectorIPNS_11InstructionENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit.i, label %bb.hu

bb.hu:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_11InstructionELj4EED2Ev.exit.i.i
  %i.asd = load ptr, ptr %i.arv, align 8, !tbaa !473
  %i.ase = zext i32 %i.asb to i64                 ; 2 uses
  %i.asf = shl nuw nsw i64 %i.ase, 3
  %i.asg = add nuw nsw i64 %i.ase, 31
  %i.ash = lshr i64 %i.asg, 3
  %i.asi = and i64 %i.ash, 1073741820
  %i.asj = add nuw nsw i64 %i.asi, %i.asf
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.asd, i64 noundef %i.asj, i64 noundef 8) #23
  br label %_ZN4llvm9SetVectorIPNS_11InstructionENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit.i

_ZN4llvm9SetVectorIPNS_11InstructionENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit.i: ; preds = %bb.hu, %_ZN4llvm11SmallVectorIPNS_11InstructionELj4EED2Ev.exit.i.i
  %i.ask = getelementptr inbounds nuw i8, ptr %39, i64 35400 ; 2 uses
  %i.asl = load ptr, ptr %i.ask, align 8, !tbaa !21 ; 3 uses
  %i.asm = getelementptr inbounds nuw i8, ptr %39, i64 35408
  %i.asn = load i32, ptr %i.asm, align 8, !tbaa !50 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.asn, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN4llvm9SetVectorIPNS_11InstructionENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit.i
  %i.aso = zext i32 %i.asn to i64
  %.idx.i.i130 = mul nuw nsw i64 %i.aso, 24
  %i.asp = getelementptr inbounds nuw i8, ptr %i.asl, i64 %.idx.i.i130
  br label %.lr.ph.i.i.i131

.lr.ph.i.i.i131:                                  ; preds = %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i133, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.asq, %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i133 ], [ %i.asp, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.asq = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -24 ; 3 uses
  %i.asr = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -8
  %i.ass = load ptr, ptr %i.asr, align 8, !tbaa !176
  %.not.i.i.i.i132 = icmp eq ptr %i.ass, null
  br i1 %.not.i.i.i.i132, label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i133, label %bb.hv

bb.hv:                                            ; preds = %.lr.ph.i.i.i131
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.asq) #23
  br label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i133

_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i133:      ; preds = %bb.hv, %.lr.ph.i.i.i131
  %.not.i.i.i134 = icmp eq ptr %i.asl, %i.asq
  br i1 %.not.i.i.i134, label %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i, label %.lr.ph.i.i.i131, !llvm.loop !181

_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i: ; preds = %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i133
  %.pre.i.i135 = load ptr, ptr %i.ask, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i, %_ZN4llvm9SetVectorIPNS_11InstructionENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit.i
  %i.ast = phi ptr [ %.pre.i.i135, %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i ], [ %i.asl, %_ZN4llvm9SetVectorIPNS_11InstructionENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit.i ] ; 2 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %39, i64 35416
  %i.asv = icmp eq ptr %i.ast, %i.asu
  br i1 %i.asv, label %_ZN4llvm11SmallVectorINS_6WeakVHELj2EED2Ev.exit.i, label %bb.hw

bb.hw:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.i.i
  call void @free(ptr noundef %i.ast) #23
  br label %_ZN4llvm11SmallVectorINS_6WeakVHELj2EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_6WeakVHELj2EED2Ev.exit.i: ; preds = %bb.hw, %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.i.i
  %i.asw = getelementptr inbounds nuw i8, ptr %39, i64 35328
  %i.asx = load i8, ptr %i.asw, align 8, !tbaa !14, !range !18, !noundef !19
  %i.asy = trunc nuw i8 %i.asx to i1
  br i1 %i.asy, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.hx

bb.hx:                                            ; preds = %_ZN4llvm11SmallVectorINS_6WeakVHELj2EED2Ev.exit.i
  %i.asz = getelementptr inbounds nuw i8, ptr %39, i64 35312
  %i.ata = load ptr, ptr %i.asz, align 8, !tbaa !20
  call void @free(ptr noundef %i.ata) #23
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.hx, %_ZN4llvm11SmallVectorINS_6WeakVHELj2EED2Ev.exit.i
  %i.atb = getelementptr inbounds nuw i8, ptr %39, i64 34912 ; 2 uses
  %.val.i.i136 = load ptr, ptr %i.atb, align 8, !tbaa !21 ; 3 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %39, i64 34920
  %.val2.i.i = load i32, ptr %i.atc, align 8, !tbaa !50 ; 2 uses
  %.not4.i.i1.i = icmp eq i32 %.val2.i.i, 0
  br i1 %.not4.i.i1.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_17IVChainELb0EE13destroy_rangeEPS2_S4_.exit.i.i, label %.lr.ph.i.preheader.i2.i

.lr.ph.i.preheader.i2.i:                          ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  %i.atd = zext i32 %.val2.i.i to i64
  %.idx.i3.i = mul nuw nsw i64 %i.atd, 48
  %i.ate = getelementptr inbounds nuw i8, ptr %.val.i.i136, i64 %.idx.i3.i
  br label %.lr.ph.i.i4.i

.lr.ph.i.i4.i:                                    ; preds = %_ZN12_GLOBAL__N_17IVChainD2Ev.exit.i.i.i, %.lr.ph.i.preheader.i2.i
  %.05.i.i5.i = phi ptr [ %i.atf, %_ZN12_GLOBAL__N_17IVChainD2Ev.exit.i.i.i ], [ %i.ate, %.lr.ph.i.preheader.i2.i ] ; 2 uses
  %i.atf = getelementptr inbounds i8, ptr %.05.i.i5.i, i64 -48 ; 3 uses
  %i.atg = load ptr, ptr %i.atf, align 8, !tbaa !21 ; 2 uses
  %i.ath = getelementptr inbounds i8, ptr %.05.i.i5.i, i64 -32
  %i.ati = icmp eq ptr %i.atg, %i.ath
  br i1 %i.ati, label %_ZN12_GLOBAL__N_17IVChainD2Ev.exit.i.i.i, label %bb.hy

bb.hy:                                            ; preds = %.lr.ph.i.i4.i
  call void @free(ptr noundef %i.atg) #23
  br label %_ZN12_GLOBAL__N_17IVChainD2Ev.exit.i.i.i

_ZN12_GLOBAL__N_17IVChainD2Ev.exit.i.i.i:         ; preds = %bb.hy, %.lr.ph.i.i4.i
  %.not.i.i6.i = icmp eq ptr %.val.i.i136, %i.atf
  br i1 %.not.i.i6.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_17IVChainELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i, label %.lr.ph.i.i4.i, !llvm.loop !474

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_17IVChainELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i: ; preds = %_ZN12_GLOBAL__N_17IVChainD2Ev.exit.i.i.i
  %.pre.i7.i = load ptr, ptr %i.atb, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_17IVChainELb0EE13destroy_rangeEPS2_S4_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_17IVChainELb0EE13destroy_rangeEPS2_S4_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_17IVChainELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  %i.atj = phi ptr [ %.pre.i7.i, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_17IVChainELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i ], [ %.val.i.i136, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i ] ; 2 uses
  %i.atk = getelementptr inbounds nuw i8, ptr %39, i64 34928
  %i.atl = icmp eq ptr %i.atj, %i.atk
  br i1 %i.atl, label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_17IVChainELj8EED2Ev.exit.i, label %bb.hz

bb.hz:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_17IVChainELb0EE13destroy_rangeEPS2_S4_.exit.i.i
  call void @free(ptr noundef %i.atj) #23
  br label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_17IVChainELj8EED2Ev.exit.i

_ZN4llvm11SmallVectorIN12_GLOBAL__N_17IVChainELj8EED2Ev.exit.i: ; preds = %bb.hz, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_17IVChainELb0EE13destroy_rangeEPS2_S4_.exit.i.i
  %i.atm = getelementptr inbounds nuw i8, ptr %39, i64 34744 ; 2 uses
  %i.atn = getelementptr inbounds nuw i8, ptr %39, i64 34768
  %i.ato = load ptr, ptr %i.atn, align 8, !tbaa !21 ; 2 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %39, i64 34784
  %i.atq = icmp eq ptr %i.ato, %i.atp
  br i1 %i.atq, label %_ZN4llvm11SmallVectorIPKNS_4SCEVELj16EED2Ev.exit.i.i, label %bb.ia

bb.ia:                                            ; preds = %_ZN4llvm11SmallVectorIN12_GLOBAL__N_17IVChainELj8EED2Ev.exit.i
  call void @free(ptr noundef %i.ato) #23
  br label %_ZN4llvm11SmallVectorIPKNS_4SCEVELj16EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPKNS_4SCEVELj16EED2Ev.exit.i.i: ; preds = %bb.ia, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_17IVChainELj8EED2Ev.exit.i
  %i.atr = getelementptr inbounds nuw i8, ptr %39, i64 34764 ; 2 uses
  %.val2.i.i.i.i = load i32, ptr %i.atr, align 4, !tbaa !475 ; 2 uses
  %i.ats = icmp eq i32 %.val2.i.i.i.i, 0
  br i1 %i.ats, label %_ZN12_GLOBAL__N_113RegUseTrackerD2Ev.exit.i, label %.lr.ph11.preheader.i.i.i.i

.lr.ph11.preheader.i.i.i.i:                       ; preds = %_ZN4llvm11SmallVectorIPKNS_4SCEVELj16EED2Ev.exit.i.i
  %.val4.i.i.i.i = load ptr, ptr %i.atm, align 8, !tbaa !476
  %i.att = getelementptr inbounds nuw i8, ptr %39, i64 34752
  %.val3.i.i.i.i = load ptr, ptr %i.att, align 8, !tbaa !477
  %i.atu = zext i32 %.val2.i.i.i.i to i64
  %i.atv = add nuw nsw i64 %i.atu, 31
  %i.atw = lshr i64 %i.atv, 5
  br label %.lr.ph11.i.i.i.i

.lr.ph11.i.i.i.i:                                 ; preds = %._crit_edge.i.i.i.i139, %.lr.ph11.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph11.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %._crit_edge.i.i.i.i139 ] ; 3 uses
  %i.atx = getelementptr inbounds nuw [4 x i8], ptr %.val3.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.aty = load i32, ptr %i.atx, align 4, !tbaa !478 ; 2 uses
  %.not11.i6.i.i.i.i = icmp eq i32 %i.aty, 0
  br i1 %.not11.i6.i.i.i.i, label %._crit_edge.i.i.i.i139, label %.lr.ph.i.i.i.i137

.lr.ph.i.i.i.i137:                                ; preds = %.lr.ph11.i.i.i.i
  %indvars.iv.tr.i.i.i.i = trunc nuw i64 %indvars.iv.i.i.i.i to i32
  %i.atz = shl nuw i32 %indvars.iv.tr.i.i.i.i, 5
  br label %bb.ib

bb.ib:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph.i.i.i.i137
  %.0.i7.i.i.i.i = phi i32 [ %i.aty, %.lr.ph.i.i.i.i137 ], [ %i.aum, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i ] ; 3 uses
  %i.aua = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i7.i.i.i.i, i1 true)
  %i.aub = or disjoint i32 %i.aua, %i.atz
  %i.auc = zext i32 %i.aub to i64
  %i.aud = getelementptr inbounds nuw [16 x i8], ptr %.val4.i.i.i.i, i64 %i.auc
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 8
  %.val.i.i.i.i.i138 = load i64, ptr %i.aue, align 8, !tbaa !479 ; 3 uses
  %i.auf = trunc i64 %.val.i.i.i.i.i138 to i1
  br i1 %i.auf, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.aug = inttoptr i64 %.val.i.i.i.i.i138 to ptr ; 3 uses
  %i.auh = icmp eq i64 %.val.i.i.i.i.i138, 0
  br i1 %i.auh, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.aui = load ptr, ptr %i.aug, align 8, !tbaa !21 ; 2 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aug, i64 16
  %i.auk = icmp eq ptr %i.aui, %i.auj
  br i1 %i.auk, label %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i.i.i.i, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  call void @free(ptr noundef %i.aui) #23
  br label %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i.i.i.i

_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i.i.i.i:        ; preds = %bb.ie, %bb.id
  call void @_ZdlPvm(ptr noundef nonnull %i.aug, i64 noundef 72) #25
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i: ; preds = %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i.i.i.i, %bb.ic, %bb.ib
  %i.aul = add i32 %.0.i7.i.i.i.i, -1
  %i.aum = and i32 %i.aul, %.0.i7.i.i.i.i         ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i32 %i.aum, 0
  br i1 %.not11.i.i.i.i.i, label %._crit_edge.i.i.i.i139, label %bb.ib, !llvm.loop !481

._crit_edge.i.i.i.i139:                           ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph11.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i140 = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.atw
  br i1 %.not.i.i.i.i.i140, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i.i.i, label %.lr.ph11.i.i.i.i, !llvm.loop !482

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i139
  %.pr.i.i.i141 = load i32, ptr %i.atr, align 4, !tbaa !475 ; 2 uses
  %i.aun = icmp eq i32 %.pr.i.i.i141, 0
  br i1 %i.aun, label %_ZN12_GLOBAL__N_113RegUseTrackerD2Ev.exit.i, label %bb.if

bb.if:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i.i.i
  %i.auo = load ptr, ptr %i.atm, align 8, !tbaa !476
  %i.aup = zext i32 %.pr.i.i.i141 to i64          ; 2 uses
  %i.auq = shl nuw nsw i64 %i.aup, 4
  %i.aur = add nuw nsw i64 %i.aup, 31
  %i.aus = lshr i64 %i.aur, 3
  %i.aut = and i64 %i.aus, 1073741820
  %i.auu = add nuw nsw i64 %i.aut, %i.auq
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.auo, i64 noundef %i.auu, i64 noundef 8) #23
  br label %_ZN12_GLOBAL__N_113RegUseTrackerD2Ev.exit.i

_ZN12_GLOBAL__N_113RegUseTrackerD2Ev.exit.i:      ; preds = %bb.if, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i.i.i, %_ZN4llvm11SmallVectorIPKNS_4SCEVELj16EED2Ev.exit.i.i
  %i.auv = getelementptr inbounds nuw i8, ptr %39, i64 1192 ; 2 uses
  %.val.i8.i = load ptr, ptr %i.auv, align 8, !tbaa !21 ; 3 uses
  %i.auw = getelementptr inbounds nuw i8, ptr %39, i64 1200
  %.val2.i9.i = load i32, ptr %i.auw, align 8, !tbaa !50 ; 2 uses
  %.not4.i.i10.i = icmp eq i32 %.val2.i9.i, 0
  br i1 %.not4.i.i10.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_16LSRUseELb0EE13destroy_rangeEPS2_S4_.exit.i.i, label %.lr.ph.i.preheader.i11.i

.lr.ph.i.preheader.i11.i:                         ; preds = %_ZN12_GLOBAL__N_113RegUseTrackerD2Ev.exit.i
  %i.aux = zext i32 %.val2.i9.i to i64
  %.idx.i12.i = mul nuw nsw i64 %i.aux, 2096
  %i.auy = getelementptr inbounds nuw i8, ptr %.val.i8.i, i64 %.idx.i12.i
  br label %.lr.ph.i.i13.i

.lr.ph.i.i13.i:                                   ; preds = %.lr.ph.i.i13.i, %.lr.ph.i.preheader.i11.i
  %.05.i.i14.i = phi ptr [ %i.auz, %.lr.ph.i.i13.i ], [ %i.auy, %.lr.ph.i.preheader.i11.i ]
  %i.auz = getelementptr inbounds i8, ptr %.05.i.i14.i, i64 -2096 ; 3 uses
  call fastcc void @_ZN12_GLOBAL__N_16LSRUseD2Ev(ptr noundef nonnull align 8 dead_on_return(2096) dereferenceable(2096) %i.auz) #23
  %.not.i.i15.i = icmp eq ptr %.val.i8.i, %i.auz
  br i1 %.not.i.i15.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_16LSRUseELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i, label %.lr.ph.i.i13.i, !llvm.loop !483

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_16LSRUseELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i13.i
  %.pre.i16.i = load ptr, ptr %i.auv, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_16LSRUseELb0EE13destroy_rangeEPS2_S4_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_16LSRUseELb0EE13destroy_rangeEPS2_S4_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_16LSRUseELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i, %_ZN12_GLOBAL__N_113RegUseTrackerD2Ev.exit.i
  %i.ava = phi ptr [ %.pre.i16.i, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_16LSRUseELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i ], [ %.val.i8.i, %_ZN12_GLOBAL__N_113RegUseTrackerD2Ev.exit.i ] ; 2 uses
  %i.avb = getelementptr inbounds nuw i8, ptr %39, i64 1208
  %i.avc = icmp eq ptr %i.ava, %i.avb
  br i1 %i.avc, label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_16LSRUseELj16EED2Ev.exit.i, label %bb.ig

bb.ig:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_16LSRUseELb0EE13destroy_rangeEPS2_S4_.exit.i.i
  call void @free(ptr noundef %i.ava) #23
  br label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_16LSRUseELj16EED2Ev.exit.i

_ZN4llvm11SmallVectorIN12_GLOBAL__N_16LSRUseELj16EED2Ev.exit.i: ; preds = %bb.ig, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_16LSRUseELb0EE13destroy_rangeEPS2_S4_.exit.i.i
  %i.avd = getelementptr inbounds nuw i8, ptr %39, i64 1120
  %i.ave = getelementptr inbounds nuw i8, ptr %39, i64 1144
  %i.avf = load ptr, ptr %i.ave, align 8, !tbaa !21 ; 2 uses
  %i.avg = getelementptr inbounds nuw i8, ptr %39, i64 1160
  %i.avh = icmp eq ptr %i.avf, %i.avg
  br i1 %i.avh, label %_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit.i.i, label %bb.ih

bb.ih:                                            ; preds = %_ZN4llvm11SmallVectorIN12_GLOBAL__N_16LSRUseELj16EED2Ev.exit.i
  call void @free(ptr noundef %i.avf) #23
  br label %_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit.i.i: ; preds = %bb.ih, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_16LSRUseELj16EED2Ev.exit.i
  %i.avi = getelementptr inbounds nuw i8, ptr %39, i64 1140
  %i.avj = load i32, ptr %i.avi, align 4, !tbaa !484 ; 2 uses
  %i.avk = icmp eq i32 %i.avj, 0
  br i1 %i.avk, label %_ZN4llvm9SetVectorIPNS_4TypeENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit.i, label %bb.ii

bb.ii:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit.i.i
  %i.avl = load ptr, ptr %i.avd, align 8, !tbaa !485
  %i.avm = zext i32 %i.avj to i64                 ; 2 uses
  %i.avn = shl nuw nsw i64 %i.avm, 3
  %i.avo = add nuw nsw i64 %i.avm, 31
  %i.avp = lshr i64 %i.avo, 3
  %i.avq = and i64 %i.avp, 1073741820
  %i.avr = add nuw nsw i64 %i.avq, %i.avn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.avl, i64 noundef %i.avr, i64 noundef 8) #23
  br label %_ZN4llvm9SetVectorIPNS_4TypeENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit.i

_ZN4llvm9SetVectorIPNS_4TypeENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit.i: ; preds = %bb.ii, %_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit.i.i
  %i.avs = getelementptr inbounds nuw i8, ptr %39, i64 848
  %i.avt = getelementptr inbounds nuw i8, ptr %39, i64 976
  %i.avu = load ptr, ptr %i.avt, align 8, !tbaa !21 ; 2 uses
  %i.avv = getelementptr inbounds nuw i8, ptr %39, i64 992
  %i.avw = icmp eq ptr %i.avu, %i.avv
  br i1 %i.avw, label %_ZN4llvm11SmallVectorIlLj8EED2Ev.exit.i.i, label %bb.ij

bb.ij:                                            ; preds = %_ZN4llvm9SetVectorIPNS_4TypeENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.avu) #23
  br label %_ZN4llvm11SmallVectorIlLj8EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIlLj8EED2Ev.exit.i.i:        ; preds = %bb.ij, %_ZN4llvm9SetVectorIPNS_4TypeENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EED2Ev.exit.i
  %i.avx = getelementptr inbounds nuw i8, ptr %39, i64 928
  %i.avy = getelementptr inbounds nuw i8, ptr %39, i64 944
  %i.avz = load ptr, ptr %i.avy, align 8, !tbaa !214
  call void @_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE(ptr noundef nonnull align 8 dereferenceable(48) %i.avx, ptr noundef %i.avz)
  %i.awa = load ptr, ptr %i.avs, align 8, !tbaa !21 ; 2 uses
  %i.awb = getelementptr inbounds nuw i8, ptr %39, i64 864
  %i.awc = icmp eq ptr %i.awa, %i.awb
  br i1 %i.awc, label %_ZN12_GLOBAL__N_111LSRInstanceD2Ev.exit, label %bb.ik

bb.ik:                                            ; preds = %_ZN4llvm11SmallVectorIlLj8EED2Ev.exit.i.i
  call void @free(ptr noundef %i.awa) #23
  br label %_ZN12_GLOBAL__N_111LSRInstanceD2Ev.exit

_ZN12_GLOBAL__N_111LSRInstanceD2Ev.exit:          ; preds = %_ZN4llvm11SmallVectorIlLj8EED2Ev.exit.i.i, %bb.ik
  %i.awd = getelementptr inbounds nuw i8, ptr %39, i64 80
  call void @_ZN4llvm12SCEVExpanderD2Ev(ptr noundef nonnull align 8 dead_on_return(752) dereferenceable(752) %i.awd) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  %i.awe = load ptr, ptr %37, align 8, !tbaa !218 ; 2 uses
  %.not.i142 = icmp eq ptr %i.awe, null
  br i1 %.not.i142, label %_ZNSt10unique_ptrIN4llvm16MemorySSAUpdaterESt14default_deleteIS1_EED2Ev.exit143, label %bb.il

bb.il:                                            ; preds = %_ZN12_GLOBAL__N_111LSRInstanceD2Ev.exit
  call void @_ZNKSt14default_deleteIN4llvm16MemorySSAUpdaterEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull %i.awe)
  br label %_ZNSt10unique_ptrIN4llvm16MemorySSAUpdaterESt14default_deleteIS1_EED2Ev.exit143

_ZNSt10unique_ptrIN4llvm16MemorySSAUpdaterESt14default_deleteIS1_EED2Ev.exit143: ; preds = %_ZN12_GLOBAL__N_111LSRInstanceD2Ev.exit, %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  %.val.i144 = load ptr, ptr %36, align 8, !tbaa !21 ; 3 uses
  %.val2.i145 = load i32, ptr %i.f, align 8, !tbaa !50 ; 2 uses
  %.not4.i.i146 = icmp eq i32 %.val2.i145, 0
  br i1 %.not4.i.i146, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN12_GLOBAL__N_114DVIRecoveryRecESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i, label %.lr.ph.i.preheader.i147

.lr.ph.i.preheader.i147:                          ; preds = %_ZNSt10unique_ptrIN4llvm16MemorySSAUpdaterESt14default_deleteIS1_EED2Ev.exit143
  %i.awf = zext i32 %.val2.i145 to i64
  %.idx.i148 = shl nuw nsw i64 %i.awf, 3
  %i.awg = getelementptr inbounds nuw i8, ptr %.val.i144, i64 %.idx.i148
  br label %.lr.ph.i.i149

.lr.ph.i.i149:                                    ; preds = %.lr.ph.i.i149, %.lr.ph.i.preheader.i147
  %.05.i.i150 = phi ptr [ %i.awh, %.lr.ph.i.i149 ], [ %i.awg, %.lr.ph.i.preheader.i147 ]
  %i.awh = getelementptr inbounds i8, ptr %.05.i.i150, i64 -8 ; 3 uses
  call fastcc void @_ZNSt10unique_ptrIN12_GLOBAL__N_114DVIRecoveryRecESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.awh) #23
  %.not.i.i151 = icmp eq ptr %.val.i144, %i.awh
  br i1 %.not.i.i151, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN12_GLOBAL__N_114DVIRecoveryRecESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i, label %.lr.ph.i.i149, !llvm.loop !175

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN12_GLOBAL__N_114DVIRecoveryRecESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i: ; preds = %.lr.ph.i.i149
  %.pre.i152 = load ptr, ptr %36, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN12_GLOBAL__N_114DVIRecoveryRecESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN12_GLOBAL__N_114DVIRecoveryRecESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN12_GLOBAL__N_114DVIRecoveryRecESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i, %_ZNSt10unique_ptrIN4llvm16MemorySSAUpdaterESt14default_deleteIS1_EED2Ev.exit143
  %i.awi = phi ptr [ %.pre.i152, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN12_GLOBAL__N_114DVIRecoveryRecESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i ], [ %.val.i144, %_ZNSt10unique_ptrIN4llvm16MemorySSAUpdaterESt14default_deleteIS1_EED2Ev.exit143 ] ; 2 uses
  %i.awj = icmp eq ptr %i.awi, %i.e
  br i1 %i.awj, label %_ZN4llvm11SmallVectorISt10unique_ptrIN12_GLOBAL__N_114DVIRecoveryRecESt14default_deleteIS3_EELj2EED2Ev.exit, label %bb.im

bb.im:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN12_GLOBAL__N_114DVIRecoveryRecESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i
  call void @free(ptr noundef %i.awi) #23
  br label %_ZN4llvm11SmallVectorISt10unique_ptrIN12_GLOBAL__N_114DVIRecoveryRecESt14default_deleteIS3_EELj2EED2Ev.exit

_ZN4llvm11SmallVectorISt10unique_ptrIN12_GLOBAL__N_114DVIRecoveryRecESt14default_deleteIS3_EELj2EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN12_GLOBAL__N_114DVIRecoveryRecESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i, %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  ret i1 %.3
}

declare void @_ZN4llvm28getLoopPassPreservedAnalysesEv(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8) local_unnamed_addr #4
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_111LSRInstanceC2EPN4llvm4LoopERNS1_7IVUsersERNS1_15ScalarEvolutionERNS1_13DominatorTreeERNS1_8LoopInfoERKNS1_19TargetTransformInfoERNS1_15AssumptionCacheERNS1_17TargetLibraryInfoEPNS1_16MemorySSAUpdaterEb:bb.a
  br label %_ZN4llvm11SmallVectorIPKN12_GLOBAL__N_17FormulaELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPKN12_GLOBAL__N_17FormulaELj8EED2Ev.exit: ; preds = %bb.kv, %bb.kw
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  br label %bb.kx

bb.kx:                                            ; preds = %_ZN12_GLOBAL__N_111LSRInstance37CollectLoopInvariantFixupsAndFormulaeEv.exit, %bb.di, %_ZN12_GLOBAL__N_111LSRInstance20OptimizeLoopTermCondEv.exit, %_ZN4llvm11SmallVectorIPKN12_GLOBAL__N_17FormulaELj8EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  br label %.thread163

.thread163:                                       ; preds = %.lr.ph200, %.lr.ph, %bb.kx, %bb.e, %bb.d
  ret void
}

declare noundef zeroext i1 @_ZN4llvm14DeleteDeadPHIsEPNS_10BasicBlockEPKNS_17TargetLibraryInfoEPNS_16MemorySSAUpdaterEPNS_15SmallPtrSetImplIPNS_7PHINodeEEE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm4Loop18isLoopSimplifyFormEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12SCEVExpanderC2ERNS_15ScalarEvolutionEPKcb(ptr noundef nonnull align 8 dereferenceable(752) %0, ptr noundef nonnull align 8 dereferenceable(1152) %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #3 comdat align 2 {
_ZNSt14_Function_baseD2Ev.exit:
  %4 = alloca %"class.llvm::InstSimplifyFolder", align 8 ; 9 uses
  %5 = alloca %"class.llvm::IRBuilderCallbackInserter", align 8 ; 6 uses
  %i.a = zext i1 %3 to i8
  store ptr %1, ptr %0, align 8, !tbaa !335
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !336, !nonnull !19, !align !34
  store ptr %i.d, ptr %i.b, align 8, !tbaa !402
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !403
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.a, ptr %i.f, align 8, !tbaa !404
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, i8 0, i64 72, i1 false)
  store ptr %i.i, ptr %i.h, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 16, ptr %i.j, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.k, align 4, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 1, ptr %i.l, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %i.o, ptr %i.n, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 0, ptr %i.p, align 8, !tbaa !50
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 292
  store i32 2, ptr %i.q, align 4, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.t, ptr %i.s, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 2, ptr %i.u, align 8, !tbaa !44
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 380
  store i32 0, ptr %i.v, align 4, !tbaa !45
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i8 1, ptr %i.w, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, i8 0, i64 40, i1 false)
  store i8 1, ptr %i.y, align 8, !tbaa !405
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 449
  store i8 0, ptr %i.z, align 1, !tbaa !406
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 450
  store i8 0, ptr %i.aa, align 2, !tbaa !407
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ac = load ptr, ptr %1, align 8, !tbaa !408, !nonnull !19, !align !34
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.ac) #23
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !409, !nonnull !19, !align !34 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm18InstSimplifyFolderE, i64 16), ptr %4, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm12TargetFolderE, i64 16), ptr %i.af, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !402
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !402
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.aj, align 8, !tbaa !410
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 81
  store i8 1, ptr %i.ak, align 1, !tbaa !411
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 82
  store i8 0, ptr %i.al, align 2, !tbaa !412
  %i.am = ptrtoint ptr %0 to i64                  ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm25IRBuilderCallbackInserterE, i64 16), ptr %5, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr @_ZNSt17_Function_handlerIFvPN4llvm11InstructionEEZNS0_12SCEVExpanderC1ERNS0_15ScalarEvolutionEPKcbEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_, ptr %i.ao, align 8, !tbaa !413
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.am, ptr %i.an, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !414
  store ptr @_ZNSt17_Function_handlerIFvPN4llvm11InstructionEEZNS0_12SCEVExpanderC1ERNS0_15ScalarEvolutionEPKcbEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.ap, align 8, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !415
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr %i.ad, ptr %i.at, align 8, !tbaa !416
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr %i.ar, ptr %i.au, align 8, !tbaa !417
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 504
  store ptr %i.as, ptr %i.av, align 8, !tbaa !418
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr null, ptr %i.aw, align 8, !tbaa !419
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i32 0, ptr %i.ax, align 8, !tbaa !420
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 524
  store i8 0, ptr %i.ay, align 4, !tbaa !421
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 525
  store i8 2, ptr %i.az, align 1, !tbaa !422
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 526
  store i8 7, ptr %i.ba, align 2, !tbaa !423
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 464
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.bb, i8 0, i64 18, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm18InstSimplifyFolderE, i64 16), ptr %i.ar, align 8, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 552
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm12TargetFolderE, i64 16), ptr %i.bc, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr %i.ae, ptr %i.bd, align 8, !tbaa !402
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.be, ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i64 64, i1 false), !tbaa.struct !424
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm25IRBuilderCallbackInserterE, i64 16), ptr %i.as, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i64 0, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i64 %i.am, ptr %i.bf, align 8, !tbaa !432
  store ptr @_ZNSt17_Function_handlerIFvPN4llvm11InstructionEEZNS0_12SCEVExpanderC1ERNS0_15ScalarEvolutionEPKcbEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_, ptr %i.bh, align 8, !tbaa !413
  store ptr @_ZNSt17_Function_handlerIFvPN4llvm11InstructionEEZNS0_12SCEVExpanderC1ERNS0_15ScalarEvolutionEPKcbEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.bi, align 8, !tbaa !10
  call void @_ZN4llvm25IRBuilderCallbackInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #23
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.af) #23
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(88) %4) #23
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 688
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !21
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i32 0, ptr %i.bl, align 8, !tbaa !50
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 684
  store i32 8, ptr %i.bm, align 4, !tbaa !51
  ret void
}

declare noundef i32 @_ZN4llvm12SCEVExpander19replaceCongruentIVsEPNS_4LoopEPKNS_13DominatorTreeERNS_15SmallVectorImplINS_14WeakTrackingVHEEEPKNS_19TargetTransformInfoE(ptr noundef nonnull align 8 dereferenceable(752), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12SCEVExpander5clearEv(ptr noundef nonnull align 8 dereferenceable(752) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !730  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = shl i32 %i.c, 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !731  ; 4 uses
  %i.h = icmp ult i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ugt i32 %i.g, 64
  br i1 %i.i, label %bb.d, label %.lr.ph7.preheader.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E5clearEv.exit

bb.e:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %i.g, 0
  br i1 %i.j, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEv.exit.i, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.e, %bb.c
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !732
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !733
  %i.n = zext i32 %i.g to i64
  %i.o = add nuw nsw i64 %i.n, 31
  %i.p = lshr i64 %i.o, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !478  ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.r, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.s = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.r, %.lr.ph.i.i ], [ %i.ab, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.t = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !176
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  tail call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.z) #23
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.g, %bb.f
  %i.aa = add i32 %.0.i3.i.i, -1
  %i.ab = and i32 %i.aa, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.f, !llvm.loop !734

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.p
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEv.exit.loopexit.i, label %.lr.ph7.i.i, !llvm.loop !735

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEv.exit.loopexit.i: ; preds = %._crit_edge.i.i
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !731
  %i.ac = zext i32 %.pre.i to i64
  %i.ad = add nuw nsw i64 %i.ac, 31
  %i.ae = lshr i64 %i.ad, 3
  %i.af = and i64 %i.ae, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEv.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEv.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEv.exit.loopexit.i, %bb.e
  %i.ag = phi i64 [ %i.af, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEv.exit.loopexit.i ], [ 0, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !733
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ai, i8 0, i64 %i.ag, i1 false)
  store i32 0, ptr %i.b, align 8, !tbaa !730
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E5clearEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E5clearEv.exit: ; preds = %bb.a, %bb.d, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEv.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !736 ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5clearEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E5clearEv.exit
  %i.an = shl i32 %i.al, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !737 ; 3 uses
  %i.aq = icmp ult i32 %i.an, %i.ap
  %i.ar = icmp ugt i32 %i.ap, 64
  %or.cond.i.i = and i1 %i.aq, %i.ar
  br i1 %or.cond.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_5ValueEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aj)
  br label %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5clearEv.exit

bb.j:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !738
  %i.au = zext i32 %i.ap to i64
  %i.av = add nuw nsw i64 %i.au, 31
  %i.aw = lshr i64 %i.av, 3
  %i.ax = and i64 %i.aw, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.at, i8 0, i64 %i.ax, i1 false)
  store i32 0, ptr %i.ak, align 8, !tbaa !736
  br label %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5clearEv.exit

_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5clearEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E5clearEv.exit, %bb.i, %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !736 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5clearEv.exit2, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5clearEv.exit
  %i.bc = shl i32 %i.ba, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !737 ; 3 uses
  %i.bf = icmp ult i32 %i.bc, %i.be
  %i.bg = icmp ugt i32 %i.be, 64
  %or.cond.i.i1 = and i1 %i.bf, %i.bg
  br i1 %or.cond.i.i1, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_5ValueEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ay)
  br label %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5clearEv.exit2

bb.m:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !738
  %i.bj = zext i32 %i.be to i64
  %i.bk = add nuw nsw i64 %i.bj, 31
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = and i64 %i.bl, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bi, i8 0, i64 %i.bm, i1 false)
  store i32 0, ptr %i.az, align 8, !tbaa !736
  br label %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5clearEv.exit2

_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5clearEv.exit2: ; preds = %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5clearEv.exit, %bb.l, %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !14, !range !18, !noundef !19
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5clearEv.exit2
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !45
  %i.bt = shl i32 %i.bs, 2
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !44 ; 3 uses
  %i.bw = icmp ult i32 %i.bt, %i.bv
  %i.bx = icmp ugt i32 %i.bv, 32
  %or.cond.i = and i1 %i.bw, %i.bx
  br i1 %or.cond.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN4llvm19SmallPtrSetImplBase16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(17) %i.bn) #23
  br label %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit

bb.p:                                             ; preds = %bb.n
  %i.by = load ptr, ptr %i.bn, align 8, !tbaa !20
  %i.bz = zext i32 %i.bv to i64
  %i.ca = shl nuw nsw i64 %i.bz, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.by, i8 -1, i64 %i.ca, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5clearEv.exit2
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.cb, align 4, !tbaa !45
  br label %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit

_ZN4llvm19SmallPtrSetImplBase5clearEv.exit:       ; preds = %bb.o, %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !739 ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5clearEv.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit
  %i.cg = shl i32 %i.ce, 2
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !740 ; 3 uses
  %i.cj = icmp ult i32 %i.cg, %i.ci
  %i.ck = icmp ugt i32 %i.ci, 64
  %or.cond.i3 = and i1 %i.cj, %i.ck
  br i1 %or.cond.i3, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.cc)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5clearEv.exit

bb.t:                                             ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !741
  %i.cn = zext i32 %i.ci to i64
  %i.co = add nuw nsw i64 %i.cn, 31
  %i.cp = lshr i64 %i.co, 3
  %i.cq = and i64 %i.cp, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cm, i8 0, i64 %i.cq, i1 false)
  store i32 0, ptr %i.cd, align 8, !tbaa !739
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5clearEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5clearEv.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit, %bb.s, %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !742 ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_7PHINodeEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5clearEv.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5clearEv.exit
  %i.cv = shl i32 %i.ct, 2
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !743 ; 3 uses
  %i.cy = icmp ult i32 %i.cv, %i.cx
  %i.cz = icmp ugt i32 %i.cx, 64
  %or.cond.i.i4 = and i1 %i.cy, %i.cz
  br i1 %or.cond.i.i4, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cr)
  br label %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_7PHINodeEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5clearEv.exit

bb.w:                                             ; preds = %bb.u
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !744
  %i.dc = zext i32 %i.cx to i64
  %i.dd = add nuw nsw i64 %i.dc, 31
  %i.de = lshr i64 %i.dd, 3
  %i.df = and i64 %i.de, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.db, i8 0, i64 %i.df, i1 false)
end_hunk_1
begin_hunk_2_@_ZN4llvm12SCEVExpanderD2Ev
define linkonce_odr hidden void @_ZN4llvm12SCEVExpanderD2Ev(ptr noundef nonnull align 8 dead_on_return(752) dereferenceable(752) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorIPNS_12SCEVExpander20SCEVInsertPointGuardELj8EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #23
  br label %_ZN4llvm11SmallVectorIPNS_12SCEVExpander20SCEVInsertPointGuardELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_12SCEVExpander20SCEVInsertPointGuardELj8EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 632
  tail call void @_ZN4llvm25IRBuilderCallbackInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.e) #23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 552
  tail call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.g) #23
  tail call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(88) %i.f) #23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.i = load i32, ptr %i.h, align 4, !tbaa !743  ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_7PHINodeEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_12SCEVExpander20SCEVInsertPointGuardELj8EED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !745
  %i.m = zext i32 %i.i to i64                     ; 2 uses
  %i.n = shl nuw nsw i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.m, 31
  %i.p = lshr i64 %i.o, 3
  %i.q = and i64 %i.p, 1073741820
  %i.r = add nuw nsw i64 %i.q, %i.n
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.l, i64 noundef %i.r, i64 noundef 8) #23
  br label %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_7PHINodeEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_7PHINodeEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_12SCEVExpander20SCEVInsertPointGuardELj8EED2Ev.exit, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.t = load i8, ptr %i.s, align 8, !tbaa !14, !range !18, !noundef !19
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_7PHINodeEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.w) #23
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_7PHINodeEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.y = load i32, ptr %i.x, align 4, !tbaa !746  ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZN4llvm8DenseMapIPKNS_4SCEVEPKNS_4LoopENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !747
  %i.ac = zext i32 %i.y to i64                    ; 2 uses
  %i.ad = shl nuw nsw i64 %i.ac, 4
  %i.ae = add nuw nsw i64 %i.ac, 31
  %i.af = lshr i64 %i.ae, 3
  %i.ag = and i64 %i.af, 1073741820
  %i.ah = add nuw nsw i64 %i.ag, %i.ad
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ab, i64 noundef %i.ah, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPKNS_4SCEVEPKNS_4LoopENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_4SCEVEPKNS_4LoopENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !21 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !50 ; 2 uses
  %.not4.i.i = icmp eq i32 %i.al, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm8DenseMapIPKNS_4SCEVEPKNS_4LoopENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit
  %i.am = zext i32 %i.al to i64
  %.idx.i = mul nuw nsw i64 %i.am, 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.ao, %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i ], [ %i.an, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.05.i.i, i64 -24 ; 3 uses
  %i.ap = getelementptr inbounds i8, ptr %.05.i.i, i64 -8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !176
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ao) #23
  br label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i

_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i:           ; preds = %bb.f, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.aj, %i.ao
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !181

_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i: ; preds = %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.ai, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i, %_ZN4llvm8DenseMapIPKNS_4SCEVEPKNS_4LoopENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit
  %i.ar = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i ], [ %i.aj, %_ZN4llvm8DenseMapIPKNS_4SCEVEPKNS_4LoopENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZN4llvm11SmallVectorINS_6WeakVHELj2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.i
  tail call void @free(ptr noundef %i.ar) #23
  br label %_ZN4llvm11SmallVectorINS_6WeakVHELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_6WeakVHELj2EED2Ev.exit:  ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.i, %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.av = load i32, ptr %i.au, align 4, !tbaa !740 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_ZN4llvm8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorINS_6WeakVHELj2EED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !748
  %i.az = zext i32 %i.av to i64                   ; 2 uses
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = add nuw nsw i64 %i.az, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  %i.be = add nuw nsw i64 %i.bd, %i.ba
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ay, i64 noundef %i.be, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit

_ZN4llvm8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_6WeakVHELj2EED2Ev.exit, %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !14, !range !18, !noundef !19
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit1, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.bj) #23
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit1

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit1:          ; preds = %_ZN4llvm8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit, %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !737 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit1
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !749
  %i.bp = zext i32 %i.bl to i64                   ; 2 uses
  %i.bq = shl nuw nsw i64 %i.bp, 3
  %i.br = add nuw nsw i64 %i.bp, 31
  %i.bs = lshr i64 %i.br, 3
  %i.bt = and i64 %i.bs, 1073741820
  %i.bu = add nuw nsw i64 %i.bt, %i.bq
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bo, i64 noundef %i.bu, i64 noundef 8) #23
  br label %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit1, %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !737 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit2, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !749
  %i.ca = zext i32 %i.bw to i64                   ; 2 uses
  %i.cb = shl nuw nsw i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.ca, 31
  %i.cd = lshr i64 %i.cc, 3
  %i.ce = and i64 %i.cd, 1073741820
  %i.cf = add nuw nsw i64 %i.ce, %i.cb
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bz, i64 noundef %i.cf, i64 noundef 8) #23
  br label %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit2

_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit2: ; preds = %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit, %bb.k
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !731 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %_ZN4llvm8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit2
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !732
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !733
  %i.cn = zext i32 %i.ci to i64
  %i.co = add nuw nsw i64 %i.cn, 31
  %i.cp = lshr i64 %i.co, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.i.i
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !478 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i3

.lr.ph.i.i3:                                      ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.cs = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.l

bb.l:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i3
  %.0.i3.i.i = phi i32 [ %i.cr, %.lr.ph.i.i3 ], [ %i.db, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ct = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.cu = or disjoint i32 %i.ct, %i.cs
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [40 x i8], ptr %i.ck, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !176
  %.not.i.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  tail call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cz) #23
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.m, %bb.l
  %i.da = add i32 %.0.i3.i.i, -1
  %i.db = and i32 %i.da, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.db, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.l, !llvm.loop !734

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i4 = icmp eq i64 %indvars.iv.next.i.i, %i.cp
  br i1 %.not.i.i.i4, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !735

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.ch, align 4, !tbaa !731 ; 2 uses
  %i.dc = icmp eq i32 %.pr.i, 0
  br i1 %i.dc, label %_ZN4llvm8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEv.exit.i
  %i.dd = load ptr, ptr %i.cg, align 8, !tbaa !732
  %i.de = zext i32 %.pr.i to i64                  ; 2 uses
  %i.df = mul nuw nsw i64 %i.de, 40
  %i.dg = add nuw nsw i64 %i.de, 31
  %i.dh = lshr i64 %i.dg, 3
  %i.di = and i64 %i.dh, 1073741820
  %i.dj = add nuw nsw i64 %i.di, %i.df
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.dd, i64 noundef %i.dj, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEED2Ev.exit

_ZN4llvm8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEED2Ev.exit: ; preds = %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit2, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEv.exit.i, %bb.n
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm4Loop22isRecursivelyLCSSAFormERKNS_13DominatorTreeERKNS_8LoopInfoEb(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(204), ptr noundef nonnull align 8 dereferenceable(184), i1 noundef zeroext) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE12getExitBlockEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #4

declare noundef i32 @_ZN4llvm21rewriteLoopExitValuesEPNS_4LoopEPNS_8LoopInfoEPNS_17TargetLibraryInfoEPNS_15ScalarEvolutionEPKNS_19TargetTransformInfoERNS_12SCEVExpanderEPNS_13DominatorTreeENS_14ReplaceExitValERNS_11SmallVectorINS_14WeakTrackingVHELj16EEE(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(752), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(400)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_114DVIRecoveryRec5clearEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(152) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !21  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %.val9 = load i32, ptr %i.b, align 8, !tbaa !50 ; 2 uses
  %i.c = zext i32 %.val9 to i64
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  %.not11 = icmp eq i32 %.val9, 0
  br i1 %.not11, label %_ZN4llvm15SmallVectorImplISt10unique_ptrIN12_GLOBAL__N_119SCEVDbgValueBuilderESt14default_deleteIS3_EEE5clearEv.exit, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_119SCEVDbgValueBuilderESt14default_deleteIS1_EE5resetEPS1_.exit
  %.val.i.pre = load ptr, ptr %i.a, align 8, !tbaa !21 ; 2 uses
  %.val2.i.pre = load i32, ptr %i.b, align 8, !tbaa !50 ; 2 uses
  %.not4.i.i = icmp eq i32 %.val2.i.pre, 0
  br i1 %.not4.i.i, label %_ZN4llvm15SmallVectorImplISt10unique_ptrIN12_GLOBAL__N_119SCEVDbgValueBuilderESt14default_deleteIS3_EEE5clearEv.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %._crit_edge
  %i.e = zext i32 %.val2.i.pre to i64
  %.idx.i = shl nuw nsw i64 %i.e, 3
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_119SCEVDbgValueBuilderESt14default_deleteIS1_EED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.g, %_ZNSt10unique_ptrIN12_GLOBAL__N_119SCEVDbgValueBuilderESt14default_deleteIS1_EED2Ev.exit.i.i ], [ %i.f, %.lr.ph.i.preheader.i ]
  %i.g = getelementptr inbounds i8, ptr %.05.i.i, i64 -8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !145  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_119SCEVDbgValueBuilderESt14default_deleteIS1_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN4llvm11SmallVectorIPNS_5ValueELj2EED2Ev.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.j) #23
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj2EED2Ev.exit.i.i.i.i.i

_ZN4llvm11SmallVectorIPNS_5ValueELj2EED2Ev.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt14default_deleteIN12_GLOBAL__N_119SCEVDbgValueBuilderEEclEPS1_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj2EED2Ev.exit.i.i.i.i.i
  tail call void @free(ptr noundef %i.m) #23
  br label %_ZNKSt14default_deleteIN12_GLOBAL__N_119SCEVDbgValueBuilderEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_119SCEVDbgValueBuilderEEclEPS1_.exit.i.i.i: ; preds = %bb.d, %_ZN4llvm11SmallVectorIPNS_5ValueELj2EED2Ev.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 96) #25
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_119SCEVDbgValueBuilderESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN12_GLOBAL__N_119SCEVDbgValueBuilderESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_119SCEVDbgValueBuilderEEclEPS1_.exit.i.i.i, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.val.i.pre, %i.g
  br i1 %.not.i.i, label %_ZN4llvm15SmallVectorImplISt10unique_ptrIN12_GLOBAL__N_119SCEVDbgValueBuilderESt14default_deleteIS3_EEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !147

_ZN4llvm15SmallVectorImplISt10unique_ptrIN12_GLOBAL__N_119SCEVDbgValueBuilderESt14default_deleteIS3_EEE5clearEv.exit: ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_119SCEVDbgValueBuilderESt14default_deleteIS1_EED2Ev.exit.i.i, %bb.a, %._crit_edge
  store i32 0, ptr %i.b, align 8, !tbaa !50
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZNSt10unique_ptrIN12_GLOBAL__N_119SCEVDbgValueBuilderESt14default_deleteIS1_EE5resetEPS1_.exit
  %.012 = phi ptr [ %i.x, %_ZNSt10unique_ptrIN12_GLOBAL__N_119SCEVDbgValueBuilderESt14default_deleteIS1_EE5resetEPS1_.exit ], [ %.val, %bb.a ] ; 3 uses
  %i.p = load ptr, ptr %.012, align 8, !tbaa !145 ; 6 uses
  store ptr null, ptr %.012, align 8, !tbaa !145
  %.not.i.i10 = icmp eq ptr %i.p, null
  br i1 %.not.i.i10, label %_ZNSt10unique_ptrIN12_GLOBAL__N_119SCEVDbgValueBuilderESt14default_deleteIS1_EE5resetEPS1_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN4llvm11SmallVectorIPNS_5ValueELj2EED2Ev.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef %i.r) #23
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj2EED2Ev.exit.i.i.i.i

_ZN4llvm11SmallVectorIPNS_5ValueELj2EED2Ev.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !21   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNKSt14default_deleteIN12_GLOBAL__N_119SCEVDbgValueBuilderEEclEPS1_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj2EED2Ev.exit.i.i.i.i
  tail call void @free(ptr noundef %i.u) #23
  br label %_ZNKSt14default_deleteIN12_GLOBAL__N_119SCEVDbgValueBuilderEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_119SCEVDbgValueBuilderEEclEPS1_.exit.i.i: ; preds = %bb.g, %_ZN4llvm11SmallVectorIPNS_5ValueELj2EED2Ev.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 96) #25
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_119SCEVDbgValueBuilderESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN12_GLOBAL__N_119SCEVDbgValueBuilderESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN12_GLOBAL__N_119SCEVDbgValueBuilderEEclEPS1_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.012, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare noundef zeroext i1 @_ZNK4llvm17DbgVariableRecord14isKillLocationEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #4

declare noundef i32 @_ZNK4llvm17DbgVariableRecord25getNumVariableLocationOpsEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #4

declare void @_ZNK4llvm17DbgVariableRecord12location_opsEv(ptr dead_on_unwind writable sret(%"class.llvm::iterator_range.331") align 8, ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !51
  %.not = icmp ult i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !166

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = zext i32 %i.b to i64
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  store ptr %1, ptr %i.g, align 1
  %i.h = load i32, ptr %i.a, align 8, !tbaa !50
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !50
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare noundef ptr @_ZN4llvm15ScalarEvolution7getSCEVEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1152), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt10unique_ptrIN12_GLOBAL__N_114DVIRecoveryRecESt14default_deleteIS1_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !143    ; 11 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.j, label %bb.b
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_111LSRInstance24GenerateAllReuseFormulaeEv:bb.a
  %.011.us.i128.i.i.i.i.i = load ptr, ptr %.in.us.i127.i.i.i.i.i, align 8, !tbaa !837 ; 2 uses
  %.not.us.i129.i.i.i.i.i = icmp eq ptr %.011.us.i128.i.i.i.i.i, null
  br i1 %.not.us.i129.i.i.i.i.i, label %._crit_edge.i104.i.i.i.i.i, label %.lr.ph.split.us.i121.i.i.i.i.i, !llvm.loop !841

.lr.ph.split.i94.i.i.i.i.i:                       ; preds = %_ZNK12_GLOBAL__N_123KeyOrderTargetImmediateclERKNS_9ImmediateES3_.exit90.thread36.thread.i.i.i.i.i, %.lr.ph.split.i94.i.i.i.i.i
  %.01127.i95.i.i.i.i.i = phi ptr [ %.011.i102.i.i.i.i.i, %.lr.ph.split.i94.i.i.i.i.i ], [ %.01125.i9165.i.i.i.i.i, %_ZNK12_GLOBAL__N_123KeyOrderTargetImmediateclERKNS_9ImmediateES3_.exit90.thread36.thread.i.i.i.i.i ] ; 4 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %.01127.i95.i.i.i.i.i, i64 32
  %.val13.i96.i.i.i.i.i = load i64, ptr %i.agq, align 8
  %i.agr = getelementptr i8, ptr %.01127.i95.i.i.i.i.i, i64 40
  %.val14.i97.i.i.i.i.i = load i8, ptr %i.agr, align 8
  %i.ags = trunc nuw i8 %.val14.i97.i.i.i.i.i to i1
  %.old.i98.i.i.i.i.i = icmp slt i64 %.fca.0.extract170.i, %.val13.i96.i.i.i.i.i
  %or.cond21.i99.i.i.i.i.i = select i1 %i.ags, i1 true, i1 %.old.i98.i.i.i.i.i ; 2 uses
  %.in.v.i100.i.i.i.i.i = select i1 %or.cond21.i99.i.i.i.i.i, i64 16, i64 24
  %.in.i101.i.i.i.i.i = getelementptr i8, ptr %.01127.i95.i.i.i.i.i, i64 %.in.v.i100.i.i.i.i.i
  %.011.i102.i.i.i.i.i = load ptr, ptr %.in.i101.i.i.i.i.i, align 8, !tbaa !837 ; 2 uses
  %.not.i103.i.i.i.i.i = icmp eq ptr %.011.i102.i.i.i.i.i, null
  br i1 %.not.i103.i.i.i.i.i, label %._crit_edge.i104.i.i.i.i.i, label %.lr.ph.split.i94.i.i.i.i.i, !llvm.loop !841

._crit_edge.i104.i.i.i.i.i:                       ; preds = %.lr.ph.split.i94.i.i.i.i.i, %.lr.ph.split.us.i121.i.i.i.i.i
  %.010.lcssa.i105.i.i.i.i.i = phi ptr [ %.01127.us.i122.i.i.i.i.i, %.lr.ph.split.us.i121.i.i.i.i.i ], [ %.01127.i95.i.i.i.i.i, %.lr.ph.split.i94.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i106.i.i.i.i.i = phi i1 [ %or.cond.us.i125.i.i.i.i.i, %.lr.ph.split.us.i121.i.i.i.i.i ], [ %or.cond21.i99.i.i.i.i.i, %.lr.ph.split.i94.i.i.i.i.i ]
  br i1 %.0.lcssa.i106.i.i.i.i.i, label %._crit_edge.thread.i118.i.i.i.i.i, label %bb.fy

._crit_edge.thread.i118.i.i.i.i.i:                ; preds = %._crit_edge.i104.i.i.i.i.i, %_ZNK12_GLOBAL__N_123KeyOrderTargetImmediateclERKNS_9ImmediateES3_.exit90.thread36.thread.i.i.i.i.i, %_ZNK12_GLOBAL__N_123KeyOrderTargetImmediateclERKNS_9ImmediateES3_.exit90.thread36.i.i.i.i.i
  %.010.lcssa34.i119.i.i.i.i.i = phi ptr [ %.010.lcssa.i105.i.i.i.i.i, %._crit_edge.i104.i.i.i.i.i ], [ %i.add, %_ZNK12_GLOBAL__N_123KeyOrderTargetImmediateclERKNS_9ImmediateES3_.exit90.thread36.i.i.i.i.i ], [ %i.add, %_ZNK12_GLOBAL__N_123KeyOrderTargetImmediateclERKNS_9ImmediateES3_.exit90.thread36.thread.i.i.i.i.i ] ; 4 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i765.i, i64 32
  %.val17.i120.i.i.i.i.i = load ptr, ptr %i.agt, align 8, !tbaa !215
  %i.agu = icmp eq ptr %.010.lcssa34.i119.i.i.i.i.i, %.val17.i120.i.i.i.i.i
  br i1 %i.agu, label %_ZNSt8_Rb_treeIN12_GLOBAL__N_19ImmediateESt4pairIKS1_PKN4llvm4SCEVEESt10_Select1stIS8_ENS0_23KeyOrderTargetImmediateESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS3_.exit.thread.i.i.i.i, label %bb.fx

bb.fx:                                            ; preds = %._crit_edge.thread.i118.i.i.i.i.i
  %i.agv = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.010.lcssa34.i119.i.i.i.i.i) #26
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %._crit_edge.i104.i.i.i.i.i
  %.010.lcssa33.i107.i.i.i.i.i = phi ptr [ %.010.lcssa34.i119.i.i.i.i.i, %bb.fx ], [ %.010.lcssa.i105.i.i.i.i.i, %._crit_edge.i104.i.i.i.i.i ] ; 2 uses
  %.sroa.01.0.i108.i.i.i.i.i = phi ptr [ %i.agv, %bb.fx ], [ %.010.lcssa.i105.i.i.i.i.i, %._crit_edge.i104.i.i.i.i.i ] ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i108.i.i.i.i.i, i64 32
  %.val7.i109.i.i.i.i.i = load i64, ptr %i.agw, align 8
  %i.agx = getelementptr i8, ptr %.sroa.01.0.i108.i.i.i.i.i, i64 40
  %.val8.i110.i.i.i.i.i = load i8, ptr %i.agx, align 8, !tbaa !813, !range !18, !noundef !19
  %i.agy = trunc nuw i8 %.val8.i110.i.i.i.i.i to i1
  %i.agz = icmp slt i64 %.val7.i109.i.i.i.i.i, %.fca.0.extract170.i ; 2 uses
  br i1 %i.agy, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %or.cond23.i117.i.i.i.i.i = select i1 %i.afa, i1 %i.agz, i1 false
  br i1 %or.cond23.i117.i.i.i.i.i, label %_ZNSt8_Rb_treeIN12_GLOBAL__N_19ImmediateESt4pairIKS1_PKN4llvm4SCEVEESt10_Select1stIS8_ENS0_23KeyOrderTargetImmediateESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS3_.exit.thread.i.i.i.i, label %_ZNSt8_Rb_treeIN12_GLOBAL__N_19ImmediateESt4pairIKS1_PKN4llvm4SCEVEESt10_Select1stIS8_ENS0_23KeyOrderTargetImmediateESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS3_.exit.thread21.i.i.i.i

bb.ga:                                            ; preds = %bb.fy
  %or.cond24.i111.i.i.i.i.i = select i1 %i.afa, i1 true, i1 %i.agz
  br i1 %or.cond24.i111.i.i.i.i.i, label %_ZNSt8_Rb_treeIN12_GLOBAL__N_19ImmediateESt4pairIKS1_PKN4llvm4SCEVEESt10_Select1stIS8_ENS0_23KeyOrderTargetImmediateESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS3_.exit.thread.i.i.i.i, label %_ZNSt8_Rb_treeIN12_GLOBAL__N_19ImmediateESt4pairIKS1_PKN4llvm4SCEVEESt10_Select1stIS8_ENS0_23KeyOrderTargetImmediateESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS3_.exit.thread21.i.i.i.i

_ZNSt8_Rb_treeIN12_GLOBAL__N_19ImmediateESt4pairIKS1_PKN4llvm4SCEVEESt10_Select1stIS8_ENS0_23KeyOrderTargetImmediateESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS3_.exit.i.i.i.i: ; preds = %_ZNK12_GLOBAL__N_123KeyOrderTargetImmediateclERKNS_9ImmediateES3_.exit87.thread.i.i.i.i.i, %_ZNK12_GLOBAL__N_123KeyOrderTargetImmediateclERKNS_9ImmediateES3_.exit41.thread.i.i.i.i.i
  %.sroa.021.2.i.i.i.i.i = phi ptr [ null, %_ZNK12_GLOBAL__N_123KeyOrderTargetImmediateclERKNS_9ImmediateES3_.exit87.thread.i.i.i.i.i ], [ %.08.lcssa.i.i.i26.i.i, %_ZNK12_GLOBAL__N_123KeyOrderTargetImmediateclERKNS_9ImmediateES3_.exit41.thread.i.i.i.i.i ]
  %.sroa.12.2.i.i.i.i.i = phi ptr [ %i.agd, %_ZNK12_GLOBAL__N_123KeyOrderTargetImmediateclERKNS_9ImmediateES3_.exit87.thread.i.i.i.i.i ], [ %i.aff, %_ZNK12_GLOBAL__N_123KeyOrderTargetImmediateclERKNS_9ImmediateES3_.exit41.thread.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i231 = icmp eq ptr %.sroa.12.2.i.i.i.i.i, null
  br i1 %.not.i.i.i.i231, label %_ZNSt8_Rb_treeIN12_GLOBAL__N_19ImmediateESt4pairIKS1_PKN4llvm4SCEVEESt10_Select1stIS8_ENS0_23KeyOrderTargetImmediateESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS3_.exit.thread21.i.i.i.i, label %_ZNSt8_Rb_treeIN12_GLOBAL__N_19ImmediateESt4pairIKS1_PKN4llvm4SCEVEESt10_Select1stIS8_ENS0_23KeyOrderTargetImmediateESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS3_.exit.thread.i.i.i.i

_ZNSt8_Rb_treeIN12_GLOBAL__N_19ImmediateESt4pairIKS1_PKN4llvm4SCEVEESt10_Select1stIS8_ENS0_23KeyOrderTargetImmediateESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS3_.exit.thread.i.i.i.i: ; preds = %_ZNSt8_Rb_treeIN12_GLOBAL__N_19ImmediateESt4pairIKS1_PKN4llvm4SCEVEESt10_Select1stIS8_ENS0_23KeyOrderTargetImmediateESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS3_.exit.i.i.i.i, %bb.ga, %bb.fz, %._crit_edge.thread.i118.i.i.i.i.i, %_ZNK12_GLOBAL__N_123KeyOrderTargetImmediateclERKNS_9ImmediateES3_.exit90.thread.i.i.i.i.i, %bb.ft, %bb.fs, %._crit_edge.thread.i72.i.i.i.i.i, %_ZNK12_GLOBAL__N_123KeyOrderTargetImmediateclERKNS_9ImmediateES3_.exit44.thread.i.i.i.i.i, %bb.fj, %bb.fi, %._crit_edge.thread.i.i.i.i.i.i, %bb.ff, %bb.fe
  %.sroa.12.2.i18.i.i.i.i = phi ptr [ %.sroa.12.2.i.i.i.i.i, %_ZNSt8_Rb_treeIN12_GLOBAL__N_19ImmediateESt4pairIKS1_PKN4llvm4SCEVEESt10_Select1stIS8_ENS0_23KeyOrderTargetImmediateESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS3_.exit.i.i.i.i ], [ %.010.lcssa33.i107.i.i.i.i.i, %bb.ga ], [ %.010.lcssa33.i107.i.i.i.i.i, %bb.fz ], [ %.010.lcssa34.i119.i.i.i.i.i, %._crit_edge.thread.i118.i.i.i.i.i ], [ %.010.lcssa33.i61.i.i.i.i.i, %bb.fs ], [ %.010.lcssa34.i73.i.i.i.i.i, %._crit_edge.thread.i72.i.i.i.i.i ], [ %.010.lcssa33.i.i.i.i.i.i, %bb.fi ], [ %.010.lcssa34.i.i.i.i.i.i, %._crit_edge.thread.i.i.i.i.i.i ], [ %.010.lcssa33.i61.i.i.i.i.i, %bb.ft ], [ %i.aed, %bb.ff ], [ %.010.lcssa33.i.i.i.i.i.i, %bb.fj ], [ %spec.select49.i.i.i.i.i, %_ZNK12_GLOBAL__N_123KeyOrderTargetImmediateclERKNS_9ImmediateES3_.exit90.thread.i.i.i.i.i ], [ %i.aed, %bb.fe ], [ %spec.select44.i.i.i.i.i, %_ZNK12_GLOBAL__N_123KeyOrderTargetImmediateclERKNS_9ImmediateES3_.exit44.thread.i.i.i.i.i ] ; 4 uses
  %.sroa.021.2.i17.i.i.i.i = phi ptr [ %.sroa.021.2.i.i.i.i.i, %_ZNSt8_Rb_treeIN12_GLOBAL__N_19ImmediateESt4pairIKS1_PKN4llvm4SCEVEESt10_Select1stIS8_ENS0_23KeyOrderTargetImmediateESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS3_.exit.i.i.i.i ], [ null, %bb.ga ], [ null, %bb.fz ], [ null, %._crit_edge.thread.i118.i.i.i.i.i ], [ null, %bb.fs ], [ null, %._crit_edge.thread.i72.i.i.i.i.i ], [ null, %bb.fi ], [ null, %._crit_edge.thread.i.i.i.i.i.i ], [ null, %bb.ft ], [ null, %bb.ff ], [ null, %bb.fj ], [ %spec.select48.i.i.i.i.i, %_ZNK12_GLOBAL__N_123KeyOrderTargetImmediateclERKNS_9ImmediateES3_.exit90.thread.i.i.i.i.i ], [ null, %bb.fe ], [ %spec.select.i.i.i.i.i, %_ZNK12_GLOBAL__N_123KeyOrderTargetImmediateclERKNS_9ImmediateES3_.exit44.thread.i.i.i.i.i ]
  %.not.i.i8.i.i.i.i = icmp ne ptr %.sroa.021.2.i17.i.i.i.i, null
  %i.aha = icmp eq ptr %.sroa.12.2.i18.i.i.i.i, %i.add
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i8.i.i.i.i, i1 true, i1 %i.aha
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ge, label %bb.gb

bb.gb:                                            ; preds = %_ZNSt8_Rb_treeIN12_GLOBAL__N_19ImmediateESt4pairIKS1_PKN4llvm4SCEVEESt10_Select1stIS8_ENS0_23KeyOrderTargetImmediateESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS3_.exit.thread.i.i.i.i
  %i.ahb = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i18.i.i.i.i, i64 32
  %.val9.i.i.i.i.i.i = load i64, ptr %i.ahb, align 8
  %i.ahc = getelementptr i8, ptr %.sroa.12.2.i18.i.i.i.i, i64 40
  %.val10.i.i.i.i.i.i = load i8, ptr %i.ahc, align 8
  %i.ahd = trunc nuw i8 %.fca.1.extract171.i to i1
  %i.ahe = trunc nuw i8 %.val10.i.i.i.i.i.i to i1 ; 2 uses
  br i1 %i.ahd, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  br i1 %i.ahe, label %.thread.i.i.i.i.i.i.i, label %bb.ge

bb.gd:                                            ; preds = %bb.gb
  br i1 %i.ahe, label %bb.ge, label %.thread.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.gd, %bb.gc
  %i.ahf = icmp slt i64 %.fca.0.extract170.i, %.val9.i.i.i.i.i.i
  br label %bb.ge

bb.ge:                                            ; preds = %.thread.i.i.i.i.i.i.i, %bb.gd, %bb.gc, %_ZNSt8_Rb_treeIN12_GLOBAL__N_19ImmediateESt4pairIKS1_PKN4llvm4SCEVEESt10_Select1stIS8_ENS0_23KeyOrderTargetImmediateESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS3_.exit.thread.i.i.i.i
  %i.ahg = phi i1 [ true, %bb.gd ], [ true, %_ZNSt8_Rb_treeIN12_GLOBAL__N_19ImmediateESt4pairIKS1_PKN4llvm4SCEVEESt10_Select1stIS8_ENS0_23KeyOrderTargetImmediateESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS3_.exit.thread.i.i.i.i ], [ %i.ahf, %.thread.i.i.i.i.i.i.i ], [ false, %bb.gc ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ahg, ptr noundef nonnull %i.ady, ptr noundef nonnull %.sroa.12.2.i18.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.add) #23
  %i.ahh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i765.i, i64 48 ; 2 uses
  %i.ahi = load i64, ptr %i.ahh, align 8, !tbaa !217
  %i.ahj = add i64 %i.ahi, 1
  store i64 %i.ahj, ptr %i.ahh, align 8, !tbaa !217
  br label %_ZNSt3mapIN12_GLOBAL__N_19ImmediateEPKN4llvm4SCEVENS0_23KeyOrderTargetImmediateESaISt4pairIKS1_S5_EEE6insertIS7_IS1_S5_EEENSt9enable_ifIXsr16is_constructibleIS9_T_EE5valueES7_ISt17_Rb_tree_iteratorIS9_EbEE4typeEOSF_.exit.i

_ZNSt8_Rb_treeIN12_GLOBAL__N_19ImmediateESt4pairIKS1_PKN4llvm4SCEVEESt10_Select1stIS8_ENS0_23KeyOrderTargetImmediateESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS3_.exit.thread21.i.i.i.i: ; preds = %_ZNSt8_Rb_treeIN12_GLOBAL__N_19ImmediateESt4pairIKS1_PKN4llvm4SCEVEESt10_Select1stIS8_ENS0_23KeyOrderTargetImmediateESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS3_.exit.i.i.i.i, %bb.ga, %bb.fz, %_ZNK12_GLOBAL__N_123KeyOrderTargetImmediateclERKNS_9ImmediateES3_.exit87.i.i.i.i.i, %bb.ft, %bb.fs, %bb.fj, %bb.fi
  call void @_ZdlPvm(ptr noundef nonnull %i.ady, i64 noundef 56) #25
  br label %_ZNSt3mapIN12_GLOBAL__N_19ImmediateEPKN4llvm4SCEVENS0_23KeyOrderTargetImmediateESaISt4pairIKS1_S5_EEE6insertIS7_IS1_S5_EEENSt9enable_ifIXsr16is_constructibleIS9_T_EE5valueES7_ISt17_Rb_tree_iteratorIS9_EbEE4typeEOSF_.exit.i

_ZNSt3mapIN12_GLOBAL__N_19ImmediateEPKN4llvm4SCEVENS0_23KeyOrderTargetImmediateESaISt4pairIKS1_S5_EEE6insertIS7_IS1_S5_EEENSt9enable_ifIXsr16is_constructibleIS9_T_EE5valueES7_ISt17_Rb_tree_iteratorIS9_EbEE4typeEOSF_.exit.i: ; preds = %_ZNSt8_Rb_treeIN12_GLOBAL__N_19ImmediateESt4pairIKS1_PKN4llvm4SCEVEESt10_Select1stIS8_ENS0_23KeyOrderTargetImmediateESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS3_.exit.thread21.i.i.i.i, %bb.ge, %bb.fb, %.thread.i.i
  %i.ahk = load ptr, ptr %i.yz, align 8, !tbaa !476, !noalias !842 ; 2 uses
  %i.ahl = load ptr, ptr %i.zi, align 8, !tbaa !477, !noalias !842 ; 2 uses
  %i.ahm = load i32, ptr %i.zj, align 4, !tbaa !475, !noalias !842 ; 3 uses
  %i.ahn = icmp eq i32 %i.ahm, 0
  br i1 %i.ahn, label %.loopexit.i.i.i318.i, label %bb.gf

bb.gf:                                            ; preds = %_ZNSt3mapIN12_GLOBAL__N_19ImmediateEPKN4llvm4SCEVENS0_23KeyOrderTargetImmediateESaISt4pairIKS1_S5_EEE6insertIS7_IS1_S5_EEENSt9enable_ifIXsr16is_constructibleIS9_T_EE5valueES7_ISt17_Rb_tree_iteratorIS9_EbEE4typeEOSF_.exit.i
  %i.aho = add i32 %i.ahm, -1                     ; 2 uses
  %i.ahp = mul i64 %i.aam, -4658895280553007687   ; 2 uses
  %i.ahq = lshr i64 %i.ahp, 31
  %i.ahr = xor i64 %i.ahq, %i.ahp
  %i.ahs = trunc i64 %i.ahr to i32
  %i.aht = and i32 %i.aho, %i.ahs                 ; 3 uses
  %i.ahu = zext i32 %i.aht to i64                 ; 2 uses
  %i.ahv = lshr i64 %i.ahu, 5
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %i.ahv
  %i.ahx = load i32, ptr %i.ahw, align 4, !tbaa !478, !noalias !851
  %i.ahy = and i32 %i.aht, 31
  %i.ahz = lshr i32 %i.ahx, %i.ahy
  %i.aia = trunc i32 %i.ahz to i1
  br i1 %i.aia, label %.lr.ph.i.i.i.i319.i, label %.loopexit.i.i.i318.i, !prof !625

.lr.ph.i.i.i.i319.i:                              ; preds = %bb.gf, %bb.gg
  %i.aib = phi i64 [ %i.aih, %bb.gg ], [ %i.ahu, %bb.gf ] ; 2 uses
  %.03.i.i.i.i.i = phi i32 [ %i.aig, %bb.gg ], [ %i.aht, %bb.gf ]
  %i.aic = getelementptr inbounds nuw [16 x i8], ptr %i.ahk, i64 %i.aib
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !456, !noalias !851
  %i.aie = icmp eq ptr %i.aal, %i.aid
  br i1 %i.aie, label %_ZNK12_GLOBAL__N_113RegUseTracker16getUsedByIndicesEPKN4llvm4SCEVE.exit.i, label %bb.gg, !prof !166

bb.gg:                                            ; preds = %.lr.ph.i.i.i.i319.i
  %i.aif = add nuw i32 %.03.i.i.i.i.i, 1
  %i.aig = and i32 %i.aif, %i.aho                 ; 3 uses
  %i.aih = zext i32 %i.aig to i64                 ; 2 uses
  %i.aii = lshr i64 %i.aih, 5
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %i.aii
  %i.aik = load i32, ptr %i.aij, align 4, !tbaa !478, !noalias !851
  %i.ail = and i32 %i.aig, 31
  %i.aim = lshr i32 %i.aik, %i.ail
  %i.ain = trunc i32 %i.aim to i1
  br i1 %i.ain, label %.lr.ph.i.i.i.i319.i, label %.loopexit.i.i.i318.i, !prof !626

.loopexit.i.i.i318.i:                             ; preds = %bb.gg, %bb.gf, %_ZNSt3mapIN12_GLOBAL__N_19ImmediateEPKN4llvm4SCEVENS0_23KeyOrderTargetImmediateESaISt4pairIKS1_S5_EEE6insertIS7_IS1_S5_EEENSt9enable_ifIXsr16is_constructibleIS9_T_EE5valueES7_ISt17_Rb_tree_iteratorIS9_EbEE4typeEOSF_.exit.i
  %i.aio = zext i32 %i.ahm to i64
  br label %_ZNK12_GLOBAL__N_113RegUseTracker16getUsedByIndicesEPKN4llvm4SCEVE.exit.i

_ZNK12_GLOBAL__N_113RegUseTracker16getUsedByIndicesEPKN4llvm4SCEVE.exit.i: ; preds = %.lr.ph.i.i.i.i319.i, %.loopexit.i.i.i318.i
  %i.aip = phi i64 [ %i.aio, %.loopexit.i.i.i318.i ], [ %i.aib, %.lr.ph.i.i.i.i319.i ]
  %i.aiq = getelementptr inbounds nuw [16 x i8], ptr %i.ahk, i64 %i.aip
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %.0.copyload.i.i.i.i320.i = load i64, ptr %14, align 8
  %i.ais = and i64 %.0.copyload.i.i.i.i320.i, -8
  %i.ait = inttoptr i64 %i.ais to ptr
  store ptr %i.ait, ptr %i.b, align 8, !tbaa !456
  %i.aiu = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.aiu, 0
  %i.aiv = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %i.aiw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm14SmallBitVectoroRERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.aiv, ptr noundef nonnull align 8 dereferenceable(8) %i.air) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.aix = getelementptr inbounds nuw i8, ptr %.0184861.i, i64 8 ; 2 uses
  %.not.i202 = icmp eq ptr %i.aix, %i.zd
  br i1 %.not.i202, label %._crit_edge.loopexit.i, label %bb.eu

._crit_edge874.i:                                 ; preds = %.loopexit839.i, %._crit_edge.i204
  %i.aiy = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %.val5.i.i = load i32, ptr %i.aiy, align 8, !tbaa !836 ; 3 uses
  %i.aiz = icmp eq i32 %.val5.i.i, 0
  br i1 %i.aiz, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E5clearEv.exit.i, label %bb.gh

bb.gh:                                            ; preds = %._crit_edge874.i
  %i.aja = shl i32 %.val5.i.i, 2
  %i.ajb = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %.val2.i.i = load i32, ptr %i.ajb, align 4, !tbaa !832 ; 6 uses
  %i.ajc = icmp ult i32 %i.aja, %.val2.i.i
  br i1 %i.ajc, label %bb.gi, label %bb.gm

bb.gi:                                            ; preds = %bb.gh
  %i.ajd = icmp ugt i32 %.val2.i.i, 64
  %.val4.i.i.pre939.i = load ptr, ptr %11, align 8, !tbaa !819 ; 3 uses
  br i1 %i.ajd, label %.lr.ph11.preheader.i.i.i.i, label %.lr.ph11.preheader.i.i.i

.lr.ph11.preheader.i.i.i.i:                       ; preds = %bb.gi
  %i.aje = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %.val3.i.i.i322.i = load ptr, ptr %i.aje, align 8, !tbaa !831 ; 2 uses
  %i.ajf = zext i32 %.val2.i.i to i64             ; 2 uses
  %i.ajg = add nuw nsw i64 %i.ajf, 31             ; 3 uses
  %i.ajh = lshr i64 %i.ajg, 5
  br label %.lr.ph11.i.i.i.i

.lr.ph11.i.i.i.i:                                 ; preds = %._crit_edge.i.i.i.i, %.lr.ph11.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph11.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.aji = getelementptr inbounds nuw [4 x i8], ptr %.val3.i.i.i322.i, i64 %indvars.iv.i.i.i.i
  %i.ajj = load i32, ptr %i.aji, align 4, !tbaa !478 ; 2 uses
  %.not11.i6.i.i.i.i = icmp eq i32 %i.ajj, 0
  br i1 %.not11.i6.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph11.i.i.i.i
  %indvars.iv.tr.i.i.i.i = trunc nuw i64 %indvars.iv.i.i.i.i to i32
  %i.ajk = shl nuw i32 %indvars.iv.tr.i.i.i.i, 5
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gj, %.lr.ph.i.i.i.i
  %.0.i7.i.i.i.i = phi i32 [ %i.ajj, %.lr.ph.i.i.i.i ], [ %i.ajr, %bb.gj ] ; 3 uses
  %i.ajl = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i7.i.i.i.i, i1 true)
  %i.ajm = or disjoint i32 %i.ajl, %i.ajk
  %i.ajn = zext i32 %i.ajm to i64
  %i.ajo = getelementptr inbounds nuw [56 x i8], ptr %.val4.i.i.pre939.i, i64 %i.ajn
  %i.ajp = getelementptr i8, ptr %i.ajo, i64 24
  %.val.i.i.i.i323.i = load ptr, ptr %i.ajp, align 8, !tbaa !214
  call fastcc void @_ZNSt8_Rb_treeIN12_GLOBAL__N_19ImmediateESt4pairIKS1_PKN4llvm4SCEVEESt10_Select1stIS8_ENS0_23KeyOrderTargetImmediateESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef %.val.i.i.i.i323.i)
  %i.ajq = add i32 %.0.i7.i.i.i.i, -1
  %i.ajr = and i32 %i.ajq, %.0.i7.i.i.i.i         ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i32 %i.ajr, 0
  br i1 %.not11.i.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.gj, !llvm.loop !852

._crit_edge.i.i.i.i:                              ; preds = %bb.gj, %.lr.ph11.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i324.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ajh
  br i1 %.not.i.i.i.i324.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E10destroyAllEv.exit.i.i.i, label %.lr.ph11.i.i.i.i, !llvm.loop !853

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E10destroyAllEv.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %i.ajs = add i32 %.val5.i.i, -1
  %i.ajt = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ajs, i1 false)
  %i.aju = sub nuw nsw i32 33, %i.ajt
  %i.ajv = shl nuw i32 1, %i.aju                  ; 2 uses
  %.not.i.i.i228 = icmp eq i32 %i.ajv, %.val2.i.i
  br i1 %.not.i.i.i228, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E10destroyAllEv.exit.i.i.i
  store i32 0, ptr %i.aiy, align 8, !tbaa !836
  %i.ajw = lshr i64 %i.ajg, 3
  %i.ajx = and i64 %i.ajw, 1073741820
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.val3.i.i.i322.i, i8 0, i64 %i.ajx, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E5clearEv.exit.i

bb.gl:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E10destroyAllEv.exit.i.i.i
  %.sroa.speculated.i.i.i.i = call i32 @llvm.umax.i32(i32 %i.ajv, i32 64) ; 2 uses
  %.sroa.39.0.insert.ext.i.i.i.i = zext i32 %.sroa.speculated.i.i.i.i to i64 ; 2 uses
  %i.ajy = mul nuw nsw i64 %i.ajf, 56
  %i.ajz = lshr i64 %i.ajg, 3
  %i.aka = and i64 %i.ajz, 1073741820
  %i.akb = add nuw nsw i64 %i.aka, %i.ajy
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %.val4.i.i.pre939.i, i64 noundef %i.akb, i64 noundef 8) #23
  store i32 %.sroa.speculated.i.i.i.i, ptr %i.ajb, align 4, !tbaa !832
  %i.akc = mul nuw nsw i64 %.sroa.39.0.insert.ext.i.i.i.i, 56 ; 2 uses
  %i.akd = add nuw nsw i64 %.sroa.39.0.insert.ext.i.i.i.i, 31
  %i.ake = lshr i64 %i.akd, 3
  %i.akf = and i64 %i.ake, 1073741820             ; 2 uses
  %i.akg = add nuw nsw i64 %i.akf, %i.akc
  %i.akh = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.akg, i64 noundef 8) #23 ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 %i.akc ; 2 uses
  store ptr %i.akh, ptr %11, align 8, !tbaa !819
  store ptr %i.aki, ptr %i.aje, align 8, !tbaa !831
  store i32 0, ptr %i.aiy, align 8, !tbaa !836
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aki, i8 0, i64 %i.akf, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E5clearEv.exit.i

bb.gm:                                            ; preds = %bb.gh
  %i.akj = icmp eq i32 %.val2.i.i, 0
  br i1 %i.akj, label %._ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E10destroyAllEv.exit.i_crit_edge.i, label %..lr.ph11.preheader.i.i_crit_edge.i

._ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E10destroyAllEv.exit.i_crit_edge.i: ; preds = %bb.gm
  %.phi.trans.insert941.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.val3.i.pre.i = load ptr, ptr %.phi.trans.insert941.i, align 8, !tbaa !831
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E10destroyAllEv.exit.i.i

..lr.ph11.preheader.i.i_crit_edge.i:              ; preds = %bb.gm
  %.val4.i.i.pre.i = load ptr, ptr %11, align 8, !tbaa !819
  br label %.lr.ph11.preheader.i.i.i

.lr.ph11.preheader.i.i.i:                         ; preds = %..lr.ph11.preheader.i.i_crit_edge.i, %bb.gi
  %.val4.i.i.i = phi ptr [ %.val4.i.i.pre.i, %..lr.ph11.preheader.i.i_crit_edge.i ], [ %.val4.i.i.pre939.i, %bb.gi ]
  %i.akk = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.val3.i6.i.i = load ptr, ptr %i.akk, align 8, !tbaa !831 ; 2 uses
  %i.akl = zext i32 %.val2.i.i to i64
  %i.akm = add nuw nsw i64 %i.akl, 31             ; 2 uses
  %i.akn = lshr i64 %i.akm, 5
  br label %.lr.ph11.i.i.i

.lr.ph11.i.i.i:                                   ; preds = %._crit_edge.i.i.i, %.lr.ph11.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph11.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ako = getelementptr inbounds nuw [4 x i8], ptr %.val3.i6.i.i, i64 %indvars.iv.i.i.i
  %i.akp = load i32, ptr %i.ako, align 4, !tbaa !478 ; 2 uses
  %.not11.i6.i.i.i = icmp eq i32 %i.akp, 0
  br i1 %.not11.i6.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph11.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.akq = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gn, %.lr.ph.i.i.i
  %.0.i7.i.i.i = phi i32 [ %i.akp, %.lr.ph.i.i.i ], [ %i.akx, %bb.gn ] ; 3 uses
  %i.akr = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i7.i.i.i, i1 true)
  %i.aks = or disjoint i32 %i.akr, %i.akq
  %i.akt = zext i32 %i.aks to i64
  %i.aku = getelementptr inbounds nuw [56 x i8], ptr %.val4.i.i.i, i64 %i.akt
  %i.akv = getelementptr i8, ptr %i.aku, i64 24
  %.val.i.i.i321.i = load ptr, ptr %i.akv, align 8, !tbaa !214
  call fastcc void @_ZNSt8_Rb_treeIN12_GLOBAL__N_19ImmediateESt4pairIKS1_PKN4llvm4SCEVEESt10_Select1stIS8_ENS0_23KeyOrderTargetImmediateESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef %.val.i.i.i321.i)
  %i.akw = add i32 %.0.i7.i.i.i, -1
  %i.akx = and i32 %i.akw, %.0.i7.i.i.i           ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.akx, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.gn, !llvm.loop !852

._crit_edge.i.i.i:                                ; preds = %bb.gn, %.lr.ph11.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i7.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.akn
  br i1 %.not.i.i7.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E10destroyAllEv.exit.loopexit.i.i, label %.lr.ph11.i.i.i, !llvm.loop !853

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E10destroyAllEv.exit.loopexit.i.i: ; preds = %._crit_edge.i.i.i
  %i.aky = lshr i64 %i.akm, 3
  %i.akz = and i64 %i.aky, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E10destroyAllEv.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E10destroyAllEv.exit.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E10destroyAllEv.exit.loopexit.i.i, %._ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E10destroyAllEv.exit.i_crit_edge.i
  %.val3.i.i = phi ptr [ %.val3.i6.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E10destroyAllEv.exit.loopexit.i.i ], [ %.val3.i.pre.i, %._ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E10destroyAllEv.exit.i_crit_edge.i ]
  %.val.i.i = phi i64 [ %i.akz, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E10destroyAllEv.exit.loopexit.i.i ], [ 0, %._ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E10destroyAllEv.exit.i_crit_edge.i ]
  call void @llvm.memset.p0.i64(ptr align 4 %.val3.i.i, i8 0, i64 %.val.i.i, i1 false)
  store i32 0, ptr %i.aiy, align 8, !tbaa !836
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E5clearEv.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E5clearEv.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E10destroyAllEv.exit.i.i, %bb.gl, %bb.gk, %._crit_edge874.i
  store i32 0, ptr %i.yx, align 8, !tbaa !50
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5clearEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
  store i32 0, ptr %i.zq, align 8, !tbaa !50
  %.val.i.i.i325.i = load ptr, ptr %i.zt, align 8, !tbaa !214
  call fastcc void @_ZNSt8_Rb_treeISt4pairImN12_GLOBAL__N_19ImmediateEES3_St9_IdentityIS3_ENS1_25KeyOrderSizeTAndImmediateESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef %.val.i.i.i325.i)
  store ptr null, ptr %i.zt, align 8, !tbaa !214
  store ptr %i.zs, ptr %i.zu, align 8, !tbaa !215
  store ptr %i.zs, ptr %i.zv, align 8, !tbaa !216
  store i64 0, ptr %i.zw, align 8, !tbaa !217
  %.val288.i = load ptr, ptr %15, align 8, !tbaa !21 ; 2 uses
  %.val290.i = load i32, ptr %i.zn, align 8, !tbaa !50 ; 2 uses
  %i.ala = zext i32 %.val290.i to i64
  %.idx902.i = shl nuw nsw i64 %i.ala, 5
  %i.alb = getelementptr inbounds nuw i8, ptr %.val288.i, i64 %.idx902.i
  %.not202897.i = icmp eq i32 %.val290.i, 0
  br i1 %.not202897.i, label %._crit_edge900.i, label %.lr.ph899.i

.lr.ph899.i:                                      ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E5clearEv.exit.i
  %i.alc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.alf = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.alg = getelementptr inbounds nuw i8, ptr %20, i64 40 ; 13 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %20, i64 56 ; 4 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 11 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %20, i64 52 ; 2 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %20, i64 88 ; 7 uses
  %i.all = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 4 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %25, i64 40 ; 10 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %25, i64 56 ; 6 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %25, i64 48 ; 6 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %25, i64 52 ; 2 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %25, i64 88 ; 2 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 9 uses
  %i.als = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %25, i64 96 ; 3 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %25, i64 104 ; 3 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.alx = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.aly = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.alz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.amc = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.amd = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 4 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 4 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 4 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.amj = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.amk = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.aml = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.amn = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.amo = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 4 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %21, i64 56 ; 4 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %21, i64 48 ; 2 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %21, i64 52
  %i.ams = getelementptr inbounds nuw i8, ptr %21, i64 88 ; 3 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %.sroa.6681.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.amv = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.amw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.amy = getelementptr inbounds nuw i8, ptr %8, i64 12
  %.sroa.4.0..sroa_idx.i.i206 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.amz = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.anb = getelementptr inbounds nuw i8, ptr %23, i64 8
  br label %bb.ka

bb.go:                                            ; preds = %.loopexit839.i, %.lr.ph873.i
  %.0185871.i = phi ptr [ %i.zl, %.lr.ph873.i ], [ %i.bfq, %.loopexit839.i ] ; 2 uses
  %i.anc = load ptr, ptr %.0185871.i, align 8, !tbaa !456 ; 6 uses
  %i.and = load ptr, ptr %11, align 8, !tbaa !819, !noalias !854 ; 2 uses
  %i.ane = load ptr, ptr %i.zz, align 8, !tbaa !831, !noalias !854 ; 2 uses
  %i.anf = load i32, ptr %i.aaa, align 4, !tbaa !832, !noalias !854 ; 3 uses
  %i.ang = icmp eq i32 %i.anf, 0
  br i1 %i.ang, label %.loopexit.i.i.i, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.anh = add i32 %i.anf, -1                     ; 2 uses
  %i.ani = ptrtoint ptr %i.anc to i64
  %i.anj = mul i64 %i.ani, -4658895280553007687   ; 2 uses
  %i.ank = lshr i64 %i.anj, 31
  %i.anl = xor i64 %i.ank, %i.anj
  %i.anm = trunc i64 %i.anl to i32
  %i.ann = and i32 %i.anh, %i.anm                 ; 3 uses
  %i.ano = zext i32 %i.ann to i64                 ; 2 uses
  %i.anp = lshr i64 %i.ano, 5
  %i.anq = getelementptr inbounds nuw [4 x i8], ptr %i.ane, i64 %i.anp
  %i.anr = load i32, ptr %i.anq, align 4, !tbaa !478, !noalias !863
  %i.ans = and i32 %i.ann, 31
  %i.ant = lshr i32 %i.anr, %i.ans
  %i.anu = trunc i32 %i.ant to i1
  br i1 %i.anu, label %.lr.ph.i.i.i.i326.i, label %.loopexit.i.i.i, !prof !625

.lr.ph.i.i.i.i326.i:                              ; preds = %bb.gp, %bb.gq
  %i.anv = phi i64 [ %i.aob, %bb.gq ], [ %i.ano, %bb.gp ] ; 2 uses
  %.03.i.i.i.i327.i = phi i32 [ %i.aoa, %bb.gq ], [ %i.ann, %bb.gp ]
  %i.anw = getelementptr inbounds nuw [56 x i8], ptr %i.and, i64 %i.anv
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !456, !noalias !863
  %i.any = icmp eq ptr %i.anc, %i.anx
  br i1 %i.any, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E4findES4_.exit.i, label %bb.gq, !prof !166

bb.gq:                                            ; preds = %.lr.ph.i.i.i.i326.i
  %i.anz = add nuw i32 %.03.i.i.i.i327.i, 1
  %i.aoa = and i32 %i.anz, %i.anh                 ; 3 uses
  %i.aob = zext i32 %i.aoa to i64                 ; 2 uses
  %i.aoc = lshr i64 %i.aob, 5
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr %i.ane, i64 %i.aoc
  %i.aoe = load i32, ptr %i.aod, align 4, !tbaa !478, !noalias !863
  %i.aof = and i32 %i.aoa, 31
  %i.aog = lshr i32 %i.aoe, %i.aof
  %i.aoh = trunc i32 %i.aog to i1
  br i1 %i.aoh, label %.lr.ph.i.i.i.i326.i, label %.loopexit.i.i.i, !prof !626

.loopexit.i.i.i:                                  ; preds = %bb.gq, %bb.gp, %bb.go
  %i.aoi = zext i32 %i.anf to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E4findES4_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E4findES4_.exit.i: ; preds = %.lr.ph.i.i.i.i326.i, %.loopexit.i.i.i
  %i.aoj = phi i64 [ %i.aoi, %.loopexit.i.i.i ], [ %i.anv, %.lr.ph.i.i.i.i326.i ]
  %i.aok = getelementptr inbounds nuw [56 x i8], ptr %i.and, i64 %i.aoj ; 4 uses
  %i.aol = getelementptr i8, ptr %i.aok, i64 48
  %.val291.i = load i64, ptr %i.aol, align 8, !tbaa !217
  %i.aom = icmp eq i64 %.val291.i, 1
  br i1 %i.aom, label %.loopexit839.i, label %bb.gr

bb.gr:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E4findES4_.exit.i
  %i.aon = getelementptr i8, ptr %i.aok, i64 32   ; 2 uses
  %.val294.i = load ptr, ptr %i.aon, align 8, !tbaa !215 ; 2 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aok, i64 16 ; 7 uses
  %.not827866.i = icmp eq ptr %.val294.i, %i.aoo
  br i1 %.not827866.i, label %.loopexit839.i, label %.lr.ph869.i

.lr.ph869.i:                                      ; preds = %bb.gr
  %i.aop = ptrtoint ptr %i.anc to i64
  %i.aoq = mul i64 %i.aop, -4658895280553007687   ; 2 uses
  %i.aor = lshr i64 %i.aoq, 31
  %i.aos = xor i64 %i.aor, %i.aoq
  %i.aot = trunc i64 %i.aos to i32                ; 2 uses
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aok, i64 24
  br label %bb.gs

bb.gs:                                            ; preds = %bb.jq, %.lr.ph869.i
  %.sroa.0722.0867.i = phi ptr [ %.val294.i, %.lr.ph869.i ], [ %i.bfp, %bb.jq ] ; 5 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %.sroa.0722.0867.i, i64 32
  %i.aow = getelementptr inbounds nuw i8, ptr %.sroa.0722.0867.i, i64 48
  %i.aox = load ptr, ptr %i.aow, align 8, !tbaa !839 ; 4 uses
  %.sroa.0716.0.copyload.i = load i64, ptr %i.aov, align 8 ; 2 uses
  %.sroa.5717.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0722.0867.i, i64 40
  %.sroa.5717.0.copyload.i = load i8, ptr %.sroa.5717.0..sroa_idx.i, align 8 ; 2 uses
  %i.aoy = load ptr, ptr %i.yz, align 8, !tbaa !476, !noalias !864 ; 2 uses
  %i.aoz = load ptr, ptr %i.aab, align 8, !tbaa !477, !noalias !864 ; 2 uses
  %i.apa = load i32, ptr %i.aac, align 4, !tbaa !475, !noalias !864 ; 3 uses
  %i.apb = icmp eq i32 %i.apa, 0
  br i1 %i.apb, label %.loopexit.i.i.i328.i, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.apc = add i32 %i.apa, -1                     ; 2 uses
  %i.apd = ptrtoint ptr %i.aox to i64
  %i.ape = mul i64 %i.apd, -4658895280553007687   ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_111LSRInstance24GenerateAllReuseFormulaeEv:bb.a
  %.not.i367.i = icmp ult i32 %i.bdn, %i.bdo
  br i1 %.not.i367.i, label %bb.jh, label %bb.jg, !prof !166

bb.jg:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairImN12_GLOBAL__N_19ImmediateEELb1EE9push_backERKS4_.exit.i.i.i
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_18WorkItemELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull readonly align 8 dereferenceable(32) %19)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_18WorkItemELb1EE9push_backERKS2_.exit.i

bb.jh:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairImN12_GLOBAL__N_19ImmediateEELb1EE9push_backERKS4_.exit.i.i.i
  %i.bdp = zext i32 %i.bdn to i64
  %.val.i368.i = load ptr, ptr %15, align 8, !tbaa !21
  %i.bdq = getelementptr inbounds nuw [32 x i8], ptr %.val.i368.i, i64 %i.bdp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bdq, ptr noundef nonnull readonly align 8 dereferenceable(32) %19, i64 32, i1 false)
  %i.bdr = load i32, ptr %i.zn, align 8, !tbaa !50
  %i.bds = add i32 %i.bdr, 1
  store i32 %i.bds, ptr %i.zn, align 8, !tbaa !50
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_18WorkItemELb1EE9push_backERKS2_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_18WorkItemELb1EE9push_backERKS2_.exit.i: ; preds = %bb.jh, %bb.jg
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  %.pre938.i = load i64, ptr %i.aqg, align 8, !tbaa !479
  br label %bb.ji

bb.ji:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_18WorkItemELb1EE9push_backERKS2_.exit.i, %_ZN4llvm8SmallSetISt4pairImN12_GLOBAL__N_19ImmediateEELj32ENS2_25KeyOrderSizeTAndImmediateEE6insertEOS4_.exit.i
  %i.bdt = phi i64 [ %i.axk, %_ZN4llvm8SmallSetISt4pairImN12_GLOBAL__N_19ImmediateEELj32ENS2_25KeyOrderSizeTAndImmediateEE6insertEOS4_.exit.i ], [ %.pre938.i, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_18WorkItemELb1EE9push_backERKS2_.exit.i ] ; 5 uses
  %i.bdu = trunc i64 %i.bdt to i1
  br i1 %i.bdu, label %bb.jj, label %bb.jl

bb.jj:                                            ; preds = %bb.ji
  %i.bdv = lshr i64 %i.bdt, 1
  %i.bdw = lshr i64 %i.bdt, 58                    ; 2 uses
  %i.bdx = shl nsw i64 -1, %i.bdw
  %i.bdy = xor i64 %i.bdx, -1
  %i.bdz = add nuw i32 %.sroa.4694.0863.i, 1
  %i.bea = zext i32 %i.bdz to i64                 ; 2 uses
  %i.beb = shl nsw i64 -1, %i.bea
  %i.bec = and i64 %i.bdv, %i.beb
  %i.bed = and i64 %i.bec, %i.bdy                 ; 2 uses
  %i.bee = icmp ne i64 %i.bed, 0
  %.not.i.i611.i = icmp samesign ugt i64 %i.bdw, %i.bea
  %or.cond.i.i612.i = select i1 %i.bee, i1 %.not.i.i611.i, i1 false
  br i1 %or.cond.i.i612.i, label %bb.jk, label %.loopexit.i230

bb.jk:                                            ; preds = %bb.jj
  %i.bef = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bed, i1 true)
  %i.beg = trunc nuw nsw i64 %i.bef to i32
  br label %_ZN4llvm28const_set_bits_iterator_implINS_14SmallBitVectorEE7advanceEv.exit.i

bb.jl:                                            ; preds = %bb.ji
  %i.beh = inttoptr i64 %i.bdt to ptr             ; 2 uses
  %i.bei = add nuw i32 %.sroa.4694.0863.i, 1      ; 3 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %i.beh, i64 64
  %i.bek = load i32, ptr %i.bej, align 8, !tbaa !899 ; 2 uses
  %i.bel = icmp eq i32 %i.bei, %i.bek
  br i1 %i.bel, label %.loopexit.i230, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.bem = lshr i32 %i.bei, 6                     ; 4 uses
  %i.ben = add i32 %i.bek, -1                     ; 2 uses
  %i.beo = lshr i32 %i.ben, 6                     ; 4 uses
  %.not42.i.i.i.i.i = icmp samesign ugt i32 %i.bem, %i.beo
  br i1 %.not42.i.i.i.i.i, label %.loopexit.i230, label %.lr.ph.i.i.i.i607.i

.lr.ph.i.i.i.i607.i:                              ; preds = %bb.jm
  %i.bep = load ptr, ptr %i.beh, align 8, !tbaa !21 ; 2 uses
  %i.beq = and i32 %i.bei, 63                     ; 2 uses
  %i.ber = sub nuw nsw i32 64, %i.beq
  %.not.i.i.i608.i = icmp eq i32 %i.beq, 0
  %i.bes = zext nneg i32 %i.ber to i64
  %i.bet = lshr i64 -1, %i.bes
  %i.beu = xor i64 %i.bet, -1
  %i.bev = and i32 %i.ben, 63
  %i.bew = xor i32 %i.bev, 63
  %i.bex = zext nneg i32 %i.bew to i64
  %i.bey = lshr i64 -1, %i.bex                    ; 2 uses
  %i.bez = zext nneg i32 %i.bem to i64            ; 2 uses
  %i.bfa = zext nneg i32 %i.beo to i64
  %i.bfb = add nuw nsw i32 %i.beo, 1
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %i.bfb to i64 ; 2 uses
  %i.bfc = getelementptr inbounds nuw [8 x i8], ptr %i.bep, i64 %i.bez
  %i.bfd = load i64, ptr %i.bfc, align 8, !tbaa !157
  %i.bfe = select i1 %.not.i.i.i608.i, i64 -1, i64 %i.beu
  %i.bff = icmp eq i32 %i.bem, %i.beo
  %i.bfg = select i1 %i.bff, i64 %i.bey, i64 -1
  %spec.select44.peel.i.i.i.i.i = and i64 %i.bfg, %i.bfe
  %.230.peel.i.i.i.i.i = and i64 %spec.select44.peel.i.i.i.i.i, %i.bfd ; 2 uses
  %.not37.peel.i.i.i.i.i = icmp eq i64 %.230.peel.i.i.i.i.i, 0
  br i1 %.not37.peel.i.i.i.i.i, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %.lr.ph.i.i.i.i607.i
  %indvars.iv.next.peel.i.i.i.i.i = add nuw nsw i64 %i.bez, 1 ; 2 uses
  %exitcond.peel.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.peel.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.peel.not.i.i.i.i.i, label %.loopexit.i230, label %.peel.next.i.i.i.i.i

.peel.next.i.i.i.i.i:                             ; preds = %bb.jn, %bb.jp
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %bb.jp ], [ %indvars.iv.next.peel.i.i.i.i.i, %bb.jn ] ; 4 uses
  %i.bfh = getelementptr inbounds nuw [8 x i8], ptr %i.bep, i64 %indvars.iv.i.i.i.i.i
  %i.bfi = load i64, ptr %i.bfh, align 8, !tbaa !157
  %i.bfj = icmp eq i64 %indvars.iv.i.i.i.i.i, %i.bfa
  %i.bfk = select i1 %i.bfj, i64 %i.bey, i64 -1
  %.230.i.i.i.i.i = and i64 %i.bfk, %i.bfi        ; 2 uses
  %.not37.i.i.i.i.i = icmp eq i64 %.230.i.i.i.i.i, 0
  br i1 %.not37.i.i.i.i.i, label %bb.jp, label %.loopexit48.i.i.i.i.i

.loopexit48.i.i.i.i.i:                            ; preds = %.peel.next.i.i.i.i.i
  %.pre.i.i.i.i610.i = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i to i32
  br label %bb.jo

bb.jo:                                            ; preds = %.loopexit48.i.i.i.i.i, %.lr.ph.i.i.i.i607.i
  %.pre-phi.i.i.i.i609.i = phi i32 [ %.pre.i.i.i.i610.i, %.loopexit48.i.i.i.i.i ], [ %i.bem, %.lr.ph.i.i.i.i607.i ]
  %.230.lcssa.i.i.i.i.i = phi i64 [ %.230.i.i.i.i.i, %.loopexit48.i.i.i.i.i ], [ %.230.peel.i.i.i.i.i, %.lr.ph.i.i.i.i607.i ]
  %i.bfl = shl nuw i32 %.pre-phi.i.i.i.i609.i, 6
  %i.bfm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.230.lcssa.i.i.i.i.i, i1 true)
  %i.bfn = trunc nuw nsw i64 %i.bfm to i32
  %i.bfo = or disjoint i32 %i.bfl, %i.bfn
  br label %_ZN4llvm28const_set_bits_iterator_implINS_14SmallBitVectorEE7advanceEv.exit.i

bb.jp:                                            ; preds = %.peel.next.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i230, label %.peel.next.i.i.i.i.i, !llvm.loop !906

_ZN4llvm28const_set_bits_iterator_implINS_14SmallBitVectorEE7advanceEv.exit.i: ; preds = %bb.jo, %bb.jk
  %.1.i.i.i = phi i32 [ %i.bfo, %bb.jo ], [ %i.beg, %bb.jk ] ; 2 uses
  %.not828.i = icmp eq i32 %.1.i.i.i, -1
  br i1 %.not828.i, label %.loopexit.i230, label %.lr.ph864.i

.loopexit.i230:                                   ; preds = %bb.hl, %_ZN4llvm28const_set_bits_iterator_implINS_14SmallBitVectorEE7advanceEv.exit.i, %bb.jn, %bb.jm, %bb.jl, %bb.jj, %bb.jp, %_ZNK4llvm14SmallBitVector8set_bitsEv.exit.i, %bb.hk, %bb.hi, %bb.hh, %bb.hf, %bb.he
  %.0194.add.i = add nuw nsw i64 %.0194.idx865.i, 8 ; 2 uses
  %.not210.i = icmp eq i64 %.0194.add.i, 24
  br i1 %.not210.i, label %bb.hd, label %bb.he

bb.jq:                                            ; preds = %bb.hd, %_ZNK4llvm14SmallBitVector5countEv.exit.thread.i, %_ZNK4llvm14SmallBitVector5countEv.exit.i
  %i.bfp = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0722.0867.i) #26 ; 2 uses
  %.not827.i = icmp eq ptr %i.bfp, %i.aoo
  br i1 %.not827.i, label %.loopexit839.i, label %bb.gs, !llvm.loop !921

.loopexit839.i:                                   ; preds = %bb.jq, %bb.gr, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E4findES4_.exit.i
  %i.bfq = getelementptr inbounds nuw i8, ptr %.0185871.i, i64 8 ; 2 uses
  %.not201.i = icmp eq ptr %i.bfq, %i.zy
  br i1 %.not201.i, label %._crit_edge874.i, label %bb.go

._crit_edge900.loopexit.i:                        ; preds = %._crit_edge896.i
  %.val.i369.pre.i = load ptr, ptr %i.zt, align 8, !tbaa !214
  br label %._crit_edge900.i

._crit_edge900.i:                                 ; preds = %._crit_edge900.loopexit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E5clearEv.exit.i
  %.val.i369.i = phi ptr [ %.val.i369.pre.i, %._crit_edge900.loopexit.i ], [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E5clearEv.exit.i ]
  call fastcc void @_ZNSt8_Rb_treeISt4pairImN12_GLOBAL__N_19ImmediateEES3_St9_IdentityIS3_ENS1_25KeyOrderSizeTAndImmediateESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef %.val.i369.i)
  %i.bfr = load ptr, ptr %16, align 8, !tbaa !21  ; 2 uses
  %i.bfs = icmp eq ptr %i.bfr, %i.zp
  br i1 %i.bfs, label %_ZN4llvm8SmallSetISt4pairImN12_GLOBAL__N_19ImmediateEELj32ENS2_25KeyOrderSizeTAndImmediateEED2Ev.exit.i, label %bb.jr

bb.jr:                                            ; preds = %._crit_edge900.i
  call void @free(ptr noundef %i.bfr) #23
  br label %_ZN4llvm8SmallSetISt4pairImN12_GLOBAL__N_19ImmediateEELj32ENS2_25KeyOrderSizeTAndImmediateEED2Ev.exit.i

_ZN4llvm8SmallSetISt4pairImN12_GLOBAL__N_19ImmediateEELj32ENS2_25KeyOrderSizeTAndImmediateEED2Ev.exit.i: ; preds = %bb.jr, %._crit_edge900.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.bft = load ptr, ptr %15, align 8, !tbaa !21  ; 2 uses
  %i.bfu = icmp eq ptr %i.bft, %i.zm
  br i1 %i.bfu, label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_18WorkItemELj32EED2Ev.exit.i, label %bb.js

bb.js:                                            ; preds = %_ZN4llvm8SmallSetISt4pairImN12_GLOBAL__N_19ImmediateEELj32ENS2_25KeyOrderSizeTAndImmediateEED2Ev.exit.i
  call void @free(ptr noundef %i.bft) #23
  br label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_18WorkItemELj32EED2Ev.exit.i

_ZN4llvm11SmallVectorIN12_GLOBAL__N_18WorkItemELj32EED2Ev.exit.i: ; preds = %bb.js, %_ZN4llvm8SmallSetISt4pairImN12_GLOBAL__N_19ImmediateEELj32ENS2_25KeyOrderSizeTAndImmediateEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.bfv = load ptr, ptr %13, align 8, !tbaa !21  ; 2 uses
  %i.bfw = icmp eq ptr %i.bfv, %i.yw
  br i1 %i.bfw, label %_ZN4llvm11SmallVectorIPKNS_4SCEVELj8EED2Ev.exit.i, label %bb.jt

bb.jt:                                            ; preds = %_ZN4llvm11SmallVectorIN12_GLOBAL__N_18WorkItemELj32EED2Ev.exit.i
  call void @free(ptr noundef %i.bfv) #23
  br label %_ZN4llvm11SmallVectorIPKNS_4SCEVELj8EED2Ev.exit.i

_ZN4llvm11SmallVectorIPKNS_4SCEVELj8EED2Ev.exit.i: ; preds = %bb.jt, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_18WorkItemELj32EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.bfx = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 2 uses
  %i.bfy = load i32, ptr %i.bfx, align 4, !tbaa !883 ; 2 uses
  %i.bfz = icmp eq i32 %i.bfy, 0
  br i1 %i.bfz, label %_ZN4llvm8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit.i, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN4llvm11SmallVectorIPKNS_4SCEVELj8EED2Ev.exit.i
  %i.bga = load ptr, ptr %12, align 8, !tbaa !874
  %i.bgb = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bgc = load ptr, ptr %i.bgb, align 8, !tbaa !882
  %i.bgd = zext i32 %i.bfy to i64
  %i.bge = add nuw nsw i64 %i.bgd, 31
  %i.bgf = lshr i64 %i.bge, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i374.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i370.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i375.i, %._crit_edge.i.i374.i ] ; 3 uses
  %i.bgg = getelementptr inbounds nuw [4 x i8], ptr %i.bgc, i64 %indvars.iv.i.i370.i
  %i.bgh = load i32, ptr %i.bgg, align 4, !tbaa !478 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.bgh, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i374.i, label %.lr.ph.i.i371.i

.lr.ph.i.i371.i:                                  ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i372.i = trunc nuw i64 %indvars.iv.i.i370.i to i32
  %i.bgi = shl nuw i32 %indvars.iv.tr.i.i372.i, 5
  br label %bb.ju

bb.ju:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i371.i
  %.0.i3.i.i.i = phi i32 [ %i.bgh, %.lr.ph.i.i371.i ], [ %i.bgw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.bgj = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.bgk = or disjoint i32 %i.bgj, %i.bgi
  %i.bgl = zext i32 %i.bgk to i64
  %i.bgm = getelementptr inbounds nuw [16 x i8], ptr %i.bga, i64 %i.bgl
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bgm, i64 8
  %i.bgo = load i64, ptr %i.bgn, align 8, !tbaa !479 ; 3 uses
  %i.bgp = trunc i64 %i.bgo to i1
  br i1 %i.bgp, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.bgq = inttoptr i64 %i.bgo to ptr             ; 3 uses
  %i.bgr = icmp eq i64 %i.bgo, 0
  br i1 %i.bgr, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.bgs = load ptr, ptr %i.bgq, align 8, !tbaa !21 ; 2 uses
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgq, i64 16
  %i.bgu = icmp eq ptr %i.bgs, %i.bgt
  br i1 %i.bgu, label %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i.i, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  call void @free(ptr noundef %i.bgs) #23
  br label %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i.i

_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i.i:            ; preds = %bb.jx, %bb.jw
  call void @_ZdlPvm(ptr noundef nonnull %i.bgq, i64 noundef 72) #25
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i.i, %bb.jv, %bb.ju
  %i.bgv = add i32 %.0.i3.i.i.i, -1
  %i.bgw = and i32 %i.bgv, %.0.i3.i.i.i           ; 2 uses
  %.not11.i.i.i373.i = icmp eq i32 %i.bgw, 0
  br i1 %.not11.i.i.i373.i, label %._crit_edge.i.i374.i, label %bb.ju, !llvm.loop !922

._crit_edge.i.i374.i:                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i375.i = add nuw nsw i64 %indvars.iv.i.i370.i, 1 ; 2 uses
  %.not.i.i.i376.i = icmp eq i64 %indvars.iv.next.i.i375.i, %i.bgf
  br i1 %.not.i.i.i376.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !923

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i374.i
  %.pr.i.i = load i32, ptr %i.bfx, align 4, !tbaa !883 ; 2 uses
  %i.bgx = icmp eq i32 %.pr.i.i, 0
  br i1 %i.bgx, label %_ZN4llvm8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit.i, label %bb.jy

bb.jy:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.i.i
  %i.bgy = load ptr, ptr %12, align 8, !tbaa !874
  %i.bgz = zext i32 %.pr.i.i to i64               ; 2 uses
  %i.bha = shl nuw nsw i64 %i.bgz, 4
  %i.bhb = add nuw nsw i64 %i.bgz, 31
  %i.bhc = lshr i64 %i.bhb, 3
  %i.bhd = and i64 %i.bhc, 1073741820
  %i.bhe = add nuw nsw i64 %i.bhd, %i.bha
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bgy, i64 noundef %i.bhe, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit.i

_ZN4llvm8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit.i: ; preds = %bb.jy, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.i.i, %_ZN4llvm11SmallVectorIPKNS_4SCEVELj8EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.bhf = getelementptr inbounds nuw i8, ptr %11, i64 20
  %.val2.i.i.i = load i32, ptr %i.bhf, align 4, !tbaa !832 ; 2 uses
  %i.bhg = icmp eq i32 %.val2.i.i.i, 0
  br i1 %i.bhg, label %_ZN12_GLOBAL__N_111LSRInstance31GenerateCrossUseConstantOffsetsEv.exit, label %.lr.ph11.preheader.i.i377.i

.lr.ph11.preheader.i.i377.i:                      ; preds = %_ZN4llvm8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit.i
  %.val4.i.i378.i = load ptr, ptr %11, align 8, !tbaa !819 ; 2 uses
  %i.bhh = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.val3.i.i.i = load ptr, ptr %i.bhh, align 8, !tbaa !831
  %i.bhi = zext i32 %.val2.i.i.i to i64           ; 2 uses
  %i.bhj = add nuw nsw i64 %i.bhi, 31             ; 2 uses
  %i.bhk = lshr i64 %i.bhj, 5
  br label %.lr.ph11.i.i379.i

.lr.ph11.i.i379.i:                                ; preds = %._crit_edge.i.i387.i, %.lr.ph11.preheader.i.i377.i
  %indvars.iv.i.i380.i = phi i64 [ 0, %.lr.ph11.preheader.i.i377.i ], [ %indvars.iv.next.i.i388.i, %._crit_edge.i.i387.i ] ; 3 uses
  %i.bhl = getelementptr inbounds nuw [4 x i8], ptr %.val3.i.i.i, i64 %indvars.iv.i.i380.i
  %i.bhm = load i32, ptr %i.bhl, align 4, !tbaa !478 ; 2 uses
  %.not11.i6.i.i381.i = icmp eq i32 %i.bhm, 0
  br i1 %.not11.i6.i.i381.i, label %._crit_edge.i.i387.i, label %.lr.ph.i.i382.i

.lr.ph.i.i382.i:                                  ; preds = %.lr.ph11.i.i379.i
  %indvars.iv.tr.i.i383.i = trunc nuw i64 %indvars.iv.i.i380.i to i32
  %i.bhn = shl nuw i32 %indvars.iv.tr.i.i383.i, 5
  br label %bb.jz

bb.jz:                                            ; preds = %bb.jz, %.lr.ph.i.i382.i
  %.0.i7.i.i384.i = phi i32 [ %i.bhm, %.lr.ph.i.i382.i ], [ %i.bhu, %bb.jz ] ; 3 uses
  %i.bho = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i7.i.i384.i, i1 true)
  %i.bhp = or disjoint i32 %i.bho, %i.bhn
  %i.bhq = zext i32 %i.bhp to i64
  %i.bhr = getelementptr inbounds nuw [56 x i8], ptr %.val4.i.i378.i, i64 %i.bhq
  %i.bhs = getelementptr i8, ptr %i.bhr, i64 24
  %.val.i.i.i385.i = load ptr, ptr %i.bhs, align 8, !tbaa !214
  call fastcc void @_ZNSt8_Rb_treeIN12_GLOBAL__N_19ImmediateESt4pairIKS1_PKN4llvm4SCEVEESt10_Select1stIS8_ENS0_23KeyOrderTargetImmediateESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef %.val.i.i.i385.i)
  %i.bht = add i32 %.0.i7.i.i384.i, -1
  %i.bhu = and i32 %i.bht, %.0.i7.i.i384.i        ; 2 uses
  %.not11.i.i.i386.i = icmp eq i32 %i.bhu, 0
  br i1 %.not11.i.i.i386.i, label %._crit_edge.i.i387.i, label %bb.jz, !llvm.loop !852

._crit_edge.i.i387.i:                             ; preds = %bb.jz, %.lr.ph11.i.i379.i
  %indvars.iv.next.i.i388.i = add nuw nsw i64 %indvars.iv.i.i380.i, 1 ; 2 uses
  %.not.i.i.i389.i = icmp eq i64 %indvars.iv.next.i.i388.i, %i.bhk
  br i1 %.not.i.i.i389.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E10destroyAllEv.exit.i390.i, label %.lr.ph11.i.i379.i, !llvm.loop !853

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E10destroyAllEv.exit.i390.i: ; preds = %._crit_edge.i.i387.i
  %i.bhv = mul nuw nsw i64 %i.bhi, 56
  %i.bhw = lshr i64 %i.bhj, 3
  %i.bhx = and i64 %i.bhw, 1073741820
  %i.bhy = add nuw nsw i64 %i.bhx, %i.bhv
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %.val4.i.i378.i, i64 noundef %i.bhy, i64 noundef 8) #23
  br label %_ZN12_GLOBAL__N_111LSRInstance31GenerateCrossUseConstantOffsetsEv.exit

bb.ka:                                            ; preds = %._crit_edge896.i, %.lr.ph899.i
  %.0195898.i = phi ptr [ %.val288.i, %.lr.ph899.i ], [ %i.bjq, %._crit_edge896.i ] ; 5 uses
  %i.bhz = load i64, ptr %.0195898.i, align 8, !tbaa !918 ; 2 uses
  %.val235.i = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.bia = getelementptr inbounds nuw [2096 x i8], ptr %.val235.i, i64 %i.bhz ; 11 uses
  %i.bib = getelementptr inbounds nuw i8, ptr %.0195898.i, i64 8
  %.sroa.0682.0.copyload.i = load i64, ptr %i.bib, align 8 ; 5 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0195898.i, i64 16
  %.sroa.10.0.copyload.i207 = load i8, ptr %.sroa.10.0..sroa_idx.i, align 8 ; 7 uses
  %i.bic = getelementptr inbounds nuw i8, ptr %.0195898.i, i64 24
  %i.bid = load ptr, ptr %i.bic, align 8, !tbaa !920 ; 9 uses
  %i.bie = load ptr, ptr %i.alc, align 8, !tbaa !577, !nonnull !19, !align !34
  %i.bif = call noundef ptr @_ZNK4llvm4SCEV7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bid) #23
  %i.big = call noundef ptr @_ZNK4llvm15ScalarEvolution20getEffectiveSCEVTypeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(1152) %i.bie, ptr noundef %i.bif) #23 ; 3 uses
  %i.bih = load ptr, ptr %i.alc, align 8, !tbaa !577, !nonnull !19, !align !34 ; 3 uses
  %i.bii = sub i64 0, %.sroa.0682.0.copyload.i
  %i.bij = call noundef ptr @_ZN4llvm15ScalarEvolution11getConstantEPNS_4TypeEmb(ptr noundef nonnull align 8 dereferenceable(1152) %i.bih, ptr noundef %i.big, i64 noundef %i.bii, i1 noundef zeroext false) #23 ; 3 uses
  %i.bik = trunc nuw i8 %.sroa.10.0.copyload.i207 to i1
  br i1 %i.bik, label %bb.kb, label %_ZNK12_GLOBAL__N_19Immediate15getNegativeSCEVERN4llvm15ScalarEvolutionEPNS1_4TypeE.exit.i

bb.kb:                                            ; preds = %bb.ka
  %i.bil = call noundef ptr @_ZNK4llvm4SCEV7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bij) #23
  %i.bim = call noundef ptr @_ZN4llvm15ScalarEvolution9getVScaleEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(1152) %i.bih, ptr noundef %i.bil) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr %i.ald, ptr %10, align 8, !tbaa !21
  store i32 2, ptr %i.alf, align 4, !tbaa !51
  %i.bin = insertelement <2 x ptr> poison, ptr %i.bij, i64 0
  %i.bio = insertelement <2 x ptr> %i.bin, ptr %i.bim, i64 1
  %i.bip = ptrtoint <2 x ptr> %i.bio to <2 x i64>
  %i.biq = and <2 x i64> %i.bip, splat (i64 -7)
  store <2 x i64> %i.biq, ptr %i.ald, align 8
  store i32 2, ptr %i.ale, align 8, !tbaa !50
  %i.bir = call noundef ptr @_ZN4llvm15ScalarEvolution10getMulExprERNS_15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEEENS_15SCEVNoWrapFlagsEj(ptr noundef nonnull align 8 dereferenceable(1152) %i.bih, ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 0, i32 noundef 0) #23
  %i.bis = load ptr, ptr %10, align 8, !tbaa !21  ; 2 uses
  %i.bit = icmp eq ptr %i.bis, %i.ald
  br i1 %i.bit, label %_ZN4llvm15ScalarEvolution10getMulExprENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj.exit.i.i, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  call void @free(ptr noundef %i.bis) #23
  br label %_ZN4llvm15ScalarEvolution10getMulExprENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj.exit.i.i

_ZN4llvm15ScalarEvolution10getMulExprENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj.exit.i.i: ; preds = %bb.kc, %bb.kb
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %_ZNK12_GLOBAL__N_19Immediate15getNegativeSCEVERN4llvm15ScalarEvolutionEPNS1_4TypeE.exit.i

_ZNK12_GLOBAL__N_19Immediate15getNegativeSCEVERN4llvm15ScalarEvolutionEPNS1_4TypeE.exit.i: ; preds = %_ZN4llvm15ScalarEvolution10getMulExprENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj.exit.i.i, %bb.ka
  %.0.i392.i = phi ptr [ %i.bir, %_ZN4llvm15ScalarEvolution10getMulExprENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj.exit.i.i ], [ %i.bij, %bb.ka ]
  %i.biu = load ptr, ptr %i.alc, align 8, !tbaa !577, !nonnull !19, !align !34
  %i.biv = call noundef i64 @_ZNK4llvm15ScalarEvolution17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(1152) %i.biu, ptr noundef %i.big) #23
  %i.biw = trunc i64 %i.biv to i32                ; 2 uses
  %i.bix = getelementptr inbounds nuw i8, ptr %i.bia, i64 680
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bia, i64 688
  %i.biz = load i32, ptr %i.biy, align 8, !tbaa !50 ; 2 uses
  %i.bja = zext i32 %i.biz to i64
  %.not203893.i = icmp eq i32 %i.biz, 0
  br i1 %.not203893.i, label %._crit_edge896.i, label %.lr.ph895.i

.lr.ph895.i:                                      ; preds = %_ZNK12_GLOBAL__N_19Immediate15getNegativeSCEVERN4llvm15ScalarEvolutionEPNS1_4TypeE.exit.i
  %i.bjb = icmp eq i64 %.sroa.0682.0.copyload.i, 0 ; 3 uses
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.bia, i64 640 ; 2 uses
  %.sroa.226.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bia, i64 648 ; 2 uses
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.bia, i64 656 ; 2 uses
  %.sroa.223.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bia, i64 664 ; 2 uses
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bia, i64 24 ; 3 uses
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bia, i64 32 ; 3 uses
  %.sroa.2759.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bia, i64 40 ; 2 uses
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bid, i64 24
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bid, i64 48
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bid, i64 40
  %i.bjj = insertelement <2 x ptr> poison, ptr %.0.i392.i, i64 0
  %i.bjk = insertelement <2 x ptr> %i.bjj, ptr %i.bid, i64 1
  %i.bjl = ptrtoint <2 x ptr> %i.bjk to <2 x i64>
  %i.bjm = trunc i64 %i.bhz to i32                ; 2 uses
  %i.bjn = icmp ult i32 %i.biw, 65
  %i.bjo = and <2 x i64> %i.bjl, splat (i64 -7)   ; 2 uses
  %i.bjp = extractelement <2 x i64> %i.bjo, i64 0
  br label %bb.kd

._crit_edge896.i:                                 ; preds = %_ZN12_GLOBAL__N_17FormulaD2Ev.exit482.i, %_ZNK12_GLOBAL__N_19Immediate15getNegativeSCEVERN4llvm15ScalarEvolutionEPNS1_4TypeE.exit.i
  %i.bjq = getelementptr inbounds nuw i8, ptr %.0195898.i, i64 32 ; 2 uses
  %.not202.i = icmp eq ptr %i.bjq, %i.alb
  br i1 %.not202.i, label %._crit_edge900.loopexit.i, label %bb.ka

bb.kd:                                            ; preds = %_ZN12_GLOBAL__N_17FormulaD2Ev.exit482.i, %.lr.ph895.i
  %.0196894.i = phi i64 [ 0, %.lr.ph895.i ], [ %i.cas, %_ZN12_GLOBAL__N_17FormulaD2Ev.exit482.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %.val275.i = load ptr, ptr %i.bix, align 8, !tbaa !21
  %i.bjr = getelementptr inbounds nuw [112 x i8], ptr %.val275.i, i64 %.0196894.i ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %20, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.bjr, i64 40, i1 false)
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bjr, i64 40
  store ptr %i.alh, ptr %i.alg, align 8, !tbaa !21
  store i32 0, ptr %i.ali, align 8, !tbaa !50
  store i32 4, ptr %i.alj, align 4, !tbaa !51
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjr, i64 48 ; 2 uses
  %i.bju = load i32, ptr %i.bjt, align 8, !tbaa !50 ; 6 uses
  %.not.i.i.i394.i = icmp eq i32 %i.bju, 0
  %i.bjv = icmp eq ptr %20, %i.bjr
  %or.cond.i.i.i = or i1 %i.bjv, %.not.i.i.i394.i
  br i1 %or.cond.i.i.i, label %_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit.i211, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.bjw = icmp ugt i32 %i.bju, 4
  br i1 %i.bjw, label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i.i224, label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i.i208

_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i.i224: ; preds = %bb.ke
  %i.bjx = zext i32 %i.bju to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %i.alg, ptr noundef nonnull %i.alh, i64 noundef %i.bjx, i64 noundef 8) #23
  %.pre.i.i.i225 = load i32, ptr %i.bjt, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i.i395.i = icmp eq i32 %.pre.i.i.i225, 0
  br i1 %.not.i.i.i.i395.i, label %.sink.split.i.i.i.i210, label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i226

_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i226: ; preds = %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i.i224
  %.pre.i.i227 = load ptr, ptr %i.alg, align 8, !tbaa !21
  br label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i.i208

_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i.i208: ; preds = %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i226, %bb.ke
  %i.bjy = phi ptr [ %.pre.i.i227, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i226 ], [ %i.alh, %bb.ke ]
  %i.bjz = phi i32 [ %.pre.i.i.i225, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i226 ], [ %i.bju, %bb.ke ]
  %i.bka = zext i32 %i.bjz to i64
  %i.bkb = load ptr, ptr %i.bjs, align 8, !tbaa !21
  %gepdiff.i.i.i.i209 = shl nuw nsw i64 %i.bka, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bjy, ptr align 8 %i.bkb, i64 %gepdiff.i.i.i.i209, i1 false)
  br label %.sink.split.i.i.i.i210

.sink.split.i.i.i.i210:                           ; preds = %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i.i208, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i.i224
  store i32 %i.bju, ptr %i.ali, align 8, !tbaa !50
  br label %_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit.i211

_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit.i211:      ; preds = %.sink.split.i.i.i.i210, %bb.kd
  %i.bkc = phi i32 [ 0, %bb.kd ], [ %i.bju, %.sink.split.i.i.i.i210 ] ; 2 uses
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bjr, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.alk, ptr noundef nonnull readonly align 8 dereferenceable(17) %i.bkd, i64 17, i1 false)
  %i.bke = load i64, ptr %i.all, align 8, !tbaa !705
  %.not.i396.i = icmp eq i64 %i.bke, 1
  %.pre943.i = load ptr, ptr %i.alk, align 8, !tbaa !714 ; 3 uses
  br i1 %.not.i396.i, label %bb.kf, label %_ZN12_GLOBAL__N_17Formula7unscaleEv.exit.i212

bb.kf:                                            ; preds = %_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit.i211
  store i64 0, ptr %i.all, align 8, !tbaa !705
  %i.bkf = load i32, ptr %i.alj, align 4, !tbaa !51
  %.not.i.i397.i = icmp ult i32 %i.bkc, %i.bkf
  br i1 %.not.i.i397.i, label %bb.kh, label %bb.kg, !prof !166

bb.kg:                                            ; preds = %bb.kf
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.alg, ptr noundef %.pre943.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit.i.i223

bb.kh:                                            ; preds = %bb.kf
  %i.bkg = zext i32 %i.bkc to i64
  %i.bkh = load ptr, ptr %i.alg, align 8, !tbaa !21
  %i.bki = getelementptr inbounds nuw [8 x i8], ptr %i.bkh, i64 %i.bkg
  store ptr %.pre943.i, ptr %i.bki, align 1
  %i.bkj = load i32, ptr %i.ali, align 8, !tbaa !50
  %i.bkk = add i32 %i.bkj, 1
  store i32 %i.bkk, ptr %i.ali, align 8, !tbaa !50
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit.i.i223

_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit.i.i223: ; preds = %bb.kh, %bb.kg
  store ptr null, ptr %i.alk, align 8, !tbaa !714
  br label %_ZN12_GLOBAL__N_17Formula7unscaleEv.exit.i212

_ZN12_GLOBAL__N_17Formula7unscaleEv.exit.i212:    ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit.i.i223, %_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit.i211
  %i.bkl = phi ptr [ %.pre943.i, %_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit.i211 ], [ null, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit.i.i223 ]
  %i.bkm = icmp eq ptr %i.bkl, %i.bid
  br i1 %i.bkm, label %bb.ki, label %bb.lu

bb.ki:                                            ; preds = %_ZN12_GLOBAL__N_17Formula7unscaleEv.exit.i212
  %.val248.i = load i64, ptr %i.amj, align 8, !tbaa !805 ; 2 uses
  %.val249.i = load i8, ptr %i.amk, align 8       ; 2 uses
  %i.bkn = icmp eq i64 %.val248.i, 0
  %or.cond.i398.i = select i1 %i.bkn, i1 true, i1 %i.bjb
end_hunk_4
begin_hunk_5_@_ZN12_GLOBAL__N_111LSRInstance24GenerateAllReuseFormulaeEv:bb.a
.lr.ph.i79.i:                                     ; preds = %.lr.ph124.i, %bb.pv
  %.02643.i80.i = phi ptr [ %i.cgx, %bb.pv ], [ %i.cgr, %.lr.ph124.i ] ; 3 uses
  %.02742.i81.i = phi ptr [ %i.cha, %bb.pv ], [ null, %.lr.ph124.i ] ; 2 uses
  %i.cgy = call noundef ptr @_ZN4llvm24denormalizeForPostIncUseEPKNS_4SCEVERKNS_11SmallPtrSetIPKNS_4LoopELj2EEERNS_15ScalarEvolutionE(ptr noundef %i.cgu, ptr noundef nonnull align 8 dereferenceable(40) %.02643.i80.i, ptr noundef nonnull align 8 dereferenceable(1152) %i.cgv) #23
  %i.cgz = call noundef ptr @_ZN4llvm15ScalarEvolution16getAnyExtendExprEPKNS_4SCEVEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(1152) %i.cgv, ptr noundef %i.cgy, ptr noundef %i.cfr) #23
  %i.cha = call noundef ptr @_ZN4llvm22normalizeForPostIncUseEPKNS_4SCEVERKNS_11SmallPtrSetIPKNS_4LoopELj2EEERNS_15ScalarEvolutionEb(ptr noundef %i.cgz, ptr noundef nonnull align 8 dereferenceable(40) %.02643.i80.i, ptr noundef nonnull align 8 dereferenceable(1152) %i.cgv, i1 noundef zeroext true) #23 ; 5 uses
  %.not33.i82.i = icmp eq ptr %i.cha, null
  br i1 %.not33.i82.i, label %_ZNK12_GLOBAL__N_17Formula26hasRegsUsedByUsesOtherThanEmRKNS_13RegUseTrackerE.exit.i, label %bb.pw

bb.pw:                                            ; preds = %.lr.ph.i79.i
  %.not34.i83.i = icmp eq ptr %.02742.i81.i, null
  %.not35.i84.i = icmp eq ptr %i.cha, %.02742.i81.i
  %or.cond.i85.i = or i1 %.not34.i83.i, %.not35.i84.i
  br i1 %or.cond.i85.i, label %bb.pv, label %_ZNK12_GLOBAL__N_17Formula26hasRegsUsedByUsesOtherThanEmRKNS_13RegUseTrackerE.exit.i

_ZL34getAnyExtendConsideringPostIncUsesN4llvm8ArrayRefINS_11SmallPtrSetIPKNS_4LoopELj2EEEEEPKNS_4SCEVEPNS_4TypeERNS_15ScalarEvolutionE.exit88.i: ; preds = %bb.pv
  %i.chb = call noundef zeroext i1 @_ZNK4llvm4SCEV6isZeroEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cha) #23
  br i1 %i.chb, label %_ZNK12_GLOBAL__N_17Formula26hasRegsUsedByUsesOtherThanEmRKNS_13RegUseTrackerE.exit.i, label %bb.px

bb.px:                                            ; preds = %_ZL34getAnyExtendConsideringPostIncUsesN4llvm8ArrayRefINS_11SmallPtrSetIPKNS_4LoopELj2EEEEEPKNS_4SCEVEPNS_4TypeERNS_15ScalarEvolutionE.exit88.i
  store ptr %i.cha, ptr %.0122.i, align 8, !tbaa !456
  %i.chc = getelementptr inbounds nuw i8, ptr %.0122.i, i64 8 ; 2 uses
  %.not65.i270 = icmp eq ptr %i.chc, %i.cgq
  br i1 %.not65.i270, label %._crit_edge125.loopexit.i, label %.lr.ph124.i

._crit_edge125.loopexit.i:                        ; preds = %bb.px
  %.pre142.i = load ptr, ptr %i.jz, align 8, !tbaa !714
  br label %._crit_edge125.i

._crit_edge125.i:                                 ; preds = %._crit_edge125.loopexit.i, %bb.pu
  %i.chd = phi ptr [ %.pre142.i, %._crit_edge125.loopexit.i ], [ %i.cgm, %bb.pu ] ; 2 uses
  %.not.i89.i = icmp eq ptr %i.chd, null
  br i1 %.not.i89.i, label %bb.pz, label %bb.py

bb.py:                                            ; preds = %._crit_edge125.i
  %i.che = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_113RegUseTracker24isRegUsedByUsesOtherThanEPKN4llvm4SCEVEm(ptr noundef nonnull readonly align 8 dereferenceable(168) %i.kb, ptr noundef nonnull %i.chd, i64 noundef range(i64 0, 4294967296) %.068468)
  br i1 %i.che, label %.loopexit.i271, label %bb.pz

bb.pz:                                            ; preds = %bb.py, %._crit_edge125.i
  %i.chf = load ptr, ptr %i.jv, align 8, !tbaa !21 ; 2 uses
  %i.chg = load i32, ptr %i.jx, align 8, !tbaa !50 ; 2 uses
  %i.chh = zext i32 %i.chg to i64
  %.idx.i90.i = shl nuw nsw i64 %i.chh, 3
  %i.chi = getelementptr inbounds nuw i8, ptr %i.chf, i64 %.idx.i90.i
  %.not1820.i.i = icmp eq i32 %i.chg, 0
  br i1 %.not1820.i.i, label %_ZNK12_GLOBAL__N_17Formula26hasRegsUsedByUsesOtherThanEmRKNS_13RegUseTrackerE.exit.i, label %.lr.ph.i91.i

bb.qa:                                            ; preds = %.lr.ph.i91.i
  %i.chj = getelementptr inbounds nuw i8, ptr %.01421.i.i, i64 8 ; 2 uses
  %.not18.i.i = icmp eq ptr %i.chj, %i.chi
  br i1 %.not18.i.i, label %_ZNK12_GLOBAL__N_17Formula26hasRegsUsedByUsesOtherThanEmRKNS_13RegUseTrackerE.exit.i, label %.lr.ph.i91.i

.lr.ph.i91.i:                                     ; preds = %bb.pz, %bb.qa
  %.01421.i.i = phi ptr [ %i.chj, %bb.qa ], [ %i.chf, %bb.pz ] ; 2 uses
  %i.chk = load ptr, ptr %.01421.i.i, align 8, !tbaa !456
  %i.chl = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_113RegUseTracker24isRegUsedByUsesOtherThanEPKN4llvm4SCEVEm(ptr noundef nonnull readonly align 8 dereferenceable(168) %i.kb, ptr noundef %i.chk, i64 noundef range(i64 0, 4294967296) %.068468)
  br i1 %i.chl, label %.loopexit.i271, label %bb.qa

.loopexit.i271:                                   ; preds = %.lr.ph.i91.i, %bb.py
  %i.chm = load ptr, ptr %i.kc, align 8, !tbaa !560
  call fastcc void @_ZN12_GLOBAL__N_17Formula12canonicalizeERKN4llvm4LoopE(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(144) %i.chm)
  %i.chn = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111LSRInstance13InsertFormulaERNS_6LSRUseEjRKNS_7FormulaE(ptr noundef nonnull align 8 dereferenceable(35560) %0, ptr noundef nonnull align 8 dereferenceable(2096) %i.cat, i32 noundef %i.cay, ptr noundef nonnull align 8 dereferenceable(112) %5) ; 0 uses
  br label %_ZNK12_GLOBAL__N_17Formula26hasRegsUsedByUsesOtherThanEmRKNS_13RegUseTrackerE.exit.i

_ZNK12_GLOBAL__N_17Formula26hasRegsUsedByUsesOtherThanEmRKNS_13RegUseTrackerE.exit.i: ; preds = %bb.pt, %.lr.ph.i.i264, %_ZL34getAnyExtendConsideringPostIncUsesN4llvm8ArrayRefINS_11SmallPtrSetIPKNS_4LoopELj2EEEEEPKNS_4SCEVEPNS_4TypeERNS_15ScalarEvolutionE.exit88.i, %.lr.ph124.i, %bb.qa, %bb.pw, %.lr.ph.i79.i, %.loopexit.i271, %bb.pz, %_ZL34getAnyExtendConsideringPostIncUsesN4llvm8ArrayRefINS_11SmallPtrSetIPKNS_4LoopELj2EEEEEPKNS_4SCEVEPNS_4TypeERNS_15ScalarEvolutionE.exit.i, %bb.pr
  %i.cho = load ptr, ptr %i.jv, align 8, !tbaa !21 ; 2 uses
  %i.chp = icmp eq ptr %i.cho, %i.jw
  br i1 %i.chp, label %_ZN12_GLOBAL__N_17FormulaD2Ev.exit.i267, label %bb.qb

bb.qb:                                            ; preds = %_ZNK12_GLOBAL__N_17Formula26hasRegsUsedByUsesOtherThanEmRKNS_13RegUseTrackerE.exit.i
  call void @free(ptr noundef %i.cho) #23
  br label %_ZN12_GLOBAL__N_17FormulaD2Ev.exit.i267

_ZN12_GLOBAL__N_17FormulaD2Ev.exit.i267:          ; preds = %bb.qb, %_ZNK12_GLOBAL__N_17Formula26hasRegsUsedByUsesOtherThanEmRKNS_13RegUseTrackerE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.qc

bb.qc:                                            ; preds = %_ZN12_GLOBAL__N_17FormulaD2Ev.exit.i267, %bb.po, %.lr.ph129.i
  %i.chq = getelementptr inbounds nuw i8, ptr %.048127.i, i64 8 ; 2 uses
  %.not61.i256 = icmp eq ptr %i.chq, %i.cek
  br i1 %.not61.i256, label %._crit_edge130.loopexit.i, label %.lr.ph129.i

_ZN12_GLOBAL__N_111LSRInstance17GenerateTruncatesERNS_6LSRUseEjNS_7FormulaE.exit: ; preds = %_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit243.thread, %_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit243, %_ZNK12_GLOBAL__N_17Formula7getTypeEv.exit.i246, %bb.ox, %bb.oz, %"_ZN4llvm6any_ofIRNS_11SmallVectorIPKNS_4SCEVELj4EEEZN12_GLOBAL__N_111LSRInstance17GenerateTruncatesERNS7_6LSRUseEjNS7_7FormulaEE3$_0EEbOT_T0_.exit.i", %_ZN4llvm11SmallVectorINS_11SmallPtrSetIPKNS_4LoopELj2EEELj1EED2Ev.exit.i
  %i.chr = load ptr, ptr %i.jk, align 8, !tbaa !21 ; 2 uses
  %i.chs = icmp eq ptr %i.chr, %i.jl
  br i1 %i.chs, label %_ZN12_GLOBAL__N_17FormulaD2Ev.exit277, label %bb.qd

bb.qd:                                            ; preds = %_ZN12_GLOBAL__N_111LSRInstance17GenerateTruncatesERNS_6LSRUseEjNS_7FormulaE.exit
  call void @free(ptr noundef %i.chr) #23
  br label %_ZN12_GLOBAL__N_17FormulaD2Ev.exit277

_ZN12_GLOBAL__N_17FormulaD2Ev.exit277:            ; preds = %_ZN12_GLOBAL__N_111LSRInstance17GenerateTruncatesERNS_6LSRUseEjNS_7FormulaE.exit, %bb.qd
  %i.cht = add nuw nsw i64 %.0463, 1              ; 2 uses
  %.not79 = icmp eq i64 %i.cht, %i.cax
  br i1 %.not79, label %._crit_edge466, label %bb.ou, !llvm.loop !947
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_111LSRInstance38FilterOutUndesirableDedicatedRegistersEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(35560) %0) unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"struct.(anonymous namespace)::Formula", align 8 ; 10 uses
  %2 = alloca %"struct.(anonymous namespace)::Formula", align 8 ; 11 uses
  %3 = alloca %"class.llvm::DenseSet.507", align 8 ; 7 uses
  %4 = alloca %"class.llvm::SmallPtrSet.555", align 8 ; 14 uses
  %5 = alloca %"class.llvm::SmallPtrSet.555", align 8 ; 9 uses
  %6 = alloca %"class.llvm::DenseMap.776", align 8 ; 16 uses
  %7 = alloca %"class.(anonymous namespace)::Cost", align 8 ; 10 uses
  %8 = alloca %"class.llvm::SmallVector.421", align 8 ; 15 uses
  %9 = alloca %"struct.std::pair.786", align 8    ; 18 uses
  %10 = alloca %"class.(anonymous namespace)::Cost", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.a, ptr %4, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 16, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 5 uses
  store i32 0, ptr %i.c, align 4, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store i8 1, ptr %i.d, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.e, ptr %5, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 16, ptr %i.f, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i8 1, ptr %i.h, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.k = load i32, ptr %i.j, align 8, !tbaa !50   ; 2 uses
  %i.l = zext i32 %i.k to i64
  %.not199 = icmp eq i32 %i.k, 0
  br i1 %.not199, label %_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEED2Ev.exit, label %.lr.ph202

.lr.ph202:                                        ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 833 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 34744 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 9 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 10 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  br label %bb.h

._crit_edge203:                                   ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E5clearEv.exit
  %.pre217 = load i32, ptr %i.af, align 4, !tbaa !948 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.aw = icmp eq i32 %.pre217, 0
  br i1 %i.aw, label %_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %._crit_edge203
  %i.ax = load ptr, ptr %6, align 8, !tbaa !951
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !952
  %i.ba = zext i32 %.pre217 to i64
  %i.bb = add nuw nsw i64 %i.ba, 31
  %i.bc = lshr i64 %i.bb, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i.i
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !478 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.be, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.bf = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.be, %.lr.ph.i.i ], [ %i.bo, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.bg = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.bh = or disjoint i32 %i.bg, %i.bf
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [56 x i8], ptr %i.ax, i64 %i.bi ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !21 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.bk) #23
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.bn = add i32 %.0.i3.i.i, -1
  %i.bo = and i32 %i.bn, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !953

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.bc
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !954

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.av, align 4, !tbaa !948 ; 2 uses
  %i.bp = icmp eq i32 %.pr.i, 0
  br i1 %i.bp, label %_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEv.exit.i
  %i.bq = load ptr, ptr %6, align 8, !tbaa !951
  %i.br = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bs = mul nuw nsw i64 %i.br, 56
  %i.bt = add nuw nsw i64 %i.br, 31
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = and i64 %i.bu, 1073741820
  %i.bw = add nuw nsw i64 %i.bv, %i.bs
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bq, i64 noundef %i.bw, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEED2Ev.exit

_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEED2Ev.exit: ; preds = %bb.a, %._crit_edge203, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.bx = load i8, ptr %i.h, align 8, !tbaa !14, !range !18, !noundef !19
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEED2Ev.exit
  %i.bz = load ptr, ptr %5, align 8, !tbaa !20
  call void @free(ptr noundef %i.bz) #23
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEED2Ev.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ca = load i8, ptr %i.d, align 8, !tbaa !14, !range !18, !noundef !19
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit48, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit
  %i.cc = load ptr, ptr %4, align 8, !tbaa !20
  call void @free(ptr noundef %i.cc) #23
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit48

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit48:         ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !623 ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %_ZN4llvm6detail12DenseSetImplIPKNS_4SCEVENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit48
  %i.cg = load ptr, ptr %3, align 8, !tbaa !610
  %i.ch = zext i32 %i.ce to i64                   ; 2 uses
  %i.ci = shl nuw nsw i64 %i.ch, 3
  %i.cj = add nuw nsw i64 %i.ch, 31
  %i.ck = lshr i64 %i.cj, 3
  %i.cl = and i64 %i.ck, 1073741820
  %i.cm = add nuw nsw i64 %i.cl, %i.ci
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cg, i64 noundef %i.cm, i64 noundef 8) #23
  br label %_ZN4llvm6detail12DenseSetImplIPKNS_4SCEVENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplIPKNS_4SCEVENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit48, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.h:                                             ; preds = %.lr.ph202, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E5clearEv.exit
  %.039200 = phi i64 [ 0, %.lr.ph202 ], [ %i.se, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E5clearEv.exit ] ; 5 uses
  %.val = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.cn = getelementptr inbounds nuw [2096 x i8], ptr %.val, i64 %.039200 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 680 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 688 ; 4 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !50 ; 2 uses
  %.not42192 = icmp eq i32 %i.cq, 0
  br i1 %.not42192, label %.critedge204, label %.lr.ph197

.lr.ph197:                                        ; preds = %bb.h
  %i.cr = zext i32 %i.cq to i64
  br label %.outer

.outer:                                           ; preds = %.thread, %.lr.ph197
  %.035195.ph = phi i64 [ %i.qz, %.thread ], [ %i.cr, %.lr.ph197 ] ; 2 uses
  %.036194.ph = phi i1 [ true, %.thread ], [ false, %.lr.ph197 ]
  %.0179193.ph = phi i64 [ %.0179193, %.thread ], [ 0, %.lr.ph197 ]
  br label %bb.i

._crit_edge198:                                   ; preds = %bb.db
  br i1 %.036194.ph, label %._crit_edge198.thread, label %.critedge204

bb.i:                                             ; preds = %.outer, %bb.db
  %.0179193 = phi i64 [ %i.qy, %bb.db ], [ %.0179193.ph, %.outer ] ; 5 uses
  %.val47 = load ptr, ptr %i.co, align 8, !tbaa !21
  %i.cs = getelementptr inbounds nuw [112 x i8], ptr %.val47, i64 %.0179193 ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ct = load ptr, ptr %i.m, align 8, !tbaa !560
  %i.cu = load ptr, ptr %i.n, align 8, !tbaa !577, !nonnull !19, !align !34
  %i.cv = load ptr, ptr %i.o, align 8, !tbaa !580, !nonnull !19, !align !34
  %i.cw = load i32, ptr %i.p, align 8, !tbaa !563
  store ptr %i.ct, ptr %7, align 8, !tbaa !567
  store ptr %i.cu, ptr %i.q, align 8, !tbaa !568
  store ptr %i.cv, ptr %i.r, align 8, !tbaa !569
  store i32 %i.cw, ptr %i.s, align 8, !tbaa !570
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  %i.cx = load i8, ptr %i.d, align 8, !tbaa !14, !range !18, !noundef !19
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cz = load i32, ptr %i.c, align 4, !tbaa !45
  %i.da = shl i32 %i.cz, 2
  %i.db = load i32, ptr %i.b, align 8, !tbaa !44  ; 3 uses
  %i.dc = icmp ult i32 %i.da, %i.db
  %i.dd = icmp ugt i32 %i.db, 32
  %or.cond.i = and i1 %i.dc, %i.dd
  br i1 %or.cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm19SmallPtrSetImplBase16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(17) %4) #23
  br label %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit

bb.l:                                             ; preds = %bb.j
  %i.de = load ptr, ptr %4, align 8, !tbaa !20
  %i.df = zext i32 %i.db to i64
  %i.dg = shl nuw nsw i64 %i.df, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.de, i8 -1, i64 %i.dg, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  store i32 0, ptr %i.c, align 4, !tbaa !45
  br label %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit

_ZN4llvm19SmallPtrSetImplBase5clearEv.exit:       ; preds = %bb.k, %bb.m
  %i.dh = load i8, ptr %i.u, align 1, !tbaa !564, !range !18, !noundef !19
  %i.di = trunc nuw i8 %i.dh to i1
  call fastcc void @_ZN12_GLOBAL__N_14Cost11RateFormulaERKNS_7FormulaERN4llvm15SmallPtrSetImplIPKNS4_4SCEVEEERKNS4_8DenseSetIS8_NS4_12DenseMapInfoIS8_vEEEERKNS_6LSRUseEbPS9_(ptr noundef nonnull align 8 dereferenceable(60) %7, ptr noundef nonnull align 8 dereferenceable(112) %i.cs, ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(2096) %i.cn, i1 noundef zeroext %i.di, ptr noundef nonnull %5)
  %.val45 = load i32, ptr %i.v, align 4, !tbaa !955
  %i.dj = icmp eq i32 %.val45, -1
  br i1 %i.dj, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %i.w, ptr %8, align 8, !tbaa !21
  store i32 0, ptr %i.x, align 8, !tbaa !50
  store i32 4, ptr %i.y, align 4, !tbaa !51
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !21 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !50 ; 2 uses
  %i.do = zext i32 %i.dn to i64
  %.idx = shl nuw nsw i64 %i.do, 3
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.idx
  %.not43187 = icmp eq i32 %i.dn, 0
  br i1 %.not43187, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit, %bb.n
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cs, i64 88
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !714 ; 4 uses
  %.not44 = icmp eq ptr %i.dr, null
  br i1 %.not44, label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit50thread-pre-split, label %bb.r

.lr.ph:                                           ; preds = %bb.n, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit
  %.0188 = phi ptr [ %i.eb, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit ], [ %i.dl, %bb.n ] ; 2 uses
  %i.ds = load ptr, ptr %.0188, align 8, !tbaa !456 ; 3 uses
  %i.dt = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_113RegUseTracker24isRegUsedByUsesOtherThanEPKN4llvm4SCEVEm(ptr noundef nonnull align 8 dereferenceable(168) %i.z, ptr noundef %i.ds, i64 noundef %.039200)
  br i1 %i.dt, label %bb.o, label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit

bb.o:                                             ; preds = %.lr.ph
  %i.du = load i32, ptr %i.x, align 8, !tbaa !50  ; 2 uses
  %i.dv = load i32, ptr %i.y, align 4, !tbaa !51
  %.not.i = icmp ult i32 %i.du, %i.dv
  br i1 %.not.i, label %bb.q, label %bb.p, !prof !166

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %i.ds)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit

bb.q:                                             ; preds = %bb.o
  %i.dw = zext i32 %i.du to i64
end_hunk_5
begin_hunk_6_@_ZN12_GLOBAL__N_111LSRInstance38FilterOutUndesirableDedicatedRegistersEv:bb.a
bb.cl:                                            ; preds = %bb.ck
  call void @free(ptr noundef %i.pm) #23
  %.pre.i109 = load ptr, ptr %i.aq, align 8, !tbaa !21
  br label %_ZN4llvm15SmallVectorImplIPKNS_4SCEVEE12assignRemoteEOS4_.exit.i110

_ZN4llvm15SmallVectorImplIPKNS_4SCEVEE12assignRemoteEOS4_.exit.i110: ; preds = %bb.cl, %bb.ck
  %i.pp = phi ptr [ %i.pk, %bb.ck ], [ %.pre.i109, %bb.cl ]
  %i.pq = getelementptr inbounds i8, ptr %i.nl, i64 -64
  store ptr %i.pp, ptr %i.oc, align 8, !tbaa !21
  %i.pr = load <2 x i32>, ptr %i.as, align 8, !tbaa !478
  store <2 x i32> %i.pr, ptr %i.pq, align 8, !tbaa !478
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !21
  store i32 0, ptr %i.at, align 4, !tbaa !51
  br label %_ZN4llvm15SmallVectorImplIPKNS_4SCEVEEaSEOS4_.exit123.sink.split

bb.cm:                                            ; preds = %bb.cj
  %i.ps = load i32, ptr %i.as, align 8, !tbaa !50 ; 6 uses
  %i.pt = zext i32 %i.ps to i64                   ; 2 uses
  %i.pu = getelementptr inbounds i8, ptr %i.nl, i64 -64 ; 4 uses
  %i.pv = load i32, ptr %i.pu, align 8, !tbaa !50 ; 4 uses
  %i.pw = zext i32 %i.pv to i64                   ; 2 uses
  %.not.i111 = icmp ult i32 %i.pv, %i.ps
  br i1 %.not.i111, label %bb.cq, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.px = load ptr, ptr %i.oc, align 8, !tbaa !21 ; 2 uses
  switch i32 %i.ps, label %bb.co [
    i32 0, label %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit.i112
    i32 1, label %bb.cp
  ], !prof !981

bb.co:                                            ; preds = %bb.cn
  %.idx.i113 = shl nuw nsw i64 %i.pt, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.px, ptr align 8 %i.pk, i64 %.idx.i113, i1 false)
  br label %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit.i112

bb.cp:                                            ; preds = %bb.cn
  %i.py = load ptr, ptr %i.pk, align 8, !tbaa !456
  store ptr %i.py, ptr %i.px, align 8, !tbaa !456
  br label %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit.i112

_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit.i112: ; preds = %bb.cp, %bb.co, %bb.cn
  store i32 %i.ps, ptr %i.pu, align 8, !tbaa !50
  br label %_ZN4llvm15SmallVectorImplIPKNS_4SCEVEEaSEOS4_.exit123.sink.split

bb.cq:                                            ; preds = %bb.cm
  %i.pz = getelementptr inbounds i8, ptr %i.nl, i64 -60
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !51
  %i.qb = icmp ult i32 %i.qa, %i.ps
  br i1 %i.qb, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  store i32 0, ptr %i.pu, align 8, !tbaa !50
  %i.qc = getelementptr inbounds i8, ptr %i.nl, i64 -56
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %i.oc, ptr noundef nonnull %i.qc, i64 noundef %i.pt, i64 noundef 8) #23
  br label %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i117

bb.cs:                                            ; preds = %bb.cq
  %.not32.i114 = icmp eq i32 %i.pv, 0
  br i1 %.not32.i114, label %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i117, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.qd = load ptr, ptr %i.oc, align 8, !tbaa !21 ; 2 uses
  %.not37.i115 = icmp eq i32 %i.pv, 1
  br i1 %.not37.i115, label %bb.cv, label %bb.cu, !prof !167

bb.cu:                                            ; preds = %bb.ct
  %.idx36.i116 = shl nuw nsw i64 %i.pw, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.qd, ptr align 8 %i.pk, i64 %.idx36.i116, i1 false)
  br label %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i117

bb.cv:                                            ; preds = %bb.ct
  %i.qe = load ptr, ptr %i.pk, align 8, !tbaa !456
  store ptr %i.qe, ptr %i.qd, align 8, !tbaa !456
  br label %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i117

_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i117: ; preds = %bb.cv, %bb.cu, %bb.cs, %bb.cr
  %.026.i118 = phi i64 [ 0, %bb.cr ], [ 0, %bb.cs ], [ %i.pw, %bb.cu ], [ 1, %bb.cv ] ; 4 uses
  %i.qf = load i32, ptr %i.as, align 8, !tbaa !50
  %i.qg = zext i32 %i.qf to i64                   ; 2 uses
  %.not.i.i.i119 = icmp samesign eq i64 %.026.i118, %i.qg
  br i1 %.not.i.i.i119, label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i122, label %bb.cw

bb.cw:                                            ; preds = %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i117
  %i.qh = load ptr, ptr %i.aq, align 8, !tbaa !21
  %.idx39.i120 = shl nuw nsw i64 %.026.i118, 3
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 %.idx39.i120
  %i.qj = load ptr, ptr %i.oc, align 8, !tbaa !21
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.qj, i64 %.026.i118
  %i.ql = sub nsw i64 %i.qg, %.026.i118
  %gepdiff.i121 = shl nsw i64 %i.ql, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qk, ptr align 8 %i.qi, i64 %gepdiff.i121, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i122

_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i122: ; preds = %bb.cw, %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i117
  store i32 %i.ps, ptr %i.pu, align 8, !tbaa !50
  br label %_ZN4llvm15SmallVectorImplIPKNS_4SCEVEEaSEOS4_.exit123.sink.split

_ZN4llvm15SmallVectorImplIPKNS_4SCEVEEaSEOS4_.exit123.sink.split: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i122, %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit.i112, %_ZN4llvm15SmallVectorImplIPKNS_4SCEVEE12assignRemoteEOS4_.exit.i110
  store i32 0, ptr %i.as, align 8, !tbaa !50
  br label %_ZN4llvm15SmallVectorImplIPKNS_4SCEVEEaSEOS4_.exit123

_ZN4llvm15SmallVectorImplIPKNS_4SCEVEEaSEOS4_.exit123: ; preds = %_ZN4llvm15SmallVectorImplIPKNS_4SCEVEEaSEOS4_.exit123.sink.split, %_ZN4llvm15SmallVectorImplIPKNS_4SCEVEEaSEOS4_.exit138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.pi, ptr noundef nonnull align 8 dereferenceable(17) %i.au, i64 17, i1 false)
  %i.qm = load ptr, ptr %i.aq, align 8, !tbaa !21 ; 2 uses
  %i.qn = icmp eq ptr %i.qm, %i.ar
  br i1 %i.qn, label %_ZSt4swapIN12_GLOBAL__N_17FormulaEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit.i, label %bb.cx

bb.cx:                                            ; preds = %_ZN4llvm15SmallVectorImplIPKNS_4SCEVEEaSEOS4_.exit123
  call void @free(ptr noundef %i.qm) #23
  br label %_ZSt4swapIN12_GLOBAL__N_17FormulaEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit.i

_ZSt4swapIN12_GLOBAL__N_17FormulaEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit.i: ; preds = %bb.cx, %_ZN4llvm15SmallVectorImplIPKNS_4SCEVEEaSEOS4_.exit123
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %.pre.i = load i32, ptr %i.cp, align 8, !tbaa !50
  %.val.i.pre.i = load ptr, ptr %i.co, align 8, !tbaa !21
  br label %bb.cy

bb.cy:                                            ; preds = %_ZSt4swapIN12_GLOBAL__N_17FormulaEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit.i, %.loopexit
  %.val.i.i = phi ptr [ %.val.i.pre.i, %_ZSt4swapIN12_GLOBAL__N_17FormulaEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit.i ], [ %.val4.i, %.loopexit ]
  %i.qo = phi i32 [ %.pre.i, %_ZSt4swapIN12_GLOBAL__N_17FormulaEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit.i ], [ %.val5.i, %.loopexit ]
  %i.qp = add i32 %i.qo, -1                       ; 2 uses
  store i32 %i.qp, ptr %i.cp, align 8, !tbaa !50
  %i.qq = zext i32 %i.qp to i64
  %i.qr = getelementptr inbounds nuw [112 x i8], ptr %.val.i.i, i64 %i.qq ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 40
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !21 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qr, i64 56
  %i.qv = icmp eq ptr %i.qt, %i.qu
  br i1 %i.qv, label %.thread, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @free(ptr noundef %i.qt) #23
  br label %.thread

.critedge:                                        ; preds = %_ZNSt4pairIN4llvm11SmallVectorIPKNS0_4SCEVELj4EEEmED2Ev.exit
  %i.qw = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.qx = icmp eq ptr %i.qw, %i.w
  br i1 %i.qx, label %bb.db, label %bb.da

bb.da:                                            ; preds = %.critedge
  call void @free(ptr noundef %i.qw) #23
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.qy = add i64 %.0179193, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %.not42 = icmp eq i64 %i.qy, %.035195.ph
  br i1 %.not42, label %._crit_edge198, label %bb.i, !llvm.loop !982

.thread:                                          ; preds = %bb.cz, %bb.cy
  %i.qz = add i64 %.035195.ph, -1                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %.not42310 = icmp eq i64 %.0179193, %i.qz
  br i1 %.not42310, label %._crit_edge198.thread, label %.outer, !llvm.loop !982

._crit_edge198.thread:                            ; preds = %.thread, %._crit_edge198
  call fastcc void @_ZN12_GLOBAL__N_16LSRUse13RecomputeRegsEmRNS_13RegUseTrackerE(ptr noundef nonnull align 8 dereferenceable(2096) %i.cn, i64 noundef %.039200, ptr noundef nonnull align 8 dereferenceable(168) %i.z)
  br label %.critedge204

.critedge204:                                     ; preds = %bb.h, %._crit_edge198.thread, %._crit_edge198
  %i.ra = load i32, ptr %i.ag, align 8, !tbaa !974 ; 2 uses
  %i.rb = icmp eq i32 %i.ra, 0
  br i1 %i.rb, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E5clearEv.exit, label %bb.dc

bb.dc:                                            ; preds = %.critedge204
  %i.rc = shl i32 %i.ra, 2
  %i.rd = load i32, ptr %i.af, align 4, !tbaa !948 ; 4 uses
  %i.re = icmp ult i32 %i.rc, %i.rd
  br i1 %i.re, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %i.rf = icmp ugt i32 %i.rd, 64
  br i1 %i.rf, label %bb.de, label %.lr.ph7.preheader.i.i59

bb.de:                                            ; preds = %bb.dd
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E5clearEv.exit

bb.df:                                            ; preds = %bb.dc
  %i.rg = icmp eq i32 %i.rd, 0
  br i1 %i.rg, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEv.exit.i72, label %.lr.ph7.preheader.i.i59

.lr.ph7.preheader.i.i59:                          ; preds = %bb.df, %bb.dd
  %i.rh = load ptr, ptr %6, align 8, !tbaa !951
  %i.ri = load ptr, ptr %i.ae, align 8, !tbaa !952
  %i.rj = zext i32 %i.rd to i64
  %i.rk = add nuw nsw i64 %i.rj, 31
  %i.rl = lshr i64 %i.rk, 5
  br label %.lr.ph7.i.i60

.lr.ph7.i.i60:                                    ; preds = %._crit_edge.i.i68, %.lr.ph7.preheader.i.i59
  %indvars.iv.i.i61 = phi i64 [ 0, %.lr.ph7.preheader.i.i59 ], [ %indvars.iv.next.i.i69, %._crit_edge.i.i68 ] ; 3 uses
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %indvars.iv.i.i61
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !478 ; 2 uses
  %.not11.i2.i.i62 = icmp eq i32 %i.rn, 0
  br i1 %.not11.i2.i.i62, label %._crit_edge.i.i68, label %.lr.ph.i.i63

.lr.ph.i.i63:                                     ; preds = %.lr.ph7.i.i60
  %indvars.iv.tr.i.i64 = trunc nuw i64 %indvars.iv.i.i61 to i32
  %i.ro = shl nuw i32 %indvars.iv.tr.i.i64, 5
  br label %bb.dg

bb.dg:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i66, %.lr.ph.i.i63
  %.0.i3.i.i65 = phi i32 [ %i.rn, %.lr.ph.i.i63 ], [ %i.rx, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i66 ] ; 3 uses
  %i.rp = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i65, i1 true)
  %i.rq = or disjoint i32 %i.rp, %i.ro
  %i.rr = zext i32 %i.rq to i64
  %i.rs = getelementptr inbounds nuw [56 x i8], ptr %i.rh, i64 %i.rr ; 2 uses
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !21 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rs, i64 16
  %i.rv = icmp eq ptr %i.rt, %i.ru
  br i1 %i.rv, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i66, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @free(ptr noundef %i.rt) #23
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i66

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i66: ; preds = %bb.dh, %bb.dg
  %i.rw = add i32 %.0.i3.i.i65, -1
  %i.rx = and i32 %i.rw, %.0.i3.i.i65             ; 2 uses
  %.not11.i.i.i67 = icmp eq i32 %i.rx, 0
  br i1 %.not11.i.i.i67, label %._crit_edge.i.i68, label %bb.dg, !llvm.loop !953

._crit_edge.i.i68:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i66, %.lr.ph7.i.i60
  %indvars.iv.next.i.i69 = add nuw nsw i64 %indvars.iv.i.i61, 1 ; 2 uses
  %.not.i.i.i70 = icmp eq i64 %indvars.iv.next.i.i69, %i.rl
  br i1 %.not.i.i.i70, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEv.exit.loopexit.i, label %.lr.ph7.i.i60, !llvm.loop !954

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEv.exit.loopexit.i: ; preds = %._crit_edge.i.i68
  %.pre.i71 = load i32, ptr %i.af, align 4, !tbaa !948
  %i.ry = zext i32 %.pre.i71 to i64
  %i.rz = add nuw nsw i64 %i.ry, 31
  %i.sa = lshr i64 %i.rz, 3
  %i.sb = and i64 %i.sa, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEv.exit.i72

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEv.exit.i72: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEv.exit.loopexit.i, %bb.df
  %i.sc = phi i64 [ %i.sb, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEv.exit.loopexit.i ], [ 0, %bb.df ]
  %i.sd = load ptr, ptr %i.ae, align 8, !tbaa !952
  call void @llvm.memset.p0.i64(ptr align 4 %i.sd, i8 0, i64 %i.sc, i1 false)
  store i32 0, ptr %i.ag, align 8, !tbaa !974
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E5clearEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E5clearEv.exit: ; preds = %.critedge204, %bb.de, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEv.exit.i72
  %i.se = add nuw nsw i64 %.039200, 1             ; 2 uses
  %.not = icmp eq i64 %i.se, %i.l
  br i1 %.not, label %._crit_edge203, label %bb.h, !llvm.loop !983
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_111LSRInstance32NarrowSearchSpaceUsingHeuristicsEv(ptr nofree noundef nonnull align 8 dereferenceable(35560) %0) unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"struct.(anonymous namespace)::Formula", align 8 ; 9 uses
  %2 = alloca %"struct.(anonymous namespace)::Formula", align 8 ; 10 uses
  %3 = alloca %"class.std::optional.829", align 8 ; 10 uses
  %4 = alloca %"class.llvm::SmallPtrSet.578", align 8 ; 12 uses
  %5 = alloca %"struct.(anonymous namespace)::Formula", align 8 ; 9 uses
  %6 = alloca %"class.llvm::SmallPtrSet.578", align 8 ; 20 uses
  %7 = alloca %"class.llvm::DenseMap.814", align 8 ; 17 uses
  %8 = alloca %"struct.std::pair.820", align 8    ; 5 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %9 = alloca %"struct.(anonymous namespace)::Formula", align 8 ; 9 uses
  %10 = alloca %"struct.(anonymous namespace)::Formula", align 8 ; 10 uses
  %11 = alloca %"class.(anonymous namespace)::Cost", align 8 ; 9 uses
  %12 = alloca %"class.(anonymous namespace)::Cost", align 8 ; 9 uses
  %13 = alloca %"class.llvm::DenseMap.795", align 8 ; 14 uses
  %14 = alloca %"class.llvm::DenseSet.507", align 8 ; 7 uses
  %15 = alloca %"class.llvm::SmallPtrSet.555", align 8 ; 14 uses
  %16 = alloca %"struct.(anonymous namespace)::Formula", align 8 ; 10 uses
  %17 = alloca %"class.llvm::SmallVector.421", align 8 ; 13 uses
  %18 = alloca %"struct.(anonymous namespace)::Formula", align 8 ; 10 uses
  %19 = alloca %"class.llvm::SmallVector.421", align 8 ; 13 uses
  %20 = alloca %"struct.(anonymous namespace)::Formula", align 8 ; 10 uses
  %21 = alloca %"class.llvm::SmallVector.421", align 8 ; 13 uses
  %22 = alloca %"struct.(anonymous namespace)::Formula", align 8 ; 11 uses
  %23 = alloca %"struct.(anonymous namespace)::Formula", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 19 uses
  %.val101.i = load ptr, ptr %i.b, align 8, !tbaa !21 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 14 uses
  %.val102.i = load i32, ptr %i.c, align 8, !tbaa !50 ; 3 uses
  %i.d = zext i32 %.val102.i to i64               ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.d, 2096
  %i.e = getelementptr inbounds nuw i8, ptr %.val101.i, i64 %.idx.i.i
  %.not3.i.i = icmp eq i32 %.val102.i, 0
  %.pre.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL15ComplexityLimit, i64 120), align 8, !tbaa !984 ; 4 uses
  %.pre349.i = zext i32 %.pre.i to i64            ; 4 uses
  br i1 %.not3.i.i, label %_ZNK12_GLOBAL__N_111LSRInstance29EstimateSearchSpaceComplexityEv.exit.i73, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.0155.i.i = phi ptr [ %i.j, %bb.b ], [ %.val101.i, %bb.a ] ; 2 uses
  %.0164.i.i = phi i64 [ %i.i, %bb.b ], [ 1, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %.0155.i.i, i64 688
  %i.g = load i32, ptr %i.f, align 8, !tbaa !50   ; 2 uses
  %.not20.i.i = icmp ult i32 %i.g, %.pre.i
  br i1 %.not20.i.i, label %bb.b, label %.lr.ph324.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = zext i32 %i.g to i64
  %i.i = mul nuw i64 %.0164.i.i, %i.h             ; 3 uses
  %.not21.i.i = icmp uge i64 %i.i, %.pre349.i
  %i.j = getelementptr inbounds nuw i8, ptr %.0155.i.i, i64 2096 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.e
  %or.cond.i.i = select i1 %.not21.i.i, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %_ZNK12_GLOBAL__N_111LSRInstance29EstimateSearchSpaceComplexityEv.exit.i, label %.lr.ph.i.i

_ZNK12_GLOBAL__N_111LSRInstance29EstimateSearchSpaceComplexityEv.exit.i: ; preds = %bb.b
  %.not.i = icmp ult i64 %i.i, %.pre349.i
  br i1 %.not.i, label %_ZN12_GLOBAL__N_111LSRInstance37NarrowSearchSpaceByDetectingSupersetsEv.exit, label %.lr.ph324.i

.lr.ph324.i:                                      ; preds = %.lr.ph.i.i, %_ZNK12_GLOBAL__N_111LSRInstance29EstimateSearchSpaceComplexityEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %22, i64 40 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %22, i64 56 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %22, i64 48 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %22, i64 52
  %i.o = getelementptr inbounds nuw i8, ptr %22, i64 88 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %21, i64 12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %20, i64 40 ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %20, i64 56 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %20, i64 52 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %20, i64 88 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %23, i64 40 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %23, i64 56 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %23, i64 48 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %23, i64 52
  %i.ac = getelementptr inbounds nuw i8, ptr %23, i64 88 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %19, i64 12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 10 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %18, i64 56 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %18, i64 52 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %18, i64 88 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 34744
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i, %.lr.ph324.i
  %.0322.i = phi i64 [ 0, %.lr.ph324.i ], [ %i.pi, %.critedge.i ] ; 3 uses
  %.val99.i = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.am = getelementptr inbounds nuw [2096 x i8], ptr %.val99.i, i64 %.0322.i ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 680 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 688 ; 7 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !50 ; 2 uses
  %.not90315.i = icmp eq i32 %i.ap, 0
  br i1 %.not90315.i, label %.critedge.i, label %.lr.ph319.i

.lr.ph319.i:                                      ; preds = %bb.c
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 20 ; 2 uses
  br label %bb.d

._crit_edge.i:                                    ; preds = %.thread280.i
  br i1 %.11.i, label %bb.dg, label %.critedge.i

bb.d:                                             ; preds = %.thread280.i, %.lr.ph319.i
  %.056318.i = phi i1 [ false, %.lr.ph319.i ], [ %.11.i, %.thread280.i ] ; 3 uses
  %.062317.i = phi i64 [ %i.aq, %.lr.ph319.i ], [ %.1173.i, %.thread280.i ] ; 3 uses
  %.074316.i = phi i64 [ 0, %.lr.ph319.i ], [ %i.ph, %.thread280.i ] ; 4 uses
  %.val100.i = load ptr, ptr %i.an, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw [112 x i8], ptr %.val100.i, i64 %.074316.i ; 20 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.val.i = load i64, ptr %i.au, align 8, !tbaa !805
  %.not291.i = icmp eq i64 %.val.i, 0
  br i1 %.not291.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = getelementptr i8, ptr %i.at, i64 16
  %.val97.i = load i8, ptr %i.av, align 8, !tbaa !813, !range !18, !noundef !19
  %i.aw = trunc nuw i8 %.val97.i to i1
  br i1 %i.aw, label %.thread280.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 40 ; 25 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !21 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 21 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !50 ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %.idx325.i = shl nuw nsw i64 %i.bb, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx325.i
  %.not91302.i = icmp eq i32 %i.ba, 0
  br i1 %.not91302.i, label %.thread280.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.bd = icmp eq ptr %22, %i.at
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 88 ; 6 uses
  %i.bf = icmp eq ptr %20, %i.at
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 56 ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 52 ; 6 uses
  %i.bi = icmp eq ptr %23, %i.at
  %i.bj = icmp eq ptr %18, %i.at
  br label %bb.g

bb.g:                                             ; preds = %.thread271.i, %.lr.ph.i
  %.157306.i = phi i1 [ %.056318.i, %.lr.ph.i ], [ %.9279.i, %.thread271.i ] ; 5 uses
end_hunk_6
begin_hunk_7_@_ZNK12_GLOBAL__N_111LSRInstance5SolveERN4llvm15SmallVectorImplIPKNS_7FormulaEEE:bb.a
  store ptr %i.t, ptr %5, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 16, ptr %i.u, align 8, !tbaa !44
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !45
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i8 1, ptr %i.w, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.y = load i32, ptr %i.x, align 8, !tbaa !50   ; 2 uses
  %i.z = icmp ugt i32 %i.y, 8
  br i1 %i.z, label %bb.b, label %_ZN4llvm15SmallVectorImplIPKN12_GLOBAL__N_17FormulaEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.aa = zext i32 %i.y to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.aa, i64 noundef 8) #23
  br label %_ZN4llvm15SmallVectorImplIPKN12_GLOBAL__N_17FormulaEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPKN12_GLOBAL__N_17FormulaEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  call fastcc void @_ZNK12_GLOBAL__N_111LSRInstance12SolveRecurseERN4llvm15SmallVectorImplIPKNS_7FormulaEEERNS_4CostES7_RKS8_RKNS1_11SmallPtrSetIPKNS1_4SCEVELj16EEERNS1_8DenseSetISF_NS1_12DenseMapInfoISF_vEEEE(ptr noundef nonnull align 8 dereferenceable(35560) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(60) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef nonnull align 8 dereferenceable(152) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !50
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIPKN12_GLOBAL__N_17FormulaEE7reserveEm.exit
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL33AllowDropSolutionIfLessProfitable, i64 120), align 8, !tbaa !547
  switch i32 %i.ad, label %bb.f [
    i32 1, label %"_ZZNK12_GLOBAL__N_111LSRInstance5SolveERN4llvm15SmallVectorImplIPKNS_7FormulaEEEENK3$_0clEv.exit"
    i32 2, label %bb.d
    i32 0, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %"_ZZNK12_GLOBAL__N_111LSRInstance5SolveERN4llvm15SmallVectorImplIPKNS_7FormulaEEEENK3$_0clEv.exit"

bb.e:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !580, !nonnull !19, !align !34
  %i.af = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo37shouldDropLSRSolutionIfLessProfitableEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #23
  br label %"_ZZNK12_GLOBAL__N_111LSRInstance5SolveERN4llvm15SmallVectorImplIPKNS_7FormulaEEEENK3$_0clEv.exit"

bb.f:                                             ; preds = %bb.c
  unreachable

"_ZZNK12_GLOBAL__N_111LSRInstance5SolveERN4llvm15SmallVectorImplIPKNS_7FormulaEEEENK3$_0clEv.exit": ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i1 [ %i.af, %bb.e ], [ false, %bb.d ], [ true, %bb.c ]
  %i.ag = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL9InsnsCost, i64 8), align 8, !tbaa !562
  %i.ah = icmp ne i16 %i.ag, 0
  %i.ai = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL9InsnsCost, i64 120), align 8, !range !18
  %i.aj = trunc nuw i8 %i.ai to i1
  %or.cond.i = select i1 %i.ah, i1 %i.aj, i1 false
  br i1 %or.cond.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %"_ZZNK12_GLOBAL__N_111LSRInstance5SolveERN4llvm15SmallVectorImplIPKNS_7FormulaEEEENK3$_0clEv.exit"
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !980 ; 2 uses
  %i.am = load i32, ptr %i.o, align 8, !tbaa !980 ; 2 uses
  %.not.i6 = icmp eq i32 %i.al, %i.am
  br i1 %.not.i6, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = icmp ult i32 %i.al, %i.am
  br label %_ZNK12_GLOBAL__N_14Cost6isLessERKS0_.exit

bb.i:                                             ; preds = %bb.g, %"_ZZNK12_GLOBAL__N_111LSRInstance5SolveERN4llvm15SmallVectorImplIPKNS_7FormulaEEEENK3$_0clEv.exit"
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !569
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.ar = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo13isLSRCostLessERKNS0_7LSRCostES3_(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 4 dereferenceable(32) %i.aq, ptr noundef nonnull align 4 dereferenceable(32) %i.o) #23
  br label %_ZNK12_GLOBAL__N_14Cost6isLessERKS0_.exit

_ZNK12_GLOBAL__N_14Cost6isLessERKS0_.exit:        ; preds = %bb.h, %bb.i
  %.0.i5 = phi i1 [ %i.an, %bb.h ], [ %i.ar, %bb.i ]
  %or.cond = and i1 %.0.i, %.0.i5
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK12_GLOBAL__N_14Cost6isLessERKS0_.exit
  store i32 0, ptr %i.ab, align 8, !tbaa !50
  br label %bb.k

bb.k:                                             ; preds = %_ZNK12_GLOBAL__N_14Cost6isLessERKS0_.exit, %bb.j, %_ZN4llvm15SmallVectorImplIPKN12_GLOBAL__N_17FormulaEE7reserveEm.exit
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !623 ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN4llvm6detail12DenseSetImplIPKNS_4SCEVENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %6, align 8, !tbaa !610
  %i.aw = zext i32 %i.at to i64                   ; 2 uses
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.aw, 31
  %i.az = lshr i64 %i.ay, 3
  %i.ba = and i64 %i.az, 1073741820
  %i.bb = add nuw nsw i64 %i.ba, %i.ax
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.av, i64 noundef %i.bb, i64 noundef 8) #23
  br label %_ZN4llvm6detail12DenseSetImplIPKNS_4SCEVENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplIPKNS_4SCEVENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.bc = load i8, ptr %i.w, align 8, !tbaa !14, !range !18, !noundef !19
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm6detail12DenseSetImplIPKNS_4SCEVENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit
  %i.be = load ptr, ptr %5, align 8, !tbaa !20
  call void @free(ptr noundef %i.be) #23
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %_ZN4llvm6detail12DenseSetImplIPKNS_4SCEVENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.bf = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.a
  br i1 %i.bg, label %_ZN4llvm11SmallVectorIPKN12_GLOBAL__N_17FormulaELj8EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit
  call void @free(ptr noundef %i.bf) #23
  br label %_ZN4llvm11SmallVectorIPKN12_GLOBAL__N_17FormulaELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPKN12_GLOBAL__N_17FormulaELj8EED2Ev.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9SetVectorIPNS_4TypeENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EE5clearEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !655  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm6detail12DenseSetImplIPNS_4TypeENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i32 %i.b, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !484  ; 3 uses
  %i.g = icmp ult i32 %i.d, %i.f
  %i.h = icmp ugt i32 %i.f, 64
  %or.cond.i.i = and i1 %i.g, %i.h
  br i1 %or.cond.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %_ZN4llvm6detail12DenseSetImplIPNS_4TypeENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5clearEv.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !656
  %i.k = zext i32 %i.f to i64
  %i.l = add nuw nsw i64 %i.k, 31
  %i.m = lshr i64 %i.l, 3
  %i.n = and i64 %i.m, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.j, i8 0, i64 %i.n, i1 false)
  store i32 0, ptr %i.a, align 8, !tbaa !655
  br label %_ZN4llvm6detail12DenseSetImplIPNS_4TypeENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5clearEv.exit

_ZN4llvm6detail12DenseSetImplIPNS_4TypeENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5clearEv.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.o, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_113RegUseTracker5clearEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(168) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.val5.i = load i32, ptr %i.a, align 8, !tbaa !1142 ; 3 uses
  %i.b = icmp eq i32 %.val5.i, 0
  br i1 %i.b, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl i32 %.val5.i, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %.val2.i = load i32, ptr %i.d, align 4, !tbaa !475 ; 6 uses
  %i.e = icmp ult i32 %i.c, %.val2.i
  br i1 %i.e, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ugt i32 %.val2.i, 64
  br i1 %i.f, label %.lr.ph11.preheader.i.i.i, label %.lr.ph11.preheader.i.i

.lr.ph11.preheader.i.i.i:                         ; preds = %bb.c
  %.val4.i.i.i = load ptr, ptr %0, align 8, !tbaa !476
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val3.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !477
  %i.h = zext i32 %.val2.i to i64
  %i.i = add nuw nsw i64 %i.h, 31
  %i.j = lshr i64 %i.i, 5
  br label %.lr.ph11.i.i.i

.lr.ph11.i.i.i:                                   ; preds = %._crit_edge.i.i.i, %.lr.ph11.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph11.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.val3.i.i.i, i64 %indvars.iv.i.i.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !478  ; 2 uses
  %.not11.i6.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not11.i6.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph11.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.m = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.d

bb.d:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i7.i.i.i = phi i32 [ %i.l, %.lr.ph.i.i.i ], [ %i.z, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.n = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i7.i.i.i, i1 true)
  %i.o = or disjoint i32 %i.n, %i.m
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.val4.i.i.i, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !479 ; 3 uses
  %i.s = trunc i64 %.val.i.i.i.i to i1
  br i1 %i.s, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = inttoptr i64 %.val.i.i.i.i to ptr        ; 3 uses
  %i.u = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.u, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !21   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef %i.v) #23
  br label %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i.i.i

_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i.i.i:          ; preds = %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 72) #25
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i.i.i, %bb.e, %bb.d
  %i.y = add i32 %.0.i7.i.i.i, -1
  %i.z = and i32 %i.y, %.0.i7.i.i.i               ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.d, !llvm.loop !481

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph11.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.j
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i.i, label %.lr.ph11.i.i.i, !llvm.loop !482

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %i.aa = add i32 %.val5.i, -1
  %i.ab = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aa, i1 false)
  %i.ac = sub nuw nsw i32 33, %i.ab
  %i.ad = shl nuw i32 1, %i.ac                    ; 2 uses
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umax.i32(i32 %i.ad, i32 64) ; 2 uses
  %.not.i.i = icmp eq i32 %i.ad, %.val2.i         ; 2 uses
  %spec.select10.i.i.i = select i1 %.not.i.i, i32 0, i32 %.sroa.speculated.i.i.i
  %.sroa.39.0.insert.ext.i.i.i = zext i32 %spec.select10.i.i.i to i64 ; 2 uses
  br i1 %.not.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i.i
  store i32 0, ptr %i.a, align 8, !tbaa !1142
  %.val1.i.i.i = load i32, ptr %i.d, align 4, !tbaa !475 ; 2 uses
  %.not.i4.i.i = icmp eq i32 %.val1.i.i.i, 0
  br i1 %.not.i4.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val2.i5.i.i = load ptr, ptr %i.g, align 8, !tbaa !477
  %i.ae = zext i32 %.val1.i.i.i to i64
  %i.af = add nuw nsw i64 %i.ae, 31
  %i.ag = lshr i64 %i.af, 3
  %i.ah = and i64 %i.ag, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %.val2.i5.i.i, i8 0, i64 %i.ah, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit

bb.j:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i.i
  %i.ai = load i32, ptr %i.d, align 4, !tbaa !475 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZN4llvm8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17deallocateBucketsEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %0, align 8, !tbaa !476
  %i.al = zext i32 %i.ai to i64                   ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ak, i64 noundef %i.aq, i64 noundef 8) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17deallocateBucketsEv.exit.i.i

_ZN4llvm8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17deallocateBucketsEv.exit.i.i: ; preds = %bb.k, %bb.j
  store i32 %.sroa.speculated.i.i.i, ptr %i.d, align 4, !tbaa !475
  %i.ar = shl nuw nsw i64 %.sroa.39.0.insert.ext.i.i.i, 4
  %i.as = add nuw nsw i64 %.sroa.39.0.insert.ext.i.i.i, 31
  %i.at = lshr i64 %i.as, 3
  %i.au = and i64 %i.at, 1073741820
  %i.av = add nuw nsw i64 %i.au, %i.ar
  %i.aw = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.av, i64 noundef 8) #23 ; 2 uses
  %i.ax = load i32, ptr %i.d, align 4, !tbaa !475 ; 2 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = shl nuw nsw i64 %i.ay, 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az ; 2 uses
  store ptr %i.aw, ptr %0, align 8, !tbaa !476
  store ptr %i.ba, ptr %i.g, align 8, !tbaa !477
  store i32 0, ptr %i.a, align 8, !tbaa !1142
  %.not.i.i7.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i7.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17deallocateBucketsEv.exit.i.i
  %i.bb = add nuw nsw i64 %i.ay, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ba, i8 0, i64 %i.bd, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit

bb.m:                                             ; preds = %bb.b
  %i.be = icmp eq i32 %.val2.i, 0
  br i1 %i.be, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i, label %.lr.ph11.preheader.i.i

.lr.ph11.preheader.i.i:                           ; preds = %bb.m, %bb.c
  %.val4.i.i = load ptr, ptr %0, align 8, !tbaa !476
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i6.i = load ptr, ptr %i.bf, align 8, !tbaa !477
  %i.bg = zext i32 %.val2.i to i64
  %i.bh = add nuw nsw i64 %i.bg, 31
  %i.bi = lshr i64 %i.bh, 5
  br label %.lr.ph11.i.i

.lr.ph11.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph11.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph11.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.val3.i6.i, i64 %indvars.iv.i.i
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !478 ; 2 uses
  %.not11.i6.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not11.i6.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph11.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.bl = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.n

bb.n:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i7.i.i = phi i32 [ %i.bk, %.lr.ph.i.i ], [ %i.by, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.bm = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i7.i.i, i1 true)
  %i.bn = or disjoint i32 %i.bm, %i.bl
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %.val4.i.i, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.val.i.i.i = load i64, ptr %i.bq, align 8, !tbaa !479 ; 3 uses
  %i.br = trunc i64 %.val.i.i.i to i1
  br i1 %i.br, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = inttoptr i64 %.val.i.i.i to ptr         ; 3 uses
  %i.bt = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.bt, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !21 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef %i.bu) #23
  br label %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i.i

_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i.i:            ; preds = %bb.q, %bb.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef 72) #25
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i.i, %bb.o, %bb.n
  %i.bx = add i32 %.0.i7.i.i, -1
  %i.by = and i32 %i.bx, %.0.i7.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.by, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.n, !llvm.loop !481

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph11.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i7.i = icmp eq i64 %indvars.iv.next.i.i, %i.bi
  br i1 %.not.i.i7.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.loopexit.i, label %.lr.ph11.i.i, !llvm.loop !482

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.loopexit.i: ; preds = %._crit_edge.i.i
  %.val.pre.i = load i32, ptr %i.d, align 4, !tbaa !475
  %i.bz = zext i32 %.val.pre.i to i64
  %i.ca = add nuw nsw i64 %i.bz, 31
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = and i64 %i.cb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.loopexit.i, %bb.m
  %.val.i = phi i64 [ %i.cc, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.loopexit.i ], [ 0, %bb.m ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i = load ptr, ptr %i.cd, align 8, !tbaa !477
  tail call void @llvm.memset.p0.i64(ptr align 4 %.val3.i, i8 0, i64 %.val.i, i1 false)
  store i32 0, ptr %i.a, align 8, !tbaa !1142
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit: ; preds = %bb.a, %bb.h, %bb.i, %_ZN4llvm8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17deallocateBucketsEv.exit.i.i, %bb.l, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.ce, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_111LSRInstance17ImplementSolutionERKN4llvm15SmallVectorImplIPKNS_7FormulaEEE(ptr noundef nonnull align 8 dereferenceable(35560) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %3 = alloca %"class.llvm::SmallVector.413", align 8 ; 8 uses
  %4 = alloca %"class.llvm::SmallVector.413", align 8 ; 8 uses
  %5 = alloca %"class.llvm::SmallVector.413", align 8 ; 9 uses
  %6 = alloca %"class.llvm::SmallVector.413", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %7 = alloca %"class.llvm::SmallVector.934", align 8 ; 11 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %8 = alloca %"class.llvm::IRBuilder.944", align 8 ; 19 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %10 = alloca %"class.llvm::IRBuilder.944", align 8 ; 19 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %13 = alloca %"class.llvm::DenseMap.856", align 8 ; 10 uses
  %i.e = alloca ptr, align 8                      ; 14 uses
  %14 = alloca %"struct.llvm::CriticalEdgeSplittingOptions", align 8 ; 10 uses
  %15 = alloca %"class.llvm::SmallVector.858", align 8 ; 9 uses
  %16 = alloca %"class.llvm::DomTreeUpdater", align 8 ; 25 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %19 = alloca %"class.llvm::AssertingVH.846", align 8 ; 4 uses
  %20 = alloca %"class.llvm::SmallVector.269", align 8 ; 17 uses
  %21 = alloca %"class.llvm::SmallVector.262", align 8 ; 9 uses
  %22 = alloca %"class.std::function.274", align 8 ; 5 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.j = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  store ptr %i.j, ptr %20, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 11 uses
  store i32 0, ptr %i.k, align 8, !tbaa !50
  %i.l = getelementptr inbounds nuw i8, ptr %20, i64 12 ; 4 uses
  store i32 16, ptr %i.l, align 4, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 34912 ; 2 uses
  %.val64 = load ptr, ptr %i.m, align 8, !tbaa !21 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 34920 ; 2 uses
  %.val69 = load i32, ptr %i.n, align 8, !tbaa !50 ; 2 uses
  %i.o = zext i32 %.val69 to i64
  %.idx = mul nuw nsw i64 %i.o, 48
  %i.p = getelementptr inbounds nuw i8, ptr %.val64, i64 %.idx
  %.not215 = icmp eq i32 %.val69, 0
  br i1 %.not215, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 504
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !50   ; 2 uses
  %i.u = zext i32 %i.t to i64
  %.not56231 = icmp eq i32 %i.t, 0
  br i1 %.not56231, label %._crit_edge235, label %.lr.ph234

.lr.ph234:                                        ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ab = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %18, i64 33
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 36
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 834
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 34
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.aq = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %16, i64 528
  %i.au = getelementptr inbounds nuw i8, ptr %16, i64 544
  %i.av = getelementptr inbounds nuw i8, ptr %16, i64 552
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 560
  %i.ax = getelementptr inbounds nuw i8, ptr %16, i64 568 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %16, i64 592
  %i.az = getelementptr inbounds nuw i8, ptr %16, i64 576
  %i.ba = getelementptr inbounds nuw i8, ptr %16, i64 580
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 584 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 656
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 657
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 664 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %17, i64 33
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 35464 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 672
  %i.bj = getelementptr inbounds nuw i8, ptr %16, i64 680
  %i.bk = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 35480 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 35472 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 35484 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 35488 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 35496 ; 7 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 35500 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 832
  br label %bb.i

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.0216 = phi ptr [ %.val64, %.lr.ph ], [ %i.cb, %bb.d ] ; 3 uses
  %.0.val = load ptr, ptr %.0216, align 8, !tbaa !21
  %i.bu = getelementptr i8, ptr %.0216, i64 8
  %.0.val65 = load i32, ptr %i.bu, align 8, !tbaa !50
  %i.bv = zext i32 %.0.val65 to i64
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %i.bv
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !793 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !447
  %.not196 = icmp eq i8 %i.bz, 87
  br i1 %.not196, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  store ptr %i.by, ptr %19, align 8, !tbaa !1143
  %i.ca = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %19), !noalias !1145 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %bb.d
end_hunk_7
begin_hunk_8_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !655
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !166

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1343
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !656
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !485
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !478
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !478
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !655
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !603
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !603
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !485, !noalias !1344 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !656, !noalias !1344 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !484, !noalias !1344 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !603    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !478
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !625

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !603
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !166

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !478
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !626, !llvm.loop !1342

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1343
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.229", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !484
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !485
  store ptr %i.y, ptr %i.q, align 8, !tbaa !656
  store i32 0, ptr %i.p, align 16, !tbaa !655
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !49
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1343
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !49
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !49
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !49
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !478 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !478
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !478
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !478
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !478
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !485    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !656
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !484  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !656  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !485
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !484
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !478  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !603  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !478 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !478 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1349

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !603
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !478
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1350

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1351

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !484
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !655
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !655
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !484
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !610, !noalias !1352 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !622, !noalias !1352 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !623, !noalias !1352 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !456    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !478
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !625

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !456
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %bb.c, !prof !166

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !478
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !626, !llvm.loop !627

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1357
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !606
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit, label %bb.d, !prof !166

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1357
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !622
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !610
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !478
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !478
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !606
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !456
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !456
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !610, !noalias !1358 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !622, !noalias !1358 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !623, !noalias !1358 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !456    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !478
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !625

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !456
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !166

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !478
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !626, !llvm.loop !627

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1357
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.509", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !623
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !610
  store ptr %i.y, ptr %i.q, align 8, !tbaa !622
  store i32 0, ptr %i.p, align 16, !tbaa !606
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !49
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1357
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !49
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !49
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !49
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !478 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !478
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !478
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !478
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !478
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !610    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !622
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !623  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !622  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !610
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !623
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !478  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !456  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !478 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !478 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !1363

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !456
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !478
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1364

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1365

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !623
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !606
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !606
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !623
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm15SmallVectorImplIPKNS_4SCEVEE6insertIPKNS_8SCEVUseTIS3_EEvEEPS3_SA_T_SB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 4 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50   ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 5 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.g
  %i.i = icmp eq ptr %1, %i.h
  %i.j = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.k = ptrtoint ptr %2 to i64                   ; 5 uses
  %i.l = sub i64 %i.j, %i.k                       ; 7 uses
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = ashr exact i64 %i.l, 3                   ; 2 uses
  %i.n = add nsw i64 %i.m, %i.g                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !51
  %i.q = zext i32 %i.p to i64
  %i.r = icmp ugt i64 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %_ZN4llvm15SmallVectorImplIPKNS_4SCEVEE7reserveEm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.s, i64 noundef %i.n, i64 noundef 8) #23
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !50 ; 2 uses
  %.pre8.i = zext i32 %.pre.i to i64
  %.pre65.pre = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZN4llvm15SmallVectorImplIPKNS_4SCEVEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIPKNS_4SCEVEE7reserveEm.exit.i: ; preds = %bb.c, %bb.b
  %.pre65 = phi ptr [ %i.a, %bb.b ], [ %.pre65.pre, %bb.c ] ; 3 uses
  %.pre-phi.i = phi i64 [ %i.g, %bb.b ], [ %.pre8.i, %bb.c ] ; 2 uses
  %i.t = phi i32 [ %i.f, %bb.b ], [ %.pre.i, %bb.c ]
  %.pre65122 = ptrtoaddr ptr %.pre65 to i64
  %.not9.i.i.i.i.i = icmp eq ptr %2, %3
  br i1 %.not9.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplIPKNS_4SCEVEE6appendIPKNS_8SCEVUseTIS3_EEvEEvT_SA_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZN4llvm15SmallVectorImplIPKNS_4SCEVEE7reserveEm.exit.i
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.pre65, i64 %.pre-phi.i ; 4 uses
  %i.v = add i64 %i.j, -8
  %i.w = sub i64 %i.v, %i.k                       ; 2 uses
  %i.x = lshr i64 %i.w, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check125 = icmp ult i64 %i.w, 104
  br i1 %min.iters.check125, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck121

vector.memcheck121:                               ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.z = shl nuw nsw i64 %.pre-phi.i, 3
  %i.aa = add i64 %i.z, %.pre65122
  %i.ab = sub i64 %i.k, %i.aa
  %diff.check123 = icmp ugt i64 %i.ab, -32
  br i1 %diff.check123, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph126

vector.ph126:                                     ; preds = %vector.memcheck121
  %n.vec127 = and i64 %i.y, 4611686018427387900   ; 3 uses
  %i.ac = shl i64 %n.vec127, 3                    ; 2 uses
  %i.ad = getelementptr i8, ptr %i.u, i64 %i.ac
  %i.ae = getelementptr i8, ptr %2, i64 %i.ac
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph126
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next134, %vector.body128 ] ; 2 uses
  %i.af = shl i64 %index129, 3                    ; 2 uses
  %next.gep130 = getelementptr i8, ptr %i.u, i64 %i.af ; 2 uses
  %next.gep131 = getelementptr i8, ptr %2, i64 %i.af ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep131, i64 16
  %wide.load132 = load <2 x i64>, ptr %next.gep131, align 8
  %wide.load133 = load <2 x i64>, ptr %i.ag, align 8
  %i.ah = and <2 x i64> %wide.load132, splat (i64 -8)
  %i.ai = and <2 x i64> %wide.load133, splat (i64 -8)
  %i.aj = inttoptr <2 x i64> %i.ah to <2 x ptr>
  %i.ak = inttoptr <2 x i64> %i.ai to <2 x ptr>
  %i.al = getelementptr i8, ptr %next.gep130, i64 16
  store <2 x ptr> %i.aj, ptr %next.gep130, align 8, !tbaa !456
  store <2 x ptr> %i.ak, ptr %i.al, align 8, !tbaa !456
  %index.next134 = add nuw i64 %index129, 4       ; 2 uses
  %i.am = icmp eq i64 %index.next134, %n.vec127
  br i1 %i.am, label %middle.block135, label %vector.body128, !llvm.loop !1366

middle.block135:                                  ; preds = %vector.body128
  %cmp.n136 = icmp eq i64 %i.y, %n.vec127
  br i1 %cmp.n136, label %_ZN4llvm15SmallVectorImplIPKNS_4SCEVEE6appendIPKNS_8SCEVUseTIS3_EEvEEvT_SA_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck121, %.lr.ph.i.i.i.i.preheader.i, %middle.block135
  %.011.i.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck121 ], [ %i.u, %.lr.ph.i.i.i.i.preheader.i ], [ %i.ad, %middle.block135 ]
  %.0810.i.i.i.i.i.ph = phi ptr [ %2, %vector.memcheck121 ], [ %2, %.lr.ph.i.i.i.i.preheader.i ], [ %i.ae, %middle.block135 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.0810.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.0810.i.i.i.i.i, align 8
  %i.an = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8
  %i.ao = inttoptr i64 %i.an to ptr
  store ptr %i.ao, ptr %.011.i.i.i.i.i, align 8, !tbaa !456
  %i.ap = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, %3
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplIPKNS_4SCEVEE6appendIPKNS_8SCEVUseTIS3_EEvEEvT_SA_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1367

_ZN4llvm15SmallVectorImplIPKNS_4SCEVEE6appendIPKNS_8SCEVUseTIS3_EEvEEvT_SA_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block135, %_ZN4llvm15SmallVectorImplIPKNS_4SCEVEE7reserveEm.exit.i
  %i.ar = trunc i64 %i.m to i32
  %i.as = add i32 %i.t, %i.ar
  store i32 %i.as, ptr %i.e, align 8, !tbaa !50
  %i.at = getelementptr inbounds nuw i8, ptr %.pre65, i64 %i.d
  br label %_ZSt4copyIPKN4llvm8SCEVUseTIPKNS0_4SCEVEEEPS4_ET0_T_SA_S9_.exit

bb.d:                                             ; preds = %bb.a
end_hunk_8
begin_hunk_9_@_ZN12_GLOBAL__N_111LSRInstance18reconcileNewOffsetERNS_6LSRUseENS_9ImmediateEbNS1_8KindTypeENS_11MemAccessTyE:bb.a

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.1.i80 = phi i64 [ %spec.select.i69, %bb.p ], [ %spec.select26.i86, %bb.r ], [ %spec.select.i69, %bb.q ] ; 2 uses
  switch i32 %5, label %bb.u [
    i32 2, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit87
    i32 3, label %bb.t
    i32 0, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit.thread
    i32 1, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit.thread
  ]

bb.t:                                             ; preds = %bb.s
  %.not.i83 = icmp eq i64 %.1.i80, 0
  br i1 %.not.i83, label %.thread7.i71, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit.thread

.thread7.i71:                                     ; preds = %bb.o, %bb.t
  %.1512.i74 = phi i64 [ 0, %bb.t ], [ %spec.select.i69, %bb.o ] ; 2 uses
  %i.ar = icmp eq i64 %.1512.i74, 1
  %i.as = trunc nuw i8 %spec.select.i65 to i1
  %or.cond.i76 = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond.i76, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit.thread, label %.split45

.split45:                                         ; preds = %.thread7.i71
  %i.at = icmp eq i64 %.1512.i74, 0
  %i.au = sub i64 0, %i.ai
  %spec.select4.i.i77 = select i1 %i.at, i64 %i.au, i64 %i.ai
  %i.av = tail call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo20isLegalICmpImmediateEl(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i64 noundef %spec.select4.i.i77) #23
  br i1 %i.av, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit.thread40, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit.thread

bb.u:                                             ; preds = %bb.s
  unreachable

_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit87: ; preds = %bb.s
  %i.aw = trunc nuw i8 %spec.select.i65 to i1     ; 2 uses
  %spec.select.i.i84 = select i1 %i.aw, i64 0, i64 %i.ai
  %spec.select2.i.i85 = select i1 %i.aw, i64 %i.ai, i64 0
  %i.ax = tail call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo21isLegalAddressingModeEPNS_4TypeEPNS_11GlobalValueElbljPNS_11InstructionEl(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef %.sroa.015.0, ptr noundef null, i64 noundef %spec.select.i.i84, i1 noundef zeroext true, i64 noundef %.1.i80, i32 noundef %.8.val, ptr noundef null, i64 noundef %spec.select2.i.i85) #23
  br i1 %i.ax, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit.thread40, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit.thread

_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit.thread40: ; preds = %bb.n, %bb.e, %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit87, %.split45, %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit, %.split, %bb.m
  %.sroa.515.0 = phi i8 [ %.sroa.515.0.copyload, %bb.m ], [ %3, %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit ], [ %3, %.split ], [ %.sroa.515.0.copyload, %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit87 ], [ %.sroa.515.0.copyload, %.split45 ], [ %3, %bb.e ], [ %.sroa.515.0.copyload, %bb.n ] ; 2 uses
  %.sroa.012.0 = phi i64 [ %.sroa.012.0.copyload, %bb.m ], [ %2, %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit ], [ %2, %.split ], [ %.sroa.012.0.copyload, %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit87 ], [ %.sroa.012.0.copyload, %.split45 ], [ %2, %bb.e ], [ %.sroa.012.0.copyload, %bb.n ]
  %.sroa.5.0 = phi i8 [ %.sroa.5.0.copyload, %bb.m ], [ %.sroa.5.0.copyload, %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit ], [ %.sroa.5.0.copyload, %.split ], [ %3, %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit87 ], [ %3, %.split45 ], [ %.sroa.5.0.copyload, %bb.e ], [ %3, %bb.n ] ; 2 uses
  %.sroa.05.0 = phi i64 [ %.sroa.05.0.copyload, %bb.m ], [ %.sroa.05.0.copyload, %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit ], [ %.sroa.05.0.copyload, %.split ], [ %2, %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit87 ], [ %2, %.split45 ], [ %.sroa.05.0.copyload, %bb.e ], [ %2, %bb.n ]
  %.not40 = icmp eq ptr %.sroa.015.0, null
  br i1 %.not40, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit.thread40
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 8
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = and i32 %i.az, 255
  %i.bb = icmp eq i32 %i.ba, 7
  %i.bc = trunc nuw i8 %.sroa.515.0 to i1
  %i.bd = trunc nuw i8 %.sroa.5.0 to i1
  %or.cond46 = select i1 %i.bc, i1 true, i1 %i.bd
  %or.cond48 = select i1 %i.bb, i1 %or.cond46, i1 false
  br i1 %or.cond48, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit.thread40
  store i64 %.sroa.012.0, ptr %i.a, align 8
  store i8 %.sroa.515.0, ptr %.sroa.515.0..sroa_idx, align 8
  store i64 %.sroa.05.0, ptr %i.b, align 8
  store i8 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %.sroa.015.0, ptr %i.f, align 8, !tbaa !603
  %.sroa.9.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %.8.val, ptr %.sroa.9.0..sroa_idx18, align 8, !tbaa !478
  br label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit.thread

_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit.thread: ; preds = %.thread7.i71, %bb.s, %bb.s, %bb.t, %.thread7.i, %bb.j, %bb.j, %bb.k, %bb.v, %.split45, %.split, %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit87, %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit, %bb.a, %bb.w
  %.0 = phi i1 [ false, %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit ], [ false, %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEb.exit87 ], [ true, %bb.w ], [ false, %bb.a ], [ false, %.split45 ], [ false, %bb.v ], [ false, %.thread7.i ], [ false, %.split ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.j ], [ false, %bb.t ], [ false, %bb.s ], [ false, %bb.s ], [ false, %.thread7.i71 ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_16LSRUseD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(2096) dereferenceable(2096) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.b = load i8, ptr %i.a, align 8, !tbaa !14, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2040
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.e) #23
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !21 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 688
  %.val2.i = load i32, ptr %i.g, align 8, !tbaa !50 ; 2 uses
  %.not4.i.i = icmp eq i32 %.val2.i, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_17FormulaELb0EE13destroy_rangeEPS2_S4_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit
  %i.h = zext i32 %.val2.i to i64
  %.idx.i = mul nuw nsw i64 %i.h, 112
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN12_GLOBAL__N_17FormulaD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.j, %_ZN12_GLOBAL__N_17FormulaD2Ev.exit.i.i ], [ %i.i, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %.05.i.i, i64 -112 ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.05.i.i, i64 -72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.05.i.i, i64 -56
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN12_GLOBAL__N_17FormulaD2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef %i.l) #23
  br label %_ZN12_GLOBAL__N_17FormulaD2Ev.exit.i.i

_ZN12_GLOBAL__N_17FormulaD2Ev.exit.i.i:           ; preds = %bb.c, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.val.i, %i.j
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_17FormulaELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !1416

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_17FormulaELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i: ; preds = %_ZN12_GLOBAL__N_17FormulaD2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_17FormulaELb0EE13destroy_rangeEPS2_S4_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_17FormulaELb0EE13destroy_rangeEPS2_S4_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_17FormulaELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit
  %i.o = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_17FormulaELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i ], [ %.val.i, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_17FormulaELj12EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_17FormulaELb0EE13destroy_rangeEPS2_S4_.exit.i
  tail call void @free(ptr noundef %i.o) #23
  br label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_17FormulaELj12EED2Ev.exit

_ZN4llvm11SmallVectorIN12_GLOBAL__N_17FormulaELj12EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_17FormulaELb0EE13destroy_rangeEPS2_S4_.exit.i, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.val.i1 = load ptr, ptr %i.r, align 8, !tbaa !21 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val2.i2 = load i32, ptr %i.s, align 8, !tbaa !50 ; 2 uses
  %.not5.i.i = icmp eq i32 %.val2.i2, 0
  br i1 %.not5.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_18LSRFixupELb0EE13destroy_rangeEPS2_S4_.exit.i, label %.lr.ph.i.preheader.i3

.lr.ph.i.preheader.i3:                            ; preds = %_ZN4llvm11SmallVectorIN12_GLOBAL__N_17FormulaELj12EED2Ev.exit
  %i.t = zext i32 %.val2.i2 to i64
  %.idx.i4 = mul nuw nsw i64 %i.t, 72
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i1, i64 %.idx.i4
  br label %.lr.ph.i.i5

.lr.ph.i.i5:                                      ; preds = %_ZN12_GLOBAL__N_18LSRFixupD2Ev.exit.i.i, %.lr.ph.i.preheader.i3
  %.06.i.i = phi ptr [ %i.v, %_ZN12_GLOBAL__N_18LSRFixupD2Ev.exit.i.i ], [ %i.u, %.lr.ph.i.preheader.i3 ] ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %.06.i.i, i64 -72 ; 2 uses
  %i.w = getelementptr i8, ptr %.06.i.i, i64 -40
  %.val4.i.i = load i8, ptr %i.w, align 8, !tbaa !14, !range !18, !noundef !19
  %i.x = trunc nuw i8 %.val4.i.i to i1
  br i1 %i.x, label %_ZN12_GLOBAL__N_18LSRFixupD2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i5
  %i.y = getelementptr i8, ptr %.06.i.i, i64 -56
  %.val.i.i = load ptr, ptr %i.y, align 8
  tail call void @free(ptr noundef %.val.i.i) #23
  br label %_ZN12_GLOBAL__N_18LSRFixupD2Ev.exit.i.i

_ZN12_GLOBAL__N_18LSRFixupD2Ev.exit.i.i:          ; preds = %bb.e, %.lr.ph.i.i5
  %.not.i.i6 = icmp eq ptr %.val.i1, %i.v
  br i1 %.not.i.i6, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_18LSRFixupELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i, label %.lr.ph.i.i5, !llvm.loop !1417

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_18LSRFixupELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i: ; preds = %_ZN12_GLOBAL__N_18LSRFixupD2Ev.exit.i.i
  %.pre.i7 = load ptr, ptr %i.r, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_18LSRFixupELb0EE13destroy_rangeEPS2_S4_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_18LSRFixupELb0EE13destroy_rangeEPS2_S4_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_18LSRFixupELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_17FormulaELj12EED2Ev.exit
  %i.z = phi ptr [ %.pre.i7, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_18LSRFixupELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i ], [ %.val.i1, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_17FormulaELj12EED2Ev.exit ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_18LSRFixupELj8EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_18LSRFixupELb0EE13destroy_rangeEPS2_S4_.exit.i
  tail call void @free(ptr noundef %i.z) #23
  br label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_18LSRFixupELj8EED2Ev.exit

_ZN4llvm11SmallVectorIN12_GLOBAL__N_18LSRFixupELj8EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_18LSRFixupELb0EE13destroy_rangeEPS2_S4_.exit.i, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !996 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZN4llvm6detail12DenseSetImplINS_11SmallVectorIPKNS_4SCEVELj4EEENS_8DenseMapIS6_NS0_13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS0_12DenseSetPairIS6_EEEEED2Ev.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN4llvm11SmallVectorIN12_GLOBAL__N_18LSRFixupELj8EED2Ev.exit
  %i.af = load ptr, ptr %0, align 8, !tbaa !989
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !995
  %i.ai = zext i32 %i.ad to i64
  %i.aj = add nuw nsw i64 %i.ai, 31
  %i.ak = lshr i64 %i.aj, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i.i.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !478 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.an = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.g

bb.g:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.am, %.lr.ph.i.i.i ], [ %i.aw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.ao = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.ap = or disjoint i32 %i.ao, %i.an
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %i.af, i64 %i.aq ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !21 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef %i.as) #23
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.av = add i32 %.0.i3.i.i.i, -1
  %i.aw = and i32 %i.av, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.g, !llvm.loop !1418

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.ak
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !1419

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.ac, align 4, !tbaa !996 ; 2 uses
  %i.ax = icmp eq i32 %.pr.i.i, 0
  br i1 %i.ax, label %_ZN4llvm6detail12DenseSetImplINS_11SmallVectorIPKNS_4SCEVELj4EEENS_8DenseMapIS6_NS0_13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS0_12DenseSetPairIS6_EEEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEv.exit.i.i
  %i.ay = load ptr, ptr %0, align 8, !tbaa !989
  %i.az = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.ba = mul nuw nsw i64 %i.az, 48
  %i.bb = add nuw nsw i64 %i.az, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  %i.be = add nuw nsw i64 %i.bd, %i.ba
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ay, i64 noundef %i.be, i64 noundef 8) #23
  br label %_ZN4llvm6detail12DenseSetImplINS_11SmallVectorIPKNS_4SCEVELj4EEENS_8DenseMapIS6_NS0_13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS0_12DenseSetPairIS6_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplINS_11SmallVectorIPKNS_4SCEVELj4EEENS_8DenseMapIS6_NS0_13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS0_12DenseSetPairIS6_EEEEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN12_GLOBAL__N_18LSRFixupELj8EED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEv.exit.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { i64, i8 } @_ZL23ExtractImmediateOperandN4llvm15MutableArrayRefINS_8SCEVUseTIPKNS_4SCEVEEEEERNS_15ScalarEvolutionEb(ptr nofree captures(address) %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(1152) %2, i1 noundef zeroext %3) unnamed_addr #3 {
bb.a:
  %.sroa.021.0.copyload = load i64, ptr %0, align 8
  %i.a = and i64 %.sroa.021.0.copyload, -8        ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i16, ptr %i.c, align 8, !tbaa !438
  %i.e = icmp eq i16 %i.d, 0
  %.not6.i.i = icmp ne i64 %i.a, 0
  %.not.i.i = and i1 %.not6.i.i, %i.e
  br i1 %.not.i.i, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !450  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !453  ; 9 uses
  %i.k = icmp ult i32 %i.j, 65                    ; 5 uses
  br i1 %i.k, label %.split, label %_ZNK4llvm5APInt6isZeroEv.exit

.split:                                           ; preds = %bb.b
  %i.l = load i64, ptr %i.h, align 8              ; 3 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.critedge, label %.split._crit_edge

.split._crit_edge:                                ; preds = %.split
  %i.n = inttoptr i64 %i.l to ptr
  br label %bb.c

_ZNK4llvm5APInt6isZeroEv.exit:                    ; preds = %bb.b
  %i.o = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.h) #26
  %i.p = icmp eq i32 %i.o, %i.j
  br i1 %i.p, label %.critedge, label %_ZNK4llvm5APInt6isZeroEv.exit._crit_edge

_ZNK4llvm5APInt6isZeroEv.exit._crit_edge:         ; preds = %_ZNK4llvm5APInt6isZeroEv.exit
  %.pre = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.q = ptrtoint ptr %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %.split._crit_edge, %_ZNK4llvm5APInt6isZeroEv.exit._crit_edge
  %.pre-phi = phi i64 [ %i.l, %.split._crit_edge ], [ %i.q, %_ZNK4llvm5APInt6isZeroEv.exit._crit_edge ] ; 3 uses
  %i.r = phi ptr [ %i.n, %.split._crit_edge ], [ %.pre, %_ZNK4llvm5APInt6isZeroEv.exit._crit_edge ] ; 2 uses
  %i.s = add i32 %i.j, -1                         ; 2 uses
  %i.t = and i32 %i.s, 63
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw i64 1, %i.u
  %i.w = lshr i32 %i.s, 6
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.x
  %.in.i.i.i.i.i = select i1 %i.k, ptr %i.h, ptr %i.y
  %i.z = load i64, ptr %.in.i.i.i.i.i, align 8, !tbaa !414
  %i.aa = and i64 %i.z, %i.v
  %.not.i.i34 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i34, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.k, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp eq i32 %i.j, 0
  br i1 %i.ab, label %_ZNK4llvm5APInt18getSignificantBitsEv.exit, label %bb.f, !prof !167

bb.f:                                             ; preds = %bb.e
  %i.ac = sub nuw nsw i32 64, %i.j
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl i64 %.pre-phi, %i.ad
  %i.af = xor i64 %i.ae, -1
  %i.ag = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.af, i1 false)
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  br label %_ZNK4llvm5APInt18getSignificantBitsEv.exit

bb.g:                                             ; preds = %bb.d
  %i.ai = tail call noundef i32 @_ZNK4llvm5APInt24countLeadingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.h) #26
  br label %_ZNK4llvm5APInt18getSignificantBitsEv.exit

bb.h:                                             ; preds = %bb.c
  br i1 %i.k, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.neg.i.i.i = add nsw i32 %i.j, -64
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre-phi, i1 false)
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  %i.al = add nsw i32 %.neg.i.i.i, %i.ak
  br label %_ZNK4llvm5APInt18getSignificantBitsEv.exit

bb.j:                                             ; preds = %bb.h
  %i.am = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.h) #26
  br label %_ZNK4llvm5APInt18getSignificantBitsEv.exit

_ZNK4llvm5APInt18getSignificantBitsEv.exit:       ; preds = %bb.e, %bb.f, %bb.g, %bb.i, %bb.j
  %i.an = phi i32 [ 0, %bb.e ], [ %i.ai, %bb.g ], [ %i.ah, %bb.f ], [ %i.al, %bb.i ], [ %i.am, %bb.j ]
  %i.ao = add i32 %i.j, 1
  %i.ap = sub i32 %i.ao, %i.an
  %i.aq = icmp ult i32 %i.ap, 65
  br i1 %i.aq, label %bb.k, label %.critedge

bb.k:                                             ; preds = %_ZNK4llvm5APInt18getSignificantBitsEv.exit
  br i1 %i.k, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = icmp eq i32 %i.j, 0
  %i.as = sub nuw nsw i32 64, %i.j
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  %i.au = shl i64 %.pre-phi, %i.at
  %i.av = ashr exact i64 %i.au, %i.at
  %.0.i.i = select i1 %i.ar, i64 0, i64 %i.av
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.aw = load i64, ptr %i.r, align 8, !tbaa !157
  br label %.critedge

.critedge:                                        ; preds = %bb.m, %bb.l, %_ZNK4llvm5APInt6isZeroEv.exit, %bb.a, %.split, %_ZNK4llvm5APInt18getSignificantBitsEv.exit
  %.sroa.050.0 = phi i64 [ 0, %_ZNK4llvm5APInt18getSignificantBitsEv.exit ], [ 0, %_ZNK4llvm5APInt6isZeroEv.exit ], [ 0, %.split ], [ 0, %bb.a ], [ %.0.i.i, %bb.l ], [ %i.aw, %bb.m ] ; 6 uses
  %.0 = phi ptr [ null, %_ZNK4llvm5APInt18getSignificantBitsEv.exit ], [ null, %_ZNK4llvm5APInt6isZeroEv.exit ], [ null, %.split ], [ null, %bb.a ], [ %0, %bb.l ], [ %0, %bb.m ] ; 5 uses
  %i.ax = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL22EnableVScaleImmediates, i64 120), align 8, !tbaa !329, !range !18, !noundef !19
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.n, label %.thread

bb.n:                                             ; preds = %.critedge
  %i.az = icmp eq i64 %.sroa.050.0, 0
  %or.cond = or i1 %3, %i.az
  br i1 %or.cond, label %bb.o, label %.thread70

bb.o:                                             ; preds = %bb.n
  %.idx = shl nuw nsw i64 %1, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.not84 = icmp eq i64 %1, 0
  br i1 %.not84, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %_ZNK4llvm16SCEVPatternMatch11bind_cst_ty5matchEPKNS_4SCEVE.exit.i.i
  %.03185 = phi ptr [ %i.cl, %_ZNK4llvm16SCEVPatternMatch11bind_cst_ty5matchEPKNS_4SCEVE.exit.i.i ], [ %0, %bb.o ] ; 4 uses
  %.0.copyload.i.i.i.i = load i64, ptr %.03185, align 8
  %i.bb = and i64 %.0.copyload.i.i.i.i, -8        ; 2 uses
  %i.bc = inttoptr i64 %i.bb to ptr               ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load i16, ptr %i.bd, align 8, !tbaa !438 ; 2 uses
  %i.bf = icmp ugt i16 %i.be, 6
  br i1 %i.bf, label %.thread, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  %i.bg = icmp ne i16 %i.be, 6
  %.not1420.i.i = icmp eq i64 %i.bb, 0
  %.not14.i.i = or i1 %.not1420.i.i, %i.bg
  br i1 %.not14.i.i, label %_ZNK4llvm16SCEVPatternMatch11bind_cst_ty5matchEPKNS_4SCEVE.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !444
  %i.bj = icmp eq i64 %i.bi, 2
end_hunk_9
begin_hunk_10_@_ZL23ExtractImmediateOperandN4llvm15MutableArrayRefINS_8SCEVUseTIPKNS_4SCEVEEEEERNS_15ScalarEvolutionEb:bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !453 ; 3 uses
  %i.cc = icmp ult i32 %i.cb, 65
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4llvm16SCEVPatternMatch5matchIPKNS_4SCEVENS0_20SCEVBinaryExpr_matchINS_11SCEVMulExprENS0_11bind_cst_tyENS_19PatternMatchHelpers9match_isaIJKNS_10SCEVVScaleEEEELNS_15SCEVNoWrapFlagsE0ELb0EEEEEbNS_8SCEVUseTIT_EERKT0_.exit
  %i.cd = load i64, ptr %i.bz, align 8, !tbaa !414
  %i.ce = icmp eq i32 %i.cb, 0
  %i.cf = sub nuw nsw i32 64, %i.cb
  %i.cg = zext nneg i32 %i.cf to i64              ; 2 uses
  %i.ch = shl i64 %i.cd, %i.cg
  %i.ci = ashr exact i64 %i.ch, %i.cg
  br i1 %i.ce, label %.thread.thread, label %.thread

bb.u:                                             ; preds = %_ZN4llvm16SCEVPatternMatch5matchIPKNS_4SCEVENS0_20SCEVBinaryExpr_matchINS_11SCEVMulExprENS0_11bind_cst_tyENS_19PatternMatchHelpers9match_isaIJKNS_10SCEVVScaleEEEELNS_15SCEVNoWrapFlagsE0ELb0EEEEEbNS_8SCEVUseTIT_EERKT0_.exit
  %i.cj = load ptr, ptr %i.bz, align 8, !tbaa !414
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !157
  br label %.thread

_ZNK4llvm16SCEVPatternMatch11bind_cst_ty5matchEPKNS_4SCEVE.exit.i.i: ; preds = %bb.s, %bb.r, %bb.p, %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %.03185, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cl, %i.ba
  br i1 %.not, label %.thread, label %.lr.ph

.thread:                                          ; preds = %_ZNK4llvm16SCEVPatternMatch11bind_cst_ty5matchEPKNS_4SCEVE.exit.i.i, %.lr.ph, %bb.t, %bb.o, %bb.u, %.critedge
  %.sroa.050.3 = phi i64 [ %i.ci, %bb.t ], [ %.sroa.050.0, %.critedge ], [ %i.ck, %bb.u ], [ %.sroa.050.0, %bb.o ], [ %.sroa.050.0, %.lr.ph ], [ %.sroa.050.0, %_ZNK4llvm16SCEVPatternMatch11bind_cst_ty5matchEPKNS_4SCEVE.exit.i.i ] ; 2 uses
  %.sroa.6.3 = phi i8 [ 1, %bb.t ], [ 0, %.critedge ], [ 1, %bb.u ], [ 0, %bb.o ], [ 0, %.lr.ph ], [ 0, %_ZNK4llvm16SCEVPatternMatch11bind_cst_ty5matchEPKNS_4SCEVE.exit.i.i ] ; 2 uses
  %.4 = phi ptr [ %.03185, %bb.t ], [ %.0, %.critedge ], [ %.03185, %bb.u ], [ %.0, %bb.o ], [ %.0, %.lr.ph ], [ %.0, %_ZNK4llvm16SCEVPatternMatch11bind_cst_ty5matchEPKNS_4SCEVE.exit.i.i ]
  %.not79 = icmp eq i64 %.sroa.050.3, 0
  br i1 %.not79, label %.thread.thread, label %.thread70

.thread70:                                        ; preds = %bb.n, %.thread
  %.478 = phi ptr [ %.4, %.thread ], [ %.0, %bb.n ] ; 2 uses
  %.sroa.6.377 = phi i8 [ %.sroa.6.3, %.thread ], [ 0, %bb.n ]
  %.sroa.050.375 = phi i64 [ %.sroa.050.3, %.thread ], [ %.sroa.050.0, %bb.n ]
  %.0.copyload.i.i.i.i41 = load i64, ptr %.478, align 8
  %i.cm = and i64 %.0.copyload.i.i.i.i41, -8
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = tail call noundef ptr @_ZNK4llvm4SCEV7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cn) #23
  %i.cp = tail call noundef ptr @_ZN4llvm15ScalarEvolution11getConstantEPNS_4TypeEmb(ptr noundef nonnull align 8 dereferenceable(1152) %2, ptr noundef %i.co, i64 noundef 0, i1 noundef zeroext false) #23
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = and i64 %i.cq, -7
  store i64 %i.cr, ptr %.478, align 8
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.t, %.thread70, %.thread
  %.sroa.6.376 = phi i8 [ %.sroa.6.377, %.thread70 ], [ %.sroa.6.3, %.thread ], [ 1, %bb.t ]
  %.sroa.050.374 = phi i64 [ %.sroa.050.375, %.thread70 ], [ 0, %.thread ], [ 0, %bb.t ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.050.374, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.6.376, 1
  ret { i64, i8 } %.fca.1.insert
}

declare noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo20isLegalICmpImmediateEl(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS5_EENS_18PointerIntPairInfoIS5_Lj2ESA_EEEEmNS_12DenseMapInfoISD_vEENS_6detail12DenseMapPairISD_mEEEESD_mSF_SI_E15LookupBucketForISD_EEbRKT_RPSI_(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #14 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !471, !noalias !1420 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1388, !noalias !1420 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !470, !noalias !1420 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !414 ; 3 uses
  %i.h = lshr i64 %.sroa.0.0.copyload, 9
  %i.i = xor i64 %i.h, %.sroa.0.0.copyload
  %i.j = trunc i64 %i.i to i32
  %i.k = and i32 %i.g, %i.j                       ; 3 uses
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.l ; 2 uses
  %i.n = lshr i64 %i.l, 5
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !478
  %i.q = and i32 %i.k, 31
  %i.r = lshr i32 %i.p, %i.q
  %i.s = trunc i32 %i.r to i1
  br i1 %i.s, label %.lr.ph, label %.thread, !prof !625

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.t = phi ptr [ %i.y, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %.01625 = phi i32 [ %i.w, %bb.c ], [ %i.k, %bb.b ]
  %.val20 = load i64, ptr %i.t, align 8
  %i.u = icmp eq i64 %.sroa.0.0.copyload, %.val20
  br i1 %i.u, label %.thread, label %bb.c, !prof !166

bb.c:                                             ; preds = %.lr.ph
  %i.v = add nuw i32 %.01625, 1
  %i.w = and i32 %i.v, %i.g                       ; 3 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.x ; 2 uses
  %i.z = lshr i64 %i.x, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !478
  %i.ac = and i32 %i.w, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph, label %.thread, !prof !626, !llvm.loop !1390

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa29.sink = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ], [ %i.y, %bb.c ], [ %i.t, %.lr.ph ]
  store ptr %.lcssa29.sink, ptr %2, align 8, !tbaa !1391
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS5_EENS_18PointerIntPairInfoIS5_Lj2ESA_EEEEmNS_12DenseMapInfoISD_vEENS_6detail12DenseMapPairISD_mEEEESD_mSF_SI_E4growEj(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, i32 noundef %1) unnamed_addr #9 align 2 {
_ZN4llvm8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj2ES9_EEEEmNS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_mEEEC2EjNS_12DenseMapBaseISI_SC_mSE_SH_E16ExactBucketCountE.exit:
  %2 = alloca %"class.llvm::DenseMap.267", align 16 ; 8 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef range(i32 64, 0) i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !470
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !471
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1388
  store i32 0, ptr %i.p, align 16, !tbaa !1392
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS5_EENS_18PointerIntPairInfoIS5_Lj2ESA_EEEEmNS_12DenseMapInfoISD_vEENS_6detail12DenseMapPairISD_mEEEESD_mSF_SI_E8moveFromERSJ_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1391
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !49
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !49
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !478 ; 2 uses
  %i.ae = load <2 x i32>, ptr %i.p, align 16, !tbaa !478
  store <2 x i32> %i.ae, ptr %i.ab, align 8, !tbaa !478
  %i.af = icmp eq i32 %i.ad, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj2ES9_EEEEmNS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_mEEED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4llvm8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj2ES9_EEEEmNS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_mEEEC2EjNS_12DenseMapBaseISI_SC_mSE_SH_E16ExactBucketCountE.exit
  %i.ag = zext i32 %i.ad to i64                   ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 4
  %i.ai = add nuw nsw i64 %i.ag, 31
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = and i64 %i.aj, 1073741820
  %i.al = add nuw nsw i64 %i.ak, %i.ah
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.z, i64 noundef %i.al, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj2ES9_EEEEmNS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_mEEED2Ev.exit

_ZN4llvm8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj2ES9_EEEEmNS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_mEEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj2ES9_EEEEmNS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_mEEEC2EjNS_12DenseMapBaseISI_SC_mSE_SH_E16ExactBucketCountE.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS5_EENS_18PointerIntPairInfoIS5_Lj2ESA_EEEEmNS_12DenseMapInfoISD_vEENS_6detail12DenseMapPairISD_mEEEESD_mSF_SI_E8moveFromERSJ_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #9 align 2 {
bb.a:
  %.val11 = load ptr, ptr %1, align 8, !tbaa !471
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !1388
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %.val = load i32, ptr %i.b, align 4, !tbaa !470 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.c, align 8, !tbaa !1388 ; 3 uses
  %.val12 = load ptr, ptr %0, align 8, !tbaa !471
  %i.d = getelementptr i8, ptr %0, i64 20
  %.val7 = load i32, ptr %i.d, align 4, !tbaa !470
  %i.e = add i32 %.val7, -1                       ; 2 uses
  %i.f = zext i32 %.val to i64
  %i.g = add nuw nsw i64 %i.f, 31
  %i.h = lshr i64 %i.g, 5                         ; 2 uses
  %.not.i24 = icmp eq i64 %i.h, 0
  br i1 %.not.i24, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS8_EENS_18PointerIntPairInfoIS8_Lj2ESD_EEEEmNS_12DenseMapInfoISG_vEENS_6detail12DenseMapPairISG_mEEEESG_mSI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val8, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !478  ; 2 uses
  %.not11.i22 = icmp eq i32 %i.j, 0
  br i1 %.not11.i22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph27
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.k = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS5_EENS_18PointerIntPairInfoIS5_Lj2ESA_EEEEmNS_12DenseMapInfoISD_vEENS_6detail12DenseMapPairISD_mEEEESD_mSF_SI_E8moveFromERSJ_ENKUljE_clEj.exit
  %.0.i23 = phi i32 [ %i.j, %.lr.ph ], [ %i.as, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS5_EENS_18PointerIntPairInfoIS5_Lj2ESA_EEEEmNS_12DenseMapInfoISD_vEENS_6detail12DenseMapPairISD_mEEEESD_mSF_SI_E8moveFromERSJ_ENKUljE_clEj.exit ] ; 3 uses
  %i.l = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i23, i1 true)
  %i.m = or disjoint i32 %i.l, %i.k
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.val11, i64 %i.n ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.o, align 8, !tbaa !414 ; 3 uses
  %i.p = lshr i64 %.sroa.0.0.copyload.i, 9
  %i.q = xor i64 %i.p, %.sroa.0.0.copyload.i
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.e, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = lshr i64 %i.t, 5                         ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !478
  %i.x = and i32 %i.s, 31                         ; 2 uses
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS5_EENS_18PointerIntPairInfoIS5_Lj2ESA_EEEEmNS_12DenseMapInfoISD_vEENS_6detail12DenseMapPairISD_mEEEESD_mSF_SI_E8moveFromERSJ_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.s, %bb.b ]
  %i.aa = add i32 %.014.i, 1
  %i.ab = and i32 %i.aa, %i.e                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !478
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS5_EENS_18PointerIntPairInfoIS5_Lj2ESA_EEEEmNS_12DenseMapInfoISD_vEENS_6detail12DenseMapPairISD_mEEEESD_mSF_SI_E8moveFromERSJ_ENKUljE_clEj.exit, !llvm.loop !1425

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS5_EENS_18PointerIntPairInfoIS5_Lj2ESA_EEEEmNS_12DenseMapInfoISD_vEENS_6detail12DenseMapPairISD_mEEEESD_mSF_SI_E8moveFromERSJ_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.t, %bb.b ], [ %i.ac, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.u, %bb.b ], [ %i.ad, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.x, %bb.b ], [ %i.ag, %.lr.ph.i ]
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.val12, i64 %.lcssa12.i ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %i.aj, align 8, !tbaa !414
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !157
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !157
  %i.an = shl nuw i32 1, %.lcssa.i
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %.lcssa11.i ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !478
  %i.aq = or i32 %i.ap, %i.an
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !478
  %i.ar = add i32 %.0.i23, -1
  %i.as = and i32 %i.ar, %.0.i23                  ; 2 uses
  %.not11.i = icmp eq i32 %i.as, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1426

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS5_EENS_18PointerIntPairInfoIS5_Lj2ESA_EEEEmNS_12DenseMapInfoISD_vEENS_6detail12DenseMapPairISD_mEEEESD_mSF_SI_E8moveFromERSJ_ENKUljE_clEj.exit, %.lr.ph27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS8_EENS_18PointerIntPairInfoIS8_Lj2ESD_EEEEmNS_12DenseMapInfoISG_vEENS_6detail12DenseMapPairISG_mEEEESG_mSI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph27, !llvm.loop !1427

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS8_EENS_18PointerIntPairInfoIS8_Lj2ESD_EEEEmNS_12DenseMapInfoISG_vEENS_6detail12DenseMapPairISG_mEEEESG_mSI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.b, align 4, !tbaa !470
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS8_EENS_18PointerIntPairInfoIS8_Lj2ESD_EEEEmNS_12DenseMapInfoISG_vEENS_6detail12DenseMapPairISG_mEEEESG_mSI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS8_EENS_18PointerIntPairInfoIS8_Lj2ESD_EEEEmNS_12DenseMapInfoISG_vEENS_6detail12DenseMapPairISG_mEEEESG_mSI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS8_EENS_18PointerIntPairInfoIS8_Lj2ESD_EEEEmNS_12DenseMapInfoISG_vEENS_6detail12DenseMapPairISG_mEEEESG_mSI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.at = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS8_EENS_18PointerIntPairInfoIS8_Lj2ESD_EEEEmNS_12DenseMapInfoISG_vEENS_6detail12DenseMapPairISG_mEEEESG_mSI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit ], [ %.val, %bb.a ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load i32, ptr %i.au, align 8, !tbaa !1392
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.val10, ptr %i.av, align 8, !tbaa !1392
  %i.aw = icmp eq i32 %i.at, 0
  br i1 %i.aw, label %_ZN4llvm8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj2ES9_EEEEmNS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_mEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS8_EENS_18PointerIntPairInfoIS8_Lj2ESD_EEEEmNS_12DenseMapInfoISG_vEENS_6detail12DenseMapPairISG_mEEEESG_mSI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit
  %i.ax = load ptr, ptr %1, align 8, !tbaa !471
  %i.ay = zext i32 %i.at to i64                   ; 2 uses
  %i.az = shl nuw nsw i64 %i.ay, 4
  %i.ba = add nuw nsw i64 %i.ay, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  %i.bd = add nuw nsw i64 %i.bc, %i.az
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ax, i64 noundef %i.bd, i64 noundef 8) #23
  store i32 0, ptr %i.b, align 4, !tbaa !470
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj2ES9_EEEEmNS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_mEEE4killEv.exit

_ZN4llvm8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj2ES9_EEEEmNS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_mEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPKNS_4SCEVELj2EN12_GLOBAL__N_16LSRUse8KindTypeENS_21PointerLikeTypeTraitsIS8_EENS_18PointerIntPairInfoIS8_Lj2ESD_EEEEmNS_12DenseMapInfoISG_vEENS_6detail12DenseMapPairISG_mEEEESG_mSI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_16LSRUseELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef %1, i64 noundef 2096, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #23 ; 2 uses
  %.val2.i = load ptr, ptr %0, align 8, !tbaa !21 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val6.i = load i32, ptr %i.d, align 8, !tbaa !50 ; 2 uses
  %i.e = zext i32 %.val6.i to i64
  %.idx.i = mul nuw nsw i64 %i.e, 2096
  %i.f = getelementptr inbounds nuw i8, ptr %.val2.i, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %.val6.i, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_16LSRUseELb0EE19moveElementsForGrowEPS2_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %_ZSt10_ConstructIN12_GLOBAL__N_16LSRUseEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ao, %_ZSt10_ConstructIN12_GLOBAL__N_16LSRUseEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 17 uses
  %.sroa.06.08.i.i.i.i.i.i = phi ptr [ %i.an, %_ZSt10_ConstructIN12_GLOBAL__N_16LSRUseEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %.val2.i, %bb.a ] ; 14 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2096) %.09.i.i.i.i.i.i, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i, i64 8
  %i.h = load <2 x ptr>, ptr %.sroa.06.08.i.i.i.i.i.i, align 8, !tbaa !49
  store <2 x ptr> %i.h, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !49
  store ptr null, ptr %.sroa.06.08.i.i.i.i.i.i, align 8, !tbaa !1397
  store ptr null, ptr %i.g, align 8, !tbaa !1398
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !478
  store i32 %i.k, ptr %i.i, align 8, !tbaa !478
  store i32 0, ptr %i.j, align 8, !tbaa !478
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 20 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i, i64 20 ; 2 uses
  %i.n = load i32, ptr %i.l, align 4, !tbaa !478
  %i.o = load i32, ptr %i.m, align 4, !tbaa !478
  store i32 %i.o, ptr %i.l, align 4, !tbaa !478
  store i32 %i.n, ptr %i.m, align 4, !tbaa !478
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.p, ptr noundef nonnull align 8 dereferenceable(20) %i.q, i64 20, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 64
  store ptr %i.s, ptr %i.r, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.t, align 8, !tbaa !50
  %i.u = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 60
  store i32 8, ptr %i.u, align 4, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i, i64 56
  %i.w = load i32, ptr %i.v, align 8, !tbaa !50
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_18LSRFixupELj8EEC2EOS3_.exit.i.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i, i64 48
  %i.y = call fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_18LSRFixupEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(592) %i.r, ptr noundef nonnull align 8 dereferenceable(592) %i.x) ; 0 uses
  br label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_18LSRFixupELj8EEC2EOS3_.exit.i.i.i.i.i.i.i.i

_ZN4llvm11SmallVectorIN12_GLOBAL__N_18LSRFixupELj8EEC2EOS3_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 640
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i, i64 640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(35) %i.z, ptr noundef nonnull align 8 dereferenceable(35) %i.aa, i64 35, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 680 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 696
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 688
  store i32 0, ptr %i.ad, align 8, !tbaa !50
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 692
  store i32 12, ptr %i.ae, align 4, !tbaa !51
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i, i64 688
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !50
  %.not.i.i7.i.i.i.i.i.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i7.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN12_GLOBAL__N_16LSRUseEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIN12_GLOBAL__N_18LSRFixupELj8EEC2EOS3_.exit.i.i.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i, i64 680
  %i.ai = call fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_17FormulaEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(1360) %i.ab, ptr noundef nonnull align 8 dereferenceable(1360) %i.ah) ; 0 uses
  br label %_ZSt10_ConstructIN12_GLOBAL__N_16LSRUseEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN12_GLOBAL__N_16LSRUseEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.c, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_18LSRFixupELj8EEC2EOS3_.exit.i.i.i.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 2040
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i, i64 2040
  %i.al = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 2064
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i, i64 2064
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvjS3_OS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.aj, ptr noundef nonnull %i.al, i32 noundef 4, ptr noundef nonnull %i.am, ptr noundef nonnull align 8 dereferenceable(56) %i.ak) #23
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i, i64 2096 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 2096
  %.not.i.i.i.i.i.i = icmp eq ptr %i.an, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_16LSRUseELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1428

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_16LSRUseELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i: ; preds = %_ZSt10_ConstructIN12_GLOBAL__N_16LSRUseEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.val.pre.i = load ptr, ptr %0, align 8, !tbaa !21 ; 3 uses
  %.val4.pre.i = load i32, ptr %i.d, align 8, !tbaa !50 ; 2 uses
  %.not4.i.i = icmp eq i32 %.val4.pre.i, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_16LSRUseELb0EE19moveElementsForGrowEPS2_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_16LSRUseELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i
  %i.ap = zext i32 %.val4.pre.i to i64
  %.idx7.i = mul nuw nsw i64 %i.ap, 2096
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.pre.i, i64 %.idx7.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.ar, %.lr.ph.i.i ], [ %i.aq, %.lr.ph.i.preheader.i ]
  %i.ar = getelementptr inbounds i8, ptr %.05.i.i, i64 -2096 ; 3 uses
  call fastcc void @_ZN12_GLOBAL__N_16LSRUseD2Ev(ptr noundef nonnull align 8 dead_on_return(2096) dereferenceable(2096) %i.ar) #23
  %.not.i.i = icmp eq ptr %.val.pre.i, %i.ar
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_16LSRUseELb0EE19moveElementsForGrowEPS2_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !483

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_16LSRUseELb0EE19moveElementsForGrowEPS2_.exit.loopexit: ; preds = %.lr.ph.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_16LSRUseELb0EE19moveElementsForGrowEPS2_.exit
end_hunk_10
begin_hunk_11_@_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS7_bEOT_DpOT0_:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !1480
  %i.al = shl i32 %i.ak, 2
  %i.am = add i32 %i.al, 4
  %i.an = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit, label %bb.d, !prof !166

bb.d:                                             ; preds = %.loopexit
  %i.ao = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ao)
  %i.ap = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E15LookupBucketForImEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1479
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !699
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !665
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit: ; preds = %.loopexit, %bb.d
  %i.aq = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.ar = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.as = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 3                 ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !478
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !478
  %i.be = load i32, ptr %i.aj, align 8, !tbaa !1480
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.aj, align 8, !tbaa !1480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = load i64, ptr %1, align 8, !tbaa !157
  store i64 %i.bg, ptr %i.as, align 8, !tbaa !157
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E15LookupBucketForImEEbRKT_RPS7_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E15LookupBucketForImEEbRKT_RPS7_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit
  %.sroa.0.0 = phi ptr [ %i.as, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E15LookupBucketForImEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !665, !noalias !1481 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !699, !noalias !1481 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !662, !noalias !1481 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i64, ptr %1, align 8, !tbaa !157    ; 2 uses
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !478
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !625

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load i64, ptr %i.v, align 8, !tbaa !157
  %i.x = icmp eq i64 %i.h, %i.w                   ; 3 uses
  br i1 %i.x, label %.thread, label %bb.c, !prof !166

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.024, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !478
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !626, !llvm.loop !1478

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.x, %bb.c ], [ %i.x, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1479
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.558", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !662
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !665
  store ptr %i.y, ptr %i.q, align 8, !tbaa !699
  store i32 0, ptr %i.p, align 16, !tbaa !1480
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !49
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1479
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !49
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !49
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !49
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !478 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !478
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !478
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !478
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !478
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEED2Ev.exit

_ZN4llvm8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !665    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !699
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !662  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !699  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !665
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !662
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !478  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.aw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !157  ; 2 uses
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.k, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !478 ; 2 uses
  %i.af = and i32 %i.aa, 31                       ; 2 uses
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.aa, %bb.b ]
  %i.ai = add i32 %.016.i, 1
  %i.aj = and i32 %i.ai, %i.k                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !478 ; 2 uses
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit, !llvm.loop !1486

_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.ae, %bb.b ], [ %i.an, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store i64 %i.v, ptr %i.as, align 8, !tbaa !157
  %i.at = shl nuw i32 1, %.lcssa.i
  %i.au = or i32 %i.at, %.lcssa11.i
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !478
  %i.av = add i32 %.0.i15, -1
  %i.aw = and i32 %i.av, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.aw, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1487

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1488

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !662
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ax = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !1480
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !1480
  %i.bb = icmp eq i32 %i.ax, 0
  br i1 %i.bb, label %_ZN4llvm8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit
  %i.bc = zext i32 %i.ax to i64                   ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bc, 31
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1073741820
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bh, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !662
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE4killEv.exit

_ZN4llvm8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111LSRInstance13InsertFormulaERNS_6LSRUseEjRKNS_7FormulaE(ptr noundef nonnull align 8 dereferenceable(35560) %0, ptr noundef nonnull align 8 dereferenceable(2096) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(112) %3) unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SmallVector.421", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !50
  %.not.i.i = icmp ne i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 674
  %i.e = load i8, ptr %i.d, align 2, !range !18
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.f, i1 false
  br i1 %or.cond.i, label %_ZN12_GLOBAL__N_111LSRInstance14CountRegistersERKNS_7FormulaEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i32 0, ptr %i.i, align 8, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 4, ptr %i.j, align 4, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !50   ; 8 uses
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EEC2ERKS4_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ugt i32 %i.l, 4
  br i1 %i.m, label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i, label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i

_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i: ; preds = %bb.c
  %i.n = zext i32 %i.l to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull %i.h, i64 noundef %i.n, i64 noundef 8) #23
  %.pre.i.i = load i32, ptr %i.k, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.pre.i.i, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i, label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i

_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i: ; preds = %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !21
  br label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i

_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i: ; preds = %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i, %bb.c
  %i.o = phi ptr [ %.pre.i, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i ], [ %i.h, %bb.c ]
  %i.p = phi i32 [ %.pre.i.i, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i ], [ %i.l, %bb.c ]
  %i.q = zext i32 %i.p to i64
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !21
  %gepdiff.i.i.i = shl nuw nsw i64 %i.q, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 8 %i.r, i64 %gepdiff.i.i.i, i1 false)
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i
  store i32 %i.l, ptr %i.i, align 8, !tbaa !50
  br label %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EEC2ERKS4_.exit.i

_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EEC2ERKS4_.exit.i: ; preds = %.sink.split.i.i.i, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !714  ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EEC2ERKS4_.exit.i
  %i.u = load i32, ptr %i.j, align 4, !tbaa !51
  %.not.i12.i = icmp ult i32 %i.l, %i.u
  br i1 %.not.i12.i, label %bb.f, label %bb.e, !prof !166

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.t)
  %.pr.pre.i = load i32, ptr %i.i, align 8, !tbaa !50
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.v = zext i32 %i.l to i64
  %i.w = load ptr, ptr %4, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  store ptr %i.t, ptr %i.x, align 1
  %i.y = load i32, ptr %i.i, align 8, !tbaa !50
  %i.z = add i32 %i.y, 1                          ; 2 uses
  store i32 %i.z, ptr %i.i, align 8, !tbaa !50
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit.i: ; preds = %bb.f, %bb.e, %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EEC2ERKS4_.exit.i
  %i.aa = phi i32 [ %i.z, %bb.f ], [ %i.l, %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EEC2ERKS4_.exit.i ], [ %.pr.pre.i, %bb.e ] ; 2 uses
  %i.ab = icmp ult i32 %i.aa, 2
  br i1 %i.ab, label %_ZN4llvm4sortIRNS_11SmallVectorIPKNS_4SCEVELj4EEEEEvOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit.i
  %i.ac = zext i32 %i.aa to i64
  %i.ad = load ptr, ptr %4, align 8, !tbaa !21
  call void @qsort(ptr noundef nonnull %i.ad, i64 noundef %i.ac, i64 noundef 8, ptr noundef nonnull @_ZN4llvm25array_pod_sort_comparatorIPKNS_4SCEVEEEiPKvS5_) #23
  br label %_ZN4llvm4sortIRNS_11SmallVectorIPKNS_4SCEVELj4EEEEEvOT_.exit.i

_ZN4llvm4sortIRNS_11SmallVectorIPKNS_4SCEVELj4EEEEEvOT_.exit.i: ; preds = %bb.g, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit.i
  %i.ae = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E24lookupOrInsertIntoBucketIRKS6_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(2096) %1, ptr noundef nonnull align 8 dereferenceable(48) %4), !noalias !1489
  %.fca.1.extract.i.i.i.i = extractvalue { ptr, i8 } %i.ae, 1
  %i.af = trunc nuw i8 %.fca.1.extract.i.i.i.i to i1 ; 2 uses
  br i1 %i.af, label %bb.h, label %_ZN4llvm15SmallPtrSetImplIPKNS_4SCEVEE6insertES3_.exit.i

bb.h:                                             ; preds = %_ZN4llvm4sortIRNS_11SmallVectorIPKNS_4SCEVELj4EEEEEvOT_.exit.i
  %i.ag = load i32, ptr %i.b, align 8, !tbaa !50  ; 2 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 692
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !51
  %.not.not.i.i.i.i = icmp ult i32 %i.ag, %i.ak
  %.val.pre4.i.i = load ptr, ptr %i.a, align 8, !tbaa !21 ; 4 uses
  br i1 %.not.not.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_17FormulaELb0EE28reserveForParamAndGetAddressERKS2_m.exit.i.i, label %bb.i, !prof !166

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw [112 x i8], ptr %.val.pre4.i.i, i64 %i.ah
  %i.am = icmp uge ptr %3, %.val.pre4.i.i
  %i.an = icmp ult ptr %3, %i.al
  %spec.select.i.i.i.i.i.i = and i1 %i.am, %i.an
end_hunk_11
begin_hunk_12_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E24lookupOrInsertIntoBucketIRKS6_JEEESt4pairIPSC_bEOT_DpOT0_:bb.a
  store i32 4, ptr %i.bi, align 4, !tbaa !51
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !50 ; 5 uses
  %.not.i.i = icmp eq i32 %i.bk, 0
  %i.bl = icmp eq ptr %i.aq, %1
  %or.cond.i = or i1 %i.bl, %.not.i.i
  br i1 %or.cond.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E15LookupBucketForIS6_EEbRKT_RPSC_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit
  %i.bm = icmp ugt i32 %i.bk, 4
  br i1 %i.bm, label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i, label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i

_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i: ; preds = %bb.e
  %i.bn = zext i32 %i.bk to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noundef nonnull %i.bg, i64 noundef %i.bn, i64 noundef 8) #23
  %.pre.i4 = load i32, ptr %i.bj, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.pre.i4, 0
  br i1 %.not.i.i.i, label %.sink.split.i.i, label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge

_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge: ; preds = %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i
  %.pre = load ptr, ptr %i.aq, align 8, !tbaa !21
  br label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i

_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i: ; preds = %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge, %bb.e
  %i.bo = phi ptr [ %.pre, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge ], [ %i.bg, %bb.e ]
  %i.bp = phi i32 [ %.pre.i4, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge ], [ %i.bk, %bb.e ]
  %i.bq = zext i32 %i.bp to i64
  %i.br = load ptr, ptr %1, align 8, !tbaa !21
  %gepdiff.i.i = shl nuw nsw i64 %i.bq, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr align 8 %i.br, i64 %gepdiff.i.i, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i
  store i32 %i.bk, ptr %i.bh, align 8, !tbaa !50
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E15LookupBucketForIS6_EEbRKT_RPSC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E15LookupBucketForIS6_EEbRKT_RPSC_.exit: ; preds = %.lr.ph.i, %.sink.split.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit
  %.sroa.0.0 = phi ptr [ %i.aq, %.sink.split.i.i ], [ %i.aq, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit ], [ %i.ag, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %.sink.split.i.i ], [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E15LookupBucketForIS6_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !989, !noalias !1510 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !995, !noalias !1510 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !996, !noalias !1510 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !50
  %i.k = zext i32 %i.j to i64
  %.idx.i.i = shl nuw nsw i64 %i.k, 3
  %i.l = tail call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef %i.h, i64 noundef %.idx.i.i) #23
  %i.m = trunc i64 %i.l to i32
  %i.n = xor i32 %i.m, -313160499
  %.024 = and i32 %i.n, %i.g                      ; 3 uses
  %i.o = zext i32 %.024 to i64                    ; 2 uses
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !478
  %i.t = and i32 %.024, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !625

bb.c:                                             ; preds = %.lr.ph
  %i.w = add nuw i32 %.025, 1
  %.0 = and i32 %i.w, %i.g                        ; 3 uses
  %i.x = zext i32 %.0 to i64                      ; 2 uses
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.x ; 2 uses
  %i.z = lshr i64 %i.x, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !478
  %i.ac = and i32 %.0, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph, label %.thread, !prof !626, !llvm.loop !1508

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.af = phi ptr [ %i.y, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ag = tail call noundef zeroext i1 @_ZN4llvm12DenseMapInfoINS_11SmallVectorIPKNS_4SCEVELj4EEEvE7isEqualERKS5_S8_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.af) ; 3 uses
  br i1 %i.ag, label %.thread, label %bb.c, !prof !166

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.y, %bb.c ], [ %i.af, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ag, %bb.c ], [ %i.ag, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1397
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapInfoINS_11SmallVectorIPKNS_4SCEVELj4EEEvE7isEqualERKS5_S8_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50
  %.not.i = icmp eq i32 %i.b, %i.d
  br i1 %.not.i, label %bb.b, label %_ZNK4llvm15SmallVectorImplIPKNS_4SCEVEEeqERKS4_.exit

bb.b:                                             ; preds = %bb.a
  %.not.not.i.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.not.i.i.i.i.i, label %_ZNK4llvm15SmallVectorImplIPKNS_4SCEVEEeqERKS4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = zext i32 %i.b to i64
  %.idx.i = shl nuw nsw i64 %i.e, 3
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load ptr, ptr %1, align 8, !tbaa !21
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.f, ptr %i.g, i64 %.idx.i)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_ZNK4llvm15SmallVectorImplIPKNS_4SCEVEEeqERKS4_.exit

_ZNK4llvm15SmallVectorImplIPKNS_4SCEVEEeqERKS4_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i1 [ false, %bb.a ], [ %.not9.i.i.i.i.i, %bb.c ], [ true, %bb.b ]
  ret i1 %.0.i
}

declare noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.566", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !996
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 48                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !989
  store ptr %i.y, ptr %i.q, align 8, !tbaa !995
  store i32 0, ptr %i.p, align 16, !tbaa !1509
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1397   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1398 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !49
  store ptr %i.z, ptr %2, align 16, !tbaa !1397
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !49
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !1398
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !478 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !478
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !478
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !478
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !478
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !478 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !21 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.at) #23
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.aw = add i32 %.0.i3.i.i, -1
  %i.ax = and i32 %i.aw, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1418

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1419

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !996 ; 2 uses
  %i.ay = icmp eq i32 %.pr.i, 0
  br i1 %i.ay, label %_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEv.exit.i
  %i.az = load ptr, ptr %2, align 16, !tbaa !989
  %i.ba = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bb = mul nuw nsw i64 %i.ba, 48
  %i.bc = add nuw nsw i64 %i.ba, 31
  %i.bd = lshr i64 %i.bc, 3
  %i.be = and i64 %i.bd, 1073741820
  %i.bf = add nuw nsw i64 %i.be, %i.bb
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.az, i64 noundef %i.bf, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEED2Ev.exit

_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !989
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !995
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !996  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !995  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !989
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !996
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i21 = icmp eq i64 %i.n, 0
  br i1 %.not.i21, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !478  ; 2 uses
  %.not11.i19 = icmp eq i32 %i.p, 0
  br i1 %.not11.i19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph24
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %.0.i20 = phi i32 [ %i.p, %.lr.ph ], [ %i.bk, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i20, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.t ; 10 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 5 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !50
  %i.y = zext i32 %i.x to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.y, 3
  %i.z = tail call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef %i.v, i64 noundef %.idx.i.i.i) #23
  %i.aa = trunc i64 %i.z to i32
  %i.ab = xor i32 %i.aa, -313160499
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.ab, %bb.b ], [ %i.aj, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.ac = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !478
  %i.ag = and i32 %.0.i7, 31                      ; 3 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  %i.aj = add i32 %.0.i7, 1
  br i1 %i.ai, label %bb.c, label %bb.d, !llvm.loop !1515

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad ; 4 uses
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %i.ac ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  store i32 0, ptr %i.an, align 8, !tbaa !50
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 12 ; 2 uses
  store i32 4, ptr %i.ao, align 4, !tbaa !51
  %i.ap = load i32, ptr %i.w, align 8, !tbaa !50  ; 6 uses
  %.not.i.i.i = icmp eq i32 %i.ap, 0
  %i.aq = icmp eq ptr %i.al, %i.u
  %or.cond = or i1 %i.aq, %.not.i.i.i
  %.pre29 = load ptr, ptr %i.u, align 8, !tbaa !21 ; 4 uses
  br i1 %or.cond, label %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EEC2EOS4_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.as = icmp eq ptr %.pre29, %i.ar
  br i1 %i.as, label %bb.f, label %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EEC2EOS4_.exit.i.thread

_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EEC2EOS4_.exit.i.thread: ; preds = %bb.e
  store ptr %.pre29, ptr %i.al, align 8, !tbaa !21
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !50
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 12 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !51
  store i32 %i.au, ptr %i.ao, align 4, !tbaa !51
  store ptr %i.ar, ptr %i.u, align 8, !tbaa !21
  store i32 0, ptr %i.at, align 4, !tbaa !51
  store i32 0, ptr %i.w, align 8, !tbaa !50
  %i.av = shl nuw i32 1, %i.ag
  %i.aw = load i32, ptr %i.ak, align 4, !tbaa !478
  %i.ax = or i32 %i.aw, %i.av
  store i32 %i.ax, ptr %i.ak, align 4, !tbaa !478
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_ENKUljE_clEj.exit

bb.f:                                             ; preds = %bb.e
  %i.ay = icmp ugt i32 %i.ap, 4
  br i1 %i.ay, label %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i, label %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i.thread

_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i: ; preds = %bb.f
  %i.az = zext i32 %i.ap to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr noundef nonnull %i.am, i64 noundef %i.az, i64 noundef 8) #23
  %.pre = load i32, ptr %i.w, align 8, !tbaa !50  ; 2 uses
  %.pre28.pre31.pre = load ptr, ptr %i.u, align 8, !tbaa !21 ; 2 uses
  %.not.i.i.i10 = icmp eq i32 %.pre, 0
  br i1 %.not.i.i.i10, label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i, label %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i.thread

_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i.thread: ; preds = %bb.f, %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i
  %i.ba = phi i32 [ %.pre, %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i ], [ %i.ap, %bb.f ]
  %.pre28.pre3145 = phi ptr [ %.pre28.pre31.pre, %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i ], [ %.pre29, %bb.f ]
  %i.bb = zext i32 %i.ba to i64
  %i.bc = load ptr, ptr %i.al, align 8, !tbaa !21
  %gepdiff.i = shl nuw nsw i64 %i.bb, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr align 8 %.pre28.pre3145, i64 %gepdiff.i, i1 false)
  %.pre28.pre = load ptr, ptr %i.u, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i: ; preds = %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i.thread, %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i
  %.pre28 = phi ptr [ %.pre28.pre, %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i.thread ], [ %.pre28.pre31.pre, %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i ]
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !50
  store i32 0, ptr %i.w, align 8, !tbaa !50
  br label %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EEC2EOS4_.exit.i

_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EEC2EOS4_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i, %bb.d
  %i.bd = phi ptr [ %.pre28, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i ], [ %.pre29, %bb.d ] ; 2 uses
  %i.be = shl nuw i32 1, %i.ag
  %i.bf = load i32, ptr %i.ak, align 4, !tbaa !478
  %i.bg = or i32 %i.bf, %i.be
  store i32 %i.bg, ptr %i.ak, align 4, !tbaa !478
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bi = icmp eq ptr %i.bd, %i.bh
  br i1 %i.bi, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_ENKUljE_clEj.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EEC2EOS4_.exit.i
  tail call void @free(ptr noundef %i.bd) #23
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EEC2EOS4_.exit.i.thread, %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EEC2EOS4_.exit.i, %bb.g
  %i.bj = add i32 %.0.i20, -1
  %i.bk = and i32 %i.bj, %.0.i20                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bk, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1516

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_ENKUljE_clEj.exit, %.lr.ph24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph24, !llvm.loop !1517

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre30 = load i32, ptr %i.d, align 4, !tbaa !996
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bl = phi i32 [ %.pre30, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !1509
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !1509
  %i.bp = icmp eq i32 %i.bl, 0
  br i1 %i.bp, label %_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE4killEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.bq = load ptr, ptr %1, align 8, !tbaa !989
  %i.br = zext i32 %i.bl to i64                   ; 2 uses
  %i.bs = mul nuw nsw i64 %i.br, 48
  %i.bt = add nuw nsw i64 %i.br, 31
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = and i64 %i.bu, 1073741820
  %i.bw = add nuw nsw i64 %i.bv, %i.bs
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bq, i64 noundef %i.bw, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !996
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE4killEv.exit

_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_113RegUseTracker13countRegisterEPKN4llvm4SCEVEm(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !476, !noalias !1518 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !477, !noalias !1518 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !475, !noalias !1518 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = ptrtoint ptr %1 to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.h, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !478, !noalias !1527
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !625

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.05.i.i.i.i = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !456, !noalias !1527
  %i.y = icmp eq ptr %1, %i.x
  br i1 %i.y, label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit, label %bb.c, !prof !166

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = add nuw i32 %.05.i.i.i.i, 1
  %i.aa = and i32 %i.z, %i.h                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !478, !noalias !1527
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !626, !llvm.loop !1528

end_hunk_12
begin_hunk_13_@_ZN4llvm14SmallBitVector6resizeEjb:bb.a
.lr.ph.i.i.i.i.i.i.i.i.i20.preheader:             ; preds = %bb.m, %middle.block49
  %.06.i.i.i.i.i.i.i.i.i21.ph = phi ptr [ %i.cm, %bb.m ], [ %i.dg, %middle.block49 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i20

.lr.ph.i.i.i.i.i.i.i.i.i20:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i20.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i20
  %.06.i.i.i.i.i.i.i.i.i21 = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i.i.i.i.i20 ], [ %.06.i.i.i.i.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i.i.i.i.i20.preheader ] ; 2 uses
  store i64 %.neg.i17, ptr %.06.i.i.i.i.i.i.i.i.i21, align 8, !tbaa !157
  %i.dk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i21, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i22 = icmp eq ptr %i.dk, %i.db
  br i1 %.not.i.i.i.i.i.i.i.i.i22, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i20, !llvm.loop !1535

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i20, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block49, %middle.block61, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i
  %i.dl = phi ptr [ %i.cq, %middle.block61 ], [ %i.cm, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i ], [ %i.cm, %middle.block49 ], [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.cm, %.lr.ph.i.i.i.i.i.i.i.i.i20 ] ; 2 uses
  store i32 %i.ck, ptr %i.cn, align 8, !tbaa !50
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  store i32 %1, ptr %i.dm, align 8, !tbaa !899
  br i1 %2, label %bb.n, label %_ZN4llvm9BitVectorC2Ejb.exit

bb.n:                                             ; preds = %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i
  %i.dn = and i32 %1, 63                          ; 2 uses
  %.not.i.i.i23 = icmp eq i32 %i.dn, 0
  br i1 %.not.i.i.i23, label %_ZN4llvm9BitVectorC2Ejb.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = shl nsw i64 -1, %i.do
  %i.dq = xor i64 %i.dp, -1
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.cl
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -8 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !157
  %i.du = and i64 %i.dt, %i.dq
  store i64 %i.du, ptr %i.ds, align 8, !tbaa !157
  br label %_ZN4llvm9BitVectorC2Ejb.exit

_ZN4llvm9BitVectorC2Ejb.exit:                     ; preds = %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i, %bb.n, %bb.o
  %i.dv = load i64, ptr %0, align 8, !tbaa !479   ; 2 uses
  %i.dw = lshr i64 %i.dv, 1
  %i.dx = lshr i64 %i.dv, 58                      ; 3 uses
  %i.dy = shl nsw i64 -1, %i.dx
  %i.dz = xor i64 %i.dy, -1
  %i.ea = and i64 %i.dw, %i.dz
  %.not26 = icmp eq i64 %i.dx, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm9BitVector9referenceaSEb.exit, %_ZN4llvm9BitVectorC2Ejb.exit
  %i.eb = ptrtoint ptr %i.ci to i64
  store i64 %i.eb, ptr %0, align 8, !tbaa !479
  br label %_ZN4llvm9BitVector6resizeEjb.exit

.lr.ph:                                           ; preds = %_ZN4llvm9BitVectorC2Ejb.exit, %_ZN4llvm9BitVector9referenceaSEb.exit
  %.027 = phi i64 [ %i.en, %_ZN4llvm9BitVector9referenceaSEb.exit ], [ 0, %_ZN4llvm9BitVectorC2Ejb.exit ] ; 4 uses
  %i.ec = lshr i64 %i.ea, %.027
  %i.ed = trunc i64 %i.ec to i1
  %i.ee = lshr i64 %.027, 6
  %i.ef = and i64 %i.ee, 67108863
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.ef ; 3 uses
  %i.eh = shl nuw i64 1, %.027                    ; 2 uses
  br i1 %i.ed, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !157
  %i.ej = or i64 %i.ei, %i.eh
  br label %_ZN4llvm9BitVector9referenceaSEb.exit

bb.q:                                             ; preds = %.lr.ph
  %i.ek = xor i64 %i.eh, -1
  %i.el = load i64, ptr %i.eg, align 8, !tbaa !157
  %i.em = and i64 %i.el, %i.ek
  br label %_ZN4llvm9BitVector9referenceaSEb.exit

_ZN4llvm9BitVector9referenceaSEb.exit:            ; preds = %bb.p, %bb.q
  %storemerge = phi i64 [ %i.em, %bb.q ], [ %i.ej, %bb.p ]
  store i64 %storemerge, ptr %i.eg, align 8, !tbaa !157
  %i.en = add nuw nsw i64 %.027, 1                ; 2 uses
  %.not = icmp eq i64 %i.en, %i.dx
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1536

_ZN4llvm9BitVector6resizeEjb.exit:                ; preds = %bb.i, %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i, %bb.k, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0, ptr %.0.val, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #14 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !476, !noalias !1537 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !477, !noalias !1537 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !475, !noalias !1537 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = ptrtoint ptr %.0.val to i64
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !478
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !625

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.05 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !456
  %i.x = icmp eq ptr %.0.val, %i.w
  br i1 %i.x, label %.thread, label %bb.c, !prof !166

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.05, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !478
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !626, !llvm.loop !1528

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa9.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  store ptr %.lcssa9.sink, ptr %1, align 8, !tbaa !1529
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, i32 noundef %1) unnamed_addr #9 align 2 {
_ZN4llvm8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEC2EjNS_12DenseMapBaseISB_S3_S5_S7_SA_E16ExactBucketCountE.exit:
  %2 = alloca %"class.llvm::DenseMap.241", align 16 ; 8 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef range(i32 64, 0) i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !475
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !476
  store ptr %i.y, ptr %i.q, align 8, !tbaa !477
  store i32 0, ptr %i.p, align 16, !tbaa !1142
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1529   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1398
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !49
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !49
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !478 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !478
  store <2 x i32> %i.ag, ptr %i.ad, align 8, !tbaa !478
  %i.ah = icmp eq i32 %i.af, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit, label %.lr.ph11.preheader.i.i

.lr.ph11.preheader.i.i:                           ; preds = %_ZN4llvm8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEC2EjNS_12DenseMapBaseISB_S3_S5_S7_SA_E16ExactBucketCountE.exit
  %i.ai = zext i32 %i.af to i64                   ; 2 uses
  %i.aj = add nuw nsw i64 %i.ai, 31               ; 2 uses
  %i.ak = lshr i64 %i.aj, 5
  br label %.lr.ph11.i.i

.lr.ph11.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph11.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph11.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !478 ; 2 uses
  %.not11.i6.i.i = icmp eq i32 %i.am, 0
  br i1 %.not11.i6.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph11.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.an = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.a

bb.a:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i7.i.i = phi i32 [ %i.am, %.lr.ph.i.i ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ao = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i7.i.i, i1 true)
  %i.ap = or disjoint i32 %i.ao, %i.an
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.val.i.i.i = load i64, ptr %i.as, align 8, !tbaa !479 ; 3 uses
  %i.at = trunc i64 %.val.i.i.i to i1
  br i1 %i.at, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.au = inttoptr i64 %.val.i.i.i to ptr         ; 3 uses
  %i.av = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.av, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !21 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.aw) #23
  br label %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i.i

_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i.i:            ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 72) #25
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i.i, %bb.b, %bb.a
  %i.az = add i32 %.0.i7.i.i, -1
  %i.ba = and i32 %i.az, %.0.i7.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.a, !llvm.loop !481

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph11.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.ak
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i, label %.lr.ph11.i.i, !llvm.loop !482

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %i.bb = shl nuw nsw i64 %i.ai, 4
  %i.bc = lshr i64 %i.aj, 3
  %i.bd = and i64 %i.bc, 1073741820
  %i.be = add nuw nsw i64 %i.bd, %i.bb
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.z, i64 noundef %i.be, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEC2EjNS_12DenseMapBaseISB_S3_S5_S7_SA_E16ExactBucketCountE.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #9 align 2 {
bb.a:
  %.val11 = load ptr, ptr %1, align 8, !tbaa !476 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !477
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %.val = load i32, ptr %i.b, align 4, !tbaa !475 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.c, align 8, !tbaa !477 ; 3 uses
  %.val12 = load ptr, ptr %0, align 8, !tbaa !476
  %i.d = getelementptr i8, ptr %0, i64 20
  %.val7 = load i32, ptr %i.d, align 4, !tbaa !475
  %i.e = add i32 %.val7, -1                       ; 2 uses
  %i.f = zext i32 %.val to i64
  %i.g = add nuw nsw i64 %i.f, 31
  %i.h = lshr i64 %i.g, 5                         ; 2 uses
  %.not.i22 = icmp eq i64 %i.h, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val8, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !478  ; 2 uses
  %.not11.i20 = icmp eq i32 %i.j, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.k = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.j, %.lr.ph ], [ %i.au, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.l = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.m = or disjoint i32 %i.l, %i.k
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.val11, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !456  ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = mul i64 %i.q, -4658895280553007687       ; 2 uses
  %i.s = lshr i64 %i.r, 31
  %i.t = xor i64 %i.s, %i.r
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.e, %i.u                       ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = lshr i64 %i.w, 5                         ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !478  ; 2 uses
  %i.aa = and i32 %i.v, 31                        ; 2 uses
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  br i1 %i.ac, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.v, %bb.b ]
  %i.ad = add i32 %.016.i, 1
  %i.ae = and i32 %i.ad, %i.e                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = lshr i64 %i.af, 5                       ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !478 ; 2 uses
  %i.aj = and i32 %i.ae, 31                       ; 2 uses
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !1542

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.x, %bb.b ], [ %i.ag, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.w, %bb.b ], [ %i.af, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.z, %bb.b ], [ %i.ai, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.aa, %bb.b ], [ %i.aj, %.lr.ph.i ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %.lcssa15.i
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.val12, i64 %.lcssa13.i ; 2 uses
  store ptr %i.p, ptr %i.an, align 8, !tbaa !456
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !479
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !479
  store i64 1, ptr %i.ap, align 8, !tbaa !479
  %i.ar = shl nuw i32 1, %.lcssa.i
  %i.as = or i32 %i.ar, %.lcssa11.i
  store i32 %i.as, ptr %i.am, align 4, !tbaa !478
  %i.at = add i32 %.0.i21, -1
  %i.au = and i32 %i.at, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.au, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1543

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph25, !llvm.loop !1544

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.b, align 4, !tbaa !475
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.av = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %.val, %bb.a ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load i32, ptr %i.aw, align 8, !tbaa !1142
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.val10, ptr %i.ax, align 8, !tbaa !1142
  %i.ay = icmp eq i32 %i.av, 0
  br i1 %i.ay, label %_ZN4llvm8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.az = zext i32 %i.av to i64                   ; 2 uses
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = add nuw nsw i64 %i.az, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  %i.be = add nuw nsw i64 %i.bd, %i.ba
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %.val11, i64 noundef %i.be, i64 noundef 8) #23
  store i32 0, ptr %i.b, align 4, !tbaa !475
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare noundef i32 @_ZNK4llvm3Use12getOperandNoEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm11Instruction20isLifetimeStartOrEndEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_111LSRInstance25InsertSupplementalFormulaEPKN4llvm4SCEVERNS_6LSRUseEm(ptr noundef nonnull align 8 dereferenceable(35560) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(2096) %2, i64 noundef %3) unnamed_addr #3 align 2 {
_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit:
  %4 = alloca %"struct.(anonymous namespace)::Formula", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 0, ptr %i.b, align 8, !tbaa !705
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %4, i8 0, i64 17, i1 false)
  store ptr %i.d, ptr %i.c, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 52
  store i32 4, ptr %i.f, align 4, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.g, i8 0, i64 17, i1 false)
  store ptr %1, ptr %i.d, align 8
  store i32 1, ptr %i.e, align 8, !tbaa !50
  store i8 1, ptr %i.a, align 8, !tbaa !700
  %i.h = trunc i64 %3 to i32
  %i.i = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111LSRInstance13InsertFormulaERNS_6LSRUseEjRKNS_7FormulaE(ptr noundef nonnull align 8 dereferenceable(35560) %0, ptr noundef nonnull align 8 dereferenceable(2096) %2, i32 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(112) %4) ; 0 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.d
  br i1 %i.k, label %_ZN12_GLOBAL__N_17FormulaD2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit
  call void @free(ptr noundef %i.j) #23
  br label %_ZN12_GLOBAL__N_17FormulaD2Ev.exit

_ZN12_GLOBAL__N_17FormulaD2Ev.exit:               ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_111LSRInstance26GenerateReassociationsImplERNS_6LSRUseEjRKNS_7FormulaEjmb(ptr noundef nonnull align 8 dereferenceable(35560) %0, ptr noundef nonnull align 8 dereferenceable(2096) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %3, i32 noundef range(i32 0, 3) %4, i64 noundef %5, i1 noundef zeroext %6) unnamed_addr #3 align 2 {
bb.a:
  %7 = alloca %"struct.llvm::SCEVUseT", align 8   ; 8 uses
  %8 = alloca %"struct.llvm::SCEVUseT", align 8   ; 8 uses
  %9 = alloca %"class.llvm::SmallVector.609", align 8 ; 13 uses
  %10 = alloca %"class.llvm::SmallVector.418", align 8 ; 13 uses
  %11 = alloca %"struct.(anonymous namespace)::Formula", align 8 ; 13 uses
  %12 = alloca %"struct.(anonymous namespace)::Formula", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %5
  %.in = select i1 %6, ptr %i.a, ptr %i.d
  %i.e = load ptr, ptr %.in, align 8, !tbaa !456  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !563
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !580, !nonnull !19, !align !34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !560
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !577, !nonnull !19, !align !34
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val88 = load i32, ptr %i.o, align 8, !tbaa !812
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val89 = load ptr, ptr %i.p, align 8
  %i.q = tail call fastcc noundef zeroext i1 @_ZL17mayUsePostIncModeRKN4llvm19TargetTransformInfoERN12_GLOBAL__N_16LSRUseEPKNS_4SCEVEPKNS_4LoopERNS_15ScalarEvolutionE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 %.val88, ptr %.val89, ptr noundef %i.e, ptr noundef %i.l, ptr noundef nonnull align 8 dereferenceable(1152) %i.n)
  br i1 %i.q, label %bb.ay, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.r, ptr %9, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 7 uses
  store i32 0, ptr %i.s, align 8, !tbaa !50
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  store i32 8, ptr %i.t, align 4, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !560
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !577, !nonnull !19, !align !34
  %i.y = call fastcc noundef ptr @_ZL15CollectSubexprsPKN4llvm4SCEVEPKNS_12SCEVConstantERNS_15SmallVectorImplIS2_EEPKNS_4LoopERNS_15ScalarEvolutionEj(ptr noundef %i.e, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %i.v, ptr noundef nonnull align 8 dereferenceable(1152) %i.x, i32 noundef 0) ; 3 uses
  %.not = icmp eq ptr %i.y, null
  %.pre159 = load i32, ptr %i.s, align 8, !tbaa !50 ; 3 uses
  br i1 %.not, label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load i32, ptr %i.t, align 4, !tbaa !51
  %.not.i = icmp ult i32 %.pre159, %i.z
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !166

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.y)
  %.pre = load i32, ptr %i.s, align 8, !tbaa !50
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = zext i32 %.pre159 to i64
  %i.ab = load ptr, ptr %9, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  store ptr %i.y, ptr %i.ac, align 1
  %i.ad = load i32, ptr %i.s, align 8, !tbaa !50
  %i.ae = add i32 %i.ad, 1                        ; 2 uses
end_hunk_13
begin_hunk_14_@_ZN4llvm14SmallBitVectoroRERKS0_:bb.a
  %i.am = trunc i64 %i.t to i1
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread
  %i.an = lshr i64 %i.t, 58
  br label %_ZNK4llvm14SmallBitVector4sizeEv.exit14

bb.k:                                             ; preds = %.thread
  %i.ao = inttoptr i64 %i.t to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !899
  %i.ar = zext i32 %i.aq to i64
  br label %_ZNK4llvm14SmallBitVector4sizeEv.exit14

_ZNK4llvm14SmallBitVector4sizeEv.exit14:          ; preds = %bb.j, %bb.k
  %i.as = phi i64 [ %i.an, %bb.j ], [ %i.ar, %bb.k ] ; 2 uses
  %.not28 = icmp eq i64 %i.as, 0
  br i1 %.not28, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm14SmallBitVector4sizeEv.exit14, %_ZN4llvm14SmallBitVector9referenceaSEb.exit
  %.029 = phi i64 [ %i.dg, %_ZN4llvm14SmallBitVector9referenceaSEb.exit ], [ 0, %_ZNK4llvm14SmallBitVector4sizeEv.exit14 ] ; 13 uses
  %i.at = load i64, ptr %0, align 8, !tbaa !479   ; 11 uses
  %i.au = trunc i64 %i.at to i1                   ; 3 uses
  br i1 %i.au, label %.split, label %_ZNK4llvm14SmallBitVector4testEj.exit

.split:                                           ; preds = %.lr.ph
  %i.av = lshr i64 %i.at, 1                       ; 2 uses
  %i.aw = lshr i64 %i.at, 58
  %i.ax = shl nsw i64 -1, %i.aw
  %i.ay = xor i64 %i.ax, -1                       ; 2 uses
  %i.az = and i64 %i.av, %i.ay
  %i.ba = lshr i64 %i.az, %.029
  %i.bb = trunc i64 %i.ba to i1
  br i1 %i.bb, label %_ZNK4llvm14SmallBitVector4testEj.exit16.thread.thread, label %bb.l

_ZNK4llvm14SmallBitVector4testEj.exit:            ; preds = %.lr.ph
  %i.bc = inttoptr i64 %i.at to ptr               ; 2 uses
  %i.bd = lshr i64 %.029, 6
  %i.be = and i64 %i.bd, 67108863                 ; 2 uses
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !21
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.be
  %i.bh = and i64 %.029, 63
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !157
  %i.bj = shl nuw i64 1, %i.bh                    ; 2 uses
  %i.bk = and i64 %i.bi, %i.bj
  %.not26 = icmp eq i64 %i.bk, 0
  br i1 %.not26, label %bb.l, label %_ZNK4llvm14SmallBitVector4testEj.exit16.thread.thread25

bb.l:                                             ; preds = %.split, %_ZNK4llvm14SmallBitVector4testEj.exit
  %i.bl = load i64, ptr %1, align 8, !tbaa !479   ; 4 uses
  %i.bm = trunc i64 %i.bl to i1
  br i1 %i.bm, label %.split22, label %_ZNK4llvm14SmallBitVector4testEj.exit16

.split22:                                         ; preds = %bb.l
  %i.bn = lshr i64 %i.bl, 1
  %i.bo = lshr i64 %i.bl, 58
  %i.bp = shl nsw i64 -1, %i.bo
  %i.bq = xor i64 %i.bp, -1
  %i.br = and i64 %i.bn, %i.bq
  %i.bs = lshr i64 %i.br, %.029
  %i.bt = trunc i64 %i.bs to i1
  br i1 %i.bt, label %_ZNK4llvm14SmallBitVector4testEj.exit16.thread, label %bb.m

_ZNK4llvm14SmallBitVector4testEj.exit16:          ; preds = %bb.l
  %i.bu = inttoptr i64 %i.bl to ptr
  %i.bv = lshr i64 %.029, 6
  %i.bw = and i64 %i.bv, 67108863
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !21
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = and i64 %.029, 63
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !157
  %i.cb = shl nuw i64 1, %i.bz
  %i.cc = and i64 %i.ca, %i.cb
  %.not27 = icmp eq i64 %i.cc, 0
  br i1 %.not27, label %bb.m, label %_ZNK4llvm14SmallBitVector4testEj.exit16.thread

_ZNK4llvm14SmallBitVector4testEj.exit16.thread:   ; preds = %.split22, %_ZNK4llvm14SmallBitVector4testEj.exit16
  br i1 %i.au, label %_ZNK4llvm14SmallBitVector4testEj.exit16.thread._ZNK4llvm14SmallBitVector4testEj.exit16.thread.thread_crit_edge, label %_ZNK4llvm14SmallBitVector4testEj.exit16.thread._ZNK4llvm14SmallBitVector4testEj.exit16.thread.thread25_crit_edge

_ZNK4llvm14SmallBitVector4testEj.exit16.thread._ZNK4llvm14SmallBitVector4testEj.exit16.thread.thread_crit_edge: ; preds = %_ZNK4llvm14SmallBitVector4testEj.exit16.thread
  %.pre = lshr i64 %i.at, 1
  %.pre30 = lshr i64 %i.at, 58
  %.pre32 = shl nsw i64 -1, %.pre30
  %.pre34 = xor i64 %.pre32, -1
  br label %_ZNK4llvm14SmallBitVector4testEj.exit16.thread.thread

_ZNK4llvm14SmallBitVector4testEj.exit16.thread._ZNK4llvm14SmallBitVector4testEj.exit16.thread.thread25_crit_edge: ; preds = %_ZNK4llvm14SmallBitVector4testEj.exit16.thread
  %.pre36 = inttoptr i64 %i.at to ptr
  %.pre38 = and i64 %.029, 63
  %.pre40 = shl nuw i64 1, %.pre38
  %.pre42 = lshr i64 %.029, 6
  %.pre44 = and i64 %.pre42, 67108863
  br label %_ZNK4llvm14SmallBitVector4testEj.exit16.thread.thread25

_ZNK4llvm14SmallBitVector4testEj.exit16.thread.thread: ; preds = %_ZNK4llvm14SmallBitVector4testEj.exit16.thread._ZNK4llvm14SmallBitVector4testEj.exit16.thread.thread_crit_edge, %.split
  %.pre-phi35 = phi i64 [ %.pre34, %_ZNK4llvm14SmallBitVector4testEj.exit16.thread._ZNK4llvm14SmallBitVector4testEj.exit16.thread.thread_crit_edge ], [ %i.ay, %.split ]
  %.pre-phi = phi i64 [ %.pre, %_ZNK4llvm14SmallBitVector4testEj.exit16.thread._ZNK4llvm14SmallBitVector4testEj.exit16.thread.thread_crit_edge ], [ %i.av, %.split ]
  %i.cd = shl nuw i64 1, %.029
  %i.ce = or i64 %.pre-phi, %i.cd
  %i.cf = and i64 %i.ce, %.pre-phi35
  %i.cg = shl nuw i64 %i.cf, 1
  %i.ch = and i64 %i.at, -288230376151711743
  %i.ci = or i64 %i.cg, %i.ch
  store i64 %i.ci, ptr %0, align 8, !tbaa !479
  br label %_ZN4llvm14SmallBitVector9referenceaSEb.exit

_ZNK4llvm14SmallBitVector4testEj.exit16.thread.thread25: ; preds = %_ZNK4llvm14SmallBitVector4testEj.exit16.thread._ZNK4llvm14SmallBitVector4testEj.exit16.thread.thread25_crit_edge, %_ZNK4llvm14SmallBitVector4testEj.exit
  %.pre-phi45 = phi i64 [ %.pre44, %_ZNK4llvm14SmallBitVector4testEj.exit16.thread._ZNK4llvm14SmallBitVector4testEj.exit16.thread.thread25_crit_edge ], [ %i.be, %_ZNK4llvm14SmallBitVector4testEj.exit ]
  %.pre-phi41 = phi i64 [ %.pre40, %_ZNK4llvm14SmallBitVector4testEj.exit16.thread._ZNK4llvm14SmallBitVector4testEj.exit16.thread.thread25_crit_edge ], [ %i.bj, %_ZNK4llvm14SmallBitVector4testEj.exit ]
  %.pre-phi37 = phi ptr [ %.pre36, %_ZNK4llvm14SmallBitVector4testEj.exit16.thread._ZNK4llvm14SmallBitVector4testEj.exit16.thread.thread25_crit_edge ], [ %i.bc, %_ZNK4llvm14SmallBitVector4testEj.exit ]
  %i.cj = load ptr, ptr %.pre-phi37, align 8, !tbaa !21
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.pre-phi45 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !157
  %i.cm = or i64 %i.cl, %.pre-phi41
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !157
  br label %_ZN4llvm14SmallBitVector9referenceaSEb.exit

bb.m:                                             ; preds = %.split22, %_ZNK4llvm14SmallBitVector4testEj.exit16
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cn = lshr i64 %i.at, 58
  %i.co = shl nsw i64 -1, %i.cn
  %i.cp = shl nuw i64 1, %.029
  %i.cq = or i64 %i.co, %i.cp
  %i.cr = xor i64 %i.cq, -1
  %i.cs = shl nuw i64 %i.cr, 1
  %i.ct = or i64 %i.cs, -288230376151711744
  %i.cu = and i64 %i.ct, %i.at
  %i.cv = or disjoint i64 %i.cu, 1
  store i64 %i.cv, ptr %0, align 8, !tbaa !479
  br label %_ZN4llvm14SmallBitVector9referenceaSEb.exit

bb.o:                                             ; preds = %bb.m
  %i.cw = inttoptr i64 %i.at to ptr
  %i.cx = and i64 %.029, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = xor i64 %i.cy, -1
  %i.da = lshr i64 %.029, 6
  %i.db = and i64 %i.da, 67108863
  %i.dc = load ptr, ptr %i.cw, align 8, !tbaa !21
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.db ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !157
  %i.df = and i64 %i.de, %i.cz
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !157
  br label %_ZN4llvm14SmallBitVector9referenceaSEb.exit

_ZN4llvm14SmallBitVector9referenceaSEb.exit:      ; preds = %_ZNK4llvm14SmallBitVector4testEj.exit16.thread.thread, %_ZNK4llvm14SmallBitVector4testEj.exit16.thread.thread25, %bb.n, %bb.o
  %i.dg = add nuw nsw i64 %.029, 1                ; 2 uses
  %.not = icmp eq i64 %i.dg, %i.as
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !1576

.loopexit:                                        ; preds = %_ZN4llvm14SmallBitVector9referenceaSEb.exit, %_ZNK4llvm14SmallBitVector4sizeEv.exit14, %bb.i, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !885  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i32 %i.b, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !883  ; 4 uses
  %i.g = icmp ult i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i32 %i.f, 64
  br i1 %i.h, label %bb.d, label %.lr.ph7.preheader.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %i.f, 0
  br i1 %i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.c, %bb.e
  %i.j = load ptr, ptr %0, align 8, !tbaa !874
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !882
  %i.m = zext i32 %i.f to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !478  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.q, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.r = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.af, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.s = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !479  ; 3 uses
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = inttoptr i64 %i.x to ptr                 ; 3 uses
  %i.aa = icmp eq i64 %i.x, 0
  br i1 %i.aa, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !21  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN4llvm9BitVectorD2Ev.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef %i.ab) #23
  br label %_ZN4llvm9BitVectorD2Ev.exit.i.i.i

_ZN4llvm9BitVectorD2Ev.exit.i.i.i:                ; preds = %bb.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 72) #25
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %_ZN4llvm9BitVectorD2Ev.exit.i.i.i, %bb.g, %bb.f
  %i.ae = add i32 %.0.i3.i, -1
  %i.af = and i32 %i.ae, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.af, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.f, !llvm.loop !922

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.loopexit, label %.lr.ph7.i, !llvm.loop !923

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.loopexit: ; preds = %._crit_edge.i
  %.pre = load i32, ptr %i.e, align 4, !tbaa !883
  %i.ag = zext i32 %.pre to i64
  %i.ah = add nuw nsw i64 %i.ag, 31
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = and i64 %i.ai, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.loopexit, %bb.e
  %i.ak = phi i64 [ %i.aj, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.loopexit ], [ 0, %bb.e ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !882
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.am, i8 0, i64 %i.ak, i1 false)
  store i32 0, ptr %i.a, align 8, !tbaa !885
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm5APInt3absEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !453  ; 5 uses
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %i.d = and i32 %i.c, 63
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = icmp ult i32 %i.b, 65                    ; 3 uses
  %i.h = load ptr, ptr %1, align 8                ; 2 uses
  %i.i = lshr i32 %i.c, 6
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %.in.i.i.i = select i1 %i.g, ptr %1, ptr %i.k
  %i.l = load i64, ptr %.in.i.i.i, align 8, !tbaa !414
  %i.m = and i64 %i.f, %i.l
  %.not = icmp eq i64 %i.m, 0
  %i.n = ptrtoint ptr %i.h to i64                 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 %i.b, ptr %i.o, align 8, !tbaa !453
  br i1 %i.g, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i, label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %bb.b
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %1) #23
  %.pr = load i32, ptr %i.o, align 8, !tbaa !453, !noalias !1577 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1577)
  %i.p = icmp ult i32 %.pr, 65
  br i1 %i.p, label %_ZN4llvm5APIntC2ERKS0_.exit._ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i_crit_edge, label %bb.c

_ZN4llvm5APIntC2ERKS0_.exit._ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i_crit_edge: ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  %.pre = load i64, ptr %2, align 8, !tbaa !414, !noalias !1577
  br label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i:     ; preds = %bb.b, %_ZN4llvm5APIntC2ERKS0_.exit._ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i_crit_edge
  %i.q = phi i64 [ %.pre, %_ZN4llvm5APIntC2ERKS0_.exit._ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i_crit_edge ], [ %i.n, %bb.b ]
  %i.r = phi i32 [ %.pr, %_ZN4llvm5APIntC2ERKS0_.exit._ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i_crit_edge ], [ %i.b, %bb.b ] ; 2 uses
  %i.s = xor i64 %i.q, -1
  %i.t = sub nsw i32 0, %i.r
  %i.u = and i32 %i.t, 63
  %i.v = zext nneg i32 %i.u to i64
  %i.w = lshr i64 -1, %i.v
  %i.x = icmp eq i32 %i.r, 0
  %spec.select.i.i.i = select i1 %i.x, i64 0, i64 %i.w, !prof !167
  %i.y = and i64 %spec.select.i.i.i, %i.s
  store i64 %i.y, ptr %2, align 8, !tbaa !414, !noalias !1577
  br label %_ZN4llvm5APIntD2Ev.exit

bb.c:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  call void @_ZN4llvm5APInt19flipAllBitsSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #23, !noalias !1577
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.c, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i
  %i.z = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #23, !noalias !1577 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i32, ptr %i.o, align 8, !tbaa !453, !noalias !1577
  store i32 %i.ab, ptr %i.aa, align 8, !tbaa !453, !alias.scope !1577
  %i.ac = load i64, ptr %2, align 8, !noalias !1577
  store i64 %i.ac, ptr %0, align 8, !alias.scope !1577
  br label %_ZN4llvm5APIntC2ERKS0_.exit1

bb.d:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.ad, align 8, !tbaa !453
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %i.n, ptr %0, align 8, !tbaa !414
  br label %_ZN4llvm5APIntC2ERKS0_.exit1

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) #23
  br label %_ZN4llvm5APIntC2ERKS0_.exit1

_ZN4llvm5APIntC2ERKS0_.exit1:                     ; preds = %bb.f, %bb.e, %_ZN4llvm5APIntD2Ev.exit
  ret void
}

declare void @_ZNK4llvm5APIntmlERKS0_(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E15LookupBucketForIS4_EEbRKT_RPSI_(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0, ptr %.0.val, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #14 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !819, !noalias !1580 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !831, !noalias !1580 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !832, !noalias !1580 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = ptrtoint ptr %.0.val to i64
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !478
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !625

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.05 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !456
  %i.x = icmp eq ptr %.0.val, %i.w
  br i1 %i.x, label %.thread, label %bb.c, !prof !166

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.05, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [56 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !478
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !626, !llvm.loop !834

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa9.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  store ptr %.lcssa9.sink, ptr %1, align 8, !tbaa !835
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E4growEj(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, i32 noundef %1) unnamed_addr #9 align 2 {
_ZN4llvm8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES3_NS5_23KeyOrderTargetImmediateESaISt4pairIKS6_S3_EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEC2EjNS_12DenseMapBaseISI_S3_SC_SE_SH_E16ExactBucketCountE.exit:
  %2 = alloca %"class.llvm::DenseMap.692", align 16 ; 8 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef range(i32 64, 0) i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !832
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 56                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !819
  store ptr %i.y, ptr %i.q, align 8, !tbaa !831
  store i32 0, ptr %i.p, align 16, !tbaa !836
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E8moveFromERSJ_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !835    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1398
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !49
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !49
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !478 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !478
  store <2 x i32> %i.ag, ptr %i.ad, align 8, !tbaa !478
  %i.ah = icmp eq i32 %i.af, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES3_NS5_23KeyOrderTargetImmediateESaISt4pairIKS6_S3_EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEED2Ev.exit, label %.lr.ph11.preheader.i.i

.lr.ph11.preheader.i.i:                           ; preds = %_ZN4llvm8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES3_NS5_23KeyOrderTargetImmediateESaISt4pairIKS6_S3_EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEC2EjNS_12DenseMapBaseISI_S3_SC_SE_SH_E16ExactBucketCountE.exit
  %i.ai = zext i32 %i.af to i64                   ; 2 uses
  %i.aj = add nuw nsw i64 %i.ai, 31               ; 2 uses
  %i.ak = lshr i64 %i.aj, 5
  br label %.lr.ph11.i.i

.lr.ph11.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph11.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph11.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !478 ; 2 uses
  %.not11.i6.i.i = icmp eq i32 %i.am, 0
  br i1 %.not11.i6.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph11.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.an = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.lr.ph.i.i
  %.0.i7.i.i = phi i32 [ %i.am, %.lr.ph.i.i ], [ %i.au, %bb.a ] ; 3 uses
  %i.ao = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i7.i.i, i1 true)
  %i.ap = or disjoint i32 %i.ao, %i.an
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [56 x i8], ptr %i.z, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 24
  %.val.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !214
  tail call fastcc void @_ZNSt8_Rb_treeIN12_GLOBAL__N_19ImmediateESt4pairIKS1_PKN4llvm4SCEVEESt10_Select1stIS8_ENS0_23KeyOrderTargetImmediateESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef %.val.i.i.i)
  %i.at = add i32 %.0.i7.i.i, -1
  %i.au = and i32 %i.at, %.0.i7.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.au, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.a, !llvm.loop !852

._crit_edge.i.i:                                  ; preds = %bb.a, %.lr.ph11.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.ak
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E10destroyAllEv.exit.i, label %.lr.ph11.i.i, !llvm.loop !853

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %i.av = mul nuw nsw i64 %i.ai, 56
  %i.aw = lshr i64 %i.aj, 3
  %i.ax = and i64 %i.aw, 1073741820
  %i.ay = add nuw nsw i64 %i.ax, %i.av
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.z, i64 noundef %i.ay, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES3_NS5_23KeyOrderTargetImmediateESaISt4pairIKS6_S3_EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES3_NS5_23KeyOrderTargetImmediateESaISt4pairIKS6_S3_EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES3_NS5_23KeyOrderTargetImmediateESaISt4pairIKS6_S3_EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEC2EjNS_12DenseMapBaseISI_S3_SC_SE_SH_E16ExactBucketCountE.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E10destroyAllEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E8moveFromERSJ_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #9 align 2 {
bb.a:
  %.val11 = load ptr, ptr %1, align 8, !tbaa !819
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !831
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %.val = load i32, ptr %i.b, align 4, !tbaa !832 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.c, align 8, !tbaa !831 ; 3 uses
  %.val12 = load ptr, ptr %0, align 8, !tbaa !819
  %i.d = getelementptr i8, ptr %0, i64 20
  %.val7 = load i32, ptr %i.d, align 4, !tbaa !832
  %i.e = add i32 %.val7, -1                       ; 2 uses
  %i.f = zext i32 %.val to i64
  %i.g = add nuw nsw i64 %i.f, 31
  %i.h = lshr i64 %i.g, 5                         ; 2 uses
  %.not.i22 = icmp eq i64 %i.h, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES7_NS9_23KeyOrderTargetImmediateESaISt4pairIKSA_S7_EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SG_EEEES7_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val8, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !478  ; 2 uses
  %.not11.i20 = icmp eq i32 %i.j, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.k = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E8moveFromERSJ_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.j, %.lr.ph ], [ %i.bj, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E8moveFromERSJ_ENKUljE_clEj.exit ] ; 3 uses
  %i.l = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.m = or disjoint i32 %i.l, %i.k
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %.val11, i64 %i.n ; 6 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !456  ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = mul i64 %i.q, -4658895280553007687       ; 2 uses
  %i.s = lshr i64 %i.r, 31
  %i.t = xor i64 %i.s, %i.r
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.e, %i.u                       ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = lshr i64 %i.w, 5                         ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !478  ; 2 uses
  %i.aa = and i32 %i.v, 31                        ; 2 uses
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.v, %bb.b ]
  %i.ad = add i32 %.016.i, 1
  %i.ae = and i32 %i.ad, %i.e                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = lshr i64 %i.af, 5                       ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !478 ; 2 uses
  %i.aj = and i32 %i.ae, 31                       ; 2 uses
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1585

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.x, %bb.b ], [ %i.ag, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.w, %bb.b ], [ %i.af, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.z, %bb.b ], [ %i.ai, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.aa, %bb.b ], [ %i.aj, %.lr.ph.i ]
  %i.am = getelementptr inbounds nuw [56 x i8], ptr %.val12, i64 %.lcssa13.i ; 9 uses
  store ptr %i.p, ptr %i.am, align 8, !tbaa !456
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !214 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !213
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !214
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.aw = load <2 x ptr>, ptr %i.at, align 8, !tbaa !837
  store <2 x ptr> %i.aw, ptr %i.au, align 8, !tbaa !837
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.an, ptr %i.ax, align 8, !tbaa !1586
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !217
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !217
  store ptr null, ptr %i.ao, align 8, !tbaa !214
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !215
  store ptr %i.aq, ptr %i.av, align 8, !tbaa !216
  store i64 0, ptr %i.ay, align 8, !tbaa !217
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E8moveFromERSJ_ENKUljE_clEj.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr null, ptr %i.bb, align 8, !tbaa !214
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr %i.an, ptr %i.bc, align 8, !tbaa !215
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store ptr %i.an, ptr %i.bd, align 8, !tbaa !216
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store i64 0, ptr %i.be, align 8, !tbaa !217
  %.val.pre.i = load ptr, ptr %i.ao, align 8, !tbaa !214
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E8moveFromERSJ_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E8moveFromERSJ_ENKUljE_clEj.exit: ; preds = %bb.c, %bb.d
  %.val.i = phi ptr [ %.val.pre.i, %bb.d ], [ null, %bb.c ]
  %.sink.i.i.i.i.i = phi i32 [ 0, %bb.d ], [ %i.ar, %bb.c ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %.lcssa15.i
  store i32 %.sink.i.i.i.i.i, ptr %i.an, align 8, !tbaa !213
  %i.bg = shl nuw i32 1, %.lcssa.i
  %i.bh = or i32 %i.bg, %.lcssa11.i
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !478
  tail call fastcc void @_ZNSt8_Rb_treeIN12_GLOBAL__N_19ImmediateESt4pairIKS1_PKN4llvm4SCEVEESt10_Select1stIS8_ENS0_23KeyOrderTargetImmediateESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef %.val.i)
  %i.bi = add i32 %.0.i21, -1
  %i.bj = and i32 %i.bi, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bj, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1587

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E8moveFromERSJ_ENKUljE_clEj.exit, %.lr.ph25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES7_NS9_23KeyOrderTargetImmediateESaISt4pairIKSA_S7_EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SG_EEEES7_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph25, !llvm.loop !1588

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES7_NS9_23KeyOrderTargetImmediateESaISt4pairIKSA_S7_EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SG_EEEES7_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.b, align 4, !tbaa !832
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES7_NS9_23KeyOrderTargetImmediateESaISt4pairIKSA_S7_EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SG_EEEES7_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES7_NS9_23KeyOrderTargetImmediateESaISt4pairIKSA_S7_EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SG_EEEES7_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES7_NS9_23KeyOrderTargetImmediateESaISt4pairIKSA_S7_EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SG_EEEES7_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bk = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES7_NS9_23KeyOrderTargetImmediateESaISt4pairIKSA_S7_EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SG_EEEES7_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit ], [ %.val, %bb.a ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load i32, ptr %i.bl, align 8, !tbaa !836
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.val10, ptr %i.bm, align 8, !tbaa !836
  %i.bn = icmp eq i32 %i.bk, 0
  br i1 %i.bn, label %_ZN4llvm8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES3_NS5_23KeyOrderTargetImmediateESaISt4pairIKS6_S3_EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEE4killEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES7_NS9_23KeyOrderTargetImmediateESaISt4pairIKSA_S7_EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SG_EEEES7_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit
  %i.bo = load ptr, ptr %1, align 8, !tbaa !819
  %i.bp = zext i32 %i.bk to i64                   ; 2 uses
  %i.bq = mul nuw nsw i64 %i.bp, 56
  %i.br = add nuw nsw i64 %i.bp, 31
  %i.bs = lshr i64 %i.br, 3
  %i.bt = and i64 %i.bs, 1073741820
  %i.bu = add nuw nsw i64 %i.bt, %i.bq
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bo, i64 noundef %i.bu, i64 noundef 8) #23
  store i32 0, ptr %i.b, align 4, !tbaa !832
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES3_NS5_23KeyOrderTargetImmediateESaISt4pairIKS6_S3_EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES3_NS5_23KeyOrderTargetImmediateESaISt4pairIKS6_S3_EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES7_NS9_23KeyOrderTargetImmediateESaISt4pairIKSA_S7_EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SG_EEEES7_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt8_Rb_treeIN12_GLOBAL__N_19ImmediateESt4pairIKS1_PKN4llvm4SCEVEESt10_Select1stIS8_ENS0_23KeyOrderTargetImmediateESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef %0) unnamed_addr #3 align 2 {
bb.a:
  %.not1 = icmp eq ptr %0, null
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02 = phi ptr [ %.0.val6, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr i8, ptr %.02, i64 24
  %.0.val = load ptr, ptr %i.a, align 8, !tbaa !757
  tail call fastcc void @_ZNSt8_Rb_treeIN12_GLOBAL__N_19ImmediateESt4pairIKS1_PKN4llvm4SCEVEESt10_Select1stIS8_ENS0_23KeyOrderTargetImmediateESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef %.0.val)
  %i.b = getelementptr i8, ptr %.02, i64 16
  %.0.val6 = load ptr, ptr %i.b, align 8, !tbaa !758 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.02, i64 noundef 56) #25
  %.not = icmp eq ptr %.0.val6, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1589

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !874, !noalias !1590 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !882, !noalias !1590 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !883, !noalias !1590 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !456    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !478
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !625

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !456
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %bb.c, !prof !166

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !478
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !626, !llvm.loop !884

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1595
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !885
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit, label %bb.d, !prof !166

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1595
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !882
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !874
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !478
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !478
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !885
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !456
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !456
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 1, ptr %i.bi, align 8, !tbaa !479
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !874, !noalias !1596 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !882, !noalias !1596 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !883, !noalias !1596 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !456    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !478
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !625

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !456
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !166

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !478
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !626, !llvm.loop !884

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1595
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.694", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !883
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !874
  store ptr %i.y, ptr %i.q, align 8, !tbaa !882
  store i32 0, ptr %i.p, align 16, !tbaa !885
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1595   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1398 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !49
  store ptr %i.z, ptr %2, align 16, !tbaa !1595
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !49
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !1398
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !478 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !478
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !478
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !478
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !478
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !478 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.bc, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !479 ; 3 uses
  %i.av = trunc i64 %i.au to i1
  br i1 %i.av, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aw = inttoptr i64 %i.au to ptr               ; 3 uses
  %i.ax = icmp eq i64 %i.au, 0
  br i1 %i.ax, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !21 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @free(ptr noundef %i.ay) #23
  br label %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i

_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i:              ; preds = %bb.e, %bb.d
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef 72) #25
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i, %bb.c, %bb.b
  %i.bb = add i32 %.0.i3.i.i, -1
  %i.bc = and i32 %i.bb, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !922

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !923

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !883 ; 2 uses
  %i.bd = icmp eq i32 %.pr.i, 0
  br i1 %i.bd, label %_ZN4llvm8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.i
  %i.be = load ptr, ptr %2, align 16, !tbaa !874
  %i.bf = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bg = shl nuw nsw i64 %i.bf, 4
  %i.bh = add nuw nsw i64 %i.bf, 31
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = and i64 %i.bi, 1073741820
  %i.bk = add nuw nsw i64 %i.bj, %i.bg
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.be, i64 noundef %i.bk, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !874    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !882
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !883  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !882  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !874
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !883
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !478  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !456  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !478 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !478 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !1601

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !456
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !479
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !479
  store i64 1, ptr %i.av, align 8, !tbaa !479
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !478
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1602

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1603

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !883
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !885
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !885
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !883
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(68) ptr @_ZN4llvm9BitVectoroRERKS0_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !899  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !899  ; 6 uses
  %i.e = icmp ult i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN4llvm9BitVector6resizeEjb.exit

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.b, 63                         ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i, label %bb.c

._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i: ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !50 ; 2 uses
  %.pre6.i = zext i32 %.pre.i to i64
  br label %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = zext nneg i32 %i.f to i64
  %i.h = shl nsw i64 -1, %i.g
  %i.i = xor i64 %i.h, -1
  %i.j = load ptr, ptr %0, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !50   ; 2 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !157
  %i.q = and i64 %i.p, %i.i
  store i64 %i.q, ptr %i.o, align 8, !tbaa !157
  br label %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i

_ZN4llvm9BitVector15set_unused_bitsEb.exit.i:     ; preds = %bb.c, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre6.i, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.r = phi i32 [ %.pre.i, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i ], [ %i.l, %bb.c ] ; 4 uses
  store i32 %i.d, ptr %i.a, align 8, !tbaa !899
  %i.s = add i32 %i.d, 63
  %i.t = lshr i32 %i.s, 6                         ; 5 uses
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = icmp eq i32 %i.t, %i.r
  br i1 %i.w, label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i
  %i.x = icmp ult i32 %i.t, %i.r
  br i1 %i.x, label %.sink.split.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = sub nuw nsw i64 %i.u, %.pre-phi.i        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !51
  %.not.i.i.i.i.i = icmp ugt i32 %i.t, %i.aa
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i, !prof !167

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull %i.ab, i64 noundef %i.u, i64 noundef 8) #23
  %.pre.i.i.i = load i32, ptr %i.v, align 8, !tbaa !50 ; 2 uses
  %.pre.i.i = zext i32 %.pre.i.i.i to i64
  %.pre4.pre.i.pre = load i32, ptr %i.a, align 8, !tbaa !899
  br label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.pre4.pre.i = phi i32 [ %i.d, %bb.e ], [ %.pre4.pre.i.pre, %bb.f ]
  %.pre-phi.i.i = phi i64 [ %.pre-phi.i, %bb.e ], [ %.pre.i.i, %bb.f ]
  %i.ac = phi i32 [ %i.r, %bb.e ], [ %.pre.i.i.i, %bb.f ]
  %i.ad = load ptr, ptr %0, align 8, !tbaa !21
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.pre-phi.i.i
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !157
  %i.af = trunc nuw nsw i64 %i.y to i32
  %i.ag = add i32 %i.ac, %i.af
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i, %bb.d
  %.pre4.i = phi i32 [ %.pre4.pre.i, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i ], [ %i.d, %bb.d ]
  %.sink.i.i = phi i32 [ %i.ag, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i ], [ %i.t, %bb.d ] ; 2 uses
  store i32 %.sink.i.i, ptr %i.v, align 8, !tbaa !50
  br label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i

_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i:    ; preds = %.sink.split.i.i, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i
  %i.ah = phi i32 [ %i.r, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i ], [ %.sink.i.i, %.sink.split.i.i ]
  %i.ai = phi i32 [ %i.d, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i ], [ %.pre4.i, %.sink.split.i.i ]
  %i.aj = and i32 %i.ai, 63                       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i, label %_ZN4llvm9BitVector6resizeEjb.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nsw i64 -1, %i.ak
  %i.am = xor i64 %i.al, -1
  %i.an = load ptr, ptr %0, align 8, !tbaa !21
  %i.ao = zext i32 %i.ah to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !157
  %i.as = and i64 %i.ar, %i.am
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !157
  br label %_ZN4llvm9BitVector6resizeEjb.exit

_ZN4llvm9BitVector6resizeEjb.exit:                ; preds = %bb.g, %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i, %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !50 ; 3 uses
  %.not9 = icmp eq i32 %i.au, 0
end_hunk_14
begin_hunk_15_@_ZN4llvm9BitVectoroRERKS0_:bb.a
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ay = shl nuw nsw i64 %i.ax, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aw, i64 %i.ay
  %scevgep19 = getelementptr i8, ptr %i.av, i64 %i.ay
  %bound0 = icmp ult ptr %i.aw, %scevgep19
  %bound1 = icmp ult ptr %i.av, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ax, 4294967292              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load = load <2 x i64>, ptr %i.az, align 8, !tbaa !157, !alias.scope !1604
  %wide.load20 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !157, !alias.scope !1604
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %wide.load21 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !157, !alias.scope !1607, !noalias !1604
  %wide.load22 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !157, !alias.scope !1607, !noalias !1604
  %i.bd = or <2 x i64> %wide.load21, %wide.load
  %i.be = or <2 x i64> %wide.load22, %wide.load20
  store <2 x i64> %i.bd, ptr %i.bb, align 8, !tbaa !157, !alias.scope !1607, !noalias !1604
  store <2 x i64> %i.be, ptr %i.bc, align 8, !tbaa !157, !alias.scope !1607, !noalias !1604
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !1609

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ax
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.prol
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !157
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.prol ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !157
  %i.bk = or i64 %i.bj, %i.bh
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !157
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1610

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bl = sub nsw i64 %indvars.iv.ph, %i.ax
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN4llvm9BitVector6resizeEjb.exit
  ret ptr %0

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !157
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !157
  %i.br = or i64 %i.bq, %i.bo
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !157
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !157
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !157
  %i.bw = or i64 %i.bv, %i.bt
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !157
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next.1
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !157
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next.1 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !157
  %i.cb = or i64 %i.ca, %i.by
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !157
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next.2
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !157
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next.2 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !157
  %i.cg = or i64 %i.cf, %i.cd
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !157
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not.3 = icmp eq i64 %indvars.iv.next.3, %i.ax
  br i1 %.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !1611
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm23SmallVectorTemplateBaseISt4pairImN12_GLOBAL__N_19ImmediateEELb1EE15growAndPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #9 align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.560", align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 24) #23
  %.val = load ptr, ptr %0, align 8, !tbaa !21
  %.val2 = load i32, ptr %i.a, align 8, !tbaa !50
  %i.f = zext i32 %.val2 to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.h = load i32, ptr %i.a, align 8, !tbaa !50
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_18WorkItemELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #9 align 2 {
bb.a:
  %2 = alloca %"struct.(anonymous namespace)::WorkItem", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 32) #23
  %.val = load ptr, ptr %0, align 8, !tbaa !21
  %.val2 = load i32, ptr %i.a, align 8, !tbaa !50
  %i.f = zext i32 %.val2 to i64
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.h = load i32, ptr %i.a, align 8, !tbaa !50
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !885  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE18planShrinkAndClearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 64)
  br label %_ZNK4llvm8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE18planShrinkAndClearEv.exit

_ZNK4llvm8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE18planShrinkAndClearEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.a ], [ %.sroa.speculated.i, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !883  ; 3 uses
  %.not = icmp eq i32 %.0.i, %i.h                 ; 2 uses
  %spec.select10.i = select i1 %.not, i32 0, i32 %.0.i
  %.sroa.39.0.insert.ext.i = zext i32 %spec.select10.i to i64 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %_ZNK4llvm8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE18planShrinkAndClearEv.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !874
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !882
  %i.m = zext i32 %i.h to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !478  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.q, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.r = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.af, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.s = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !479  ; 3 uses
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = inttoptr i64 %i.x to ptr                 ; 3 uses
  %i.aa = icmp eq i64 %i.x, 0
  br i1 %i.aa, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !21  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN4llvm9BitVectorD2Ev.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef %i.ab) #23
  br label %_ZN4llvm9BitVectorD2Ev.exit.i.i.i

_ZN4llvm9BitVectorD2Ev.exit.i.i.i:                ; preds = %bb.f, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 72) #25
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %_ZN4llvm9BitVectorD2Ev.exit.i.i.i, %bb.d, %bb.c
  %i.ae = add i32 %.0.i3.i, -1
  %i.af = and i32 %i.ae, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.af, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.c, !llvm.loop !922

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !923

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit: ; preds = %._crit_edge.i, %_ZNK4llvm8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE18planShrinkAndClearEv.exit
  br i1 %.not, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !885
  %i.ag = load i32, ptr %i.g, align 4, !tbaa !883 ; 2 uses
  %.not.i3 = icmp eq i32 %i.ag, 0
  br i1 %.not.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E9initEmptyEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !882
  %i.aj = zext i32 %i.ag to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ai, i8 0, i64 %i.am, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E9initEmptyEv.exit

bb.i:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit
  %i.an = load i32, ptr %i.g, align 4, !tbaa !883 ; 2 uses
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_ZN4llvm8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE17deallocateBucketsEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %0, align 8, !tbaa !874
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = shl nuw nsw i64 %i.aq, 4
  %i.as = add nuw nsw i64 %i.aq, 31
  %i.at = lshr i64 %i.as, 3
  %i.au = and i64 %i.at, 1073741820
  %i.av = add nuw nsw i64 %i.au, %i.ar
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ap, i64 noundef %i.av, i64 noundef 8) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE17deallocateBucketsEv.exit: ; preds = %bb.i, %bb.j
  store i32 %.0.i, ptr %i.g, align 4, !tbaa !883
  %.not.i4 = icmp eq i32 %.0.i, 0
  br i1 %.not.i4, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE17deallocateBucketsEv.exit
  %i.aw = shl nuw nsw i64 %.sroa.39.0.insert.ext.i, 4
  %i.ax = add nuw nsw i64 %.sroa.39.0.insert.ext.i, 31
  %i.ay = lshr i64 %i.ax, 3
  %i.az = and i64 %i.ay, 1073741820
  %i.ba = add nuw nsw i64 %i.az, %i.aw
  %i.bb = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.ba, i64 noundef 8) #23 ; 2 uses
  %i.bc = load i32, ptr %i.g, align 4, !tbaa !883 ; 2 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be ; 2 uses
  store ptr %i.bb, ptr %0, align 8, !tbaa !874
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !882
  store i32 0, ptr %i.a, align 8, !tbaa !885
  %.not.i.i5 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i5, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E9initEmptyEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = add nuw nsw i64 %i.bd, 31
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = and i64 %i.bi, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bf, i8 0, i64 %i.bj, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E9initEmptyEv.exit

bb.m:                                             ; preds = %_ZN4llvm8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E9initEmptyEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_14SmallBitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E9initEmptyEv.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.h, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt8_Rb_treeISt4pairImN12_GLOBAL__N_19ImmediateEES3_St9_IdentityIS3_ENS1_25KeyOrderSizeTAndImmediateESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef %0) unnamed_addr #3 align 2 {
bb.a:
  %.not1 = icmp eq ptr %0, null
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02 = phi ptr [ %.0.val6, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr i8, ptr %.02, i64 24
  %.0.val = load ptr, ptr %i.a, align 8, !tbaa !757
  tail call fastcc void @_ZNSt8_Rb_treeISt4pairImN12_GLOBAL__N_19ImmediateEES3_St9_IdentityIS3_ENS1_25KeyOrderSizeTAndImmediateESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef %.0.val)
  %i.b = getelementptr i8, ptr %.02, i64 16
  %.0.val6 = load ptr, ptr %i.b, align 8, !tbaa !758 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.02, i64 noundef 56) #25
  %.not = icmp eq ptr %.0.val6, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1612

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

declare void @_ZN4llvm5APInt19flipAllBitsSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #11

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntpLEm(ptr noundef nonnull align 8 dereferenceable(12), i64 noundef) local_unnamed_addr #4

declare void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_16LSRUse13RecomputeRegsEmRNS_13RegUseTrackerE(ptr noundef nonnull align 8 dereferenceable(2096) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallPtrSet.578", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2040 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2064
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvjS3_OS0_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.a) #23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 5 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !14, !range !18, !noundef !19
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2052
  %i.h = load i32, ptr %i.g, align 4, !tbaa !45
  %i.i = shl i32 %i.h, 2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.k = load i32, ptr %i.j, align 8, !tbaa !44   ; 3 uses
  %i.l = icmp ult i32 %i.i, %i.k
  %i.m = icmp ugt i32 %i.k, 32
  %or.cond.i = and i1 %i.l, %i.m
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm19SmallPtrSetImplBase16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(17) %i.a) #23
  br label %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.o = zext i32 %i.k to i64
  %i.p = shl nuw nsw i64 %i.o, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 -1, i64 %i.p, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2052
  store i32 0, ptr %i.q, align 4, !tbaa !45
  br label %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit

_ZN4llvm19SmallPtrSetImplBase5clearEv.exit:       ; preds = %bb.c, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 680
  %.val = load ptr, ptr %i.r, align 8, !tbaa !21  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 688
  %.val19 = load i32, ptr %i.s, align 8, !tbaa !50 ; 2 uses
  %i.t = zext i32 %.val19 to i64
  %.idx = mul nuw nsw i64 %i.t, 112
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  %.not50 = icmp eq i32 %.val19, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph
end_hunk_15
begin_hunk_16_@_ZN12_GLOBAL__N_16LSRUse13RecomputeRegsEmRNS_13RegUseTrackerE:bb.a

bb.o:                                             ; preds = %.lr.ph54, %_ZN4llvm19SmallPtrSetIteratorIPKNS_4SCEVEEppEv.exit
  %.sroa.036.053 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph54 ], [ %.sroa.036.2, %_ZN4llvm19SmallPtrSetIteratorIPKNS_4SCEVEEppEv.exit ] ; 2 uses
  %i.ch = load ptr, ptr %.sroa.036.053, align 8, !tbaa !49 ; 4 uses
  %i.ci = load i8, ptr %i.d, align 8, !tbaa !14, !range !18, !noundef !19
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.p, label %_ZNK4llvm15SmallPtrSetImplIPKNS_4SCEVEE5countES3_.exit

bb.p:                                             ; preds = %bb.o
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !20  ; 2 uses
  %i.cl = load i32, ptr %i.ak, align 4, !tbaa !45 ; 2 uses
  %i.cm = zext i32 %i.cl to i64
  %.idx.i.i31 = shl nuw nsw i64 %i.cm, 3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx.i.i31
  %.not17.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not17.i.i, label %_ZNK4llvm15SmallPtrSetImplIPKNS_4SCEVEE5countES3_.exit.thread, label %.lr.ph.i.i32

bb.q:                                             ; preds = %.lr.ph.i.i32
  %i.co = getelementptr inbounds nuw i8, ptr %.01218.i.i, i64 8 ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.co, %i.cn
  br i1 %.not.i.i34, label %_ZNK4llvm15SmallPtrSetImplIPKNS_4SCEVEE5countES3_.exit.thread, label %.lr.ph.i.i32

.lr.ph.i.i32:                                     ; preds = %bb.p, %bb.q
  %.01218.i.i = phi ptr [ %i.co, %bb.q ], [ %i.ck, %bb.p ] ; 2 uses
  %i.cp = load ptr, ptr %.01218.i.i, align 8, !tbaa !49
  %.not15.i.i33 = icmp eq ptr %i.cp, %i.ch
  br i1 %.not15.i.i33, label %_ZN12_GLOBAL__N_113RegUseTracker12dropRegisterEPKN4llvm4SCEVEm.exit, label %bb.q

_ZNK4llvm15SmallPtrSetImplIPKNS_4SCEVEE5countES3_.exit: ; preds = %bb.o
  %i.cq = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.a, ptr noundef %i.ch) #23
  %.not47 = icmp eq ptr %i.cq, null
  br i1 %.not47, label %_ZNK4llvm15SmallPtrSetImplIPKNS_4SCEVEE5countES3_.exit.thread, label %_ZN12_GLOBAL__N_113RegUseTracker12dropRegisterEPKN4llvm4SCEVEm.exit

_ZNK4llvm15SmallPtrSetImplIPKNS_4SCEVEE5countES3_.exit.thread: ; preds = %bb.q, %bb.p, %_ZNK4llvm15SmallPtrSetImplIPKNS_4SCEVEE5countES3_.exit
  %i.cr = load ptr, ptr %2, align 8, !tbaa !476, !noalias !1619 ; 2 uses
  %i.cs = load ptr, ptr %i.al, align 8, !tbaa !477, !noalias !1619 ; 2 uses
  %i.ct = load i32, ptr %i.am, align 4, !tbaa !475, !noalias !1619 ; 3 uses
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %.loopexit.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNK4llvm15SmallPtrSetImplIPKNS_4SCEVEE5countES3_.exit.thread
  %i.cv = add i32 %i.ct, -1                       ; 2 uses
  %i.cw = ptrtoint ptr %i.ch to i64
  %i.cx = mul i64 %i.cw, -4658895280553007687     ; 2 uses
  %i.cy = lshr i64 %i.cx, 31
  %i.cz = xor i64 %i.cy, %i.cx
  %i.da = trunc i64 %i.cz to i32
  %i.db = and i32 %i.cv, %i.da                    ; 3 uses
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = lshr i64 %i.dc, 5
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !478, !noalias !1628
  %i.dg = and i32 %i.db, 31
  %i.dh = lshr i32 %i.df, %i.dg
  %i.di = trunc i32 %i.dh to i1
  br i1 %i.di, label %.lr.ph.i.i.i.i.i35, label %.loopexit.i.i.i, !prof !625

.lr.ph.i.i.i.i.i35:                               ; preds = %bb.r, %bb.s
  %i.dj = phi i64 [ %i.dp, %bb.s ], [ %i.dc, %bb.r ] ; 2 uses
  %.03.i.i.i.i.i = phi i32 [ %i.do, %bb.s ], [ %i.db, %bb.r ]
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !456, !noalias !1628
  %i.dm = icmp eq ptr %i.ch, %i.dl
  br i1 %i.dm, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.i, label %bb.s, !prof !166

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i35
  %i.dn = add nuw i32 %.03.i.i.i.i.i, 1
  %i.do = and i32 %i.dn, %i.cv                    ; 3 uses
  %i.dp = zext i32 %i.do to i64                   ; 2 uses
  %i.dq = lshr i64 %i.dp, 5
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !478, !noalias !1628
  %i.dt = and i32 %i.do, 31
  %i.du = lshr i32 %i.ds, %i.dt
  %i.dv = trunc i32 %i.du to i1
  br i1 %i.dv, label %.lr.ph.i.i.i.i.i35, label %.loopexit.i.i.i, !prof !626

.loopexit.i.i.i:                                  ; preds = %bb.s, %bb.r, %_ZNK4llvm15SmallPtrSetImplIPKNS_4SCEVEE5countES3_.exit.thread
  %i.dw = zext i32 %i.ct to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.i: ; preds = %.lr.ph.i.i.i.i.i35, %.loopexit.i.i.i
  %i.dx = phi i64 [ %i.dw, %.loopexit.i.i.i ], [ %i.dj, %.lr.ph.i.i.i.i.i35 ]
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !479 ; 4 uses
  %i.eb = trunc i64 %i.ea to i1
  br i1 %i.eb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.i
  %i.ec = lshr i64 %i.ea, 58
  %i.ed = shl nsw i64 -1, %i.ec
  %i.ee = or i64 %i.ed, %i.at
  %i.ef = xor i64 %i.ee, -1
  %i.eg = shl nuw i64 %i.ef, 1
  %i.eh = or i64 %i.eg, -288230376151711744
  %i.ei = and i64 %i.eh, %i.ea
  %i.ej = or disjoint i64 %i.ei, 1
  store i64 %i.ej, ptr %i.dz, align 8, !tbaa !479
  br label %_ZN12_GLOBAL__N_113RegUseTracker12dropRegisterEPKN4llvm4SCEVEm.exit

bb.u:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.i
  %i.ek = inttoptr i64 %i.ea to ptr
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !21
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ar ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !157
  %i.eo = and i64 %i.en, %i.ap
  store i64 %i.eo, ptr %i.em, align 8, !tbaa !157
  br label %_ZN12_GLOBAL__N_113RegUseTracker12dropRegisterEPKN4llvm4SCEVEm.exit

_ZN12_GLOBAL__N_113RegUseTracker12dropRegisterEPKN4llvm4SCEVEm.exit: ; preds = %.lr.ph.i.i32, %bb.u, %bb.t, %_ZNK4llvm15SmallPtrSetImplIPKNS_4SCEVEE5countES3_.exit
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.036.053, i64 8 ; 3 uses
  %.not1.i.i.i = icmp eq ptr %i.ep, %i.af
  br i1 %.not1.i.i.i, label %_ZN4llvm19SmallPtrSetIteratorIPKNS_4SCEVEEppEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN12_GLOBAL__N_113RegUseTracker12dropRegisterEPKN4llvm4SCEVEm.exit, %bb.v
  %.sroa.036.1 = phi ptr [ %i.es, %bb.v ], [ %i.ep, %_ZN12_GLOBAL__N_113RegUseTracker12dropRegisterEPKN4llvm4SCEVEm.exit ] ; 3 uses
  %i.eq = load ptr, ptr %.sroa.036.1, align 8, !tbaa !49
  %i.er = icmp eq ptr %i.eq, inttoptr (i64 -1 to ptr)
  br i1 %i.er, label %bb.v, label %_ZN4llvm19SmallPtrSetIteratorIPKNS_4SCEVEEppEv.exit

bb.v:                                             ; preds = %.lr.ph.i.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.036.1, i64 8 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.es, %i.af
  br i1 %.not.i.i.i, label %_ZN4llvm19SmallPtrSetIteratorIPKNS_4SCEVEEppEv.exit, label %.lr.ph.i.i.i, !llvm.loop !589

_ZN4llvm19SmallPtrSetIteratorIPKNS_4SCEVEEppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.v, %_ZN12_GLOBAL__N_113RegUseTracker12dropRegisterEPKN4llvm4SCEVEm.exit
  %.sroa.036.2 = phi ptr [ %i.ep, %_ZN12_GLOBAL__N_113RegUseTracker12dropRegisterEPKN4llvm4SCEVEm.exit ], [ %.sroa.036.1, %.lr.ph.i.i.i ], [ %i.es, %bb.v ] ; 2 uses
  %.not46 = icmp eq ptr %.sroa.036.2, %i.aj
  br i1 %.not46, label %._crit_edge55.loopexit, label %bb.o
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.776", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !948
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 56                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !951
  store ptr %i.y, ptr %i.q, align 8, !tbaa !952
  store i32 0, ptr %i.p, align 16, !tbaa !974
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1629   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1398 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !49
  store ptr %i.z, ptr %2, align 16, !tbaa !1629
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !49
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !1398
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !478 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !478
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !478
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !478
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !478
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !478 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [56 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !21 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.at) #23
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.aw = add i32 %.0.i3.i.i, -1
  %i.ax = and i32 %i.aw, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !953

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !954

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !948 ; 2 uses
  %i.ay = icmp eq i32 %.pr.i, 0
  br i1 %i.ay, label %_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEv.exit.i
  %i.az = load ptr, ptr %2, align 16, !tbaa !951
  %i.ba = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bb = mul nuw nsw i64 %i.ba, 56
  %i.bc = add nuw nsw i64 %i.ba, 31
  %i.bd = lshr i64 %i.bc, 3
  %i.be = and i64 %i.bd, 1073741820
  %i.bf = add nuw nsw i64 %i.be, %i.bb
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.az, i64 noundef %i.bf, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEED2Ev.exit

_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !951
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !952
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !948  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !952  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !951
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !948
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i21 = icmp eq i64 %i.n, 0
  br i1 %.not.i21, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_mEEEES9_mSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !478  ; 2 uses
  %.not11.i19 = icmp eq i32 %i.p, 0
  br i1 %.not11.i19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph24
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i20 = phi i32 [ %i.p, %.lr.ph ], [ %i.bk, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i20, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [56 x i8], ptr %i.a, i64 %i.t ; 11 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !50
  %i.y = zext i32 %i.x to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.y, 3
  %i.z = tail call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef %i.v, i64 noundef %.idx.i.i.i) #23
  %i.aa = trunc i64 %i.z to i32
  %i.ab = xor i32 %i.aa, -313160499
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.ab, %bb.b ], [ %i.aj, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.ac = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !478
  %i.ag = and i32 %.0.i7, 31                      ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  %i.aj = add i32 %.0.i7, 1
  br i1 %i.ai, label %bb.c, label %bb.d, !llvm.loop !1630

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad ; 2 uses
  %i.al = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %i.ac ; 9 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  store i32 0, ptr %i.an, align 8, !tbaa !50
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 12 ; 2 uses
  store i32 4, ptr %i.ao, align 4, !tbaa !51
  %i.ap = load i32, ptr %i.w, align 8, !tbaa !50  ; 6 uses
  %.not.i.i.i = icmp eq i32 %i.ap, 0
  %i.aq = icmp eq ptr %i.al, %i.u
  %or.cond = or i1 %i.aq, %.not.i.i.i
  %.pre29 = load ptr, ptr %i.u, align 8, !tbaa !21 ; 4 uses
  br i1 %or.cond, label %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EEC2EOS4_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.as = icmp eq ptr %.pre29, %i.ar
  br i1 %i.as, label %bb.f, label %_ZN4llvm15SmallVectorImplIPKNS_4SCEVEE12assignRemoteEOS4_.exit.i

_ZN4llvm15SmallVectorImplIPKNS_4SCEVEE12assignRemoteEOS4_.exit.i: ; preds = %bb.e
  store ptr %.pre29, ptr %i.al, align 8, !tbaa !21
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !50
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 12 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !51
  store i32 %i.au, ptr %i.ao, align 4, !tbaa !51
  store ptr %i.ar, ptr %i.u, align 8, !tbaa !21
  store i32 0, ptr %i.at, align 4, !tbaa !51
  br label %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EEC2EOS4_.exit.i.sink.split

bb.f:                                             ; preds = %bb.e
  %i.av = icmp ugt i32 %i.ap, 4
  br i1 %i.av, label %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i, label %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i.thread

_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i: ; preds = %bb.f
  %i.aw = zext i32 %i.ap to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr noundef nonnull %i.am, i64 noundef %i.aw, i64 noundef 8) #23
  %.pre = load i32, ptr %i.w, align 8, !tbaa !50  ; 2 uses
  %.pre28.pre31.pre = load ptr, ptr %i.u, align 8, !tbaa !21 ; 2 uses
  %.not.i.i.i10 = icmp eq i32 %.pre, 0
  br i1 %.not.i.i.i10, label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i, label %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i.thread

_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i.thread: ; preds = %bb.f, %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i
  %i.ax = phi i32 [ %.pre, %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i ], [ %i.ap, %bb.f ]
  %.pre28.pre3145 = phi ptr [ %.pre28.pre31.pre, %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i ], [ %.pre29, %bb.f ]
  %i.ay = zext i32 %i.ax to i64
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !21
  %gepdiff.i = shl nuw nsw i64 %i.ay, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 8 %.pre28.pre3145, i64 %gepdiff.i, i1 false)
  %.pre28.pre = load ptr, ptr %i.u, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i: ; preds = %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i.thread, %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i
  %.pre28 = phi ptr [ %.pre28.pre, %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i.thread ], [ %.pre28.pre31.pre, %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i ]
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !50
  br label %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EEC2EOS4_.exit.i.sink.split

_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EEC2EOS4_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplIPKNS_4SCEVEE12assignRemoteEOS4_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i
  %.ph = phi ptr [ %i.ar, %_ZN4llvm15SmallVectorImplIPKNS_4SCEVEE12assignRemoteEOS4_.exit.i ], [ %.pre28, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i ]
  store i32 0, ptr %i.w, align 8, !tbaa !50
  br label %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EEC2EOS4_.exit.i

_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EEC2EOS4_.exit.i: ; preds = %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EEC2EOS4_.exit.i.sink.split, %bb.d
  %i.ba = phi ptr [ %.pre29, %bb.d ], [ %.ph, %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EEC2EOS4_.exit.i.sink.split ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !157
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !157
  %i.be = shl nuw i32 1, %i.ag
  %i.bf = load i32, ptr %i.ak, align 4, !tbaa !478
  %i.bg = or i32 %i.bf, %i.be
  store i32 %i.bg, ptr %i.ak, align 4, !tbaa !478
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bi = icmp eq ptr %i.ba, %i.bh
  br i1 %i.bi, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_ENKUljE_clEj.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EEC2EOS4_.exit.i
  tail call void @free(ptr noundef %i.ba) #23
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorIPKNS_4SCEVELj4EEC2EOS4_.exit.i, %bb.g
  %i.bj = add i32 %.0.i20, -1
  %i.bk = and i32 %i.bj, %.0.i20                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bk, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1631

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_mEEEES9_mSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph24, !llvm.loop !1632

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_mEEEES9_mSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre30 = load i32, ptr %i.d, align 4, !tbaa !948
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_mEEEES9_mSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_mEEEES9_mSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_mEEEES9_mSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bl = phi i32 [ %.pre30, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_mEEEES9_mSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !974
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !974
  %i.bp = icmp eq i32 %i.bl, 0
  br i1 %i.bp, label %_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEE4killEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_mEEEES9_mSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bq = load ptr, ptr %1, align 8, !tbaa !951
  %i.br = zext i32 %i.bl to i64                   ; 2 uses
  %i.bs = mul nuw nsw i64 %i.br, 56
  %i.bt = add nuw nsw i64 %i.br, 31
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = and i64 %i.bu, 1073741820
  %i.bw = add nuw nsw i64 %i.bv, %i.bs
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bq, i64 noundef %i.bw, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !948
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEE4killEv.exit

_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_mEEEES9_mSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.h
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo13isLSRCostLessERKNS0_7LSRCostES3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !974  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEE18planShrinkAndClearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 64)
  br label %_ZNK4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEE18planShrinkAndClearEv.exit

_ZNK4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEE18planShrinkAndClearEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.a ], [ %.sroa.speculated.i, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !948  ; 3 uses
  %.not = icmp eq i32 %.0.i, %i.h                 ; 2 uses
  %spec.select10.i = select i1 %.not, i32 0, i32 %.0.i
  %.sroa.39.0.insert.ext.i = zext i32 %spec.select10.i to i64 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %_ZNK4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEE18planShrinkAndClearEv.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !951
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !952
  %i.m = zext i32 %i.h to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !478  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.q, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.r = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.aa, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.s = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [56 x i8], ptr %i.j, i64 %i.u ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.w) #23
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %bb.c
  %i.z = add i32 %.0.i3.i, -1
  %i.aa = and i32 %i.z, %.0.i3.i                  ; 2 uses
  %.not11.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.c, !llvm.loop !953

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !954

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEv.exit: ; preds = %._crit_edge.i, %_ZNK4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEE18planShrinkAndClearEv.exit
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !974
  %i.ab = load i32, ptr %i.g, align 4, !tbaa !948 ; 2 uses
  %.not.i3 = icmp eq i32 %i.ab, 0
  br i1 %.not.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E9initEmptyEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !952
  %i.ae = zext i32 %i.ab to i64
  %i.af = add nuw nsw i64 %i.ae, 31
  %i.ag = lshr i64 %i.af, 3
  %i.ah = and i64 %i.ag, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ad, i8 0, i64 %i.ah, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E9initEmptyEv.exit

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E10destroyAllEv.exit
  %i.ai = load i32, ptr %i.g, align 4, !tbaa !948 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEE17deallocateBucketsEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %0, align 8, !tbaa !951
  %i.al = zext i32 %i.ai to i64                   ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 56
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ak, i64 noundef %i.aq, i64 noundef 8) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEE17deallocateBucketsEv.exit: ; preds = %bb.g, %bb.h
  store i32 %.0.i, ptr %i.g, align 4, !tbaa !948
  %.not.i4 = icmp eq i32 %.0.i, 0
  br i1 %.not.i4, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEE17deallocateBucketsEv.exit
  %i.ar = mul nuw nsw i64 %.sroa.39.0.insert.ext.i, 56
  %i.as = add nuw nsw i64 %.sroa.39.0.insert.ext.i, 31
  %i.at = lshr i64 %i.as, 3
  %i.au = and i64 %i.at, 1073741820
  %i.av = add nuw nsw i64 %i.au, %i.ar
  %i.aw = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.av, i64 noundef 8) #23 ; 2 uses
  %i.ax = load i32, ptr %i.g, align 4, !tbaa !948 ; 2 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = mul nuw nsw i64 %i.ay, 56
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az ; 2 uses
  store ptr %i.aw, ptr %0, align 8, !tbaa !951
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !952
  store i32 0, ptr %i.a, align 8, !tbaa !974
  %.not.i.i5 = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i5, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E9initEmptyEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = add nuw nsw i64 %i.ay, 31
  %i.bd = lshr i64 %i.bc, 3
  %i.be = and i64 %i.bd, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ba, i8 0, i64 %i.be, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E9initEmptyEv.exit

bb.k:                                             ; preds = %_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E9initEmptyEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E9initEmptyEv.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_111LSRInstance9DeleteUseERNS_6LSRUseEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(35560) %0, ptr noundef nonnull align 8 dereferenceable(2096) %1, i64 noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.(anonymous namespace)::LSRUse", align 16 ; 21 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %.val4 = load ptr, ptr %i.a, align 8, !tbaa !21 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 4 uses
  %.val5 = load i32, ptr %i.b, align 8, !tbaa !50 ; 2 uses
  %i.c = zext i32 %.val5 to i64
  %i.d = getelementptr inbounds nuw [2096 x i8], ptr %.val4, i64 %i.c ; 10 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -2096 ; 5 uses
  %.not = icmp eq ptr %1, %i.e
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load <2 x ptr>, ptr %1, align 8, !tbaa !49
  store ptr null, ptr %1, align 8, !tbaa !1397
  store <2 x ptr> %i.h, ptr %3, align 16, !tbaa !49
  store ptr null, ptr %i.g, align 8, !tbaa !1398
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.m = load <2 x i32>, ptr %i.j, align 8, !tbaa !478
  store i32 0, ptr %i.j, align 8, !tbaa !478
  store <2 x i32> %i.m, ptr %i.i, align 16, !tbaa !478
  store i32 0, ptr %i.l, align 4, !tbaa !478
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, ptr noundef nonnull align 8 dereferenceable(20) %i.o, i64 20, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %i.q, ptr %i.p, align 16, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.r, align 8, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 8, ptr %i.s, align 4, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load i32, ptr %i.t, align 8, !tbaa !50
  %.not.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_18LSRFixupELj8EEC2EOS3_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = call fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_18LSRFixupEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(592) %i.p, ptr noundef nonnull align 8 dereferenceable(592) %i.v) ; 0 uses
  br label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_18LSRFixupELj8EEC2EOS3_.exit.i.i

_ZN4llvm11SmallVectorIN12_GLOBAL__N_18LSRFixupELj8EEC2EOS3_.exit.i.i: ; preds = %bb.c, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 640 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(35) %i.x, ptr noundef nonnull align 8 dereferenceable(35) %i.y, i64 35, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 680 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 696
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 688
  store i32 0, ptr %i.ab, align 16, !tbaa !50
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 692
  store i32 12, ptr %i.ac, align 4, !tbaa !51
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !50
  %.not.i.i7.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i7.i.i, label %_ZN12_GLOBAL__N_16LSRUseaSEOS0_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIN12_GLOBAL__N_18LSRFixupELj8EEC2EOS3_.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.ag = call fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_17FormulaEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(1360) %i.z, ptr noundef nonnull align 8 dereferenceable(1360) %i.af) ; 0 uses
  br label %_ZN12_GLOBAL__N_16LSRUseaSEOS0_.exit.i

_ZN12_GLOBAL__N_16LSRUseaSEOS0_.exit.i:           ; preds = %bb.d, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_18LSRFixupELj8EEC2EOS3_.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 2040 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 2040 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 2064 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 2064 ; 2 uses
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvjS3_OS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef nonnull %i.aj, i32 noundef 4, ptr noundef nonnull %i.ak, ptr noundef nonnull align 8 dereferenceable(56) %i.ai) #23
  %i.al = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEaSEOSC_(ptr noundef nonnull align 8 dereferenceable(2096) %1, ptr noundef nonnull align 8 dereferenceable(2096) %i.e) ; 0 uses
  %i.am = getelementptr inbounds i8, ptr %i.d, i64 -2072 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.o, ptr noundef nonnull align 8 dereferenceable(20) %i.am, i64 20, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ao = getelementptr inbounds i8, ptr %i.d, i64 -2048 ; 2 uses
  %i.ap = call fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_18LSRFixupEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(592) %i.an, ptr noundef nonnull align 8 dereferenceable(592) %i.ao) ; 0 uses
  %i.aq = getelementptr inbounds i8, ptr %i.d, i64 -1456 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(35) %i.y, ptr noundef nonnull align 8 dereferenceable(35) %i.aq, i64 35, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.as = getelementptr inbounds i8, ptr %i.d, i64 -1416 ; 2 uses
  %i.at = call fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_17FormulaEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(1360) %i.ar, ptr noundef nonnull align 8 dereferenceable(1360) %i.as) ; 0 uses
  %i.au = getelementptr inbounds i8, ptr %i.d, i64 -56 ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.d, i64 -32 ; 2 uses
  call void @_ZN4llvm19SmallPtrSetImplBase8moveFromEPPKvjS3_OS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.ai, ptr noundef nonnull %i.ak, i32 noundef 4, ptr noundef nonnull %i.av, ptr noundef nonnull align 8 dereferenceable(56) %i.au) #23
  %i.aw = getelementptr inbounds i8, ptr %i.d, i64 -2076 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !996 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %_ZSt4swapIN12_GLOBAL__N_16LSRUseEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN12_GLOBAL__N_16LSRUseaSEOS0_.exit.i
  %i.az = load ptr, ptr %i.e, align 8, !tbaa !989
  %i.ba = getelementptr inbounds i8, ptr %i.d, i64 -2088
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !995
  %i.bc = zext i32 %i.ax to i64
  %i.bd = add nuw nsw i64 %i.bc, 31
  %i.be = lshr i64 %i.bd, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i.i.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !478 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.bh = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.e

bb.e:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.bg, %.lr.ph.i.i.i ], [ %i.bq, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.bi = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.bj = or disjoint i32 %i.bi, %i.bh
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [48 x i8], ptr %i.az, i64 %i.bk ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !21 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.bm) #23
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.f, %bb.e
  %i.bp = add i32 %.0.i3.i.i.i, -1
  %i.bq = and i32 %i.bp, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.e, !llvm.loop !1418

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i5.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.be
  br i1 %.not.i.i.i5.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !1419

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.aw, align 4, !tbaa !996 ; 2 uses
  %i.br = icmp eq i32 %.pr.i.i, 0
  br i1 %i.br, label %_ZSt4swapIN12_GLOBAL__N_16LSRUseEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEv.exit.i.i
  %i.bs = load ptr, ptr %i.e, align 8, !tbaa !989
  %i.bt = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.bu = mul nuw nsw i64 %i.bt, 48
  %i.bv = add nuw nsw i64 %i.bt, 31
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = and i64 %i.bw, 1073741820
  %i.by = add nuw nsw i64 %i.bx, %i.bu
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bs, i64 noundef %i.by, i64 noundef 8) #23
  br label %_ZSt4swapIN12_GLOBAL__N_16LSRUseEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit

_ZSt4swapIN12_GLOBAL__N_16LSRUseEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit: ; preds = %_ZN12_GLOBAL__N_16LSRUseaSEOS0_.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEv.exit.i.i, %bb.g
  %i.bz = load <2 x ptr>, ptr %3, align 16, !tbaa !49
  store <2 x ptr> %i.bz, ptr %i.e, align 8, !tbaa !49
  store ptr null, ptr %3, align 16, !tbaa !1397
  store ptr null, ptr %i.f, align 8, !tbaa !1398
  %i.ca = getelementptr inbounds i8, ptr %i.d, i64 -2080
  %i.cb = load i32, ptr %i.i, align 16, !tbaa !478
  store i32 %i.cb, ptr %i.ca, align 8, !tbaa !478
  store i32 0, ptr %i.i, align 16, !tbaa !478
  %i.cc = load i32, ptr %i.k, align 4, !tbaa !478
  store i32 %i.cc, ptr %i.aw, align 4, !tbaa !478
  store i32 0, ptr %i.k, align 4, !tbaa !478
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.am, ptr noundef nonnull align 8 dereferenceable(20) %i.n, i64 20, i1 false)
  %i.cd = call fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_18LSRFixupEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(592) %i.ao, ptr noundef nonnull align 8 dereferenceable(592) %i.p) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(35) %i.aq, ptr noundef nonnull align 16 dereferenceable(35) %i.x, i64 35, i1 false)
  %i.ce = call fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_17FormulaEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(1360) %i.as, ptr noundef nonnull align 8 dereferenceable(1360) %i.z) ; 0 uses
  call void @_ZN4llvm19SmallPtrSetImplBase8moveFromEPPKvjS3_OS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.au, ptr noundef nonnull %i.av, i32 noundef 4, ptr noundef nonnull %i.aj, ptr noundef nonnull align 8 dereferenceable(56) %i.ah) #23
  call fastcc void @_ZN12_GLOBAL__N_16LSRUseD2Ev(ptr noundef nonnull align 8 dead_on_return(2096) dereferenceable(2096) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.pre = load i32, ptr %i.b, align 8, !tbaa !50
  %.val.i.pre = load ptr, ptr %i.a, align 8, !tbaa !21
  br label %bb.h

bb.h:                                             ; preds = %_ZSt4swapIN12_GLOBAL__N_16LSRUseEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit, %bb.a
  %.val.i = phi ptr [ %.val.i.pre, %_ZSt4swapIN12_GLOBAL__N_16LSRUseEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit ], [ %.val4, %bb.a ]
  %i.cf = phi i32 [ %.pre, %_ZSt4swapIN12_GLOBAL__N_16LSRUseEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit ], [ %.val5, %bb.a ]
  %i.cg = add i32 %i.cf, -1                       ; 2 uses
  store i32 %i.cg, ptr %i.b, align 8, !tbaa !50
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [2096 x i8], ptr %.val.i, i64 %i.ch
  call fastcc void @_ZN12_GLOBAL__N_16LSRUseD2Ev(ptr noundef nonnull align 8 dead_on_return(2096) dereferenceable(2096) %i.ci) #23
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 34744
  %i.ck = load i32, ptr %i.b, align 8, !tbaa !50  ; 2 uses
  %i.cl = zext i32 %i.ck to i64                   ; 5 uses
  %.val2.i.i = load ptr, ptr %i.cj, align 8, !tbaa !476, !noalias !1633
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 34752
  %.val1.i.i = load ptr, ptr %i.cm, align 8, !tbaa !477, !noalias !1633 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 34764
  %.val.i.i = load i32, ptr %i.cn, align 4, !tbaa !475, !noalias !1633 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 34760
  %.val3.i.i = load i32, ptr %i.co, align 8, !tbaa !1142, !noalias !1633
  %i.cp = icmp eq i32 %.val3.i.i, 0
  %i.cq = zext i32 %.val.i.i to i64               ; 3 uses
  %.idx79.i = shl nuw nsw i64 %i.cq, 4            ; 2 uses
  %.not.i.not.i.i.i = icmp eq i32 %.val.i.i, 0
  %or.cond.i = select i1 %i.cp, i1 true, i1 %.not.i.not.i.i.i
  br i1 %or.cond.i, label %_ZN12_GLOBAL__N_113RegUseTracker14swapAndDropUseEmm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cr = add nuw nsw i64 %i.cq, 31
  %i.cs = lshr i64 %i.cr, 5                       ; 4 uses
  %i.ct = load i32, ptr %.val1.i.i, align 4, !tbaa !478, !noalias !1636 ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %.lr.ph.i.i.i.i.preheader, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.i
  %i.cv = icmp eq i64 %i.cs, 1
  br i1 %i.cv, label %_ZN12_GLOBAL__N_113RegUseTracker14swapAndDropUseEmm.exit, label %.lr.ph

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph
  %i.cw = add nuw nsw i64 %i.cy, 1                ; 2 uses
  %i.cx = icmp eq i64 %i.cw, %i.cs
  br i1 %i.cx, label %_ZN12_GLOBAL__N_113RegUseTracker14swapAndDropUseEmm.exit, label %.lr.ph, !llvm.loop !1639

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.cy = phi i64 [ %i.cw, %.lr.ph.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !478, !noalias !1636 ; 2 uses
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %.lr.ph.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i, !llvm.loop !1639

._crit_edge.i.loopexit.i.i.i:                     ; preds = %.lr.ph
  %i.dc = shl i64 %i.cy, 9
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i: ; preds = %._crit_edge.i.loopexit.i.i.i, %bb.i
  %.012.lcssa.i.i.i.i = phi i64 [ 0, %bb.i ], [ %i.dc, %._crit_edge.i.loopexit.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.ct, %bb.i ], [ %i.da, %._crit_edge.i.loopexit.i.i.i ]
  %i.dd = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %i.de = shl nuw nsw i32 %i.dd, 4
  %.idx.i = zext nneg i32 %i.de to i64
  %i.df = or disjoint i64 %.012.lcssa.i.i.i.i, %.idx.i ; 2 uses
  %.not52.i = icmp eq i64 %i.df, %.idx79.i
  br i1 %.not52.i, label %_ZN12_GLOBAL__N_113RegUseTracker14swapAndDropUseEmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i
  %i.dg = lshr i64 %i.cl, 6
  %i.dh = and i64 %i.cl, 63
  %i.di = shl nuw i64 1, %i.dh
  %i.dj = and i64 %2, 63
  %i.dk = shl nuw i64 1, %i.dj                    ; 2 uses
  %i.dl = lshr i64 %2, 6
  %i.dm = and i64 %i.dl, 67108863                 ; 2 uses
  %i.dn = xor i64 %i.dk, -1
  %i.do = shl nuw nsw i64 1, %2                   ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZN4llvm16DenseMapIteratorIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit.i, %.lr.ph.i
  %.pn.i = phi i64 [ %i.df, %.lr.ph.i ], [ %i.ge, %_ZN4llvm16DenseMapIteratorIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit.i ] ; 2 uses
  %.sroa.031.053.i = getelementptr i8, ptr %.val2.i.i, i64 %.pn.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.031.053.i, i64 8 ; 5 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !479 ; 6 uses
  %i.dr = trunc i64 %i.dq to i1
  br i1 %i.dr, label %_ZNK4llvm14SmallBitVector4sizeEv.exit.i, label %_ZNK4llvm14SmallBitVector4sizeEv.exit.thread.i

_ZNK4llvm14SmallBitVector4sizeEv.exit.i:          ; preds = %bb.j
  %i.ds = lshr i64 %i.dq, 58                      ; 4 uses
  %i.dt = icmp ult i64 %2, %i.ds
  br i1 %i.dt, label %_ZNK4llvm14SmallBitVector4sizeEv.exit20.i, label %_ZN4llvm14SmallBitVector9referenceaSEb.exit.i

_ZNK4llvm14SmallBitVector4sizeEv.exit.thread.i:   ; preds = %bb.j
  %i.du = inttoptr i64 %i.dq to ptr               ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 64
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !899 ; 2 uses
  %i.dx = zext i32 %i.dw to i64
  %i.dy = icmp ult i64 %2, %i.dx
  br i1 %i.dy, label %_ZNK4llvm14SmallBitVector4sizeEv.exit20.thread.i, label %_ZN4llvm14SmallBitVector9referenceaSEb.exit.i

_ZNK4llvm14SmallBitVector4sizeEv.exit20.i:        ; preds = %_ZNK4llvm14SmallBitVector4sizeEv.exit.i
  %i.dz = icmp samesign ugt i64 %i.ds, %i.cl
  br i1 %i.dz, label %.split.i, label %_ZNK4llvm14SmallBitVector4sizeEv.exit20..thread44_crit_edge.i

_ZNK4llvm14SmallBitVector4sizeEv.exit20..thread44_crit_edge.i: ; preds = %_ZNK4llvm14SmallBitVector4sizeEv.exit20.i
  %.pre58.i = shl nsw i64 -1, %i.ds
  br label %.thread44.i

_ZNK4llvm14SmallBitVector4sizeEv.exit20.thread.i: ; preds = %_ZNK4llvm14SmallBitVector4sizeEv.exit.thread.i
  %i.ea = icmp ult i32 %i.ck, %i.dw
  %.pre.i = load ptr, ptr %i.du, align 8, !tbaa !21 ; 3 uses
  br i1 %i.ea, label %_ZNK4llvm14SmallBitVector9referencecvbEv.exit.i, label %.thread45.i

.split.i:                                         ; preds = %_ZNK4llvm14SmallBitVector4sizeEv.exit20.i
  %i.eb = lshr i64 %i.dq, 1                       ; 2 uses
  %i.ec = shl nsw i64 -1, %i.ds                   ; 2 uses
  %i.ed = xor i64 %i.ec, -1                       ; 2 uses
  %i.ee = and i64 %i.eb, %i.ed
  %i.ef = lshr i64 %i.ee, %i.cl
  %i.eg = trunc i64 %i.ef to i1
  br i1 %i.eg, label %bb.k, label %.thread44.i

_ZNK4llvm14SmallBitVector9referencecvbEv.exit.i:  ; preds = %_ZNK4llvm14SmallBitVector4sizeEv.exit20.thread.i
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.dg
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !157
  %i.ej = and i64 %i.ei, %i.di
  %.not47.i = icmp eq i64 %i.ej, 0
  br i1 %.not47.i, label %.thread45.i, label %bb.l

bb.k:                                             ; preds = %.split.i
  %i.ek = or i64 %i.eb, %i.do
  %i.el = and i64 %i.ek, %i.ed
  %i.em = shl nuw i64 %i.el, 1
  %i.en = and i64 %i.dq, -288230376151711743
  %i.eo = or i64 %i.em, %i.en
  store i64 %i.eo, ptr %i.dp, align 8, !tbaa !479
  br label %_ZN4llvm14SmallBitVector9referenceaSEb.exit.i

bb.l:                                             ; preds = %_ZNK4llvm14SmallBitVector9referencecvbEv.exit.i
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.dm ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !157
  %i.er = or i64 %i.eq, %i.dk
  store i64 %i.er, ptr %i.ep, align 8, !tbaa !157
  br label %_ZN4llvm14SmallBitVector9referenceaSEb.exit.i

.thread44.i:                                      ; preds = %.split.i, %_ZNK4llvm14SmallBitVector4sizeEv.exit20..thread44_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre58.i, %_ZNK4llvm14SmallBitVector4sizeEv.exit20..thread44_crit_edge.i ], [ %i.ec, %.split.i ]
  %i.es = or i64 %.pre-phi.i, %i.do
  %i.et = xor i64 %i.es, -1
  %i.eu = shl nuw i64 %i.et, 1
  %i.ev = or i64 %i.eu, -288230376151711744
  %i.ew = and i64 %i.ev, %i.dq
  %i.ex = or disjoint i64 %i.ew, 1
  store i64 %i.ex, ptr %i.dp, align 8, !tbaa !479
  br label %_ZN4llvm14SmallBitVector9referenceaSEb.exit.i

.thread45.i:                                      ; preds = %_ZNK4llvm14SmallBitVector9referencecvbEv.exit.i, %_ZNK4llvm14SmallBitVector4sizeEv.exit20.thread.i
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.dm ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !157
  %i.fa = and i64 %i.ez, %i.dn
  store i64 %i.fa, ptr %i.ey, align 8, !tbaa !157
  br label %_ZN4llvm14SmallBitVector9referenceaSEb.exit.i

_ZN4llvm14SmallBitVector9referenceaSEb.exit.i:    ; preds = %.thread45.i, %.thread44.i, %bb.l, %bb.k, %_ZNK4llvm14SmallBitVector4sizeEv.exit.thread.i, %_ZNK4llvm14SmallBitVector4sizeEv.exit.i
  %i.fb = load i64, ptr %i.dp, align 8, !tbaa !479 ; 3 uses
  %i.fc = trunc i64 %i.fb to i1
  br i1 %i.fc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4llvm14SmallBitVector9referenceaSEb.exit.i
  %i.fd = lshr i64 %i.fb, 58
  br label %_ZNK4llvm14SmallBitVector4sizeEv.exit23.i

bb.n:                                             ; preds = %_ZN4llvm14SmallBitVector9referenceaSEb.exit.i
  %i.fe = inttoptr i64 %i.fb to ptr
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 64
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !899
  %i.fh = zext i32 %i.fg to i64
  br label %_ZNK4llvm14SmallBitVector4sizeEv.exit23.i

_ZNK4llvm14SmallBitVector4sizeEv.exit23.i:        ; preds = %bb.n, %bb.m
  %i.fi = phi i64 [ %i.fd, %bb.m ], [ %i.fh, %bb.n ]
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.cl, i64 %i.fi)
  %i.fj = trunc nuw i64 %.sroa.speculated.i to i32
  call void @_ZN4llvm14SmallBitVector6resizeEjb(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, i32 noundef %i.fj, i1 noundef zeroext false)
  %i.fk = add i64 %.pn.i, 16
  %i.fl = ashr exact i64 %i.fk, 4                 ; 3 uses
  %.not.i.i.i6 = icmp ult i64 %i.fl, %i.cq
  br i1 %.not.i.i.i6, label %bb.o, label %_ZN12_GLOBAL__N_113RegUseTracker14swapAndDropUseEmm.exit

bb.o:                                             ; preds = %_ZNK4llvm14SmallBitVector4sizeEv.exit23.i
  %i.fm = lshr i64 %i.fl, 5                       ; 3 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !478
  %i.fp = trunc nuw i64 %i.fl to i32
  %i.fq = and i32 %i.fp, 31
  %i.fr = shl nsw i32 -1, %i.fq
  %i.fs = and i32 %i.fo, %i.fr                    ; 2 uses
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %.lr.ph.i.i.i7.preheader, label %_ZN4llvm16DenseMapIteratorIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit.i

.lr.ph.i.i.i7.preheader:                          ; preds = %bb.o
  %i.fu = add nuw nsw i64 %i.fm, 1                ; 2 uses
  %i.fv = icmp eq i64 %i.fu, %i.cs
  br i1 %i.fv, label %_ZN12_GLOBAL__N_113RegUseTracker14swapAndDropUseEmm.exit, label %.lr.ph49

.lr.ph.i.i.i7:                                    ; preds = %.lr.ph49
  %i.fw = add i64 %i.fy, 1                        ; 2 uses
  %i.fx = icmp eq i64 %i.fw, %i.cs
  br i1 %i.fx, label %_ZN12_GLOBAL__N_113RegUseTracker14swapAndDropUseEmm.exit, label %.lr.ph49, !llvm.loop !1639

.lr.ph49:                                         ; preds = %.lr.ph.i.i.i7.preheader, %.lr.ph.i.i.i7
  %i.fy = phi i64 [ %i.fw, %.lr.ph.i.i.i7 ], [ %i.fu, %.lr.ph.i.i.i7.preheader ] ; 3 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !478 ; 2 uses
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %.lr.ph.i.i.i7, label %_ZN4llvm16DenseMapIteratorIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit.i, !llvm.loop !1639

_ZN4llvm16DenseMapIteratorIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit.i: ; preds = %.lr.ph49, %bb.o
  %.012.lcssa.i.i.i = phi i64 [ %i.fm, %bb.o ], [ %i.fy, %.lr.ph49 ]
  %.0.lcssa.i.i.i = phi i32 [ %i.fs, %bb.o ], [ %i.ga, %.lr.ph49 ]
  %i.gc = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %.idx.i.i.i = shl i64 %.012.lcssa.i.i.i, 9
  %i.gd = shl nuw nsw i32 %i.gc, 4
  %.idx80.i = zext nneg i32 %i.gd to i64
  %i.ge = or disjoint i64 %.idx.i.i.i, %.idx80.i  ; 2 uses
  %.not.i = icmp eq i64 %i.ge, %.idx79.i
  br i1 %.not.i, label %_ZN12_GLOBAL__N_113RegUseTracker14swapAndDropUseEmm.exit, label %bb.j

_ZN12_GLOBAL__N_113RegUseTracker14swapAndDropUseEmm.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNK4llvm14SmallBitVector4sizeEv.exit23.i, %_ZN4llvm16DenseMapIteratorIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit.i, %.lr.ph.i.i.i7.preheader, %.lr.ph.i.i.i7, %.lr.ph.i.i.i.i.preheader, %bb.h, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEaSEOSC_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !996  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !989
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !995
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !478  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.l = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.u, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %i.o ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.q) #23
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.c, %bb.b
  %i.t = add i32 %.0.i3.i, -1
  %i.u = and i32 %i.t, %.0.i3.i                   ; 2 uses
  %.not11.i.i = icmp eq i32 %i.u, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !1418

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !1419

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !996  ; 2 uses
  %i.v = icmp eq i32 %.pr, 0
  br i1 %i.v, label %_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE17deallocateBucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEv.exit
  %i.w = load ptr, ptr %0, align 8, !tbaa !989
  %i.x = zext i32 %.pr to i64                     ; 2 uses
  %i.y = mul nuw nsw i64 %i.x, 48
  %i.z = add nuw nsw i64 %i.x, 31
  %i.aa = lshr i64 %i.z, 3
  %i.ab = and i64 %i.aa, 1073741820
  %i.ac = add nuw nsw i64 %i.ab, %i.y
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.w, i64 noundef %i.ac, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIPKNS_4SCEVELj4EEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E10destroyAllEv.exit, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load <2 x ptr>, ptr %1, align 8, !tbaa !49
  store <2 x ptr> %i.ae, ptr %0, align 8, !tbaa !49
  store ptr null, ptr %1, align 8, !tbaa !1397
  store ptr null, ptr %i.ad, align 8, !tbaa !1398
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !478
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !478
  store i32 0, ptr %i.ag, align 8, !tbaa !478
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !478
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !478
  store i32 %i.ak, ptr %i.a, align 4, !tbaa !478
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !478
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_4SCEVElEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.795", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1014
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1017
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1027
  store i32 0, ptr %i.p, align 16, !tbaa !1032
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_4SCEVElEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !49
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1640
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !49
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !49
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !49
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !478 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !478
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !478
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !478
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !478
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapISt4pairIPKNS_4SCEVElEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapISt4pairIPKNS_4SCEVElEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEED2Ev.exit

_ZN4llvm8DenseMapISt4pairIPKNS_4SCEVElEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_4SCEVElEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1017
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1027
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1014 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1027 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1017
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1014
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKNS_4SCEVElEmNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_mEEEES9_mSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !478  ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_4SCEVElEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bk, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_4SCEVElEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1029
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !157
  %i.ac = mul i64 %i.ab, 37
  %i.ad = shl i64 %i.z, 32
  %i.ae = and i64 %i.ac, 4294967295
  %i.af = or disjoint i64 %i.ad, %i.ae
  %i.ag = mul i64 %i.af, -4658895280553007687     ; 2 uses
  %i.ah = lshr i64 %i.ag, 31
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.k, %i.aj                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !478
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_4SCEVElEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.at, %.lr.ph.i ], [ %i.ak, %bb.b ]
  %i.as = add i32 %.014.i, 1
  %i.at = and i32 %i.as, %i.k                     ; 3 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = lshr i64 %i.au, 5                       ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !478
  %i.ay = and i32 %i.at, 31                       ; 2 uses
  %i.az = lshr i32 %i.ax, %i.ay
  %i.ba = trunc i32 %i.az to i1
  br i1 %i.ba, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_4SCEVElEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !1641

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_4SCEVElEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.al, %bb.b ], [ %i.au, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.am, %bb.b ], [ %i.av, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ap, %bb.b ], [ %i.ay, %.lr.ph.i ]
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !157
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !157
  %i.bf = shl nuw i32 1, %.lcssa.i
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !478
  %i.bi = or i32 %i.bh, %i.bf
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !478
  %i.bj = add i32 %.0.i17, -1
  %i.bk = and i32 %i.bj, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bk, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1642

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_4SCEVElEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKNS_4SCEVElEmNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_mEEEES9_mSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !1643

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKNS_4SCEVElEmNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_mEEEES9_mSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1014
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKNS_4SCEVElEmNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_mEEEES9_mSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKNS_4SCEVElEmNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_mEEEES9_mSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKNS_4SCEVElEmNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_mEEEES9_mSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bl = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKNS_4SCEVElEmNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_mEEEES9_mSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !1032
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !1032
  %i.bp = icmp eq i32 %i.bl, 0
  br i1 %i.bp, label %_ZN4llvm8DenseMapISt4pairIPKNS_4SCEVElEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKNS_4SCEVElEmNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_mEEEES9_mSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bq = load ptr, ptr %1, align 8, !tbaa !1017
  %i.br = zext i32 %i.bl to i64                   ; 2 uses
  %i.bs = mul nuw nsw i64 %i.br, 24
  %i.bt = add nuw nsw i64 %i.br, 31
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = and i64 %i.bu, 1073741820
  %i.bw = add nuw nsw i64 %i.bv, %i.bs
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bq, i64 noundef %i.bw, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !1014
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapISt4pairIPKNS_4SCEVElEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEE4killEv.exit

_ZN4llvm8DenseMapISt4pairIPKNS_4SCEVElEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKNS_4SCEVElEmNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_mEEEES9_mSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E24lookupOrInsertIntoBucketIS4_JfEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1081, !noalias !1644 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1087, !noalias !1644 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1078, !noalias !1644 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !456    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !478
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !625

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !456
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit, label %bb.c, !prof !166

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !478
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !626, !llvm.loop !1088

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1649
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1089
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit, label %bb.d, !prof !166

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1649
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1087
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !1081
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !478
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !478
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1089
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !456
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !456
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = load float, ptr %2, align 4, !tbaa !1095
  store float %i.bj, ptr %i.bi, align 8, !tbaa !1095
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1081, !noalias !1650 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1087, !noalias !1650 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1078, !noalias !1650 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !456    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !478
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !625

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !456
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !166

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !478
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !626, !llvm.loop !1088

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1649
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.814", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1078
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1081
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1087
  store i32 0, ptr %i.p, align 16, !tbaa !1089
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !49
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1649
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !49
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !49
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !49
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !478 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !478
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !478
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !478
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !478
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_fEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_fEEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_fEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1081   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1087
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1078 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1087 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1081
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1078
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_fEEEES7_fS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !478  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !456  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !478 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !478 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1655

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !456
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load float, ptr %i.av, align 8, !tbaa !1095
  store float %i.aw, ptr %i.au, align 8, !tbaa !1095
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !478
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1656

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_fEEEES7_fS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1657

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_fEEEES7_fS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1078
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_fEEEES7_fS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_fEEEES7_fS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_fEEEES7_fS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_fEEEES7_fS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1089
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !1089
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_fEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_fEEEES7_fS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !1078
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_fEEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_fEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_fEEEES7_fS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1081, !noalias !1658 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1087, !noalias !1658 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1078, !noalias !1658 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !456    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !478
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !625

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !456
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit, label %bb.c, !prof !166

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !478
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !626, !llvm.loop !1088

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1649
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1089
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit, label %bb.d, !prof !166

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1649
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1087
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1081
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !478
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !478
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1089
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !456
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !456
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store float 0.000000e+00, ptr %i.bi, align 8, !tbaa !1095
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEfNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_fEEEES4_fS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

declare void @_ZN4llvm15ScalarEvolution25computeConstantDifferenceEPKNS_4SCEVES3_(ptr dead_on_unwind writable sret(%"class.std::optional.829") align 8, ptr noundef nonnull align 8 dereferenceable(1152), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
end_hunk_16
begin_hunk_17_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_:bb.a
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit, label %bb.d, !prof !166

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1678
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !744
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !745
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !478
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !478
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !742
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !467
  store ptr null, ptr %1, align 8, !tbaa !467
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1143
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !745, !noalias !1679 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !744, !noalias !1679 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !743, !noalias !1679 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1143   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !478
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !625

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1143
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !166

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !478
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !626, !llvm.loop !1677

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1678
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.207", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !743
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !745
  store ptr %i.y, ptr %i.q, align 8, !tbaa !744
  store i32 0, ptr %i.p, align 16, !tbaa !742
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !49
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1678
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !49
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !49
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !49
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !478 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !478
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !478
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !478
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !478
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit

_ZN4llvm8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !745    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !744
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !743  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !744  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !745
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !743
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !478  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1143 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !478 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !478 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !1684

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr null, ptr %i.u, align 8, !tbaa !467
  store ptr %i.v, ptr %i.at, align 8, !tbaa !1143
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !478
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1685

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1686

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !743
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !742
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !742
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !743
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit

_ZN4llvm8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_7PHINodeEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZNK12_GLOBAL__N_111LSRInstance6ExpandERKNS_6LSRUseERKNS_8LSRFixupERKNS_7FormulaEN4llvm21ilist_iterator_w_bitsINSA_12ilist_detail12node_optionsINSA_11InstructionELb0ELb0EvLb1ENSA_10BasicBlockEEELb0ELb0EEERNSA_15SmallVectorImplINSA_14WeakTrackingVHEEE(ptr noundef nonnull align 8 dereferenceable(35560) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2096) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(16) %5) unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.llvm::SmallVector.413", align 8 ; 8 uses
  %7 = alloca %"class.llvm::SmallVector.262", align 8 ; 14 uses
  %8 = alloca %"class.llvm::SmallVector.929", align 8 ; 9 uses
  %9 = alloca %"class.llvm::SmallVector.418", align 8 ; 30 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 674
  %i.c = load i8, ptr %i.b, align 2, !tbaa !713, !range !18, !noundef !19
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !673
  br label %bb.dq

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.g, ptr %7, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 13 uses
  store i32 0, ptr %i.h, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 4 uses
  store i32 4, ptr %i.i, align 4, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !673  ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !447
  %i.m = icmp ult i8 %i.l, 30
  br i1 %i.m, label %bb.d, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit.i: ; preds = %bb.c
  store ptr %i.k, ptr %i.g, align 8
  store i32 1, ptr %i.h, align 8, !tbaa !50
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit.i, %bb.c
  %i.n = phi i32 [ 1, %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit.i ], [ 0, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !812
  %i.q = icmp eq i32 %i.p, 3
  br i1 %i.q, label %bb.e, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit31.i

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %2, align 8, !tbaa !669
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !581  ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !447
  %i.v = icmp ult i8 %i.u, 30
  br i1 %i.v, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit31.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = zext nneg i32 %i.n to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.w
  store ptr %i.t, ptr %i.x, align 8
  %i.y = add nuw nsw i32 %i.n, 1
  store i32 %i.y, ptr %i.h, align 8, !tbaa !50
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit31.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit31.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !560 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !14, !range !18, !noundef !19
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.g, label %_ZNK4llvm15SmallPtrSetImplIPKNS_4LoopEE5countES3_.exit.i

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit31.i
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !20  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !45 ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.ai, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx.i.i.i
  %.not17.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not17.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit33.i, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.01218.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit33.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %bb.h
  %.01218.i.i.i = phi ptr [ %i.ak, %bb.h ], [ %i.af, %bb.g ] ; 2 uses
  %i.al = load ptr, ptr %.01218.i.i.i, align 8, !tbaa !49
  %.not15.i.i.i = icmp eq ptr %i.al, %i.ab
  br i1 %.not15.i.i.i, label %_ZNK4llvm15SmallPtrSetImplIPKNS_4LoopEE5countES3_.exit.thread64.i, label %bb.h

_ZNK4llvm15SmallPtrSetImplIPKNS_4LoopEE5countES3_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit31.i
  %i.am = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.z, ptr noundef %i.ab) #23
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit33.i, label %_ZNK4llvm15SmallPtrSetImplIPKNS_4LoopEE5countES3_.exit._ZNK4llvm15SmallPtrSetImplIPKNS_4LoopEE5countES3_.exit.thread64_crit_edge.i

_ZNK4llvm15SmallPtrSetImplIPKNS_4LoopEE5countES3_.exit._ZNK4llvm15SmallPtrSetImplIPKNS_4LoopEE5countES3_.exit.thread64_crit_edge.i: ; preds = %_ZNK4llvm15SmallPtrSetImplIPKNS_4LoopEE5countES3_.exit.i
  %.pre.i = load ptr, ptr %i.aa, align 8, !tbaa !560
  br label %_ZNK4llvm15SmallPtrSetImplIPKNS_4LoopEE5countES3_.exit.thread64.i

_ZNK4llvm15SmallPtrSetImplIPKNS_4LoopEE5countES3_.exit.thread64.i: ; preds = %.lr.ph.i.i.i, %_ZNK4llvm15SmallPtrSetImplIPKNS_4LoopEE5countES3_.exit._ZNK4llvm15SmallPtrSetImplIPKNS_4LoopEE5countES3_.exit.thread64_crit_edge.i
  %i.an = phi ptr [ %.pre.i, %_ZNK4llvm15SmallPtrSetImplIPKNS_4LoopEE5countES3_.exit._ZNK4llvm15SmallPtrSetImplIPKNS_4LoopEE5countES3_.exit.thread64_crit_edge.i ], [ %i.ab, %.lr.ph.i.i.i ]
  %i.ao = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_18LSRFixup21isUseFullyOutsideLoopEPKN4llvm4LoopE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %i.an)
  br i1 %i.ao, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZNK4llvm15SmallPtrSetImplIPKNS_4LoopEE5countES3_.exit.thread64.i
  %i.ap = load ptr, ptr %i.aa, align 8, !tbaa !560
  %i.aq = call noundef ptr @_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE12getLoopLatchEv(ptr noundef nonnull align 8 dereferenceable(144) %i.ap) #23
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !588
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -24 ; 2 uses
  %i.au = load i32, ptr %i.h, align 8, !tbaa !50  ; 2 uses
end_hunk_17
begin_hunk_18_@_ZNK12_GLOBAL__N_111LSRInstance6ExpandERKNS_6LSRUseERKNS_8LSRFixupERKNS_7FormulaEN4llvm21ilist_iterator_w_bitsINSA_12ilist_detail12node_optionsINSA_11InstructionELb0ELb0EvLb1ENSA_10BasicBlockEEELb0ELb0EEERNSA_15SmallVectorImplINSA_14WeakTrackingVHEEE:bb.a
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !118
  %.not120 = icmp eq ptr %i.wd, %.0107
  br i1 %.not120, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.we = call noundef i32 @_ZN4llvm8CastInst13getCastOpcodeEPKNS_5ValueEbPNS_4TypeEb(ptr noundef nonnull %i.wb, i1 noundef zeroext false, ptr noundef %.0107, i1 noundef zeroext false) #23
  %i.wf = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm11Instruction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(72) %i.un) #23
  %i.wg = call noundef ptr @_ZN4llvm23ConstantFoldCastOperandEjPNS_8ConstantEPNS_4TypeERKNS_10DataLayoutE(i32 noundef %i.we, ptr noundef nonnull %i.wb, ptr noundef %.0107, ptr noundef nonnull align 8 dereferenceable(912) %i.wf) #23
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.0 = phi ptr [ %i.wg, %bb.dh ], [ %i.wb, %bb.dg ] ; 4 uses
  %i.wh = getelementptr inbounds i8, ptr %i.un, i64 -16 ; 3 uses
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !667 ; 3 uses
  %.not.i.i.i.i169 = icmp eq ptr %i.wi, null
  br i1 %.not.i.i.i.i169, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i171, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.wj = getelementptr inbounds i8, ptr %i.un, i64 -24 ; 2 uses
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !592 ; 3 uses
  store ptr %i.wk, ptr %i.wi, align 8, !tbaa !573
  %.not2.i.i.i.i170 = icmp eq ptr %i.wk, null
  br i1 %.not2.i.i.i.i170, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 16
  store ptr %i.wi, ptr %i.wl, align 8, !tbaa !667
  store ptr null, ptr %i.wj, align 8, !tbaa !592
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  store ptr null, ptr %i.wh, align 8, !tbaa !667
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i171

_ZN4llvm3Use14removeFromListEv.exit.i.i.i171:     ; preds = %bb.dl, %bb.di
  store ptr %.0, ptr %i.uo, align 8, !tbaa !581
  %.not.i.i.i172 = icmp eq ptr %.0, null
  br i1 %.not.i.i.i172, label %_ZN4llvm7CmpInst10setOperandEjPNS_5ValueE.exit, label %bb.dm

bb.dm:                                            ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i171
  %i.wm = load i8, ptr %.0, align 8, !tbaa !447
  %i.wn = icmp ugt i8 %i.wm, 10
  br i1 %i.wn, label %bb.dn, label %_ZN4llvm7CmpInst10setOperandEjPNS_5ValueE.exit

bb.dn:                                            ; preds = %bb.dm
  %i.wo = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 3 uses
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !573 ; 3 uses
  %i.wq = getelementptr inbounds i8, ptr %i.un, i64 -24 ; 2 uses
  store ptr %i.wp, ptr %i.wq, align 8, !tbaa !592
  %.not.i.i.i.i.i173 = icmp eq ptr %i.wp, null
  br i1 %.not.i.i.i.i.i173, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i174, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wp, i64 16
  store ptr %i.wq, ptr %i.wr, align 8, !tbaa !667
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i174

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i174:     ; preds = %bb.do, %bb.dn
  store ptr %i.wo, ptr %i.wh, align 8, !tbaa !667
  store ptr %i.uo, ptr %i.wo, align 8, !tbaa !573
  br label %_ZN4llvm7CmpInst10setOperandEjPNS_5ValueE.exit

_ZN4llvm7CmpInst10setOperandEjPNS_5ValueE.exit:   ; preds = %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i174, %bb.dm, %_ZN4llvm3Use14removeFromListEv.exit.i.i.i171, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i, %bb.dd, %_ZN4llvm3Use14removeFromListEv.exit.i.i.i, %_ZN4llvm12SCEVExpander12clearPostIncEv.exit
  %i.ws = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %i.wt = icmp eq ptr %i.ws, %i.lw
  br i1 %i.wt, label %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj8EED2Ev.exit, label %bb.dp

bb.dp:                                            ; preds = %_ZN4llvm7CmpInst10setOperandEjPNS_5ValueE.exit
  call void @free(ptr noundef %i.ws) #23
  br label %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj8EED2Ev.exit: ; preds = %_ZN4llvm7CmpInst10setOperandEjPNS_5ValueE.exit, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.dq

bb.dq:                                            ; preds = %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj8EED2Ev.exit, %bb.b
  %.0106 = phi ptr [ %i.f, %bb.b ], [ %i.tk, %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj8EED2Ev.exit ]
  ret ptr %.0106
}

declare noundef ptr @_ZN4llvm8CastInst6CreateENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE(i32 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(34), ptr, i64) local_unnamed_addr #4

declare noundef i32 @_ZN4llvm8CastInst13getCastOpcodeEPKNS_5ValueEbPNS_4TypeEb(ptr noundef, i1 noundef zeroext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm11Instruction16getNumSuccessorsEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #10

declare noundef zeroext i1 @_ZNK4llvm10BasicBlock12isLandingPadEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

declare void @_ZN4llvm27SplitLandingPadPredecessorsEPNS_10BasicBlockENS_8ArrayRefIS1_EEPKcS5_RNS_15SmallVectorImplIS1_EEPNS_14DomTreeUpdaterEPNS_8LoopInfoEPNS_16MemorySSAUpdaterEb(ptr noundef, ptr, i64, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZNK4llvm11Instruction12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef) local_unnamed_addr #10

declare noundef ptr @_ZN4llvm17SplitCriticalEdgeEPNS_11InstructionEjRKNS_28CriticalEdgeSplittingOptionsERKNS_5TwineE(ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(37), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #4

declare void @_ZN4llvm21GenericDomTreeUpdaterINS_14DomTreeUpdaterENS_13DominatorTreeENS_17PostDominatorTreeEE20dropOutOfDateUpdatesEv(ptr noundef nonnull align 8 dereferenceable(658)) local_unnamed_addr #4

declare void @_ZN4llvm21GenericDomTreeUpdaterINS_14DomTreeUpdaterENS_13DominatorTreeENS_17PostDominatorTreeEE16applyUpdatesImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(658)) local_unnamed_addr #4

declare void @_ZN4llvm21GenericDomTreeUpdaterINS_14DomTreeUpdaterENS_13DominatorTreeENS_17PostDominatorTreeEE16applyUpdatesImplILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(658)) local_unnamed_addr #4

declare void @_ZN4llvm10BasicBlock10moveBeforeENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(80), ptr) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.856", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1162
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1165
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1203
  store i32 0, ptr %i.p, align 16, !tbaa !1206
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !49
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1707
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !49
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !49
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !49
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !478 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !478
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !478
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !478
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !478
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_10BasicBlockEPNS_5ValueENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_10BasicBlockEPNS_5ValueENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_10BasicBlockEPNS_5ValueENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1165   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1203
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1162 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1203 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1165
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1162
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEPNS_5ValueENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !478  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !56   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !478 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !478 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !1708

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !56
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !467
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !467
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !478
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1709

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEPNS_5ValueENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1710

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEPNS_5ValueENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1162
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEPNS_5ValueENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEPNS_5ValueENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEPNS_5ValueENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEPNS_5ValueENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1206
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !1206
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_10BasicBlockEPNS_5ValueENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEPNS_5ValueENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !1162
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_10BasicBlockEPNS_5ValueENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_10BasicBlockEPNS_5ValueENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEPNS_5ValueENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #23
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !50
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !50
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.260", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !472
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !473
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1156
  store i32 0, ptr %i.p, align 16, !tbaa !1155
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !49
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1711
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !49
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !49
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !49
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !478 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !478
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !478
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !478
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !478
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !473    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1156
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !472  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1156 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !473
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !472
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !478  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !428  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !478 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !478 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1712

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !428
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !478
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1713

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1714

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !472
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !1155
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !1155
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !472
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare noundef ptr @_ZN4llvm12SCEVExpander13expandCodeForENS_8SCEVUseTIPKNS_4SCEVEEEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(752), i64, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZNK12_GLOBAL__N_19Immediate14getUnknownSCEVERN4llvm15ScalarEvolutionEPNS1_4TypeE(i64 %.0.val, i8 %.8.val, ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.413", align 8 ; 8 uses
  %i.a = tail call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %1, i64 noundef %.0.val, i1 noundef zeroext true, i1 noundef zeroext true) #23
  %i.b = tail call noundef ptr @_ZN4llvm15ScalarEvolution10getUnknownEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef %i.a) #23 ; 3 uses
  %i.c = trunc nuw i8 %.8.val to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZNK4llvm4SCEV7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #23
  %i.e = tail call noundef ptr @_ZN4llvm15ScalarEvolution9getVScaleEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 2, ptr %i.h, align 4, !tbaa !51
  %i.i = insertelement <2 x ptr> poison, ptr %i.b, i64 0
  %i.j = insertelement <2 x ptr> %i.i, ptr %i.e, i64 1
  %i.k = ptrtoint <2 x ptr> %i.j to <2 x i64>
  %i.l = and <2 x i64> %i.k, splat (i64 -7)
  store <2 x i64> %i.l, ptr %i.f, align 8
  store i32 2, ptr %i.g, align 8, !tbaa !50
  %i.m = call noundef ptr @_ZN4llvm15ScalarEvolution10getMulExprERNS_15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEEENS_15SCEVNoWrapFlagsEj(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0, i32 noundef 0) #23
  %i.n = load ptr, ptr %2, align 8, !tbaa !21     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.f
  br i1 %i.o, label %_ZN4llvm15ScalarEvolution10getMulExprENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.n) #23
  br label %_ZN4llvm15ScalarEvolution10getMulExprENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj.exit

_ZN4llvm15ScalarEvolution10getMulExprENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15ScalarEvolution10getMulExprENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj.exit, %bb.a
  %.0 = phi ptr [ %i.m, %_ZN4llvm15ScalarEvolution10getMulExprENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj.exit ], [ %i.b, %bb.a ]
  ret ptr %.0
}

declare noundef ptr @_ZN4llvm23ConstantFoldCastOperandEjPNS_8ConstantEPNS_4TypeERKNS_10DataLayoutE(i32 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(912)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm11Instruction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm13DominatorTree9dominatesEPKNS_5ValueEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(204), ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_5ValueEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !736  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm8DenseMapINS_11AssertingVHINS_5ValueEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit.thread, label %_ZNK4llvm8DenseMapINS_11AssertingVHINS_5ValueEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit

_ZNK4llvm8DenseMapINS_11AssertingVHINS_5ValueEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit: ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 64) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !737  ; 3 uses
  %.not = icmp eq i32 %.sroa.speculated.i, %i.h
  br i1 %.not, label %bb.b, label %bb.c

_ZNK4llvm8DenseMapINS_11AssertingVHINS_5ValueEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit.thread: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !737  ; 2 uses
  %.not8 = icmp eq i32 %i.j, 0
  br i1 %.not8, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_5ValueEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, label %.thread16

bb.b:                                             ; preds = %_ZNK4llvm8DenseMapINS_11AssertingVHINS_5ValueEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !736
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !738
  %i.m = zext i32 %.sroa.speculated.i to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 3
  %i.p = and i64 %i.o, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %i.p, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_5ValueEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit

bb.c:                                             ; preds = %_ZNK4llvm8DenseMapINS_11AssertingVHINS_5ValueEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit
  %.sroa.39.0.insert.ext.i = zext i32 %.sroa.speculated.i to i64 ; 2 uses
  %i.q = icmp eq i32 %i.h, 0
  br i1 %i.q, label %_ZN4llvm8DenseMapINS_11AssertingVHINS_5ValueEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17deallocateBucketsEv.exit, label %.thread16

.thread16:                                        ; preds = %_ZNK4llvm8DenseMapINS_11AssertingVHINS_5ValueEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit.thread, %bb.c
  %i.r = phi ptr [ %i.g, %bb.c ], [ %i.i, %_ZNK4llvm8DenseMapINS_11AssertingVHINS_5ValueEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit.thread ] ; 2 uses
  %i.s = phi i32 [ %i.h, %bb.c ], [ %i.j, %_ZNK4llvm8DenseMapINS_11AssertingVHINS_5ValueEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit.thread ]
  %spec.select10.i1221 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapINS_11AssertingVHINS_5ValueEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit.thread ]
  %.sroa.39.0.insert.ext.i1319 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapINS_11AssertingVHINS_5ValueEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit.thread ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !749
  %i.u = zext i32 %i.s to i64                     ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.u, 31
  %i.x = lshr i64 %i.w, 3
  %i.y = and i64 %i.x, 1073741820
  %i.z = add nuw nsw i64 %i.y, %i.v
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.t, i64 noundef %i.z, i64 noundef 8) #23
  store i32 0, ptr %i.r, align 4, !tbaa !737
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_11AssertingVHINS_5ValueEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapINS_11AssertingVHINS_5ValueEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17deallocateBucketsEv.exit: ; preds = %bb.c, %.thread16
end_hunk_18
begin_hunk_19_@_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8              ; 5 uses
  %i.g = and i32 %i.f, 254
  %spec.select.i.i.i.i = icmp eq i32 %i.g, 18
  br i1 %spec.select.i.i.i.i, label %bb.d, label %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !925
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !603
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i

_ZNK4llvm4Type13getScalarTypeEv.exit.i.i:         ; preds = %bb.d, %bb.c
  %i.k = phi i32 [ %.pre.i.i, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %trunc.i.i.i.i = trunc i32 %i.k to i8           ; 2 uses
  %i.l = icmp ult i8 %trunc.i.i.i.i, 6
  %switch.shifted = lshr i8 47, %trunc.i.i.i.i
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.l, i1 %switch.lobit, i1 false
  %i.m = and i32 %i.k, 253
  %spec.select.i.i.i = icmp eq i32 %i.m, 4
  %or.cond20 = or i1 %or.cond, %spec.select.i.i.i
  br i1 %or.cond20, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i
  %trunc.i = trunc i32 %i.f to i8
  switch i8 %trunc.i, label %.loopexit.i.i [
    i8 16, label %bb.f
    i8 17, label %.preheader.i.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = and i32 %i.f, 1024
  %.not26.i.i = icmp eq i32 %i.n, 0
  br i1 %.not26.i.i, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call noundef zeroext i1 @_ZNK4llvm10StructType24containsHomogeneousTypesEv(ptr noundef nonnull align 8 dereferenceable(32) %i.d) #23
  br i1 %i.o, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !925
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !603  ; 2 uses
  %.phi.trans.insert.i2.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.pre.i3.i = load i32, ptr %.phi.trans.insert.i2.i, align 8
  br label %.loopexit.i.i

.preheader.i.i:                                   ; preds = %bb.e, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.t, %.preheader.i.i ], [ %i.d, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1718 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %i.w = and i32 %i.v, 255
  %i.x = icmp ne i32 %i.w, 17
  %.not1828.i.i = icmp eq ptr %i.t, null
  %.not18.i.i = or i1 %.not1828.i.i, %i.x
  br i1 %.not18.i.i, label %.loopexit.i.i, label %.preheader.i.i, !llvm.loop !1720

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %bb.h, %bb.e
  %i.y = phi i32 [ %i.f, %bb.e ], [ %.pre.i3.i, %bb.h ], [ %i.v, %.preheader.i.i ] ; 2 uses
  %.2.ph.i.i = phi ptr [ %i.d, %bb.e ], [ %i.r, %bb.h ], [ %i.t, %.preheader.i.i ]
  %i.z = and i32 %i.y, 254
  %spec.select.i.i.i.i.i = icmp eq i32 %i.z, 18
  br i1 %spec.select.i.i.i.i.i, label %bb.i, label %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i

bb.i:                                             ; preds = %.loopexit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.2.ph.i.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !925
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !603
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i

_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i:       ; preds = %bb.i, %.loopexit.i.i
  %i.ad = phi i32 [ %.pre.i.i.i, %bb.i ], [ %i.y, %.loopexit.i.i ] ; 2 uses
  %trunc.i.i.i.i.i = trunc i32 %i.ad to i8        ; 2 uses
  %i.ae = icmp ult i8 %trunc.i.i.i.i.i, 6
  %switch.shifted17 = lshr i8 47, %trunc.i.i.i.i.i
  %switch.lobit18 = trunc i8 %switch.shifted17 to i1
  %or.cond19 = select i1 %i.ae, i1 %switch.lobit18, i1 false
  br i1 %or.cond19, label %.critedge, label %_ZNK4llvm4Type14isIEEELikeFPTyEv.exit.i.i.i.i

_ZNK4llvm4Type14isIEEELikeFPTyEv.exit.i.i.i.i:    ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i
  %i.af = and i32 %i.ad, 253
  %spec.select.i.i21.i.i = icmp eq i32 %i.af, 4
  br label %.critedge

bb.j:                                             ; preds = %bb.b
  br label %.critedge

.critedge:                                        ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i, %_ZNK4llvm4Type14isIEEELikeFPTyEv.exit.i.i.i.i, %bb.g, %bb.f, %bb.a, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.j
  %.1 = phi i1 [ false, %bb.j ], [ true, %bb.b ], [ true, %bb.b ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i ], [ true, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i ], [ false, %bb.g ], [ false, %bb.f ], [ %spec.select.i.i21.i.i, %_ZNK4llvm4Type14isIEEELikeFPTyEv.exit.i.i.i.i ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZNK4llvm10StructType24containsHomogeneousTypesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZN4llvm11Instruction11setMetadataEjPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm11Instruction16setFastMathFlagsENS_13FastMathFlagsE(ptr noundef nonnull align 8 dereferenceable(72), i32) local_unnamed_addr #4

declare void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

declare noundef ptr @_ZN4llvm8CastInst17CreatePointerCastEPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(34), ptr, i64) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm13DominatorTree9dominatesEPKNS_5ValueERKNS_3UseE(ptr noundef nonnull align 8 dereferenceable(204), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvm25IRBuilderCallbackInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvPN4llvm11InstructionEEZNS0_12SCEVExpanderC1ERNS0_15ScalarEvolutionEPKcbEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !428
  %i.b = load ptr, ptr %0, align 8, !tbaa !1721
  tail call void @_ZN4llvm12SCEVExpander19rememberInstructionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(752) %i.b, ptr noundef %i.a) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvPN4llvm11InstructionEEZNS0_12SCEVExpanderC1ERNS0_15ScalarEvolutionEPKcbEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #3 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4llvm12SCEVExpanderC1ERNS1_15ScalarEvolutionEPKcbEUlPNS1_11InstructionEE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !49
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm12SCEVExpanderC1ERNS1_15ScalarEvolutionEPKcbEUlPNS1_11InstructionEE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !1723
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm12SCEVExpanderC1ERNS1_15ScalarEvolutionEPKcbEUlPNS1_11InstructionEE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !432
  store i64 %i.a, ptr %0, align 8, !tbaa !432
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm12SCEVExpanderC1ERNS1_15ScalarEvolutionEPKcbEUlPNS1_11InstructionEE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4llvm12SCEVExpanderC1ERNS1_15ScalarEvolutionEPKcbEUlPNS1_11InstructionEE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZN4llvm12SCEVExpander19rememberInstructionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(752), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !730  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEE18planShrinkAndClearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 64)
  br label %_ZNK4llvm8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEE18planShrinkAndClearEv.exit

_ZNK4llvm8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEE18planShrinkAndClearEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.a ], [ %.sroa.speculated.i, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !731  ; 3 uses
  %.not = icmp eq i32 %.0.i, %i.h                 ; 2 uses
  %spec.select10.i = select i1 %.not, i32 0, i32 %.0.i
  %.sroa.39.0.insert.ext.i = zext i32 %spec.select10.i to i64 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %_ZNK4llvm8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEE18planShrinkAndClearEv.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !732
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !733
  %i.m = zext i32 %i.h to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !478  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.q, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.r = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.aa, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.s = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !176
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  tail call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.y) #23
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %bb.c
  %i.z = add i32 %.0.i3.i, -1
  %i.aa = and i32 %i.z, %.0.i3.i                  ; 2 uses
  %.not11.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.c, !llvm.loop !734

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !735

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEv.exit: ; preds = %._crit_edge.i, %_ZNK4llvm8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEE18planShrinkAndClearEv.exit
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !730
  %i.ab = load i32, ptr %i.g, align 4, !tbaa !731 ; 2 uses
  %.not.i3 = icmp eq i32 %i.ab, 0
  br i1 %.not.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E9initEmptyEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !733
  %i.ae = zext i32 %i.ab to i64
  %i.af = add nuw nsw i64 %i.ae, 31
  %i.ag = lshr i64 %i.af, 3
  %i.ah = and i64 %i.ag, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ad, i8 0, i64 %i.ah, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E9initEmptyEv.exit

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEv.exit
  %i.ai = load i32, ptr %i.g, align 4, !tbaa !731 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZN4llvm8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEE17deallocateBucketsEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %0, align 8, !tbaa !732
  %i.al = zext i32 %i.ai to i64                   ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 40
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ak, i64 noundef %i.aq, i64 noundef 8) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEE17deallocateBucketsEv.exit: ; preds = %bb.g, %bb.h
  store i32 %.0.i, ptr %i.g, align 4, !tbaa !731
  %.not.i4 = icmp eq i32 %.0.i, 0
  br i1 %.not.i4, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEE17deallocateBucketsEv.exit
  %i.ar = mul nuw nsw i64 %.sroa.39.0.insert.ext.i, 40
  %i.as = add nuw nsw i64 %.sroa.39.0.insert.ext.i, 31
  %i.at = lshr i64 %i.as, 3
  %i.au = and i64 %i.at, 1073741820
  %i.av = add nuw nsw i64 %i.au, %i.ar
  %i.aw = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.av, i64 noundef 8) #23 ; 2 uses
  %i.ax = load i32, ptr %i.g, align 4, !tbaa !731 ; 2 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = mul nuw nsw i64 %i.ay, 40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az ; 2 uses
  store ptr %i.aw, ptr %0, align 8, !tbaa !732
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !733
  store i32 0, ptr %i.a, align 8, !tbaa !730
  %.not.i.i5 = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i5, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E9initEmptyEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = add nuw nsw i64 %i.ay, 31
  %i.bd = lshr i64 %i.bc, 3
  %i.be = and i64 %i.bd, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ba, i8 0, i64 %i.be, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E9initEmptyEv.exit

bb.k:                                             ; preds = %_ZN4llvm8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E9initEmptyEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E9initEmptyEv.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !739  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE18planShrinkAndClearEv.exit.thread, label %_ZNK4llvm8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE18planShrinkAndClearEv.exit

_ZNK4llvm8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE18planShrinkAndClearEv.exit: ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 64) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !740  ; 3 uses
  %.not = icmp eq i32 %.sroa.speculated.i, %i.h
  br i1 %.not, label %bb.b, label %bb.c

_ZNK4llvm8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE18planShrinkAndClearEv.exit.thread: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !740  ; 2 uses
  %.not8 = icmp eq i32 %i.j, 0
  br i1 %.not8, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E9initEmptyEv.exit, label %.thread16

bb.b:                                             ; preds = %_ZNK4llvm8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE18planShrinkAndClearEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !739
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !741
  %i.m = zext i32 %.sroa.speculated.i to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 3
  %i.p = and i64 %i.o, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %i.p, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E9initEmptyEv.exit

bb.c:                                             ; preds = %_ZNK4llvm8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE18planShrinkAndClearEv.exit
  %.sroa.39.0.insert.ext.i = zext i32 %.sroa.speculated.i to i64 ; 2 uses
  %i.q = icmp eq i32 %i.h, 0
  br i1 %i.q, label %_ZN4llvm8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE17deallocateBucketsEv.exit, label %.thread16

.thread16:                                        ; preds = %_ZNK4llvm8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE18planShrinkAndClearEv.exit.thread, %bb.c
  %i.r = phi ptr [ %i.g, %bb.c ], [ %i.i, %_ZNK4llvm8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE18planShrinkAndClearEv.exit.thread ] ; 2 uses
  %i.s = phi i32 [ %i.h, %bb.c ], [ %i.j, %_ZNK4llvm8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE18planShrinkAndClearEv.exit.thread ]
  %spec.select10.i1221 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE18planShrinkAndClearEv.exit.thread ]
  %.sroa.39.0.insert.ext.i1319 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE18planShrinkAndClearEv.exit.thread ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !748
  %i.u = zext i32 %i.s to i64                     ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = add nuw nsw i64 %i.u, 31
  %i.x = lshr i64 %i.w, 3
  %i.y = and i64 %i.x, 1073741820
  %i.z = add nuw nsw i64 %i.y, %i.v
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.t, i64 noundef %i.z, i64 noundef 8) #23
  store i32 0, ptr %i.r, align 4, !tbaa !740
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE17deallocateBucketsEv.exit: ; preds = %bb.c, %.thread16
  %i.aa = phi ptr [ %i.g, %bb.c ], [ %i.r, %.thread16 ] ; 2 uses
  %spec.select10.i1222 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ %spec.select10.i1221, %.thread16 ] ; 2 uses
  %.sroa.39.0.insert.ext.i1320 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ %.sroa.39.0.insert.ext.i1319, %.thread16 ] ; 2 uses
  store i32 %spec.select10.i1222, ptr %i.aa, align 4, !tbaa !740
  %.not.i4 = icmp eq i32 %spec.select10.i1222, 0
  br i1 %.not.i4, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE17deallocateBucketsEv.exit
  %i.ab = shl nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 4
  %i.ac = add nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 31
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741820
  %i.af = add nuw nsw i64 %i.ae, %i.ab
  %i.ag = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.af, i64 noundef 8) #23 ; 2 uses
  %i.ah = load i32, ptr %i.aa, align 4, !tbaa !740 ; 2 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 2 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !748
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !741
  store i32 0, ptr %i.a, align 8, !tbaa !739
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E9initEmptyEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = add nuw nsw i64 %i.ai, 31
  %i.an = lshr i64 %i.am, 3
  %i.ao = and i64 %i.an, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ak, i8 0, i64 %i.ao, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E9initEmptyEv.exit

bb.f:                                             ; preds = %_ZN4llvm8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E9initEmptyEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E9initEmptyEv.exit: ; preds = %_ZNK4llvm8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE18planShrinkAndClearEv.exit.thread, %bb.f, %bb.e, %bb.d, %bb.b
  ret void
end_hunk_19
begin_hunk_20_@_ZN12_GLOBAL__N_118LoopStrengthReduce9runOnLoopEPN4llvm4LoopERNS1_13LPPassManagerE:bb.a
  %.not11.i.i.i44 = icmp ne ptr %i.bb, %i.f
  tail call void @llvm.assume(i1 %.not11.i.i.i44)
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1734
  %.not.i.i.i45 = icmp eq ptr %i.bc, @_ZN4llvm30TargetTransformInfoWrapperPass2IDE
  br i1 %.not.i.i.i45, label %_ZNK4llvm4Pass11getAnalysisINS_30TargetTransformInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i42

_ZNK4llvm4Pass11getAnalysisINS_30TargetTransformInfoWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i42, %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit
  %i.bd = phi ptr [ %i.aw, %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit ], [ %i.ax, %.lr.ph.i.i.i42 ]
  %i.be = phi ptr [ %i.ar, %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit ], [ %i.ay, %.lr.ph.i.i.i42 ]
  %i.bf = phi ptr [ %i.aq, %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit ], [ %i.az, %.lr.ph.i.i.i42 ]
  %i.bg = phi ptr [ %i.ap, %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit ], [ %i.ba, %.lr.ph.i.i.i42 ]
  %.sroa.08.015.i.lcssa.i.i46 = phi ptr [ %i.d, %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit ], [ %i.bb, %.lr.ph.i.i.i42 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i46, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !52
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !56
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !720
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm30TargetTransformInfoWrapperPass6getTTIERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(80) %i.bi, ptr noundef nonnull align 8 dereferenceable(140) %i.bn) #23
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !495 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1732 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1732 ; 2 uses
  %.not1114.i.i.i47 = icmp ne ptr %i.bq, %i.bs
  tail call void @llvm.assume(i1 %.not1114.i.i.i47)
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !1734
  %.not.i3.i.i48 = icmp eq ptr %i.bt, @_ZN4llvm22AssumptionCacheTracker2IDE
  br i1 %.not.i3.i.i48, label %_ZNK4llvm4Pass11getAnalysisINS_22AssumptionCacheTrackerEEERT_v.exit, label %.lr.ph.i.i.i49

.lr.ph.i.i.i49:                                   ; preds = %_ZNK4llvm4Pass11getAnalysisINS_30TargetTransformInfoWrapperPassEEERT_v.exit, %.lr.ph.i.i.i49
  %.sroa.08.015.i4.i.i50 = phi ptr [ %i.bu, %.lr.ph.i.i.i49 ], [ %i.bq, %_ZNK4llvm4Pass11getAnalysisINS_30TargetTransformInfoWrapperPassEEERT_v.exit ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i50, i64 16 ; 4 uses
  %.not11.i.i.i51 = icmp ne ptr %i.bu, %i.bs
  tail call void @llvm.assume(i1 %.not11.i.i.i51)
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1734
  %.not.i.i.i52 = icmp eq ptr %i.bv, @_ZN4llvm22AssumptionCacheTracker2IDE
  br i1 %.not.i.i.i52, label %_ZNK4llvm4Pass11getAnalysisINS_22AssumptionCacheTrackerEEERT_v.exit, label %.lr.ph.i.i.i49

_ZNK4llvm4Pass11getAnalysisINS_22AssumptionCacheTrackerEEERT_v.exit: ; preds = %.lr.ph.i.i.i49, %_ZNK4llvm4Pass11getAnalysisINS_30TargetTransformInfoWrapperPassEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i53 = phi ptr [ %i.bq, %_ZNK4llvm4Pass11getAnalysisINS_30TargetTransformInfoWrapperPassEEERT_v.exit ], [ %i.bu, %.lr.ph.i.i.i49 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i53, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = load ptr, ptr %i.bj, align 8, !tbaa !52
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !56
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !720
  %i.cc = tail call noundef nonnull align 8 dereferenceable(153) ptr @_ZN4llvm22AssumptionCacheTracker18getAssumptionCacheERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56) %i.bx, ptr noundef nonnull align 8 dereferenceable(140) %i.cb) #23
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !495 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1732 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1732 ; 2 uses
  %.not1114.i.i.i54 = icmp ne ptr %i.ce, %i.cg
  tail call void @llvm.assume(i1 %.not1114.i.i.i54)
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !1734
  %.not.i3.i.i55 = icmp eq ptr %i.ch, @_ZN4llvm28TargetLibraryInfoWrapperPass2IDE
  br i1 %.not.i3.i.i55, label %_ZNK4llvm4Pass11getAnalysisINS_28TargetLibraryInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i56

.lr.ph.i.i.i56:                                   ; preds = %_ZNK4llvm4Pass11getAnalysisINS_22AssumptionCacheTrackerEEERT_v.exit, %.lr.ph.i.i.i56
  %.sroa.08.015.i4.i.i57 = phi ptr [ %i.ci, %.lr.ph.i.i.i56 ], [ %i.ce, %_ZNK4llvm4Pass11getAnalysisINS_22AssumptionCacheTrackerEEERT_v.exit ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i57, i64 16 ; 4 uses
  %.not11.i.i.i58 = icmp ne ptr %i.ci, %i.cg
  tail call void @llvm.assume(i1 %.not11.i.i.i58)
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1734
  %.not.i.i.i59 = icmp eq ptr %i.cj, @_ZN4llvm28TargetLibraryInfoWrapperPass2IDE
  br i1 %.not.i.i.i59, label %_ZNK4llvm4Pass11getAnalysisINS_28TargetLibraryInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i56

_ZNK4llvm4Pass11getAnalysisINS_28TargetLibraryInfoWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i56, %_ZNK4llvm4Pass11getAnalysisINS_22AssumptionCacheTrackerEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i60 = phi ptr [ %i.ce, %_ZNK4llvm4Pass11getAnalysisINS_22AssumptionCacheTrackerEEERT_v.exit ], [ %i.ci, %.lr.ph.i.i.i56 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i60, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = load ptr, ptr %i.bj, align 8, !tbaa !52
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !56
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 72
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !720
  %i.cq = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN4llvm28TargetLibraryInfoWrapperPass6getTLIERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(344) %i.cl, ptr noundef nonnull align 8 dereferenceable(140) %i.cp)
  %i.cr = load ptr, ptr %i.b, align 8, !tbaa !495
  %i.cs = tail call noundef ptr @_ZNK4llvm16AnalysisResolver22getAnalysisIfAvailableEPKv(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull @_ZN4llvm20MemorySSAWrapperPass2IDE) #23 ; 2 uses
  %.not = icmp eq ptr %i.cs, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm4Pass11getAnalysisINS_28TargetLibraryInfoWrapperPassEEERT_v.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1737
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK4llvm4Pass11getAnalysisINS_28TargetLibraryInfoWrapperPassEEERT_v.exit
  %.0 = phi ptr [ %i.cu, %bb.c ], [ null, %_ZNK4llvm4Pass11getAnalysisINS_28TargetLibraryInfoWrapperPassEEERT_v.exit ]
  %i.cv = tail call fastcc noundef zeroext i1 @_ZL18ReduceLoopStrengthPN4llvm4LoopERNS_7IVUsersERNS_15ScalarEvolutionERNS_13DominatorTreeERNS_8LoopInfoERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_17TargetLibraryInfoEPNS_9MemorySSAEb(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(488) %i.bf, ptr noundef nonnull align 8 dereferenceable(1152) %i.be, ptr noundef nonnull align 8 dereferenceable(204) %i.bg, ptr noundef nonnull align 8 dereferenceable(184) %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull align 8 dereferenceable(153) %i.cc, ptr noundef nonnull align 8 dereferenceable(80) %i.cq, ptr noundef %.0, i1 noundef zeroext false)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.017 = phi i1 [ %i.cv, %bb.d ], [ false, %bb.a ]
  ret i1 %.017
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm8LoopPass16doInitializationEPNS_4LoopERNS_13LPPassManagerE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(513) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm8LoopPass14doFinalizationEv(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

declare noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #23
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !50
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !50
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !50
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm8LoopPass8skipLoopEPKNS_4LoopE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm30TargetTransformInfoWrapperPass6getTTIERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(153) ptr @_ZN4llvm22AssumptionCacheTracker18getAssumptionCacheERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(80) ptr @_ZN4llvm28TargetLibraryInfoWrapperPass6getTLIERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::AnalysisManager.1119", align 8 ; 13 uses
  %3 = alloca %"class.llvm::TargetLibraryInfo", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN4llvm15AnalysisManagerINS_8FunctionEJEEC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN4llvm21TargetLibraryAnalysis3runERKNS_8FunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::TargetLibraryInfo") align 8 %3, ptr noundef nonnull align 8 dereferenceable(224) %i.a, ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !1738, !range !18, !noundef !19
  %i.e = trunc nuw i8 %i.d to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false)
  br i1 %i.e, label %_ZNSt8optionalIN4llvm17TargetLibraryInfoEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 8, !tbaa !1738
  br label %_ZNSt8optionalIN4llvm17TargetLibraryInfoEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit

_ZNSt8optionalIN4llvm17TargetLibraryInfoEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1740 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt8optionalIN4llvm17TargetLibraryInfoEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1743
  %i.k = zext i32 %i.g to i64                     ; 2 uses
  %i.l = mul nuw nsw i64 %i.k, 24
  %i.m = add nuw nsw i64 %i.k, 31
  %i.n = lshr i64 %i.m, 3
  %i.o = and i64 %i.n, 1073741820
  %i.p = add nuw nsw i64 %i.o, %i.l
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.j, i64 noundef %i.p, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i

_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i: ; preds = %bb.c, %_ZNSt8optionalIN4llvm17TargetLibraryInfoEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !1744 ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !1747
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1748
  %i.x = zext i32 %i.s to i64
  %i.y = add nuw nsw i64 %i.x, 31
  %i.z = lshr i64 %i.y, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !478 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ac = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.d

bb.d:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.ab, %.lr.ph.i.i ], [ %i.aq, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ad = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.ae = or disjoint i32 %i.ad, %i.ac
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1749 ; 2 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.ai, %i.ah
  br i1 %.not8.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.aj, %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i ], [ %i.ai, %bb.d ] ; 3 uses
  %i.aj = load ptr, ptr %.09.i.i.i.i.i, align 8, !tbaa !1749 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1752 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.al) #23, !inline_history !1754
  br label %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i

_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i, i64 noundef 32) #25
  %.not.i.i.i.i.i2 = icmp eq ptr %i.aj, %i.ah
  br i1 %.not.i.i.i.i.i2, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1755

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i, %bb.d
  %i.ap = add i32 %.0.i3.i.i, -1
  %i.aq = and i32 %i.ap, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !1756

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.z
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1757

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.r, align 4, !tbaa !1744 ; 2 uses
  %i.ar = icmp eq i32 %.pr.i, 0
  br i1 %i.ar, label %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !1747
  %i.at = zext i32 %.pr.i to i64                  ; 2 uses
  %i.au = shl nuw nsw i64 %i.at, 5
  %i.av = add nuw nsw i64 %i.at, 31
  %i.aw = lshr i64 %i.av, 3
  %i.ax = and i64 %i.aw, 1073741820
  %i.ay = add nuw nsw i64 %i.ax, %i.au
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.as, i64 noundef %i.ay, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i, %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !1758 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit
  %i.bc = load ptr, ptr %2, align 8, !tbaa !1761
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1762
  %i.bf = zext i32 %i.ba to i64
  %i.bg = add nuw nsw i64 %i.bf, 31
  %i.bh = lshr i64 %i.bg, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i.i.i
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !478 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.bk = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.bj, %.lr.ph.i.i.i ], [ %i.bv, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.bl = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.bm = or disjoint i32 %i.bl, %i.bk
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1763 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bq) #23, !inline_history !1765
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i, %bb.f
  %i.bu = add i32 %.0.i3.i.i.i, -1
  %i.bv = and i32 %i.bu, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.f, !llvm.loop !1766

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.bh
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !1767

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.az, align 4, !tbaa !1758 ; 2 uses
  %i.bw = icmp eq i32 %.pr.i.i, 0
  br i1 %i.bw, label %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i
  %i.bx = load ptr, ptr %2, align 8, !tbaa !1761
  %i.by = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.bz = shl nuw nsw i64 %i.by, 4
  %i.ca = add nuw nsw i64 %i.by, 31
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = and i64 %i.cb, 1073741820
  %i.cd = add nuw nsw i64 %i.cc, %i.bz
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bx, i64 noundef %i.cd, i64 noundef 8) #23
  br label %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit

_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret ptr %i.b
}

declare void @_ZN4llvm15AnalysisManagerINS_8FunctionEJEEC1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #4

declare void @_ZN4llvm21TargetLibraryAnalysis3runERKNS_8FunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::TargetLibraryInfo") align 8, ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(140), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm16AnalysisResolver22getAnalysisIfAvailableEPKv(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !1768, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !1768, !range !18, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !18
  %i.j = load i8, ptr %i.d, align 8, !range !18
  %i.k = icmp eq i8 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64) local_unnamed_addr #4

declare void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm2cl11ValuesClass5applyINS0_3optINS_19TargetTransformInfo18AddressingModeKindELb0ENS0_6parserIS5_EEEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(592) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::cl::parser<llvm::TargetTransformInfo::AddressingModeKind>::OptionInfo", align 8 ; 14 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !50   ; 2 uses
  %i.d = zext i32 %i.c to i64
  %.idx = mul nuw nsw i64 %i.d, 40
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %.not13 = icmp eq i32 %i.c, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.m = ptrtoint ptr %2 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 152
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm2cl6parserINS_19TargetTransformInfo18AddressingModeKindEE16addLiteralOptionIiEEvNS_9StringRefERKT_S6_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm2cl6parserINS_19TargetTransformInfo18AddressingModeKindEE16addLiteralOptionIiEEvNS_9StringRefERKT_S6_.exit
  %.014 = phi ptr [ %i.a, %.lr.ph ], [ %i.am, %_ZN4llvm2cl6parserINS_19TargetTransformInfo18AddressingModeKindEE16addLiteralOptionIiEEvNS_9StringRefERKT_S6_.exit ] ; 6 uses
  %.sroa.01.0.copyload = load ptr, ptr %.014, align 8, !tbaa !488 ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !157 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.014, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.p, align 8, !tbaa !488
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.014, i64 32
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.q = load i32, ptr %i.o, align 8, !tbaa !478
  store ptr %.sroa.01.0.copyload, ptr %2, align 8, !tbaa !488
  store i64 %.sroa.22.0.copyload, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !157
  store ptr %.sroa.0.0.copyload, ptr %i.f, align 8, !tbaa !488
  store i64 %.sroa.2.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !157
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueINS_19TargetTransformInfo18AddressingModeKindEEE, i64 16), ptr %i.g, align 8, !tbaa !8
  store i8 1, ptr %i.h, align 4, !tbaa !541
  store i32 %i.q, ptr %i.i, align 8, !tbaa !542
  %i.r = load i32, ptr %i.k, align 8, !tbaa !50   ; 2 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %i.u = load i32, ptr %i.l, align 4, !tbaa !51
  %.not.i.i.not.i.i = icmp ult i32 %i.r, %i.u
  %.pre3.i.i = load ptr, ptr %i.j, align 8, !tbaa !21 ; 4 uses
  br i1 %.not.i.i.not.i.i, label %_ZN4llvm2cl6parserINS_19TargetTransformInfo18AddressingModeKindEE16addLiteralOptionIiEEvNS_9StringRefERKT_S6_.exit, label %bb.c, !prof !166

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %.pre3.i.i, i64 %i.s
  %i.w = icmp uge ptr %2, %.pre3.i.i
  %i.x = icmp ult ptr %2, %i.v
  %spec.select.i.i.i.i.i.i = and i1 %i.w, %i.x
  br i1 %spec.select.i.i.i.i.i.i, label %bb.d, label %.critedge.i.i.i.i, !prof !167

bb.d:                                             ; preds = %bb.c
  %i.y = ptrtoint ptr %.pre3.i.i to i64
  %i.z = sub i64 %i.m, %i.y
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_2cl6parserINS_19TargetTransformInfo18AddressingModeKindEE10OptionInfoELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 noundef %i.t)
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !21  ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.z
  br label %_ZN4llvm2cl6parserINS_19TargetTransformInfo18AddressingModeKindEE16addLiteralOptionIiEEvNS_9StringRefERKT_S6_.exit

.critedge.i.i.i.i:                                ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_2cl6parserINS_19TargetTransformInfo18AddressingModeKindEE10OptionInfoELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 noundef %i.t)
  %.pre.i.i = load ptr, ptr %i.j, align 8, !tbaa !21
  br label %_ZN4llvm2cl6parserINS_19TargetTransformInfo18AddressingModeKindEE16addLiteralOptionIiEEvNS_9StringRefERKT_S6_.exit

_ZN4llvm2cl6parserINS_19TargetTransformInfo18AddressingModeKindEE16addLiteralOptionIiEEvNS_9StringRefERKT_S6_.exit: ; preds = %bb.b, %bb.d, %.critedge.i.i.i.i
  %i.ac = phi ptr [ %.pre3.i.i, %bb.b ], [ %i.aa, %bb.d ], [ %.pre.i.i, %.critedge.i.i.i.i ]
  %.016.i.i.i.i = phi ptr [ %2, %bb.b ], [ %i.ab, %bb.d ], [ %2, %.critedge.i.i.i.i ] ; 2 uses
  %i.ad = load i32, ptr %i.k, align 8, !tbaa !50
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.ac, i64 %i.ae ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %.016.i.i.i.i, i64 32, i1 false), !tbaa.struct !1769
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl15OptionValueCopyINS_19TargetTransformInfo18AddressingModeKindEEE, i64 16), ptr %i.ag, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ah, ptr noundef nonnull align 8 dereferenceable(5) %i.ai, i64 5, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueINS_19TargetTransformInfo18AddressingModeKindEEE, i64 16), ptr %i.ag, align 8, !tbaa !8
  %i.aj = load i32, ptr %i.k, align 8, !tbaa !50
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.k, align 8, !tbaa !50
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !504, !nonnull !19, !align !34
  call void @_ZN4llvm2cl16AddLiteralOptionERNS0_6OptionENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %i.al, ptr %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.am = getelementptr inbounds nuw i8, ptr %.014, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.am, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare void @_ZN4llvm2cl16AddLiteralOptionERNS0_6OptionENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm23SmallVectorTemplateBaseINS_2cl6parserINS_19TargetTransformInfo18AddressingModeKindEE10OptionInfoELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef %1, i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #23 ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !21     ; 6 uses
end_hunk_20

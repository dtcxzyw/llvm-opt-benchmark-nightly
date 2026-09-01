Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ISelLowering?download=true
inline.NumInlined: 54009
inline.NumDeleted: 7556
loop-unroll.NumCompletelyUnrolled: 255
loop-unroll.NumRuntimeUnrolled: 77
loop-unroll.NumUnrolled: 338
begin_hunk_0_@_ZL23combineExtractVectorEltPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetE:bb.a
bb.in:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.i.i
  %i.amc = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %67) #39
  %i.amd = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %67) #39
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit156.i.i.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit156.i.i.i:     ; preds = %bb.in, %bb.im
  %.pn42.i.i.i = phi i32 [ %i.alz, %bb.im ], [ %i.amc, %bb.in ]
  %.pn.i155.i.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i154.i.i.i, %bb.im ], [ %i.amd, %bb.in ] ; 2 uses
  %.fca.1.extract19.i.i.i = extractvalue { i64, i8 } %.pn.i155.i.i.i, 1
  %i.ame = trunc nuw i8 %.fca.1.extract19.i.i.i to i1
  br i1 %i.ame, label %bb.io, label %_ZNK4llvm8TypeSizecvmEv.exit157.i.i.i

bb.io:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit156.i.1.i.i, %_ZNK4llvm3EVT13getSizeInBitsEv.exit156.i.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #40
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit157.i.i.i:            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit156.i.i.i
  %.fca.0.extract18.i.i.i = extractvalue { i64, i8 } %.pn.i155.i.i.i, 0
  %i.amf = udiv i32 %.pn42.i.i.i, %.0.i.i.i614
  %i.amg = udiv i64 %.fca.0.extract18.i.i.i, %i.akm
  %i.amh = trunc i64 %i.amg to i32
  %i.ami = mul i32 %i.amf, %.08146.i.i.i
  %i.amj = call fastcc { ptr, i32 } @_ZL16extractSubVectorN4llvm7SDValueEjRNS_12SelectionDAGERKNS_5SDLocEj(ptr nonnull %.fca.0.extract23.i.i, i32 %.fca.1.extract24.i.i, i32 noundef %i.ami, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %81, i32 noundef %i.amh) ; 2 uses
  %.fca.0.extract10.i.i.i = extractvalue { ptr, i32 } %i.amj, 0 ; 2 uses
  %.fca.1.extract11.i.i.i = extractvalue { ptr, i32 } %i.amj, 1 ; 2 uses
  %i.amk = load i32, ptr %i.akj, align 8, !tbaa !630 ; 2 uses
  %i.aml = load i32, ptr %i.akk, align 4, !tbaa !631
  %.not.i158.i.i.i = icmp ult i32 %i.amk, %i.aml
  br i1 %.not.i158.i.i.i, label %bb.iq, label %bb.ip, !prof !632

bb.ip:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit157.i.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %66, ptr %.fca.0.extract10.i.i.i, i32 %.fca.1.extract11.i.i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit160.i.i.i

bb.iq:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit157.i.i.i
  %i.amm = zext i32 %i.amk to i64
  %i.amn = load ptr, ptr %66, align 8, !tbaa !26
  %i.amo = getelementptr inbounds nuw [16 x i8], ptr %i.amn, i64 %i.amm ; 2 uses
  store ptr %.fca.0.extract10.i.i.i, ptr %i.amo, align 1
  %.sroa.32.0..sroa_idx.i159.i.i.i = getelementptr inbounds nuw i8, ptr %i.amo, i64 8
  store i32 %.fca.1.extract11.i.i.i, ptr %.sroa.32.0..sroa_idx.i159.i.i.i, align 1
  %i.amp = load i32, ptr %i.akj, align 8, !tbaa !630
  %i.amq = add i32 %i.amp, 1
  store i32 %i.amq, ptr %i.akj, align 8, !tbaa !630
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit160.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit160.i.i.i: ; preds = %bb.iq, %bb.ip
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #38
  %i.amr = load ptr, ptr %i.akq, align 8, !tbaa !454
  %i.ams = getelementptr inbounds nuw [16 x i8], ptr %i.amr, i64 %i.akr ; 2 uses
  %.sroa.0.0.copyload.i.i146.i.1.i.i = load i16, ptr %i.ams, align 8, !tbaa !299 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i.i.1.i.i = getelementptr inbounds nuw i8, ptr %i.ams, i64 8
  %.sroa.21.0.copyload.i.i.i.1.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.1.i.i, align 8, !tbaa !455
  store i16 %.sroa.0.0.copyload.i.i146.i.1.i.i, ptr %67, align 8
  store ptr %.sroa.21.0.copyload.i.i.i.1.i.i, ptr %i.akl, align 8
  %.not.i.i.i.1.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i146.i.1.i.i, 0
  br i1 %.not.i.i.i.1.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.1.i.i, label %.split.i.i.1.i.i

.split.i.i.1.i.i:                                 ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit160.i.i.i
  %i.amt = add i16 %.sroa.0.0.copyload.i.i146.i.1.i.i, -163
  %spec.select.i.i.i.i.1.i.i = icmp ult i16 %i.amt, 53
  br i1 %spec.select.i.i.i.i.1.i.i, label %bb.il, label %bb.ir

bb.ir:                                            ; preds = %.split.i.i.1.i.i
  %i.amu = zext i16 %.sroa.0.0.copyload.i.i146.i.1.i.i to i64 ; 2 uses
  %i.amv = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.amu
  %i.amw = getelementptr i8, ptr %i.amv, i64 -2
  %i.amx = load i16, ptr %i.amw, align 2, !tbaa !294
  %i.amy = zext i16 %i.amx to i32
  %i.amz = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.amu ; 2 uses
  %i.ana = getelementptr i8, ptr %i.amz, i64 -16
  %.sroa.0.0.copyload.i.i150.i.1.i.i = load i64, ptr %i.ana, align 16
  %.sroa.2.0..sroa_idx.i.i151.i.1.i.i = getelementptr i8, ptr %i.amz, i64 -8
  %.sroa.2.0.copyload.i.i152.i.1.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i151.i.1.i.i, align 8
  %.fca.0.insert.i.i153.i.1.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i150.i.1.i.i, 0
  %.fca.1.insert.i.i154.i.1.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i153.i.1.i.i, i8 %.sroa.2.0.copyload.i.i152.i.1.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit156.i.1.i.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.1.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit160.i.i.i
  %i.anb = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %67) #39
  br i1 %i.anb, label %bb.il, label %bb.is

bb.is:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.1.i.i
  %i.anc = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %67) #39
  %i.and = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %67) #39
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit156.i.1.i.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit156.i.1.i.i:   ; preds = %bb.is, %bb.ir
  %.pn42.i.1.i.i = phi i32 [ %i.amy, %bb.ir ], [ %i.anc, %bb.is ]
  %.pn.i155.i.1.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i154.i.1.i.i, %bb.ir ], [ %i.and, %bb.is ] ; 2 uses
  %.fca.1.extract19.i.1.i.i = extractvalue { i64, i8 } %.pn.i155.i.1.i.i, 1
  %i.ane = trunc nuw i8 %.fca.1.extract19.i.1.i.i to i1
  br i1 %i.ane, label %bb.io, label %_ZNK4llvm8TypeSizecvmEv.exit157.i.1.i.i

_ZNK4llvm8TypeSizecvmEv.exit157.i.1.i.i:          ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit156.i.1.i.i
  %.fca.0.extract18.i.1.i.i = extractvalue { i64, i8 } %.pn.i155.i.1.i.i, 0
  %i.anf = udiv i32 %.pn42.i.1.i.i, %.0.i.i.i614
  %i.ang = udiv i64 %.fca.0.extract18.i.1.i.i, %i.akm
  %i.anh = trunc i64 %i.ang to i32
  %i.ani = mul i32 %i.anf, %.08146.i.i.i
  %i.anj = call fastcc { ptr, i32 } @_ZL16extractSubVectorN4llvm7SDValueEjRNS_12SelectionDAGERKNS_5SDLocEj(ptr nonnull %.fca.0.extract5.i.i, i32 %.fca.1.extract6.i.i, i32 noundef %i.ani, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %81, i32 noundef %i.anh) ; 2 uses
  %.fca.0.extract10.i.1.i.i = extractvalue { ptr, i32 } %i.anj, 0 ; 2 uses
  %.fca.1.extract11.i.1.i.i = extractvalue { ptr, i32 } %i.anj, 1 ; 2 uses
  %i.ank = load i32, ptr %i.akj, align 8, !tbaa !630 ; 2 uses
  %i.anl = load i32, ptr %i.akk, align 4, !tbaa !631
  %.not.i158.i.1.i.i = icmp ult i32 %i.ank, %i.anl
  br i1 %.not.i158.i.1.i.i, label %bb.iu, label %bb.it, !prof !632

bb.it:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit157.i.1.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %66, ptr %.fca.0.extract10.i.1.i.i, i32 %.fca.1.extract11.i.1.i.i)
  %.pre50.i.pre.i.i = load i32, ptr %i.akj, align 8, !tbaa !630
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit160.i.1.i.i

bb.iu:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit157.i.1.i.i
  %i.anm = zext i32 %i.ank to i64
  %i.ann = load ptr, ptr %66, align 8, !tbaa !26
  %i.ano = getelementptr inbounds nuw [16 x i8], ptr %i.ann, i64 %i.anm ; 2 uses
  store ptr %.fca.0.extract10.i.1.i.i, ptr %i.ano, align 1
  %.sroa.32.0..sroa_idx.i159.i.1.i.i = getelementptr inbounds nuw i8, ptr %i.ano, i64 8
  store i32 %.fca.1.extract11.i.1.i.i, ptr %.sroa.32.0..sroa_idx.i159.i.1.i.i, align 1
  %i.anp = load i32, ptr %i.akj, align 8, !tbaa !630
  %i.anq = add i32 %i.anp, 1                      ; 2 uses
  store i32 %i.anq, ptr %i.akj, align 8, !tbaa !630
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit160.i.1.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit160.i.1.i.i: ; preds = %bb.iu, %bb.it
  %.pre50.i.i.i = phi i32 [ %i.anq, %bb.iu ], [ %.pre50.i.pre.i.i, %bb.it ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #38
  %.pre.i.i.i = load ptr, ptr %66, align 8, !tbaa !26 ; 3 uses
  %i.anr = zext i32 %.pre50.i.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %61)
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #38
  %i.ans = load ptr, ptr %.pre.i.i.i, align 8, !tbaa !457
  %i.ant = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 8
  %i.anu = load i32, ptr %i.ant, align 8, !tbaa !451
  %i.anv = getelementptr inbounds nuw i8, ptr %i.ans, i64 48
  %i.anw = load ptr, ptr %i.anv, align 8, !tbaa !454
  %i.anx = zext i32 %i.anu to i64
  %i.any = getelementptr inbounds nuw [16 x i8], ptr %i.anw, i64 %i.anx ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i130.i.i.i = load i16, ptr %i.any, align 8, !tbaa !299 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i.i.i131.i.i.i = getelementptr inbounds nuw i8, ptr %i.any, i64 8
  %.sroa.21.0.copyload.i.i.i.i132.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i131.i.i.i, align 8, !tbaa !455
  store i16 %.sroa.0.0.copyload.i.i.i.i130.i.i.i, ptr %60, align 8
  store ptr %.sroa.21.0.copyload.i.i.i.i132.i.i.i, ptr %i.akn, align 8
  %.not.i.i.i133.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i130.i.i.i, 0
  br i1 %.not.i.i.i133.i.i.i, label %bb.if, label %bb.ie

"_Z16SplitOpsAndApplyIZL12createPSADBWRN4llvm12SelectionDAGENS0_7SDValueES3_RKNS0_5SDLocERKNS0_12X86SubtargetEE3$_0ES3_S2_S9_S6_NS0_3EVTENS0_8ArrayRefIS3_EET_bb.exit.i.i": ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit.i.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i.i
  %.pn.i103.i.i = phi { ptr, i32 } [ %i.ake, %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i.i ], [ %i.akw, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %64)
  call void @llvm.lifetime.end.p0(ptr nonnull %68)
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #38
  %i.anz = load ptr, ptr %71, align 8, !tbaa !26  ; 2 uses
  %i.aoa = icmp eq ptr %i.anz, %i.afx
  br i1 %i.aoa, label %_ZL12createPSADBWRN4llvm12SelectionDAGENS_7SDValueES2_RKNS_5SDLocERKNS_12X86SubtargetE.exit.i, label %bb.iv

bb.iv:                                            ; preds = %"_Z16SplitOpsAndApplyIZL12createPSADBWRN4llvm12SelectionDAGENS0_7SDValueES3_RKNS0_5SDLocERKNS0_12X86SubtargetEE3$_0ES3_S2_S9_S6_NS0_3EVTENS0_8ArrayRefIS3_EET_bb.exit.i.i"
  call void @free(ptr noundef %i.anz) #38
  br label %_ZL12createPSADBWRN4llvm12SelectionDAGENS_7SDValueES2_RKNS_5SDLocERKNS_12X86SubtargetE.exit.i

_ZL12createPSADBWRN4llvm12SelectionDAGENS_7SDValueES2_RKNS_5SDLocERKNS_12X86SubtargetE.exit.i: ; preds = %bb.iv, %"_Z16SplitOpsAndApplyIZL12createPSADBWRN4llvm12SelectionDAGENS0_7SDValueES3_RKNS0_5SDLocERKNS0_12X86SubtargetEE3$_0ES3_S2_S9_S6_NS0_3EVTENS0_8ArrayRefIS3_EET_bb.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %72)
  call void @llvm.lifetime.end.p0(ptr nonnull %73)
  %.fca.0.extract70.i = extractvalue { ptr, i32 } %.pn.i103.i.i, 0 ; 4 uses
  %.fca.1.extract71.i = extractvalue { ptr, i32 } %.pn.i103.i.i, 1 ; 4 uses
  %i.aob = load i16, ptr %77, align 8, !tbaa !642 ; 3 uses
  %.not.i.i122.i = icmp eq i16 %i.aob, 0
  br i1 %.not.i.i122.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i126.i, label %.split.i123.i

.split.i123.i:                                    ; preds = %_ZL12createPSADBWRN4llvm12SelectionDAGENS_7SDValueES2_RKNS_5SDLocERKNS_12X86SubtargetE.exit.i
  %i.aoc = add i16 %i.aob, -163
  %spec.select.i.i.i124.i = icmp ult i16 %i.aoc, 53
  br i1 %spec.select.i.i.i124.i, label %bb.iw, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i125.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i126.i:    ; preds = %_ZL12createPSADBWRN4llvm12SelectionDAGENS_7SDValueES2_RKNS_5SDLocERKNS_12X86SubtargetE.exit.i
  %i.aod = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %77) #39
  br i1 %i.aod, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i126.i, %.split.i123.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.86) #40
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i125.i: ; preds = %.split.i123.i
  %i.aoe = zext i16 %i.aob to i64
  %i.aof = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.aoe
  %i.aog = getelementptr i8, ptr %i.aof, i64 -2
  %i.aoh = load i16, ptr %i.aog, align 2, !tbaa !294
  %i.aoi = zext i16 %i.aoh to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit127.i

bb.ix:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i126.i
  %i.aoj = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %77) #39
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit127.i

_ZNK4llvm3EVT20getVectorNumElementsEv.exit127.i:  ; preds = %bb.ix, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i125.i
  %i.aok = phi i32 [ %i.aoi, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i125.i ], [ %i.aoj, %bb.ix ]
  %i.aol = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aok, i1 false) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #38
  %i.aom = getelementptr inbounds nuw i8, ptr %.fca.0.extract70.i, i64 48
  %i.aon = load ptr, ptr %i.aom, align 8, !tbaa !454
  %i.aoo = zext i32 %.fca.1.extract71.i to i64
  %i.aop = getelementptr inbounds nuw [16 x i8], ptr %i.aon, i64 %i.aoo ; 2 uses
  %.sroa.0.0.copyload.i.i128.i = load i16, ptr %i.aop, align 8, !tbaa !299 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i129.i = getelementptr inbounds nuw i8, ptr %i.aop, i64 8
  %.sroa.21.0.copyload.i.i130.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i129.i, align 8, !tbaa !455
  store i16 %.sroa.0.0.copyload.i.i128.i, ptr %82, align 8
  %i.aoq = getelementptr inbounds nuw i8, ptr %82, i64 8 ; 3 uses
  store ptr %.sroa.21.0.copyload.i.i130.i, ptr %i.aoq, align 8
  %i.aor = and i32 %i.aol, 60
  %.not443.i = icmp eq i32 %i.aor, 28
  br i1 %.not443.i, label %.loopexit.i, label %bb.iy

bb.iy:                                            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit127.i
  %.not.i.i133.i = icmp eq i16 %.sroa.0.0.copyload.i.i128.i, 0
  br i1 %.not.i.i133.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i137.i, label %.split.i134.i

.split.i134.i:                                    ; preds = %bb.iy
  %i.aos = add i16 %.sroa.0.0.copyload.i.i128.i, -163
  %spec.select.i.i.i135.i = icmp ult i16 %i.aos, 53
  br i1 %spec.select.i.i.i135.i, label %bb.iz, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i136.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i137.i:    ; preds = %bb.iy
  %i.aot = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %82) #39
  br i1 %i.aot, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i137.i, %.split.i134.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.86) #40
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i136.i: ; preds = %.split.i134.i
  %i.aou = zext i16 %.sroa.0.0.copyload.i.i128.i to i64
  %i.aov = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.aou
  %i.aow = getelementptr i8, ptr %i.aov, i64 -2
  %i.aox = load i16, ptr %i.aow, align 2, !tbaa !294
  %i.aoy = zext i16 %i.aox to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit138.i

bb.ja:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i137.i
  %i.aoz = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %82) #39
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit138.i

_ZNK4llvm3EVT20getVectorNumElementsEv.exit138.i:  ; preds = %bb.ja, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i136.i
  %i.apa = phi i32 [ %i.aoy, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i136.i ], [ %i.aoz, %bb.ja ] ; 4 uses
  %.not447.i = icmp eq i32 %i.aol, 28
  br i1 %.not447.i, label %.loopexit.i, label %.lr.ph.i601

.lr.ph.i601:                                      ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit138.i
  %i.apb = sub nsw i32 28, %i.aol
  %i.apc = zext i32 %i.apa to i64                 ; 2 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %83, i64 16 ; 5 uses
  %i.ape = getelementptr inbounds nuw i8, ptr %83, i64 8 ; 3 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %83, i64 12
  %i.apg = icmp ugt i32 %i.apa, 16
  %.not.i139.i = icmp eq i32 %i.apa, 0
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.apc, 2
  %.sroa.245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %84, i64 8
  %i.aph = getelementptr inbounds nuw i8, ptr %85, i64 8
  %.sroa.10.0..sroa_idx.i602 = getelementptr inbounds nuw i8, ptr %86, i64 8
  %.sroa.456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %87, i64 8
  br label %bb.jb

bb.jb:                                            ; preds = %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit.i605, %.lr.ph.i601
  %.0450.i = phi i32 [ %i.apb, %.lr.ph.i601 ], [ %i.apk, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit.i605 ]
  %.sroa.0161.0449.i = phi ptr [ %.fca.0.extract70.i, %.lr.ph.i601 ], [ %.fca.0.extract28.i, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit.i605 ] ; 2 uses
  %.sroa.10.0448.i = phi i32 [ %.fca.1.extract71.i, %.lr.ph.i601 ], [ %.fca.1.extract29.i, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit.i605 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #38
  store ptr %i.apd, ptr %83, align 8, !tbaa !26
  store i32 0, ptr %i.ape, align 8, !tbaa !630
  store i32 16, ptr %i.apf, align 4, !tbaa !631
  br i1 %i.apg, label %_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.loopexit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i.i

_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.loopexit.i: ; preds = %bb.jb
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %83, ptr noundef nonnull %i.apd, i64 noundef %i.apc, i64 noundef 4) #38
  %i.api = load ptr, ptr %83, align 8, !tbaa !26
  br label %_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.sink.split.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i.i:        ; preds = %bb.jb
  br i1 %.not.i139.i, label %_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.i, label %_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.sink.split.i

_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.sink.split.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i.i, %_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.loopexit.i
  %.sink.i = phi ptr [ %i.api, %_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.loopexit.i ], [ %i.apd, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %.sink.i, i8 -1, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !189
  br label %_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.i

_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.i:      ; preds = %_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.sink.split.i, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i.i
  %i.apj = phi ptr [ %i.apd, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i.i ], [ %.sink.i, %_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.sink.split.i ] ; 2 uses
  store i32 %i.apa, ptr %i.ape, align 8, !tbaa !630
  %i.apk = add i32 %.0450.i, -1                   ; 4 uses
  %i.apl = shl nuw i32 1, %i.apk                  ; 3 uses
  %wide.trip.count.i = zext i32 %i.apl to i64     ; 2 uses
  %min.iters.check = icmp ult i32 %i.apk, 3
  br i1 %min.iters.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.i
  %n.vec = and i64 %wide.trip.count.i, 4294967288
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.apl, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %148 = add <4 x i32> %broadcast.splat, %vec.ind
  %.reass.a = add <4 x i32> %vec.ind, %invariant.op
  %149 = getelementptr inbounds nuw [4 x i8], ptr %i.apj, i64 %index ; 2 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %149, i64 16
  store <4 x i32> %148, ptr %149, align 4, !tbaa !189
  store <4 x i32> %.reass.a, ptr %i.apm, align 4, !tbaa !189
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.apn = icmp eq i64 %index.next, %n.vec
  br i1 %i.apn, label %middle.block, label %vector.body, !llvm.loop !3186

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %.sroa.052.0.copyload.i = load i16, ptr %82, align 8, !tbaa !299 ; 2 uses
  %.sroa.254.0.copyload.i = load ptr, ptr %i.aoq, align 8, !tbaa !455 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %59, i8 0, i64 16, i1 false)
  %i.apo = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %59, i16 %.sroa.052.0.copyload.i, ptr %.sroa.254.0.copyload.i) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #38
  %.fca.0.extract42.i = extractvalue { ptr, i32 } %i.apo, 0
  %.fca.1.extract43.i = extractvalue { ptr, i32 } %i.apo, 1
  store ptr %.fca.0.extract42.i, ptr %84, align 8
  store i32 %.fca.1.extract43.i, ptr %.sroa.245.0..sroa_idx.i, align 8
  %i.app = load ptr, ptr %83, align 8, !tbaa !26
  store ptr %i.app, ptr %85, align 8, !tbaa !783
  %i.apq = load i32, ptr %i.ape, align 8, !tbaa !630
  %i.apr = zext i32 %i.apq to i64
  store i64 %i.apr, ptr %i.aph, align 8, !tbaa !785
  %i.aps = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %.sroa.052.0.copyload.i, ptr %.sroa.254.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(12) %81, ptr %.sroa.0161.0449.i, i32 %.sroa.10.0448.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %84, ptr noundef nonnull byval(%"class.llvm::ArrayRef.421") align 8 %85) #38 ; 2 uses
  %.fca.0.extract38.i = extractvalue { ptr, i32 } %i.aps, 0
  %.fca.1.extract39.i = extractvalue { ptr, i32 } %i.aps, 1
  %.sroa.032.0.copyload.i = load i16, ptr %82, align 8, !tbaa !299
  %.sroa.234.0.copyload.i = load ptr, ptr %i.aoq, align 8, !tbaa !455
  store ptr %.sroa.0161.0449.i, ptr %86, align 8, !tbaa !449
  store i32 %.sroa.10.0448.i, ptr %.sroa.10.0..sroa_idx.i602, align 8, !tbaa !189
  store ptr %.fca.0.extract38.i, ptr %87, align 8, !tbaa !449
  store i32 %.fca.1.extract39.i, ptr %.sroa.456.0..sroa_idx.i, align 8, !tbaa !189
  %i.apt = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %81, i16 %.sroa.032.0.copyload.i, ptr %.sroa.234.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %86, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %87) #38 ; 2 uses
  %.fca.0.extract28.i = extractvalue { ptr, i32 } %i.apt, 0 ; 2 uses
  %.fca.1.extract29.i = extractvalue { ptr, i32 } %i.apt, 1 ; 2 uses
  %i.apu = load ptr, ptr %83, align 8, !tbaa !26  ; 2 uses
  %i.apv = icmp eq ptr %i.apu, %i.apd
  br i1 %i.apv, label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit.i605, label %bb.jc

bb.jc:                                            ; preds = %middle.block
  call void @free(ptr noundef %i.apu) #38
  br label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit.i605

_ZN4llvm11SmallVectorIiLj16EED2Ev.exit.i605:      ; preds = %bb.jc, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #38
  %.not.i606 = icmp eq i32 %i.apk, 0
  br i1 %.not.i606, label %.loopexit.i, label %bb.jb, !llvm.loop !3187

scalar.ph:                                        ; preds = %_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.i, %scalar.ph
  %indvars.iv.i603 = phi i64 [ %indvars.iv.next.i604, %scalar.ph ], [ 0, %_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.i ] ; 3 uses
  %150 = trunc nuw i64 %indvars.iv.i603 to i32
  %151 = add i32 %i.apl, %150
  %152 = getelementptr inbounds nuw [4 x i8], ptr %i.apj, i64 %indvars.iv.i603
  store i32 %151, ptr %152, align 4, !tbaa !189
  %indvars.iv.next.i604 = add nuw nsw i64 %indvars.iv.i603, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i604, %wide.trip.count.i
  br i1 %exitcond.not.i, label %middle.block, label %scalar.ph, !llvm.loop !3188

.loopexit.i:                                      ; preds = %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit.i605, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit138.i, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit127.i
  %.sroa.10.1.i = phi i32 [ %.fca.1.extract71.i, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit127.i ], [ %.fca.1.extract71.i, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit138.i ], [ %.fca.1.extract29.i, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit.i605 ]
  %.sroa.0161.1.i = phi ptr [ %.fca.0.extract70.i, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit127.i ], [ %.fca.0.extract70.i, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit138.i ], [ %.fca.0.extract28.i, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit.i605 ]
  %i.apw = load i16, ptr %76, align 8, !tbaa !642 ; 4 uses
  %.not.i140.i = icmp eq i16 %i.apw, 0
  br i1 %.not.i140.i, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %.loopexit.i
  %i.apx = zext i16 %i.apw to i64
  %i.apy = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.apx ; 2 uses
  %i.apz = getelementptr i8, ptr %i.apy, i64 -16
  %.sroa.0.0.copyload.i.i141.i = load i64, ptr %i.apz, align 16
  %.sroa.2.0..sroa_idx.i.i.i607 = getelementptr i8, ptr %i.apy, i64 -8
  %.sroa.2.0.copyload.i.i.i608 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i607, align 8
  %.fca.0.insert.i.i142.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i141.i, 0
  %.fca.1.insert.i.i143.i = insertvalue { i64, i8 } %.fca.0.insert.i.i142.i, i8 %.sroa.2.0.copyload.i.i.i608, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i609

bb.je:                                            ; preds = %.loopexit.i
  %i.aqa = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %76) #39
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i609

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i609:         ; preds = %bb.je, %bb.jd
  %.pn.i.i610 = phi { i64, i8 } [ %.fca.1.insert.i.i143.i, %bb.jd ], [ %i.aqa, %bb.je ] ; 2 uses
  %.fca.0.extract24.i = extractvalue { i64, i8 } %.pn.i.i610, 0
  %.fca.1.extract25.i = extractvalue { i64, i8 } %.pn.i.i610, 1
  %i.aqb = trunc nuw i8 %.fca.1.extract25.i to i1
  br i1 %i.aqb, label %bb.jf, label %_ZNK4llvm8TypeSizecvmEv.exit.i611

bb.jf:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i609
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #40
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i611:                ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i609
  %i.aqc = load ptr, ptr %i.aer, align 8, !tbaa !787
  %.sroa.220.0.copyload.i = load ptr, ptr %i.acx, align 8, !tbaa !455
  %i.aqd = load i16, ptr %82, align 8, !tbaa !642 ; 2 uses
  %.not.i144.i = icmp eq i16 %i.aqd, 0
  br i1 %.not.i144.i, label %bb.jh, label %bb.jg

bb.jg:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i611
  %i.aqe = zext i16 %i.aqd to i64
  %i.aqf = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.aqe ; 2 uses
  %i.aqg = getelementptr i8, ptr %i.aqf, i64 -16
  %.sroa.0.0.copyload.i.i145.i = load i64, ptr %i.aqg, align 16
  %.sroa.2.0..sroa_idx.i.i146.i = getelementptr i8, ptr %i.aqf, i64 -8
  %.sroa.2.0.copyload.i.i147.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i146.i, align 8
  %.fca.0.insert.i.i148.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i145.i, 0
  %.fca.1.insert.i.i149.i = insertvalue { i64, i8 } %.fca.0.insert.i.i148.i, i8 %.sroa.2.0.copyload.i.i147.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit151.i

bb.jh:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i611
  %i.aqh = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %82) #39
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit151.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit151.i:         ; preds = %bb.jh, %bb.jg
  %.pn.i150.i = phi { i64, i8 } [ %.fca.1.insert.i.i149.i, %bb.jg ], [ %i.aqh, %bb.jh ] ; 2 uses
  %.fca.1.extract15.i = extractvalue { i64, i8 } %.pn.i150.i, 1
  %i.aqi = trunc nuw i8 %.fca.1.extract15.i to i1
  br i1 %i.aqi, label %bb.ji, label %_ZNK4llvm8TypeSizecvmEv.exit152.i

bb.ji:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit151.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #40
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit152.i:                ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit151.i
  %.fca.0.extract14.i = extractvalue { i64, i8 } %.pn.i150.i, 0
  %i.aqj = and i64 %.fca.0.extract24.i, 4294967295
  %i.aqk = udiv i64 %.fca.0.extract14.i, %i.aqj
  %i.aql = trunc i64 %i.aqk to i32                ; 2 uses
  %i.aqm = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.apw, i32 noundef %i.aql) ; 2 uses
  %.not.i153.i = icmp eq i16 %i.aqm, 0
  br i1 %.not.i153.i, label %bb.jj, label %_ZL22combineBasicSADPatternPN4llvm6SDNodeERNS_12SelectionDAGERKNS_12X86SubtargetE.exit

bb.jj:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit152.i
  %i.aqn = call { i16, ptr } @_ZN4llvm3EVT19getExtendedVectorVTERNS_11LLVMContextES0_jb(ptr noundef nonnull align 8 dereferenceable(8) %i.aqc, i16 %i.apw, ptr %.sroa.220.0.copyload.i, i32 noundef %i.aql, i1 noundef zeroext false) #38 ; 2 uses
  %i.aqo = extractvalue { i16, ptr } %i.aqn, 0
  %i.aqp = extractvalue { i16, ptr } %i.aqn, 1
  br label %_ZL22combineBasicSADPatternPN4llvm6SDNodeERNS_12SelectionDAGERKNS_12X86SubtargetE.exit

_ZL22combineBasicSADPatternPN4llvm6SDNodeERNS_12SelectionDAGERKNS_12X86SubtargetE.exit: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit152.i, %bb.jj
  %.sroa.3.0.i.i = phi ptr [ %i.aqp, %bb.jj ], [ null, %_ZNK4llvm8TypeSizecvmEv.exit152.i ]
  %.sroa.0.0.i.i = phi i16 [ %i.aqo, %bb.jj ], [ %i.aqm, %_ZNK4llvm8TypeSizecvmEv.exit152.i ]
  %i.aqq = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %.sroa.0.0.i.i, ptr %.sroa.3.0.i.i, ptr %.sroa.0161.1.i, i32 %.sroa.10.1.i) #38 ; 2 uses
  %.fca.0.extract4.i = extractvalue { ptr, i32 } %i.aqq, 0
  %.fca.1.extract5.i = extractvalue { ptr, i32 } %i.aqq, 1
  %.sroa.01.0.copyload.i = load i16, ptr %76, align 8, !tbaa !299
  %.sroa.23.0.copyload.i = load ptr, ptr %i.acx, align 8, !tbaa !455
  store ptr %.fca.0.extract4.i, ptr %88, align 8, !tbaa !449
  %.sroa.10.0..sroa_idx163.i = getelementptr inbounds nuw i8, ptr %88, i64 8
  store i32 %.fca.1.extract5.i, ptr %.sroa.10.0..sroa_idx163.i, align 8, !tbaa !189
  %i.aqr = load ptr, ptr %i.ra, align 8, !tbaa !636
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqr, i64 40
  %i.aqt = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 164, ptr noundef nonnull align 8 dereferenceable(12) %81, i16 %.sroa.01.0.copyload.i, ptr %.sroa.23.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %88, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.aqs) #38 ; 2 uses
  %.fca.0.extract.i612 = extractvalue { ptr, i32 } %i.aqt, 0 ; 2 uses
  %.fca.1.extract.i613 = extractvalue { ptr, i32 } %i.aqt, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %84)
  call void @llvm.lifetime.end.p0(ptr nonnull %85)
  call void @llvm.lifetime.end.p0(ptr nonnull %86)
  call void @llvm.lifetime.end.p0(ptr nonnull %87)
  call void @llvm.lifetime.end.p0(ptr nonnull %88)
  %.not1180 = icmp eq ptr %.fca.0.extract.i612, null
  br i1 %.not1180, label %bb.jk, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit972.thread

.sink.split1319.sink.split.sink.split.sink.split: ; preds = %bb.gm, %_ZL22combineBasicSADPatternPN4llvm6SDNodeERNS_12SelectionDAGERKNS_12X86SubtargetE.exit.thread1122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #38
  br label %.sink.split1319.sink.split.sink.split

.sink.split1319.sink.split.sink.split:            ; preds = %.sink.split1319.sink.split.sink.split.sink.split, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i599
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #38
  br label %.sink.split1319.sink.split

.sink.split1319.sink.split:                       ; preds = %.sink.split1319.sink.split.sink.split, %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #38
  br label %.sink.split1319

.sink.split1319:                                  ; preds = %.sink.split1319.sink.split, %.critedge11
  call void @llvm.lifetime.end.p0(ptr nonnull %84)
  call void @llvm.lifetime.end.p0(ptr nonnull %85)
  call void @llvm.lifetime.end.p0(ptr nonnull %86)
  call void @llvm.lifetime.end.p0(ptr nonnull %87)
  call void @llvm.lifetime.end.p0(ptr nonnull %88)
  br label %bb.jk

bb.jk:                                            ; preds = %.sink.split1319, %_ZL22combineBasicSADPatternPN4llvm6SDNodeERNS_12SelectionDAGERKNS_12X86SubtargetE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %54)
  call void @llvm.lifetime.start.p0(ptr nonnull %55)
  call void @llvm.lifetime.start.p0(ptr nonnull %56)
  call void @llvm.lifetime.start.p0(ptr nonnull %57)
  call void @llvm.lifetime.start.p0(ptr nonnull %58)
  %i.aqu = getelementptr inbounds nuw i8, ptr %3, i64 504 ; 3 uses
  %i.aqv = load i8, ptr %i.aqu, align 8, !tbaa !3189, !range !23, !noundef !24
  %i.aqw = trunc nuw i8 %i.aqv to i1
  br i1 %i.aqw, label %bb.jm, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.aqx = getelementptr inbounds nuw i8, ptr %3, i64 386
  %i.aqy = load i8, ptr %i.aqx, align 2, !tbaa !3190, !range !23, !noundef !24
  %i.aqz = trunc nuw i8 %i.aqy to i1
  br i1 %i.aqz, label %bb.jm, label %.sink.split1320

bb.jm:                                            ; preds = %bb.jl, %bb.jk
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #38
  %i.ara = load ptr, ptr %i.rk, align 8, !tbaa !454 ; 2 uses
  %.sroa.0.0.copyload.i.i621 = load i16, ptr %i.ara, align 8, !tbaa !299 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i622 = getelementptr inbounds nuw i8, ptr %i.ara, i64 8
  %.sroa.21.0.copyload.i.i623 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i622, align 8, !tbaa !455 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i621, ptr %49, align 8
  %i.arb = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 3 uses
  store ptr %.sroa.21.0.copyload.i.i623, ptr %i.arb, align 8
  %.not.i.i624 = icmp ne i16 %.sroa.0.0.copyload.i.i621, 7
  %i.arc = icmp ne ptr %.sroa.21.0.copyload.i.i623, null
  %i.ard = select i1 %.not.i.i624, i1 true, i1 %i.arc
  br i1 %i.ard, label %.sink.split1320.sink.split, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #38
  %i.are = load ptr, ptr %i.ra, align 8, !tbaa !636 ; 2 uses
  %i.arf = load ptr, ptr %i.are, align 8, !tbaa !457
  %i.arg = getelementptr inbounds nuw i8, ptr %i.are, i64 8
  %i.arh = load i32, ptr %i.arg, align 8, !tbaa !451
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arf, i64 48
  %i.arj = load ptr, ptr %i.ari, align 8, !tbaa !454
  %i.ark = zext i32 %i.arh to i64
  %i.arl = getelementptr inbounds nuw [16 x i8], ptr %i.arj, i64 %i.ark ; 2 uses
  %.sroa.0.0.copyload.i.i.i625 = load i16, ptr %i.arl, align 8, !tbaa !299 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i.i626 = getelementptr inbounds nuw i8, ptr %i.arl, i64 8
  %.sroa.21.0.copyload.i.i.i627 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i626, align 8, !tbaa !455
  store i16 %.sroa.0.0.copyload.i.i.i625, ptr %50, align 8
  %i.arm = getelementptr inbounds nuw i8, ptr %50, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i627, ptr %i.arm, align 8
  %.not.i.i.i628 = icmp eq i16 %.sroa.0.0.copyload.i.i.i625, 0
  br i1 %.not.i.i.i628, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i876, label %.split.i.i629

.split.i.i629:                                    ; preds = %bb.jn
  %i.arn = add i16 %.sroa.0.0.copyload.i.i.i625, -163
  %spec.select.i.i.i.i630 = icmp ult i16 %i.arn, 53
  br i1 %spec.select.i.i.i.i630, label %bb.jo, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i631

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i876:    ; preds = %bb.jn
  %i.aro = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %50) #39
  br i1 %i.aro, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i876, %.split.i.i629
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.86) #40
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i631: ; preds = %.split.i.i629
  %i.arp = zext i16 %.sroa.0.0.copyload.i.i.i625 to i64
  %i.arq = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.arp
  %i.arr = getelementptr i8, ptr %i.arq, i64 -2
end_hunk_0
begin_hunk_1_@_ZL23combineExtractVectorEltPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetE:bb.a
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit156.i.1.i.i781

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.1.i.i816: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit160.i.i.i769
  %i.bek = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %37) #39
  br i1 %i.bek, label %bb.mj, label %bb.mq

bb.mq:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.1.i.i816
  %i.bel = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %37) #39
  %i.bem = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %37) #39
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit156.i.1.i.i781

_ZNK4llvm3EVT13getSizeInBitsEv.exit156.i.1.i.i781: ; preds = %bb.mq, %bb.mp
  %.pn70.i.1.i.i = phi i32 [ %i.beh, %bb.mp ], [ %i.bel, %bb.mq ]
  %.pn.i155.i.1.i.i782 = phi { i64, i8 } [ %.fca.1.insert.i.i154.i.1.i.i780, %bb.mp ], [ %i.bem, %bb.mq ] ; 2 uses
  %.fca.1.extract19.i.1.i.i783 = extractvalue { i64, i8 } %.pn.i155.i.1.i.i782, 1
  %i.ben = trunc nuw i8 %.fca.1.extract19.i.1.i.i783 to i1
  br i1 %i.ben, label %bb.mm, label %_ZNK4llvm8TypeSizecvmEv.exit157.i.1.i.i784

_ZNK4llvm8TypeSizecvmEv.exit157.i.1.i.i784:       ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit156.i.1.i.i781
  %.fca.0.extract18.i.1.i.i785 = extractvalue { i64, i8 } %.pn.i155.i.1.i.i782, 0
  %i.beo = udiv i32 %.pn70.i.1.i.i, %.0.i.i.i747
  %i.bep = udiv i64 %.fca.0.extract18.i.1.i.i785, %i.bbt
  %i.beq = trunc i64 %i.bep to i32
  %i.ber = mul i32 %i.beo, %.08174.i.i.i
  %i.bes = call fastcc { ptr, i32 } @_ZL16extractSubVectorN4llvm7SDValueEjRNS_12SelectionDAGERKNS_5SDLocEj(ptr nonnull %.fca.0.extract20.i.i, i32 %.fca.1.extract21.i.i, i32 noundef %i.ber, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %51, i32 noundef %i.beq) ; 2 uses
  %.fca.0.extract10.i.1.i.i786 = extractvalue { ptr, i32 } %i.bes, 0 ; 2 uses
  %.fca.1.extract11.i.1.i.i787 = extractvalue { ptr, i32 } %i.bes, 1 ; 2 uses
  %i.bet = load i32, ptr %i.bbq, align 8, !tbaa !630 ; 2 uses
  %i.beu = load i32, ptr %i.bbr, align 4, !tbaa !631
  %.not.i158.i.1.i.i788 = icmp ult i32 %i.bet, %i.beu
  br i1 %.not.i158.i.1.i.i788, label %bb.ms, label %bb.mr, !prof !632

bb.mr:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit157.i.1.i.i784
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %36, ptr %.fca.0.extract10.i.1.i.i786, i32 %.fca.1.extract11.i.1.i.i787)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit160.i.1.i.i789

bb.ms:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit157.i.1.i.i784
  %i.bev = zext i32 %i.bet to i64
  %i.bew = load ptr, ptr %36, align 8, !tbaa !26
  %i.bex = getelementptr inbounds nuw [16 x i8], ptr %i.bew, i64 %i.bev ; 2 uses
  store ptr %.fca.0.extract10.i.1.i.i786, ptr %i.bex, align 1
  %.sroa.32.0..sroa_idx.i159.i.1.i.i815 = getelementptr inbounds nuw i8, ptr %i.bex, i64 8
  store i32 %.fca.1.extract11.i.1.i.i787, ptr %.sroa.32.0..sroa_idx.i159.i.1.i.i815, align 1
  %i.bey = load i32, ptr %i.bbq, align 8, !tbaa !630
  %i.bez = add i32 %i.bey, 1
  store i32 %i.bez, ptr %i.bbq, align 8, !tbaa !630
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit160.i.1.i.i789

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit160.i.1.i.i789: ; preds = %bb.ms, %bb.mr
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #38
  %i.bfa = load ptr, ptr %i.bbz, align 8, !tbaa !454
  %i.bfb = getelementptr inbounds nuw [16 x i8], ptr %i.bfa, i64 %i.bca ; 2 uses
  %.sroa.0.0.copyload.i.i146.i.2.i.i = load i16, ptr %i.bfb, align 8, !tbaa !299 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i.i.2.i.i = getelementptr inbounds nuw i8, ptr %i.bfb, i64 8
  %.sroa.21.0.copyload.i.i.i.2.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.2.i.i, align 8, !tbaa !455
  store i16 %.sroa.0.0.copyload.i.i146.i.2.i.i, ptr %37, align 8
  store ptr %.sroa.21.0.copyload.i.i.i.2.i.i, ptr %i.bbs, align 8
  %.not.i.i.i.2.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i146.i.2.i.i, 0
  br i1 %.not.i.i.i.2.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.2.i.i, label %.split.i.i.2.i.i

.split.i.i.2.i.i:                                 ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit160.i.1.i.i789
  %i.bfc = add i16 %.sroa.0.0.copyload.i.i146.i.2.i.i, -163
  %spec.select.i.i.i.i.2.i.i = icmp ult i16 %i.bfc, 53
  br i1 %spec.select.i.i.i.i.2.i.i, label %bb.mj, label %bb.mt

bb.mt:                                            ; preds = %.split.i.i.2.i.i
  %i.bfd = zext i16 %.sroa.0.0.copyload.i.i146.i.2.i.i to i64 ; 2 uses
  %i.bfe = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.bfd
  %i.bff = getelementptr i8, ptr %i.bfe, i64 -2
  %i.bfg = load i16, ptr %i.bff, align 2, !tbaa !294
  %i.bfh = zext i16 %i.bfg to i32
  %i.bfi = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bfd ; 2 uses
  %i.bfj = getelementptr i8, ptr %i.bfi, i64 -16
  %.sroa.0.0.copyload.i.i150.i.2.i.i = load i64, ptr %i.bfj, align 16
  %.sroa.2.0..sroa_idx.i.i151.i.2.i.i = getelementptr i8, ptr %i.bfi, i64 -8
  %.sroa.2.0.copyload.i.i152.i.2.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i151.i.2.i.i, align 8
  %.fca.0.insert.i.i153.i.2.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i150.i.2.i.i, 0
  %.fca.1.insert.i.i154.i.2.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i153.i.2.i.i, i8 %.sroa.2.0.copyload.i.i152.i.2.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit156.i.2.i.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.2.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit160.i.1.i.i789
  %i.bfk = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %37) #39
  br i1 %i.bfk, label %bb.mj, label %bb.mu

bb.mu:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.2.i.i
  %i.bfl = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %37) #39
  %i.bfm = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %37) #39
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit156.i.2.i.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit156.i.2.i.i:   ; preds = %bb.mu, %bb.mt
  %.pn70.i.2.i.i = phi i32 [ %i.bfh, %bb.mt ], [ %i.bfl, %bb.mu ]
  %.pn.i155.i.2.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i154.i.2.i.i, %bb.mt ], [ %i.bfm, %bb.mu ] ; 2 uses
  %.fca.1.extract19.i.2.i.i = extractvalue { i64, i8 } %.pn.i155.i.2.i.i, 1
  %i.bfn = trunc nuw i8 %.fca.1.extract19.i.2.i.i to i1
  br i1 %i.bfn, label %bb.mm, label %_ZNK4llvm8TypeSizecvmEv.exit157.i.2.i.i

_ZNK4llvm8TypeSizecvmEv.exit157.i.2.i.i:          ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit156.i.2.i.i
  %.fca.0.extract18.i.2.i.i = extractvalue { i64, i8 } %.pn.i155.i.2.i.i, 0
  %i.bfo = udiv i32 %.pn70.i.2.i.i, %.0.i.i.i747
  %i.bfp = udiv i64 %.fca.0.extract18.i.2.i.i, %i.bbt
  %i.bfq = trunc i64 %i.bfp to i32
  %i.bfr = mul i32 %i.bfo, %.08174.i.i.i
  %i.bfs = call fastcc { ptr, i32 } @_ZL16extractSubVectorN4llvm7SDValueEjRNS_12SelectionDAGERKNS_5SDLocEj(ptr nonnull %.fca.0.extract12.i.i, i32 %.fca.1.extract13.i.i, i32 noundef %i.bfr, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %51, i32 noundef %i.bfq) ; 2 uses
  %.fca.0.extract10.i.2.i.i = extractvalue { ptr, i32 } %i.bfs, 0 ; 2 uses
  %.fca.1.extract11.i.2.i.i = extractvalue { ptr, i32 } %i.bfs, 1 ; 2 uses
  %i.bft = load i32, ptr %i.bbq, align 8, !tbaa !630 ; 2 uses
  %i.bfu = load i32, ptr %i.bbr, align 4, !tbaa !631
  %.not.i158.i.2.i.i = icmp ult i32 %i.bft, %i.bfu
  br i1 %.not.i158.i.2.i.i, label %bb.mw, label %bb.mv, !prof !632

bb.mv:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit157.i.2.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %36, ptr %.fca.0.extract10.i.2.i.i, i32 %.fca.1.extract11.i.2.i.i)
  %.pre78.i.pre.i.i = load i32, ptr %i.bbq, align 8, !tbaa !630
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit160.i.2.i.i

bb.mw:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit157.i.2.i.i
  %i.bfv = zext i32 %i.bft to i64
  %i.bfw = load ptr, ptr %36, align 8, !tbaa !26
  %i.bfx = getelementptr inbounds nuw [16 x i8], ptr %i.bfw, i64 %i.bfv ; 2 uses
  store ptr %.fca.0.extract10.i.2.i.i, ptr %i.bfx, align 1
  %.sroa.32.0..sroa_idx.i159.i.2.i.i = getelementptr inbounds nuw i8, ptr %i.bfx, i64 8
  store i32 %.fca.1.extract11.i.2.i.i, ptr %.sroa.32.0..sroa_idx.i159.i.2.i.i, align 1
  %i.bfy = load i32, ptr %i.bbq, align 8, !tbaa !630
  %i.bfz = add i32 %i.bfy, 1                      ; 2 uses
  store i32 %i.bfz, ptr %i.bbq, align 8, !tbaa !630
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit160.i.2.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit160.i.2.i.i: ; preds = %bb.mw, %bb.mv
  %.pre78.i.i.i = phi i32 [ %i.bfz, %bb.mw ], [ %.pre78.i.pre.i.i, %bb.mv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #38
  %.pre.i.i.i790 = load ptr, ptr %36, align 8, !tbaa !26 ; 3 uses
  %i.bga = zext i32 %.pre78.i.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #38
  %i.bgb = load ptr, ptr %.pre.i.i.i790, align 8, !tbaa !457
  %i.bgc = getelementptr inbounds nuw i8, ptr %.pre.i.i.i790, i64 8
  %i.bgd = load i32, ptr %i.bgc, align 8, !tbaa !451
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bgb, i64 48
  %i.bgf = load ptr, ptr %i.bge, align 8, !tbaa !454
  %i.bgg = zext i32 %i.bgd to i64
  %i.bgh = getelementptr inbounds nuw [16 x i8], ptr %i.bgf, i64 %i.bgg ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i130.i.i.i791 = load i16, ptr %i.bgh, align 8, !tbaa !299 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i.i.i131.i.i.i792 = getelementptr inbounds nuw i8, ptr %i.bgh, i64 8
  %.sroa.21.0.copyload.i.i.i.i132.i.i.i793 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i131.i.i.i792, align 8, !tbaa !455
  store i16 %.sroa.0.0.copyload.i.i.i.i130.i.i.i791, ptr %30, align 8
  store ptr %.sroa.21.0.copyload.i.i.i.i132.i.i.i793, ptr %i.bbu, align 8
  %.not.i.i.i133.i.i.i794 = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i130.i.i.i791, 0
  br i1 %.not.i.i.i133.i.i.i794, label %bb.md, label %bb.mc

"_Z16SplitOpsAndApplyIZL14createVPDPBUSDRN4llvm12SelectionDAGENS0_7SDValueES3_RjRKNS0_5SDLocERKNS0_12X86SubtargetEE3$_0ES3_S2_SA_S7_NS0_3EVTENS0_8ArrayRefIS3_EET_bb.exit.i.i": ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit.i.i.i813, %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i.i684
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bbl, %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i.i684 ], [ %i.bcf, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit.i.i.i813 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34)
  call void @llvm.lifetime.end.p0(ptr nonnull %38)
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #38
  %i.bgi = load ptr, ptr %40, align 8, !tbaa !26  ; 2 uses
  %i.bgj = icmp eq ptr %i.bgi, %i.axc
  br i1 %i.bgj, label %_ZL14createVPDPBUSDRN4llvm12SelectionDAGENS_7SDValueES2_RjRKNS_5SDLocERKNS_12X86SubtargetE.exit.i, label %bb.mx

bb.mx:                                            ; preds = %"_Z16SplitOpsAndApplyIZL14createVPDPBUSDRN4llvm12SelectionDAGENS0_7SDValueES3_RjRKNS0_5SDLocERKNS0_12X86SubtargetEE3$_0ES3_S2_SA_S7_NS0_3EVTENS0_8ArrayRefIS3_EET_bb.exit.i.i"
  call void @free(ptr noundef %i.bgi) #38
  br label %_ZL14createVPDPBUSDRN4llvm12SelectionDAGENS_7SDValueES2_RjRKNS_5SDLocERKNS_12X86SubtargetE.exit.i

_ZL14createVPDPBUSDRN4llvm12SelectionDAGENS_7SDValueES2_RjRKNS_5SDLocERKNS_12X86SubtargetE.exit.i: ; preds = %bb.mx, %"_Z16SplitOpsAndApplyIZL14createVPDPBUSDRN4llvm12SelectionDAGENS0_7SDValueES3_RjRKNS0_5SDLocERKNS0_12X86SubtargetEE3$_0ES3_S2_SA_S7_NS0_3EVTENS0_8ArrayRefIS3_EET_bb.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %41)
  call void @llvm.lifetime.end.p0(ptr nonnull %42)
  %.fca.0.extract69.i = extractvalue { ptr, i32 } %.pn.i.i.i, 0 ; 4 uses
  %.fca.1.extract70.i = extractvalue { ptr, i32 } %.pn.i.i.i, 1 ; 4 uses
  %i.bgk = load i16, ptr %50, align 8, !tbaa !642 ; 3 uses
  %.not.i.i114.i = icmp eq i16 %i.bgk, 0
  br i1 %.not.i.i114.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i118.i, label %.split.i115.i

.split.i115.i:                                    ; preds = %_ZL14createVPDPBUSDRN4llvm12SelectionDAGENS_7SDValueES2_RjRKNS_5SDLocERKNS_12X86SubtargetE.exit.i
  %i.bgl = add i16 %i.bgk, -163
  %spec.select.i.i.i116.i = icmp ult i16 %i.bgl, 53
  br i1 %spec.select.i.i.i116.i, label %bb.my, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i117.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i118.i:    ; preds = %_ZL14createVPDPBUSDRN4llvm12SelectionDAGENS_7SDValueES2_RjRKNS_5SDLocERKNS_12X86SubtargetE.exit.i
  %i.bgm = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %50) #39
  br i1 %i.bgm, label %bb.my, label %bb.mz

bb.my:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i118.i, %.split.i115.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.86) #40
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i117.i: ; preds = %.split.i115.i
  %i.bgn = zext i16 %i.bgk to i64
  %i.bgo = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.bgn
  %i.bgp = getelementptr i8, ptr %i.bgo, i64 -2
  %i.bgq = load i16, ptr %i.bgp, align 2, !tbaa !294
  %i.bgr = zext i16 %i.bgq to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit119.i

bb.mz:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i118.i
  %i.bgs = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %50) #39
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit119.i

_ZNK4llvm3EVT20getVectorNumElementsEv.exit119.i:  ; preds = %bb.mz, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i117.i
  %i.bgt = phi i32 [ %i.bgr, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i117.i ], [ %i.bgs, %bb.mz ]
  %i.bgu = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bgt, i1 false) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #38
  %i.bgv = getelementptr inbounds nuw i8, ptr %.fca.0.extract69.i, i64 48
  %i.bgw = load ptr, ptr %i.bgv, align 8, !tbaa !454
  %i.bgx = zext i32 %.fca.1.extract70.i to i64
  %i.bgy = getelementptr inbounds nuw [16 x i8], ptr %i.bgw, i64 %i.bgx ; 2 uses
  %.sroa.0.0.copyload.i.i120.i = load i16, ptr %i.bgy, align 8, !tbaa !299 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i121.i = getelementptr inbounds nuw i8, ptr %i.bgy, i64 8
  %.sroa.21.0.copyload.i.i122.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i121.i, align 8, !tbaa !455
  store i16 %.sroa.0.0.copyload.i.i120.i, ptr %52, align 8
  %i.bgz = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 3 uses
  store ptr %.sroa.21.0.copyload.i.i122.i, ptr %i.bgz, align 8
  %notsub.i = add nsw i32 %i.bgu, -32
  %i.bha = icmp ult i32 %notsub.i, -3
  br i1 %i.bha, label %bb.na, label %bb.nd

bb.na:                                            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit119.i
  %i.bhb = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %52) ; 4 uses
  %.not104189.i = icmp eq i32 %i.bgu, 29
  br i1 %.not104189.i, label %thread-pre-split.i, label %.lr.ph.i702

.lr.ph.i702:                                      ; preds = %bb.na
  %i.bhc = sub nsw i32 29, %i.bgu
  %i.bhd = zext i32 %i.bhb to i64                 ; 2 uses
  %i.bhe = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 5 uses
  %i.bhf = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 3 uses
  %i.bhg = getelementptr inbounds nuw i8, ptr %53, i64 12
  %i.bhh = icmp ugt i32 %i.bhb, 16
  %.not.i125.i = icmp eq i32 %i.bhb, 0
  %.idx.i.i.i.i.i.i.i703 = shl nuw nsw i64 %i.bhd, 2
  %.sroa.245.0..sroa_idx.i704 = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.bhi = getelementptr inbounds nuw i8, ptr %55, i64 8
  %.sroa.10.0..sroa_idx.i705 = getelementptr inbounds nuw i8, ptr %56, i64 8
  %.sroa.456.0..sroa_idx.i706 = getelementptr inbounds nuw i8, ptr %57, i64 8
  br label %bb.nb

bb.nb:                                            ; preds = %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit.i725, %.lr.ph.i702
  %.0192.i = phi i32 [ %i.bhc, %.lr.ph.i702 ], [ %i.bhl, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit.i725 ]
  %.sroa.0148.0191.i = phi ptr [ %.fca.0.extract69.i, %.lr.ph.i702 ], [ %.fca.0.extract28.i723, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit.i725 ] ; 2 uses
  %.sroa.10.0190.i = phi i32 [ %.fca.1.extract70.i, %.lr.ph.i702 ], [ %.fca.1.extract29.i724, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit.i725 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #38
  store ptr %i.bhe, ptr %53, align 8, !tbaa !26
  store i32 0, ptr %i.bhf, align 8, !tbaa !630
  store i32 16, ptr %i.bhg, align 4, !tbaa !631
  br i1 %i.bhh, label %_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.loopexit.i727, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i.i707

_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.loopexit.i727: ; preds = %bb.nb
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %53, ptr noundef nonnull %i.bhe, i64 noundef %i.bhd, i64 noundef 4) #38
  %i.bhj = load ptr, ptr %53, align 8, !tbaa !26
  br label %_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.sink.split.i708

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i.i707:     ; preds = %bb.nb
  br i1 %.not.i125.i, label %_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.i710, label %_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.sink.split.i708

_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.sink.split.i708: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i.i707, %_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.loopexit.i727
  %.sink.i709 = phi ptr [ %i.bhj, %_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.loopexit.i727 ], [ %i.bhe, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i.i707 ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %.sink.i709, i8 -1, i64 %.idx.i.i.i.i.i.i.i703, i1 false), !tbaa !189
  br label %_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.i710

_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.i710:   ; preds = %_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.sink.split.i708, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i.i707
  %i.bhk = phi ptr [ %i.bhe, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i.i707 ], [ %.sink.i709, %_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.sink.split.i708 ] ; 2 uses
  store i32 %i.bhb, ptr %i.bhf, align 8, !tbaa !630
  %i.bhl = add i32 %.0192.i, -1                   ; 4 uses
  %i.bhm = shl nuw i32 1, %i.bhl                  ; 3 uses
  %wide.trip.count.i711 = zext i32 %i.bhm to i64  ; 2 uses
  %min.iters.check1330 = icmp ult i32 %i.bhl, 3
  br i1 %min.iters.check1330, label %scalar.ph1329, label %vector.ph1331

vector.ph1331:                                    ; preds = %_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.i710
  %n.vec1332 = and i64 %wide.trip.count.i711, 4294967288
  %broadcast.splatinsert1333 = insertelement <4 x i32> poison, i32 %i.bhm, i64 0
  %broadcast.splat1334 = shufflevector <4 x i32> %broadcast.splatinsert1333, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op1379 = add <4 x i32> splat (i32 4), %broadcast.splat1334
  br label %vector.body1335

vector.body1335:                                  ; preds = %vector.body1335, %vector.ph1331
  %index1336 = phi i64 [ 0, %vector.ph1331 ], [ %index.next1339, %vector.body1335 ] ; 2 uses
  %vec.ind1337 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph1331 ], [ %vec.ind.next1340, %vector.body1335 ] ; 3 uses
  %153 = add <4 x i32> %broadcast.splat1334, %vec.ind1337
  %.reass1380 = add <4 x i32> %vec.ind1337, %invariant.op1379
  %154 = getelementptr inbounds nuw [4 x i8], ptr %i.bhk, i64 %index1336 ; 2 uses
  %i.bhn = getelementptr inbounds nuw i8, ptr %154, i64 16
  store <4 x i32> %153, ptr %154, align 4, !tbaa !189
  store <4 x i32> %.reass1380, ptr %i.bhn, align 4, !tbaa !189
  %index.next1339 = add nuw i64 %index1336, 8     ; 2 uses
  %vec.ind.next1340 = add <4 x i32> %vec.ind1337, splat (i32 8)
  %i.bho = icmp eq i64 %index.next1339, %n.vec1332
  br i1 %i.bho, label %middle.block1341, label %vector.body1335, !llvm.loop !3194

middle.block1341:                                 ; preds = %vector.body1335, %scalar.ph1329
  %.sroa.052.0.copyload.i715 = load i16, ptr %52, align 8, !tbaa !299 ; 2 uses
  %.sroa.254.0.copyload.i716 = load ptr, ptr %i.bgz, align 8, !tbaa !455 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  %i.bhp = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %29, i16 %.sroa.052.0.copyload.i715, ptr %.sroa.254.0.copyload.i716) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #38
  %.fca.0.extract42.i717 = extractvalue { ptr, i32 } %i.bhp, 0
  %.fca.1.extract43.i718 = extractvalue { ptr, i32 } %i.bhp, 1
  store ptr %.fca.0.extract42.i717, ptr %54, align 8
  store i32 %.fca.1.extract43.i718, ptr %.sroa.245.0..sroa_idx.i704, align 8
  %i.bhq = load ptr, ptr %53, align 8, !tbaa !26
  store ptr %i.bhq, ptr %55, align 8, !tbaa !783
  %i.bhr = load i32, ptr %i.bhf, align 8, !tbaa !630
  %i.bhs = zext i32 %i.bhr to i64
  store i64 %i.bhs, ptr %i.bhi, align 8, !tbaa !785
  %i.bht = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %.sroa.052.0.copyload.i715, ptr %.sroa.254.0.copyload.i716, ptr noundef nonnull align 8 dereferenceable(12) %51, ptr %.sroa.0148.0191.i, i32 %.sroa.10.0190.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %54, ptr noundef nonnull byval(%"class.llvm::ArrayRef.421") align 8 %55) #38 ; 2 uses
  %.fca.0.extract38.i719 = extractvalue { ptr, i32 } %i.bht, 0
  %.fca.1.extract39.i720 = extractvalue { ptr, i32 } %i.bht, 1
  %.sroa.032.0.copyload.i721 = load i16, ptr %52, align 8, !tbaa !299
  %.sroa.234.0.copyload.i722 = load ptr, ptr %i.bgz, align 8, !tbaa !455
  store ptr %.sroa.0148.0191.i, ptr %56, align 8, !tbaa !449
  store i32 %.sroa.10.0190.i, ptr %.sroa.10.0..sroa_idx.i705, align 8, !tbaa !189
  store ptr %.fca.0.extract38.i719, ptr %57, align 8, !tbaa !449
  store i32 %.fca.1.extract39.i720, ptr %.sroa.456.0..sroa_idx.i706, align 8, !tbaa !189
  %i.bhu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %51, i16 %.sroa.032.0.copyload.i721, ptr %.sroa.234.0.copyload.i722, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %56, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %57) #38 ; 2 uses
  %.fca.0.extract28.i723 = extractvalue { ptr, i32 } %i.bhu, 0 ; 2 uses
  %.fca.1.extract29.i724 = extractvalue { ptr, i32 } %i.bhu, 1 ; 2 uses
  %i.bhv = load ptr, ptr %53, align 8, !tbaa !26  ; 2 uses
  %i.bhw = icmp eq ptr %i.bhv, %i.bhe
  br i1 %i.bhw, label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit.i725, label %bb.nc

bb.nc:                                            ; preds = %middle.block1341
  call void @free(ptr noundef %i.bhv) #38
  br label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit.i725

_ZN4llvm11SmallVectorIiLj16EED2Ev.exit.i725:      ; preds = %bb.nc, %middle.block1341
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #38
  %.not104.i = icmp eq i32 %i.bhl, 0
  br i1 %.not104.i, label %thread-pre-split.i, label %bb.nb, !llvm.loop !3195

scalar.ph1329:                                    ; preds = %_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.i710, %scalar.ph1329
  %indvars.iv.i712 = phi i64 [ %indvars.iv.next.i713, %scalar.ph1329 ], [ 0, %_ZN4llvm11SmallVectorIiLj16EEC2EmRKi.exit.i710 ] ; 3 uses
  %155 = trunc nuw i64 %indvars.iv.i712 to i32
  %156 = add i32 %i.bhm, %155
  %157 = getelementptr inbounds nuw [4 x i8], ptr %i.bhk, i64 %indvars.iv.i712
  store i32 %156, ptr %157, align 4, !tbaa !189
  %indvars.iv.next.i713 = add nuw nsw i64 %indvars.iv.i712, 1 ; 2 uses
  %exitcond.not.i714 = icmp eq i64 %indvars.iv.next.i713, %wide.trip.count.i711
  br i1 %exitcond.not.i714, label %middle.block1341, label %scalar.ph1329, !llvm.loop !3196

thread-pre-split.i:                               ; preds = %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit.i725, %bb.na
  %.sroa.10.0.lcssa.i = phi i32 [ %.fca.1.extract70.i, %bb.na ], [ %.fca.1.extract29.i724, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit.i725 ]
  %.sroa.0148.0.lcssa.i = phi ptr [ %.fca.0.extract69.i, %bb.na ], [ %.fca.0.extract28.i723, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit.i725 ]
  %.pr.i726 = load i16, ptr %52, align 8, !tbaa !642
  br label %bb.nd

bb.nd:                                            ; preds = %thread-pre-split.i, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit119.i
  %i.bhx = phi i16 [ %.pr.i726, %thread-pre-split.i ], [ %.sroa.0.0.copyload.i.i120.i, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit119.i ] ; 2 uses
  %.sroa.10.1.i687 = phi i32 [ %.sroa.10.0.lcssa.i, %thread-pre-split.i ], [ %.fca.1.extract70.i, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit119.i ]
  %.sroa.0148.1.i = phi ptr [ %.sroa.0148.0.lcssa.i, %thread-pre-split.i ], [ %.fca.0.extract69.i, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit119.i ]
  %i.bhy = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bhz = load ptr, ptr %i.bhy, align 8, !tbaa !787
  %.sroa.022.0.copyload.i = load i16, ptr %49, align 8, !tbaa !299 ; 4 uses
  %.sroa.224.0.copyload.i = load ptr, ptr %i.arb, align 8, !tbaa !455
  %.not.i126.i = icmp eq i16 %i.bhx, 0
  br i1 %.not.i126.i, label %bb.nf, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.bia = zext i16 %i.bhx to i64
  %i.bib = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bia ; 2 uses
  %i.bic = getelementptr i8, ptr %i.bib, i64 -16
  %.sroa.0.0.copyload.i.i127.i = load i64, ptr %i.bic, align 16
  %.sroa.2.0..sroa_idx.i.i128.i = getelementptr i8, ptr %i.bib, i64 -8
  %.sroa.2.0.copyload.i.i129.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i128.i, align 8
  %.fca.0.insert.i.i130.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i127.i, 0
  %.fca.1.insert.i.i131.i = insertvalue { i64, i8 } %.fca.0.insert.i.i130.i, i8 %.sroa.2.0.copyload.i.i129.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i688

bb.nf:                                            ; preds = %bb.nd
  %i.bid = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %52) #39
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i688

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i688:         ; preds = %bb.nf, %bb.ne
  %.pn.i.i689 = phi { i64, i8 } [ %.fca.1.insert.i.i131.i, %bb.ne ], [ %i.bid, %bb.nf ] ; 2 uses
  %.fca.0.extract18.i = extractvalue { i64, i8 } %.pn.i.i689, 0
  %.fca.1.extract19.i = extractvalue { i64, i8 } %.pn.i.i689, 1
  %i.bie = trunc nuw i8 %.fca.1.extract19.i to i1
  br i1 %i.bie, label %bb.ng, label %_ZNK4llvm8TypeSizecvmEv.exit.i690

bb.ng:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i688
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #40
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i690:                ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i688
  %.not.i132.i = icmp eq i16 %.sroa.022.0.copyload.i, 0
  br i1 %.not.i132.i, label %bb.ni, label %bb.nh

bb.nh:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i690
  %i.bif = zext i16 %.sroa.022.0.copyload.i to i64
  %i.big = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bif ; 2 uses
  %i.bih = getelementptr i8, ptr %i.big, i64 -16
  %.sroa.0.0.copyload.i.i133.i = load i64, ptr %i.bih, align 16
  %.sroa.2.0..sroa_idx.i.i134.i = getelementptr i8, ptr %i.big, i64 -8
  %.sroa.2.0.copyload.i.i135.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i134.i, align 8
  %.fca.0.insert.i.i136.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i133.i, 0
  %.fca.1.insert.i.i137.i = insertvalue { i64, i8 } %.fca.0.insert.i.i136.i, i8 %.sroa.2.0.copyload.i.i135.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit139.i

bb.ni:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i690
  %i.bii = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %49) #39
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit139.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit139.i:         ; preds = %bb.ni, %bb.nh
  %.pn.i138.i = phi { i64, i8 } [ %.fca.1.insert.i.i137.i, %bb.nh ], [ %i.bii, %bb.ni ] ; 2 uses
  %.fca.1.extract15.i691 = extractvalue { i64, i8 } %.pn.i138.i, 1
  %i.bij = trunc nuw i8 %.fca.1.extract15.i691 to i1
  br i1 %i.bij, label %bb.nj, label %_ZNK4llvm8TypeSizecvmEv.exit140.i

bb.nj:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit139.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #40
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit140.i:                ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit139.i
  %.fca.0.extract14.i692 = extractvalue { i64, i8 } %.pn.i138.i, 0
  %i.bik = udiv i64 %.fca.0.extract18.i, %.fca.0.extract14.i692
  %i.bil = trunc i64 %i.bik to i32                ; 2 uses
  %i.bim = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.022.0.copyload.i, i32 noundef %i.bil) ; 2 uses
  %.not.i141.i = icmp eq i16 %i.bim, 0
  br i1 %.not.i141.i, label %bb.nk, label %_ZL22combineVPDPBUSDPatternPN4llvm6SDNodeERNS_12SelectionDAGERKNS_12X86SubtargetE.exit

bb.nk:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit140.i
  %i.bin = call { i16, ptr } @_ZN4llvm3EVT19getExtendedVectorVTERNS_11LLVMContextES0_jb(ptr noundef nonnull align 8 dereferenceable(8) %i.bhz, i16 %.sroa.022.0.copyload.i, ptr %.sroa.224.0.copyload.i, i32 noundef %i.bil, i1 noundef zeroext false) #38 ; 2 uses
  %i.bio = extractvalue { i16, ptr } %i.bin, 0
  %i.bip = extractvalue { i16, ptr } %i.bin, 1
  br label %_ZL22combineVPDPBUSDPatternPN4llvm6SDNodeERNS_12SelectionDAGERKNS_12X86SubtargetE.exit

_ZL22combineVPDPBUSDPatternPN4llvm6SDNodeERNS_12SelectionDAGERKNS_12X86SubtargetE.exit.thread1141: ; preds = %bb.jq, %bb.jr, %_ZL12detectExtMulRN4llvm12SelectionDAGERKNS_7SDValueERS2_S5_.exit.i, %"_ZZL12detectExtMulRN4llvm12SelectionDAGERKNS_7SDValueERS2_S5_ENK3$_0clES5_.exit.i.i", %bb.ka
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #38
  br label %.sink.split1320.sink.split.sink.split

_ZL22combineVPDPBUSDPatternPN4llvm6SDNodeERNS_12SelectionDAGERKNS_12X86SubtargetE.exit: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit140.i, %bb.nk
  %.sroa.3.0.i.i694 = phi ptr [ %i.bip, %bb.nk ], [ null, %_ZNK4llvm8TypeSizecvmEv.exit140.i ]
  %.sroa.0.0.i.i695 = phi i16 [ %i.bio, %bb.nk ], [ %i.bim, %_ZNK4llvm8TypeSizecvmEv.exit140.i ]
  %i.biq = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %.sroa.0.0.i.i695, ptr %.sroa.3.0.i.i694, ptr %.sroa.0148.1.i, i32 %.sroa.10.1.i687) #38 ; 2 uses
  %.fca.0.extract4.i696 = extractvalue { ptr, i32 } %i.biq, 0
  %.fca.1.extract5.i697 = extractvalue { ptr, i32 } %i.biq, 1
  %.sroa.01.0.copyload.i698 = load i16, ptr %49, align 8, !tbaa !299
  %.sroa.23.0.copyload.i699 = load ptr, ptr %i.arb, align 8, !tbaa !455
  store ptr %.fca.0.extract4.i696, ptr %58, align 8, !tbaa !449
  %.sroa.10.0..sroa_idx150.i = getelementptr inbounds nuw i8, ptr %58, i64 8
  store i32 %.fca.1.extract5.i697, ptr %.sroa.10.0..sroa_idx150.i, align 8, !tbaa !189
  %i.bir = load ptr, ptr %i.ra, align 8, !tbaa !636
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bir, i64 40
  %i.bit = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 164, ptr noundef nonnull align 8 dereferenceable(12) %51, i16 %.sroa.01.0.copyload.i698, ptr %.sroa.23.0.copyload.i699, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %58, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.bis) #38 ; 2 uses
  %.fca.0.extract.i700 = extractvalue { ptr, i32 } %i.bit, 0 ; 2 uses
  %.fca.1.extract.i701 = extractvalue { ptr, i32 } %i.bit, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %54)
  call void @llvm.lifetime.end.p0(ptr nonnull %55)
  call void @llvm.lifetime.end.p0(ptr nonnull %56)
  call void @llvm.lifetime.end.p0(ptr nonnull %57)
  call void @llvm.lifetime.end.p0(ptr nonnull %58)
  %.not1181 = icmp eq ptr %.fca.0.extract.i700, null
  br i1 %.not1181, label %bb.nl, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit972.thread

.sink.split1320.sink.split.sink.split:            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i632, %_ZL22combineVPDPBUSDPatternPN4llvm6SDNodeERNS_12SelectionDAGERKNS_12X86SubtargetE.exit.thread1141
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #38
  br label %.sink.split1320.sink.split

.sink.split1320.sink.split:                       ; preds = %.sink.split1320.sink.split.sink.split, %bb.jm
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #38
  br label %.sink.split1320

.sink.split1320:                                  ; preds = %.sink.split1320.sink.split, %bb.jl
  call void @llvm.lifetime.end.p0(ptr nonnull %54)
  call void @llvm.lifetime.end.p0(ptr nonnull %55)
  call void @llvm.lifetime.end.p0(ptr nonnull %56)
  call void @llvm.lifetime.end.p0(ptr nonnull %57)
  call void @llvm.lifetime.end.p0(ptr nonnull %58)
  br label %bb.nl

bb.nl:                                            ; preds = %.sink.split1320, %_ZL22combineVPDPBUSDPatternPN4llvm6SDNodeERNS_12SelectionDAGERKNS_12X86SubtargetE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  %i.biu = load i32, ptr %i.act, align 8, !tbaa !297
  %i.biv = icmp sgt i32 %i.biu, 1
  br i1 %i.biv, label %bb.nm, label %.sink.split1321

bb.nm:                                            ; preds = %bb.nl
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  %i.biw = load ptr, ptr %i.rk, align 8, !tbaa !454 ; 2 uses
  %.sroa.0.0.copyload.i.i879 = load i16, ptr %i.biw, align 8, !tbaa !299 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i880 = getelementptr inbounds nuw i8, ptr %i.biw, i64 8
  %.sroa.21.0.copyload.i.i881 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i880, align 8, !tbaa !455 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i879, ptr %11, align 8
  %i.bix = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 7 uses
  store ptr %.sroa.21.0.copyload.i.i881, ptr %i.bix, align 8
  %.not.i.i882 = icmp eq i16 %.sroa.0.0.copyload.i.i879, 0
  br i1 %.not.i.i882, label %bb.no, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  %i.biy = zext i16 %.sroa.0.0.copyload.i.i879 to i64
  %i.biz = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.biy ; 2 uses
  %i.bja = getelementptr i8, ptr %i.biz, i64 -16
  %.sroa.0.0.copyload.i.i.i883 = load i64, ptr %i.bja, align 16
  %.sroa.2.0..sroa_idx.i.i.i884 = getelementptr i8, ptr %i.biz, i64 -8
  %.sroa.2.0.copyload.i.i.i885 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i884, align 8
  %.fca.0.insert.i.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i.i883, 0
  %.fca.1.insert.i.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i.i, i8 %.sroa.2.0.copyload.i.i.i885, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i886

bb.no:                                            ; preds = %bb.nm
  %i.bjb = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #39
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i886

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i886:         ; preds = %bb.no, %bb.nn
  %.pn.i.i887 = phi { i64, i8 } [ %.fca.1.insert.i.i.i, %bb.nn ], [ %i.bjb, %bb.no ] ; 2 uses
  %.fca.0.extract261.i888 = extractvalue { i64, i8 } %.pn.i.i887, 0 ; 2 uses
  %.fca.1.extract262.i889 = extractvalue { i64, i8 } %.pn.i.i887, 1
  %i.bjc = trunc nuw i8 %.fca.1.extract262.i889 to i1
  br i1 %i.bjc, label %bb.np, label %_ZNK4llvm8TypeSizecvmEv.exit.i890

bb.np:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i886
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #40
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i890:                ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i886
  %i.bjd = trunc i64 %.fca.0.extract261.i888 to i32 ; 7 uses
  %i.bje = icmp ne ptr %.sroa.21.0.copyload.i.i881, null
  %i.bjf = add i16 %.sroa.0.0.copyload.i.i879, -9
  %i.bjg = icmp ult i16 %i.bjf, -4
  %.not.i326.i = icmp ne i16 %.sroa.0.0.copyload.i.i879, 2
  %i.bjh = and i1 %.not.i326.i, %i.bjg
  %or.cond454.i = select i1 %i.bjh, i1 true, i1 %i.bje
  br i1 %or.cond454.i, label %.sink.split1321.sink.split, label %bb.nq

bb.nq:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
end_hunk_1
begin_hunk_2_@_ZL20matchShuffleWithPACKN4llvm3MVTERS0_RNS_7SDValueES3_RjNS_8ArrayRefIiEERKNS_12SelectionDAGERKNS_12X86SubtargetEj:bb.a
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit
  %.sroa.014.0.copyload = load ptr, ptr %2, align 8, !tbaa !449
  %.sroa.215.0.copyload = load i32, ptr %.sroa.215.0..sroa_idx, align 8, !tbaa !189
  %.sroa.011.0.copyload = load ptr, ptr %3, align 8, !tbaa !449
  %.sroa.212.0.copyload = load i32, ptr %.sroa.212.0..sroa_idx, align 8, !tbaa !189
  %i.am = call fastcc noundef zeroext i1 @"_ZZL20matchShuffleWithPACKN4llvm3MVTERS0_RNS_7SDValueES3_RjNS_8ArrayRefIiEERKNS_12SelectionDAGERKNS_12X86SubtargetEjENK3$_0clES2_S2_S0_"(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr %.sroa.014.0.copyload, i32 %.sroa.215.0.copyload, ptr %.sroa.011.0.copyload, i32 %.sroa.212.0.copyload, i16 %i.ah)
  br i1 %i.am, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4llvm3MVT12getIntegerVTEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  store ptr %i.x, ptr %10, align 8, !tbaa !26
  store i32 0, ptr %i.y, align 8, !tbaa !630
  store i32 32, ptr %i.z, align 4, !tbaa !631
  call fastcc void @_ZL21createPackShuffleMaskN4llvm3MVTERNS_15SmallVectorImplIiEEbj(i16 %0, ptr noundef nonnull align 8 dereferenceable(16) %10, i1 noundef zeroext true, i32 noundef %.04915)
  %i.an = load ptr, ptr %10, align 8, !tbaa !26
  %i.ao = load i32, ptr %i.y, align 8, !tbaa !630
  %i.ap = zext i32 %i.ao to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.aq = call fastcc noundef zeroext i1 @_ZL25isTargetShuffleEquivalentN4llvm3MVTENS_8ArrayRefIiEES2_RKNS_12SelectionDAGENS_7SDValueES6_(i16 %0, ptr %.0.val, i64 %.8.val, ptr %i.an, i64 %i.ap, ptr noundef nonnull align 8 dereferenceable(920) %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %2, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11)
  br i1 %i.aq, label %bb.g, label %.critedge56

bb.g:                                             ; preds = %bb.f
  %.sroa.03.0.copyload = load ptr, ptr %2, align 8, !tbaa !449 ; 2 uses
  %.sroa.24.0.copyload = load i32, ptr %.sroa.215.0..sroa_idx, align 8, !tbaa !189 ; 2 uses
  %i.ar = call fastcc noundef zeroext i1 @"_ZZL20matchShuffleWithPACKN4llvm3MVTERS0_RNS_7SDValueES3_RjNS_8ArrayRefIiEERKNS_12SelectionDAGERKNS_12X86SubtargetEjENK3$_0clES2_S2_S0_"(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr %.sroa.03.0.copyload, i32 %.sroa.24.0.copyload, ptr %.sroa.03.0.copyload, i32 %.sroa.24.0.copyload, i16 %i.ah)
  br i1 %i.ar, label %bb.j, label %.critedge56

.critedge56:                                      ; preds = %bb.g, %bb.f
  %i.as = load ptr, ptr %10, align 8, !tbaa !26   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.x
  br i1 %i.at, label %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.critedge56
  call void @free(ptr noundef %i.as) #38
  br label %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit

_ZN4llvm11SmallVectorIiLj32EED2Ev.exit:           ; preds = %.critedge56, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  %i.au = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.u
  br i1 %i.av, label %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit57, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit
  call void @free(ptr noundef %i.au) #38
  br label %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit57

_ZN4llvm11SmallVectorIiLj32EED2Ev.exit57:         ; preds = %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  %i.aw = add i32 %.04915, 1                      ; 2 uses
  %.not.not = icmp ugt i32 %i.aw, %7
  br i1 %.not.not, label %.critedge54, label %bb.d, !llvm.loop !4360

bb.j:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %10, align 8, !tbaa !26   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.x
  br i1 %i.ay, label %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit58, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.ax) #38
  br label %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit58

_ZN4llvm11SmallVectorIiLj32EED2Ev.exit58:         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  %i.az = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.u
  br i1 %i.ba, label %.critedge54.sink.split, label %.critedge54.sink.split.sink.split

.critedge:                                        ; preds = %bb.e
  %i.bb = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.u
  br i1 %i.bc, label %.critedge54.sink.split, label %.critedge54.sink.split.sink.split

.critedge54.sink.split.sink.split:                ; preds = %.critedge, %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit58
  %.sink = phi ptr [ %i.az, %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit58 ], [ %i.bb, %.critedge ]
  call void @free(ptr noundef %.sink) #38
  br label %.critedge54.sink.split

.critedge54.sink.split:                           ; preds = %.critedge54.sink.split.sink.split, %.critedge, %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit58
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  br label %.critedge54

.critedge54:                                      ; preds = %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit57, %.critedge54.sink.split, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit
  %.not11 = phi i1 [ false, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit ], [ true, %.critedge54.sink.split ], [ false, %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  ret i1 %.not11
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL21createPackShuffleMaskN4llvm3MVTERNS_15SmallVectorImplIiEEbj(i16 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = add i16 %0, -163
  %spec.select.i.i = icmp ult i16 %i.a, 53
  br i1 %spec.select.i.i, label %bb.b, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #40
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit:       ; preds = %bb.a
  %i.b = zext i16 %0 to i64                       ; 3 uses
  %i.c = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !294
  %i.f = zext i16 %i.e to i32
  %i.g = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.b ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.g, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.h = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.h, label %bb.c, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #40
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  %i.i = getelementptr i8, ptr %i.g, i64 -16
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 16 ; 2 uses
  %i.j = lshr i64 %.sroa.0.0.copyload.i, 7
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = add i16 %0, -19
  %spec.select.i.i.i = icmp ult i16 %i.l, 197
  br i1 %spec.select.i.i.i, label %bb.d, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

bb.d:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.m = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.b
  %i.n = getelementptr i8, ptr %i.m, i64 -2
  %i.o = load i16, ptr %i.n, align 2, !tbaa !299
  %.phi.trans.insert = zext i16 %i.o to i64
  %.phi.trans.insert56 = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %.phi.trans.insert
  %.phi.trans.insert57 = getelementptr i8, ptr %.phi.trans.insert56, i64 -16
  %.sroa.0.0.copyload.i.i.pre = load i64, ptr %.phi.trans.insert57, align 16
  br label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit:        ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %bb.d
  %.sroa.0.0.copyload.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.pre, %bb.d ], [ %.sroa.0.0.copyload.i, %_ZNK4llvm8TypeSizecvmEv.exit ]
  %.sroa.0.0.copyload.i.i.fr = freeze i64 %.sroa.0.0.copyload.i.i ; 2 uses
  %i.p = udiv i64 128, %.sroa.0.0.copyload.i.i.fr
  %i.q = trunc nuw nsw i64 %i.p to i32            ; 3 uses
  %i.r = select i1 %2, i32 0, i32 %i.f
  %i.s = add i32 %3, -1
  %i.t = shl nuw i32 1, %i.s
  %i.u = shl nuw i32 1, %3                        ; 2 uses
  %.not49 = icmp eq i32 %i.k, 0
  br i1 %.not49, label %._crit_edge51, label %.preheader39.lr.ph

.preheader39.lr.ph:                               ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit
  %.not3140 = icmp ugt i64 %.sroa.0.0.copyload.i.i.fr, 128
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  br i1 %.not3140, label %._crit_edge51, label %.preheader39

.preheader39:                                     ; preds = %.preheader39.lr.ph, %.split.split
  %.02850 = phi i32 [ %i.z, %.split.split ], [ 0, %.preheader39.lr.ph ] ; 2 uses
  %i.x = mul i32 %.02850, %i.q                    ; 2 uses
  %i.y = add i32 %i.x, %i.r
  br label %.preheader38

._crit_edge51:                                    ; preds = %.split.split, %.preheader39.lr.ph, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit
  ret void

.preheader38:                                     ; preds = %.preheader39, %._crit_edge
  %.02745 = phi i32 [ 0, %.preheader39 ], [ %i.aj, %._crit_edge ]
  br label %bb.e

.split.split:                                     ; preds = %._crit_edge
  %i.z = add nuw i32 %.02850, 1                   ; 2 uses
  %.not = icmp eq i32 %i.z, %i.k
  br i1 %.not, label %._crit_edge51, label %.preheader39, !llvm.loop !4361

bb.e:                                             ; preds = %.preheader38, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %.02641 = phi i32 [ 0, %.preheader38 ], [ %i.ai, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit ] ; 2 uses
  %i.aa = add i32 %.02641, %i.x                   ; 2 uses
  %i.ab = load i32, ptr %i.v, align 8, !tbaa !630 ; 2 uses
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !631
  %.not.i = icmp ult i32 %i.ab, %i.ac
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !632

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.aa)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = zext i32 %i.ab to i64
  %i.ae = load ptr, ptr %1, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ad
  store i32 %i.aa, ptr %i.af, align 1
  %i.ag = load i32, ptr %i.v, align 8, !tbaa !630
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !630
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.f, %bb.g
  %i.ai = add i32 %.02641, %i.u                   ; 2 uses
  %.not31 = icmp eq i32 %i.ai, %i.q
  br i1 %.not31, label %..preheader_crit_edge, label %bb.e, !llvm.loop !4362

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit34
  %i.aj = add i32 %.02745, 1                      ; 2 uses
  %.not30 = icmp eq i32 %i.aj, %i.t
  br i1 %.not30, label %.split.split, label %.preheader38, !llvm.loop !4363

..preheader_crit_edge:                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit34
  %.043 = phi i32 [ %i.as, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit34 ], [ 0, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit ] ; 2 uses
  %i.ak = add i32 %i.y, %.043                     ; 2 uses
  %i.al = load i32, ptr %i.v, align 8, !tbaa !630 ; 2 uses
  %i.am = load i32, ptr %i.w, align 4, !tbaa !631
  %.not.i33 = icmp ult i32 %i.al, %i.am
  br i1 %.not.i33, label %bb.i, label %bb.h, !prof !632

bb.h:                                             ; preds = %..preheader_crit_edge
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.ak)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit34

bb.i:                                             ; preds = %..preheader_crit_edge
  %i.an = zext i32 %i.al to i64
  %i.ao = load ptr, ptr %1, align 8, !tbaa !26
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.an
  store i32 %i.ak, ptr %i.ap, align 1
  %i.aq = load i32, ptr %i.v, align 8, !tbaa !630
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.v, align 8, !tbaa !630
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit34

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit34: ; preds = %bb.h, %bb.i
  %i.as = add i32 %.043, %i.u                     ; 2 uses
  %.not32 = icmp eq i32 %i.as, %i.q
  br i1 %.not32, label %._crit_edge, label %..preheader_crit_edge, !llvm.loop !4364
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @"_ZZL20matchShuffleWithPACKN4llvm3MVTERS0_RNS_7SDValueES3_RjNS_8ArrayRefIiEERKNS_12SelectionDAGERKNS_12X86SubtargetEjENK3$_0clES2_S2_S0_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr %1, i32 %2, ptr %3, i32 %4, i16 %5) unnamed_addr #2 align 2 {
bb.a:
  %6 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %7 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %8 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %9 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %10 = alloca %"class.llvm::APInt", align 8      ; 13 uses
  %i.a = add i16 %5, -19
  %spec.select.i.i.i = icmp ult i16 %i.a, 197
  br i1 %spec.select.i.i.i, label %bb.b, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i16 %5 to i64
  %i.c = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !299
  br label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i16 [ %i.e, %bb.b ], [ %5, %bb.a ]
  %i.f = zext i16 %.sroa.0.0.i.i to i64
  %i.g = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.h, align 16
  %i.i = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 7 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !4365, !nonnull !24, !align !3912
  %i.k = load i32, ptr %i.j, align 4, !tbaa !189  ; 2 uses
  %i.l = sub i32 %i.i, %i.k                       ; 4 uses
  %i.m = tail call { ptr, i32 } @_ZN4llvm19peekThroughBitcastsENS_7SDValueE(ptr %1, i32 %2) #38 ; 2 uses
  %.fca.0.extract53 = extractvalue { ptr, i32 } %i.m, 0 ; 8 uses
  %.fca.1.extract54 = extractvalue { ptr, i32 } %i.m, 1 ; 7 uses
  %i.n = tail call { ptr, i32 } @_ZN4llvm19peekThroughBitcastsENS_7SDValueE(ptr %3, i32 %4) #38 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.n, 0 ; 8 uses
  %.fca.1.extract = extractvalue { ptr, i32 } %i.n, 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  %i.o = getelementptr inbounds nuw i8, ptr %.fca.0.extract53, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !454
  %i.q = zext i32 %.fca.1.extract54 to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.r, align 8, !tbaa !299 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !455 ; 2 uses
  %.fca.0.insert.i.i.i = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.copyload.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { i16, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.21.0.copyload.i.i.i, 1 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i.i, ptr %9, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.s, align 8
  %.not.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit
  %i.t = add i16 %.sroa.0.0.copyload.i.i.i, -19
  %spec.select.i.i.i.i = icmp ult i16 %i.t, 197
  br i1 %spec.select.i.i.i.i, label %bb.c, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT8isVectorEv.exit.i.i:                ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit
  %i.u = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #39
  br i1 %i.u, label %bb.d, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.c:                                             ; preds = %.split.i.i
  %i.v = zext nneg i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.w = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -2
  %i.y = load i16, ptr %i.x, align 2, !tbaa !299
  %i.z = insertvalue { i16, ptr } poison, i16 %i.y, 0
  %i.aa = insertvalue { i16, ptr } %i.z, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.d:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i
  %i.ab = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #38
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i:            ; preds = %bb.d, %bb.c, %_ZNK4llvm3EVT8isVectorEv.exit.i.i, %.split.i.i
  %.fca.1.insert.merged.i.i = phi { i16, ptr } [ %i.ab, %bb.d ], [ %i.aa, %bb.c ], [ %.fca.1.insert.i.i.i, %_ZNK4llvm3EVT8isVectorEv.exit.i.i ], [ %.fca.1.insert.i.i.i, %.split.i.i ] ; 2 uses
  %i.ac = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 0 ; 3 uses
  store i16 %i.ac, ptr %8, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ae = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 1
  store ptr %i.ae, ptr %i.ad, align 8
  %.not.i.i1.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.i1.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.af = zext i16 %i.ac to i64
  %i.ag = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ah, align 16
  br label %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit

bb.f:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.ai = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #39
  %i.aj = extractvalue { i64, i8 } %i.ai, 0
  br label %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit

_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit: ; preds = %bb.e, %bb.f
  %.pn.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %bb.e ], [ %i.aj, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  %i.ak = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !454
  %i.am = zext i32 %.fca.1.extract to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %.sroa.0.0.copyload.i.i.i75 = load i16, ptr %i.an, align 8, !tbaa !299 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i.i76 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.21.0.copyload.i.i.i77 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i76, align 8, !tbaa !455 ; 2 uses
  %.fca.0.insert.i.i.i78 = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.copyload.i.i.i75, 0
  %.fca.1.insert.i.i.i79 = insertvalue { i16, ptr } %.fca.0.insert.i.i.i78, ptr %.sroa.21.0.copyload.i.i.i77, 1 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i.i75, ptr %7, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i77, ptr %i.ao, align 8
  %.not.i.i.i80 = icmp eq i16 %.sroa.0.0.copyload.i.i.i75, 0
  br i1 %.not.i.i.i80, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i88, label %.split.i.i81

.split.i.i81:                                     ; preds = %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit
  %i.ap = add i16 %.sroa.0.0.copyload.i.i.i75, -19
  %spec.select.i.i.i.i82 = icmp ult i16 %i.ap, 197
  br i1 %spec.select.i.i.i.i82, label %bb.g, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i83

_ZNK4llvm3EVT8isVectorEv.exit.i.i88:              ; preds = %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit
  %i.aq = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #39
  br i1 %i.aq, label %bb.h, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i83

bb.g:                                             ; preds = %.split.i.i81
  %i.ar = zext nneg i16 %.sroa.0.0.copyload.i.i.i75 to i64
  %i.as = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 -2
  %i.au = load i16, ptr %i.at, align 2, !tbaa !299
  %i.av = insertvalue { i16, ptr } poison, i16 %i.au, 0
  %i.aw = insertvalue { i16, ptr } %i.av, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i83

bb.h:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i88
  %i.ax = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #38
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i83

_ZNK4llvm3EVT13getScalarTypeEv.exit.i83:          ; preds = %bb.h, %bb.g, %_ZNK4llvm3EVT8isVectorEv.exit.i.i88, %.split.i.i81
  %.fca.1.insert.merged.i.i84 = phi { i16, ptr } [ %i.ax, %bb.h ], [ %i.aw, %bb.g ], [ %.fca.1.insert.i.i.i79, %_ZNK4llvm3EVT8isVectorEv.exit.i.i88 ], [ %.fca.1.insert.i.i.i79, %.split.i.i81 ] ; 2 uses
  %i.ay = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i84, 0 ; 3 uses
  store i16 %i.ay, ptr %6, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ba = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i84, 1
  store ptr %i.ba, ptr %i.az, align 8
  %.not.i.i1.i85 = icmp eq i16 %i.ay, 0
  br i1 %.not.i.i1.i85, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i83
  %i.bb = zext i16 %i.ay to i64
  %i.bc = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 -16
  %.sroa.0.0.copyload.i.i.i.i86 = load i64, ptr %i.bd, align 16
  br label %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit89

bb.j:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i83
  %i.be = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #39
  %i.bf = extractvalue { i64, i8 } %i.be, 0
  br label %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit89

_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit89: ; preds = %bb.i, %bb.j
  %.pn.i.i.i87 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i86, %bb.i ], [ %i.bf, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  %i.bg = call noundef zeroext i1 @_ZN4llvm17isNullOrNullSplatENS_7SDValueEb(ptr nonnull %.fca.0.extract53, i32 %.fca.1.extract54, i1 noundef zeroext false) #38 ; 3 uses
  %i.bh = call noundef zeroext i1 @_ZN4llvm17isNullOrNullSplatENS_7SDValueEb(ptr nonnull %.fca.0.extract, i32 %.fca.1.extract, i1 noundef zeroext false) #38 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.fca.0.extract53, i64 24 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !452
end_hunk_2

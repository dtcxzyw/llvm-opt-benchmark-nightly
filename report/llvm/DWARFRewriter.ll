Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DWARFRewriter?download=true
inline.NumInlined: 9616
inline.NumDeleted: 5276
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm4bolt13DWARFRewriter19updateUnitDebugInfoERNS_9DWARFUnitERNS0_10DIEBuilderERNS0_14DebugLocWriterERNS0_24DebugRangesSectionWriterERNS0_15DebugAddrWriterESt8optionalImE:bb.a
  br label %_ZN4llvm11SmallVectorImLj6EED2Ev.exit1.i.i

_ZN4llvm11SmallVectorImLj6EED2Ev.exit1.i.i:       ; preds = %bb.gw, %_ZN4llvm11SmallVectorImLj6EED2Ev.exit.i.i
  %i.ajo = load ptr, ptr %i.cz, align 8, !tbaa !297 ; 2 uses
  %i.ajp = icmp eq ptr %i.ajo, %i.da
  br i1 %i.ajp, label %_ZN4llvm15DWARFExpression8iteratorD2Ev.exit, label %bb.gx

bb.gx:                                            ; preds = %_ZN4llvm11SmallVectorImLj6EED2Ev.exit1.i.i
  call void @free(ptr noundef %i.ajo) #28
  br label %_ZN4llvm15DWARFExpression8iteratorD2Ev.exit

_ZN4llvm15DWARFExpression8iteratorD2Ev.exit:      ; preds = %_ZN4llvm11SmallVectorImLj6EED2Ev.exit1.i.i, %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #28
  %i.ajq = load ptr, ptr %i.cs, align 8, !tbaa !86 ; 2 uses
  %i.ajr = icmp eq ptr %i.ajq, %i.ct
  br i1 %i.ajr, label %_ZN4llvm11SmallVectorImLj6EED2Ev.exit.i.i371, label %bb.gy

bb.gy:                                            ; preds = %_ZN4llvm15DWARFExpression8iteratorD2Ev.exit
  call void @free(ptr noundef %i.ajq) #28
  br label %_ZN4llvm11SmallVectorImLj6EED2Ev.exit.i.i371

_ZN4llvm11SmallVectorImLj6EED2Ev.exit.i.i371:     ; preds = %bb.gy, %_ZN4llvm15DWARFExpression8iteratorD2Ev.exit
  %i.ajs = load ptr, ptr %i.co, align 8, !tbaa !86 ; 2 uses
  %i.ajt = icmp eq ptr %i.ajs, %i.cp
  br i1 %i.ajt, label %_ZN4llvm11SmallVectorImLj6EED2Ev.exit1.i.i372, label %bb.gz

bb.gz:                                            ; preds = %_ZN4llvm11SmallVectorImLj6EED2Ev.exit.i.i371
  call void @free(ptr noundef %i.ajs) #28
  br label %_ZN4llvm11SmallVectorImLj6EED2Ev.exit1.i.i372

_ZN4llvm11SmallVectorImLj6EED2Ev.exit1.i.i372:    ; preds = %bb.gz, %_ZN4llvm11SmallVectorImLj6EED2Ev.exit.i.i371
  %i.aju = load ptr, ptr %i.cj, align 8, !tbaa !297 ; 2 uses
  %i.ajv = icmp eq ptr %i.aju, %i.ck
  br i1 %i.ajv, label %_ZN4llvm15DWARFExpression8iteratorD2Ev.exit373, label %bb.ha

bb.ha:                                            ; preds = %_ZN4llvm11SmallVectorImLj6EED2Ev.exit1.i.i372
  call void @free(ptr noundef %i.aju) #28
  br label %_ZN4llvm15DWARFExpression8iteratorD2Ev.exit373

_ZN4llvm15DWARFExpression8iteratorD2Ev.exit373:   ; preds = %_ZN4llvm11SmallVectorImLj6EED2Ev.exit1.i.i372, %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #28
  %.not215 = icmp eq ptr %.0195, null
  %.0194..0195 = select i1 %.not215, ptr %.0194, ptr %.0195
  %i.ajw = getelementptr inbounds nuw i8, ptr %.0194..0195, i64 8
  store i32 %.0196.lcssa887, ptr %i.ajw, align 8, !tbaa !453
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.ajy = load i16, ptr %i.cg, align 4, !tbaa !282
  %i.ajz = load ptr, ptr %i.ajx, align 8, !tbaa !281 ; 2 uses
  %.not.i.i.i468 = icmp eq ptr %i.ajz, null
  br i1 %.not.i.i.i468, label %_ZN4llvm12DIEValueList12replaceValueERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEENS_5dwarf9AttributeENS5_4FormERNS_8DIEValueE.exit, label %_ZN4llvm12DIEValueList6valuesEv.exit.i

.lr.ph687:                                        ; preds = %_ZNK4llvm15DWARFExpression5beginEv.exit, %_ZN4llvm15DWARFExpression8iteratorppEv.exit
  %.0196686 = phi i32 [ %.2198, %_ZN4llvm15DWARFExpression8iteratorppEv.exit ], [ 0, %_ZNK4llvm15DWARFExpression5beginEv.exit ] ; 2 uses
  %.0200685 = phi i32 [ %.1193603, %_ZN4llvm15DWARFExpression8iteratorppEv.exit ], [ 0, %_ZNK4llvm15DWARFExpression5beginEv.exit ] ; 5 uses
  %i.aka = add i32 %.0200685, 1                   ; 3 uses
  %i.akb = load i64, ptr %i.cl, align 8, !tbaa !247 ; 2 uses
  switch i64 %i.akb, label %bb.hc [
    i64 1, label %.thread598
    i64 2, label %bb.hb
  ]

.thread598:                                       ; preds = %.lr.ph687
  %i.akc = load ptr, ptr %i.cs, align 8, !tbaa !86
  %i.akd = load i64, ptr %i.akc, align 8, !tbaa !184
  %i.ake = trunc i64 %i.akd to i32
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit376

bb.hb:                                            ; preds = %.lr.ph687
  %i.akf = load ptr, ptr %i.cs, align 8, !tbaa !86
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 8
  %i.akh = load i64, ptr %i.akg, align 8, !tbaa !184
  %i.aki = trunc i64 %i.akh to i32
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit376

bb.hc:                                            ; preds = %.lr.ph687
  %i.akj = icmp ugt i64 %i.akb, 2
  br i1 %i.akj, label %bb.hd, label %_ZN4llvm11raw_ostreamlsEPKc.exit376

bb.hd:                                            ; preds = %bb.hc
  %i.akk = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #28 ; 3 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 24
  %i.akm = load ptr, ptr %i.akl, align 8, !tbaa !424
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akk, i64 32 ; 3 uses
  %i.ako = load ptr, ptr %i.akn, align 8, !tbaa !425 ; 2 uses
  %i.akp = ptrtoint ptr %i.akm to i64
  %i.akq = ptrtoint ptr %i.ako to i64
  %i.akr = sub i64 %i.akp, %i.akq
  %i.aks = icmp ult i64 %i.akr, 70
  br i1 %i.aks, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.akt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.akk, ptr noundef nonnull @.str.35, i64 noundef 70) #28 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit376

bb.hf:                                            ; preds = %bb.hd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(70) %i.ako, ptr noundef nonnull align 1 dereferenceable(70) @.str.35, i64 70, i1 false)
  %i.aku = load ptr, ptr %i.akn, align 8, !tbaa !425
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aku, i64 70
  store ptr %i.akv, ptr %i.akn, align 8, !tbaa !425
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit376

_ZN4llvm11raw_ostreamlsEPKc.exit376:              ; preds = %bb.hb, %.thread598, %bb.hf, %bb.he, %bb.hc
  %.1193603 = phi i32 [ %i.aka, %bb.hf ], [ %i.aka, %bb.hc ], [ %i.aka, %bb.he ], [ %i.aki, %bb.hb ], [ %i.ake, %.thread598 ] ; 2 uses
  %i.akw = load i8, ptr %i.cw, align 8, !tbaa !1556
  switch i8 %i.akw, label %bb.hg [
    i8 -5, label %bb.hi
    i8 -95, label %bb.hi
  ]

bb.hg:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit376
  %i.akx = load ptr, ptr %.0201, align 8, !tbaa !281 ; 2 uses
  %.not.i.i377 = icmp eq ptr %i.akx, null
  br i1 %.not.i.i377, label %_ZN4llvm12DIEValueList6valuesEv.exit, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.akx, align 8
  %i.aky = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.akz = inttoptr i64 %i.aky to ptr
  br label %_ZN4llvm12DIEValueList6valuesEv.exit

_ZN4llvm12DIEValueList6valuesEv.exit:             ; preds = %bb.hg, %bb.hh
  %.sroa.0.0.i.i = phi ptr [ %i.akz, %bb.hh ], [ null, %bb.hg ] ; 3 uses
  %.not1.i = icmp eq i32 %.0200685, 0
  br i1 %.not1.i, label %_ZSt9__advanceIN4llvm12DIEValueList14value_iteratorElEvRT_T0_St18input_iterator_tag.exit, label %.lr.ph.i381.preheader

.lr.ph.i381.preheader:                            ; preds = %_ZN4llvm12DIEValueList6valuesEv.exit
  %i.ala = zext i32 %.0200685 to i64              ; 3 uses
  %xtraiter = and i64 %i.ala, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i381.prol.loopexit, label %.lr.ph.i381.prol

.lr.ph.i381.prol:                                 ; preds = %.lr.ph.i381.preheader, %.lr.ph.i381.prol
  %.02.i.prol = phi i64 [ %i.alc, %.lr.ph.i381.prol ], [ %i.ala, %.lr.ph.i381.preheader ]
  %i.alb = phi ptr [ %i.ale, %.lr.ph.i381.prol ], [ %.sroa.0.0.i.i, %.lr.ph.i381.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i381.prol ], [ 0, %.lr.ph.i381.preheader ]
  %i.alc = add nsw i64 %.02.i.prol, -1            ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i382.prol = load i64, ptr %i.alb, align 8 ; 2 uses
  %i.ald = and i64 %.0.copyload.i.i.i.i.i.i.i382.prol, -8
  %i.ale = inttoptr i64 %i.ald to ptr             ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i381.prol.loopexit, label %.lr.ph.i381.prol, !llvm.loop !1406

.lr.ph.i381.prol.loopexit:                        ; preds = %.lr.ph.i381.prol, %.lr.ph.i381.preheader
  %.0.copyload.i.i.i.i.i.i.i382.lcssa.unr = phi i64 [ poison, %.lr.ph.i381.preheader ], [ %.0.copyload.i.i.i.i.i.i.i382.prol, %.lr.ph.i381.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i381.preheader ], [ %i.ale, %.lr.ph.i381.prol ]
  %.02.i.unr = phi i64 [ %i.ala, %.lr.ph.i381.preheader ], [ %i.alc, %.lr.ph.i381.prol ]
  %.unr = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i381.preheader ], [ %i.ale, %.lr.ph.i381.prol ]
  %i.alf = icmp ult i32 %.0200685, 8
  br i1 %i.alf, label %_ZSt9__advanceIN4llvm12DIEValueList14value_iteratorElEvRT_T0_St18input_iterator_tag.exit.loopexit, label %.lr.ph.i381

.lr.ph.i381:                                      ; preds = %.lr.ph.i381.prol.loopexit, %.lr.ph.i381
  %.02.i = phi i64 [ %i.alv, %.lr.ph.i381 ], [ %.02.i.unr, %.lr.ph.i381.prol.loopexit ]
  %i.alg = phi ptr [ %i.alx, %.lr.ph.i381 ], [ %.unr, %.lr.ph.i381.prol.loopexit ]
  %.0.copyload.i.i.i.i.i.i.i382 = load i64, ptr %i.alg, align 8
  %i.alh = and i64 %.0.copyload.i.i.i.i.i.i.i382, -8
  %i.ali = inttoptr i64 %i.alh to ptr
  %.0.copyload.i.i.i.i.i.i.i382.1 = load i64, ptr %i.ali, align 8
  %i.alj = and i64 %.0.copyload.i.i.i.i.i.i.i382.1, -8
  %i.alk = inttoptr i64 %i.alj to ptr
  %.0.copyload.i.i.i.i.i.i.i382.2 = load i64, ptr %i.alk, align 8
  %i.all = and i64 %.0.copyload.i.i.i.i.i.i.i382.2, -8
  %i.alm = inttoptr i64 %i.all to ptr
  %.0.copyload.i.i.i.i.i.i.i382.3 = load i64, ptr %i.alm, align 8
  %i.aln = and i64 %.0.copyload.i.i.i.i.i.i.i382.3, -8
  %i.alo = inttoptr i64 %i.aln to ptr
  %.0.copyload.i.i.i.i.i.i.i382.4 = load i64, ptr %i.alo, align 8
  %i.alp = and i64 %.0.copyload.i.i.i.i.i.i.i382.4, -8
  %i.alq = inttoptr i64 %i.alp to ptr
  %.0.copyload.i.i.i.i.i.i.i382.5 = load i64, ptr %i.alq, align 8
  %i.alr = and i64 %.0.copyload.i.i.i.i.i.i.i382.5, -8
  %i.als = inttoptr i64 %i.alr to ptr
  %.0.copyload.i.i.i.i.i.i.i382.6 = load i64, ptr %i.als, align 8
  %i.alt = and i64 %.0.copyload.i.i.i.i.i.i.i382.6, -8
  %i.alu = inttoptr i64 %i.alt to ptr
  %i.alv = add nsw i64 %.02.i, -8                 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i382.7 = load i64, ptr %i.alu, align 8 ; 2 uses
  %i.alw = and i64 %.0.copyload.i.i.i.i.i.i.i382.7, -8
  %i.alx = inttoptr i64 %i.alw to ptr             ; 2 uses
  %.not.i384.7 = icmp eq i64 %i.alv, 0
  br i1 %.not.i384.7, label %_ZSt9__advanceIN4llvm12DIEValueList14value_iteratorElEvRT_T0_St18input_iterator_tag.exit.loopexit, label %.lr.ph.i381, !llvm.loop !1407

_ZSt9__advanceIN4llvm12DIEValueList14value_iteratorElEvRT_T0_St18input_iterator_tag.exit.loopexit: ; preds = %.lr.ph.i381, %.lr.ph.i381.prol.loopexit
  %.0.copyload.i.i.i.i.i.i.i382.lcssa = phi i64 [ %.0.copyload.i.i.i.i.i.i.i382.lcssa.unr, %.lr.ph.i381.prol.loopexit ], [ %.0.copyload.i.i.i.i.i.i.i382.7, %.lr.ph.i381 ]
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i381.prol.loopexit ], [ %i.alx, %.lr.ph.i381 ]
  %i.aly = and i64 %.0.copyload.i.i.i.i.i.i.i382.lcssa, 4
  %.not.i.i.i.i383.le = icmp eq i64 %i.aly, 0
  %i.alz = select i1 %.not.i.i.i.i383.le, ptr %.lcssa, ptr null
  br label %_ZSt9__advanceIN4llvm12DIEValueList14value_iteratorElEvRT_T0_St18input_iterator_tag.exit

_ZSt9__advanceIN4llvm12DIEValueList14value_iteratorElEvRT_T0_St18input_iterator_tag.exit: ; preds = %_ZSt9__advanceIN4llvm12DIEValueList14value_iteratorElEvRT_T0_St18input_iterator_tag.exit.loopexit, %_ZN4llvm12DIEValueList6valuesEv.exit
  %.sroa.0482.1 = phi ptr [ %.sroa.0.0.i.i, %_ZN4llvm12DIEValueList6valuesEv.exit ], [ %i.alz, %_ZSt9__advanceIN4llvm12DIEValueList14value_iteratorElEvRT_T0_St18input_iterator_tag.exit.loopexit ]
  %i.ama = sub i32 %.1193603, %.0200685           ; 3 uses
  %i.amb = add i32 %i.ama, %.0196686              ; 2 uses
  %.not216680 = icmp eq i32 %i.ama, 0
  br i1 %.not216680, label %.loopexit, label %.lr.ph683

.lr.ph683:                                        ; preds = %_ZSt9__advanceIN4llvm12DIEValueList14value_iteratorElEvRT_T0_St18input_iterator_tag.exit, %.lr.ph683
  %.0191682 = phi i32 [ %72, %.lr.ph683 ], [ %i.ama, %_ZSt9__advanceIN4llvm12DIEValueList14value_iteratorElEvRT_T0_St18input_iterator_tag.exit ]
  %.sroa.0482.0681 = phi ptr [ %i.amj, %.lr.ph683 ], [ %.sroa.0482.1, %_ZSt9__advanceIN4llvm12DIEValueList14value_iteratorElEvRT_T0_St18input_iterator_tag.exit ] ; 2 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %.sroa.0482.0681, i64 8
  %i.amd = load ptr, ptr %2, align 8, !tbaa !257
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 216
  %i.amf = call ptr @_ZN4llvm12DIEValueList8addValueERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEERKNS_8DIEValueE(ptr noundef nonnull align 8 dereferenceable(8) %.0199, ptr noundef nonnull align 8 dereferenceable(80) %i.ame, ptr noundef nonnull align 8 dereferenceable(16) %i.amc) ; 0 uses
  %.0.copyload.i.i.i.i.i.i.i390 = load i64, ptr %.sroa.0482.0681, align 8 ; 2 uses
  %i.amg = and i64 %.0.copyload.i.i.i.i.i.i.i390, -8
  %i.amh = inttoptr i64 %i.amg to ptr
  %72 = add i32 %.0191682, -1                     ; 2 uses
  %i.ami = and i64 %.0.copyload.i.i.i.i.i.i.i390, 4
  %.not.i.i.i.i391 = icmp eq i64 %i.ami, 0
  %i.amj = select i1 %.not.i.i.i.i391, ptr %i.amh, ptr null
  %.not216 = icmp eq i32 %72, 0
  br i1 %.not216, label %.loopexit, label %.lr.ph683, !llvm.loop !1408

bb.hi:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit376, %_ZN4llvm11raw_ostreamlsEPKc.exit376
  %i.amk = load ptr, ptr %i.co, align 8, !tbaa !86
  %i.aml = load i64, ptr %i.amk, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #28
  %i.amm = trunc i64 %i.aml to i32
  call void @_ZNK4llvm9DWARFUnit24getAddrOffsetSectionItemEj(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.185") align 8 %68, ptr noundef nonnull align 8 dereferenceable(448) %1, i32 noundef %i.amm) #28
  %i.amn = load i64, ptr %68, align 8, !tbaa !401
  %i.amo = call noundef i32 @_ZN4llvm4bolt15DebugAddrWriter19getIndexFromAddressEmRNS_9DWARFUnitE(ptr noundef nonnull align 8 dereferenceable(200) %5, i64 noundef %i.amn, ptr noundef nonnull align 8 dereferenceable(448) %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #28
  store ptr %i.dm, ptr %69, align 8, !tbaa !297
  store i64 0, ptr %i.dn, align 8, !tbaa !247
  store i64 8, ptr %i.do, align 8, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #28
  store i32 2, ptr %i.dp, align 8, !tbaa !455
  store i8 0, ptr %i.dq, align 8, !tbaa !456
  store i32 1, ptr %i.dr, align 4, !tbaa !457
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %70, align 8, !tbaa !75
  store ptr %69, ptr %i.dt, align 8, !tbaa !459
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %70, ptr noundef null, i64 noundef 0, i32 noundef 0) #28
  %i.amp = zext i32 %i.amo to i64
  br label %bb.hj

bb.hj:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i, %bb.hi
  %.019.i = phi i64 [ %i.amp, %bb.hi ], [ %i.amq, %_ZN4llvm11raw_ostreamlsEc.exit.i ] ; 2 uses
  %i.amq = lshr i64 %.019.i, 7                    ; 2 uses
  %.not.i395.not = icmp eq i64 %i.amq, 0          ; 2 uses
  %i.amr = trunc i64 %.019.i to i8                ; 2 uses
  %i.ams = or i8 %i.amr, -128
  %.0.i396 = select i1 %.not.i395.not, i8 %i.amr, i8 %i.ams ; 2 uses
  %i.amt = load ptr, ptr %i.du, align 8, !tbaa !425 ; 3 uses
  %i.amu = load ptr, ptr %i.dv, align 8, !tbaa !424
  %.not.i.i397 = icmp ult ptr %i.amt, %i.amu
  br i1 %.not.i.i397, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.amv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %70, i8 noundef zeroext %.0.i396) #28 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

bb.hl:                                            ; preds = %bb.hj
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amt, i64 1
  store ptr %i.amw, ptr %i.du, align 8, !tbaa !425
  store i8 %.0.i396, ptr %i.amt, align 1, !tbaa !92
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

_ZN4llvm11raw_ostreamlsEc.exit.i:                 ; preds = %bb.hl, %bb.hk
  br i1 %.not.i395.not, label %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit, label %bb.hj, !llvm.loop !1409

_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i
  %i.amx = load i8, ptr %i.cw, align 8, !tbaa !1556
  %i.amy = zext i8 %i.amx to i64
  %i.amz = load ptr, ptr %2, align 8, !tbaa !257
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amz, i64 216
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  store i32 1, ptr %10, align 8, !tbaa !275
  store i16 0, ptr %i.dw, align 4, !tbaa !282
  store i16 11, ptr %i.dx, align 2, !tbaa !278
  store i64 %i.amy, ptr %i.dy, align 8, !tbaa !184
  %i.anb = call ptr @_ZN4llvm12DIEValueList8addValueERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEERKNS_8DIEValueE(ptr noundef nonnull align 8 dereferenceable(8) %.0199, ptr noundef nonnull align 8 dereferenceable(80) %i.ana, ptr noundef nonnull align 8 dereferenceable(16) %10) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.anc = load ptr, ptr %69, align 8, !tbaa !297 ; 2 uses
  %i.and = load i64, ptr %i.dn, align 8, !tbaa !247 ; 3 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %i.anc, i64 %i.and
  %.1197673 = add i32 %.0196686, 1                ; 2 uses
  %.not217674 = icmp samesign eq i64 %i.and, 0
  br i1 %.not217674, label %._crit_edge, label %.lr.ph677

._crit_edge.loopexit:                             ; preds = %.lr.ph677
  %i.anf = trunc i64 %i.and to i32
  %i.ang = add i32 %.1197673, %i.anf
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit
  %.1197.lcssa = phi i32 [ %.1197673, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit ], [ %i.ang, %._crit_edge.loopexit ]
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %70) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #28
  %i.anh = load ptr, ptr %69, align 8, !tbaa !297 ; 2 uses
  %i.ani = icmp eq ptr %i.anh, %i.dm
  br i1 %i.ani, label %_ZN4llvm11SmallVectorIcLj8EED2Ev.exit, label %bb.hm

bb.hm:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %i.anh) #28
  br label %_ZN4llvm11SmallVectorIcLj8EED2Ev.exit

_ZN4llvm11SmallVectorIcLj8EED2Ev.exit:            ; preds = %._crit_edge, %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #28
  br label %.loopexit

.lr.ph677:                                        ; preds = %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit, %.lr.ph677
  %.0189675 = phi ptr [ %i.ano, %.lr.ph677 ], [ %i.anc, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit ] ; 2 uses
  %i.anj = load i8, ptr %.0189675, align 1, !tbaa !92
  %i.ank = zext i8 %i.anj to i64
  %i.anl = load ptr, ptr %2, align 8, !tbaa !257
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 216
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store i32 1, ptr %9, align 8, !tbaa !275
  store i16 0, ptr %i.dz, align 4, !tbaa !282
  store i16 11, ptr %i.ea, align 2, !tbaa !278
  store i64 %i.ank, ptr %i.eb, align 8, !tbaa !184
  %i.ann = call ptr @_ZN4llvm12DIEValueList8addValueERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEERKNS_8DIEValueE(ptr noundef nonnull align 8 dereferenceable(8) %.0199, ptr noundef nonnull align 8 dereferenceable(80) %i.anm, ptr noundef nonnull align 8 dereferenceable(16) %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.ano = getelementptr inbounds nuw i8, ptr %.0189675, i64 1 ; 2 uses
  %.not217 = icmp eq ptr %i.ano, %i.ane
  br i1 %.not217, label %._crit_edge.loopexit, label %.lr.ph677

.loopexit:                                        ; preds = %.lr.ph683, %_ZSt9__advanceIN4llvm12DIEValueList14value_iteratorElEvRT_T0_St18input_iterator_tag.exit, %_ZN4llvm11SmallVectorIcLj8EED2Ev.exit
  %.2198 = phi i32 [ %.1197.lcssa, %_ZN4llvm11SmallVectorIcLj8EED2Ev.exit ], [ %i.amb, %_ZSt9__advanceIN4llvm12DIEValueList14value_iteratorElEvRT_T0_St18input_iterator_tag.exit ], [ %i.amb, %.lr.ph683 ] ; 3 uses
  %i.anp = load i8, ptr %i.cn, align 8, !tbaa !1553, !range !72, !noundef !73
  %i.anq = trunc nuw i8 %i.anp to i1
  %i.anr = load ptr, ptr %66, align 8             ; 5 uses
  %.sroa.2.0..sroa_idx.i.i401 = getelementptr inbounds nuw i8, ptr %i.anr, i64 8 ; 2 uses
  %.in.i = select i1 %i.anq, ptr %.sroa.2.0..sroa_idx.i.i401, ptr %i.ec
  %i.ans = load i64, ptr %.in.i, align 8, !tbaa !184 ; 4 uses
  store i64 %i.ans, ptr %i.ch, align 8, !tbaa !1551
  %.sroa.2.0.copyload.i3.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i401, align 8, !tbaa !184
  %.not.i402 = icmp ult i64 %i.ans, %.sroa.2.0.copyload.i3.i
  br i1 %.not.i402, label %bb.hn, label %_ZN4llvm15DWARFExpression8iteratorppEv.exit

bb.hn:                                            ; preds = %.loopexit
  %i.ant = getelementptr inbounds nuw i8, ptr %i.anr, i64 24
  %i.anu = load i8, ptr %i.ant, align 8, !tbaa !1532
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anr, i64 25
  %.sroa.0.0.copyload.i403 = load i16, ptr %i.anv, align 1
  %i.anw = call noundef zeroext i1 @_ZN4llvm15DWARFExpression9Operation7extractENS_13DataExtractorEhmSt8optionalINS_5dwarf11DwarfFormatEE(ptr noundef nonnull align 8 dereferenceable(224) %i.cw, ptr noundef nonnull byval(%"class.llvm::DataExtractor") align 8 %i.anr, i8 noundef zeroext %i.anu, i64 noundef %i.ans, i16 %.sroa.0.0.copyload.i403) #28
  %i.anx = xor i1 %i.anw, true
  %i.any = zext i1 %i.anx to i8
  %.pre737.a = load ptr, ptr %66, align 8, !tbaa !1550
  %.pre738 = load i64, ptr %i.ch, align 8
  br label %_ZN4llvm15DWARFExpression8iteratorppEv.exit

_ZN4llvm15DWARFExpression8iteratorppEv.exit:      ; preds = %.loopexit, %bb.hn
  %i.anz = phi i64 [ %i.ans, %.loopexit ], [ %.pre738, %bb.hn ]
  %i.aoa = phi ptr [ %i.anr, %.loopexit ], [ %.pre737.a, %bb.hn ]
  %i.aob = phi i8 [ 1, %.loopexit ], [ %i.any, %bb.hn ]
  store i8 %i.aob, ptr %i.cn, align 8, !tbaa !1555
  %i.aoc = load ptr, ptr %67, align 8, !tbaa !1550
  %i.aod = icmp ne ptr %i.aoa, %i.aoc
  %i.aoe = load i64, ptr %i.cx, align 8
  %i.aof = icmp ne i64 %i.anz, %i.aoe
  %.not3.i = select i1 %i.aod, i1 true, i1 %i.aof
  br i1 %.not3.i, label %.lr.ph687, label %._crit_edge688

_ZN4llvm12DIEValueList6valuesEv.exit.i:           ; preds = %_ZN4llvm15DWARFExpression8iteratorD2Ev.exit373
  %.0.copyload.i.i.i.i.i.i469 = load i64, ptr %i.ajz, align 8
  %i.aog = and i64 %.0.copyload.i.i.i.i.i.i469, -8 ; 2 uses
  %.not1723.not.i = icmp eq i64 %i.aog, 0
  br i1 %.not1723.not.i, label %_ZN4llvm12DIEValueList12replaceValueERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEENS_5dwarf9AttributeENS5_4FormERNS_8DIEValueE.exit, label %.lr.ph.i470

.lr.ph.i470:                                      ; preds = %_ZN4llvm12DIEValueList6valuesEv.exit.i, %.critedge.i472
  %.sroa.012.024.in.i = phi i64 [ %i.aos, %.critedge.i472 ], [ %i.aog, %_ZN4llvm12DIEValueList6valuesEv.exit.i ]
  %.sroa.012.024.i = inttoptr i64 %.sroa.012.024.in.i to ptr ; 10 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %.sroa.012.024.i, i64 12
  %i.aoi = load i16, ptr %i.aoh, align 4, !tbaa !282
  %.not.i471 = icmp eq i16 %i.aoi, %i.ajy
  br i1 %.not.i471, label %bb.ho, label %.critedge.i472

bb.ho:                                            ; preds = %.lr.ph.i470
  %i.aoj = getelementptr inbounds nuw i8, ptr %.sroa.012.024.i, i64 12
  %i.aok = getelementptr inbounds nuw i8, ptr %.sroa.012.024.i, i64 8
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0 to i32 ; 2 uses
  store i32 %.sroa.0.0.extract.trunc, ptr %i.aok, align 8, !tbaa !275
  %.sroa.0.4.extract.shift = lshr i64 %.sroa.0.0, 32
  %.sroa.0.4.extract.trunc = trunc i64 %.sroa.0.4.extract.shift to i16
  store i16 %.sroa.0.4.extract.trunc, ptr %i.aoj, align 4, !tbaa !282
  %.sroa.0.6.extract.shift = lshr i64 %.sroa.0.0, 48
  %.sroa.0.6.extract.trunc = trunc nuw i64 %.sroa.0.6.extract.shift to i16
  %i.aol = getelementptr inbounds nuw i8, ptr %.sroa.012.024.i, i64 14
  store i16 %.sroa.0.6.extract.trunc, ptr %i.aol, align 2, !tbaa !278
  switch i32 %.sroa.0.0.extract.trunc, label %_ZN4llvm12DIEValueList12replaceValueERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEENS_5dwarf9AttributeENS5_4FormERNS_8DIEValueE.exit [
    i32 12, label %bb.ht
    i32 11, label %bb.hs
    i32 10, label %bb.hr
    i32 9, label %bb.hq
    i32 8, label %bb.hp
  ]

bb.hp:                                            ; preds = %bb.ho
  %i.aom = getelementptr inbounds nuw i8, ptr %.sroa.012.024.i, i64 16
  store ptr %.0199, ptr %i.aom, align 8, !tbaa !447
  br label %_ZN4llvm12DIEValueList12replaceValueERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEENS_5dwarf9AttributeENS5_4FormERNS_8DIEValueE.exit

bb.hq:                                            ; preds = %bb.ho
  %i.aon = getelementptr inbounds nuw i8, ptr %.sroa.012.024.i, i64 16
  store ptr %.0199, ptr %i.aon, align 8, !tbaa !445
  br label %_ZN4llvm12DIEValueList12replaceValueERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEENS_5dwarf9AttributeENS5_4FormERNS_8DIEValueE.exit

bb.hr:                                            ; preds = %bb.ho
  %i.aoo = getelementptr inbounds nuw i8, ptr %.sroa.012.024.i, i64 16
  store i64 %.sroa.13.0, ptr %i.aoo, align 8, !tbaa !184
  br label %_ZN4llvm12DIEValueList12replaceValueERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEENS_5dwarf9AttributeENS5_4FormERNS_8DIEValueE.exit

bb.hs:                                            ; preds = %bb.ho
  %i.aop = getelementptr inbounds nuw i8, ptr %.sroa.012.024.i, i64 16
end_hunk_0

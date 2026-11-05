Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ISelLowering?download=true
inline.NumInlined: 54009
inline.NumDeleted: 7556
loop-unroll.NumCompletelyUnrolled: 254
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 338
begin_hunk_0_@_ZNK4llvm17X86TargetLowering17LowerBUILD_VECTORENS_7SDValueERNS_12SelectionDAGE:bb.a
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 16
  store ptr %.fca.0.extract145.1, ptr %i.ajq, align 8, !tbaa !465
  %.sroa.4154.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ajp, i64 24
  store i32 %.fca.1.extract146.1, ptr %.sroa.4154.0..sroa_idx.1, align 8, !tbaa !240
  br label %bb.gv

bb.gu:                                            ; preds = %.preheader.1
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajd, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ajr, ptr noundef nonnull align 8 dereferenceable(12) %i.aje, i64 12, i1 false), !tbaa.struct !683
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt, %bb.gs, %bb.gr
  %i.ajs = call noundef i64 @_ZNK4llvm5APInt22extractBitsAsZExtValueEjj(ptr noundef nonnull align 8 dereferenceable(12) %61, i32 noundef 2, i32 noundef 0) #39
  %i.ajt = call noundef i64 @_ZNK4llvm5APInt22extractBitsAsZExtValueEjj(ptr noundef nonnull align 8 dereferenceable(12) %61, i32 noundef 2, i32 noundef 2) #39
  %i.aju = icmp eq i64 %i.ajt, 2                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  %i.ajv = icmp eq i64 %i.ajs, 2
  %i.ajw = insertelement <2 x i1> poison, i1 %i.ajv, i64 0
  %i.ajx = shufflevector <2 x i1> %i.ajw, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ajy = xor <2 x i1> %i.ajx, <i1 false, i1 true>
  %i.ajz = zext <2 x i1> %i.ajy to <2 x i32>
  store <2 x i32> %i.ajz, ptr %i.c, align 16, !tbaa !240
  %i.aka = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.akb = select i1 %i.aju, i32 5, i32 4
  store i32 %i.akb, ptr %i.aka, align 8, !tbaa !240
  %i.akc = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.akd = select i1 %i.aju, i32 4, i32 5
  store i32 %i.akd, ptr %i.akc, align 4, !tbaa !240
  %i.ake = load ptr, ptr %99, align 8, !tbaa !83  ; 3 uses
  %.sroa.0115.0.copyload = load ptr, ptr %i.ake, align 8, !tbaa !465
  %.sroa.2116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ake, i64 8
  %.sroa.2116.0.copyload = load i32, ptr %.sroa.2116.0..sroa_idx, align 8, !tbaa !240
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 16
  store ptr %i.c, ptr %100, align 8, !tbaa !691
  %i.akg = getelementptr inbounds nuw i8, ptr %100, i64 8
  store i64 4, ptr %i.akg, align 8, !tbaa !692
  %i.akh = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %57, ptr %.sroa.0115.0.copyload, i32 %.sroa.2116.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.akf, ptr noundef nonnull byval(%"class.llvm::ArrayRef.421") align 8 %100) #39 ; 2 uses
  %.fca.0.extract111 = extractvalue { ptr, i32 } %i.akh, 0
  %.fca.1.extract112 = extractvalue { ptr, i32 } %i.akh, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39
  %i.aki = load ptr, ptr %99, align 8, !tbaa !83  ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %99, i64 16
  %i.akk = icmp eq ptr %i.aki, %i.akj
  br i1 %i.akk, label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit, label %bb.gm

.thread1404.thread:                               ; preds = %bb.fx, %bb.fv, %_ZL21LowerBuildVectorv8i16N4llvm7SDValueERKNS_5SDLocERKNS_5APIntEjjRNS_12SelectionDAGERKNS_12X86SubtargetE.exit, %.thread1404
  %i.akl = call fastcc { ptr, i32 } @_ZL22buildFromShuffleMostlyN4llvm7SDValueERKNS_5SDLocERNS_12SelectionDAGE(ptr nonnull %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(12) %57, ptr noundef nonnull align 8 dereferenceable(920) %3) ; 2 uses
  %.fca.0.extract104 = extractvalue { ptr, i32 } %i.akl, 0 ; 2 uses
  %.fca.1.extract105 = extractvalue { ptr, i32 } %i.akl, 1
  %.not1423 = icmp eq ptr %.fca.0.extract104, null
  br i1 %.not1423, label %bb.gw, label %.critedge928

bb.gw:                                            ; preds = %.thread1404.thread
  %i.akm = load ptr, ptr %i.kc, align 8, !tbaa !236, !nonnull !80, !align !237
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 360
  %i.ako = load i32, ptr %i.akn, align 8, !tbaa !342
  %i.akp = icmp sgt i32 %i.ako, 4
  %i.akq = icmp ne i16 %i.p, 13
  %or.cond1409 = and i1 %i.akq, %i.akp
  br i1 %or.cond1409, label %bb.gx, label %.critedge28

bb.gx:                                            ; preds = %bb.gw
  %i.akr = load ptr, ptr %i.q, align 8, !tbaa !638 ; 2 uses
  %i.aks = load ptr, ptr %i.akr, align 8, !tbaa !472
  %i.akt = getelementptr inbounds nuw i8, ptr %i.aks, i64 24
  %i.aku = load i32, ptr %i.akt, align 8, !tbaa !468
  %i.akv = add i32 %i.aku, -53
  %spec.select.i.i1081 = icmp ult i32 %i.akv, 2
  br i1 %spec.select.i.i1081, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.akw = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 174, ptr noundef nonnull align 8 dereferenceable(12) %57, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.akr) #39
  br label %bb.ha

bb.gz:                                            ; preds = %bb.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.akx = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.0.0.copyload.i.i.i, ptr null) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %.pn = phi { ptr, i32 } [ %i.akw, %bb.gy ], [ %i.akx, %bb.gz ] ; 2 uses
  %storemerge911 = extractvalue { ptr, i32 } %.pn, 0 ; 2 uses
  %storemerge = extractvalue { ptr, i32 } %.pn, 1 ; 2 uses
  %i.aky = icmp ugt i16 %i.aa, 1
  br i1 %i.aky, label %.lr.ph1473, label %.critedge928

.lr.ph1473:                                       ; preds = %bb.ha
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %101, i64 8
  %.sroa.278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %103, i64 8
  %wide.trip.count1495 = zext i16 %i.aa to i64
  br label %bb.hb

bb.hb:                                            ; preds = %.lr.ph1473, %bb.hd
  %indvars.iv1492 = phi i64 [ 1, %.lr.ph1473 ], [ %indvars.iv.next1493, %bb.hd ] ; 3 uses
  %.sroa.01341.11470 = phi ptr [ %storemerge911, %.lr.ph1473 ], [ %.sroa.01341.2, %bb.hd ] ; 2 uses
  %.sroa.57.11469 = phi i32 [ %storemerge, %.lr.ph1473 ], [ %.sroa.57.2, %bb.hd ] ; 2 uses
  %i.akz = load ptr, ptr %i.q, align 8, !tbaa !638
  %i.ala = getelementptr inbounds nuw [40 x i8], ptr %i.akz, i64 %indvars.iv1492 ; 2 uses
  %i.alb = load ptr, ptr %i.ala, align 8, !tbaa !472
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 24
  %i.ald = load i32, ptr %i.alc, align 8, !tbaa !468
  %i.ale = add i32 %i.ald, -53
  %spec.select.i.i1082 = icmp ult i32 %i.ale, 2
  br i1 %spec.select.i.i1082, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  store ptr %.sroa.01341.11470, ptr %101, align 8, !tbaa !465
  store i32 %.sroa.57.11469, ptr %.sroa.57.0..sroa_idx, align 8, !tbaa !240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %102, ptr noundef nonnull align 8 dereferenceable(16) %i.ala, i64 16, i1 false), !tbaa.struct !683
  %i.alf = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %indvars.iv1492, ptr noundef nonnull align 8 dereferenceable(12) %57, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract75 = extractvalue { ptr, i32 } %i.alf, 0
  %.fca.1.extract76 = extractvalue { ptr, i32 } %i.alf, 1
  store ptr %.fca.0.extract75, ptr %103, align 8
  store i32 %.fca.1.extract76, ptr %.sroa.278.0..sroa_idx, align 8
  %i.alg = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 163, ptr noundef nonnull align 8 dereferenceable(12) %57, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %101, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %102, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %103) #39 ; 2 uses
  %.fca.0.extract71 = extractvalue { ptr, i32 } %i.alg, 0
  %.fca.1.extract72 = extractvalue { ptr, i32 } %i.alg, 1
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hb, %bb.hc
  %.sroa.57.2 = phi i32 [ %.sroa.57.11469, %bb.hb ], [ %.fca.1.extract72, %bb.hc ] ; 2 uses
  %.sroa.01341.2 = phi ptr [ %.sroa.01341.11470, %bb.hb ], [ %.fca.0.extract71, %bb.hc ] ; 2 uses
  %indvars.iv.next1493 = add nuw nsw i64 %indvars.iv1492, 1 ; 2 uses
  %exitcond1496.not = icmp eq i64 %indvars.iv.next1493, %wide.trip.count1495
  br i1 %exitcond1496.not, label %.critedge928, label %bb.hb, !llvm.loop !1527

.critedge28:                                      ; preds = %bb.gw
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #39
  call void @_ZN4llvm11SmallVectorINS_7SDValueELj8EEC2Em(ptr noundef nonnull align 8 dereferenceable(144) %104, i64 noundef %i.acv)
  br i1 %.not1479, label %._crit_edge1468, label %.lr.ph1452.preheader

.lr.ph1452.preheader:                             ; preds = %.critedge28
  %wide.trip.count1487 = zext i16 %i.aa to i64
  br label %.lr.ph1452

.preheader1428:                                   ; preds = %bb.hg
  %.not1606 = icmp eq i16 %i.aa, 1
  br i1 %.not1606, label %._crit_edge1468, label %.lr.ph1467

.lr.ph1467:                                       ; preds = %.preheader1428
  %i.alh = getelementptr inbounds nuw i8, ptr %105, i64 16 ; 2 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %105, i64 8 ; 3 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %105, i64 12
  %i.alk = getelementptr inbounds nuw i8, ptr %106, i64 8
  br label %bb.hi

.lr.ph1452:                                       ; preds = %.lr.ph1452.preheader, %bb.hg
  %indvars.iv1484 = phi i64 [ 0, %.lr.ph1452.preheader ], [ %indvars.iv.next1485, %bb.hg ] ; 3 uses
  %i.all = load ptr, ptr %i.q, align 8, !tbaa !638
  %i.alm = getelementptr inbounds nuw [40 x i8], ptr %i.all, i64 %indvars.iv1484 ; 2 uses
  %i.aln = load ptr, ptr %i.alm, align 8, !tbaa !472
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aln, i64 24
  %i.alp = load i32, ptr %i.alo, align 8, !tbaa !468
  %i.alq = add i32 %i.alp, -53
  %spec.select.i.i1083 = icmp ult i32 %i.alq, 2
  br i1 %spec.select.i.i1083, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %.lr.ph1452
  %i.alr = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 174, ptr noundef nonnull align 8 dereferenceable(12) %57, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.alm) #39
  br label %bb.hg

bb.hf:                                            ; preds = %.lr.ph1452
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.als = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i.i, ptr null) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %bb.hg

bb.hg:                                            ; preds = %bb.he, %bb.hf
  %.sink1605 = phi { ptr, i32 } [ %i.alr, %bb.he ], [ %i.als, %bb.hf ] ; 2 uses
  %.fca.0.extract57 = extractvalue { ptr, i32 } %.sink1605, 0
  %.fca.1.extract58 = extractvalue { ptr, i32 } %.sink1605, 1
  %i.alt = load ptr, ptr %104, align 8, !tbaa !83
  %i.alu = getelementptr inbounds nuw [16 x i8], ptr %i.alt, i64 %indvars.iv1484 ; 2 uses
  store ptr %.fca.0.extract57, ptr %i.alu, align 8, !tbaa !465
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alu, i64 8
  store i32 %.fca.1.extract58, ptr %.sroa.463.0..sroa_idx, align 8, !tbaa !240
  %indvars.iv.next1485 = add nuw nsw i64 %indvars.iv1484, 1 ; 2 uses
  %exitcond1488.not = icmp eq i64 %indvars.iv.next1485, %wide.trip.count1487
  br i1 %exitcond1488.not, label %.preheader1428, label %.lr.ph1452, !llvm.loop !1528

._crit_edge1468:                                  ; preds = %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit1085, %.critedge28, %.preheader1428
  %i.alv = load ptr, ptr %104, align 8, !tbaa !83 ; 4 uses
  %.sroa.01341.0.copyload1353 = load ptr, ptr %i.alv, align 8, !tbaa !465
  %.sroa.57.0..sroa_idx1354 = getelementptr inbounds nuw i8, ptr %i.alv, i64 8
  %.sroa.57.0.copyload1355 = load i32, ptr %.sroa.57.0..sroa_idx1354, align 8, !tbaa !240
  %i.alw = getelementptr inbounds nuw i8, ptr %104, i64 16
  %i.alx = icmp eq ptr %i.alv, %i.alw
  br i1 %i.alx, label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit1084, label %bb.hh

bb.hh:                                            ; preds = %._crit_edge1468
  call void @free(ptr noundef nonnull %i.alv) #39
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit1084

_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit1084: ; preds = %._crit_edge1468, %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #39
  br label %.critedge928

bb.hi:                                            ; preds = %.lr.ph1467, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit1085
  %.08851466 = phi i32 [ 1, %.lr.ph1467 ], [ %i.amc, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit1085 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #39
  store ptr %i.alh, ptr %105, align 8, !tbaa !83
  store i32 0, ptr %i.ali, align 8, !tbaa !633
  store i32 16, ptr %i.alj, align 4, !tbaa !634
  %.not9081453 = icmp eq i32 %.08851466, 0
  br i1 %.not9081453, label %._crit_edge1460, label %.lr.ph1456

.lr.ph1456:                                       ; preds = %bb.hi, %.lr.ph1456
  %.08841454 = phi i32 [ %i.aly, %.lr.ph1456 ], [ 0, %bb.hi ] ; 2 uses
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi(ptr noundef nonnull align 8 dereferenceable(16) %105, i32 noundef %.08841454)
  %i.aly = add nuw nsw i32 %.08841454, 1          ; 2 uses
  %.not908 = icmp eq i32 %i.aly, %.08851466
  br i1 %.not908, label %.lr.ph1459, label %.lr.ph1456, !llvm.loop !1529

._crit_edge1460:                                  ; preds = %.lr.ph1459, %bb.hi
  %i.alz = load i32, ptr %i.ali, align 8, !tbaa !633
  %i.ama = zext i32 %i.alz to i64
  %i.amb = sub nsw i64 %i.acv, %i.ama
  call void @_ZN4llvm15SmallVectorImplIiE6appendEmi(ptr noundef nonnull align 8 dereferenceable(16) %105, i64 noundef %i.amb, i32 noundef -1)
  %i.amc = shl i32 %.08851466, 1                  ; 3 uses
  %i.amd = call range(i32 1, 33) i32 @llvm.cttz.i32(i32 %i.amc, i1 true)
  %i.ame = lshr i32 %i.ab, %i.amd                 ; 2 uses
  %.not9101461 = icmp eq i32 %i.ame, 0
  br i1 %.not9101461, label %._crit_edge1465, label %.lr.ph1464.preheader

.lr.ph1464.preheader:                             ; preds = %._crit_edge1460
  %i.amf = zext nneg i32 %i.ame to i64
  %.pre1515 = load ptr, ptr %104, align 8, !tbaa !83
  br label %.lr.ph1464

.lr.ph1459:                                       ; preds = %.lr.ph1456, %.lr.ph1459
  %.08831458 = phi i32 [ %i.amh, %.lr.ph1459 ], [ 0, %.lr.ph1456 ] ; 2 uses
  %i.amg = add nuw i32 %.08831458, %i.ab
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi(ptr noundef nonnull align 8 dereferenceable(16) %105, i32 noundef %i.amg)
  %i.amh = add nuw nsw i32 %.08831458, 1          ; 2 uses
  %.not909 = icmp eq i32 %i.amh, %.08851466
  br i1 %.not909, label %._crit_edge1460, label %.lr.ph1459, !llvm.loop !1530

._crit_edge1465:                                  ; preds = %.lr.ph1464, %._crit_edge1460
  %i.ami = load ptr, ptr %105, align 8, !tbaa !83 ; 2 uses
  %i.amj = icmp eq ptr %i.ami, %i.alh
  br i1 %i.amj, label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit1085, label %bb.hj

bb.hj:                                            ; preds = %._crit_edge1465
  call void @free(ptr noundef %i.ami) #39
  br label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit1085

_ZN4llvm11SmallVectorIiLj16EED2Ev.exit1085:       ; preds = %._crit_edge1465, %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #39
  %i.amk = icmp ult i32 %i.amc, %i.ab
  br i1 %i.amk, label %bb.hi, label %._crit_edge1468, !llvm.loop !1531

.lr.ph1464:                                       ; preds = %.lr.ph1464.preheader, %.lr.ph1464
  %i.aml = phi ptr [ %.pre1515, %.lr.ph1464.preheader ], [ %i.amu, %.lr.ph1464 ] ; 2 uses
  %indvars.iv1489 = phi i64 [ 0, %.lr.ph1464.preheader ], [ %indvars.iv.next1490, %.lr.ph1464 ] ; 3 uses
  %i.amm = shl nuw nsw i64 %indvars.iv1489, 1     ; 2 uses
  %i.amn = getelementptr inbounds nuw [16 x i8], ptr %i.aml, i64 %i.amm ; 2 uses
  %.sroa.029.0.copyload = load ptr, ptr %i.amn, align 8, !tbaa !465
  %.sroa.230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amn, i64 8
  %.sroa.230.0.copyload = load i32, ptr %.sroa.230.0..sroa_idx, align 8, !tbaa !240
  %i.amo = getelementptr inbounds nuw [16 x i8], ptr %i.aml, i64 %i.amm
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amo, i64 16
  %i.amq = load ptr, ptr %105, align 8, !tbaa !83
  store ptr %i.amq, ptr %106, align 8, !tbaa !691
  %i.amr = load i32, ptr %i.ali, align 8, !tbaa !633
  %i.ams = zext i32 %i.amr to i64
  store i64 %i.ams, ptr %i.alk, align 8, !tbaa !692
  %i.amt = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %57, ptr %.sroa.029.0.copyload, i32 %.sroa.230.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.amp, ptr noundef nonnull byval(%"class.llvm::ArrayRef.421") align 8 %106) #39 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.amt, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.amt, 1
  %i.amu = load ptr, ptr %104, align 8, !tbaa !83 ; 2 uses
  %i.amv = getelementptr inbounds nuw [16 x i8], ptr %i.amu, i64 %indvars.iv1489 ; 2 uses
  store ptr %.fca.0.extract, ptr %i.amv, align 8, !tbaa !465
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amv, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !240
  %indvars.iv.next1490 = add nuw nsw i64 %indvars.iv1489, 1 ; 2 uses
  %.not910 = icmp eq i64 %indvars.iv.next1490, %i.amf
  br i1 %.not910, label %._crit_edge1465, label %.lr.ph1464, !llvm.loop !1532

.critedge928:                                     ; preds = %bb.hd, %.thread1390.thread, %bb.ha, %bb.fq, %bb.fe, %bb.ez, %_ZNK4llvm5APInt11countr_zeroEv.exit1045, %.thread1395, %_ZN4llvm5APIntD2Ev.exit1000, %.loopexit, %bb.fd, %_ZNK4llvm3MVT14is512BitVectorEv.exit.thread, %bb.dn, %bb.do, %bb.dp, %bb.dq, %bb.en, %.critedge12, %_ZNK4llvm8TypeSizecvmEv.exit1036, %bb.ey, %_ZNK4llvm8TypeSizecvmEv.exit1042, %.thread1404.thread, %bb.fz, %_ZL21LowerBuildVectorv8i16N4llvm7SDValueERKNS_5SDLocERKNS_5APIntEjjRNS_12SelectionDAGERKNS_12X86SubtargetE.exit, %bb.fv, %.thread1572, %_ZN4llvm11SmallVectorINS_7SDValueELj64EED2Ev.exit, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit1084, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit, %_ZNK4llvm5APInt11countr_zeroEv.exit1074, %bb.fo, %_ZN4llvm11SmallVectorIPNS_8ConstantELj16EED2Ev.exit, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit, %bb.cn, %bb.cd, %_ZNK4llvm5APInt9isAllOnesEv.exit.thread
  %.sroa.57.3 = phi i32 [ %.fca.1.extract690, %_ZNK4llvm5APInt9isAllOnesEv.exit.thread ], [ %.fca.1.extract676, %bb.cd ], [ %.fca.1.extract671, %bb.cn ], [ %.fca.1.extract613, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit ], [ %.fca.1.extract576, %_ZNK4llvm3MVT14is512BitVectorEv.exit.thread ], [ %.fca.1.extract572, %bb.dn ], [ %.fca.1.extract568, %bb.do ], [ %.fca.1.extract564, %bb.dp ], [ %.fca.1.extract560, %bb.dq ], [ %.sroa.57.0, %_ZN4llvm11SmallVectorIPNS_8ConstantELj16EED2Ev.exit ], [ %.fca.1.extract427, %bb.en ], [ %.fca.1.extract412, %.critedge12 ], [ %.fca.1.extract374, %_ZNK4llvm8TypeSizecvmEv.exit1036 ], [ %.fca.1.extract580, %_ZN4llvm5APIntD2Ev.exit1000 ], [ %.fca.1.extract336, %bb.ey ], [ %.fca.1.extract327, %bb.fd ], [ 0, %.thread1395 ], [ 0, %bb.ez ], [ %.fca.1.extract320, %.thread1572 ], [ %.fca.1.extract313, %_ZN4llvm11SmallVectorINS_7SDValueELj64EED2Ev.exit ], [ %.fca.1.extract268, %.loopexit ], [ %.fca.1.extract231, %bb.fo ], [ %.fca.1.extract215, %_ZNK4llvm5APInt11countr_zeroEv.exit1074 ], [ 0, %bb.fe ], [ %.fca.1.extract208, %bb.fv ], [ %.fca.1.extract.i1079, %_ZL21LowerBuildVectorv8i16N4llvm7SDValueERKNS_5SDLocERKNS_5APIntEjjRNS_12SelectionDAGERKNS_12X86SubtargetE.exit ], [ %.fca.1.extract194, %bb.fz ], [ %.fca.1.extract112, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit ], [ %.fca.1.extract105, %.thread1404.thread ], [ 0, %bb.fq ], [ %.sroa.57.0.copyload1355, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit1084 ], [ %.fca.1.extract351, %_ZNK4llvm8TypeSizecvmEv.exit1042 ], [ 0, %_ZNK4llvm5APInt11countr_zeroEv.exit1045 ], [ %storemerge, %bb.ha ], [ 0, %.thread1390.thread ], [ %.sroa.57.2, %bb.hd ]
  %.sroa.01341.3 = phi ptr [ %.fca.0.extract689, %_ZNK4llvm5APInt9isAllOnesEv.exit.thread ], [ %.fca.0.extract675, %bb.cd ], [ %.fca.0.extract670, %bb.cn ], [ %.fca.0.extract612, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit ], [ %.fca.0.extract575, %_ZNK4llvm3MVT14is512BitVectorEv.exit.thread ], [ %.fca.0.extract571, %bb.dn ], [ %.fca.0.extract567, %bb.do ], [ %.fca.0.extract563, %bb.dp ], [ %.fca.0.extract559, %bb.dq ], [ %.sroa.01341.0, %_ZN4llvm11SmallVectorIPNS_8ConstantELj16EED2Ev.exit ], [ %.fca.0.extract426, %bb.en ], [ %.fca.0.extract411, %.critedge12 ], [ %.fca.0.extract373, %_ZNK4llvm8TypeSizecvmEv.exit1036 ], [ %.fca.0.extract579, %_ZN4llvm5APIntD2Ev.exit1000 ], [ %.fca.0.extract335, %bb.ey ], [ %.fca.0.extract326, %bb.fd ], [ null, %.thread1395 ], [ null, %bb.ez ], [ %.fca.0.extract319, %.thread1572 ], [ %.fca.0.extract312, %_ZN4llvm11SmallVectorINS_7SDValueELj64EED2Ev.exit ], [ %.fca.0.extract267, %.loopexit ], [ %.fca.0.extract230, %bb.fo ], [ %.fca.0.extract214, %_ZNK4llvm5APInt11countr_zeroEv.exit1074 ], [ null, %bb.fe ], [ %.fca.0.extract207, %bb.fv ], [ %.fca.0.extract.i1078, %_ZL21LowerBuildVectorv8i16N4llvm7SDValueERKNS_5SDLocERKNS_5APIntEjjRNS_12SelectionDAGERKNS_12X86SubtargetE.exit ], [ %.fca.0.extract193, %bb.fz ], [ %.fca.0.extract111, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit ], [ %.fca.0.extract104, %.thread1404.thread ], [ null, %bb.fq ], [ %.sroa.01341.0.copyload1353, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit1084 ], [ %.fca.0.extract350, %_ZNK4llvm8TypeSizecvmEv.exit1042 ], [ null, %_ZNK4llvm5APInt11countr_zeroEv.exit1045 ], [ %storemerge911, %bb.ha ], [ null, %.thread1390.thread ], [ %.sroa.01341.2, %bb.hd ]
  %i.amw = getelementptr inbounds nuw i8, ptr %62, i64 144
  %i.amx = load ptr, ptr %i.kx, align 8, !tbaa !679
  call void @_ZNSt8_Rb_treeIN4llvm7SDValueES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.amw, ptr noundef %i.amx)
  %i.amy = load ptr, ptr %62, align 8, !tbaa !83  ; 2 uses
  %i.amz = icmp eq ptr %i.amy, %i.kt
  br i1 %i.amz, label %_ZN4llvm8SmallSetINS_7SDValueELj8ESt4lessIS1_EED2Ev.exit, label %bb.hk

bb.hk:                                            ; preds = %.critedge928
  call void @free(ptr noundef %i.amy) #39
  br label %_ZN4llvm8SmallSetINS_7SDValueELj8ESt4lessIS1_EED2Ev.exit

_ZN4llvm8SmallSetINS_7SDValueELj8ESt4lessIS1_EED2Ev.exit: ; preds = %.critedge928, %bb.hk
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #39
  %i.ana = load i32, ptr %i.ks, align 8, !tbaa !643
  %i.anb = icmp ugt i32 %i.ana, 64
  br i1 %i.anb, label %bb.hl, label %_ZN4llvm5APIntD2Ev.exit1086

bb.hl:                                            ; preds = %_ZN4llvm8SmallSetINS_7SDValueELj8ESt4lessIS1_EED2Ev.exit
  %i.anc = load ptr, ptr %61, align 8, !tbaa !357 ; 2 uses
  %i.and = icmp eq ptr %i.anc, null
  br i1 %i.and, label %_ZN4llvm5APIntD2Ev.exit1086, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  call void @_ZdaPv(ptr noundef nonnull %i.anc) #42
  br label %_ZN4llvm5APIntD2Ev.exit1086

_ZN4llvm5APIntD2Ev.exit1086:                      ; preds = %_ZN4llvm8SmallSetINS_7SDValueELj8ESt4lessIS1_EED2Ev.exit, %bb.hl, %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #39
  %i.ane = load i32, ptr %i.kr, align 8, !tbaa !643
  %i.anf = icmp ugt i32 %i.ane, 64
  br i1 %i.anf, label %bb.hn, label %_ZN4llvm5APIntD2Ev.exit1087

bb.hn:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit1086
  %i.ang = load ptr, ptr %60, align 8, !tbaa !357 ; 2 uses
  %i.anh = icmp eq ptr %i.ang, null
  br i1 %i.anh, label %_ZN4llvm5APIntD2Ev.exit1087, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  call void @_ZdaPv(ptr noundef nonnull %i.ang) #42
  br label %_ZN4llvm5APIntD2Ev.exit1087

_ZN4llvm5APIntD2Ev.exit1087:                      ; preds = %_ZN4llvm5APIntD2Ev.exit1086, %bb.hn, %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #39
  %i.ani = load i32, ptr %i.kq, align 8, !tbaa !643
  %i.anj = icmp ugt i32 %i.ani, 64
  br i1 %i.anj, label %bb.hp, label %_ZN4llvm5APIntD2Ev.exit1088

bb.hp:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit1087
  %i.ank = load ptr, ptr %59, align 8, !tbaa !357 ; 2 uses
  %i.anl = icmp eq ptr %i.ank, null
  br i1 %i.anl, label %_ZN4llvm5APIntD2Ev.exit1088, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  call void @_ZdaPv(ptr noundef nonnull %i.ank) #42
  br label %_ZN4llvm5APIntD2Ev.exit1088

_ZN4llvm5APIntD2Ev.exit1088:                      ; preds = %_ZN4llvm5APIntD2Ev.exit1087, %bb.hp, %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #39
  %i.anm = load i32, ptr %i.ko, align 8, !tbaa !643
  %i.ann = icmp ugt i32 %i.anm, 64
  br i1 %i.ann, label %bb.hr, label %_ZN4llvm5APIntD2Ev.exit1089

bb.hr:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit1088
  %i.ano = load ptr, ptr %58, align 8, !tbaa !357 ; 2 uses
  %i.anp = icmp eq ptr %i.ano, null
  br i1 %i.anp, label %_ZN4llvm5APIntD2Ev.exit1089, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  call void @_ZdaPv(ptr noundef nonnull %i.ano) #42
  br label %_ZN4llvm5APIntD2Ev.exit1089

_ZN4llvm5APIntD2Ev.exit1089:                      ; preds = %_ZN4llvm5APIntD2Ev.exit1088, %bb.hr, %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #39
  br label %_ZL25materializeVectorConstantN4llvm7SDValueERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetE.exit.thread

_ZL25materializeVectorConstantN4llvm7SDValueERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetE.exit.thread: ; preds = %.critedge7, %bb.bd, %bb.bd, %bb.bd, %_ZL25materializeVectorConstantN4llvm7SDValueERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetE.exit, %_ZN4llvm5APIntD2Ev.exit1089, %_ZL23LowerBUILD_VECTORvXbf16N4llvm7SDValueERNS_12SelectionDAGERKNS_12X86SubtargetE.exit, %_ZL21LowerBUILD_VECTORvXi1N4llvm7SDValueERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetE.exit
  %.sroa.57.4 = phi i32 [ %.sroa.13661.6.i, %_ZL21LowerBUILD_VECTORvXi1N4llvm7SDValueERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetE.exit ], [ %.fca.1.extract731, %_ZL23LowerBUILD_VECTORvXbf16N4llvm7SDValueERNS_12SelectionDAGERKNS_12X86SubtargetE.exit ], [ %.fca.1.extract.i959, %_ZL25materializeVectorConstantN4llvm7SDValueERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetE.exit ], [ %.sroa.57.3, %_ZN4llvm5APIntD2Ev.exit1089 ], [ %2, %bb.bd ], [ %2, %bb.bd ], [ %2, %bb.bd ], [ %2, %.critedge7 ]
  %.sroa.01341.4 = phi ptr [ %.sroa.0660.6.i, %_ZL21LowerBUILD_VECTORvXi1N4llvm7SDValueERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetE.exit ], [ %.fca.0.extract730, %_ZL23LowerBUILD_VECTORvXbf16N4llvm7SDValueERNS_12SelectionDAGERKNS_12X86SubtargetE.exit ], [ %.fca.0.extract.i958, %_ZL25materializeVectorConstantN4llvm7SDValueERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetE.exit ], [ %.sroa.01341.3, %_ZN4llvm5APIntD2Ev.exit1089 ], [ %1, %bb.bd ], [ %1, %bb.bd ], [ %1, %bb.bd ], [ %1, %.critedge7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #39
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.01341.4, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.57.4, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare noundef zeroext i1 @_ZN4llvm3ISD13isFreezeUndefEPKNS_6SDNodeE(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm5APInt9isAllOnesEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !643  ; 4 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %i.b, 65
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !tbaa !357
  %i.f = sub nuw nsw i32 64, %i.b
  %i.g = zext nneg i32 %i.f to i64
  %i.h = lshr i64 -1, %i.g
  %i.i = icmp eq i64 %i.e, %i.h
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = tail call noundef i32 @_ZNK4llvm5APInt25countTrailingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #40
  %i.k = icmp eq i32 %i.j, %i.b
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i1 [ %i.k, %bb.d ], [ %i.i, %bb.c ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvmorENS_5APIntERKS0_(ptr dead_on_unwind noalias writable sret(%"class.llvm::APInt") align 8 %0, ptr nofree noundef align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !643  ; 2 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %2, align 8, !tbaa !357
  %i.e = load i64, ptr %1, align 8, !tbaa !357
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  store i64 %i.f, ptr %1, align 8, !tbaa !357
  br label %_ZN4llvm5APIntoRERKS0_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4llvm5APInt16orAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) #39
  %.pre = load i32, ptr %i.a, align 8, !tbaa !643
  %.pre1 = load i64, ptr %1, align 8
  br label %_ZN4llvm5APIntoRERKS0_.exit

_ZN4llvm5APIntoRERKS0_.exit:                      ; preds = %bb.b, %bb.c
  %i.g = phi i64 [ %i.f, %bb.b ], [ %.pre1, %bb.c ]
  %i.h = phi i32 [ %i.b, %bb.b ], [ %.pre, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.h, ptr %i.i, align 8, !tbaa !643
  store i64 %i.g, ptr %0, align 8
  store i32 0, ptr %i.a, align 8, !tbaa !643
  ret void
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG9getFreezeENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL13getZeroVectorN4llvm3MVTERKNS_12X86SubtargetERNS_12SelectionDAGERKNS_5SDLocE(i16 %0, i32 %.360.val, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !684
  %i.c = icmp slt i32 %.360.val, 2
  %i.d = add i16 %0, -19
  %spec.select.i.i = icmp ult i16 %i.d, 144
  %or.cond = select i1 %i.c, i1 %spec.select.i.i, i1 false
  br i1 %or.cond, label %_ZNK4llvm3MVT14is128BitVectorEv.exit, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread

_ZNK4llvm3MVT14is128BitVectorEv.exit:             ; preds = %bb.a
  %i.e = zext nneg i16 %0 to i64
  %i.f = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.g, align 16
  %i.h = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 128
  br i1 %i.h, label %bb.b, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread

end_hunk_0
begin_hunk_1_@"_ZZL22matchShuffleAsInsertPSRN4llvm7SDValueES1_RjRKNS_5APIntENS_8ArrayRefIiEERNS_12SelectionDAGEENK3$_0clES0_S0_S7_":bb.a
  %.138.3 = phi i1 [ %.138.2, %bb.o ], [ true, %bb.p ], [ %.138.2, %bb.r ]
  %i.af = icmp slt i32 %.142.3, 0
  %i.ag = icmp slt i32 %.140.3, 0
  %or.cond3 = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %or.cond3, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.ah = icmp sgt i32 %.142.3, -1
  br i1 %i.ah, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ai = zext nneg i32 %.142.3 to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !240
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.al = sext i32 %.140.3 to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !240
  %i.ao = add nsw i32 %i.an, -4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.2 = phi i32 [ %.142.3, %bb.t ], [ %.140.3, %bb.u ]
  %.034 = phi i32 [ %i.ak, %bb.t ], [ %i.ao, %bb.u ]
  %.sroa.027.0 = phi ptr [ %1, %bb.t ], [ %3, %bb.u ]
  %.sroa.3.0 = phi i32 [ %2, %bb.t ], [ %4, %bb.u ]
  br i1 %.138.3, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !4465, !nonnull !80, !align !237
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.ar = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.aq, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 136, ptr null) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ar, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ar, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.031.0 = phi ptr [ %1, %bb.v ], [ %.fca.0.extract, %bb.w ]
  %.sroa.432.0 = phi i32 [ %2, %bb.v ], [ %.fca.1.extract, %bb.w ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !4466, !nonnull !80, !align !237 ; 2 uses
  store ptr %.sroa.031.0, ptr %i.at, align 8, !tbaa !465
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %.sroa.432.0, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !240
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !4467, !nonnull !80, !align !237 ; 2 uses
  store ptr %.sroa.027.0, ptr %i.av, align 8, !tbaa !465
  %.sroa.3.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 %.sroa.3.0, ptr %.sroa.3.0..sroa_idx29, align 8, !tbaa !240
  %i.aw = shl i32 %.034, 6
  %i.ax = shl nsw i32 %.2, 4
  %i.ay = or i32 %i.ax, %i.aw
  %i.az = or i32 %i.ay, %.144.3
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !4468, !nonnull !80, !align !1262
  store i32 %i.az, ptr %i.bb, align 4, !tbaa !240
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.l, %bb.q, %.critedge, %bb.x
  %.1 = phi i1 [ false, %.critedge ], [ true, %bb.x ], [ false, %bb.q ], [ false, %bb.l ], [ false, %bb.g ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL21lowerShuffleWithVPMOVRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %1, ptr %2, i32 %3, ptr nofree readonly captures(address) %.0.val, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(519752) %5, ptr noundef nonnull align 8 dereferenceable(920) %6) unnamed_addr #1 {
bb.a:
  %7 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %8 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %9 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %10 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %11 = alloca %"class.llvm::APInt", align 8      ; 10 uses
  %12 = alloca %"struct.llvm::KnownBits", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 360
  %i.b = load i32, ptr %i.a, align 8, !tbaa !342
  %i.c = icmp sgt i32 %i.b, 8
  br i1 %i.c, label %bb.b, label %.critedge91

bb.b:                                             ; preds = %bb.a
  %i.d = add i16 %1, -163
  %spec.select.i.i = icmp ult i16 %i.d, 53
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #41
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit:       ; preds = %bb.b
  %i.e = zext i16 %1 to i64                       ; 3 uses
  %i.f = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !339
  %i.i = zext i16 %i.h to i32                     ; 2 uses
  %i.j = add i16 %1, -19
  %spec.select.i.i.i = icmp ult i16 %i.j, 197
  br i1 %spec.select.i.i.i, label %bb.d, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

bb.d:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  %i.k = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.e
  %i.l = getelementptr i8, ptr %i.k, i64 -2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !345
  %.pre61 = zext i16 %i.m to i64
  br label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit:        ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit, %bb.d
  %.pre-phi = phi i64 [ %i.e, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit ], [ %.pre61, %bb.d ]
  %i.n = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %.pre-phi
  %i.o = getelementptr i8, ptr %i.n, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.o, align 16
  %i.p = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 5 uses
  %i.q = udiv i32 64, %i.p
  %.not52 = icmp ugt i32 %i.p, 32
  br i1 %.not52, label %.critedge91, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 503
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 395
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.critedge89
  %.053 = phi i32 [ 2, %.lr.ph ], [ %i.eq, %.critedge89 ] ; 5 uses
  %i.ab = call range(i32 1, 33) i32 @llvm.cttz.i32(i32 %.053, i1 true)
  %i.ac = lshr i32 %i.i, %i.ab                    ; 6 uses
  %i.ad = sub nuw nsw i32 %i.i, %i.ac             ; 4 uses
  %.not14.i = icmp eq i32 %i.ac, 0
  br i1 %.not14.i, label %.loopexit27, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.ae = zext nneg i32 %i.ac to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.01315.i = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.ak, %bb.f ] ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !240 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, -1
  %i.ai = icmp eq i32 %i.ag, %.01315.i
  %i.aj = or i1 %i.ah, %i.ai
  br i1 %i.aj, label %bb.f, label %.critedge89

bb.f:                                             ; preds = %.lr.ph.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = add nuw nsw i32 %.01315.i, %.053
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ae
  br i1 %.not.i, label %.loopexit27, label %.lr.ph.i, !llvm.loop !21

.loopexit27:                                      ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  call void @_ZNK4llvm5APInt11extractBitsEjj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %11, ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef %i.ad, i32 noundef %i.ac) #39
  %i.al = load i32, ptr %i.r, align 8, !tbaa !643 ; 4 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.thread.thread, label %bb.g

.thread.thread:                                   ; preds = %.loopexit27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  br label %.loopexit

bb.g:                                             ; preds = %.loopexit27
  %i.an = icmp ult i32 %i.al, 65
  br i1 %i.an, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  %i.ao = load i64, ptr %11, align 8, !tbaa !357
  %i.ap = sub nuw nsw i32 64, %i.al
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = lshr i64 -1, %i.aq
  %i.as = icmp eq i64 %i.ao, %i.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  br i1 %i.as, label %.loopexit, label %.critedge89

bb.h:                                             ; preds = %bb.g
  %i.at = call noundef i32 @_ZNK4llvm5APInt25countTrailingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %11) #40
  %i.au = icmp eq i32 %i.at, %i.al                ; 2 uses
  %i.av = load ptr, ptr %11, align 8, !tbaa !357  ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.critedge, label %.split

.split:                                           ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.av) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  br i1 %i.au, label %.loopexit, label %.critedge89

.critedge:                                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  br i1 %i.au, label %.loopexit, label %.critedge89

.loopexit:                                        ; preds = %.split, %.thread, %.critedge, %.thread.thread
  %i.ax = mul i32 %.053, %i.p                     ; 3 uses
  %i.ay = call { ptr, i32 } @_ZN4llvm19peekThroughBitcastsENS_7SDValueE(ptr %2, i32 %3) #39 ; 2 uses
  %.fca.0.extract27 = extractvalue { ptr, i32 } %i.ay, 0 ; 4 uses
  %.fca.1.extract28 = extractvalue { ptr, i32 } %i.ay, 1 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.fca.0.extract27, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !468
  %i.bb = icmp eq i32 %i.ba, 230
  br i1 %i.bb, label %bb.i, label %bb.o

bb.i:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  %i.bc = getelementptr inbounds nuw i8, ptr %.fca.0.extract27, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !469
  %i.be = zext i32 %.fca.1.extract28 to i64
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.be ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.bf, align 8, !tbaa !345 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !471 ; 2 uses
  %.fca.0.insert.i.i.i = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.copyload.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { i16, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.21.0.copyload.i.i.i, 1 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i.i, ptr %10, align 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.s, align 8
  %.not.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.i
  %i.bg = add i16 %.sroa.0.0.copyload.i.i.i, -19
  %spec.select.i.i.i.i = icmp ult i16 %i.bg, 197
  br i1 %spec.select.i.i.i.i, label %bb.j, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT8isVectorEv.exit.i.i:                ; preds = %bb.i
  %i.bh = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #40
  br i1 %i.bh, label %bb.k, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.j:                                             ; preds = %.split.i.i
  %i.bi = zext nneg i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.bj = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -2
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !345
  %i.bm = insertvalue { i16, ptr } poison, i16 %i.bl, 0
  %i.bn = insertvalue { i16, ptr } %i.bm, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.k:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i
  %i.bo = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #39
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i:            ; preds = %bb.k, %bb.j, %_ZNK4llvm3EVT8isVectorEv.exit.i.i, %.split.i.i
  %.fca.1.insert.merged.i.i = phi { i16, ptr } [ %i.bo, %bb.k ], [ %i.bn, %bb.j ], [ %.fca.1.insert.i.i.i, %_ZNK4llvm3EVT8isVectorEv.exit.i.i ], [ %.fca.1.insert.i.i.i, %.split.i.i ] ; 2 uses
  %i.bp = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 0 ; 3 uses
  store i16 %i.bp, ptr %9, align 8
  %i.bq = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 1
  store ptr %i.bq, ptr %i.t, align 8
  %.not.i.i1.i = icmp eq i16 %i.bp, 0
  br i1 %.not.i.i1.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.br = zext i16 %i.bp to i64
  %i.bs = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bt, align 16
  br label %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit

bb.m:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.bu = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #40
  %i.bv = extractvalue { i64, i8 } %i.bu, 0
  br label %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit

_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit: ; preds = %bb.l, %bb.m
  %.pn.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %bb.l ], [ %i.bv, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  %i.bw = zext i32 %i.ax to i64
  %i.bx = icmp eq i64 %.pn.i.i.i, %i.bw
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit
  %i.by = getelementptr inbounds nuw i8, ptr %.fca.0.extract27, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !638 ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %i.bz, align 8, !tbaa !465
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.13.0.copyload = load i32, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !240
  br label %.critedge87

bb.o:                                             ; preds = %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit, %.loopexit
  %i.ca = load i8, ptr %i.u, align 1, !tbaa !358, !range !79, !noundef !80
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.p, label %.critedge91

bb.p:                                             ; preds = %bb.o
  %i.cc = call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %i.ax)
  %i.cd = icmp eq i32 %i.cc, 1
  br i1 %i.cd, label %.split.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit

.split.i:                                         ; preds = %bb.p
  %i.ce = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ax, i1 true) ; 2 uses
  %i.cf = icmp samesign ult i32 %i.ce, 10
  br i1 %i.cf, label %switch.lookup.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit

switch.lookup.i:                                  ; preds = %.split.i
  %switch.idx.cast.i = trunc nuw nsw i32 %i.ce to i16
  %switch.offset.i = add nuw nsw i16 %switch.idx.cast.i, 2
  br label %_ZN4llvm3MVT12getIntegerVTEj.exit

_ZN4llvm3MVT12getIntegerVTEj.exit:                ; preds = %bb.p, %.split.i, %switch.lookup.i
  %.sroa.0.0.i = phi i16 [ %switch.offset.i, %switch.lookup.i ], [ 0, %.split.i ], [ 0, %bb.p ]
  %i.cg = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.i, i32 noundef %i.ac)
  %i.ch = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 %i.cg, ptr null, ptr nonnull %.fca.0.extract27, i32 %.fca.1.extract28) #39 ; 2 uses
  %.fca.0.extract15 = extractvalue { ptr, i32 } %i.ch, 0 ; 4 uses
  %.fca.1.extract16 = extractvalue { ptr, i32 } %i.ch, 1 ; 4 uses
  %i.ci = icmp eq i32 %.053, 2
  br i1 %i.ci, label %bb.q, label %.critedge87

bb.q:                                             ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit
  %i.cj = call noundef i32 @_ZNK4llvm12SelectionDAG18ComputeNumSignBitsENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920) %6, ptr %.fca.0.extract15, i32 %.fca.1.extract16, i32 noundef 0) #39
  %i.ck = icmp ugt i32 %i.cj, %i.p
  br i1 %i.ck, label %.critedge91, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #39
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %12, ptr noundef nonnull align 8 dereferenceable(920) %6, ptr %.fca.0.extract15, i32 %.fca.1.extract16, i32 noundef 0) #39
  %i.cl = load i32, ptr %i.v, align 8, !tbaa !643 ; 5 uses
  %i.cm = icmp ult i32 %i.cl, 65
  br i1 %i.cm, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cn = icmp eq i32 %i.cl, 0
  br i1 %i.cn, label %bb.v, label %bb.t, !prof !648

bb.t:                                             ; preds = %bb.s
  %i.co = load i64, ptr %12, align 8, !tbaa !357
  %i.cp = sub nuw nsw i32 64, %i.cl
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = shl i64 %i.co, %i.cq
  %i.cs = xor i64 %i.cr, -1
  %i.ct = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cs, i1 false)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.cv = call noundef i32 @_ZNK4llvm5APInt24countLeadingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(32) %12) #40
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.u
  %.0.i.i = phi i32 [ %i.cv, %bb.u ], [ %i.cu, %bb.t ], [ 0, %bb.s ]
  %.not26 = icmp ult i32 %.0.i.i, %i.p
  %i.cw = load i32, ptr %i.w, align 8, !tbaa !643
  %i.cx = icmp ugt i32 %i.cw, 64
  br i1 %i.cx, label %bb.w, label %_ZN4llvm5APIntD2Ev.exit.i

bb.w:                                             ; preds = %bb.v
  %i.cy = load ptr, ptr %i.x, align 8, !tbaa !357 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %_ZN4llvm5APIntD2Ev.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.cy) #42
  %.pre = load i32, ptr %i.v, align 8, !tbaa !643
  br label %_ZN4llvm5APIntD2Ev.exit.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.x, %bb.w, %bb.v
  %i.da = phi i32 [ %.pre, %bb.x ], [ %i.cl, %bb.w ], [ %i.cl, %bb.v ]
  %i.db = icmp ugt i32 %i.da, 64
  br i1 %i.db, label %bb.y, label %.critedge85

bb.y:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i
  %i.dc = load ptr, ptr %12, align 8, !tbaa !357  ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %.critedge85, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdaPv(ptr noundef nonnull %i.dc) #42
  br label %.critedge85

.critedge85:                                      ; preds = %bb.z, %bb.y, %_ZN4llvm5APIntD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  br i1 %.not26, label %.critedge87, label %.critedge91

.critedge87:                                      ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit, %.critedge85, %bb.n
  %.sroa.13.0 = phi i32 [ %.sroa.13.0.copyload, %bb.n ], [ %.fca.1.extract16, %.critedge85 ], [ %.fca.1.extract16, %_ZN4llvm3MVT12getIntegerVTEj.exit ] ; 2 uses
  %.sroa.01.0 = phi ptr [ %.sroa.01.0.copyload, %bb.n ], [ %.fca.0.extract15, %.critedge85 ], [ %.fca.0.extract15, %_ZN4llvm3MVT12getIntegerVTEj.exit ] ; 2 uses
  %i.de = load i8, ptr %i.y, align 1, !tbaa !366, !range !79, !noundef !80
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %.critedge87
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !469
  %i.di = zext i32 %.sroa.13.0 to i64
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.di ; 2 uses
  %.sroa.0.0.copyload.i.i.i92 = load i16, ptr %i.dj, align 8, !tbaa !345 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i.i93 = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.sroa.21.0.copyload.i.i.i94 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i93, align 8, !tbaa !471 ; 2 uses
  %.fca.0.insert.i.i.i95 = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.copyload.i.i.i92, 0
  %.fca.1.insert.i.i.i96 = insertvalue { i16, ptr } %.fca.0.insert.i.i.i95, ptr %.sroa.21.0.copyload.i.i.i94, 1 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i.i92, ptr %8, align 8
  store ptr %.sroa.21.0.copyload.i.i.i94, ptr %i.z, align 8
  %.not.i.i.i97 = icmp eq i16 %.sroa.0.0.copyload.i.i.i92, 0
  br i1 %.not.i.i.i97, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i105, label %.split.i.i98

.split.i.i98:                                     ; preds = %bb.aa
  %i.dk = add i16 %.sroa.0.0.copyload.i.i.i92, -19
  %spec.select.i.i.i.i99 = icmp ult i16 %i.dk, 197
  br i1 %spec.select.i.i.i.i99, label %bb.ab, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i100

_ZNK4llvm3EVT8isVectorEv.exit.i.i105:             ; preds = %bb.aa
  %i.dl = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #40
  br i1 %i.dl, label %bb.ac, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i100

bb.ab:                                            ; preds = %.split.i.i98
  %i.dm = zext nneg i16 %.sroa.0.0.copyload.i.i.i92 to i64
  %i.dn = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 -2
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !345
  %i.dq = insertvalue { i16, ptr } poison, i16 %i.dp, 0
  %i.dr = insertvalue { i16, ptr } %i.dq, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i100

bb.ac:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i105
  %i.ds = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #39
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i100

_ZNK4llvm3EVT13getScalarTypeEv.exit.i100:         ; preds = %bb.ac, %bb.ab, %_ZNK4llvm3EVT8isVectorEv.exit.i.i105, %.split.i.i98
  %.fca.1.insert.merged.i.i101 = phi { i16, ptr } [ %i.ds, %bb.ac ], [ %i.dr, %bb.ab ], [ %.fca.1.insert.i.i.i96, %_ZNK4llvm3EVT8isVectorEv.exit.i.i105 ], [ %.fca.1.insert.i.i.i96, %.split.i.i98 ] ; 2 uses
  %i.dt = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i101, 0 ; 3 uses
  store i16 %i.dt, ptr %7, align 8
  %i.du = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i101, 1
  store ptr %i.du, ptr %i.aa, align 8
  %.not.i.i1.i102 = icmp eq i16 %i.dt, 0
  br i1 %.not.i.i1.i102, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i100
  %i.dv = zext i16 %i.dt to i64
  %i.dw = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.dw, i64 -16
  %.sroa.0.0.copyload.i.i.i.i103 = load i64, ptr %i.dx, align 16
  br label %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit106

bb.ae:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i100
  %i.dy = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #40
  %i.dz = extractvalue { i64, i8 } %i.dy, 0
  br label %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit106

_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit106: ; preds = %bb.ad, %bb.ae
  %.pn.i.i.i104 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i103, %bb.ad ], [ %i.dz, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.ea = icmp ult i64 %.pn.i.i.i104, 32
  br i1 %i.ea, label %.critedge91, label %bb.af

bb.af:                                            ; preds = %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit106, %.critedge87
  %i.eb = zext nneg i32 %i.ac to i64
  %i.ec = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %i.eb ; 4 uses
  %.idx3.i.i = shl nuw nsw i64 %i.ec, 2           ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.idx3.i.i ; 2 uses
  %i.ef = lshr i64 %i.ec, 2                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.af
  %i.eg = and i64 %.idx3.i.i, 262128
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.ed, i64 %i.eg
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.aj, %.lr.ph.preheader.i.i.i.i.i.i
  %.018.i.i.i.i.i.i = phi i64 [ %i.el, %bb.aj ], [ %i.ef, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.02917.i.i.i.i.i.i = phi ptr [ %i.ek, %bb.aj ], [ %i.ed, %.lr.ph.preheader.i.i.i.i.i.i ] ; 9 uses
  %.029.val39.i.i.i.i.i.i = load i32, ptr %.02917.i.i.i.i.i.i, align 4, !tbaa !240
  %.not3.i.i.i.i.i.i = icmp eq i32 %.029.val39.i.i.i.i.i.i, -1
  br i1 %.not3.i.i.i.i.i.i, label %bb.ag, label %.critedge91.loopexit.split.loop.exit

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.02917.i.i.i.i.i.i, i64 4
  %.val37.i.i.i.i.i.i = load i32, ptr %i.eh, align 4, !tbaa !240
  %.not4.i.i.i.i.i.i = icmp eq i32 %.val37.i.i.i.i.i.i, -1
  br i1 %.not4.i.i.i.i.i.i, label %bb.ah, label %.critedge91.loopexit.split.loop.exit.loopexit.split.loop.exit89

bb.ah:                                            ; preds = %bb.ag
  %i.ei = getelementptr inbounds nuw i8, ptr %.02917.i.i.i.i.i.i, i64 8
  %.val35.i.i.i.i.i.i = load i32, ptr %i.ei, align 4, !tbaa !240
  %.not5.i.i.i.i.i.i = icmp eq i32 %.val35.i.i.i.i.i.i, -1
  br i1 %.not5.i.i.i.i.i.i, label %bb.ai, label %.critedge91.loopexit.split.loop.exit.loopexit.split.loop.exit91

bb.ai:                                            ; preds = %bb.ah
  %i.ej = getelementptr inbounds nuw i8, ptr %.02917.i.i.i.i.i.i, i64 12
  %.val33.i.i.i.i.i.i = load i32, ptr %i.ej, align 4, !tbaa !240
  %.not6.i.i.i.i.i.i = icmp eq i32 %.val33.i.i.i.i.i.i, -1
  br i1 %.not6.i.i.i.i.i.i, label %bb.aj, label %.critedge91.loopexit.split.loop.exit.loopexit.split.loop.exit93
end_hunk_1
begin_hunk_2_@"_ZN9__gnu_cxx5__ops12_Iter_negateIZL29combineX86ShufflesRecursivelyN4llvm8ArrayRefINS2_7SDValueEEEijNS2_3MVTENS3_IiEENS3_IPKNS2_6SDNodeEEEjjbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_2EclIPS4_EEbT_":bb.a
  %i.w = xor i1 %i.f, true
  ret i1 %i.w
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @"_ZZL22combineX86ShuffleChainN4llvm8ArrayRefINS_7SDValueEEEjNS_3MVTENS0_IiEEiNS0_IPKNS_6SDNodeEEEbbbRNS_12SelectionDAGERKNS_5SDLocERKNS_12X86SubtargetEENK3$_2clES3_S1_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i16 %1, ptr %2, i32 %3) unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %i.a = zext i16 %1 to i64
  %i.b = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.a ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -16
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 16 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.b, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.d = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.d, label %bb.b, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #41
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !469
  %i.g = zext i32 %3 to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.h, align 8, !tbaa !345 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !471 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i.i, ptr %5, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.i, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 0 ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.j = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.k = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.j ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 -16
  %.sroa.0.0.copyload.i.i3.i = load i64, ptr %i.l, align 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.k, i64 -8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.fca.0.insert.i.i4.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i3.i, 0
  %.fca.1.insert.i.i5.i = insertvalue { i64, i8 } %.fca.0.insert.i.i4.i, i8 %.sroa.2.0.copyload.i.i.i, 1
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit

bb.d:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.m = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #40
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit

_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit:     ; preds = %bb.c, %bb.d
  %.pn.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i5.i, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  %.fca.1.extract39 = extractvalue { i64, i8 } %.pn.i.i, 1
  %i.n = trunc nuw i8 %.fca.1.extract39 to i1
  br i1 %i.n, label %bb.e, label %_ZNK4llvm8TypeSizecvmEv.exit48

bb.e:                                             ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #41
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit48:                   ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit
  %.fca.0.extract38 = extractvalue { i64, i8 } %.pn.i.i, 0
  %i.o = icmp ugt i64 %.sroa.0.0.copyload.i, %.fca.0.extract38
  br i1 %i.o, label %_ZNK4llvm8TypeSizecvmEv.exit54, label %_ZNK4llvm8TypeSizecvmEv.exit60

_ZNK4llvm8TypeSizecvmEv.exit54:                   ; preds = %_ZNK4llvm8TypeSizecvmEv.exit48
  %i.p = load ptr, ptr %0, align 8, !tbaa !5082, !nonnull !80, !align !237
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !5083, !nonnull !80, !align !237
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !5084, !nonnull !80, !align !237
  %i.u = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.v = call fastcc { ptr, i32 } @_ZL14widenSubVectorN4llvm7SDValueEbRKNS_12X86SubtargetERNS_12SelectionDAGERKNS_5SDLocEj(ptr nonnull %2, i32 %3, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(519752) %i.p, ptr noundef nonnull align 8 dereferenceable(920) %i.r, ptr noundef nonnull align 8 dereferenceable(12) %i.t, i32 noundef %i.u) ; 2 uses
  %.fca.0.extract24 = extractvalue { ptr, i32 } %i.v, 0
  %.fca.1.extract25 = extractvalue { ptr, i32 } %i.v, 1
  br label %bb.i

_ZNK4llvm8TypeSizecvmEv.exit60:                   ; preds = %_ZNK4llvm8TypeSizecvmEv.exit48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  store i16 %.sroa.0.0.copyload.i.i.i, ptr %4, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.w, align 8
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit60
  %i.x = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.y = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.x ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -16
  %.sroa.0.0.copyload.i.i3.i65 = load i64, ptr %i.z, align 16
  %.sroa.2.0..sroa_idx.i.i.i66 = getelementptr i8, ptr %i.y, i64 -8
  %.sroa.2.0.copyload.i.i.i67 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i66, align 8
  %.fca.0.insert.i.i4.i68 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i3.i65, 0
  %.fca.1.insert.i.i5.i69 = insertvalue { i64, i8 } %.fca.0.insert.i.i4.i68, i8 %.sroa.2.0.copyload.i.i.i67, 1
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit71

bb.g:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit60
  %i.aa = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #40
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit71

_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit71:   ; preds = %bb.f, %bb.g
  %.pn.i.i70 = phi { i64, i8 } [ %.fca.1.insert.i.i5.i69, %bb.f ], [ %i.aa, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  %.fca.1.extract17 = extractvalue { i64, i8 } %.pn.i.i70, 1
  %i.ab = trunc nuw i8 %.fca.1.extract17 to i1
  br i1 %i.ab, label %bb.h, label %_ZNK4llvm8TypeSizecvmEv.exit72

bb.h:                                             ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit71
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #41
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit72:                   ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit71
  %.fca.0.extract16 = extractvalue { i64, i8 } %.pn.i.i70, 0
  %i.ac = icmp ult i64 %.sroa.0.0.copyload.i, %.fca.0.extract16
  br i1 %i.ac, label %_ZNK4llvm8TypeSizecvmEv.exit78, label %bb.i

_ZNK4llvm8TypeSizecvmEv.exit78:                   ; preds = %_ZNK4llvm8TypeSizecvmEv.exit72
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !5083, !nonnull !80, !align !237
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !5084, !nonnull !80, !align !237
  %i.ah = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.ai = call fastcc { ptr, i32 } @_ZL16extractSubVectorN4llvm7SDValueEjRNS_12SelectionDAGERKNS_5SDLocEj(ptr nonnull %2, i32 %3, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(920) %i.ae, ptr noundef nonnull align 8 dereferenceable(12) %i.ag, i32 noundef %i.ah) ; 2 uses
  %.fca.0.extract4 = extractvalue { ptr, i32 } %i.ai, 0
  %.fca.1.extract5 = extractvalue { ptr, i32 } %i.ai, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit72, %_ZNK4llvm8TypeSizecvmEv.exit78, %_ZNK4llvm8TypeSizecvmEv.exit54
  %.sroa.095.0 = phi ptr [ %.fca.0.extract24, %_ZNK4llvm8TypeSizecvmEv.exit54 ], [ %.fca.0.extract4, %_ZNK4llvm8TypeSizecvmEv.exit78 ], [ %2, %_ZNK4llvm8TypeSizecvmEv.exit72 ]
  %.sroa.8.0 = phi i32 [ %.fca.1.extract25, %_ZNK4llvm8TypeSizecvmEv.exit54 ], [ %.fca.1.extract5, %_ZNK4llvm8TypeSizecvmEv.exit78 ], [ %3, %_ZNK4llvm8TypeSizecvmEv.exit72 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !5083, !nonnull !80, !align !237
  %i.al = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.ak, i16 %1, ptr null, ptr %.sroa.095.0, i32 %.sroa.8.0) #39
  ret { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL20matchShuffleAsVTRUNCRN4llvm3MVTES1_S0_NS_8ArrayRefIiEERKNS_5APIntERKNS_12X86SubtargetE(ptr nofree noundef nonnull writeonly align 2 captures(none) dereferenceable(2) %0, ptr nofree noundef nonnull writeonly align 2 captures(none) dereferenceable(2) %1, i16 %2, ptr nofree readonly captures(none) %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(519752) %6) unnamed_addr #1 {
bb.a:
  %7 = alloca %"class.llvm::APInt", align 8       ; 10 uses
  %i.a = add i16 %2, -19                          ; 2 uses
  %spec.select.i.i = icmp ult i16 %i.a, 144
  br i1 %spec.select.i.i, label %_ZNK4llvm3MVT14is512BitVectorEv.exit, label %_ZNK4llvm3MVT14is512BitVectorEv.exit.thread

_ZNK4llvm3MVT14is512BitVectorEv.exit:             ; preds = %bb.a
  %i.b = zext nneg i16 %2 to i64                  ; 2 uses
  %i.c = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.d, align 16
  %i.e = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 512
  br i1 %i.e, label %.thread, label %_ZNK4llvm3MVT14is512BitVectorEv.exit.thread

.thread:                                          ; preds = %_ZNK4llvm3MVT14is512BitVectorEv.exit
  %i.f = trunc i64 %4 to i32
  br label %bb.c

_ZNK4llvm3MVT14is512BitVectorEv.exit.thread:      ; preds = %bb.a, %_ZNK4llvm3MVT14is512BitVectorEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 503
  %i.h = load i8, ptr %i.g, align 1, !tbaa !358, !range !79, !noundef !80
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %.critedge52

bb.b:                                             ; preds = %_ZNK4llvm3MVT14is512BitVectorEv.exit.thread
  %i.j = trunc i64 %4 to i32                      ; 2 uses
  %spec.select.i.i.i = icmp ult i16 %i.a, 197
  br i1 %spec.select.i.i.i, label %._crit_edge, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

._crit_edge:                                      ; preds = %bb.b
  %.pre = zext nneg i16 %2 to i64
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %.thread
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.b, %.thread ]
  %i.k = phi i32 [ %i.j, %._crit_edge ], [ %i.f, %.thread ]
  %i.l = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %.pre-phi
  %i.m = getelementptr i8, ptr %i.l, i64 -2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !345
  br label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.b, %bb.c
  %i.o = phi i32 [ %i.k, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i = phi i16 [ %i.n, %bb.c ], [ %2, %bb.b ]
  %i.p = zext i16 %.sroa.0.0.i.i to i64
  %i.q = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.r, align 16
  %i.s = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 7 uses
  %i.t = udiv i32 64, %i.s
  %.not.not75 = icmp ugt i32 %i.s, 32
  br i1 %.not.not75, label %.critedge52, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 395
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.critedge
  %.04676 = phi i32 [ 2, %.lr.ph ], [ %i.bi, %.critedge ] ; 4 uses
  %i.w = mul i32 %.04676, %i.s                    ; 3 uses
  %i.x = icmp ult i32 %i.w, 32
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load i8, ptr %i.u, align 1, !tbaa !366, !range !79, !noundef !80
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = call range(i32 1, 33) i32 @llvm.cttz.i32(i32 %.04676, i1 true)
  %i.ab = lshr i32 %i.o, %i.aa                    ; 7 uses
  %.not14.i = icmp eq i32 %i.ab, 0
  br i1 %.not14.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.ac = zext nneg i32 %i.ab to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.01315.i = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.ai, %bb.g ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !240 ; 2 uses
  %i.af = icmp eq i32 %i.ae, -1
  %i.ag = icmp eq i32 %i.ae, %.01315.i
  %i.ah = or i1 %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.lr.ph.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = add nuw nsw i32 %.01315.i, %.04676
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ac
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !21

.loopexit:                                        ; preds = %bb.g, %bb.f
  %i.aj = sub nuw i32 %i.o, %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  call void @_ZNK4llvm5APInt11extractBitsEjj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(12) %5, i32 noundef %i.aj, i32 noundef %i.ab) #39
  %i.ak = load i32, ptr %i.v, align 8, !tbaa !643 ; 4 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZNK4llvm5APInt9isAllOnesEv.exit.thread.thread, label %bb.h

_ZNK4llvm5APInt9isAllOnesEv.exit.thread.thread:   ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %.loopexit71

bb.h:                                             ; preds = %.loopexit
  %i.am = icmp ult i32 %i.ak, 65
  br i1 %i.am, label %_ZNK4llvm5APInt9isAllOnesEv.exit.thread, label %bb.i

_ZNK4llvm5APInt9isAllOnesEv.exit.thread:          ; preds = %bb.h
  %i.an = load i64, ptr %7, align 8, !tbaa !357
  %i.ao = sub nuw nsw i32 64, %i.ak
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 -1, %i.ap
  %i.ar = icmp eq i64 %i.an, %i.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br i1 %i.ar, label %.loopexit71, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.as = call noundef i32 @_ZNK4llvm5APInt25countTrailingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %7) #40
  %i.at = icmp eq i32 %i.as, %i.ak                ; 2 uses
  %i.au = load ptr, ptr %7, align 8, !tbaa !357   ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN4llvm5APIntD2Ev.exit, label %.split

.split:                                           ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.au) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br i1 %i.at, label %.loopexit71, label %.critedge

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br i1 %i.at, label %.loopexit71, label %.critedge

.loopexit71:                                      ; preds = %.split, %_ZNK4llvm5APInt9isAllOnesEv.exit.thread, %_ZN4llvm5APIntD2Ev.exit, %_ZNK4llvm5APInt9isAllOnesEv.exit.thread.thread
  %i.aw = call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %i.w)
  %i.ax = icmp eq i32 %i.aw, 1
  br i1 %i.ax, label %.split.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit

.split.i:                                         ; preds = %.loopexit71
  %i.ay = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.w, i1 true) ; 2 uses
  %i.az = icmp samesign ult i32 %i.ay, 10
  br i1 %i.az, label %switch.lookup.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit

switch.lookup.i:                                  ; preds = %.split.i
  %switch.idx.cast.i = trunc nuw nsw i32 %i.ay to i16
  %switch.offset.i = add nuw nsw i16 %switch.idx.cast.i, 2
  br label %_ZN4llvm3MVT12getIntegerVTEj.exit

_ZN4llvm3MVT12getIntegerVTEj.exit:                ; preds = %.loopexit71, %.split.i, %switch.lookup.i
  %.sroa.0.0.i = phi i16 [ %switch.offset.i, %switch.lookup.i ], [ 0, %.split.i ], [ 0, %.loopexit71 ] ; 2 uses
  store i16 %.sroa.0.0.i, ptr %0, align 2, !tbaa !345
  %i.ba = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.i, i32 noundef %i.ab)
  store i16 %i.ba, ptr %0, align 2, !tbaa !345
  %i.bb = call range(i32 1, 7) i32 @llvm.ctpop.i32(i32 %i.s)
  %i.bc = icmp eq i32 %i.bb, 1
  %i.bd = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.s, i1 true)
  %switch.idx.cast.i56 = trunc nuw nsw i32 %i.bd to i16
  %switch.offset.i57 = add nuw nsw i16 %switch.idx.cast.i56, 2
  %.sroa.0.0.i53 = select i1 %i.bc, i16 %switch.offset.i57, i16 0 ; 2 uses
  store i16 %.sroa.0.0.i53, ptr %1, align 2, !tbaa !345
  %i.be = mul i32 %i.ab, %i.s
  %i.bf = icmp ugt i32 %i.be, 127
  br i1 %i.bf, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit
  %i.bg = udiv i32 128, %i.s
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit, %bb.j
  %.sink = phi i32 [ %i.bg, %bb.j ], [ %i.ab, %_ZN4llvm3MVT12getIntegerVTEj.exit ]
  %i.bh = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.i53, i32 noundef %.sink)
  store i16 %i.bh, ptr %1, align 2, !tbaa !345
  br label %.critedge52

.critedge:                                        ; preds = %.lr.ph.i, %.split, %_ZN4llvm5APIntD2Ev.exit, %_ZNK4llvm5APInt9isAllOnesEv.exit.thread, %bb.e
  %i.bi = shl nuw nsw i32 %.04676, 1              ; 2 uses
  %.not.not = icmp samesign ugt i32 %i.bi, %i.t
  br i1 %.not.not, label %.critedge52, label %bb.d, !llvm.loop !5085

.critedge52:                                      ; preds = %.critedge, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit, %bb.k, %_ZNK4llvm3MVT14is512BitVectorEv.exit.thread
  %.6 = phi i1 [ false, %_ZNK4llvm3MVT14is512BitVectorEv.exit.thread ], [ true, %bb.k ], [ false, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit ], [ false, %.critedge ]
  ret i1 %.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i64 @"_ZN4llvm8count_ifIRNS_8ArrayRefIPKNS_6SDNodeEEEZL22combineX86ShuffleChainNS1_INS_7SDValueEEEjNS_3MVTENS1_IiEEiS5_bbbRNS_12SelectionDAGERKNS_5SDLocERKNS_12X86SubtargetEE3$_0EEDaOT_T0_"(ptr nofree readonly captures(address) %.0.val, i64 %.8.val) unnamed_addr #5 {
bb.a:
  %.not7.i.i = icmp eq i64 %.8.val, 0
  br i1 %.not7.i.i, label %"_ZSt8count_ifIPKPKN4llvm6SDNodeEZL22combineX86ShuffleChainNS0_8ArrayRefINS0_7SDValueEEEjNS0_3MVTENS6_IiEEiNS6_IS3_EEbbbRNS0_12SelectionDAGERKNS0_5SDLocERKNS0_12X86SubtargetEE3$_0ENSt15iterator_traitsIT_E15difference_typeESM_SM_T0_.exit", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.a = add i64 %.8.val, 2305843009213693951
  %i.b = and i64 %i.a, 2305843009213693951        ; 2 uses
  %i.c = add nuw nsw i64 %i.b, 1                  ; 2 uses
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.d = icmp samesign ult i64 %i.b, 3
  br i1 %i.d, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.c, 4611686018427387900
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.3", %.lr.ph.i.i.preheader.new
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.s, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.3" ] ; 2 uses
  %.058.i.i = phi ptr [ %.0.val, %.lr.ph.i.i.preheader.new ], [ %i.t, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.3" ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.3" ]
  %.05.val.i.i = load ptr, ptr %.058.i.i, align 8, !tbaa !465
  %i.e = getelementptr i8, ptr %.05.val.i.i, i64 24
  %.05.val.val.i.i = load i32, ptr %i.e, align 8, !tbaa !468
  switch i32 %.05.val.val.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i" [
    i32 774, label %bb.b
    i32 941, label %bb.b
    i32 939, label %bb.b
    i32 948, label %bb.b
    i32 942, label %bb.b
    i32 943, label %bb.b
    i32 194, label %bb.b
    i32 193, label %bb.b
    i32 547, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.f = add nsw i64 %.09.i.i, 1
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.g = phi i64 [ %i.f, %bb.b ], [ %.09.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.058.i.i, i64 8
  %.05.val.i.i.1 = load ptr, ptr %i.h, align 8, !tbaa !465
  %i.i = getelementptr i8, ptr %.05.val.i.i.1, i64 24
  %.05.val.val.i.i.1 = load i32, ptr %i.i, align 8, !tbaa !468
  switch i32 %.05.val.val.i.i.1, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.1" [
    i32 774, label %bb.c
    i32 941, label %bb.c
    i32 939, label %bb.c
    i32 948, label %bb.c
    i32 942, label %bb.c
    i32 943, label %bb.c
    i32 194, label %bb.c
    i32 193, label %bb.c
    i32 547, label %bb.c
  ]

bb.c:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i"
  %i.j = add nsw i64 %i.g, 1
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.1"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.1": ; preds = %bb.c, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i"
  %i.k = phi i64 [ %i.j, %bb.c ], [ %i.g, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i" ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.058.i.i, i64 16
  %.05.val.i.i.2 = load ptr, ptr %i.l, align 8, !tbaa !465
  %i.m = getelementptr i8, ptr %.05.val.i.i.2, i64 24
  %.05.val.val.i.i.2 = load i32, ptr %i.m, align 8, !tbaa !468
  switch i32 %.05.val.val.i.i.2, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.2" [
    i32 774, label %bb.d
    i32 941, label %bb.d
    i32 939, label %bb.d
    i32 948, label %bb.d
    i32 942, label %bb.d
    i32 943, label %bb.d
    i32 194, label %bb.d
    i32 193, label %bb.d
    i32 547, label %bb.d
  ]

bb.d:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.1", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.1", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.1", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.1", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.1", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.1", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.1", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.1", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.1"
  %i.n = add nsw i64 %i.k, 1
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.2"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.2": ; preds = %bb.d, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.1"
  %i.o = phi i64 [ %i.n, %bb.d ], [ %i.k, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.1" ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.058.i.i, i64 24
  %.05.val.i.i.3 = load ptr, ptr %i.p, align 8, !tbaa !465
  %i.q = getelementptr i8, ptr %.05.val.i.i.3, i64 24
  %.05.val.val.i.i.3 = load i32, ptr %i.q, align 8, !tbaa !468
  switch i32 %.05.val.val.i.i.3, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.3" [
    i32 774, label %bb.e
    i32 941, label %bb.e
    i32 939, label %bb.e
    i32 948, label %bb.e
    i32 942, label %bb.e
    i32 943, label %bb.e
    i32 194, label %bb.e
    i32 193, label %bb.e
    i32 547, label %bb.e
  ]

bb.e:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.2", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.2", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.2", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.2", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.2", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.2", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.2", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.2", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.2"
  %i.r = add nsw i64 %i.o, 1
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.3"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.3": ; preds = %bb.e, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.2"
  %i.s = phi i64 [ %i.r, %bb.e ], [ %i.o, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.2" ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.058.i.i, i64 32 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZSt8count_ifIPKPKN4llvm6SDNodeEZL22combineX86ShuffleChainNS0_8ArrayRefINS0_7SDValueEEEjNS0_3MVTENS6_IiEEiNS6_IS3_EEbbbRNS0_12SelectionDAGERKNS0_5SDLocERKNS0_12X86SubtargetEE3$_0ENSt15iterator_traitsIT_E15difference_typeESM_SM_T0_.exit.loopexit.unr-lcssa", label %.lr.ph.i.i, !llvm.loop !5086

"_ZSt8count_ifIPKPKN4llvm6SDNodeEZL22combineX86ShuffleChainNS0_8ArrayRefINS0_7SDValueEEEjNS0_3MVTENS6_IiEEiNS6_IS3_EEbbbRNS0_12SelectionDAGERKNS0_5SDLocERKNS0_12X86SubtargetEE3$_0ENSt15iterator_traitsIT_E15difference_typeESM_SM_T0_.exit.loopexit.unr-lcssa": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.3"
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZSt8count_ifIPKPKN4llvm6SDNodeEZL22combineX86ShuffleChainNS0_8ArrayRefINS0_7SDValueEEEjNS0_3MVTENS6_IiEEiNS6_IS3_EEbbbRNS0_12SelectionDAGERKNS0_5SDLocERKNS0_12X86SubtargetEE3$_0ENSt15iterator_traitsIT_E15difference_typeESM_SM_T0_.exit", label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %"_ZSt8count_ifIPKPKN4llvm6SDNodeEZL22combineX86ShuffleChainNS0_8ArrayRefINS0_7SDValueEEEjNS0_3MVTENS6_IiEEiNS6_IS3_EEbbbRNS0_12SelectionDAGERKNS0_5SDLocERKNS0_12X86SubtargetEE3$_0ENSt15iterator_traitsIT_E15difference_typeESM_SM_T0_.exit.loopexit.unr-lcssa", %.lr.ph.i.i.preheader
  %.09.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.s, %"_ZSt8count_ifIPKPKN4llvm6SDNodeEZL22combineX86ShuffleChainNS0_8ArrayRefINS0_7SDValueEEEjNS0_3MVTENS6_IiEEiNS6_IS3_EEbbbRNS0_12SelectionDAGERKNS0_5SDLocERKNS0_12X86SubtargetEE3$_0ENSt15iterator_traitsIT_E15difference_typeESM_SM_T0_.exit.loopexit.unr-lcssa" ]
  %.058.i.i.epil.init = phi ptr [ %.0.val, %.lr.ph.i.i.preheader ], [ %i.t, %"_ZSt8count_ifIPKPKN4llvm6SDNodeEZL22combineX86ShuffleChainNS0_8ArrayRefINS0_7SDValueEEEjNS0_3MVTENS6_IiEEiNS6_IS3_EEbbbRNS0_12SelectionDAGERKNS0_5SDLocERKNS0_12X86SubtargetEE3$_0ENSt15iterator_traitsIT_E15difference_typeESM_SM_T0_.exit.loopexit.unr-lcssa" ]
  %lcmp.mod2 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.epil", %.lr.ph.i.i.epil.preheader
  %.09.i.i.epil = phi i64 [ %i.w, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.epil" ], [ %.09.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.058.i.i.epil = phi ptr [ %i.x, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.epil" ], [ %.058.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.epil" ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %.05.val.i.i.epil = load ptr, ptr %.058.i.i.epil, align 8, !tbaa !465
  %i.u = getelementptr i8, ptr %.05.val.i.i.epil, i64 24
  %.05.val.val.i.i.epil = load i32, ptr %i.u, align 8, !tbaa !468
  switch i32 %.05.val.val.i.i.epil, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.epil" [
    i32 774, label %bb.f
    i32 941, label %bb.f
    i32 939, label %bb.f
    i32 948, label %bb.f
    i32 942, label %bb.f
    i32 943, label %bb.f
    i32 194, label %bb.f
    i32 193, label %bb.f
    i32 547, label %bb.f
  ]

bb.f:                                             ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil, %.lr.ph.i.i.epil, %.lr.ph.i.i.epil, %.lr.ph.i.i.epil, %.lr.ph.i.i.epil, %.lr.ph.i.i.epil, %.lr.ph.i.i.epil, %.lr.ph.i.i.epil
  %i.v = add nsw i64 %.09.i.i.epil, 1
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.epil"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL22combineX86ShuffleChainN4llvm8ArrayRefINS2_7SDValueEEEjNS2_3MVTENS3_IiEEiNS3_IPKNS2_6SDNodeEEEbbbRNS2_12SelectionDAGERKNS2_5SDLocERKNS2_12X86SubtargetEE3$_0EclIPKSA_EEbT_.exit.i.i.epil": ; preds = %bb.f, %.lr.ph.i.i.epil
  %i.w = phi i64 [ %i.v, %bb.f ], [ %.09.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.058.i.i.epil, i64 8
end_hunk_2

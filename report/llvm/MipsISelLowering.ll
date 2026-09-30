Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MipsISelLowering?download=true
inline.NumInlined: 9952
inline.NumDeleted: 3126
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZNK4llvm18MipsTargetLowering17PerformDAGCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE:bb.a
  %i.ir = zext i16 %.sroa.0.0.copyload.i.i102 to i64
  %i.is = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ir ; 2 uses
  %i.it = getelementptr i8, ptr %i.is, i64 -16
  %.sroa.0.0.copyload.i.i.i112 = load i64, ptr %i.it, align 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.is, i64 -8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.fca.0.insert.i.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i.i112, 0
  %.fca.1.insert.i.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i.i, i8 %.sroa.2.0.copyload.i.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.iu = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %37) #28
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i:            ; preds = %bb.ah, %bb.ag
  %.pn.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i.i, %bb.ag ], [ %i.iu, %bb.ah ] ; 2 uses
  %.fca.1.extract26.i113 = extractvalue { i64, i8 } %.pn.i.i, 1
  %i.iv = trunc nuw i8 %.fca.1.extract26.i113 to i1
  br i1 %i.iv, label %bb.ai, label %_ZNK4llvm8TypeSizecvmEv.exit.i

bb.ai:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.71) #29
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i:                   ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i
  %.fca.0.extract25.i114 = extractvalue { i64, i8 } %.pn.i.i, 0
  %i.iw = icmp ugt i64 %i.iq, %.fca.0.extract25.i114
  br i1 %i.iw, label %.critedge.i108, label %bb.aj

bb.aj:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  %.sroa.010.0.copyload11.i = load ptr, ptr %i.ie, align 8, !tbaa !426
  %.sroa.714.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %.sroa.714.0.copyload16.i = load i32, ptr %.sroa.714.0..sroa_idx15.i, align 8, !tbaa !98
  br label %bb.ax

bb.ak:                                            ; preds = %bb.ad
  %i.ix = icmp eq i32 %i.hc, 198
  br i1 %i.ix, label %bb.al, label %bb.aw

bb.al:                                            ; preds = %bb.ak
  %i.iy = getelementptr inbounds nuw i8, ptr %i.gp, i64 364
  %i.iz = load i8, ptr %i.iy, align 4, !tbaa !405, !range !50, !noundef !51
  %i.ja = trunc nuw i8 %i.iz to i1
  br i1 %i.ja, label %bb.am, label %bb.aw

bb.am:                                            ; preds = %bb.al
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload.i, i64 40
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !425 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 40
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !431 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !423
  switch i32 %i.jg, label %.critedge.i108 [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit67.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit67.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit67.i: ; preds = %bb.am, %bb.am
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 88
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !435 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 24 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 32
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !436
  %i.jm = icmp ult i32 %i.jl, 65
  %i.jn = load ptr, ptr %i.jj, align 8
  %spec.select.i.i.i68.i = select i1 %i.jm, ptr %i.jj, ptr %i.jn
  %.0.i.i.i69.i = load i64, ptr %spec.select.i.i.i68.i, align 8, !tbaa !305
  %.not59.i = icmp eq i64 %.0.i.i.i69.i, %i.ia
  br i1 %.not59.i, label %bb.an, label %.critedge.i108

bb.an:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit67.i
  %.not.i70.i = icmp eq i16 %.sroa.0.0.copyload.i.i102, 0 ; 2 uses
  br i1 %.not.i70.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jo = zext i16 %.sroa.0.0.copyload.i.i102 to i64
  %i.jp = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.jo ; 2 uses
  %i.jq = getelementptr i8, ptr %i.jp, i64 -16
  %.sroa.0.0.copyload.i.i71.i = load i64, ptr %i.jq, align 16
  %.sroa.2.0..sroa_idx.i.i72.i = getelementptr i8, ptr %i.jp, i64 -8
  %.sroa.2.0.copyload.i.i73.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i72.i, align 8
  %.fca.0.insert.i.i74.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i71.i, 0
  %.fca.1.insert.i.i75.i = insertvalue { i64, i8 } %.fca.0.insert.i.i74.i, i8 %.sroa.2.0.copyload.i.i73.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit77.i

bb.ap:                                            ; preds = %bb.an
  %i.jr = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %37) #28
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit77.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit77.i:          ; preds = %bb.ap, %bb.ao
  %.pn.i76.i = phi { i64, i8 } [ %.fca.1.insert.i.i75.i, %bb.ao ], [ %i.jr, %bb.ap ] ; 2 uses
  %.fca.1.extract22.i = extractvalue { i64, i8 } %.pn.i76.i, 1
  %i.js = trunc nuw i8 %.fca.1.extract22.i to i1
  br i1 %i.js, label %bb.aq, label %_ZNK4llvm8TypeSizecvmEv.exit78.i

bb.aq:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit77.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.71) #29
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit78.i:                 ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit77.i
  %.fca.0.extract21.i = extractvalue { i64, i8 } %.pn.i76.i, 0
  %i.jt = icmp uge i64 %i.ia, %.fca.0.extract21.i
  %i.ju = icmp samesign ugt i64 %i.ib, 31
  %or.cond3.i = select i1 %i.jt, i1 true, i1 %i.ju
  br i1 %or.cond3.i, label %.critedge.i108, label %bb.ar

bb.ar:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit78.i
  %i.jv = add nuw nsw i64 %i.ia, %i.ib
  br i1 %.not.i70.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jw = zext i16 %.sroa.0.0.copyload.i.i102 to i64
  %i.jx = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.jw ; 2 uses
  %i.jy = getelementptr i8, ptr %i.jx, i64 -16
  %.sroa.0.0.copyload.i.i80.i = load i64, ptr %i.jy, align 16
  %.sroa.2.0..sroa_idx.i.i81.i = getelementptr i8, ptr %i.jx, i64 -8
  %.sroa.2.0.copyload.i.i82.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i81.i, align 8
  %.fca.0.insert.i.i83.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i80.i, 0
  %.fca.1.insert.i.i84.i = insertvalue { i64, i8 } %.fca.0.insert.i.i83.i, i8 %.sroa.2.0.copyload.i.i82.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit86.i

bb.at:                                            ; preds = %bb.ar
  %i.jz = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %37) #28
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit86.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit86.i:          ; preds = %bb.at, %bb.as
  %.pn.i85.i = phi { i64, i8 } [ %.fca.1.insert.i.i84.i, %bb.as ], [ %i.jz, %bb.at ] ; 2 uses
  %.fca.1.extract18.i = extractvalue { i64, i8 } %.pn.i85.i, 1
  %i.ka = trunc nuw i8 %.fca.1.extract18.i to i1
  br i1 %i.ka, label %bb.au, label %_ZNK4llvm8TypeSizecvmEv.exit87.i

bb.au:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit86.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.71) #29
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit87.i:                 ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit86.i
  %.fca.0.extract17.i = extractvalue { i64, i8 } %.pn.i85.i, 0
  %i.kb = icmp ugt i64 %i.jv, %.fca.0.extract17.i
  br i1 %i.kb, label %.critedge.i108, label %bb.av

bb.av:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit87.i
  %.sroa.010.0.copyload12.i = load ptr, ptr %i.jc, align 8, !tbaa !426
  %.sroa.714.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %.sroa.714.0.copyload18.i = load i32, ptr %.sroa.714.0..sroa_idx17.i, align 8, !tbaa !98
  %i.kc = add nsw i64 %i.ib, -1
  br label %bb.ax

bb.aw:                                            ; preds = %bb.al, %bb.ak
  %i.kd = icmp ugt i64 %.0.i.i.i62.i, 65535
  %.not57.i = icmp eq i64 %i.ia, 0
  %or.cond47.i = select i1 %i.kd, i1 %.not57.i, i1 false
  br i1 %or.cond47.i, label %bb.ax, label %.critedge.i108

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.aj
  %.1.i = phi i64 [ %i.ib, %bb.aj ], [ %i.kc, %bb.av ], [ %i.ib, %bb.aw ]
  %.sroa.714.0.i = phi i32 [ %.sroa.714.0.copyload16.i, %bb.aj ], [ %.sroa.714.0.copyload18.i, %bb.av ], [ %.sroa.9.0.copyload.i100, %bb.aw ]
  %.sroa.010.0.i = phi ptr [ %.sroa.010.0.copyload11.i, %bb.aj ], [ %.sroa.010.0.copyload12.i, %bb.av ], [ %.sroa.028.0.copyload.i, %bb.aw ]
  %.050.i = phi i32 [ 569, %bb.aj ], [ 538, %bb.av ], [ 569, %bb.aw ]
  %.0.i = phi i64 [ %.0.i.i.i65.i, %bb.aj ], [ %i.ia, %bb.av ], [ 0, %bb.aw ]
  store ptr %.sroa.010.0.i, ptr %39, align 8, !tbaa !426
  %.sroa.714.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i32 %.sroa.714.0.i, ptr %.sroa.714.0..sroa_idx.i, align 8, !tbaa !98
  %i.ke = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef %.0.i, ptr noundef nonnull align 8 dereferenceable(12) %38, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract10.i = extractvalue { ptr, i32 } %i.ke, 0
  %.fca.1.extract11.i = extractvalue { ptr, i32 } %i.ke, 1
  store ptr %.fca.0.extract10.i, ptr %40, align 8
  %.sroa.213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i32 %.fca.1.extract11.i, ptr %.sroa.213.0..sroa_idx.i, align 8
  %i.kf = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef %.1.i, ptr noundef nonnull align 8 dereferenceable(12) %38, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract6.i = extractvalue { ptr, i32 } %i.kf, 0
  %.fca.1.extract7.i = extractvalue { ptr, i32 } %i.kf, 1
  store ptr %.fca.0.extract6.i, ptr %41, align 8
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i32 %.fca.1.extract7.i, ptr %.sroa.29.0..sroa_idx.i, align 8
  %i.kg = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef %.050.i, ptr noundef nonnull align 8 dereferenceable(12) %38, i16 %.sroa.0.0.copyload.i.i102, ptr %.sroa.21.0.copyload.i.i104, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %39, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %40, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %41) #27 ; 2 uses
  %.fca.0.extract.i109 = extractvalue { ptr, i32 } %i.kg, 0
  %.fca.1.extract.i110 = extractvalue { ptr, i32 } %i.kg, 1
  br label %.critedge.i108

.critedge.i108:                                   ; preds = %bb.ax, %bb.aw, %_ZNK4llvm8TypeSizecvmEv.exit87.i, %_ZNK4llvm8TypeSizecvmEv.exit78.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit67.i, %bb.am, %_ZNK4llvm8TypeSizecvmEv.exit.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i, %bb.ae, %_ZN4llvm16isShiftedMask_64Em.exit.i.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i105, %bb.ac
  %.sroa.18.0.i = phi i32 [ 0, %bb.aw ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i105 ], [ 0, %bb.ae ], [ %.fca.1.extract.i110, %bb.ax ], [ 0, %_ZNK4llvm8TypeSizecvmEv.exit.i ], [ 0, %bb.am ], [ 0, %_ZNK4llvm8TypeSizecvmEv.exit87.i ], [ 0, %bb.ac ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i ], [ 0, %_ZNK4llvm8TypeSizecvmEv.exit78.i ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit67.i ], [ 0, %_ZN4llvm16isShiftedMask_64Em.exit.i.i ]
  %.sroa.033.0.i = phi ptr [ null, %bb.aw ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i105 ], [ null, %bb.ae ], [ %.fca.0.extract.i109, %bb.ax ], [ null, %_ZNK4llvm8TypeSizecvmEv.exit.i ], [ null, %bb.am ], [ null, %_ZNK4llvm8TypeSizecvmEv.exit87.i ], [ null, %bb.ac ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i ], [ null, %_ZNK4llvm8TypeSizecvmEv.exit78.i ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit67.i ], [ null, %_ZN4llvm16isShiftedMask_64Em.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  br label %_ZL17performANDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

_ZL17performANDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit: ; preds = %bb.ab, %_ZNK4llvm13MipsSubtarget16hasExtractInsertEv.exit.i, %.critedge.i108
  %.sroa.18.1.i96 = phi i32 [ %.sroa.18.0.i, %.critedge.i108 ], [ 0, %bb.ab ], [ 0, %_ZNK4llvm13MipsSubtarget16hasExtractInsertEv.exit.i ]
  %.sroa.033.1.i = phi ptr [ %.sroa.033.0.i, %.critedge.i108 ], [ null, %bb.ab ], [ null, %_ZNK4llvm13MipsSubtarget16hasExtractInsertEv.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39)
  call void @llvm.lifetime.end.p0(ptr nonnull %40)
  call void @llvm.lifetime.end.p0(ptr nonnull %41)
  br label %_ZL20performDivRemCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.ay:                                            ; preds = %bb.a
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !89, !nonnull !51, !align !90 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val65 = load i32, ptr %i.kj, align 8, !tbaa !1110
  %i.kk = getelementptr i8, ptr %i.ki, i64 344
  %.val66 = load i32, ptr %i.kk, align 8          ; 2 uses
  %i.kl = getelementptr i8, ptr %i.ki, i64 375
  %.val67 = load i8, ptr %i.kl, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  %i.km = icmp slt i32 %.val65, 2
  %i.kn = trunc nuw i8 %.val67 to i1
  %or.cond131.i = select i1 %i.km, i1 true, i1 %i.kn
  br i1 %or.cond131.i, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit, label %_ZNK4llvm13MipsSubtarget16hasExtractInsertEv.exit.i115

_ZNK4llvm13MipsSubtarget16hasExtractInsertEv.exit.i115: ; preds = %bb.ay
  %i.ko = and i32 %.val66, -4
  %or.cond.i.i.i116 = icmp eq i32 %i.ko, 4
  %i.kp = icmp sgt i32 %.val66, 12                ; 2 uses
  %spec.select.i.i.i117 = or i1 %i.kp, %or.cond.i.i.i116
  br i1 %spec.select.i.i.i117, label %bb.az, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.az:                                            ; preds = %_ZNK4llvm13MipsSubtarget16hasExtractInsertEv.exit.i115
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !425 ; 3 uses
  %.sroa.072.0.copyload.i = load ptr, ptr %i.kr, align 8, !tbaa !426 ; 5 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 40
  %.sroa.056.0.copyload.i = load ptr, ptr %i.ks, align 8, !tbaa !426 ; 11 uses
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kr, i64 48
  %i.kt = load i64, ptr %.sroa.18.0..sroa_idx.i, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.072.0.copyload.i, i64 24
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !423 ; 2 uses
  %i.kw = icmp eq i32 %i.kv, 193                  ; 2 uses
  br i1 %i.kw, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.056.0.copyload.i, i64 24
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !423 ; 3 uses
  %i.kz = icmp eq i32 %i.ky, 198
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.072.0.copyload.i, i64 40 ; 3 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !425 ; 2 uses
  br i1 %i.kz, label %bb.be, label %bb.bh

bb.bb:                                            ; preds = %bb.az
  %i.lc = icmp eq i32 %i.kv, 198
  br i1 %i.lc, label %bb.bc, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.bc:                                            ; preds = %bb.bb
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.056.0.copyload.i, i64 24
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !423
  %i.lf = icmp eq i32 %i.le, 193
  br i1 %i.lf, label %bb.bd, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.bd:                                            ; preds = %bb.bc
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.056.0.copyload.i, i64 40
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !425
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ba
  %.sink.i = phi ptr [ %i.lh, %bb.bd ], [ %i.lb, %bb.ba ] ; 2 uses
  %.sroa.072.0.copyload.sink.i = phi ptr [ %.sroa.072.0.copyload.i, %bb.bd ], [ %.sroa.056.0.copyload.i, %bb.ba ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %.sink.i, i64 16, i1 false)
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.072.0.copyload.sink.i, i64 40
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !425
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) %i.lj, i64 16, i1 false)
  %i.lk = getelementptr inbounds nuw i8, ptr %.sink.i, i64 40
  %.sroa.032.0.copyload.i = load ptr, ptr %i.lk, align 8, !tbaa !426 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.032.0.copyload.i, i64 24
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !423
  switch i32 %i.lm, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i120
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i120
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i120: ; preds = %bb.be, %bb.be
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.032.0.copyload.i, i64 88
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !435 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 24 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 32
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !436
  %i.ls = icmp ult i32 %i.lr, 65
  %i.lt = load ptr, ptr %i.lp, align 8
  %spec.select.i.i.i.i121 = select i1 %i.ls, ptr %i.lp, ptr %i.lt
  %.0.i.i.i131.i = load i64, ptr %spec.select.i.i.i.i121, align 8, !tbaa !305 ; 5 uses
  %.not.i.i.i122 = icmp eq i64 %.0.i.i.i131.i, 0
  br i1 %.not.i.i.i122, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit, label %_ZN4llvm16isShiftedMask_64Em.exit.i.i123

_ZN4llvm16isShiftedMask_64Em.exit.i.i123:         ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i120
  %i.lu = add i64 %.0.i.i.i131.i, -1
  %i.lv = or i64 %i.lu, %.0.i.i.i131.i            ; 2 uses
  %i.lw = add i64 %i.lv, 1
  %i.lx = and i64 %i.lw, %i.lv
  %i.ly = icmp eq i64 %i.lx, 0
  br i1 %i.ly, label %bb.bf, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.bf:                                            ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.i.i123
  %.sroa.056.0.copyload..sroa.072.0.copyload.i = select i1 %i.kw, ptr %.sroa.056.0.copyload.i, ptr %.sroa.072.0.copyload.i
  %.pn134.in.i = getelementptr inbounds nuw i8, ptr %.sroa.056.0.copyload..sroa.072.0.copyload.i, i64 40
  %.pn134.i = load ptr, ptr %.pn134.in.i, align 8, !tbaa !425
  %i.lz = getelementptr inbounds nuw i8, ptr %.pn134.i, i64 40
  %.sroa.030.0.copyload.i = load ptr, ptr %i.lz, align 8, !tbaa !426 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.030.0.copyload.i, i64 24
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !423
  switch i32 %i.mb, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit133.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit133.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit133.i: ; preds = %bb.bf, %bb.bf
  %i.mc = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.0.i.i.i131.i) ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.030.0.copyload.i, i64 88
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !435 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 24 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 32
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !436
  %i.mi = icmp ult i32 %i.mh, 65
  %i.mj = load ptr, ptr %i.mf, align 8
  %spec.select.i.i.i134.i = select i1 %i.mi, ptr %i.mf, ptr %i.mj
  %.0.i.i.i135.i = load i64, ptr %spec.select.i.i.i134.i, align 8, !tbaa !305
  %.not128.i = trunc i64 %.0.i.i.i131.i to i1
  %.not129.i = icmp eq i64 %.0.i.i.i135.i, %i.mc
  %or.cond.i124 = select i1 %.not128.i, i1 %.not129.i, i1 false
  br i1 %or.cond.i124, label %bb.bg, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.bg:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit133.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !294
  store i64 %i.ml, ptr %22, align 8, !tbaa !294
  %i.mm = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !295
  store i32 %i.mo, ptr %i.mm, align 8, !tbaa !297
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !424 ; 2 uses
  %.sroa.0.0.copyload.i.i125 = load i16, ptr %i.mq, align 8, !tbaa !57 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i126 = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %.sroa.21.0.copyload.i.i127 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i126, align 8, !tbaa !97 ; 2 uses
  %.not.i.i136.i = icmp eq i16 %.sroa.0.0.copyload.i.i125, 8
  %i.mr = icmp eq ptr %.sroa.21.0.copyload.i.i127, null
  %.not4.i.i128 = select i1 %.not.i.i136.i, i1 %i.mr, i1 false
  %i.ms = select i1 %.not4.i.i128, i64 64, i64 32
  %i.mt = sub nsw i64 %i.ms, %i.mc
  %i.mu = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef %i.mc, ptr noundef nonnull align 8 dereferenceable(12) %22, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract66.i = extractvalue { ptr, i32 } %i.mu, 0
  %.fca.1.extract67.i = extractvalue { ptr, i32 } %i.mu, 1
  store ptr %.fca.0.extract66.i, ptr %23, align 8
  %.sroa.269.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i32 %.fca.1.extract67.i, ptr %.sroa.269.0..sroa_idx.i, align 8
  %i.mv = and i64 %i.mt, 4294967295
  %i.mw = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef %i.mv, ptr noundef nonnull align 8 dereferenceable(12) %22, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract62.i = extractvalue { ptr, i32 } %i.mw, 0
  %.fca.1.extract63.i = extractvalue { ptr, i32 } %i.mw, 1
  store ptr %.fca.0.extract62.i, ptr %24, align 8
  %.sroa.265.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i32 %.fca.1.extract63.i, ptr %.sroa.265.0..sroa_idx.i, align 8
  %i.mx = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 585, ptr noundef nonnull align 8 dereferenceable(12) %22, i16 %.sroa.0.0.copyload.i.i125, ptr %.sroa.21.0.copyload.i.i127, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %21, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %23, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %24, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %20) #27 ; 2 uses
  %.fca.0.extract58.i = extractvalue { ptr, i32 } %i.mx, 0
  %.fca.1.extract59.i = extractvalue { ptr, i32 } %i.mx, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.bh:                                            ; preds = %bb.ba
  %i.my = getelementptr inbounds nuw i8, ptr %i.lb, i64 40
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !431 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  %i.nb = load i32, ptr %i.na, align 8, !tbaa !423
  switch i32 %i.nb, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i129
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i129
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i129: ; preds = %bb.bh, %bb.bh
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mz, i64 88
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !435 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 24 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 32
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !436 ; 7 uses
  %i.nh = icmp ult i32 %i.ng, 65                  ; 3 uses
  br i1 %i.nh, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i129
  %i.ni = load i64, ptr %i.ne, align 8            ; 4 uses
  %i.nj = icmp eq i32 %i.ng, 0
  %i.nk = sub nuw nsw i32 64, %i.ng
  %i.nl = zext nneg i32 %i.nk to i64              ; 2 uses
  %i.nm = shl i64 %i.ni, %i.nl
  %i.nn = ashr exact i64 %i.nm, %i.nl
  %i.no = inttoptr i64 %i.ni to ptr               ; 2 uses
  br i1 %i.nj, label %_ZN4llvm16isShiftedMask_64Em.exit.i140.i, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i130

bb.bj:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i129
  %i.np = load ptr, ptr %i.ne, align 8            ; 3 uses
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !441
  %i.nr = ptrtoint ptr %i.np to i64
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i130

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i130: ; preds = %bb.bj, %bb.bi
  %i.ns = phi i64 [ %i.ni, %bb.bi ], [ %i.nr, %bb.bj ]
  %i.nt = phi ptr [ %i.no, %bb.bi ], [ %i.np, %bb.bj ]
  %.0.i.i.i138.i = phi i64 [ %i.nn, %bb.bi ], [ %i.nq, %bb.bj ] ; 3 uses
  %i.nu = xor i64 %.0.i.i.i138.i, -1
  %.not.i.i139.i = icmp eq i64 %.0.i.i.i138.i, -1
  br i1 %.not.i.i139.i, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit, label %_ZN4llvm16isShiftedMask_64Em.exit.i140.i

_ZN4llvm16isShiftedMask_64Em.exit.i140.i:         ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i130, %bb.bi
  %i.nv = phi i64 [ %i.nu, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i130 ], [ -1, %bb.bi ] ; 3 uses
  %.0.i.i.i138147.i = phi i64 [ %.0.i.i.i138.i, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i130 ], [ 0, %bb.bi ]
  %i.nw = phi ptr [ %i.nt, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i130 ], [ %i.no, %bb.bi ] ; 2 uses
  %i.nx = phi i64 [ %i.ns, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i130 ], [ %i.ni, %bb.bi ] ; 2 uses
  %i.ny = sub nuw i64 -2, %.0.i.i.i138147.i
  %i.nz = or i64 %i.ny, %i.nv                     ; 2 uses
  %i.oa = add i64 %i.nz, 1
  %i.ob = and i64 %i.oa, %i.nz
  %i.oc = icmp eq i64 %i.ob, 0
  br i1 %i.oc, label %bb.bk, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.bk:                                            ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.i140.i
  %i.od = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.nv, i1 true) ; 8 uses
  %i.oe = trunc nuw nsw i64 %i.od to i32          ; 2 uses
  %i.of = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.nv) ; 7 uses
  %i.og = trunc nuw nsw i64 %i.of to i32
  %i.oh = icmp eq i32 %i.ky, 193                  ; 3 uses
  br i1 %i.oh, label %bb.bl, label %bb.bu

bb.bl:                                            ; preds = %bb.bk
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.056.0.copyload.i, i64 40
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !425 ; 2 uses
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !431 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 24
  %i.om = load i32, ptr %i.ol, align 8, !tbaa !423
  %i.on = icmp eq i32 %i.om, 198
  br i1 %i.on, label %bb.bm, label %bb.bu

bb.bm:                                            ; preds = %bb.bl
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oj, i64 40
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !431 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 24
  %i.or = load i32, ptr %i.oq, align 8, !tbaa !423
  switch i32 %i.or, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit143.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit143.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit143.i: ; preds = %bb.bm, %bb.bm
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 88
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !435 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 24 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ot, i64 32
  %i.ow = load i32, ptr %i.ov, align 8, !tbaa !436
  %i.ox = icmp ult i32 %i.ow, 65
  %i.oy = load ptr, ptr %i.ou, align 8
  %spec.select.i.i.i144.i = select i1 %i.ox, ptr %i.ou, ptr %i.oy
  %.0.i.i.i145.i = load i64, ptr %spec.select.i.i.i144.i, align 8, !tbaa !305 ; 5 uses
  %.not.i.i146.i = icmp eq i64 %.0.i.i.i145.i, 0
  br i1 %.not.i.i146.i, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit, label %_ZN4llvm16isShiftedMask_64Em.exit.i147.i

_ZN4llvm16isShiftedMask_64Em.exit.i147.i:         ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit143.i
  %i.oz = add i64 %.0.i.i.i145.i, -1
  %i.pa = or i64 %i.oz, %.0.i.i.i145.i            ; 2 uses
  %i.pb = add i64 %i.pa, 1
  %i.pc = and i64 %i.pb, %i.pa
  %i.pd = icmp eq i64 %i.pc, 0
  br i1 %i.pd, label %bb.bn, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.bn:                                            ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.i147.i
  %i.pe = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.i.i.i145.i, i1 true)
  %i.pf = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.0.i.i.i145.i)
  %.not122.i = icmp eq i64 %i.od, %i.pe
  %.not123.i = icmp eq i64 %i.of, %i.pf
  %or.cond132.i = select i1 %.not122.i, i1 %.not123.i, i1 false
  br i1 %or.cond132.i, label %bb.bo, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.bo:                                            ; preds = %bb.bn
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ok, i64 40
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !425 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 40
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !431 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 24
  %i.pl = load i32, ptr %i.pk, align 8, !tbaa !423
  switch i32 %i.pl, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit150.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit150.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit150.i: ; preds = %bb.bo, %bb.bo
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pj, i64 88
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !435 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 24 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 32
  %i.pq = load i32, ptr %i.pp, align 8, !tbaa !436
  %i.pr = icmp ult i32 %i.pq, 65
  %i.ps = load ptr, ptr %i.po, align 8
  %spec.select.i.i.i151.i = select i1 %i.pr, ptr %i.po, ptr %i.ps
  %.0.i.i.i152.i = load i64, ptr %spec.select.i.i.i151.i, align 8, !tbaa !305
  %i.pt = trunc i64 %.0.i.i.i152.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !424 ; 2 uses
  %.sroa.0.0.copyload.i153.i = load i16, ptr %i.pv, align 8, !tbaa !57 ; 4 uses
  %.sroa.21.0..sroa_idx.i154.i = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %.sroa.21.0.copyload.i155.i = load ptr, ptr %.sroa.21.0..sroa_idx.i154.i, align 8, !tbaa !97 ; 2 uses
  store i16 %.sroa.0.0.copyload.i153.i, ptr %25, align 8
  %i.pw = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %.sroa.21.0.copyload.i155.i, ptr %i.pw, align 8
  %.not125.i = icmp eq i32 %i.oe, %i.pt
  br i1 %.not125.i, label %bb.bp, label %.critedge.i137

bb.bp:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit150.i
  %i.px = add nuw nsw i64 %i.od, %i.of
  %.not.i.i138 = icmp eq i16 %.sroa.0.0.copyload.i153.i, 0
  br i1 %.not.i.i138, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.py = zext i16 %.sroa.0.0.copyload.i153.i to i64
  %i.pz = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.py ; 2 uses
  %i.qa = getelementptr i8, ptr %i.pz, i64 -16
  %.sroa.0.0.copyload.i.i.i139 = load i64, ptr %i.qa, align 16
  %.sroa.2.0..sroa_idx.i.i.i140 = getelementptr i8, ptr %i.pz, i64 -8
  %.sroa.2.0.copyload.i.i.i141 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i140, align 8
  %.fca.0.insert.i.i.i142 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i.i139, 0
  %.fca.1.insert.i.i.i143 = insertvalue { i64, i8 } %.fca.0.insert.i.i.i142, i8 %.sroa.2.0.copyload.i.i.i141, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i144

bb.br:                                            ; preds = %bb.bp
  %i.qb = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %25) #28
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i144

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i144:         ; preds = %bb.br, %bb.bq
  %.pn.i.i145 = phi { i64, i8 } [ %.fca.1.insert.i.i.i143, %bb.bq ], [ %i.qb, %bb.br ] ; 2 uses
  %.fca.1.extract54.i = extractvalue { i64, i8 } %.pn.i.i145, 1
  %i.qc = trunc nuw i8 %.fca.1.extract54.i to i1
  br i1 %i.qc, label %bb.bs, label %_ZNK4llvm8TypeSizecvmEv.exit.i146

bb.bs:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i144
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.71) #29
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i146:                ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i144
  %.fca.0.extract53.i = extractvalue { i64, i8 } %.pn.i.i145, 0
  %i.qd = icmp ult i64 %.fca.0.extract53.i, %i.px
  br i1 %i.qd, label %.critedge.i137, label %bb.bt

bb.bt:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i146
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.qf = load i64, ptr %i.qe, align 8, !tbaa !294
  store i64 %i.qf, ptr %26, align 8, !tbaa !294
  %i.qg = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !295
  store i32 %i.qi, ptr %i.qg, align 8, !tbaa !297
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(16) %i.ph, i64 16, i1 false), !tbaa.struct !440
  %i.qj = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef %i.od, ptr noundef nonnull align 8 dereferenceable(12) %26, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract46.i = extractvalue { ptr, i32 } %i.qj, 0
  %.fca.1.extract47.i = extractvalue { ptr, i32 } %i.qj, 1
  store ptr %.fca.0.extract46.i, ptr %28, align 8
  %.sroa.249.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i32 %.fca.1.extract47.i, ptr %.sroa.249.0..sroa_idx.i, align 8
  %i.qk = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef %i.of, ptr noundef nonnull align 8 dereferenceable(12) %26, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract42.i = extractvalue { ptr, i32 } %i.qk, 0
  %.fca.1.extract43.i = extractvalue { ptr, i32 } %i.qk, 1
  store ptr %.fca.0.extract42.i, ptr %29, align 8
  %.sroa.245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i32 %.fca.1.extract43.i, ptr %.sroa.245.0..sroa_idx.i, align 8
  %i.ql = load ptr, ptr %i.la, align 8, !tbaa !425
  %i.qm = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 585, ptr noundef nonnull align 8 dereferenceable(12) %26, i16 %.sroa.0.0.copyload.i153.i, ptr %.sroa.21.0.copyload.i155.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %27, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %28, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %29, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ql) #27 ; 2 uses
  %.fca.0.extract38.i = extractvalue { ptr, i32 } %i.qm, 0
  %.fca.1.extract39.i = extractvalue { ptr, i32 } %i.qm, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  br label %.critedge.i137

.critedge.i137:                                   ; preds = %bb.bt, %_ZNK4llvm8TypeSizecvmEv.exit.i146, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit150.i
  %.sroa.32.2.i = phi i32 [ %.fca.1.extract39.i, %bb.bt ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit150.i ], [ 0, %_ZNK4llvm8TypeSizecvmEv.exit.i146 ]
  %.sroa.086.2.i = phi ptr [ %.fca.0.extract38.i, %bb.bt ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit150.i ], [ null, %_ZNK4llvm8TypeSizecvmEv.exit.i146 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  br label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.bu:                                            ; preds = %bb.bl, %bb.bk
  %i.qn = sub nuw nsw i64 64, %i.of
  %i.qo = lshr i64 -1, %i.qn
  %i.qp = shl i64 %i.qo, %i.od
  br i1 %i.nh, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.qq = icmp eq i32 %i.ng, 0
  %i.qr = sub nuw nsw i32 64, %i.ng
  %i.qs = zext nneg i32 %i.qr to i64              ; 2 uses
  %i.qt = shl i64 %i.nx, %i.qs
  %i.qu = ashr exact i64 %i.qt, %i.qs
  %.0.i.i.i.i159.i = select i1 %i.qq, i64 0, i64 %i.qu
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit160.i

bb.bw:                                            ; preds = %bb.bu
  %i.qv = load i64, ptr %i.nw, align 8, !tbaa !441
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit160.i

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit160.i: ; preds = %bb.bw, %bb.bv
  %.0.i.i.i158.i = phi i64 [ %.0.i.i.i.i159.i, %bb.bv ], [ %i.qv, %bb.bw ]
  %i.qw = xor i64 %.0.i.i.i158.i, %i.qp
  %i.qx = icmp eq i64 %i.qw, -1
  br i1 %i.qx, label %bb.bx, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.bx:                                            ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit160.i
  %66 = add nuw nsw i32 %i.og, %i.oe              ; 2 uses
  %67 = icmp samesign ult i32 %66, 65
  %i.qy = icmp samesign ult i32 %66, 33
  %or.cond133.i = select i1 %i.kp, i1 true, i1 %i.qy
  %or.cond133.i.a = select i1 %67, i1 %or.cond133.i, i1 false
  br i1 %or.cond133.i.a, label %bb.by, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.by:                                            ; preds = %bb.bx
  br i1 %i.oh, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.qz = getelementptr inbounds nuw i8, ptr %.sroa.056.0.copyload.i, i64 40
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !425
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 40
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !431 ; 3 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 24
  %i.re = load i32, ptr %i.rd, align 8, !tbaa !423
  switch i32 %i.re, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit162.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit162.i
  ]

bb.ca:                                            ; preds = %bb.by
  switch i32 %i.ky, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit162.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit162.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit162.i: ; preds = %bb.ca, %bb.ca, %bb.bz, %bb.bz
  %.0.i131 = phi ptr [ %i.rc, %bb.bz ], [ %i.rc, %bb.bz ], [ %.sroa.056.0.copyload.i, %bb.ca ], [ %.sroa.056.0.copyload.i, %bb.ca ]
  br i1 %i.nh, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit162.i
  %i.rf = icmp eq i32 %i.ng, 0
  %i.rg = sub nuw nsw i32 64, %i.ng
  %i.rh = zext nneg i32 %i.rg to i64              ; 2 uses
  %i.ri = shl i64 %i.nx, %i.rh
  %i.rj = ashr exact i64 %i.ri, %i.rh
  %.0.i.i.i.i166.i = select i1 %i.rf, i64 0, i64 %i.rj
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit167.i

bb.cc:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit162.i
  %i.rk = load i64, ptr %i.nw, align 8, !tbaa !441
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit167.i

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit167.i: ; preds = %bb.cc, %bb.cb
  %.0.i.i.i165.i = phi i64 [ %.0.i.i.i.i166.i, %bb.cb ], [ %i.rk, %bb.cc ]
  %i.rl = getelementptr inbounds nuw i8, ptr %.0.i131, i64 88
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !435 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 24 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rm, i64 32
  %i.rp = load i32, ptr %i.ro, align 8, !tbaa !436 ; 5 uses
  %i.rq = icmp ult i32 %i.rp, 65                  ; 2 uses
  br i1 %i.rq, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit167.i
  %i.rr = load i64, ptr %i.rn, align 8            ; 3 uses
  %i.rs = icmp eq i32 %i.rp, 0
  %i.rt = sub nuw nsw i32 64, %i.rp
  %i.ru = zext nneg i32 %i.rt to i64              ; 2 uses
  %i.rv = shl i64 %i.rr, %i.ru
  %i.rw = ashr exact i64 %i.rv, %i.ru
  %.0.i.i.i.i169.i = select i1 %i.rs, i64 0, i64 %i.rw
  %i.rx = inttoptr i64 %i.rr to ptr
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit170.i

bb.ce:                                            ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit167.i
  %i.ry = load ptr, ptr %i.rn, align 8            ; 3 uses
  %i.rz = load i64, ptr %i.ry, align 8, !tbaa !441
  %i.sa = ptrtoint ptr %i.ry to i64
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit170.i

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit170.i: ; preds = %bb.ce, %bb.cd
  %i.sb = phi i64 [ %i.rr, %bb.cd ], [ %i.sa, %bb.ce ]
  %i.sc = phi ptr [ %i.rx, %bb.cd ], [ %i.ry, %bb.ce ]
  %.0.i.i.i168.i = phi i64 [ %.0.i.i.i.i169.i, %bb.cd ], [ %i.rz, %bb.ce ]
  %i.sd = and i64 %.0.i.i.i168.i, %.0.i.i.i165.i
  %.not120.i = icmp eq i64 %i.sd, 0
  br i1 %.not120.i, label %bb.cf, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.cf:                                            ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit170.i
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #27
  %i.se = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.sf = load i64, ptr %i.se, align 8, !tbaa !294
  store i64 %i.sf, ptr %30, align 8, !tbaa !294
  %i.sg = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.sh = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !295
  store i32 %i.si, ptr %i.sg, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #27
  %i.sj = getelementptr inbounds nuw i8, ptr %.sroa.072.0.copyload.i, i64 48
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !424 ; 2 uses
  %.sroa.0.0.copyload.i171.i = load i16, ptr %i.sk, align 8, !tbaa !57 ; 4 uses
  %.sroa.21.0..sroa_idx.i172.i = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %.sroa.21.0.copyload.i173.i = load ptr, ptr %.sroa.21.0..sroa_idx.i172.i, align 8, !tbaa !97 ; 2 uses
  store i16 %.sroa.0.0.copyload.i171.i, ptr %31, align 8
  %i.sl = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %.sroa.21.0.copyload.i173.i, ptr %i.sl, align 8
  br i1 %i.oh, label %bb.cj, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.sm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !424 ; 2 uses
  %.sroa.0.0.copyload.i181.i = load i16, ptr %i.sn, align 8, !tbaa !57
  %.sroa.21.0..sroa_idx.i182.i = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %.sroa.21.0.copyload.i183.i = load ptr, ptr %.sroa.21.0..sroa_idx.i182.i, align 8, !tbaa !97
  br i1 %i.rq, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.so = icmp eq i32 %i.rp, 0
  %i.sp = sub nuw nsw i32 64, %i.rp
  %i.sq = zext nneg i32 %i.sp to i64              ; 2 uses
  %i.sr = shl i64 %i.sb, %i.sq
  %i.ss = ashr exact i64 %i.sr, %i.sq
  %.0.i.i.i.i187.i = select i1 %i.so, i64 0, i64 %i.ss
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit188.i

bb.ci:                                            ; preds = %bb.cg
  %i.st = load i64, ptr %i.sc, align 8, !tbaa !441
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit188.i

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit188.i: ; preds = %bb.ci, %bb.ch
  %.0.i.i.i186.i = phi i64 [ %.0.i.i.i.i187.i, %bb.ch ], [ %i.st, %bb.ci ]
  %i.su = ashr i64 %.0.i.i.i186.i, %i.od
  %i.sv = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef %i.su, ptr noundef nonnull align 8 dereferenceable(12) %30, i16 %.sroa.0.0.copyload.i171.i, ptr %.sroa.21.0.copyload.i173.i, i1 noundef zeroext false, i1 noundef zeroext false) #27
  br label %bb.ck

bb.cj:                                            ; preds = %bb.cf
  %i.sw = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef %i.od, ptr noundef nonnull align 8 dereferenceable(12) %30, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract29.i = extractvalue { ptr, i32 } %i.sw, 0
  %.fca.1.extract30.i = extractvalue { ptr, i32 } %i.sw, 1
  %i.sx = getelementptr inbounds nuw i8, ptr %.sroa.056.0.copyload.i, i64 48
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !424 ; 2 uses
  %.sroa.0.0.copyload.i176.i = load i16, ptr %i.sy, align 8, !tbaa !57
  %.sroa.21.0..sroa_idx.i177.i = getelementptr inbounds nuw i8, ptr %i.sy, i64 8
  %.sroa.21.0.copyload.i178.i = load ptr, ptr %.sroa.21.0..sroa_idx.i177.i, align 8, !tbaa !97
  store ptr %.sroa.056.0.copyload.i, ptr %32, align 8, !tbaa !426
  %.sroa.18.0..sroa_idx71.i = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 %i.kt, ptr %.sroa.18.0..sroa_idx71.i, align 8
  store ptr %.fca.0.extract29.i, ptr %33, align 8, !tbaa !426
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i32 %.fca.1.extract30.i, ptr %.sroa.58.0..sroa_idx.i, align 8, !tbaa !98
  %i.sz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 200, ptr noundef nonnull align 8 dereferenceable(12) %30, i16 %.sroa.0.0.copyload.i176.i, ptr %.sroa.21.0.copyload.i178.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %32, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %33) #27
  %i.ta = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !424 ; 2 uses
  %.sroa.0.0.copyload.i181120.i = load i16, ptr %i.tb, align 8, !tbaa !57
  %.sroa.21.0..sroa_idx.i182121.i = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %.sroa.21.0.copyload.i183122.i = load ptr, ptr %.sroa.21.0..sroa_idx.i182121.i, align 8, !tbaa !97
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit188.i
  %.pn.i = phi { ptr, i32 } [ %i.sz, %bb.cj ], [ %i.sv, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit188.i ] ; 2 uses
  %.sroa.21.0.copyload.i183129.i = phi ptr [ %.sroa.21.0.copyload.i183122.i, %bb.cj ], [ %.sroa.21.0.copyload.i183.i, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit188.i ]
  %.sroa.0.0.copyload.i181127.i = phi i16 [ %.sroa.0.0.copyload.i181120.i, %bb.cj ], [ %.sroa.0.0.copyload.i181.i, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit188.i ]
  %.fca.1.extract23.sink.i = extractvalue { ptr, i32 } %.pn.i, 1
  %.fca.0.extract22.sink.i = extractvalue { ptr, i32 } %.pn.i, 0
  store ptr %.fca.0.extract22.sink.i, ptr %34, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i32 %.fca.1.extract23.sink.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.tc = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef %i.od, ptr noundef nonnull align 8 dereferenceable(12) %30, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract9.i = extractvalue { ptr, i32 } %i.tc, 0
  %.fca.1.extract10.i = extractvalue { ptr, i32 } %i.tc, 1
  store ptr %.fca.0.extract9.i, ptr %35, align 8
  %.sroa.212.0..sroa_idx.i132 = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i32 %.fca.1.extract10.i, ptr %.sroa.212.0..sroa_idx.i132, align 8
  %.not.i189.i = icmp eq i16 %.sroa.0.0.copyload.i171.i, 0
  br i1 %.not.i189.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.td = zext i16 %.sroa.0.0.copyload.i171.i to i64
  %i.te = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.td ; 2 uses
  %i.tf = getelementptr i8, ptr %i.te, i64 -16
  %.sroa.0.0.copyload.i.i190.i = load i64, ptr %i.tf, align 16
  %.sroa.2.0..sroa_idx.i.i191.i = getelementptr i8, ptr %i.te, i64 -8
  %.sroa.2.0.copyload.i.i192.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i191.i, align 8
  %.fca.0.insert.i.i193.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i190.i, 0
  %.fca.1.insert.i.i194.i = insertvalue { i64, i8 } %.fca.0.insert.i.i193.i, i8 %.sroa.2.0.copyload.i.i192.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit196.i

bb.cm:                                            ; preds = %bb.ck
  %i.tg = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %31) #28
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit196.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit196.i:         ; preds = %bb.cm, %bb.cl
  %.pn.i195.i = phi { i64, i8 } [ %.fca.1.insert.i.i194.i, %bb.cl ], [ %i.tg, %bb.cm ] ; 2 uses
  %.fca.1.extract6.i133 = extractvalue { i64, i8 } %.pn.i195.i, 1
  %i.th = trunc nuw i8 %.fca.1.extract6.i133 to i1
  br i1 %i.th, label %bb.cn, label %_ZNK4llvm8TypeSizecvmEv.exit197.i

bb.cn:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit196.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.71) #29
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit197.i:                ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit196.i
  %.fca.0.extract5.i134 = extractvalue { i64, i8 } %.pn.i195.i, 0
  %i.ti = icmp ult i64 %.fca.0.extract5.i134, 64
  %i.tj = and i64 %i.of, 31
  %i.tk = select i1 %i.ti, i64 %i.tj, i64 %i.of
  %i.tl = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef %i.tk, ptr noundef nonnull align 8 dereferenceable(12) %30, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract1.i = extractvalue { ptr, i32 } %i.tl, 0
  %.fca.1.extract2.i = extractvalue { ptr, i32 } %i.tl, 1
  store ptr %.fca.0.extract1.i, ptr %36, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i32 %.fca.1.extract2.i, ptr %.sroa.24.0..sroa_idx.i, align 8
  %i.tm = load ptr, ptr %i.la, align 8, !tbaa !425
  %i.tn = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 585, ptr noundef nonnull align 8 dereferenceable(12) %30, i16 %.sroa.0.0.copyload.i181127.i, ptr %.sroa.21.0.copyload.i183129.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %34, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %35, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %36, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.tm) #27 ; 2 uses
  %.fca.0.extract.i135 = extractvalue { ptr, i32 } %i.tn, 0
  %.fca.1.extract.i136 = extractvalue { ptr, i32 } %i.tn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27
  br label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit: ; preds = %bb.ay, %_ZNK4llvm13MipsSubtarget16hasExtractInsertEv.exit.i115, %bb.bb, %bb.bc, %bb.be, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i120, %_ZN4llvm16isShiftedMask_64Em.exit.i.i123, %bb.bf, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit133.i, %bb.bg, %bb.bh, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i130, %_ZN4llvm16isShiftedMask_64Em.exit.i140.i, %bb.bm, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit143.i, %_ZN4llvm16isShiftedMask_64Em.exit.i147.i, %bb.bn, %bb.bo, %.critedge.i137, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit160.i, %bb.bx, %bb.bz, %bb.ca, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit170.i, %_ZNK4llvm8TypeSizecvmEv.exit197.i
  %.sroa.32.5.i = phi i32 [ 0, %_ZNK4llvm13MipsSubtarget16hasExtractInsertEv.exit.i115 ], [ 0, %bb.ay ], [ 0, %bb.bo ], [ 0, %bb.bb ], [ 0, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit160.i ], [ 0, %_ZN4llvm16isShiftedMask_64Em.exit.i147.i ], [ 0, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i130 ], [ 0, %bb.bn ], [ %.fca.1.extract.i136, %_ZNK4llvm8TypeSizecvmEv.exit197.i ], [ 0, %bb.ca ], [ 0, %bb.bz ], [ 0, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit170.i ], [ 0, %bb.bc ], [ 0, %bb.bh ], [ 0, %bb.bm ], [ 0, %bb.bx ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit143.i ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit133.i ], [ 0, %_ZN4llvm16isShiftedMask_64Em.exit.i140.i ], [ %.sroa.32.2.i, %.critedge.i137 ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i120 ], [ 0, %bb.be ], [ 0, %_ZN4llvm16isShiftedMask_64Em.exit.i.i123 ], [ 0, %bb.bf ], [ %.fca.1.extract59.i, %bb.bg ]
  %.sroa.086.5.i = phi ptr [ null, %_ZNK4llvm13MipsSubtarget16hasExtractInsertEv.exit.i115 ], [ null, %bb.ay ], [ null, %bb.bo ], [ null, %bb.bb ], [ null, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit160.i ], [ null, %_ZN4llvm16isShiftedMask_64Em.exit.i147.i ], [ null, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i130 ], [ null, %bb.bn ], [ %.fca.0.extract.i135, %_ZNK4llvm8TypeSizecvmEv.exit197.i ], [ null, %bb.ca ], [ null, %bb.bz ], [ null, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit170.i ], [ null, %bb.bc ], [ null, %bb.bh ], [ null, %bb.bm ], [ null, %bb.bx ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit143.i ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit133.i ], [ null, %_ZN4llvm16isShiftedMask_64Em.exit.i140.i ], [ %.sroa.086.2.i, %.critedge.i137 ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i120 ], [ null, %bb.be ], [ null, %_ZN4llvm16isShiftedMask_64Em.exit.i.i123 ], [ null, %bb.bf ], [ %.fca.0.extract58.i, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  call void @llvm.lifetime.end.p0(ptr nonnull %34)
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  br label %_ZL20performDivRemCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.co:                                            ; preds = %bb.a
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !89, !nonnull !51, !align !90 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val68 = load i32, ptr %i.tq, align 8, !tbaa !1110
  %i.tr = getelementptr i8, ptr %i.tp, i64 344
  %.val69 = load i32, ptr %i.tr, align 8          ; 5 uses
  %i.ts = getelementptr i8, ptr %i.tp, i64 375
  %.val70 = load i8, ptr %i.ts, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  %i.tt = icmp slt i32 %.val68, 2
  br i1 %i.tt, label %bb.cp, label %bb.ct

bb.cp:                                            ; preds = %bb.co
  %i.tu = add i32 %.val69, -3
  %or.cond.i.i = icmp ult i32 %i.tu, 5
  %i.tv = icmp sgt i32 %.val69, 11
  %spec.select.i.i = or i1 %i.tv, %or.cond.i.i
  br i1 %spec.select.i.i, label %bb.cq, label %_ZL17performADDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.cq:                                            ; preds = %bb.cp
  %i.tw = icmp eq i32 %.val69, 7
  %i.tx = icmp samesign ugt i32 %.val69, 15
  %spec.select.i36.i = or i1 %i.tw, %i.tx
  %i.ty = trunc nuw i8 %.val70 to i1
  %or.cond.i159 = select i1 %spec.select.i36.i, i1 true, i1 %i.ty
  br i1 %or.cond.i159, label %_ZL17performADDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.tz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !424 ; 2 uses
  %.sroa.0.0.copyload.i.i160 = load i16, ptr %i.ua, align 8, !tbaa !57
  %.sroa.21.0..sroa_idx.i.i161 = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  %.sroa.21.0.copyload.i.i162 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i161, align 8, !tbaa !97
  %.not.i.i.i163 = icmp eq i16 %.sroa.0.0.copyload.i.i160, 8
  %i.ub = icmp eq ptr %.sroa.21.0.copyload.i.i162, null
  %.not4.i.i164 = select i1 %.not.i.i.i163, i1 %i.ub, i1 false
  br i1 %.not4.i.i164, label %bb.cs, label %_ZL17performADDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.cs:                                            ; preds = %bb.cr
  %i.uc = tail call fastcc { ptr, i32 } @_ZL23performMADD_MSUBCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_13MipsSubtargetE(ptr noundef nonnull readonly %1, ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 %.val69) ; 2 uses
  %.fca.0.extract15.i = extractvalue { ptr, i32 } %i.uc, 0
  %.fca.1.extract16.i = extractvalue { ptr, i32 } %i.uc, 1
  br label %_ZL17performADDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.ct:                                            ; preds = %bb.co
  %i.ud = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !425 ; 5 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 40
  %.sroa.022.0.copyload.i = load ptr, ptr %i.uf, align 8, !tbaa !426 ; 3 uses
  %.sroa.9.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %i.ue, i64 48
  %.sroa.9.sroa.042.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx28.i, align 8, !tbaa !98
  %.sroa.031.0.copyload.i = load ptr, ptr %i.ue, align 8, !tbaa !426 ; 2 uses
  %.sroa.634.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  %.sroa.634.0.copyload.i = load i32, ptr %.sroa.634.0..sroa_idx.i, align 8, !tbaa !98
  %.sroa.739.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ue, i64 12
  %.sroa.739.0.copyload.i = load i32, ptr %.sroa.739.0..sroa_idx.i, align 4
  %i.ug = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload.i, i64 24
  %i.uh = load i32, ptr %i.ug, align 8, !tbaa !423
  %.not.i147 = icmp eq i32 %i.uh, 59              ; 3 uses
  %.sroa.634.0.i = select i1 %.not.i147, i32 %.sroa.634.0.copyload.i, i32 %.sroa.9.sroa.042.0.copyload.i
  %.sroa.031.0.i = select i1 %.not.i147, ptr %.sroa.031.0.copyload.i, ptr %.sroa.022.0.copyload.i
  %.sroa.022.0.i = select i1 %.not.i147, ptr %.sroa.022.0.copyload.i, ptr %.sroa.031.0.copyload.i ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %.sroa.022.0.i, i64 24
  %i.uj = load i32, ptr %i.ui, align 8, !tbaa !423
  %.not32.i = icmp eq i32 %i.uj, 59
  br i1 %.not32.i, label %bb.cu, label %_ZL17performADDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.cu:                                            ; preds = %bb.ct
  %i.uk = getelementptr inbounds nuw i8, ptr %.sroa.022.0.i, i64 40
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !425 ; 6 uses
  %.sroa.0.0.copyload.i151 = load ptr, ptr %i.ul, align 8, !tbaa !426 ; 3 uses
  %.sroa.9.0..sroa_idx.i152 = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %.sroa.9.sroa.0.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i152, align 8, !tbaa !98 ; 2 uses
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ul, i64 12
  %.sroa.9.sroa.6.0.copyload.i = load i32, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx.i, align 4
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 40
  %.sroa.09.0.copyload.i = load ptr, ptr %i.um, align 8, !tbaa !426 ; 3 uses
  %.sroa.6.0..sroa_idx.i153 = getelementptr inbounds nuw i8, ptr %i.ul, i64 48
  %.sroa.6.0.copyload.i154 = load i32, ptr %.sroa.6.0..sroa_idx.i153, align 8, !tbaa !98 ; 2 uses
  %.sroa.7.0..sroa_idx.i155 = getelementptr inbounds nuw i8, ptr %i.ul, i64 52
  %.sroa.7.0.copyload.i156 = load i32, ptr %.sroa.7.0..sroa_idx.i155, align 4
  %i.un = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i151, i64 24
  %i.uo = load i32, ptr %i.un, align 8, !tbaa !423
  %.not33.i = icmp eq i32 %i.uo, 591
  br i1 %.not33.i, label %.thread.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload.i, i64 24
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !423
  %i.up = icmp eq i32 %.pre.i, 591
  br i1 %i.up, label %.thread.i, label %_ZL17performADDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

.thread.i:                                        ; preds = %bb.cv, %bb.cu
  %.sroa.0.062.i = phi ptr [ %.sroa.09.0.copyload.i, %bb.cv ], [ %.sroa.0.0.copyload.i151, %bb.cu ] ; 2 uses
  %.sroa.09.061.i = phi ptr [ %.sroa.0.0.copyload.i151, %bb.cv ], [ %.sroa.09.0.copyload.i, %bb.cu ]
  %.sroa.6.060.i = phi i32 [ %.sroa.9.sroa.0.0.copyload.i, %bb.cv ], [ %.sroa.6.0.copyload.i154, %bb.cu ]
  %.sroa.9.sroa.0.059.i = phi i32 [ %.sroa.6.0.copyload.i154, %bb.cv ], [ %.sroa.9.sroa.0.0.copyload.i, %bb.cu ]
  %i.uq = getelementptr inbounds nuw i8, ptr %.sroa.0.062.i, i64 40
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !425
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !431
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 24
  %i.uu = load i32, ptr %i.ut, align 8, !tbaa !423
  %.not35.i = icmp eq i32 %i.uu, 42
  br i1 %.not35.i, label %bb.cw, label %_ZL17performADDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.cw:                                            ; preds = %.thread.i
  %i.uv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !424 ; 2 uses
  %.sroa.0.0.copyload.i37.i = load i16, ptr %i.uw, align 8, !tbaa !57 ; 2 uses
  %.sroa.21.0..sroa_idx.i38.i = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %.sroa.21.0.copyload.i39.i = load ptr, ptr %.sroa.21.0..sroa_idx.i38.i, align 8, !tbaa !97 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.ux = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !294
  store i64 %i.uy, ptr %15, align 8, !tbaa !294
  %i.uz = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.va = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !295
  store i32 %i.vb, ptr %i.uz, align 8, !tbaa !297
  store ptr %.sroa.031.0.i, ptr %16, align 8, !tbaa !426
  %.sroa.634.0..sroa_idx35.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.sroa.634.0.i, ptr %.sroa.634.0..sroa_idx35.i, align 8, !tbaa !98
  %.sroa.739.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 %.sroa.739.0.copyload.i, ptr %.sroa.739.0..sroa_idx40.i, align 4
  store ptr %.sroa.09.061.i, ptr %17, align 8, !tbaa !426
  %.sroa.6.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.sroa.6.060.i, ptr %.sroa.6.0..sroa_idx12.i, align 8, !tbaa !98
  %.sroa.7.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 %.sroa.7.0.copyload.i156, ptr %.sroa.7.0..sroa_idx16.i, align 4
  %i.vc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0.0.copyload.i37.i, ptr %.sroa.21.0.copyload.i39.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17) #27 ; 2 uses
  %.fca.0.extract4.i = extractvalue { ptr, i32 } %i.vc, 0
  %.fca.1.extract5.i = extractvalue { ptr, i32 } %i.vc, 1
  store ptr %.fca.0.extract4.i, ptr %18, align 8, !tbaa !426
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.fca.1.extract5.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !98
  store ptr %.sroa.0.062.i, ptr %19, align 8, !tbaa !426
  %.sroa.9.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %.sroa.9.sroa.0.059.i, ptr %.sroa.9.0..sroa_idx6.i, align 8, !tbaa !98
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx6.sroa_idx.i = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i32 %.sroa.9.sroa.6.0.copyload.i, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx6.sroa_idx.i, align 4
  %i.vd = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0.0.copyload.i37.i, ptr %.sroa.21.0.copyload.i39.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19) #27 ; 2 uses
  %.fca.0.extract.i157 = extractvalue { ptr, i32 } %i.vd, 0
  %.fca.1.extract.i158 = extractvalue { ptr, i32 } %i.vd, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %_ZL17performADDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

_ZL17performADDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit: ; preds = %bb.cp, %bb.cq, %bb.cr, %bb.cs, %bb.ct, %bb.cv, %.thread.i, %bb.cw
  %.sroa.9.2.i = phi i32 [ 0, %bb.cr ], [ %.fca.1.extract16.i, %bb.cs ], [ 0, %bb.cv ], [ 0, %bb.cq ], [ 0, %bb.cp ], [ 0, %bb.ct ], [ %.fca.1.extract.i158, %bb.cw ], [ 0, %.thread.i ]
  %.sroa.048.2.i = phi ptr [ null, %bb.cr ], [ %.fca.0.extract15.i, %bb.cs ], [ null, %bb.cv ], [ null, %bb.cq ], [ null, %bb.cp ], [ null, %bb.ct ], [ %.fca.0.extract.i157, %bb.cw ], [ null, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  br label %_ZL20performDivRemCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.cx:                                            ; preds = %bb.a
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !89, !nonnull !51, !align !90
  %i.vg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val71 = load i32, ptr %i.vg, align 8, !tbaa !1110
  %i.vh = getelementptr i8, ptr %i.vf, i64 364
  %.val72 = load i8, ptr %i.vh, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.vi = icmp sgt i32 %.val71, 1
  %i.vj = trunc nuw i8 %.val72 to i1
  %or.cond29.i = select i1 %i.vi, i1 %i.vj, i1 false
  br i1 %or.cond29.i, label %bb.cy, label %_ZL17performSHLCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.cy:                                            ; preds = %bb.cx
  %i.vk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !425 ; 2 uses
  %.sroa.016.0.copyload.i = load ptr, ptr %i.vl, align 8, !tbaa !426 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload.i, i64 24
  %i.vn = load i32, ptr %i.vm, align 8, !tbaa !423
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vl, i64 40
  %.sroa.014.0.copyload.i167 = load ptr, ptr %i.vo, align 8, !tbaa !426 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.vp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !424 ; 2 uses
  %.sroa.0.0.copyload.i.i168 = load i16, ptr %i.vq, align 8, !tbaa !57 ; 5 uses
end_hunk_0

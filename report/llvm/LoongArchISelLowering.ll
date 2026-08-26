Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoongArchISelLowering?download=true
inline.NumInlined: 11584
inline.NumDeleted: 2972
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZNK4llvm23LoongArchTargetLowering17PerformDAGCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE:bb.a
  %.sroa.24.0.copyload.i = load ptr, ptr %i.bbj, align 8, !tbaa !487
  store ptr %.fca.0.extract11.i428, ptr %59, align 8, !tbaa !361
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %59, i64 8
  store i32 %.fca.1.extract12.i429, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !147
  %i.bfy = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i32 noundef 593, ptr noundef nonnull align 8 dereferenceable(12) %58, i16 %.sroa.02.0.copyload.i, ptr %.sroa.24.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %59) #28 ; 2 uses
  %.fca.0.extract.i430 = extractvalue { ptr, i32 } %i.bfy, 0
  %.fca.1.extract.i431 = extractvalue { ptr, i32 } %i.bfy, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #28
  br label %_ZL24performSINT_TO_FPCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

_ZL24performSINT_TO_FPCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit: ; preds = %.lr.ph.i.i.i419, %_ZNK4llvm3EVT8isVectorEv.exit.i446, %bb.jz, %bb.ka, %bb.kb, %bb.kd, %bb.ke, %bb.kf, %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.i416, %bb.ki, %bb.kj, %bb.kk, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i425, %bb.km
  %.sroa.18.0.i = phi i32 [ 0, %bb.kd ], [ %.fca.1.extract35.i, %bb.kb ], [ 0, %bb.ka ], [ %.fca.1.extract39.i445, %bb.jz ], [ 0, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i425 ], [ 0, %bb.kf ], [ 0, %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.i416 ], [ %.fca.1.extract.i431, %bb.km ], [ 0, %bb.ke ], [ 0, %_ZNK4llvm3EVT8isVectorEv.exit.i446 ], [ 0, %bb.kj ], [ 0, %bb.kk ], [ 0, %bb.ki ], [ 0, %.lr.ph.i.i.i419 ]
  %.sroa.023.0.i = phi ptr [ null, %bb.kd ], [ %.fca.0.extract34.i, %bb.kb ], [ null, %bb.ka ], [ %.fca.0.extract38.i444, %bb.jz ], [ null, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i425 ], [ null, %bb.kf ], [ null, %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.i416 ], [ %.fca.0.extract.i430, %bb.km ], [ null, %bb.ke ], [ null, %_ZNK4llvm3EVT8isVectorEv.exit.i446 ], [ null, %bb.kj ], [ null, %bb.kk ], [ null, %bb.ki ], [ null, %.lr.ph.i.i.i419 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %55)
  call void @llvm.lifetime.end.p0(ptr nonnull %56)
  call void @llvm.lifetime.end.p0(ptr nonnull %59)
  br label %_ZL22performBITREV_WCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

bb.kn:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #28
  %i.bfz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bga = load ptr, ptr %i.bfz, align 8, !tbaa !486 ; 2 uses
  %.sroa.0.0.copyload.i.i447 = load i16, ptr %i.bga, align 8, !tbaa !31 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i448 = getelementptr inbounds nuw i8, ptr %i.bga, i64 8
  %.sroa.21.0.copyload.i.i449 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i448, align 8, !tbaa !487
  store i16 %.sroa.0.0.copyload.i.i447, ptr %48, align 8
  %i.bgb = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %.sroa.21.0.copyload.i.i449, ptr %i.bgb, align 8
  %.not.i.i450 = icmp eq i16 %.sroa.0.0.copyload.i.i447, 0
  br i1 %.not.i.i450, label %_ZNK4llvm3EVT8isVectorEv.exit.i457, label %.split.i451

.split.i451:                                      ; preds = %bb.kn
  %i.bgc = add i16 %.sroa.0.0.copyload.i.i447, -19
  %spec.select.i.i.i452 = icmp ult i16 %i.bgc, 197
  br i1 %spec.select.i.i.i452, label %bb.ko, label %_ZL24performUINT_TO_FPCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

_ZNK4llvm3EVT8isVectorEv.exit.i457:               ; preds = %bb.kn
  %i.bgd = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %48) #31
  br i1 %i.bgd, label %bb.ko, label %_ZL24performUINT_TO_FPCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

bb.ko:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i457, %.split.i451
  %i.bge = call fastcc { ptr, i32 } @_ZL14ExtendSrcToDstPN4llvm6SDNodeERNS_12SelectionDAGEj(ptr noundef nonnull readonly %1, ptr noundef nonnull align 8 dereferenceable(920) %i.f, i32 noundef 228) ; 2 uses
  %.fca.0.extract.i455 = extractvalue { ptr, i32 } %i.bge, 0
  %.fca.1.extract.i456 = extractvalue { ptr, i32 } %i.bge, 1
  br label %_ZL24performUINT_TO_FPCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

_ZL24performUINT_TO_FPCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit: ; preds = %.split.i451, %_ZNK4llvm3EVT8isVectorEv.exit.i457, %bb.ko
  %.sroa.42.0.i = phi i32 [ %.fca.1.extract.i456, %bb.ko ], [ 0, %.split.i451 ], [ 0, %_ZNK4llvm3EVT8isVectorEv.exit.i457 ]
  %.sroa.01.0.i = phi ptr [ %.fca.0.extract.i455, %bb.ko ], [ null, %.split.i451 ], [ null, %_ZNK4llvm3EVT8isVectorEv.exit.i457 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #28
  br label %_ZL22performBITREV_WCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

bb.kp:                                            ; preds = %bb.a, %bb.a
  %i.bgf = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.bgg = load ptr, ptr %i.bgf, align 8, !tbaa !149, !nonnull !27, !align !150 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %44)
  call void @llvm.lifetime.start.p0(ptr nonnull %45)
  call void @llvm.lifetime.start.p0(ptr nonnull %46)
  call void @llvm.lifetime.start.p0(ptr nonnull %47)
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bgg, i64 350
  %i.bgi = load i8, ptr %i.bgh, align 2, !tbaa !140, !range !26, !noundef !27
  %i.bgj = trunc nuw i8 %i.bgi to i1
  br i1 %i.bgj, label %bb.kq, label %_ZL23performFP_TO_INTCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

bb.kq:                                            ; preds = %bb.kp
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #28
  %i.bgk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bgl = load i64, ptr %i.bgk, align 8, !tbaa !362
  store i64 %i.bgl, ptr %43, align 8, !tbaa !362
  %i.bgm = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.bgn = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bgo = load i32, ptr %i.bgn, align 4, !tbaa !363
  store i32 %i.bgo, ptr %i.bgm, align 8, !tbaa !364
  %i.bgp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bgq = load ptr, ptr %i.bgp, align 8, !tbaa !486 ; 2 uses
  %.sroa.0.0.copyload.i.i460 = load i16, ptr %i.bgq, align 8, !tbaa !31 ; 6 uses
  %.sroa.21.0..sroa_idx.i.i461 = getelementptr inbounds nuw i8, ptr %i.bgq, i64 8
  %.sroa.21.0.copyload.i.i462 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i461, align 8, !tbaa !487 ; 2 uses
  %i.bgr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bgs = load ptr, ptr %i.bgr, align 8, !tbaa !354 ; 3 uses
  %.sroa.05.0.copyload.i = load ptr, ptr %i.bgs, align 8, !tbaa !361 ; 3 uses
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bgs, i64 8
  %.sroa.68.0.copyload.i = load i32, ptr %.sroa.68.0..sroa_idx.i, align 8, !tbaa !147 ; 3 uses
  %.sroa.7.0..sroa_idx.i463 = getelementptr inbounds nuw i8, ptr %i.bgs, i64 12
  %.sroa.7.0.copyload.i464 = load i32, ptr %.sroa.7.0..sroa_idx.i463, align 4 ; 2 uses
  %i.bgt = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i, i64 48
  %i.bgu = load ptr, ptr %i.bgt, align 8, !tbaa !486
  %i.bgv = zext i32 %.sroa.68.0.copyload.i to i64
  %i.bgw = getelementptr inbounds nuw [16 x i8], ptr %i.bgu, i64 %i.bgv ; 2 uses
  %.sroa.0.0.copyload.i.i.i465 = load i16, ptr %i.bgw, align 8, !tbaa !31 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i.i466 = getelementptr inbounds nuw i8, ptr %i.bgw, i64 8
  %.sroa.21.0.copyload.i.i.i467 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i466, align 8, !tbaa !487
  %i.bgx = icmp eq i32 %i.h, 240
  %.not.i.i468 = icmp eq i16 %.sroa.0.0.copyload.i.i460, 0
  br i1 %.not.i.i468, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i, label %.split.i469

.split.i469:                                      ; preds = %bb.kq
  %i.bgy = add i16 %.sroa.0.0.copyload.i.i460, -19
  %spec.select.i.i.i470 = icmp ult i16 %i.bgy, 197
  %i.bgz = icmp ne i16 %.sroa.0.0.copyload.i.i.i465, 0
  %or.cond18.i = select i1 %spec.select.i.i.i470, i1 %i.bgz, i1 false
  br i1 %or.cond18.i, label %.split.i.i.i471, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i

.split.i.i.i471:                                  ; preds = %.split.i469
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #28
  %i.bha = add i16 %.sroa.0.0.copyload.i.i.i465, -19
  %spec.select.i.i.i.i.i472 = icmp ult i16 %i.bha, 197
  br i1 %spec.select.i.i.i.i.i472, label %bb.kr, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i473

bb.kr:                                            ; preds = %.split.i.i.i471
  %i.bhb = zext nneg i16 %.sroa.0.0.copyload.i.i.i465 to i64
  %i.bhc = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.bhb
  %i.bhd = getelementptr i8, ptr %i.bhc, i64 -2
  %i.bhe = load i16, ptr %i.bhd, align 2, !tbaa !31
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i473

_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i473:       ; preds = %bb.kr, %.split.i.i.i471
  %.pn26.i = phi i16 [ %i.bhe, %bb.kr ], [ %.sroa.0.0.copyload.i.i.i465, %.split.i.i.i471 ] ; 3 uses
  %.pn24.i = phi ptr [ null, %bb.kr ], [ %.sroa.21.0.copyload.i.i.i467, %.split.i.i.i471 ]
  store i16 %.pn26.i, ptr %42, align 8
  %i.bhf = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr %.pn24.i, ptr %i.bhf, align 8
  %.not.i.i.i474 = icmp eq i16 %.pn26.i, 0
  br i1 %.not.i.i.i474, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i473
  %i.bhg = zext i16 %.pn26.i to i64
  %i.bhh = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bhg
  %i.bhi = getelementptr i8, ptr %i.bhh, i64 -16
  %.sroa.0.0.copyload.i.i.i.i475 = load i64, ptr %i.bhi, align 16
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i476

bb.kt:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i473
  %i.bhj = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %42) #31
  %i.bhk = extractvalue { i64, i8 } %i.bhj, 0
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i476

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i476:         ; preds = %bb.kt, %bb.ks
  %.pn.i.i.i477 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i475, %bb.ks ], [ %i.bhk, %bb.kt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  %i.bhl = zext i16 %.sroa.0.0.copyload.i.i.i465 to i64
  %i.bhm = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bhl ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i478 = getelementptr i8, ptr %i.bhm, i64 -8
  %.sroa.2.0.copyload.i.i.i479 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i478, align 8
  %i.bhn = trunc nuw i8 %.sroa.2.0.copyload.i.i.i479 to i1
  br i1 %i.bhn, label %bb.ku, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i72.i

bb.ku:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i476
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #29
  unreachable

_ZNK4llvm3EVT13getScalarTypeEv.exit.i72.i:        ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i476
  %i.bho = getelementptr i8, ptr %i.bhm, i64 -16
  %.sroa.0.0.copyload.i.i64.i480 = load i64, ptr %i.bho, align 16
  %i.bhp = trunc i64 %.sroa.0.0.copyload.i.i64.i480 to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #28
  %i.bhq = zext nneg i16 %.sroa.0.0.copyload.i.i460 to i64 ; 2 uses
  %i.bhr = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.bhq
  %i.bhs = getelementptr i8, ptr %i.bhr, i64 -2
  %i.bht = load i16, ptr %i.bhs, align 2, !tbaa !31 ; 3 uses
  store i16 %i.bht, ptr %41, align 8
  %i.bhu = getelementptr inbounds nuw i8, ptr %41, i64 8
  store ptr null, ptr %i.bhu, align 8
  %.not.i.i74.i = icmp eq i16 %i.bht, 0
  br i1 %.not.i.i74.i, label %bb.kw, label %bb.kv

bb.kv:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i72.i
  %i.bhv = zext i16 %i.bht to i64
  %i.bhw = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bhv
  %i.bhx = getelementptr i8, ptr %i.bhw, i64 -16
  %.sroa.0.0.copyload.i.i.i75.i = load i64, ptr %i.bhx, align 16
  br label %.split.i.i481

bb.kw:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i72.i
  %i.bhy = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %41) #31
  %i.bhz = extractvalue { i64, i8 } %i.bhy, 0
  br label %.split.i.i481

.split.i.i481:                                    ; preds = %bb.kw, %bb.kv
  %.pn.i.i76.i = phi i64 [ %.sroa.0.0.copyload.i.i.i75.i, %bb.kv ], [ %i.bhz, %bb.kw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  %i.bia = trunc i64 %.pn.i.i76.i to i32          ; 4 uses
  %i.bib = add nsw i16 %.sroa.0.0.copyload.i.i460, -163
  %spec.select.i.i.i.i482 = icmp ult i16 %i.bib, 53
  br i1 %spec.select.i.i.i.i482, label %bb.kx, label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i483

bb.kx:                                            ; preds = %.split.i.i481
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #29
  unreachable

_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i483:  ; preds = %.split.i.i481
  %i.bic = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.bhq
  %i.bid = getelementptr i8, ptr %i.bic, i64 -2
  %i.bie = load i16, ptr %i.bid, align 2, !tbaa !142
  %i.bif = zext i16 %i.bie to i32                 ; 3 uses
  %i.big = getelementptr inbounds nuw i8, ptr %i.bgg, i64 348
  %i.bih = load i8, ptr %i.big, align 4, !tbaa !141, !range !26, !noundef !27
  %i.bii = trunc nuw i8 %i.bih to i1              ; 2 uses
  %i.bij = select i1 %i.bii, i32 256, i32 128     ; 2 uses
  %i.bik = call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.bif)
  %or.cond20.i = icmp eq i32 %i.bik, 1
  %.not.i.i81.i = icmp ne i32 %i.bia, 0
  %or.cond21.not27.i = select i1 %or.cond20.i, i1 %.not.i.i81.i, i1 false
  %i.bil = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.bia)
  %i.bim = icmp samesign ult i32 %i.bil, 2
  %or.cond23.i = select i1 %or.cond21.not27.i, i1 %i.bim, i1 false
  br i1 %or.cond23.i, label %bb.ky, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i

bb.ky:                                            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i483
  %163 = add nsw i32 %i.bij, -1
  %i.bin = and i32 %163, %i.bhp
  %i.bio = icmp ne i32 %i.bin, 0
  %i.bip = icmp ne i32 %i.bhp, 128
  %or.cond.i484 = and i1 %i.bip, %i.bio
  br i1 %or.cond.i484, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.biq = icmp ult i32 %i.bia, 32
  br i1 %i.biq, label %bb.la, label %bb.lb

bb.la:                                            ; preds = %bb.kz
  %i.bir = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 7, i32 noundef %i.bif)
  %i.bis = load i32, ptr %i.g, align 8, !tbaa !163
  store ptr %.sroa.05.0.copyload.i, ptr %44, align 8, !tbaa !361
  %.sroa.68.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i32 %.sroa.68.0.copyload.i, ptr %.sroa.68.0..sroa_idx9.i, align 8, !tbaa !147
  %.sroa.7.0..sroa_idx13.i495 = getelementptr inbounds nuw i8, ptr %44, i64 12
  store i32 %.sroa.7.0.copyload.i464, ptr %.sroa.7.0..sroa_idx13.i495, align 4
  %i.bit = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i32 noundef %i.bis, ptr noundef nonnull align 8 dereferenceable(12) %43, i16 %i.bir, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %44) #28 ; 2 uses
  %.fca.0.extract25.i496 = extractvalue { ptr, i32 } %i.bit, 0
  %.fca.1.extract26.i497 = extractvalue { ptr, i32 } %i.bit, 1
  store ptr %.fca.0.extract25.i496, ptr %45, align 8, !tbaa !361
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i32 %.fca.1.extract26.i497, ptr %.sroa.431.0..sroa_idx.i, align 8, !tbaa !147
  %i.biu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %43, i16 %.sroa.0.0.copyload.i.i460, ptr %.sroa.21.0.copyload.i.i462, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %45) #28 ; 2 uses
  %.fca.0.extract18.i499 = extractvalue { ptr, i32 } %i.biu, 0
  %.fca.1.extract19.i500 = extractvalue { ptr, i32 } %i.biu, 1
  br label %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i

bb.lb:                                            ; preds = %bb.kz
  %i.biv = and i64 %.pn.i.i.i477, 4294967295
  %i.biw = icmp ne i64 %i.biv, 64
  %i.bix = icmp ne i32 %i.bia, 32
  %or.cond3.i485 = or i1 %i.biw, %i.bix
  br i1 %or.cond3.i485, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  br i1 %i.bgx, label %bb.lf, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  br i1 %i.bii, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.biy = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 8, i32 noundef %i.bif)
  store ptr %.sroa.05.0.copyload.i, ptr %46, align 8, !tbaa !361
  %.sroa.68.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i32 %.sroa.68.0.copyload.i, ptr %.sroa.68.0..sroa_idx11.i, align 8, !tbaa !147
  %.sroa.7.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %46, i64 12
  store i32 %.sroa.7.0.copyload.i464, ptr %.sroa.7.0..sroa_idx15.i, align 4
  %i.biz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i32 noundef 240, ptr noundef nonnull align 8 dereferenceable(12) %43, i16 %i.biy, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %46) #28 ; 2 uses
  %.fca.0.extract11.i486 = extractvalue { ptr, i32 } %i.biz, 0
  %.fca.1.extract12.i487 = extractvalue { ptr, i32 } %i.biz, 1
  store ptr %.fca.0.extract11.i486, ptr %47, align 8, !tbaa !361
  %.sroa.4.0..sroa_idx.i490 = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i32 %.fca.1.extract12.i487, ptr %.sroa.4.0..sroa_idx.i490, align 8, !tbaa !147
  %i.bja = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %43, i16 %.sroa.0.0.copyload.i.i460, ptr %.sroa.21.0.copyload.i.i462, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %47) #28 ; 2 uses
  %.fca.0.extract4.i491 = extractvalue { ptr, i32 } %i.bja, 0
  %.fca.1.extract5.i492 = extractvalue { ptr, i32 } %i.bja, 1
  br label %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i

bb.lf:                                            ; preds = %bb.lc
  %i.bjb = call fastcc { ptr, i32 } @_ZL18MergeBlocksConvertPN4llvm6SDNodeERNS_12SelectionDAGEjj(ptr noundef nonnull readonly %1, ptr noundef nonnull align 8 dereferenceable(920) %i.f, i32 noundef 615, i32 noundef %i.bij) ; 2 uses
  %.fca.0.extract.i493 = extractvalue { ptr, i32 } %i.bjb, 0
  %.fca.1.extract.i494 = extractvalue { ptr, i32 } %i.bjb, 1
  br label %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i

_ZN4llvm13isPowerOf2_32Ej.exit.thread.i:          ; preds = %bb.lf, %bb.le, %bb.ld, %bb.lb, %bb.la, %bb.ky, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i483, %.split.i469, %bb.kq
  %.sroa.16.0.i = phi i32 [ 0, %bb.ld ], [ %.fca.1.extract19.i500, %bb.la ], [ 0, %bb.ky ], [ %.fca.1.extract.i494, %bb.lf ], [ 0, %bb.lb ], [ %.fca.1.extract5.i492, %bb.le ], [ 0, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i483 ], [ 0, %bb.kq ], [ 0, %.split.i469 ]
  %.sroa.017.0.i = phi ptr [ null, %bb.ld ], [ %.fca.0.extract18.i499, %bb.la ], [ null, %bb.ky ], [ %.fca.0.extract.i493, %bb.lf ], [ null, %bb.lb ], [ %.fca.0.extract4.i491, %bb.le ], [ null, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i483 ], [ null, %bb.kq ], [ null, %.split.i469 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #28
  br label %_ZL23performFP_TO_INTCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

_ZL23performFP_TO_INTCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit: ; preds = %bb.kp, %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i
  %.sroa.16.1.i = phi i32 [ %.sroa.16.0.i, %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i ], [ 0, %bb.kp ]
  %.sroa.017.1.i = phi ptr [ %.sroa.017.0.i, %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i ], [ null, %bb.kp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44)
  call void @llvm.lifetime.end.p0(ptr nonnull %45)
  call void @llvm.lifetime.end.p0(ptr nonnull %46)
  call void @llvm.lifetime.end.p0(ptr nonnull %47)
  br label %_ZL22performBITREV_WCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

bb.lg:                                            ; preds = %bb.a
  %i.bjc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val176 = load i32, ptr %i.bjc, align 8, !tbaa !850
  %i.bjd = icmp slt i32 %.val176, 2
  br i1 %i.bjd, label %_ZL22performBITREV_WCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.bje = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bjf = load ptr, ptr %i.bje, align 8, !tbaa !354
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bjf, align 8, !tbaa !361 ; 2 uses
  %i.bjg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.bjh = load i32, ptr %i.bjg, align 8, !tbaa !163
  %.not.i501 = icmp eq i32 %i.bjh, 590
  br i1 %.not.i501, label %bb.li, label %_ZL22performBITREV_WCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

bb.li:                                            ; preds = %bb.lh
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #28
  %i.bji = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bjj = load i64, ptr %i.bji, align 8, !tbaa !362
  store i64 %i.bjj, ptr %40, align 8, !tbaa !362
  %i.bjk = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.bjl = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bjm = load i32, ptr %i.bjl, align 4, !tbaa !363
  store i32 %i.bjm, ptr %i.bjk, align 8, !tbaa !364
  %i.bjn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bjo = load ptr, ptr %i.bjn, align 8, !tbaa !486 ; 2 uses
  %.sroa.0.0.copyload.i.i504 = load i16, ptr %i.bjo, align 8, !tbaa !31
  %.sroa.21.0..sroa_idx.i.i505 = getelementptr inbounds nuw i8, ptr %i.bjo, i64 8
  %.sroa.21.0.copyload.i.i506 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i505, align 8, !tbaa !487
  %i.bjp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.bjq = load ptr, ptr %i.bjp, align 8, !tbaa !354
  %i.bjr = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i32 noundef 537, ptr noundef nonnull align 8 dereferenceable(12) %40, i16 %.sroa.0.0.copyload.i.i504, ptr %.sroa.21.0.copyload.i.i506, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.bjq) #28 ; 2 uses
  %.fca.0.extract.i507 = extractvalue { ptr, i32 } %i.bjr, 0
  %.fca.1.extract.i508 = extractvalue { ptr, i32 } %i.bjr, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  br label %_ZL22performBITREV_WCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

bb.lj:                                            ; preds = %bb.a
  %i.bjs = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.bjt = load ptr, ptr %i.bjs, align 8, !tbaa !149, !nonnull !27, !align !150
  call void @llvm.lifetime.start.p0(ptr nonnull %37)
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #28
  %i.bju = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bjv = load ptr, ptr %i.bju, align 8, !tbaa !354 ; 3 uses
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bjv, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 8 dereferenceable(16) %i.bjw, i64 16, i1 false), !tbaa.struct !499
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bjv, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %i.bjx, i64 16, i1 false)
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.bjv, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 8 dereferenceable(16) %i.bjy, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #28
  %i.bjz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bka = load i64, ptr %i.bjz, align 8, !tbaa !362
  store i64 %i.bka, ptr %39, align 8, !tbaa !362
  %i.bkb = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.bkc = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bkd = load i32, ptr %i.bkc, align 4, !tbaa !363
  store i32 %i.bkd, ptr %i.bkb, align 8, !tbaa !364
  %i.bke = call fastcc noundef zeroext i1 @_ZL10combine_CCRN4llvm7SDValueES1_S1_RKNS_5SDLocERNS_12SelectionDAGERKNS_18LoongArchSubtargetE(ptr noundef nonnull align 8 dereferenceable(12) %36, ptr noundef nonnull align 8 dereferenceable(12) %37, ptr noundef nonnull align 8 dereferenceable(12) %38, ptr noundef nonnull align 8 dereferenceable(12) %39, ptr noundef nonnull align 8 dereferenceable(920) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(519320) %i.bjt)
  br i1 %i.bke, label %bb.lk, label %_ZL19performBR_CCCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

bb.lk:                                            ; preds = %bb.lj
  %i.bkf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bkg = load ptr, ptr %i.bkf, align 8, !tbaa !486 ; 2 uses
  %.sroa.0.0.copyload.i.i511 = load i16, ptr %i.bkg, align 8, !tbaa !31
  %.sroa.21.0..sroa_idx.i.i512 = getelementptr inbounds nuw i8, ptr %i.bkg, i64 8
  %.sroa.21.0.copyload.i.i513 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i512, align 8, !tbaa !487
  %i.bkh = load ptr, ptr %i.bju, align 8, !tbaa !354 ; 2 uses
  %i.bki = getelementptr inbounds nuw i8, ptr %i.bkh, i64 160
  %i.bkj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i32 noundef 542, ptr noundef nonnull align 8 dereferenceable(12) %39, i16 %.sroa.0.0.copyload.i.i511, ptr %.sroa.21.0.copyload.i.i513, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.bkh, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %36, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %37, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %38, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.bki) #28 ; 2 uses
  %.fca.0.extract.i514 = extractvalue { ptr, i32 } %i.bkj, 0
  %.fca.1.extract.i515 = extractvalue { ptr, i32 } %i.bkj, 1
  br label %_ZL19performBR_CCCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

_ZL19performBR_CCCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit: ; preds = %bb.lj, %bb.lk
  %.sroa.4.0.i = phi i32 [ %.fca.1.extract.i515, %bb.lk ], [ 0, %bb.lj ]
  %.sroa.0.0.i = phi ptr [ %.fca.0.extract.i514, %bb.lk ], [ null, %bb.lj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %37)
  call void @llvm.lifetime.end.p0(ptr nonnull %38)
  br label %_ZL22performBITREV_WCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

bb.ll:                                            ; preds = %bb.a
  %i.bkk = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.bkl = load ptr, ptr %i.bkk, align 8, !tbaa !149, !nonnull !27, !align !150 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  %i.bkm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bkn = load ptr, ptr %i.bkm, align 8, !tbaa !354 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(16) %i.bkn, i64 16, i1 false), !tbaa.struct !499
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bkn, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(16) %i.bko, i64 16, i1 false), !tbaa.struct !499
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bkn, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(16) %i.bkp, i64 16, i1 false), !tbaa.struct !499
  %i.bkq = load ptr, ptr %27, align 8, !tbaa !355
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bkq, i64 88
  %i.bks = load i32, ptr %i.bkr, align 8, !tbaa !624 ; 2 uses
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.bkn, i64 120
  %.sroa.023.0.copyload.i = load ptr, ptr %i.bkt, align 8, !tbaa !361 ; 9 uses
  %.sroa.1230.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bkn, i64 128
  %.sroa.1230.0.copyload.i = load i32, ptr %.sroa.1230.0..sroa_idx.i, align 8, !tbaa !147 ; 8 uses
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bkn, i64 160
  %.sroa.0.0.copyload.i516 = load ptr, ptr %i.bku, align 8, !tbaa !361 ; 8 uses
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bkn, i64 168
  %.sroa.12.0.copyload.i = load i32, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !147 ; 7 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bkn, i64 172
  %.sroa.13.0.copyload.i = load i32, ptr %.sroa.13.0..sroa_idx.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  %i.bkv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bkw = load i64, ptr %i.bkv, align 8, !tbaa !362
  store i64 %i.bkw, ptr %28, align 8, !tbaa !362
end_hunk_0

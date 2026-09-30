Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/scavenger?download=true
inline.NumInlined: 7891
inline.NumDeleted: 3174
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN2v88internal9Scavenger18VisitPinnedObjectsEv:bb.a
  %i.bfp = add i64 %i.ao, 7
  %i.bfq = inttoptr i64 %i.bfp to ptr             ; 2 uses
  %i.bfr = load atomic volatile i8, ptr %i.bfq monotonic, align 1 ; 0 uses
  %i.bfs = add i64 %i.ao, 9
  %i.bft = inttoptr i64 %i.bfs to ptr
  %i.bfu = load atomic volatile i8, ptr %i.bft monotonic, align 1 ; 2 uses
  %i.bfv = icmp ult i8 %i.bfu, 3
  br i1 %i.bfv, label %bb.it, label %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit506

bb.it:                                            ; preds = %bb.is
  %i.bfw = load atomic volatile i8, ptr %i.bfq monotonic, align 1
  br label %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit506

_ZNK2v88internal3Map16UsedInstanceSizeEv.exit506: ; preds = %bb.is, %bb.it
  %.0.in.in.i503 = phi i8 [ %i.bfw, %bb.it ], [ %i.bfu, %bb.is ]
  %.0.in.i504 = zext i8 %.0.in.in.i503 to i64
  %.0.i505 = shl nuw nsw i64 %.0.in.i504, 3
  %i.bfx = add i64 %i.am, -1
  %i.bfy = add i64 %i.am, 7                       ; 2 uses
  %i.bfz = add i64 %i.am, 47                      ; 3 uses
  %i.bga = icmp ult i64 %i.bfy, %i.bfz
  br i1 %i.bga, label %.lr.ph.i.i513, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_15ScavengeVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit.i507

.lr.ph.i.i513:                                    ; preds = %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit506, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i515
  %.sroa.020.030.i.i514 = phi i64 [ %i.bgj, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i515 ], [ %i.bfy, %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit506 ] ; 3 uses
  %i.bgb = inttoptr i64 %.sroa.020.030.i.i514 to ptr
  %i.bgc = load atomic volatile i64, ptr %i.bgb monotonic, align 8 ; 3 uses
  %i.bgd = trunc i64 %i.bgc to i1
  br i1 %i.bgd, label %bb.iu, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i515

bb.iu:                                            ; preds = %.lr.ph.i.i513
  %i.bge = and i64 %i.bgc, -262144
  %i.bgf = inttoptr i64 %i.bge to ptr
  %.sroa.0.0.copyload.i.i.i.i516 = load i64, ptr %i.bgf, align 262144
  %i.bgg = and i64 %.sroa.0.0.copyload.i.i.i.i516, 24
  %.not.i.i517 = icmp eq i64 %i.bgg, 0
  br i1 %.not.i.i517, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i515, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.bgh = load ptr, ptr %i.h, align 8
  %i.bgi = call noundef i32 @_ZN2v88internal9Scavenger14ScavengeObjectINS0_18FullHeapObjectSlotEEEN4heap4base18SlotCallbackResultET_NS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(2372) %i.bgh, i64 %.sroa.020.030.i.i514, i64 %i.bgc) ; 0 uses
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i515

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i515: ; preds = %bb.iv, %bb.iu, %.lr.ph.i.i513
  %i.bgj = add i64 %.sroa.020.030.i.i514, 8       ; 2 uses
  %i.bgk = icmp ult i64 %i.bgj, %i.bfz
  br i1 %i.bgk, label %.lr.ph.i.i513, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_15ScavengeVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit.i507, !llvm.loop !4

_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_15ScavengeVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit.i507: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i515, %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit506
  %i.bgl = add i64 %i.am, 55                      ; 3 uses
  %i.bgm = load ptr, ptr %11, align 8
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bgm, i64 16
  %i.bgo = load ptr, ptr %i.bgn, align 8
  call void %i.bgo(ptr noundef nonnull align 8 dereferenceable(16) %11, i64 %i.am, i64 %i.bfz, i64 %i.bgl) #25, !inline_history !31
  %i.bgp = add i64 %i.bfx, %.0.i505               ; 2 uses
  %i.bgq = icmp ult i64 %i.bgl, %i.bgp
  br i1 %i.bgq, label %.lr.ph.i.i.i508, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i.i508:                                  ; preds = %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_15ScavengeVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit.i507, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i510
  %.sroa.020.030.i.i.i509 = phi i64 [ %i.bgz, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i510 ], [ %i.bgl, %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_15ScavengeVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit.i507 ] ; 3 uses
  %i.bgr = inttoptr i64 %.sroa.020.030.i.i.i509 to ptr
  %i.bgs = load atomic volatile i64, ptr %i.bgr monotonic, align 8 ; 3 uses
  %i.bgt = trunc i64 %i.bgs to i1
  br i1 %i.bgt, label %bb.iw, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i510

bb.iw:                                            ; preds = %.lr.ph.i.i.i508
  %i.bgu = and i64 %i.bgs, -262144
  %i.bgv = inttoptr i64 %i.bgu to ptr
  %.sroa.0.0.copyload.i.i.i.i.i511 = load i64, ptr %i.bgv, align 262144
  %i.bgw = and i64 %.sroa.0.0.copyload.i.i.i.i.i511, 24
  %.not.i.i.i512 = icmp eq i64 %i.bgw, 0
  br i1 %.not.i.i.i512, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i510, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.bgx = load ptr, ptr %i.h, align 8
  %i.bgy = call noundef i32 @_ZN2v88internal9Scavenger14ScavengeObjectINS0_18FullHeapObjectSlotEEEN4heap4base18SlotCallbackResultET_NS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(2372) %i.bgx, i64 %.sroa.020.030.i.i.i509, i64 %i.bgs) ; 0 uses
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i510

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i510: ; preds = %bb.ix, %bb.iw, %.lr.ph.i.i.i508
  %i.bgz = add i64 %.sroa.020.030.i.i.i509, 8     ; 2 uses
  %i.bha = icmp ult i64 %i.bgz, %i.bgp
  br i1 %i.bha, label %.lr.ph.i.i.i508, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !4

bb.iy:                                            ; preds = %bb.i
  %i.bhb = add i64 %i.am, 7                       ; 3 uses
  %i.bhc = inttoptr i64 %i.bhb to ptr
  %i.bhd = load i64, ptr %i.bhc, align 8
  %i.bhe = add i64 %i.am, -1
  %i.bhf = shl i64 %i.bhd, 3
  %i.bhg = and i64 %i.bhf, -34359738368
  %sext1965 = add i64 %i.bhg, 68719476736
  %i.bhh = ashr exact i64 %sext1965, 32
  %i.bhi = add i64 %i.bhe, %i.bhh                 ; 2 uses
  %i.bhj = icmp ult i64 %i.bhb, %i.bhi
  br i1 %i.bhj, label %.lr.ph.i.i521, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i521:                                    ; preds = %bb.iy, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i523
  %.sroa.020.030.i.i522 = phi i64 [ %i.bhs, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i523 ], [ %i.bhb, %bb.iy ] ; 3 uses
  %i.bhk = inttoptr i64 %.sroa.020.030.i.i522 to ptr
  %i.bhl = load atomic volatile i64, ptr %i.bhk monotonic, align 8 ; 3 uses
  %i.bhm = trunc i64 %i.bhl to i1
  br i1 %i.bhm, label %bb.iz, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i523

bb.iz:                                            ; preds = %.lr.ph.i.i521
  %i.bhn = and i64 %i.bhl, -262144
  %i.bho = inttoptr i64 %i.bhn to ptr
  %.sroa.0.0.copyload.i.i.i.i524 = load i64, ptr %i.bho, align 262144
  %i.bhp = and i64 %.sroa.0.0.copyload.i.i.i.i524, 24
  %.not.i.i525 = icmp eq i64 %i.bhp, 0
  br i1 %.not.i.i525, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i523, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.bhq = load ptr, ptr %i.h, align 8
  %i.bhr = call noundef i32 @_ZN2v88internal9Scavenger14ScavengeObjectINS0_18FullHeapObjectSlotEEEN4heap4base18SlotCallbackResultET_NS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(2372) %i.bhq, i64 %.sroa.020.030.i.i522, i64 %i.bhl) ; 0 uses
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i523

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i523: ; preds = %bb.ja, %bb.iz, %.lr.ph.i.i521
  %i.bhs = add i64 %.sroa.020.030.i.i522, 8       ; 2 uses
  %i.bht = icmp ult i64 %i.bhs, %i.bhi
  br i1 %i.bht, label %.lr.ph.i.i521, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !4

bb.jb:                                            ; preds = %bb.i
  %i.bhu = add i64 %i.am, 7                       ; 2 uses
  %i.bhv = add i64 %i.am, 31                      ; 2 uses
  %i.bhw = icmp ult i64 %i.bhu, %i.bhv
  br i1 %i.bhw, label %.lr.ph.i.i.i527, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i.i527:                                  ; preds = %bb.jb, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i529
  %.sroa.020.030.i.i.i528 = phi i64 [ %i.bif, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i529 ], [ %i.bhu, %bb.jb ] ; 3 uses
  %i.bhx = inttoptr i64 %.sroa.020.030.i.i.i528 to ptr
  %i.bhy = load atomic volatile i64, ptr %i.bhx monotonic, align 8 ; 3 uses
  %i.bhz = trunc i64 %i.bhy to i1
  br i1 %i.bhz, label %bb.jc, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i529

bb.jc:                                            ; preds = %.lr.ph.i.i.i527
  %i.bia = and i64 %i.bhy, -262144
  %i.bib = inttoptr i64 %i.bia to ptr
  %.sroa.0.0.copyload.i.i.i.i.i530 = load i64, ptr %i.bib, align 262144
  %i.bic = and i64 %.sroa.0.0.copyload.i.i.i.i.i530, 24
  %.not.i.i.i531 = icmp eq i64 %i.bic, 0
  br i1 %.not.i.i.i531, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i529, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.bid = load ptr, ptr %i.h, align 8
  %i.bie = call noundef i32 @_ZN2v88internal9Scavenger14ScavengeObjectINS0_18FullHeapObjectSlotEEEN4heap4base18SlotCallbackResultET_NS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(2372) %i.bid, i64 %.sroa.020.030.i.i.i528, i64 %i.bhy) ; 0 uses
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i529

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i529: ; preds = %bb.jd, %bb.jc, %.lr.ph.i.i.i527
  %i.bif = add i64 %.sroa.020.030.i.i.i528, 8     ; 2 uses
  %i.big = icmp ult i64 %i.bif, %i.bhv
  br i1 %i.big, label %.lr.ph.i.i.i527, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !4

bb.je:                                            ; preds = %bb.i
  %i.bih = add i64 %i.am, 7                       ; 3 uses
  %i.bii = inttoptr i64 %i.bih to ptr
  %i.bij = load atomic volatile i64, ptr %i.bii monotonic, align 8
  %i.bik = add i64 %i.am, -1
  %i.bil = shl i64 %i.bij, 3
  %i.bim = and i64 %i.bil, -34359738368
  %sext1964 = add i64 %i.bim, 103079215104
  %i.bin = ashr exact i64 %sext1964, 32
  %i.bio = add i64 %i.bik, %i.bin                 ; 2 uses
  %i.bip = icmp ult i64 %i.bih, %i.bio
  br i1 %i.bip, label %.lr.ph.i.i534, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i534:                                    ; preds = %bb.je, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i536
  %.sroa.014.025.i.i535 = phi i64 [ %i.bjc, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i536 ], [ %i.bih, %bb.je ] ; 3 uses
  %i.biq = inttoptr i64 %.sroa.014.025.i.i535 to ptr
  %i.bir = load atomic volatile i64, ptr %i.biq monotonic, align 8 ; 4 uses
  %i.bis = trunc i64 %i.bir to i1
  %i.bit = and i64 %i.bir, 4294967295
  %i.biu = icmp ne i64 %i.bit, 3
  %i.biv = and i1 %i.biu, %i.bis
  br i1 %i.biv, label %bb.jf, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i536

bb.jf:                                            ; preds = %.lr.ph.i.i534
  %i.biw = and i64 %i.bir, -262144
  %i.bix = inttoptr i64 %i.biw to ptr
  %.sroa.0.0.copyload.i.i.i.i537 = load i64, ptr %i.bix, align 262144
  %i.biy = and i64 %.sroa.0.0.copyload.i.i.i.i537, 24
  %.not.i.i538 = icmp eq i64 %i.biy, 0
  br i1 %.not.i.i538, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i536, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.biz = and i64 %i.bir, -3
  %i.bja = load ptr, ptr %i.h, align 8
  %i.bjb = call noundef i32 @_ZN2v88internal9Scavenger14ScavengeObjectINS0_18FullHeapObjectSlotEEEN4heap4base18SlotCallbackResultET_NS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(2372) %i.bja, i64 %.sroa.014.025.i.i535, i64 %i.biz) ; 0 uses
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i536

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i536: ; preds = %bb.jg, %bb.jf, %.lr.ph.i.i534
  %i.bjc = add i64 %.sroa.014.025.i.i535, 8       ; 2 uses
  %i.bjd = icmp ult i64 %i.bjc, %i.bio
  br i1 %i.bjd, label %.lr.ph.i.i534, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !8

bb.jh:                                            ; preds = %bb.i
  %i.bje = add i64 %i.am, 7
  %i.bjf = inttoptr i64 %i.bje to ptr             ; 9 uses
  %i.bjg = load atomic volatile i32, ptr %i.bjf monotonic, align 4, !noalias !107
  %i.bjh = add i64 %i.am, 23
  %i.bji = inttoptr i64 %i.bjh to ptr
  %i.bjj = load i64, ptr %i.bji, align 8, !noalias !108 ; 2 uses
  %i.bjk = load atomic volatile i32, ptr %i.bjf monotonic, align 4, !noalias !109
  %i.bjl = load atomic volatile i32, ptr %i.bjf monotonic, align 4, !noalias !110
  %i.bjm = load atomic volatile i32, ptr %i.bjf monotonic, align 4, !noalias !111
  %i.bjn = load atomic volatile i32, ptr %i.bjf monotonic, align 4, !noalias !112
  %i.bjo = load atomic volatile i32, ptr %i.bjf monotonic, align 4, !noalias !113
  %i.bjp = load atomic volatile i32, ptr %i.bjf monotonic, align 4, !noalias !114
  %i.bjq = and i32 %i.bjp, 15
  %i.bjr = icmp eq i32 %i.bjq, 5
  br i1 %i.bjr, label %bb.ji, label %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit

bb.ji:                                            ; preds = %bb.jh
  %i.bjs = load atomic volatile i32, ptr %i.bjf monotonic, align 4, !noalias !115
  %i.bjt = and i32 %i.bjs, 15
  %i.bju = icmp eq i32 %i.bjt, 5
  br i1 %i.bju, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %bb.ji
  %i.bjv = add i64 %i.am, 47
  %i.bjw = inttoptr i64 %i.bjv to ptr
  %i.bjx = load i64, ptr %i.bjw, align 8, !noalias !114
  %i.bjy = ashr i64 %i.bjx, 32
  %i.bjz = mul nsw i64 %i.bjy, 24
  br label %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit

bb.jk:                                            ; preds = %bb.ji
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.182) #26, !noalias !114
  unreachable

_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit: ; preds = %bb.jh, %bb.jj
  %storemerge.i.i.i.i = phi i64 [ %i.bjz, %bb.jj ], [ 0, %bb.jh ]
  %i.bka = and i32 %i.bjo, 15
  %i.bkb = icmp eq i32 %i.bka, 5
  %i.bkc = select i1 %i.bkb, i64 8, i64 0
  %12 = ashr i64 %i.bjj, 29
  %13 = and i64 %12, -8                           ; 2 uses
  %i.bkd = and i32 %i.bjg, 15
  %i.bke = icmp eq i32 %i.bkd, 5
  %i.bkf = select i1 %i.bke, i64 56, i64 48
  %i.bkg = add nsw i64 %13, %i.bkf
  %14 = icmp sgt i64 %i.bjj, 322122547199
  %i.bkh = select i1 %14, i64 8, i64 %13
  %i.bki = add nsw i64 %i.bkg, %i.bkh
  %i.bkj = lshr i32 %i.bjk, 7
  %i.bkk = and i32 %i.bkj, 8
  %i.bkl = zext nneg i32 %i.bkk to i64
  %i.bkm = add nsw i64 %i.bki, %i.bkl
  %i.bkn = and i32 %i.bjl, 12288
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.bkn, 0
  %i.bko = select i1 %.not.i.not.i.i.i.i.i.i.i, i64 0, i64 16
  %i.bkp = add nsw i64 %i.bkm, %i.bko
  %i.bkq = lshr i32 %i.bjm, 11
  %i.bkr = and i32 %i.bkq, 8
  %i.bks = zext nneg i32 %i.bkr to i64
  %i.bkt = add nsw i64 %i.bkp, %i.bks
  %i.bku = lshr i32 %i.bjn, 19
  %i.bkv = and i32 %i.bku, 8
  %i.bkw = zext nneg i32 %i.bkv to i64
  %i.bkx = add nsw i64 %i.bkt, %i.bkw
  %i.bky = add nsw i64 %i.bkx, %i.bkc
  %i.bkz = add nsw i64 %i.bky, %storemerge.i.i.i.i
  %i.bla = load atomic volatile i32, ptr %i.bjf monotonic, align 4, !noalias !116
  %i.blb = trunc i64 %i.bkz to i32
  %i.blc = lshr i32 %i.bla, 1
  %i.bld = and i32 %i.blc, 8
  %i.ble = add nsw i32 %i.bld, %i.blb
  %i.blf = add i64 %i.am, -1
  %i.blg = add i64 %i.am, 15                      ; 2 uses
  %i.blh = sext i32 %i.ble to i64
  %i.bli = add i64 %i.blf, %i.blh                 ; 2 uses
  %i.blj = icmp ult i64 %i.blg, %i.bli
  br i1 %i.blj, label %.lr.ph.i.i541, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i541:                                    ; preds = %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i543
  %.sroa.020.030.i.i542 = phi i64 [ %i.bls, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i543 ], [ %i.blg, %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit ] ; 3 uses
  %i.blk = inttoptr i64 %.sroa.020.030.i.i542 to ptr
  %i.bll = load atomic volatile i64, ptr %i.blk monotonic, align 8 ; 3 uses
  %i.blm = trunc i64 %i.bll to i1
  br i1 %i.blm, label %bb.jl, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i543

bb.jl:                                            ; preds = %.lr.ph.i.i541
  %i.bln = and i64 %i.bll, -262144
  %i.blo = inttoptr i64 %i.bln to ptr
  %.sroa.0.0.copyload.i.i.i.i544 = load i64, ptr %i.blo, align 262144
  %i.blp = and i64 %.sroa.0.0.copyload.i.i.i.i544, 24
  %.not.i.i545 = icmp eq i64 %i.blp, 0
  br i1 %.not.i.i545, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i543, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.blq = load ptr, ptr %i.h, align 8
  %i.blr = call noundef i32 @_ZN2v88internal9Scavenger14ScavengeObjectINS0_18FullHeapObjectSlotEEEN4heap4base18SlotCallbackResultET_NS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(2372) %i.blq, i64 %.sroa.020.030.i.i542, i64 %i.bll) ; 0 uses
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i543

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i543: ; preds = %bb.jm, %bb.jl, %.lr.ph.i.i541
  %i.bls = add i64 %.sroa.020.030.i.i542, 8       ; 2 uses
  %i.blt = icmp ult i64 %i.bls, %i.bli
  br i1 %i.blt, label %.lr.ph.i.i541, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !4

bb.jn:                                            ; preds = %bb.i
  %i.blu = add i64 %i.am, 7
  %i.blv = inttoptr i64 %i.blu to ptr
  %i.blw = load i16, ptr %i.blv, align 2
  %i.blx = zext i16 %i.blw to i64
  %i.bly = mul nuw nsw i64 %i.blx, 24
  %i.blz = add i64 %i.am, 23                      ; 2 uses
  %i.bma = add i64 %i.am, 31
  %i.bmb = add i64 %i.bma, %i.bly                 ; 2 uses
  %i.bmc = icmp ult i64 %i.blz, %i.bmb
  br i1 %i.bmc, label %.lr.ph.i.i547, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i547:                                    ; preds = %bb.jn, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i549
  %.sroa.014.025.i.i548 = phi i64 [ %i.bmp, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i549 ], [ %i.blz, %bb.jn ] ; 3 uses
  %i.bmd = inttoptr i64 %.sroa.014.025.i.i548 to ptr
  %i.bme = load atomic volatile i64, ptr %i.bmd monotonic, align 8 ; 4 uses
  %i.bmf = trunc i64 %i.bme to i1
  %i.bmg = and i64 %i.bme, 4294967295
  %i.bmh = icmp ne i64 %i.bmg, 3
  %i.bmi = and i1 %i.bmh, %i.bmf
  br i1 %i.bmi, label %bb.jo, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i549

bb.jo:                                            ; preds = %.lr.ph.i.i547
  %i.bmj = and i64 %i.bme, -262144
  %i.bmk = inttoptr i64 %i.bmj to ptr
  %.sroa.0.0.copyload.i.i.i.i550 = load i64, ptr %i.bmk, align 262144
  %i.bml = and i64 %.sroa.0.0.copyload.i.i.i.i550, 24
  %.not.i.i551 = icmp eq i64 %i.bml, 0
  br i1 %.not.i.i551, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i549, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.bmm = and i64 %i.bme, -3
  %i.bmn = load ptr, ptr %i.h, align 8
  %i.bmo = call noundef i32 @_ZN2v88internal9Scavenger14ScavengeObjectINS0_18FullHeapObjectSlotEEEN4heap4base18SlotCallbackResultET_NS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(2372) %i.bmn, i64 %.sroa.014.025.i.i548, i64 %i.bmm) ; 0 uses
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i549

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i549: ; preds = %bb.jp, %bb.jo, %.lr.ph.i.i547
  %i.bmp = add i64 %.sroa.014.025.i.i548, 8       ; 2 uses
  %i.bmq = icmp ult i64 %i.bmp, %i.bmb
  br i1 %i.bmq, label %.lr.ph.i.i547, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !8

bb.jq:                                            ; preds = %bb.i
  %i.bmr = add i64 %i.am, 7
  %i.bms = inttoptr i64 %i.bmr to ptr
  %i.bmt = load atomic volatile i16, ptr %i.bms monotonic, align 2
  %i.bmu = sext i16 %i.bmt to i64
  %i.bmv = mul nsw i64 %i.bmu, 24
  %i.bmw = add i64 %i.am, 23                      ; 2 uses
  %i.bmx = add i64 %i.am, 31
  %i.bmy = add i64 %i.bmx, %i.bmv                 ; 2 uses
  %i.bmz = icmp ult i64 %i.bmw, %i.bmy
  br i1 %i.bmz, label %.lr.ph.i.i552, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i552:                                    ; preds = %bb.jq, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i554
  %.sroa.014.025.i.i553 = phi i64 [ %i.bnm, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i554 ], [ %i.bmw, %bb.jq ] ; 3 uses
  %i.bna = inttoptr i64 %.sroa.014.025.i.i553 to ptr
  %i.bnb = load atomic volatile i64, ptr %i.bna monotonic, align 8 ; 4 uses
  %i.bnc = trunc i64 %i.bnb to i1
  %i.bnd = and i64 %i.bnb, 4294967295
  %i.bne = icmp ne i64 %i.bnd, 3
  %i.bnf = and i1 %i.bne, %i.bnc
  br i1 %i.bnf, label %bb.jr, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i554

bb.jr:                                            ; preds = %.lr.ph.i.i552
  %i.bng = and i64 %i.bnb, -262144
  %i.bnh = inttoptr i64 %i.bng to ptr
  %.sroa.0.0.copyload.i.i.i.i555 = load i64, ptr %i.bnh, align 262144
  %i.bni = and i64 %.sroa.0.0.copyload.i.i.i.i555, 24
  %.not.i.i556 = icmp eq i64 %i.bni, 0
  br i1 %.not.i.i556, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i554, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.bnj = and i64 %i.bnb, -3
  %i.bnk = load ptr, ptr %i.h, align 8
  %i.bnl = call noundef i32 @_ZN2v88internal9Scavenger14ScavengeObjectINS0_18FullHeapObjectSlotEEEN4heap4base18SlotCallbackResultET_NS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(2372) %i.bnk, i64 %.sroa.014.025.i.i553, i64 %i.bnj) ; 0 uses
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i554

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i554: ; preds = %bb.js, %bb.jr, %.lr.ph.i.i552
  %i.bnm = add i64 %.sroa.014.025.i.i553, 8       ; 2 uses
  %i.bnn = icmp ult i64 %i.bnm, %i.bmy
  br i1 %i.bnn, label %.lr.ph.i.i552, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !8

bb.jt:                                            ; preds = %bb.i
  %i.bno = add i64 %i.am, 7
  %i.bnp = inttoptr i64 %i.bno to ptr
  %i.bnq = load i32, ptr %i.bnp, align 4
  %i.bnr = shl nsw i32 %i.bnq, 3
  %i.bns = add nsw i32 %i.bnr, 48
  %i.bnt = add i64 %i.am, -1
  %i.bnu = add i64 %i.am, 23                      ; 2 uses
  %i.bnv = sext i32 %i.bns to i64
  %i.bnw = add i64 %i.bnt, %i.bnv                 ; 2 uses
  %i.bnx = icmp ult i64 %i.bnu, %i.bnw
  br i1 %i.bnx, label %.lr.ph.i.i558, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i558:                                    ; preds = %bb.jt, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i560
  %.sroa.014.025.i.i559 = phi i64 [ %i.bok, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i560 ], [ %i.bnu, %bb.jt ] ; 3 uses
  %i.bny = inttoptr i64 %.sroa.014.025.i.i559 to ptr
  %i.bnz = load atomic volatile i64, ptr %i.bny monotonic, align 8 ; 4 uses
  %i.boa = trunc i64 %i.bnz to i1
  %i.bob = and i64 %i.bnz, 4294967295
  %i.boc = icmp ne i64 %i.bob, 3
  %i.bod = and i1 %i.boc, %i.boa
  br i1 %i.bod, label %bb.ju, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i560

bb.ju:                                            ; preds = %.lr.ph.i.i558
  %i.boe = and i64 %i.bnz, -262144
  %i.bof = inttoptr i64 %i.boe to ptr
  %.sroa.0.0.copyload.i.i.i.i561 = load i64, ptr %i.bof, align 262144
  %i.bog = and i64 %.sroa.0.0.copyload.i.i.i.i561, 24
  %.not.i.i562 = icmp eq i64 %i.bog, 0
  br i1 %.not.i.i562, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i560, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.boh = and i64 %i.bnz, -3
  %i.boi = load ptr, ptr %i.h, align 8
  %i.boj = call noundef i32 @_ZN2v88internal9Scavenger14ScavengeObjectINS0_18FullHeapObjectSlotEEEN4heap4base18SlotCallbackResultET_NS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(2372) %i.boi, i64 %.sroa.014.025.i.i559, i64 %i.boh) ; 0 uses
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i560

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i560: ; preds = %bb.jv, %bb.ju, %.lr.ph.i.i558
  %i.bok = add i64 %.sroa.014.025.i.i559, 8       ; 2 uses
  %i.bol = icmp ult i64 %i.bok, %i.bnw
  br i1 %i.bol, label %.lr.ph.i.i558, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !8

bb.jw:                                            ; preds = %bb.i
  %i.bom = add i64 %i.am, 7                       ; 2 uses
  %i.bon = add i64 %i.am, 23                      ; 2 uses
  %i.boo = icmp ult i64 %i.bom, %i.bon
  br i1 %i.boo, label %.lr.ph.i.i564, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i564:                                    ; preds = %bb.jw, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i566
  %.sroa.014.025.i.i565 = phi i64 [ %i.bpb, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i566 ], [ %i.bom, %bb.jw ] ; 3 uses
  %i.bop = inttoptr i64 %.sroa.014.025.i.i565 to ptr
  %i.boq = load atomic volatile i64, ptr %i.bop monotonic, align 8 ; 4 uses
  %i.bor = trunc i64 %i.boq to i1
  %i.bos = and i64 %i.boq, 4294967295
  %i.bot = icmp ne i64 %i.bos, 3
  %i.bou = and i1 %i.bot, %i.bor
  br i1 %i.bou, label %bb.jx, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i566

bb.jx:                                            ; preds = %.lr.ph.i.i564
  %i.bov = and i64 %i.boq, -262144
  %i.bow = inttoptr i64 %i.bov to ptr
  %.sroa.0.0.copyload.i.i.i.i567 = load i64, ptr %i.bow, align 262144
end_hunk_0
begin_hunk_1_@_ZN2v88internal9Scavenger7ProcessEPNS_11JobDelegateE:bb.a
  br i1 %i.bdq, label %.lr.ph.i.i.i509, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !4

bb.ir:                                            ; preds = %bb.h
  %i.bdr = add i64 %i.ax, 7
  %i.bds = inttoptr i64 %i.bdr to ptr             ; 2 uses
  %i.bdt = load atomic volatile i8, ptr %i.bds monotonic, align 1 ; 0 uses
  %i.bdu = add i64 %i.ax, 9
  %i.bdv = inttoptr i64 %i.bdu to ptr
  %i.bdw = load atomic volatile i8, ptr %i.bdv monotonic, align 1 ; 2 uses
  %i.bdx = icmp ult i8 %i.bdw, 3
  br i1 %i.bdx, label %bb.is, label %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit522

bb.is:                                            ; preds = %bb.ir
  %i.bdy = load atomic volatile i8, ptr %i.bds monotonic, align 1
  br label %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit522

_ZNK2v88internal3Map16UsedInstanceSizeEv.exit522: ; preds = %bb.ir, %bb.is
  %.0.in.in.i519 = phi i8 [ %i.bdy, %bb.is ], [ %i.bdw, %bb.ir ]
  %.0.in.i520 = zext i8 %.0.in.in.i519 to i64
  %.0.i521 = shl nuw nsw i64 %.0.in.i520, 3
  %i.bdz = add i64 %i.au, 7                       ; 2 uses
  %i.bea = add i64 %i.au, 47                      ; 3 uses
  %i.beb = icmp ult i64 %i.bdz, %i.bea
  br i1 %i.beb, label %.lr.ph.i.i529, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_15ScavengeVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit.i523

.lr.ph.i.i529:                                    ; preds = %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit522, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i531
  %.sroa.020.030.i.i530 = phi i64 [ %i.bek, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i531 ], [ %i.bdz, %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit522 ] ; 3 uses
  %i.bec = inttoptr i64 %.sroa.020.030.i.i530 to ptr
  %i.bed = load atomic volatile i64, ptr %i.bec monotonic, align 8 ; 3 uses
  %i.bee = trunc i64 %i.bed to i1
  br i1 %i.bee, label %bb.it, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i531

bb.it:                                            ; preds = %.lr.ph.i.i529
  %i.bef = and i64 %i.bed, -262144
  %i.beg = inttoptr i64 %i.bef to ptr
  %.sroa.0.0.copyload.i.i.i.i532 = load i64, ptr %i.beg, align 262144
  %i.beh = and i64 %.sroa.0.0.copyload.i.i.i.i532, 24
  %.not.i.i533 = icmp eq i64 %i.beh, 0
  br i1 %.not.i.i533, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i531, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.bei = load ptr, ptr %i.h, align 8
  %i.bej = call noundef i32 @_ZN2v88internal9Scavenger14ScavengeObjectINS0_18FullHeapObjectSlotEEEN4heap4base18SlotCallbackResultET_NS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(2372) %i.bei, i64 %.sroa.020.030.i.i530, i64 %i.bed) ; 0 uses
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i531

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i531: ; preds = %bb.iu, %bb.it, %.lr.ph.i.i529
  %i.bek = add i64 %.sroa.020.030.i.i530, 8       ; 2 uses
  %i.bel = icmp ult i64 %i.bek, %i.bea
  br i1 %i.bel, label %.lr.ph.i.i529, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_15ScavengeVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit.i523, !llvm.loop !4

_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_15ScavengeVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit.i523: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i531, %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit522
  %i.bem = add i64 %i.au, 55                      ; 3 uses
  %i.ben = load ptr, ptr %12, align 8
  %i.beo = getelementptr inbounds nuw i8, ptr %i.ben, i64 16
  %i.bep = load ptr, ptr %i.beo, align 8
  call void %i.bep(ptr noundef nonnull align 8 dereferenceable(16) %12, i64 %i.au, i64 %i.bea, i64 %i.bem) #25, !inline_history !31
  %i.beq = add i64 %.0.i521, %i.av                ; 2 uses
  %i.ber = icmp ult i64 %i.bem, %i.beq
  br i1 %i.ber, label %.lr.ph.i.i.i524, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i.i524:                                  ; preds = %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_15ScavengeVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit.i523, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i526
  %.sroa.020.030.i.i.i525 = phi i64 [ %i.bfa, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i526 ], [ %i.bem, %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_15ScavengeVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit.i523 ] ; 3 uses
  %i.bes = inttoptr i64 %.sroa.020.030.i.i.i525 to ptr
  %i.bet = load atomic volatile i64, ptr %i.bes monotonic, align 8 ; 3 uses
  %i.beu = trunc i64 %i.bet to i1
  br i1 %i.beu, label %bb.iv, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i526

bb.iv:                                            ; preds = %.lr.ph.i.i.i524
  %i.bev = and i64 %i.bet, -262144
  %i.bew = inttoptr i64 %i.bev to ptr
  %.sroa.0.0.copyload.i.i.i.i.i527 = load i64, ptr %i.bew, align 262144
  %i.bex = and i64 %.sroa.0.0.copyload.i.i.i.i.i527, 24
  %.not.i.i.i528 = icmp eq i64 %i.bex, 0
  br i1 %.not.i.i.i528, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i526, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.bey = load ptr, ptr %i.h, align 8
  %i.bez = call noundef i32 @_ZN2v88internal9Scavenger14ScavengeObjectINS0_18FullHeapObjectSlotEEEN4heap4base18SlotCallbackResultET_NS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(2372) %i.bey, i64 %.sroa.020.030.i.i.i525, i64 %i.bet) ; 0 uses
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i526

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i526: ; preds = %bb.iw, %bb.iv, %.lr.ph.i.i.i524
  %i.bfa = add i64 %.sroa.020.030.i.i.i525, 8     ; 2 uses
  %i.bfb = icmp ult i64 %i.bfa, %i.beq
  br i1 %i.bfb, label %.lr.ph.i.i.i524, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !4

bb.ix:                                            ; preds = %bb.h
  %i.bfc = add i64 %i.au, 7                       ; 3 uses
  %i.bfd = inttoptr i64 %i.bfc to ptr
  %i.bfe = load i64, ptr %i.bfd, align 8
  %i.bff = shl i64 %i.bfe, 3
  %i.bfg = and i64 %i.bff, -34359738368
  %sext1995 = add i64 %i.bfg, 68719476736
  %i.bfh = ashr exact i64 %sext1995, 32
  %i.bfi = add i64 %i.bfh, %i.av                  ; 2 uses
  %i.bfj = icmp ult i64 %i.bfc, %i.bfi
  br i1 %i.bfj, label %.lr.ph.i.i537, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i537:                                    ; preds = %bb.ix, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i539
  %.sroa.020.030.i.i538 = phi i64 [ %i.bfs, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i539 ], [ %i.bfc, %bb.ix ] ; 3 uses
  %i.bfk = inttoptr i64 %.sroa.020.030.i.i538 to ptr
  %i.bfl = load atomic volatile i64, ptr %i.bfk monotonic, align 8 ; 3 uses
  %i.bfm = trunc i64 %i.bfl to i1
  br i1 %i.bfm, label %bb.iy, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i539

bb.iy:                                            ; preds = %.lr.ph.i.i537
  %i.bfn = and i64 %i.bfl, -262144
  %i.bfo = inttoptr i64 %i.bfn to ptr
  %.sroa.0.0.copyload.i.i.i.i540 = load i64, ptr %i.bfo, align 262144
  %i.bfp = and i64 %.sroa.0.0.copyload.i.i.i.i540, 24
  %.not.i.i541 = icmp eq i64 %i.bfp, 0
  br i1 %.not.i.i541, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i539, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.bfq = load ptr, ptr %i.h, align 8
  %i.bfr = call noundef i32 @_ZN2v88internal9Scavenger14ScavengeObjectINS0_18FullHeapObjectSlotEEEN4heap4base18SlotCallbackResultET_NS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(2372) %i.bfq, i64 %.sroa.020.030.i.i538, i64 %i.bfl) ; 0 uses
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i539

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i539: ; preds = %bb.iz, %bb.iy, %.lr.ph.i.i537
  %i.bfs = add i64 %.sroa.020.030.i.i538, 8       ; 2 uses
  %i.bft = icmp ult i64 %i.bfs, %i.bfi
  br i1 %i.bft, label %.lr.ph.i.i537, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !4

bb.ja:                                            ; preds = %bb.h
  %i.bfu = add i64 %i.au, 7                       ; 2 uses
  %i.bfv = add i64 %i.au, 31                      ; 2 uses
  %i.bfw = icmp ult i64 %i.bfu, %i.bfv
  br i1 %i.bfw, label %.lr.ph.i.i.i543, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i.i543:                                  ; preds = %bb.ja, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i545
  %.sroa.020.030.i.i.i544 = phi i64 [ %i.bgf, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i545 ], [ %i.bfu, %bb.ja ] ; 3 uses
  %i.bfx = inttoptr i64 %.sroa.020.030.i.i.i544 to ptr
  %i.bfy = load atomic volatile i64, ptr %i.bfx monotonic, align 8 ; 3 uses
  %i.bfz = trunc i64 %i.bfy to i1
  br i1 %i.bfz, label %bb.jb, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i545

bb.jb:                                            ; preds = %.lr.ph.i.i.i543
  %i.bga = and i64 %i.bfy, -262144
  %i.bgb = inttoptr i64 %i.bga to ptr
  %.sroa.0.0.copyload.i.i.i.i.i546 = load i64, ptr %i.bgb, align 262144
  %i.bgc = and i64 %.sroa.0.0.copyload.i.i.i.i.i546, 24
  %.not.i.i.i547 = icmp eq i64 %i.bgc, 0
  br i1 %.not.i.i.i547, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i545, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.bgd = load ptr, ptr %i.h, align 8
  %i.bge = call noundef i32 @_ZN2v88internal9Scavenger14ScavengeObjectINS0_18FullHeapObjectSlotEEEN4heap4base18SlotCallbackResultET_NS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(2372) %i.bgd, i64 %.sroa.020.030.i.i.i544, i64 %i.bfy) ; 0 uses
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i545

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i545: ; preds = %bb.jc, %bb.jb, %.lr.ph.i.i.i543
  %i.bgf = add i64 %.sroa.020.030.i.i.i544, 8     ; 2 uses
  %i.bgg = icmp ult i64 %i.bgf, %i.bfv
  br i1 %i.bgg, label %.lr.ph.i.i.i543, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !4

bb.jd:                                            ; preds = %bb.h
  %i.bgh = add i64 %i.au, 7                       ; 3 uses
  %i.bgi = inttoptr i64 %i.bgh to ptr
  %i.bgj = load atomic volatile i64, ptr %i.bgi monotonic, align 8
  %i.bgk = shl i64 %i.bgj, 3
  %i.bgl = and i64 %i.bgk, -34359738368
  %sext1994 = add i64 %i.bgl, 103079215104
  %i.bgm = ashr exact i64 %sext1994, 32
  %i.bgn = add i64 %i.bgm, %i.av                  ; 2 uses
  %i.bgo = icmp ult i64 %i.bgh, %i.bgn
  br i1 %i.bgo, label %.lr.ph.i.i550, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i550:                                    ; preds = %bb.jd, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i552
  %.sroa.014.025.i.i551 = phi i64 [ %i.bhb, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i552 ], [ %i.bgh, %bb.jd ] ; 3 uses
  %i.bgp = inttoptr i64 %.sroa.014.025.i.i551 to ptr
  %i.bgq = load atomic volatile i64, ptr %i.bgp monotonic, align 8 ; 4 uses
  %i.bgr = trunc i64 %i.bgq to i1
  %i.bgs = and i64 %i.bgq, 4294967295
  %i.bgt = icmp ne i64 %i.bgs, 3
  %i.bgu = and i1 %i.bgt, %i.bgr
  br i1 %i.bgu, label %bb.je, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i552

bb.je:                                            ; preds = %.lr.ph.i.i550
  %i.bgv = and i64 %i.bgq, -262144
  %i.bgw = inttoptr i64 %i.bgv to ptr
  %.sroa.0.0.copyload.i.i.i.i553 = load i64, ptr %i.bgw, align 262144
  %i.bgx = and i64 %.sroa.0.0.copyload.i.i.i.i553, 24
  %.not.i.i554 = icmp eq i64 %i.bgx, 0
  br i1 %.not.i.i554, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i552, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.bgy = and i64 %i.bgq, -3
  %i.bgz = load ptr, ptr %i.h, align 8
  %i.bha = call noundef i32 @_ZN2v88internal9Scavenger14ScavengeObjectINS0_18FullHeapObjectSlotEEEN4heap4base18SlotCallbackResultET_NS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(2372) %i.bgz, i64 %.sroa.014.025.i.i551, i64 %i.bgy) ; 0 uses
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i552

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i552: ; preds = %bb.jf, %bb.je, %.lr.ph.i.i550
  %i.bhb = add i64 %.sroa.014.025.i.i551, 8       ; 2 uses
  %i.bhc = icmp ult i64 %i.bhb, %i.bgn
  br i1 %i.bhc, label %.lr.ph.i.i550, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !8

bb.jg:                                            ; preds = %bb.h
  %i.bhd = add i64 %i.au, 7
  %i.bhe = inttoptr i64 %i.bhd to ptr             ; 9 uses
  %i.bhf = load atomic volatile i32, ptr %i.bhe monotonic, align 4, !noalias !144
  %i.bhg = add i64 %i.au, 23
  %i.bhh = inttoptr i64 %i.bhg to ptr
  %i.bhi = load i64, ptr %i.bhh, align 8, !noalias !145 ; 2 uses
  %i.bhj = load atomic volatile i32, ptr %i.bhe monotonic, align 4, !noalias !146
  %i.bhk = load atomic volatile i32, ptr %i.bhe monotonic, align 4, !noalias !147
  %i.bhl = load atomic volatile i32, ptr %i.bhe monotonic, align 4, !noalias !148
  %i.bhm = load atomic volatile i32, ptr %i.bhe monotonic, align 4, !noalias !149
  %i.bhn = load atomic volatile i32, ptr %i.bhe monotonic, align 4, !noalias !150
  %i.bho = load atomic volatile i32, ptr %i.bhe monotonic, align 4, !noalias !151
  %i.bhp = and i32 %i.bho, 15
  %i.bhq = icmp eq i32 %i.bhp, 5
  br i1 %i.bhq, label %bb.jh, label %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit

bb.jh:                                            ; preds = %bb.jg
  %i.bhr = load atomic volatile i32, ptr %i.bhe monotonic, align 4, !noalias !152
  %i.bhs = and i32 %i.bhr, 15
  %i.bht = icmp eq i32 %i.bhs, 5
  br i1 %i.bht, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jh
  %i.bhu = add i64 %i.au, 47
  %i.bhv = inttoptr i64 %i.bhu to ptr
  %i.bhw = load i64, ptr %i.bhv, align 8, !noalias !151
  %i.bhx = ashr i64 %i.bhw, 32
  %i.bhy = mul nsw i64 %i.bhx, 24
  br label %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit

bb.jj:                                            ; preds = %bb.jh
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.182) #26, !noalias !151
  unreachable

_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit: ; preds = %bb.jg, %bb.ji
  %storemerge.i.i.i.i = phi i64 [ %i.bhy, %bb.ji ], [ 0, %bb.jg ]
  %i.bhz = and i32 %i.bhn, 15
  %i.bia = icmp eq i32 %i.bhz, 5
  %i.bib = select i1 %i.bia, i64 8, i64 0
  %13 = ashr i64 %i.bhi, 29
  %14 = and i64 %13, -8                           ; 2 uses
  %i.bic = and i32 %i.bhf, 15
  %i.bid = icmp eq i32 %i.bic, 5
  %i.bie = select i1 %i.bid, i64 56, i64 48
  %i.bif = add nsw i64 %14, %i.bie
  %15 = icmp sgt i64 %i.bhi, 322122547199
  %i.big = select i1 %15, i64 8, i64 %14
  %i.bih = add nsw i64 %i.bif, %i.big
  %i.bii = lshr i32 %i.bhj, 7
  %i.bij = and i32 %i.bii, 8
  %i.bik = zext nneg i32 %i.bij to i64
  %i.bil = add nsw i64 %i.bih, %i.bik
  %i.bim = and i32 %i.bhk, 12288
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.bim, 0
  %i.bin = select i1 %.not.i.not.i.i.i.i.i.i.i, i64 0, i64 16
  %i.bio = add nsw i64 %i.bil, %i.bin
  %i.bip = lshr i32 %i.bhl, 11
  %i.biq = and i32 %i.bip, 8
  %i.bir = zext nneg i32 %i.biq to i64
  %i.bis = add nsw i64 %i.bio, %i.bir
  %i.bit = lshr i32 %i.bhm, 19
  %i.biu = and i32 %i.bit, 8
  %i.biv = zext nneg i32 %i.biu to i64
  %i.biw = add nsw i64 %i.bis, %i.biv
  %i.bix = add nsw i64 %i.biw, %i.bib
  %i.biy = add nsw i64 %i.bix, %storemerge.i.i.i.i
  %i.biz = load atomic volatile i32, ptr %i.bhe monotonic, align 4, !noalias !153
  %i.bja = trunc i64 %i.biy to i32
  %i.bjb = lshr i32 %i.biz, 1
  %i.bjc = and i32 %i.bjb, 8
  %i.bjd = add nsw i32 %i.bjc, %i.bja
  %i.bje = add i64 %i.au, 15                      ; 2 uses
  %i.bjf = sext i32 %i.bjd to i64
  %i.bjg = add i64 %i.av, %i.bjf                  ; 2 uses
  %i.bjh = icmp ult i64 %i.bje, %i.bjg
  br i1 %i.bjh, label %.lr.ph.i.i557, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i557:                                    ; preds = %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i559
  %.sroa.020.030.i.i558 = phi i64 [ %i.bjq, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i559 ], [ %i.bje, %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit ] ; 3 uses
  %i.bji = inttoptr i64 %.sroa.020.030.i.i558 to ptr
  %i.bjj = load atomic volatile i64, ptr %i.bji monotonic, align 8 ; 3 uses
  %i.bjk = trunc i64 %i.bjj to i1
  br i1 %i.bjk, label %bb.jk, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i559

bb.jk:                                            ; preds = %.lr.ph.i.i557
  %i.bjl = and i64 %i.bjj, -262144
  %i.bjm = inttoptr i64 %i.bjl to ptr
  %.sroa.0.0.copyload.i.i.i.i560 = load i64, ptr %i.bjm, align 262144
  %i.bjn = and i64 %.sroa.0.0.copyload.i.i.i.i560, 24
  %.not.i.i561 = icmp eq i64 %i.bjn, 0
  br i1 %.not.i.i561, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i559, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.bjo = load ptr, ptr %i.h, align 8
  %i.bjp = call noundef i32 @_ZN2v88internal9Scavenger14ScavengeObjectINS0_18FullHeapObjectSlotEEEN4heap4base18SlotCallbackResultET_NS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(2372) %i.bjo, i64 %.sroa.020.030.i.i558, i64 %i.bjj) ; 0 uses
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i559

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i559: ; preds = %bb.jl, %bb.jk, %.lr.ph.i.i557
  %i.bjq = add i64 %.sroa.020.030.i.i558, 8       ; 2 uses
  %i.bjr = icmp ult i64 %i.bjq, %i.bjg
  br i1 %i.bjr, label %.lr.ph.i.i557, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !4

bb.jm:                                            ; preds = %bb.h
  %i.bjs = add i64 %i.au, 7
  %i.bjt = inttoptr i64 %i.bjs to ptr
  %i.bju = load i16, ptr %i.bjt, align 2
  %i.bjv = zext i16 %i.bju to i64
  %i.bjw = mul nuw nsw i64 %i.bjv, 24
  %i.bjx = add i64 %i.au, 23                      ; 2 uses
  %i.bjy = add i64 %i.au, 31
  %i.bjz = add i64 %i.bjy, %i.bjw                 ; 2 uses
  %i.bka = icmp ult i64 %i.bjx, %i.bjz
  br i1 %i.bka, label %.lr.ph.i.i563, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i563:                                    ; preds = %bb.jm, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i565
  %.sroa.014.025.i.i564 = phi i64 [ %i.bkn, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i565 ], [ %i.bjx, %bb.jm ] ; 3 uses
  %i.bkb = inttoptr i64 %.sroa.014.025.i.i564 to ptr
  %i.bkc = load atomic volatile i64, ptr %i.bkb monotonic, align 8 ; 4 uses
  %i.bkd = trunc i64 %i.bkc to i1
  %i.bke = and i64 %i.bkc, 4294967295
  %i.bkf = icmp ne i64 %i.bke, 3
  %i.bkg = and i1 %i.bkf, %i.bkd
  br i1 %i.bkg, label %bb.jn, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i565

bb.jn:                                            ; preds = %.lr.ph.i.i563
  %i.bkh = and i64 %i.bkc, -262144
  %i.bki = inttoptr i64 %i.bkh to ptr
  %.sroa.0.0.copyload.i.i.i.i566 = load i64, ptr %i.bki, align 262144
  %i.bkj = and i64 %.sroa.0.0.copyload.i.i.i.i566, 24
  %.not.i.i567 = icmp eq i64 %i.bkj, 0
  br i1 %.not.i.i567, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i565, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.bkk = and i64 %i.bkc, -3
  %i.bkl = load ptr, ptr %i.h, align 8
  %i.bkm = call noundef i32 @_ZN2v88internal9Scavenger14ScavengeObjectINS0_18FullHeapObjectSlotEEEN4heap4base18SlotCallbackResultET_NS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(2372) %i.bkl, i64 %.sroa.014.025.i.i564, i64 %i.bkk) ; 0 uses
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i565

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i565: ; preds = %bb.jo, %bb.jn, %.lr.ph.i.i563
  %i.bkn = add i64 %.sroa.014.025.i.i564, 8       ; 2 uses
  %i.bko = icmp ult i64 %i.bkn, %i.bjz
  br i1 %i.bko, label %.lr.ph.i.i563, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !8

bb.jp:                                            ; preds = %bb.h
  %i.bkp = add i64 %i.au, 7
  %i.bkq = inttoptr i64 %i.bkp to ptr
  %i.bkr = load atomic volatile i16, ptr %i.bkq monotonic, align 2
  %i.bks = sext i16 %i.bkr to i64
  %i.bkt = mul nsw i64 %i.bks, 24
  %i.bku = add i64 %i.au, 23                      ; 2 uses
  %i.bkv = add i64 %i.au, 31
  %i.bkw = add i64 %i.bkv, %i.bkt                 ; 2 uses
  %i.bkx = icmp ult i64 %i.bku, %i.bkw
  br i1 %i.bkx, label %.lr.ph.i.i568, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i568:                                    ; preds = %bb.jp, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i570
  %.sroa.014.025.i.i569 = phi i64 [ %i.blk, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i570 ], [ %i.bku, %bb.jp ] ; 3 uses
  %i.bky = inttoptr i64 %.sroa.014.025.i.i569 to ptr
  %i.bkz = load atomic volatile i64, ptr %i.bky monotonic, align 8 ; 4 uses
  %i.bla = trunc i64 %i.bkz to i1
  %i.blb = and i64 %i.bkz, 4294967295
  %i.blc = icmp ne i64 %i.blb, 3
  %i.bld = and i1 %i.blc, %i.bla
  br i1 %i.bld, label %bb.jq, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i570

bb.jq:                                            ; preds = %.lr.ph.i.i568
  %i.ble = and i64 %i.bkz, -262144
  %i.blf = inttoptr i64 %i.ble to ptr
  %.sroa.0.0.copyload.i.i.i.i571 = load i64, ptr %i.blf, align 262144
  %i.blg = and i64 %.sroa.0.0.copyload.i.i.i.i571, 24
  %.not.i.i572 = icmp eq i64 %i.blg, 0
  br i1 %.not.i.i572, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i570, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.blh = and i64 %i.bkz, -3
  %i.bli = load ptr, ptr %i.h, align 8
  %i.blj = call noundef i32 @_ZN2v88internal9Scavenger14ScavengeObjectINS0_18FullHeapObjectSlotEEEN4heap4base18SlotCallbackResultET_NS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(2372) %i.bli, i64 %.sroa.014.025.i.i569, i64 %i.blh) ; 0 uses
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i570

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i570: ; preds = %bb.jr, %bb.jq, %.lr.ph.i.i568
  %i.blk = add i64 %.sroa.014.025.i.i569, 8       ; 2 uses
  %i.bll = icmp ult i64 %i.blk, %i.bkw
  br i1 %i.bll, label %.lr.ph.i.i568, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !8

bb.js:                                            ; preds = %bb.h
  %i.blm = add i64 %i.au, 7
  %i.bln = inttoptr i64 %i.blm to ptr
  %i.blo = load i32, ptr %i.bln, align 4
  %i.blp = shl nsw i32 %i.blo, 3
  %i.blq = add nsw i32 %i.blp, 48
  %i.blr = add i64 %i.au, 23                      ; 2 uses
  %i.bls = sext i32 %i.blq to i64
  %i.blt = add i64 %i.av, %i.bls                  ; 2 uses
  %i.blu = icmp ult i64 %i.blr, %i.blt
  br i1 %i.blu, label %.lr.ph.i.i574, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i574:                                    ; preds = %bb.js, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i576
  %.sroa.014.025.i.i575 = phi i64 [ %i.bmh, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i576 ], [ %i.blr, %bb.js ] ; 3 uses
  %i.blv = inttoptr i64 %.sroa.014.025.i.i575 to ptr
  %i.blw = load atomic volatile i64, ptr %i.blv monotonic, align 8 ; 4 uses
  %i.blx = trunc i64 %i.blw to i1
  %i.bly = and i64 %i.blw, 4294967295
  %i.blz = icmp ne i64 %i.bly, 3
  %i.bma = and i1 %i.blz, %i.blx
  br i1 %i.bma, label %bb.jt, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i576

bb.jt:                                            ; preds = %.lr.ph.i.i574
  %i.bmb = and i64 %i.blw, -262144
  %i.bmc = inttoptr i64 %i.bmb to ptr
  %.sroa.0.0.copyload.i.i.i.i577 = load i64, ptr %i.bmc, align 262144
  %i.bmd = and i64 %.sroa.0.0.copyload.i.i.i.i577, 24
  %.not.i.i578 = icmp eq i64 %i.bmd, 0
  br i1 %.not.i.i578, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i576, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.bme = and i64 %i.blw, -3
  %i.bmf = load ptr, ptr %i.h, align 8
  %i.bmg = call noundef i32 @_ZN2v88internal9Scavenger14ScavengeObjectINS0_18FullHeapObjectSlotEEEN4heap4base18SlotCallbackResultET_NS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(2372) %i.bmf, i64 %.sroa.014.025.i.i575, i64 %i.bme) ; 0 uses
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i576

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i576: ; preds = %bb.ju, %bb.jt, %.lr.ph.i.i574
  %i.bmh = add i64 %.sroa.014.025.i.i575, 8       ; 2 uses
  %i.bmi = icmp ult i64 %i.bmh, %i.blt
  br i1 %i.bmi, label %.lr.ph.i.i574, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !8

bb.jv:                                            ; preds = %bb.h
  %i.bmj = add i64 %i.au, 7                       ; 2 uses
  %i.bmk = add i64 %i.au, 23                      ; 2 uses
  %i.bml = icmp ult i64 %i.bmj, %i.bmk
  br i1 %i.bml, label %.lr.ph.i.i580, label %_ZN2v88internal11HeapVisitorINS0_15ScavengeVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i580:                                    ; preds = %bb.jv, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i582
  %.sroa.014.025.i.i581 = phi i64 [ %i.bmy, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i582 ], [ %i.bmj, %bb.jv ] ; 3 uses
  %i.bmm = inttoptr i64 %.sroa.014.025.i.i581 to ptr
  %i.bmn = load atomic volatile i64, ptr %i.bmm monotonic, align 8 ; 4 uses
  %i.bmo = trunc i64 %i.bmn to i1
  %i.bmp = and i64 %i.bmn, 4294967295
  %i.bmq = icmp ne i64 %i.bmp, 3
  %i.bmr = and i1 %i.bmq, %i.bmo
  br i1 %i.bmr, label %bb.jw, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i582

bb.jw:                                            ; preds = %.lr.ph.i.i580
  %i.bms = and i64 %i.bmn, -262144
  %i.bmt = inttoptr i64 %i.bms to ptr
  %.sroa.0.0.copyload.i.i.i.i583 = load i64, ptr %i.bmt, align 262144
  %i.bmu = and i64 %.sroa.0.0.copyload.i.i.i.i583, 24
  %.not.i.i584 = icmp eq i64 %i.bmu, 0
end_hunk_1

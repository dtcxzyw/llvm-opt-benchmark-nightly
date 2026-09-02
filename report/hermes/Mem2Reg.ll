Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Mem2Reg?download=true
inline.NumInlined: 2091
inline.NumDeleted: 876
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN6hermes7Mem2Reg13runOnFunctionEPNS_8FunctionE:bb.a
  %i.bsi = phi ptr [ %i.bss, %bb.iu ], [ %i.bsg, %bb.is ] ; 2 uses
  %i.bsj = phi ptr [ %i.bsr, %bb.iu ], [ %i.bsf, %bb.is ] ; 2 uses
  %.02747.i.i.i272 = phi i32 [ %.027.i.i.i277, %bb.iu ], [ %.02744.i.i.i270, %bb.is ]
  %.046.i.i.i273 = phi i32 [ %i.bso, %bb.iu ], [ 1, %bb.is ] ; 2 uses
  %.02945.i.i.i274 = phi ptr [ %spec.select.i.i.i276, %bb.iu ], [ null, %bb.is ] ; 4 uses
  %i.bsk = icmp eq ptr %i.bsi, inttoptr (i64 -8 to ptr)
  br i1 %i.bsk, label %bb.it, label %bb.iu, !prof !29

bb.it:                                            ; preds = %.lr.ph.i.i.i271
  %.not.i.i.i280 = icmp eq ptr %.02945.i.i.i274, null
  %i.bsl = select i1 %.not.i.i.i280, ptr %i.bsj, ptr %.02945.i.i.i274
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i

bb.iu:                                            ; preds = %.lr.ph.i.i.i271
  %i.bsm = icmp eq ptr %i.bsi, inttoptr (i64 -16 to ptr)
  %i.bsn = icmp eq ptr %.02945.i.i.i274, null
  %or.cond.not.i.i.i275 = select i1 %i.bsm, i1 %i.bsn, i1 false
  %spec.select.i.i.i276 = select i1 %or.cond.not.i.i.i275, ptr %i.bsj, ptr %.02945.i.i.i274
  %i.bso = add i32 %.046.i.i.i273, 1
  %i.bsp = add i32 %.046.i.i.i273, %.02747.i.i.i272
  %.027.i.i.i277 = and i32 %i.bsp, %i.bsd         ; 2 uses
  %i.bsq = zext i32 %.027.i.i.i277 to i64
  %i.bsr = getelementptr inbounds nuw [16 x i8], ptr %i.brv, i64 %i.bsq ; 3 uses
  %i.bss = load ptr, ptr %i.bsr, align 8, !tbaa !139 ; 2 uses
  %i.bst = icmp eq ptr %i.bru, %i.bss
  br i1 %i.bst, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit, label %.lr.ph.i.i.i271, !prof !38, !llvm.loop !10

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i: ; preds = %bb.it, %.lr.ph396.i
  %.sink.i.i.i281 = phi ptr [ %i.bsl, %bb.it ], [ null, %.lr.ph396.i ]
  %i.bsu = load i32, ptr %i.apa, align 8, !tbaa !183 ; 3 uses
  %i.bsv = shl i32 %i.bsu, 2
  %i.bsw = add i32 %i.bsv, 4
  %i.bsx = mul i32 %i.brw, 3
  %.not.i.i4.i282 = icmp ult i32 %i.bsw, %i.bsx
  br i1 %.not.i.i4.i282, label %bb.iw, label %bb.iv, !prof !29

bb.iv:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i
  %i.bsy = shl i32 %i.brw, 1
  br label %.sink.split.i.i.i283

bb.iw:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i
  %i.bsz = load i32, ptr %i.apb, align 4, !tbaa !184
  %.neg.i.i.i287 = xor i32 %i.bsu, -1
  %.neg12.i.i.i288 = add i32 %i.brw, %.neg.i.i.i287
  %i.bta = sub i32 %.neg12.i.i.i288, %i.bsz
  %i.btb = lshr i32 %i.brw, 3
  %.not10.i.i.i289 = icmp ugt i32 %i.bta, %i.btb
  br i1 %.not10.i.i.i289, label %bb.ja, label %.sink.split.i.i.i283, !prof !29

.sink.split.i.i.i283:                             ; preds = %bb.iw, %bb.iv
  %.sink.i.i5.i284 = phi i32 [ %i.bsy, %bb.iv ], [ %i.brw, %bb.iw ]
  call void @_ZN4llvh8DenseMapIPN6hermes10BasicBlockEPNS1_11InstructionENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %7, i32 noundef %.sink.i.i5.i284)
  %i.btc = load ptr, ptr %7, align 8, !tbaa !181  ; 2 uses
  %i.btd = load i32, ptr %i.aoz, align 8, !tbaa !182 ; 2 uses
  %i.bte = icmp eq i32 %i.btd, 0
  br i1 %i.bte, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, label %bb.ix

bb.ix:                                            ; preds = %.sink.split.i.i.i283
  %i.btf = ptrtoint ptr %i.bru to i64
  %i.btg = trunc i64 %i.btf to i32                ; 2 uses
  %i.bth = lshr i32 %i.btg, 4
  %i.bti = lshr i32 %i.btg, 9
  %i.btj = xor i32 %i.bth, %i.bti
  %i.btk = add i32 %i.btd, -1                     ; 2 uses
  %.02744.i.i410 = and i32 %i.btk, %i.btj         ; 2 uses
  %i.btl = zext nneg i32 %.02744.i.i410 to i64
  %i.btm = getelementptr inbounds nuw [16 x i8], ptr %i.btc, i64 %i.btl ; 3 uses
  %i.btn = load ptr, ptr %i.btm, align 8, !tbaa !139 ; 2 uses
  %i.bto = icmp eq ptr %i.bru, %i.btn
  br i1 %i.bto, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, label %.lr.ph.i.i411, !prof !37

.lr.ph.i.i411:                                    ; preds = %bb.ix, %bb.iz
  %i.btp = phi ptr [ %i.btz, %bb.iz ], [ %i.btn, %bb.ix ] ; 2 uses
  %i.btq = phi ptr [ %i.bty, %bb.iz ], [ %i.btm, %bb.ix ] ; 2 uses
  %.02747.i.i412 = phi i32 [ %.027.i.i417, %bb.iz ], [ %.02744.i.i410, %bb.ix ]
  %.046.i.i413 = phi i32 [ %i.btv, %bb.iz ], [ 1, %bb.ix ] ; 2 uses
  %.02945.i.i414 = phi ptr [ %spec.select.i.i416, %bb.iz ], [ null, %bb.ix ] ; 4 uses
  %i.btr = icmp eq ptr %i.btp, inttoptr (i64 -8 to ptr)
  br i1 %i.btr, label %bb.iy, label %bb.iz, !prof !29

bb.iy:                                            ; preds = %.lr.ph.i.i411
  %.not.i.i420 = icmp eq ptr %.02945.i.i414, null
  %i.bts = select i1 %.not.i.i420, ptr %i.btq, ptr %.02945.i.i414
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit

bb.iz:                                            ; preds = %.lr.ph.i.i411
  %i.btt = icmp eq ptr %i.btp, inttoptr (i64 -16 to ptr)
  %i.btu = icmp eq ptr %.02945.i.i414, null
  %or.cond.not.i.i415 = select i1 %i.btt, i1 %i.btu, i1 false
  %spec.select.i.i416 = select i1 %or.cond.not.i.i415, ptr %i.btq, ptr %.02945.i.i414
  %i.btv = add i32 %.046.i.i413, 1
  %i.btw = add i32 %.046.i.i413, %.02747.i.i412
  %.027.i.i417 = and i32 %i.btw, %i.btk           ; 2 uses
  %i.btx = zext i32 %.027.i.i417 to i64
  %i.bty = getelementptr inbounds nuw [16 x i8], ptr %i.btc, i64 %i.btx ; 3 uses
  %i.btz = load ptr, ptr %i.bty, align 8, !tbaa !139 ; 2 uses
  %i.bua = icmp eq ptr %i.bru, %i.btz
  br i1 %i.bua, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, label %.lr.ph.i.i411, !prof !38, !llvm.loop !10

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit: ; preds = %bb.iz, %.sink.split.i.i.i283, %bb.ix, %bb.iy
  %.sink.i.i418 = phi ptr [ %i.bts, %bb.iy ], [ null, %.sink.split.i.i.i283 ], [ %i.btm, %bb.ix ], [ %i.bty, %bb.iz ]
  %.pre.i.i285 = load i32, ptr %i.apa, align 8, !tbaa !183
  br label %bb.ja

bb.ja:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, %bb.iw
  %i.bub = phi ptr [ %.sink.i.i418, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit ], [ %.sink.i.i.i281, %bb.iw ] ; 4 uses
  %i.buc = phi i32 [ %.pre.i.i285, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit ], [ %i.bsu, %bb.iw ]
  %i.bud = add i32 %i.buc, 1
  store i32 %i.bud, ptr %i.apa, align 8, !tbaa !183
  %i.bue = load ptr, ptr %i.bub, align 8, !tbaa !139
  %i.buf = icmp eq ptr %i.bue, inttoptr (i64 -8 to ptr)
  br i1 %i.buf, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.bug = load i32, ptr %i.apb, align 4, !tbaa !184
  %i.buh = add i32 %i.bug, -1
  store i32 %i.buh, ptr %i.apb, align 4, !tbaa !184
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i: ; preds = %bb.jb, %bb.ja
  store ptr %i.bru, ptr %i.bub, align 8, !tbaa !139
  %i.bui = getelementptr inbounds nuw i8, ptr %i.bub, i64 8
  store ptr null, ptr %i.bui, align 8, !tbaa !64
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit: ; preds = %bb.iu, %bb.is, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i
  %.0.i279 = phi ptr [ %i.bub, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i ], [ %i.bsf, %bb.is ], [ %i.bsr, %bb.iu ]
  %i.buj = getelementptr inbounds nuw i8, ptr %.0.i279, i64 8
  %i.buk = load ptr, ptr %i.buj, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  %i.bul = getelementptr inbounds nuw i8, ptr %i.bru, i64 24
  %i.bum = load ptr, ptr %i.bul, align 8, !tbaa !25, !noalias !276 ; 4 uses
  %i.bun = getelementptr inbounds nuw i8, ptr %i.bru, i64 32
  %i.buo = load i32, ptr %i.bun, align 8, !tbaa !26, !noalias !276 ; 2 uses
  %i.bup = zext i32 %i.buo to i64                 ; 2 uses
  %.idx.i.i.i161.i = shl nuw nsw i64 %i.bup, 3
  %i.buq = getelementptr i8, ptr %i.bum, i64 %.idx.i.i.i161.i ; 6 uses
  %.not3.i.i.i.i.i = icmp eq i32 %i.buo, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit, %bb.jc
  %.sroa.0.0.i.i.i = phi ptr [ %i.buw, %bb.jc ], [ %i.bum, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit ] ; 3 uses
  %i.bur = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !64, !noalias !276 ; 2 uses
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bur, i64 16
  %i.but = load i8, ptr %i.bus, align 8, !tbaa !65, !noalias !276
  %i.buu = add i8 %i.but, -90
  %i.buv = icmp ult i8 %i.buu, -15
  %.not12.i.i.i.i.i = icmp eq ptr %i.bur, null
  %.not1.i.i.i.i.i = or i1 %.not12.i.i.i.i.i, %i.buv
  br i1 %.not1.i.i.i.i.i, label %bb.jc, label %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i

bb.jc:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.buw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.buw, %i.buq
  br i1 %.not.i.i.i.i.i, label %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !232

_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i: ; preds = %bb.jc, %.lr.ph.i.i.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit
  %.sroa.0.1.i.i.i = phi ptr [ %i.bum, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit ], [ %i.buq, %bb.jc ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.bux = getelementptr inbounds nuw [8 x i8], ptr %i.bum, i64 %i.bup ; 3 uses
  store ptr %i.api, ptr %11, align 8, !tbaa !25
  store i32 0, ptr %i.apj, align 8, !tbaa !26
  store i32 4, ptr %i.apk, align 4, !tbaa !27
  %.not4.i.i.i.i = icmp eq ptr %.sroa.0.1.i.i.i, %i.bux
  br i1 %.not4.i.i.i.i, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EEC2INS1_12PredIteratorIS2_PPNS1_11InstructionEEEEERKNS_14iterator_rangeIT_EE.exit.i, label %.lr.ph.i.i.i165.i

.lr.ph.i.i.i165.i:                                ; preds = %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i, %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i
  %.06.i.i.i.i = phi i64 [ %i.bvf, %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i ], [ 0, %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i ] ; 2 uses
  %.sroa.02.05.i.i.i.i = phi ptr [ %.sroa.02.2.i.i.i.i, %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i ], [ %.sroa.0.1.i.i.i, %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i ]
  %i.buy = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i, i64 8 ; 3 uses
  %.not3.i.i.i.i.i.i = icmp eq ptr %i.buy, %i.buq
  br i1 %.not3.i.i.i.i.i.i, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i165.i, %bb.jd
  %.sroa.02.1.i.i.i.i = phi ptr [ %i.bve, %bb.jd ], [ %i.buy, %.lr.ph.i.i.i165.i ] ; 3 uses
  %i.buz = load ptr, ptr %.sroa.02.1.i.i.i.i, align 8, !tbaa !64 ; 2 uses
  %i.bva = getelementptr inbounds nuw i8, ptr %i.buz, i64 16
  %i.bvb = load i8, ptr %i.bva, align 8, !tbaa !65
  %i.bvc = add i8 %i.bvb, -90
  %i.bvd = icmp ult i8 %i.bvc, -15
  %.not12.i.i.i.i.i.i = icmp eq ptr %i.buz, null
  %.not1.i.i.i.i.i.i = or i1 %.not12.i.i.i.i.i.i, %i.bvd
  br i1 %.not1.i.i.i.i.i.i, label %bb.jd, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i

bb.jd:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bve = getelementptr inbounds nuw i8, ptr %.sroa.02.1.i.i.i.i, i64 8 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bve, %i.buq
  br i1 %.not.i.i.i.i.i.i, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !232

_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i: ; preds = %bb.jd, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i165.i
  %.sroa.02.2.i.i.i.i = phi ptr [ %i.buy, %.lr.ph.i.i.i165.i ], [ %.sroa.02.1.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.bve, %bb.jd ] ; 2 uses
  %i.bvf = add nuw nsw i64 %.06.i.i.i.i, 1        ; 3 uses
  %.not.i.i.i166.i = icmp eq ptr %.sroa.02.2.i.i.i.i, %i.bux
  br i1 %.not.i.i.i166.i, label %_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i.i, label %.lr.ph.i.i.i165.i, !llvm.loop !233

_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i.i: ; preds = %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i
  %.not.i.i167.i = icmp samesign ult i64 %.06.i.i.i.i, 4
  br i1 %.not.i.i167.i, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.api, i64 noundef %i.bvf, i64 noundef 8) #10
  %.pre.i.i168.i = load i32, ptr %i.apj, align 8, !tbaa !26
  %.pre16.i.i.i = zext i32 %.pre.i.i168.i to i64
  %.pre.i169.i = load ptr, ptr %11, align 8, !tbaa !25
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i.i
  %i.bvg = phi ptr [ %.pre.i169.i, %bb.je ], [ %i.api, %_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i.i ] ; 2 uses
  %.pre-phi.i.i.i = phi i64 [ %.pre16.i.i.i, %bb.je ], [ 0, %_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i.i ] ; 2 uses
  %i.bvh = getelementptr inbounds nuw [8 x i8], ptr %i.bvg, i64 %.pre-phi.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i.i, %bb.jf
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.bvs, %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i.i ], [ %i.bvh, %bb.jf ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %.sroa.04.2.i.i.i.i.i.i.i, %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i.i ], [ %.sroa.0.1.i.i.i, %bb.jf ] ; 2 uses
  %i.bvi = load ptr, ptr %.sroa.04.08.i.i.i.i.i.i.i, align 8, !tbaa !64
  %i.bvj = getelementptr inbounds nuw i8, ptr %i.bvi, i64 56
  %i.bvk = load ptr, ptr %i.bvj, align 8, !tbaa !118
  store ptr %i.bvk, ptr %.09.i.i.i.i.i.i.i, align 8, !tbaa !139
  %i.bvl = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 8 ; 3 uses
  %.not3.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bvl, %i.buq
  br i1 %.not3.i.i.i.i.i.i.i.i.i, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.jg
  %.sroa.04.1.i.i.i.i.i.i.i = phi ptr [ %i.bvr, %bb.jg ], [ %i.bvl, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.bvm = load ptr, ptr %.sroa.04.1.i.i.i.i.i.i.i, align 8, !tbaa !64 ; 2 uses
  %i.bvn = getelementptr inbounds nuw i8, ptr %i.bvm, i64 16
  %i.bvo = load i8, ptr %i.bvn, align 8, !tbaa !65
  %i.bvp = add i8 %i.bvo, -90
  %i.bvq = icmp ult i8 %i.bvp, -15
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bvm, null
  %.not1.i.i.i.i.i.i.i.i.i = or i1 %.not12.i.i.i.i.i.i.i.i.i, %i.bvq
  br i1 %.not1.i.i.i.i.i.i.i.i.i, label %bb.jg, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i.i

bb.jg:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bvr = getelementptr inbounds nuw i8, ptr %.sroa.04.1.i.i.i.i.i.i.i, i64 8 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i143 = icmp eq ptr %i.bvr, %i.buq
  br i1 %.not.i.i.i.i.i.i.i.i.i143, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !232

_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i.i: ; preds = %bb.jg, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.04.2.i.i.i.i.i.i.i = phi ptr [ %i.bvl, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bvr, %bb.jg ], [ %.sroa.04.1.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bvs = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.04.2.i.i.i.i.i.i.i, %i.bux
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE6appendINS1_12PredIteratorIS2_PPNS1_11InstructionEEEvEEvT_SB_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !234

_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE6appendINS1_12PredIteratorIS2_PPNS1_11InstructionEEEvEEvT_SB_.exit.loopexit.i.i: ; preds = %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i.i
  %30 = add nuw i64 %.pre-phi.i.i.i, %i.bvf
  %31 = trunc i64 %30 to i32
  br label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EEC2INS1_12PredIteratorIS2_PPNS1_11InstructionEEEEERKNS_14iterator_rangeIT_EE.exit.i

_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EEC2INS1_12PredIteratorIS2_PPNS1_11InstructionEEEEERKNS_14iterator_rangeIT_EE.exit.i: ; preds = %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE6appendINS1_12PredIteratorIS2_PPNS1_11InstructionEEEvEEvT_SB_.exit.loopexit.i.i, %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i
  %i.bvt = phi ptr [ %i.api, %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i ], [ %i.bvg, %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE6appendINS1_12PredIteratorIS2_PPNS1_11InstructionEEEvEEvT_SB_.exit.loopexit.i.i ] ; 2 uses
  %i.bvu = phi i32 [ 0, %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i ], [ %31, %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE6appendINS1_12PredIteratorIS2_PPNS1_11InstructionEEEvEEvT_SB_.exit.loopexit.i.i ] ; 3 uses
  store i32 %i.bvu, ptr %i.apj, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  store <2 x ptr> %i.apv, ptr %12, align 16, !tbaa !277
  store i32 4, ptr %i.apn, align 16, !tbaa !265
  store i32 0, ptr %i.apo, align 4, !tbaa !266
  store i32 0, ptr %i.app, align 8, !tbaa !267
  %i.bvv = zext i32 %i.bvu to i64
  %.idx408.i = shl nuw nsw i64 %i.bvv, 3
  %i.bvw = getelementptr inbounds nuw i8, ptr %i.bvt, i64 %.idx408.i
  %.not91390.i = icmp eq i32 %i.bvu, 0
  br i1 %.not91390.i, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i, label %.lr.ph392.i

._crit_edge393.i:                                 ; preds = %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i.thread499
  %.pre436.i = load ptr, ptr %i.apm, align 8, !tbaa !264 ; 2 uses
  %i.bvx = icmp eq ptr %.pre436.i, %i.bww
  br i1 %i.bvx, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.jh

bb.jh:                                            ; preds = %._crit_edge393.i
  call void @free(ptr noundef %.pre436.i) #10
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.jh, %._crit_edge393.i, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EEC2INS1_12PredIteratorIS2_PPNS1_11InstructionEEEEERKNS_14iterator_rangeIT_EE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  %i.bvy = load ptr, ptr %11, align 8, !tbaa !25  ; 2 uses
  %i.bvz = icmp eq ptr %i.bvy, %i.api
  br i1 %i.bvz, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EED2Ev.exit.i, label %bb.ji

bb.ji:                                            ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i
  call void @free(ptr noundef %i.bvy) #10
  br label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EED2Ev.exit.i

_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EED2Ev.exit.i: ; preds = %bb.ji, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  %i.bwa = getelementptr inbounds nuw i8, ptr %.sroa.0267.0395.i, i64 8 ; 3 uses
  %.not5.i3.i.i170.i = icmp eq ptr %i.bwa, %.pn12.i.i152.i
  br i1 %.not5.i3.i.i170.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit175.i, label %.lr.ph.i4.i.i171.i

.lr.ph.i4.i.i171.i:                               ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EED2Ev.exit.i, %.critedge2.i6.i.i173.i
  %.sroa.0267.1.i = phi ptr [ %i.bwc, %.critedge2.i6.i.i173.i ], [ %i.bwa, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EED2Ev.exit.i ] ; 3 uses
  %i.bwb = load ptr, ptr %.sroa.0267.1.i, align 8, !tbaa !139
  %magicptr.i5.i.i172.i = ptrtoint ptr %i.bwb to i64
  switch i64 %magicptr.i5.i.i172.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit175.i [
    i64 -8, label %.critedge2.i6.i.i173.i
    i64 -16, label %.critedge2.i6.i.i173.i
  ]

.critedge2.i6.i.i173.i:                           ; preds = %.lr.ph.i4.i.i171.i, %.lr.ph.i4.i.i171.i
  %i.bwc = getelementptr inbounds nuw i8, ptr %.sroa.0267.1.i, i64 8 ; 3 uses
  %.not.i7.i.i174.i = icmp eq ptr %i.bwc, %.pn12.i.i152.i
  br i1 %.not.i7.i.i174.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit175.i, label %.lr.ph.i4.i.i171.i, !llvm.loop !9

_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit175.i: ; preds = %.critedge2.i6.i.i173.i, %.lr.ph.i4.i.i171.i, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EED2Ev.exit.i
  %.sroa.0267.2.i = phi ptr [ %i.bwa, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EED2Ev.exit.i ], [ %.sroa.0267.1.i, %.lr.ph.i4.i.i171.i ], [ %i.bwc, %.critedge2.i6.i.i173.i ] ; 2 uses
  %.not338.i = icmp eq ptr %.sroa.0267.2.i, %i.boj
  br i1 %.not338.i, label %._crit_edge397.i, label %.lr.ph396.i

.lr.ph392.i:                                      ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EEC2INS1_12PredIteratorIS2_PPNS1_11InstructionEEEEERKNS_14iterator_rangeIT_EE.exit.i, %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i.thread499
  %i.bwd = phi ptr [ %i.bww, %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i.thread499 ], [ %i.apl, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EEC2INS1_12PredIteratorIS2_PPNS1_11InstructionEEEEERKNS_14iterator_rangeIT_EE.exit.i ] ; 3 uses
  %.085391.i = phi ptr [ %i.bwx, %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i.thread499 ], [ %i.bvt, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EEC2INS1_12PredIteratorIS2_PPNS1_11InstructionEEEEERKNS_14iterator_rangeIT_EE.exit.i ] ; 2 uses
  %i.bwe = load ptr, ptr %.085391.i, align 8, !tbaa !139 ; 6 uses
  %i.bwf = load ptr, ptr %i.apm, align 8, !tbaa !264, !noalias !278
  %i.bwg = icmp eq ptr %i.bwf, %i.bwd
  br i1 %i.bwg, label %bb.jj, label %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i

bb.jj:                                            ; preds = %.lr.ph392.i
  %i.bwh = load i32, ptr %i.apo, align 4, !tbaa !266, !noalias !278 ; 4 uses
  %i.bwi = zext i32 %i.bwh to i64
  %.idx.i.i190.i = shl nuw nsw i64 %i.bwi, 3
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.bwd, i64 %.idx.i.i190.i ; 2 uses
  %.not63.i.i191.i = icmp eq i32 %i.bwh, 0
  br i1 %.not63.i.i191.i, label %.critedge.thread.i.i200.i, label %.lr.ph.i.i192.i

.lr.ph.i.i192.i:                                  ; preds = %bb.jj, %bb.jk
  %.065.i.i193.i = phi ptr [ %spec.select.i.i196.i, %bb.jk ], [ null, %bb.jj ]
  %.04964.i.i194.i = phi ptr [ %i.bwm, %bb.jk ], [ %i.bwd, %bb.jj ] ; 3 uses
  %i.bwk = load ptr, ptr %.04964.i.i194.i, align 8, !tbaa !274, !noalias !278 ; 2 uses
  %.not27.i.i195.i = icmp eq ptr %i.bwk, %i.bwe
  br i1 %.not27.i.i195.i, label %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i.thread499, label %bb.jk

bb.jk:                                            ; preds = %.lr.ph.i.i192.i
  %i.bwl = icmp eq ptr %i.bwk, inttoptr (i64 -2 to ptr)
  %spec.select.i.i196.i = select i1 %i.bwl, ptr %.04964.i.i194.i, ptr %.065.i.i193.i ; 3 uses
  %i.bwm = getelementptr inbounds nuw i8, ptr %.04964.i.i194.i, i64 8 ; 2 uses
  %.not.i.i197.i = icmp eq ptr %i.bwm, %i.bwj
  br i1 %.not.i.i197.i, label %.critedge.i.i198.i, label %.lr.ph.i.i192.i, !llvm.loop !222

.critedge.i.i198.i:                               ; preds = %bb.jk
  %.not28.i.i199.i = icmp eq ptr %spec.select.i.i196.i, null
  br i1 %.not28.i.i199.i, label %.critedge.thread.i.i200.i, label %bb.jl

bb.jl:                                            ; preds = %.critedge.i.i198.i
  store ptr %i.bwe, ptr %spec.select.i.i196.i, align 8, !tbaa !274, !noalias !278
  %i.bwn = load i32, ptr %i.app, align 8, !tbaa !267, !noalias !278
  %i.bwo = add i32 %i.bwn, -1
  store i32 %i.bwo, ptr %i.app, align 8, !tbaa !267, !noalias !278
  br label %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i.thread

.critedge.thread.i.i200.i:                        ; preds = %.critedge.i.i198.i, %bb.jj
  %i.bwp = load i32, ptr %i.apn, align 16, !tbaa !265, !noalias !278
  %i.bwq = icmp ult i32 %i.bwh, %i.bwp
  br i1 %i.bwq, label %bb.jm, label %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i

bb.jm:                                            ; preds = %.critedge.thread.i.i200.i
  %i.bwr = add nuw i32 %i.bwh, 1
  store i32 %i.bwr, ptr %i.apo, align 4, !tbaa !266, !noalias !278
  store ptr %i.bwe, ptr %i.bwj, align 8, !tbaa !274, !noalias !278
  br label %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i.thread

_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i: ; preds = %.lr.ph392.i, %.critedge.thread.i.i200.i
  %i.bws = call { ptr, i8 } @_ZN4llvh19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(28) %12, ptr noundef %i.bwe) #10, !noalias !278
  %i.bwt = extractvalue { ptr, i8 } %i.bws, 1
  %i.bwu = trunc nuw i8 %i.bwt to i1
  br i1 %i.bwu, label %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i.thread, label %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i.thread499

_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i.thread: ; preds = %bb.jl, %bb.jm, %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i
  %.val.i = load ptr, ptr %i.aoi, align 8, !tbaa !259
  %.val96.i = load i32, ptr %i.aoj, align 8, !tbaa !258
  %i.bwv = call fastcc noundef ptr @_ZL15getLiveOutValuePN6hermes10BasicBlockERN4llvh8DenseMapIS1_PNS_11InstructionENS2_12DenseMapInfoIS1_EENS2_6detail12DenseMapPairIS1_S5_EEEERNS_13DominanceInfoESC_(ptr noundef %i.bwe, ptr noundef nonnull align 8 dereferenceable(20) %7, ptr %.val.i, i32 %.val96.i, ptr noundef nonnull align 8 dereferenceable(20) %9)
  call void @_ZN6hermes7PhiInst8addEntryEPNS_5ValueEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(132) %i.buk, ptr noundef %i.bwv, ptr noundef %i.bwe) #10
  br label %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i.thread499

_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i.thread499: ; preds = %.lr.ph.i.i192.i, %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i.thread, %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i
  %i.bww = load ptr, ptr %12, align 16, !tbaa !263, !noalias !278 ; 2 uses
  %i.bwx = getelementptr inbounds nuw i8, ptr %.085391.i, i64 8 ; 2 uses
  %.not91.i = icmp eq ptr %i.bwx, %i.bvw
  br i1 %.not91.i, label %._crit_edge393.i, label %.lr.ph392.i

._crit_edge402.i:                                 ; preds = %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i123, %._crit_edge397.i
  %i.bwy = phi i32 [ 0, %._crit_edge397.i ], [ %i.cai, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i123 ] ; 2 uses
  %i.bwz = load i32, ptr %i.apg, align 8, !tbaa !183
  %i.bxa = icmp eq i32 %i.bwz, 0
  %i.bxb = load ptr, ptr %9, align 8, !tbaa !181  ; 5 uses
  %i.bxc = load i32, ptr %i.apf, align 8, !tbaa !182 ; 2 uses
  %i.bxd = zext i32 %i.bxc to i64                 ; 3 uses
  br i1 %i.bxa, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %._crit_edge402.i
  %i.bxe = getelementptr inbounds nuw [16 x i8], ptr %i.bxb, i64 %i.bxd ; 2 uses
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i

bb.jo:                                            ; preds = %._crit_edge402.i
  %.idx.i.i124 = shl nuw nsw i64 %i.bxd, 4
  %i.bxf = getelementptr i8, ptr %i.bxb, i64 %.idx.i.i124 ; 5 uses
  %.not5.i5.i10.i2.i.i125 = icmp eq i32 %i.bxc, 0
  br i1 %.not5.i5.i10.i2.i.i125, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i, label %.lr.ph.i6.i12.i3.i.i126

.lr.ph.i6.i12.i3.i.i126:                          ; preds = %bb.jo, %.critedge2.i8.i14.i6.i.i129
  %.sroa.0.3.i4.i.i127 = phi ptr [ %i.bxh, %.critedge2.i8.i14.i6.i.i129 ], [ %i.bxb, %bb.jo ] ; 3 uses
  %i.bxg = load ptr, ptr %.sroa.0.3.i4.i.i127, align 8, !tbaa !139
  %magicptr.i7.i13.i5.i.i128 = ptrtoint ptr %i.bxg to i64
  switch i64 %magicptr.i7.i13.i5.i.i128, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i [
    i64 -8, label %.critedge2.i8.i14.i6.i.i129
    i64 -16, label %.critedge2.i8.i14.i6.i.i129
  ]

.critedge2.i8.i14.i6.i.i129:                      ; preds = %.lr.ph.i6.i12.i3.i.i126, %.lr.ph.i6.i12.i3.i.i126
  %i.bxh = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i4.i.i127, i64 16 ; 2 uses
  %.not.i9.i15.i7.i.i130 = icmp eq ptr %i.bxh, %i.bxf
  br i1 %.not.i9.i15.i7.i.i130, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i, label %.lr.ph.i6.i12.i3.i.i126, !llvm.loop !237

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i: ; preds = %.critedge2.i8.i14.i6.i.i129, %.lr.ph.i6.i12.i3.i.i126, %bb.jo, %bb.jn
  %.pn14.i.i131 = phi ptr [ %i.bxe, %bb.jn ], [ %i.bxb, %bb.jo ], [ %i.bxf, %.critedge2.i8.i14.i6.i.i129 ], [ %.sroa.0.3.i4.i.i127, %.lr.ph.i6.i12.i3.i.i126 ] ; 2 uses
  %.pn12.i.i132 = phi ptr [ %i.bxe, %bb.jn ], [ %i.bxf, %bb.jo ], [ %i.bxf, %.lr.ph.i6.i12.i3.i.i126 ], [ %i.bxf, %.critedge2.i8.i14.i6.i.i129 ] ; 2 uses
  %i.bxi = getelementptr inbounds nuw [16 x i8], ptr %i.bxb, i64 %i.bxd ; 2 uses
  %.not339403.i = icmp eq ptr %.pn14.i.i131, %i.bxi
  br i1 %.not339403.i, label %._crit_edge406.i, label %.lr.ph405.i

.lr.ph401.i:                                      ; preds = %._crit_edge397.i, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i123
  %.084399.i = phi ptr [ %i.caj, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i123 ], [ %i.brq, %._crit_edge397.i ] ; 4 uses
  %i.bxj = load ptr, ptr %.084399.i, align 8, !tbaa !280
  %i.bxk = getelementptr inbounds nuw i8, ptr %i.bxj, i64 56
  %i.bxl = load ptr, ptr %i.bxk, align 8, !tbaa !118 ; 7 uses
  %.val97.i = load ptr, ptr %i.aoi, align 8       ; 5 uses
  %.val98.i = load i32, ptr %i.aoj, align 8       ; 5 uses
  %i.bxm = load ptr, ptr %7, align 8, !tbaa !181  ; 4 uses
  %i.bxn = load i32, ptr %i.aoz, align 8, !tbaa !182 ; 4 uses
  %i.bxo = icmp eq i32 %i.bxn, 0
  br i1 %i.bxo, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i.i, label %bb.jp

bb.jp:                                            ; preds = %.lr.ph401.i
  %i.bxp = ptrtoint ptr %i.bxl to i64
  %i.bxq = trunc i64 %i.bxp to i32                ; 2 uses
  %i.bxr = lshr i32 %i.bxq, 4
  %i.bxs = lshr i32 %i.bxq, 9
  %i.bxt = xor i32 %i.bxr, %i.bxs
  %i.bxu = add i32 %i.bxn, -1                     ; 2 uses
  %.02744.i.i.i.i.i = and i32 %i.bxu, %i.bxt      ; 2 uses
  %i.bxv = zext nneg i32 %.02744.i.i.i.i.i to i64
  %i.bxw = getelementptr inbounds nuw [16 x i8], ptr %i.bxm, i64 %i.bxv ; 2 uses
  %i.bxx = load ptr, ptr %i.bxw, align 8, !tbaa !139 ; 2 uses
  %i.bxy = icmp eq ptr %i.bxl, %i.bxx
  br i1 %i.bxy, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i.i, label %.lr.ph.i.i.i.i201.i, !prof !37

.lr.ph.i.i.i.i201.i:                              ; preds = %bb.jp, %bb.jq
  %i.bxz = phi ptr [ %i.byf, %bb.jq ], [ %i.bxx, %bb.jp ]
  %.02747.i.i.i.i.i = phi i32 [ %.027.i.i.i.i.i, %bb.jq ], [ %.02744.i.i.i.i.i, %bb.jp ]
  %.046.i.i.i.i.i = phi i32 [ %i.byb, %bb.jq ], [ 1, %bb.jp ] ; 2 uses
  %i.bya = icmp eq ptr %i.bxz, inttoptr (i64 -8 to ptr)
  br i1 %i.bya, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i.i, label %bb.jq, !prof !29

end_hunk_0

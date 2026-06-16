inline.NumInlined: 2091
inline.NumDeleted: 876
begin_hunk_0_@_ZN6hermes7Mem2Reg13runOnFunctionEPNS_8FunctionE:bb.a
  %i.bse = load ptr, ptr %i.bsd, align 8, !tbaa !172 ; 2 uses
  %i.bsf = icmp eq ptr %i.brs, %i.bse
  br i1 %i.bsf, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit, label %.lr.ph.i.i.i272, !prof !35

.lr.ph.i.i.i272:                                  ; preds = %bb.is, %bb.iu
  %i.bsg = phi ptr [ %i.bsq, %bb.iu ], [ %i.bse, %bb.is ] ; 2 uses
  %i.bsh = phi ptr [ %i.bsp, %bb.iu ], [ %i.bsd, %bb.is ] ; 2 uses
  %.02947.i.i.i273 = phi i32 [ %.029.i.i.i278, %bb.iu ], [ %.02944.i.i.i271, %bb.is ]
  %.02746.i.i.i274 = phi i32 [ %i.bsm, %bb.iu ], [ 1, %bb.is ] ; 2 uses
  %.03245.i.i.i275 = phi ptr [ %spec.select.i.i.i277, %bb.iu ], [ null, %bb.is ] ; 4 uses
  %i.bsi = icmp eq ptr %i.bsg, inttoptr (i64 -8 to ptr)
  br i1 %i.bsi, label %bb.it, label %bb.iu, !prof !25

bb.it:                                            ; preds = %.lr.ph.i.i.i272
  %.not.i.i.i281 = icmp eq ptr %.03245.i.i.i275, null
  %i.bsj = select i1 %.not.i.i.i281, ptr %i.bsh, ptr %.03245.i.i.i275
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i

bb.iu:                                            ; preds = %.lr.ph.i.i.i272
  %i.bsk = icmp eq ptr %i.bsg, inttoptr (i64 -16 to ptr)
  %i.bsl = icmp eq ptr %.03245.i.i.i275, null
  %or.cond.not.i.i.i276 = select i1 %i.bsk, i1 %i.bsl, i1 false
  %spec.select.i.i.i277 = select i1 %or.cond.not.i.i.i276, ptr %i.bsh, ptr %.03245.i.i.i275
  %i.bsm = add i32 %.02746.i.i.i274, 1
  %i.bsn = add i32 %.02746.i.i.i274, %.02947.i.i.i273
  %.029.i.i.i278 = and i32 %i.bsn, %i.bsb         ; 2 uses
  %i.bso = zext i32 %.029.i.i.i278 to i64
  %i.bsp = getelementptr inbounds nuw [16 x i8], ptr %i.brt, i64 %i.bso ; 3 uses
  %i.bsq = load ptr, ptr %i.bsp, align 8, !tbaa !172 ; 2 uses
  %i.bsr = icmp eq ptr %i.brs, %i.bsq
  br i1 %i.bsr, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit, label %.lr.ph.i.i.i272, !prof !36, !llvm.loop !251

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i: ; preds = %bb.it, %.lr.ph396.i
  %.sink.i.i.i282 = phi ptr [ %i.bsj, %bb.it ], [ null, %.lr.ph396.i ]
  %i.bss = load i32, ptr %i.apa, align 8, !tbaa !252 ; 3 uses
  %i.bst = shl i32 %i.bss, 2
  %i.bsu = add i32 %i.bst, 4
  %i.bsv = mul i32 %i.bru, 3
  %.not.i.i4.i283 = icmp ult i32 %i.bsu, %i.bsv
  br i1 %.not.i.i4.i283, label %bb.iw, label %bb.iv, !prof !25

bb.iv:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i
  %i.bsw = shl i32 %i.bru, 1
  br label %.sink.split.i.i.i284

bb.iw:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i
  %i.bsx = load i32, ptr %i.apb, align 4, !tbaa !253
  %.neg.i.i.i288 = xor i32 %i.bss, -1
  %.neg12.i.i.i289 = add i32 %i.bru, %.neg.i.i.i288
  %i.bsy = sub i32 %.neg12.i.i.i289, %i.bsx
  %i.bsz = lshr i32 %i.bru, 3
  %.not10.i.i.i290 = icmp ugt i32 %i.bsy, %i.bsz
  br i1 %.not10.i.i.i290, label %bb.ja, label %.sink.split.i.i.i284, !prof !25

.sink.split.i.i.i284:                             ; preds = %bb.iw, %bb.iv
  %.sink.i.i5.i285 = phi i32 [ %i.bsw, %bb.iv ], [ %i.bru, %bb.iw ]
  call void @_ZN4llvh8DenseMapIPN6hermes10BasicBlockEPNS1_11InstructionENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %7, i32 noundef %.sink.i.i5.i285)
  %i.bta = load ptr, ptr %7, align 8, !tbaa !247  ; 2 uses
  %i.btb = load i32, ptr %i.aoz, align 8, !tbaa !250 ; 2 uses
  %i.btc = icmp eq i32 %i.btb, 0
  br i1 %i.btc, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, label %bb.ix

bb.ix:                                            ; preds = %.sink.split.i.i.i284
  %i.btd = ptrtoint ptr %i.brs to i64
  %i.bte = trunc i64 %i.btd to i32                ; 2 uses
  %i.btf = lshr i32 %i.bte, 4
  %i.btg = lshr i32 %i.bte, 9
  %i.bth = xor i32 %i.btf, %i.btg
  %i.bti = add i32 %i.btb, -1                     ; 2 uses
  %.02944.i.i411 = and i32 %i.bti, %i.bth         ; 2 uses
  %i.btj = zext nneg i32 %.02944.i.i411 to i64
  %i.btk = getelementptr inbounds nuw [16 x i8], ptr %i.bta, i64 %i.btj ; 3 uses
  %i.btl = load ptr, ptr %i.btk, align 8, !tbaa !172 ; 2 uses
  %i.btm = icmp eq ptr %i.brs, %i.btl
  br i1 %i.btm, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, label %.lr.ph.i.i412, !prof !35

.lr.ph.i.i412:                                    ; preds = %bb.ix, %bb.iz
  %i.btn = phi ptr [ %i.btx, %bb.iz ], [ %i.btl, %bb.ix ] ; 2 uses
  %i.bto = phi ptr [ %i.btw, %bb.iz ], [ %i.btk, %bb.ix ] ; 2 uses
  %.02947.i.i413 = phi i32 [ %.029.i.i418, %bb.iz ], [ %.02944.i.i411, %bb.ix ]
  %.02746.i.i414 = phi i32 [ %i.btt, %bb.iz ], [ 1, %bb.ix ] ; 2 uses
  %.03245.i.i415 = phi ptr [ %spec.select.i.i417, %bb.iz ], [ null, %bb.ix ] ; 4 uses
  %i.btp = icmp eq ptr %i.btn, inttoptr (i64 -8 to ptr)
  br i1 %i.btp, label %bb.iy, label %bb.iz, !prof !25

bb.iy:                                            ; preds = %.lr.ph.i.i412
  %.not.i.i421 = icmp eq ptr %.03245.i.i415, null
  %i.btq = select i1 %.not.i.i421, ptr %i.bto, ptr %.03245.i.i415
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit

bb.iz:                                            ; preds = %.lr.ph.i.i412
  %i.btr = icmp eq ptr %i.btn, inttoptr (i64 -16 to ptr)
  %i.bts = icmp eq ptr %.03245.i.i415, null
  %or.cond.not.i.i416 = select i1 %i.btr, i1 %i.bts, i1 false
  %spec.select.i.i417 = select i1 %or.cond.not.i.i416, ptr %i.bto, ptr %.03245.i.i415
  %i.btt = add i32 %.02746.i.i414, 1
  %i.btu = add i32 %.02746.i.i414, %.02947.i.i413
  %.029.i.i418 = and i32 %i.btu, %i.bti           ; 2 uses
  %i.btv = zext i32 %.029.i.i418 to i64
  %i.btw = getelementptr inbounds nuw [16 x i8], ptr %i.bta, i64 %i.btv ; 3 uses
  %i.btx = load ptr, ptr %i.btw, align 8, !tbaa !172 ; 2 uses
  %i.bty = icmp eq ptr %i.brs, %i.btx
  br i1 %i.bty, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, label %.lr.ph.i.i412, !prof !36, !llvm.loop !251

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit: ; preds = %bb.iz, %.sink.split.i.i.i284, %bb.ix, %bb.iy
  %.sink.i.i419 = phi ptr [ %i.btq, %bb.iy ], [ null, %.sink.split.i.i.i284 ], [ %i.btk, %bb.ix ], [ %i.btw, %bb.iz ]
  %.pre.i.i286 = load i32, ptr %i.apa, align 8, !tbaa !252
  br label %bb.ja

bb.ja:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, %bb.iw
  %i.btz = phi ptr [ %.sink.i.i419, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit ], [ %.sink.i.i.i282, %bb.iw ] ; 4 uses
  %i.bua = phi i32 [ %.pre.i.i286, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit ], [ %i.bss, %bb.iw ]
  %i.bub = add i32 %i.bua, 1
  store i32 %i.bub, ptr %i.apa, align 8, !tbaa !252
  %i.buc = load ptr, ptr %i.btz, align 8, !tbaa !172
  %i.bud = icmp eq ptr %i.buc, inttoptr (i64 -8 to ptr)
  br i1 %i.bud, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.bue = load i32, ptr %i.apb, align 4, !tbaa !253
  %i.buf = add i32 %i.bue, -1
  store i32 %i.buf, ptr %i.apb, align 4, !tbaa !253
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i: ; preds = %bb.jb, %bb.ja
  store ptr %i.brs, ptr %i.btz, align 8, !tbaa !172
  %i.bug = getelementptr inbounds nuw i8, ptr %i.btz, i64 8
  store ptr null, ptr %i.bug, align 8, !tbaa !62
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit: ; preds = %bb.iu, %bb.is, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i
  %.0.i280 = phi ptr [ %i.btz, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i ], [ %i.bsd, %bb.is ], [ %i.bsp, %bb.iu ]
  %i.buh = getelementptr inbounds nuw i8, ptr %.0.i280, i64 8
  %i.bui = load ptr, ptr %i.buh, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  %i.buj = getelementptr inbounds nuw i8, ptr %i.brs, i64 24
  %i.buk = load ptr, ptr %i.buj, align 8, !tbaa !21, !noalias !254 ; 4 uses
  %i.bul = getelementptr inbounds nuw i8, ptr %i.brs, i64 32
  %i.bum = load i32, ptr %i.bul, align 8, !tbaa !22, !noalias !254 ; 2 uses
  %i.bun = zext i32 %i.bum to i64                 ; 2 uses
  %.idx.i.i.i161.i = shl nuw nsw i64 %i.bun, 3
  %i.buo = getelementptr i8, ptr %i.buk, i64 %.idx.i.i.i161.i ; 6 uses
  %.not3.i.i.i.i.i = icmp eq i32 %i.bum, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit, %bb.jc
  %.sroa.0.0.i.i.i = phi ptr [ %i.buu, %bb.jc ], [ %i.buk, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit ] ; 3 uses
  %i.bup = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !62, !noalias !254 ; 2 uses
  %i.buq = getelementptr inbounds nuw i8, ptr %i.bup, i64 16
  %i.bur = load i8, ptr %i.buq, align 8, !tbaa !64, !noalias !254
  %i.bus = add i8 %i.bur, -90
  %i.but = icmp ult i8 %i.bus, -15
  %.not12.i.i.i.i.i = icmp eq ptr %i.bup, null
  %.not1.i.i.i.i.i = or i1 %.not12.i.i.i.i.i, %i.but
  br i1 %.not1.i.i.i.i.i, label %bb.jc, label %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i

bb.jc:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.buu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.buu, %i.buo
  br i1 %.not.i.i.i.i.i, label %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !257

_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i: ; preds = %bb.jc, %.lr.ph.i.i.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit
  %.sroa.0.1.i.i.i = phi ptr [ %i.buk, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit ], [ %i.buo, %bb.jc ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.buv = getelementptr inbounds nuw [8 x i8], ptr %i.buk, i64 %i.bun ; 3 uses
  store ptr %i.api, ptr %11, align 8, !tbaa !21
  store i32 0, ptr %i.apj, align 8, !tbaa !22
  store i32 4, ptr %i.apk, align 4, !tbaa !23
  %.not4.i.i.i.i = icmp eq ptr %.sroa.0.1.i.i.i, %i.buv
  br i1 %.not4.i.i.i.i, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EEC2INS1_12PredIteratorIS2_PPNS1_11InstructionEEEEERKNS_14iterator_rangeIT_EE.exit.i, label %.lr.ph.i.i.i165.i

.lr.ph.i.i.i165.i:                                ; preds = %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i, %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i
  %.06.i.i.i.i = phi i64 [ %i.bvd, %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i ], [ 0, %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i ] ; 2 uses
  %.sroa.02.05.i.i.i.i = phi ptr [ %.sroa.02.2.i.i.i.i, %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i ], [ %.sroa.0.1.i.i.i, %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i ]
  %i.buw = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i, i64 8 ; 3 uses
  %.not3.i.i.i.i.i.i = icmp eq ptr %i.buw, %i.buo
  br i1 %.not3.i.i.i.i.i.i, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i165.i, %bb.jd
  %.sroa.02.1.i.i.i.i = phi ptr [ %i.bvc, %bb.jd ], [ %i.buw, %.lr.ph.i.i.i165.i ] ; 3 uses
  %i.bux = load ptr, ptr %.sroa.02.1.i.i.i.i, align 8, !tbaa !62 ; 2 uses
  %i.buy = getelementptr inbounds nuw i8, ptr %i.bux, i64 16
  %i.buz = load i8, ptr %i.buy, align 8, !tbaa !64
  %i.bva = add i8 %i.buz, -90
  %i.bvb = icmp ult i8 %i.bva, -15
  %.not12.i.i.i.i.i.i = icmp eq ptr %i.bux, null
  %.not1.i.i.i.i.i.i = or i1 %.not12.i.i.i.i.i.i, %i.bvb
  br i1 %.not1.i.i.i.i.i.i, label %bb.jd, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i

bb.jd:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bvc = getelementptr inbounds nuw i8, ptr %.sroa.02.1.i.i.i.i, i64 8 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bvc, %i.buo
  br i1 %.not.i.i.i.i.i.i, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !257

_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i: ; preds = %bb.jd, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i165.i
  %.sroa.02.2.i.i.i.i = phi ptr [ %i.buw, %.lr.ph.i.i.i165.i ], [ %.sroa.02.1.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.bvc, %bb.jd ] ; 2 uses
  %i.bvd = add nuw nsw i64 %.06.i.i.i.i, 1        ; 3 uses
  %.not.i.i.i166.i = icmp eq ptr %.sroa.02.2.i.i.i.i, %i.buv
  br i1 %.not.i.i.i166.i, label %_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i.i, label %.lr.ph.i.i.i165.i, !llvm.loop !258

_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i.i: ; preds = %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i
  %.not.i.i167.i = icmp samesign ult i64 %.06.i.i.i.i, 4
  br i1 %.not.i.i167.i, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.api, i64 noundef %i.bvd, i64 noundef 8) #10
  %.pre.i.i168.i = load i32, ptr %i.apj, align 8, !tbaa !22
  %.pre16.i.i.i = zext i32 %.pre.i.i168.i to i64
  %.pre.i169.i = load ptr, ptr %11, align 8, !tbaa !21
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i.i
  %i.bve = phi ptr [ %.pre.i169.i, %bb.je ], [ %i.api, %_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i.i ] ; 2 uses
  %.pre-phi.i.i.i = phi i64 [ %.pre16.i.i.i, %bb.je ], [ 0, %_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i.i ] ; 2 uses
  %i.bvf = getelementptr inbounds nuw [8 x i8], ptr %i.bve, i64 %.pre-phi.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i.i, %bb.jf
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.bvq, %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i.i ], [ %i.bvf, %bb.jf ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %.sroa.04.2.i.i.i.i.i.i.i, %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i.i ], [ %.sroa.0.1.i.i.i, %bb.jf ] ; 2 uses
  %i.bvg = load ptr, ptr %.sroa.04.08.i.i.i.i.i.i.i, align 8, !tbaa !62
  %i.bvh = getelementptr inbounds nuw i8, ptr %i.bvg, i64 56
  %i.bvi = load ptr, ptr %i.bvh, align 8, !tbaa !113
  store ptr %i.bvi, ptr %.09.i.i.i.i.i.i.i, align 8, !tbaa !172
  %i.bvj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 8 ; 3 uses
  %.not3.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bvj, %i.buo
  br i1 %.not3.i.i.i.i.i.i.i.i.i, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.jg
  %.sroa.04.1.i.i.i.i.i.i.i = phi ptr [ %i.bvp, %bb.jg ], [ %i.bvj, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.bvk = load ptr, ptr %.sroa.04.1.i.i.i.i.i.i.i, align 8, !tbaa !62 ; 2 uses
  %i.bvl = getelementptr inbounds nuw i8, ptr %i.bvk, i64 16
  %i.bvm = load i8, ptr %i.bvl, align 8, !tbaa !64
  %i.bvn = add i8 %i.bvm, -90
  %i.bvo = icmp ult i8 %i.bvn, -15
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bvk, null
  %.not1.i.i.i.i.i.i.i.i.i = or i1 %.not12.i.i.i.i.i.i.i.i.i, %i.bvo
  br i1 %.not1.i.i.i.i.i.i.i.i.i, label %bb.jg, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i.i

bb.jg:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bvp = getelementptr inbounds nuw i8, ptr %.sroa.04.1.i.i.i.i.i.i.i, i64 8 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i144 = icmp eq ptr %i.bvp, %i.buo
  br i1 %.not.i.i.i.i.i.i.i.i.i144, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !257

_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i.i: ; preds = %bb.jg, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.04.2.i.i.i.i.i.i.i = phi ptr [ %i.bvj, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bvp, %bb.jg ], [ %.sroa.04.1.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bvq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.04.2.i.i.i.i.i.i.i, %i.buv
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE6appendINS1_12PredIteratorIS2_PPNS1_11InstructionEEEvEEvT_SB_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !259

_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE6appendINS1_12PredIteratorIS2_PPNS1_11InstructionEEEvEEvT_SB_.exit.loopexit.i.i: ; preds = %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i.i
  %i.bvr = add nuw i64 %.pre-phi.i.i.i, %i.bvd
  %i.bvs = trunc i64 %i.bvr to i32
  br label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EEC2INS1_12PredIteratorIS2_PPNS1_11InstructionEEEEERKNS_14iterator_rangeIT_EE.exit.i

_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EEC2INS1_12PredIteratorIS2_PPNS1_11InstructionEEEEERKNS_14iterator_rangeIT_EE.exit.i: ; preds = %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE6appendINS1_12PredIteratorIS2_PPNS1_11InstructionEEEvEEvT_SB_.exit.loopexit.i.i, %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i
  %i.bvt = phi ptr [ %i.api, %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i ], [ %i.bve, %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE6appendINS1_12PredIteratorIS2_PPNS1_11InstructionEEEvEEvT_SB_.exit.loopexit.i.i ] ; 2 uses
  %i.bvu = phi i32 [ 0, %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i ], [ %i.bvs, %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE6appendINS1_12PredIteratorIS2_PPNS1_11InstructionEEEvEEvT_SB_.exit.loopexit.i.i ] ; 3 uses
  store i32 %i.bvu, ptr %i.apj, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  store ptr %i.apl, ptr %12, align 8, !tbaa !177
  store ptr %i.apl, ptr %i.apm, align 8, !tbaa !179
  store i32 4, ptr %i.apn, align 8, !tbaa !180
  store i32 0, ptr %i.apo, align 4, !tbaa !181
  store i32 0, ptr %i.app, align 8, !tbaa !182
  %i.bvv = zext i32 %i.bvu to i64
  %.idx408.i = shl nuw nsw i64 %i.bvv, 3
  %i.bvw = getelementptr inbounds nuw i8, ptr %i.bvt, i64 %.idx408.i
  %.not91390.i = icmp eq i32 %i.bvu, 0
  br i1 %.not91390.i, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i, label %.lr.ph392.i

._crit_edge393.i:                                 ; preds = %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i.thread500
  %.pre436.i = load ptr, ptr %i.apm, align 8, !tbaa !179 ; 2 uses
  %i.bvx = icmp eq ptr %.pre436.i, %i.bww
  br i1 %i.bvx, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.jh

bb.jh:                                            ; preds = %._crit_edge393.i
  call void @free(ptr noundef %.pre436.i) #10
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.jh, %._crit_edge393.i, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EEC2INS1_12PredIteratorIS2_PPNS1_11InstructionEEEEERKNS_14iterator_rangeIT_EE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  %i.bvy = load ptr, ptr %11, align 8, !tbaa !21  ; 2 uses
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
  %i.bwb = load ptr, ptr %.sroa.0267.1.i, align 8, !tbaa !172
  %magicptr.i5.i.i172.i = ptrtoint ptr %i.bwb to i64
  switch i64 %magicptr.i5.i.i172.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit175.i [
    i64 -8, label %.critedge2.i6.i.i173.i
    i64 -16, label %.critedge2.i6.i.i173.i
  ]

.critedge2.i6.i.i173.i:                           ; preds = %.lr.ph.i4.i.i171.i, %.lr.ph.i4.i.i171.i
  %i.bwc = getelementptr inbounds nuw i8, ptr %.sroa.0267.1.i, i64 8 ; 3 uses
  %.not.i7.i.i174.i = icmp eq ptr %i.bwc, %.pn12.i.i152.i
  br i1 %.not.i7.i.i174.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit175.i, label %.lr.ph.i4.i.i171.i, !llvm.loop !246

_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit175.i: ; preds = %.critedge2.i6.i.i173.i, %.lr.ph.i4.i.i171.i, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EED2Ev.exit.i
  %.sroa.0267.2.i = phi ptr [ %i.bwa, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EED2Ev.exit.i ], [ %.sroa.0267.1.i, %.lr.ph.i4.i.i171.i ], [ %i.bwc, %.critedge2.i6.i.i173.i ] ; 2 uses
  %.not338.i.a = icmp eq ptr %.sroa.0267.2.i, %i.boh
  br i1 %.not338.i.a, label %._crit_edge397.i, label %.lr.ph396.i

.lr.ph392.i:                                      ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EEC2INS1_12PredIteratorIS2_PPNS1_11InstructionEEEEERKNS_14iterator_rangeIT_EE.exit.i, %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i.thread500
  %i.bwd = phi ptr [ %i.bww, %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i.thread500 ], [ %i.apl, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EEC2INS1_12PredIteratorIS2_PPNS1_11InstructionEEEEERKNS_14iterator_rangeIT_EE.exit.i ] ; 3 uses
  %.086391.i = phi ptr [ %i.bwx, %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i.thread500 ], [ %i.bvt, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EEC2INS1_12PredIteratorIS2_PPNS1_11InstructionEEEEERKNS_14iterator_rangeIT_EE.exit.i ] ; 2 uses
  %i.bwe = load ptr, ptr %.086391.i, align 8, !tbaa !172 ; 6 uses
  %i.bwf = load ptr, ptr %i.apm, align 8, !tbaa !179, !noalias !260
  %i.bwg = icmp eq ptr %i.bwf, %i.bwd
  br i1 %i.bwg, label %bb.jj, label %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i

bb.jj:                                            ; preds = %.lr.ph392.i
  %i.bwh = load i32, ptr %i.apo, align 4, !tbaa !181, !noalias !260 ; 4 uses
  %i.bwi = zext i32 %i.bwh to i64
  %.idx.i.i190.i = shl nuw nsw i64 %i.bwi, 3
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.bwd, i64 %.idx.i.i190.i ; 2 uses
  %.not63.i.i191.i = icmp eq i32 %i.bwh, 0
  br i1 %.not63.i.i191.i, label %.critedge.thread.i.i200.i, label %.lr.ph.i.i192.i

.lr.ph.i.i192.i:                                  ; preds = %bb.jj, %bb.jk
  %.065.i.i193.i = phi ptr [ %spec.select.i.i196.i, %bb.jk ], [ null, %bb.jj ]
  %.04964.i.i194.i = phi ptr [ %i.bwm, %bb.jk ], [ %i.bwd, %bb.jj ] ; 3 uses
  %i.bwk = load ptr, ptr %.04964.i.i194.i, align 8, !tbaa !203, !noalias !260 ; 2 uses
  %.not27.i.i195.i = icmp eq ptr %i.bwk, %i.bwe
  br i1 %.not27.i.i195.i, label %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i.thread500, label %bb.jk

bb.jk:                                            ; preds = %.lr.ph.i.i192.i
  %i.bwl = icmp eq ptr %i.bwk, inttoptr (i64 -2 to ptr)
  %spec.select.i.i196.i = select i1 %i.bwl, ptr %.04964.i.i194.i, ptr %.065.i.i193.i ; 3 uses
  %i.bwm = getelementptr inbounds nuw i8, ptr %.04964.i.i194.i, i64 8 ; 2 uses
  %.not.i.i197.i = icmp eq ptr %i.bwm, %i.bwj
  br i1 %.not.i.i197.i, label %.critedge.i.i198.i, label %.lr.ph.i.i192.i, !llvm.loop !204

.critedge.i.i198.i:                               ; preds = %bb.jk
  %.not28.i.i199.i = icmp eq ptr %spec.select.i.i196.i, null
  br i1 %.not28.i.i199.i, label %.critedge.thread.i.i200.i, label %bb.jl

bb.jl:                                            ; preds = %.critedge.i.i198.i
  store ptr %i.bwe, ptr %spec.select.i.i196.i, align 8, !tbaa !203, !noalias !260
  %i.bwn = load i32, ptr %i.app, align 8, !tbaa !182, !noalias !260
  %i.bwo = add i32 %i.bwn, -1
  store i32 %i.bwo, ptr %i.app, align 8, !tbaa !182, !noalias !260
  br label %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i.thread

.critedge.thread.i.i200.i:                        ; preds = %.critedge.i.i198.i, %bb.jj
  %i.bwp = load i32, ptr %i.apn, align 8, !tbaa !180, !noalias !260
  %i.bwq = icmp ult i32 %i.bwh, %i.bwp
  br i1 %i.bwq, label %bb.jm, label %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i

bb.jm:                                            ; preds = %.critedge.thread.i.i200.i
  %i.bwr = add nuw i32 %i.bwh, 1
  store i32 %i.bwr, ptr %i.apo, align 4, !tbaa !181, !noalias !260
  store ptr %i.bwe, ptr %i.bwj, align 8, !tbaa !203, !noalias !260
  br label %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i.thread

_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i: ; preds = %.lr.ph392.i, %.critedge.thread.i.i200.i
  %i.bws = call { ptr, i8 } @_ZN4llvh19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(28) %12, ptr noundef %i.bwe) #10, !noalias !260
  %i.bwt = extractvalue { ptr, i8 } %i.bws, 1
  %i.bwu = trunc nuw i8 %i.bwt to i1
  br i1 %i.bwu, label %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i.thread, label %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i.thread500

_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i.thread: ; preds = %bb.jl, %bb.jm, %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i
  %.val.i = load ptr, ptr %i.aoi, align 8, !tbaa !171
  %.val96.i = load i32, ptr %i.aoj, align 8, !tbaa !170
  %i.bwv = call fastcc noundef ptr @_ZL15getLiveOutValuePN6hermes10BasicBlockERN4llvh8DenseMapIS1_PNS_11InstructionENS2_12DenseMapInfoIS1_EENS2_6detail12DenseMapPairIS1_S5_EEEERNS_13DominanceInfoESC_(ptr noundef %i.bwe, ptr noundef nonnull align 8 dereferenceable(20) %7, ptr %.val.i, i32 %.val96.i, ptr noundef nonnull align 8 dereferenceable(20) %9)
  call void @_ZN6hermes7PhiInst8addEntryEPNS_5ValueEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(132) %i.bui, ptr noundef %i.bwv, ptr noundef %i.bwe) #10
  br label %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i.thread500

_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i.thread500: ; preds = %.lr.ph.i.i192.i, %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i.thread, %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i176.i
  %i.bww = load ptr, ptr %12, align 8, !tbaa !177, !noalias !260 ; 2 uses
  %i.bwx = getelementptr inbounds nuw i8, ptr %.086391.i, i64 8 ; 2 uses
  %.not91.i = icmp eq ptr %i.bwx, %i.bvw
  br i1 %.not91.i, label %._crit_edge393.i, label %.lr.ph392.i

._crit_edge402.i:                                 ; preds = %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i124, %._crit_edge397.i
  %i.bwy = phi i32 [ 0, %._crit_edge397.i ], [ %i.cai, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i124 ] ; 2 uses
  %i.bwz = load i32, ptr %i.apg, align 8, !tbaa !252
  %i.bxa = icmp eq i32 %i.bwz, 0
  %i.bxb = load ptr, ptr %9, align 8, !tbaa !247  ; 5 uses
  %i.bxc = load i32, ptr %i.apf, align 8, !tbaa !250 ; 2 uses
  %i.bxd = zext i32 %i.bxc to i64                 ; 3 uses
  br i1 %i.bxa, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %._crit_edge402.i
  %i.bxe = getelementptr inbounds nuw [16 x i8], ptr %i.bxb, i64 %i.bxd ; 2 uses
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i

bb.jo:                                            ; preds = %._crit_edge402.i
  %.idx.i.i125 = shl nuw nsw i64 %i.bxd, 4
  %i.bxf = getelementptr i8, ptr %i.bxb, i64 %.idx.i.i125 ; 5 uses
  %.not5.i5.i10.i2.i.i126 = icmp eq i32 %i.bxc, 0
end_hunk_0

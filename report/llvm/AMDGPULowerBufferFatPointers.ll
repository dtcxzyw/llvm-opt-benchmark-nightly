Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPULowerBufferFatPointers?download=true
inline.NumInlined: 6113
inline.NumDeleted: 3272
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1459
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !591
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !199

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1459
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !580
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !579
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
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
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !341
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !341
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !591
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !286
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !286
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

declare noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(34), ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, ptr } @_ZN12_GLOBAL__N_115SplitPtrStructs22visitAtomicCmpXchgInstERN4llvm17AtomicCmpXchgInstE(ptr noundef nonnull align 8 dereferenceable(704) %0, ptr noundef nonnull align 8 dereferenceable(73) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca [6 x ptr], align 8                ; 9 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %5 = alloca %"class.llvm::ArrayRef.345", align 8 ; 2 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %1, i64 -96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !193  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !167  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8
  %.not22.i = icmp eq ptr %i.j, null
  %i.m = and i32 %i.l, 1279
  %i.n = icmp ne i32 %i.m, 1040
  %or.cond28.i = or i1 %.not22.i, %i.n
  br i1 %or.cond28.i, label %_ZL13isSplitFatPtrPN4llvm4TypeE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !540
  %.not15.i = icmp eq i32 %i.p, 2
  br i1 %.not15.i, label %bb.c, label %_ZL13isSplitFatPtrPN4llvm4TypeE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !207  ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !211  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8              ; 2 uses
  %i.v = and i32 %i.u, 254
  %spec.select.i.i16.i = icmp eq i32 %i.v, 18
  br i1 %spec.select.i.i16.i, label %bb.d, label %_ZNK4llvm4Type13getScalarTypeEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !207
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !211
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit.i

_ZNK4llvm4Type13getScalarTypeEv.exit.i:           ; preds = %bb.d, %bb.c
  %i.z = phi i32 [ %.pre.i, %bb.d ], [ %i.u, %bb.c ] ; 2 uses
  %i.aa = and i32 %i.z, 255
  %i.ab = icmp eq i32 %i.aa, 15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !211 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 8            ; 2 uses
  %i.ag = and i32 %i.af, 254
  %spec.select.i.i18.i = icmp eq i32 %i.ag, 18
  br i1 %spec.select.i.i18.i, label %bb.e, label %_ZNK4llvm4Type13getScalarTypeEv.exit20.i

bb.e:                                             ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !207
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !211
  %.phi.trans.insert25.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.pre26.i = load i32, ptr %.phi.trans.insert25.i, align 8
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit20.i

_ZNK4llvm4Type13getScalarTypeEv.exit20.i:         ; preds = %bb.e, %_ZNK4llvm4Type13getScalarTypeEv.exit.i
  %i.ak = phi i32 [ %.pre26.i, %bb.e ], [ %i.af, %_ZNK4llvm4Type13getScalarTypeEv.exit.i ] ; 2 uses
  %i.al = and i32 %i.ak, 255
  %i.am = icmp eq i32 %i.al, 12
  %or.cond.i = and i1 %i.ab, %i.am
  %.mask.i = and i32 %i.z, -256
  %i.an = icmp eq i32 %.mask.i, 2048
  %or.cond29.i = select i1 %or.cond.i, i1 %i.an, i1 false
  %.mask24.i = and i32 %i.ak, -256
  %i.ao = icmp eq i32 %.mask24.i, 8192
  %or.cond = and i1 %i.ao, %or.cond29.i
  br i1 %or.cond, label %bb.f, label %_ZL13isSplitFatPtrPN4llvm4TypeE.exit.thread

bb.f:                                             ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit20.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !328
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 528
  store ptr %i.as, ptr %i.at, align 8, !tbaa !330
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 3 uses
  store ptr %i.aq, ptr %i.au, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #19
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !331
  store i64 %i.aw, ptr %i.ap, align 8, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.ax = getelementptr inbounds i8, ptr %1, i64 -32 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !193
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !167
  store ptr %i.ba, ptr %i.b, align 8, !tbaa !211
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !420 ; 3 uses
  %i.bd = lshr i16 %i.bc, 5
  %i.be = and i16 %i.bd, 7
  switch i16 %i.be, label %._crit_edge.i [
    i16 7, label %_ZNK4llvm17AtomicCmpXchgInst17getMergedOrderingEv.exit
    i16 4, label %bb.g
  ]

._crit_edge.i:                                    ; preds = %bb.f
  %.pre.i39 = lshr i16 %i.bc, 2
  %.pre1.i = and i16 %.pre.i39, 7
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bf = lshr i16 %i.bc, 2
  %i.bg = and i16 %i.bf, 7                        ; 2 uses
  switch i16 %i.bg, label %bb.h [
    i16 2, label %_ZNK4llvm17AtomicCmpXchgInst17getMergedOrderingEv.exit
    i16 5, label %.fold.split.i
  ]

bb.h:                                             ; preds = %bb.g, %._crit_edge.i
  %.pre-phi2.i = phi i16 [ %.pre1.i, %._crit_edge.i ], [ %i.bg, %bb.g ]
  %i.bh = zext nneg i16 %.pre-phi2.i to i32
  br label %_ZNK4llvm17AtomicCmpXchgInst17getMergedOrderingEv.exit

.fold.split.i:                                    ; preds = %bb.g
  br label %_ZNK4llvm17AtomicCmpXchgInst17getMergedOrderingEv.exit

_ZNK4llvm17AtomicCmpXchgInst17getMergedOrderingEv.exit: ; preds = %bb.f, %bb.g, %bb.h, %.fold.split.i
  %.0.i38 = phi i32 [ %i.bh, %bb.h ], [ 7, %bb.f ], [ 4, %bb.g ], [ 6, %.fold.split.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !1495 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !701
  %.not.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i, label %_ZNK4llvm11Instruction11getMetadataEj.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm17AtomicCmpXchgInst17getMergedOrderingEv.exit
  %i.bm = tail call noundef ptr @_ZNK4llvm5Value15getMetadataImplEj(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 9) #23
  %i.bn = icmp eq ptr %i.bm, null
  %9 = select i1 %i.bn, i32 0, i32 2
  br label %_ZNK4llvm11Instruction11getMetadataEj.exit

_ZNK4llvm11Instruction11getMetadataEj.exit:       ; preds = %_ZNK4llvm17AtomicCmpXchgInst17getMergedOrderingEv.exit, %bb.i
  %.0.i40 = phi i32 [ 0, %_ZNK4llvm17AtomicCmpXchgInst17getMergedOrderingEv.exit ], [ %9, %bb.i ] ; 2 uses
  %i.bo = tail call fastcc { ptr, ptr } @_ZN12_GLOBAL__N_115SplitPtrStructs11getPtrPartsEPN4llvm5ValueE(ptr noundef nonnull align 8 dereferenceable(704) %0, ptr noundef nonnull %i.h) ; 2 uses
  %i.bp = extractvalue { ptr, ptr } %i.bo, 0
  %i.bq = extractvalue { ptr, ptr } %i.bo, 1
  %i.br = icmp samesign ugt i32 %.0.i38, 4
  br i1 %i.br, label %bb.j, label %_ZN12_GLOBAL__N_115SplitPtrStructs19insertPreMemOpFenceEN4llvm14AtomicOrderingEh.exit

bb.j:                                             ; preds = %_ZNK4llvm11Instruction11getMetadataEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i16 257, ptr %i.bs, align 8
  %i.bt = tail call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 0) #19 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1070, !nonnull !38, !align !39
  tail call void @_ZN4llvm9FenceInstC1ERNS_11LLVMContextENS_14AtomicOrderingEhNS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.bt, ptr noundef nonnull align 8 dereferenceable(8) %i.bv, i32 noundef 5, i8 noundef zeroext %i.bj, ptr null, i64 0) #19
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !547, !nonnull !38, !align !39 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.au, align 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !29
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull %i.bt, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.2.0.copyload.i.i.i) #19, !inline_history !1430
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %i.ap, ptr noundef nonnull %i.bt) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZN12_GLOBAL__N_115SplitPtrStructs19insertPreMemOpFenceEN4llvm14AtomicOrderingEh.exit

_ZN12_GLOBAL__N_115SplitPtrStructs19insertPreMemOpFenceEN4llvm14AtomicOrderingEh.exit: ; preds = %_ZNK4llvm11Instruction11getMetadataEj.exit, %bb.j
  %i.cb = load i16, ptr %i.bb, align 2, !tbaa !420
  %10 = trunc i16 %i.cb to i1
  %11 = or disjoint i32 %.0.i40, -2147483648
  %.1 = select i1 %10, i32 %11, i32 %.0.i40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.cc = load ptr, ptr %i.ax, align 8, !tbaa !193
  store ptr %i.cc, ptr %i.c, align 8, !tbaa !327
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ce = getelementptr inbounds i8, ptr %1, i64 -64 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !193
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !327
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.bp, ptr %i.cg, align 8, !tbaa !327
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.bq, ptr %i.ch, align 8, !tbaa !327
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !1070, !nonnull !38, !align !39
  %i.cl = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.ck) #19
  %i.cm = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.cl, i64 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #19
  store ptr %i.cm, ptr %i.ci, align 8, !tbaa !327
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.co = load ptr, ptr %i.cj, align 8, !tbaa !1070, !nonnull !38, !align !39
  %i.cp = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.co) #19
  %12 = zext i32 %.1 to i64
  %i.cq = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.cp, i64 noundef %12, i1 noundef zeroext false, i1 noundef zeroext false) #19
  store ptr %i.cq, ptr %i.cn, align 8, !tbaa !327
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i16 257, ptr %i.cr, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.cs = call noundef ptr @_ZN4llvm13IRBuilderBase29CreateIntrinsicWithoutFoldingEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEE(ptr noundef nonnull align 8 dereferenceable(88) %i.ap, i32 noundef 3431, ptr nonnull %i.b, i64 1, ptr nonnull %i.c, i64 6, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.345") align 8 %5) #19 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !198
  %i.cu = icmp ugt i8 %i.ct, 29
  %i.cv = load i8, ptr %1, align 8, !tbaa !198
  %i.cw = icmp ugt i8 %i.cv, 29
  %or.cond.i41 = and i1 %i.cu, %i.cw
  br i1 %or.cond.i41, label %bb.k, label %_ZN12_GLOBAL__N_115SplitPtrStructs12copyMetadataEPN4llvm5ValueES3_.exit

bb.k:                                             ; preds = %_ZN12_GLOBAL__N_115SplitPtrStructs19insertPreMemOpFenceEN4llvm14AtomicOrderingEh.exit
  call void @_ZN4llvm11Instruction12copyMetadataERKS0_NS_8ArrayRefIjEE(ptr noundef nonnull align 8 dereferenceable(72) %i.cs, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr null, i64 0) #19
  br label %_ZN12_GLOBAL__N_115SplitPtrStructs12copyMetadataEPN4llvm5ValueES3_.exit

_ZN12_GLOBAL__N_115SplitPtrStructs12copyMetadataEPN4llvm5ValueES3_.exit: ; preds = %_ZN12_GLOBAL__N_115SplitPtrStructs19insertPreMemOpFenceEN4llvm14AtomicOrderingEh.exit, %bb.k
  %i.cx = load i16, ptr %i.bb, align 2, !tbaa !420
  %i.cy = lshr i16 %i.cx, 8
  %i.cz = trunc nuw i16 %i.cy to i8
  %i.da = and i8 %i.cz, 63
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !167
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !649, !nonnull !38, !align !39
  %i.de = call ptr @_ZN4llvm9Attribute16getWithAlignmentERNS_11LLVMContextENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, i8 %i.da) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 4, !tbaa !341
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 72 ; 2 uses
  %i.dg = load ptr, ptr %i.db, align 8, !tbaa !167
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !649, !nonnull !38, !align !39
  %i.di = call ptr @_ZNK4llvm13AttributeList17addParamAttributeERNS_11LLVMContextENS_8ArrayRefIjEENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr nonnull %i.a, i64 1, ptr %i.de) #19
  store ptr %i.di, ptr %i.df, align 8, !tbaa !419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN4llvm5Value8takeNameEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull %1) #19
  switch i32 %.0.i38, label %_ZN12_GLOBAL__N_115SplitPtrStructs20insertPostMemOpFenceEN4llvm14AtomicOrderingEh.exit [
    i32 4, label %bb.l
    i32 6, label %bb.l
    i32 7, label %bb.l
  ]

bb.l:                                             ; preds = %_ZN12_GLOBAL__N_115SplitPtrStructs12copyMetadataEPN4llvm5ValueES3_.exit, %_ZN12_GLOBAL__N_115SplitPtrStructs12copyMetadataEPN4llvm5ValueES3_.exit, %_ZN12_GLOBAL__N_115SplitPtrStructs12copyMetadataEPN4llvm5ValueES3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i16 257, ptr %i.dj, align 8
  %i.dk = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 0) #19 ; 3 uses
  %i.dl = load ptr, ptr %i.cj, align 8, !tbaa !1070, !nonnull !38, !align !39
  call void @_ZN4llvm9FenceInstC1ERNS_11LLVMContextENS_14AtomicOrderingEhNS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.dk, ptr noundef nonnull align 8 dereferenceable(8) %i.dl, i32 noundef 4, i8 noundef zeroext %i.bj, ptr null, i64 0) #19
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !547, !nonnull !38, !align !39 ; 2 uses
  %.sroa.0.0.copyload.i.i.i42 = load ptr, ptr %i.au, align 8
  %.sroa.2.0.copyload.i.i.i44 = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !29
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull %i.dk, ptr noundef nonnull align 8 dereferenceable(34) %2, ptr %.sroa.0.0.copyload.i.i.i42, i64 %.sroa.2.0.copyload.i.i.i44) #19, !inline_history !1431
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %i.ap, ptr noundef nonnull %i.dk) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %_ZN12_GLOBAL__N_115SplitPtrStructs20insertPostMemOpFenceEN4llvm14AtomicOrderingEh.exit

_ZN12_GLOBAL__N_115SplitPtrStructs20insertPostMemOpFenceEN4llvm14AtomicOrderingEh.exit: ; preds = %_ZN12_GLOBAL__N_115SplitPtrStructs12copyMetadataEPN4llvm5ValueES3_.exit, %bb.l
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !167
  %i.dt = call noundef ptr @_ZN4llvm11PoisonValue3getEPNS_4TypeE(ptr noundef %i.ds) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !341
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i16 257, ptr %i.du, align 8
  %i.dv = call noundef ptr @_ZN4llvm13IRBuilderBase17CreateInsertValueEPNS_5ValueES2_NS_8ArrayRefIjEERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %i.ap, ptr noundef %i.dt, ptr noundef nonnull %i.cs, ptr nonnull %i.d, i64 1, ptr noundef nonnull align 8 dereferenceable(34) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.dw = load ptr, ptr %i.ce, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i16 257, ptr %i.dx, align 8
  %i.dy = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateICmpENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %i.ap, i32 noundef 32, ptr noundef nonnull %i.cs, ptr noundef %i.dw, ptr noundef nonnull align 8 dereferenceable(34) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  store i32 1, ptr %i.e, align 4, !tbaa !341
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i16 257, ptr %i.dz, align 8
  %i.ea = call noundef ptr @_ZN4llvm13IRBuilderBase17CreateInsertValueEPNS_5ValueES2_NS_8ArrayRefIjEERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %i.ap, ptr noundef %i.dv, ptr noundef %i.dy, ptr nonnull %i.e, i64 1, ptr noundef nonnull align 8 dereferenceable(34) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  store ptr %1, ptr %i.f, align 8, !tbaa !286
  %i.ec = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noundef nonnull align 8 dereferenceable(8) %i.f), !noalias !1497 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.ea) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %_ZL13isSplitFatPtrPN4llvm4TypeE.exit.thread

_ZL13isSplitFatPtrPN4llvm4TypeE.exit.thread:      ; preds = %bb.b, %_ZNK4llvm4Type13getScalarTypeEv.exit20.i, %bb.a, %_ZN12_GLOBAL__N_115SplitPtrStructs20insertPostMemOpFenceEN4llvm14AtomicOrderingEh.exit
  ret { ptr, ptr } zeroinitializer
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm13IRBuilderBase10CreateICmpENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(34) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !38, !align !39 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %1, ptr noundef %2, ptr noundef %3) #19 ; 2 uses
  %.not.not = icmp eq ptr %i.f, null
  br i1 %.not.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 2) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i16 257, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !167  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = and i32 %i.l, 254
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ne i32 %i.m, 18
  %.not.not9.i.i = icmp eq ptr %i.j, null
  %.not.not.i.i = or i1 %.not.not9.i.i, %spec.select.i.i.i.i.i.i.i.i.i.i
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !649, !nonnull !38, !align !39
  %i.o = tail call noundef ptr @_ZN4llvm4Type9getInt1TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #19 ; 2 uses
  br i1 %.not.not.i.i, label %_ZN4llvm8ICmpInstC2ENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !650
  %i.r = load i32, ptr %i.k, align 8
  %i.s = and i32 %i.r, 255
  %i.t = icmp eq i32 %i.s, 19
  %.sroa.2.0.insert.shift.i.i.i.i = select i1 %i.t, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.q to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  %i.u = tail call noundef ptr @_ZN4llvm10VectorType3getEPNS_4TypeENS_12ElementCountE(ptr noundef %i.o, i64 %.sroa.0.0.insert.insert.i.i.i.i) #19
  br label %_ZN4llvm8ICmpInstC2ENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineE.exit

_ZN4llvm8ICmpInstC2ENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineE.exit: ; preds = %bb.b, %bb.c
  %.1.i.i = phi ptr [ %i.u, %bb.c ], [ %i.o, %bb.b ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @_ZN4llvm7CmpInstC2EPNS_4TypeENS_11Instruction8OtherOpsENS0_9PredicateEPNS_5ValueES7_RKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef %.1.i.i, i32 noundef 55, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !547, !nonnull !38, !align !39 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.x, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull %i.g, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #19, !inline_history !1504
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN4llvm8ICmpInstC2ENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineE.exit
  %.1 = phi ptr [ %i.g, %_ZN4llvm8ICmpInstC2ENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineE.exit ], [ %i.f, %bb.a ]
  ret ptr %.1
}

declare void @_ZN4llvm7CmpInstC2EPNS_4TypeENS_11Instruction8OtherOpsENS0_9PredicateEPNS_5ValueES7_RKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(34), ptr noundef byval(%"class.llvm::InsertPosition") align 8) unnamed_addr #4

declare noundef ptr @_ZN4llvm4Type9getInt1TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, ptr } @_ZN12_GLOBAL__N_115SplitPtrStructs18visitAtomicRMWInstERN4llvm13AtomicRMWInstE(ptr noundef nonnull align 8 dereferenceable(704) %0, ptr noundef nonnull align 8 dereferenceable(73) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !193  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !167  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %.not22.i = icmp eq ptr %i.d, null
  %i.g = and i32 %i.f, 1279
  %i.h = icmp ne i32 %i.g, 1040
  %or.cond28.i = or i1 %.not22.i, %i.h
  br i1 %or.cond28.i, label %_ZL13isSplitFatPtrPN4llvm4TypeE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !540
  %.not15.i = icmp eq i32 %i.j, 2
  br i1 %.not15.i, label %bb.c, label %_ZL13isSplitFatPtrPN4llvm4TypeE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !207  ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !211  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
end_hunk_0

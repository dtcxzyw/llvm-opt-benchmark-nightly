Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ISelLowering?download=true
inline.NumInlined: 54009
inline.NumDeleted: 7556
loop-unroll.NumCompletelyUnrolled: 255
loop-unroll.NumRuntimeUnrolled: 77
loop-unroll.NumUnrolled: 338
begin_hunk_0_@_ZL22combineX86ShuffleChainN4llvm8ArrayRefINS_7SDValueEEEjNS_3MVTENS0_IiEEiNS0_IPKNS_6SDNodeEEEbbbRNS_12SelectionDAGERKNS_5SDLocERKNS_12X86SubtargetE:bb.a
    i64 128, label %_ZNK4llvm3MVT14is128BitVectorEv.exit424.thread843.i
    i64 256, label %_ZNK4llvm3MVT14is256BitVectorEv.exit427.thread850.i
    i64 512, label %_ZNK4llvm3MVT14is512BitVectorEv.exit430.i.thread
  ]

_ZNK4llvm3MVT14is128BitVectorEv.exit424.thread843.i: ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit424.i, %bb.si
  %i.buv = getelementptr inbounds nuw i8, ptr %13, i64 360
  %i.buw = load i32, ptr %i.buv, align 8, !tbaa !297
  %i.bux = icmp sgt i32 %i.buw, 3
  br i1 %i.bux, label %bb.tq, label %.critedge363.i

_ZNK4llvm3MVT14is256BitVectorEv.exit427.thread850.i: ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit424.i, %bb.sj
  %i.buy = getelementptr inbounds nuw i8, ptr %13, i64 360
  %i.buz = load i32, ptr %i.buy, align 8, !tbaa !297
  %i.bva = icmp sgt i32 %i.buz, 7
  br i1 %i.bva, label %bb.tq, label %.critedge363.i

_ZNK4llvm3MVT14is512BitVectorEv.exit430.i.thread: ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit424.i, %bb.sk
  %i.bvb = getelementptr inbounds nuw i8, ptr %13, i64 395
  %i.bvc = load i8, ptr %i.bvb, align 1, !tbaa !333, !range !23, !noundef !24
  %i.bvd = trunc nuw i8 %i.bvc to i1
  br i1 %i.bvd, label %bb.tq, label %.critedge363.i

bb.tq:                                            ; preds = %_ZNK4llvm3MVT14is512BitVectorEv.exit430.i.thread, %_ZNK4llvm3MVT14is256BitVectorEv.exit427.thread850.i, %_ZNK4llvm3MVT14is128BitVectorEv.exit424.thread843.i
  %.sroa.0.0.copyload.i431835.i = phi i32 [ 64, %_ZNK4llvm3MVT14is512BitVectorEv.exit430.i.thread ], [ 32, %_ZNK4llvm3MVT14is256BitVectorEv.exit427.thread850.i ], [ 16, %_ZNK4llvm3MVT14is128BitVectorEv.exit424.thread843.i ]
  %i.bve = call fastcc noundef i32 @_ZL24matchShuffleAsByteRotateN4llvm3MVTERNS_7SDValueES2_NS_8ArrayRefIiEE(i16 %i.qv, ptr noundef nonnull align 8 dereferenceable(12) %140, ptr noundef nonnull align 8 dereferenceable(12) %141, ptr readonly %i.bnz, i64 %i.bob) ; 2 uses
  %i.bvf = icmp slt i32 %i.bve, 1
  br i1 %i.bvf, label %.critedge363.i, label %bb.tr

bb.tr:                                            ; preds = %bb.tq
  store i32 761, ptr %i.t, align 4, !tbaa !189
  %.sroa.2.0.copyload.i433.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i2024, align 8
  %i.bvg = trunc nuw i8 %.sroa.2.0.copyload.i433.i to i1
  br i1 %i.bvg, label %bb.ts, label %_ZNK4llvm8TypeSizecvmEv.exit436.i

bb.ts:                                            ; preds = %bb.tr
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #40
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit436.i:                ; preds = %bb.tr
  %i.bvh = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 5, i32 noundef %.sroa.0.0.copyload.i431835.i)
  store i16 %i.bvh, ptr %118, align 2, !tbaa !299
  store i32 %i.bve, ptr %i.u, align 4, !tbaa !189
  br label %bb.xp

.critedge363.i:                                   ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit424.i, %_ZNK4llvm3MVT14is128BitVectorEv.exit.i2108, %bb.tq, %_ZNK4llvm3MVT14is512BitVectorEv.exit430.i.thread, %_ZNK4llvm3MVT14is256BitVectorEv.exit427.thread850.i, %_ZNK4llvm3MVT14is128BitVectorEv.exit424.thread843.i, %.thread669.i, %bb.sh
  %i.bvi = getelementptr inbounds nuw i8, ptr %13, i64 502
  %i.bvj = load i8, ptr %i.bvi, align 2, !tbaa !337, !range !23, !noundef !24
  %i.bvk = trunc nuw i8 %i.bvj to i1
  br i1 %i.bvk, label %bb.tt, label %.critedge366.i

bb.tt:                                            ; preds = %.critedge363.i
  %.idx3.i.i437.i = shl nuw nsw i64 %i.bob, 2     ; 2 uses
  %i.bvl = getelementptr inbounds nuw i8, ptr %i.bnz, i64 %.idx3.i.i437.i
  %i.bvm = lshr i64 %i.bob, 2                     ; 2 uses
  %.not.i.i438.i = icmp eq i64 %i.bvm, 0
  br i1 %.not.i.i438.i, label %._crit_edge.i.i.i.i.i.i2089, label %.lr.ph.i.i.i.i.i.i2087

.lr.ph.i.i.i.i.i.i2087:                           ; preds = %bb.tt
  %i.bvn = and i64 %.idx3.i.i437.i, 17179869168
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.bnz, i64 %i.bvn
  br label %bb.tu

bb.tu:                                            ; preds = %bb.ty, %.lr.ph.i.i.i.i.i.i2087
  %.051.i.i.i.i.i.i = phi i64 [ %i.bvm, %.lr.ph.i.i.i.i.i.i2087 ], [ %i.bvw, %bb.ty ] ; 2 uses
  %.02950.i.i.i.i.i.i = phi ptr [ %i.bnz, %.lr.ph.i.i.i.i.i.i2087 ], [ %i.bvv, %bb.ty ] ; 9 uses
  %.029.val39.i.i.i.i.i.i = load i32, ptr %.02950.i.i.i.i.i.i, align 4, !tbaa !189
  %i.bvo = icmp eq i32 %.029.val39.i.i.i.i.i.i, -2
  br i1 %i.bvo, label %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i", label %bb.tv

bb.tv:                                            ; preds = %bb.tu
  %i.bvp = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i.i, i64 4
  %.val37.i.i.i.i.i.i = load i32, ptr %i.bvp, align 4, !tbaa !189
  %i.bvq = icmp eq i32 %.val37.i.i.i.i.i.i, -2
  br i1 %i.bvq, label %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit", label %bb.tw

bb.tw:                                            ; preds = %bb.tv
  %i.bvr = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i.i, i64 8
  %.val35.i.i.i.i.i.i = load i32, ptr %i.bvr, align 4, !tbaa !189
  %i.bvs = icmp eq i32 %.val35.i.i.i.i.i.i, -2
  br i1 %i.bvs, label %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit3468", label %bb.tx

bb.tx:                                            ; preds = %bb.tw
  %i.bvt = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i.i, i64 12
  %.val33.i.i.i.i.i.i = load i32, ptr %i.bvt, align 4, !tbaa !189
  %i.bvu = icmp eq i32 %.val33.i.i.i.i.i.i, -2
  br i1 %i.bvu, label %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit3470", label %bb.ty

bb.ty:                                            ; preds = %bb.tx
  %i.bvv = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i.i, i64 16
  %i.bvw = add nsw i64 %.051.i.i.i.i.i.i, -1
  %i.bvx = icmp sgt i64 %.051.i.i.i.i.i.i, 1
  br i1 %i.bvx, label %bb.tu, label %._crit_edge.loopexit.i.i.i.i.i.i2088, !llvm.loop !4997

._crit_edge.loopexit.i.i.i.i.i.i2088:             ; preds = %bb.ty
  %i.bvy = and i32 %i.boa, 3
  br label %._crit_edge.i.i.i.i.i.i2089

._crit_edge.i.i.i.i.i.i2089:                      ; preds = %._crit_edge.loopexit.i.i.i.i.i.i2088, %bb.tt
  %.pre-phi60.i.i.i.i.i.i = phi i32 [ %i.bvy, %._crit_edge.loopexit.i.i.i.i.i.i2088 ], [ %i.boa, %bb.tt ]
  %.029.lcssa.i.i.i.i.i.i2090 = phi ptr [ %scevgep.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i2088 ], [ %i.bnz, %bb.tt ] ; 5 uses
  switch i32 %.pre-phi60.i.i.i.i.i.i, label %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.thread.i.i" [
    i32 3, label %bb.tz
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i.i
    i32 1, label %._crit_edge._crit_edge57.i.i.i.i.i.i
  ]

bb.tz:                                            ; preds = %._crit_edge.i.i.i.i.i.i2089
  %.029.val.i.i.i.i.i.i = load i32, ptr %.029.lcssa.i.i.i.i.i.i2090, align 4, !tbaa !189
  %i.bvz = icmp eq i32 %.029.val.i.i.i.i.i.i, -2
  br i1 %i.bvz, label %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i", label %bb.ua

bb.ua:                                            ; preds = %bb.tz
  %i.bwa = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i2090, i64 4
  br label %._crit_edge._crit_edge.i.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i:               ; preds = %bb.ua, %._crit_edge.i.i.i.i.i.i2089
  %.1.i.i.i.i.i.i2107 = phi ptr [ %i.bwa, %bb.ua ], [ %.029.lcssa.i.i.i.i.i.i2090, %._crit_edge.i.i.i.i.i.i2089 ] ; 3 uses
  %.1.val.i.i.i.i.i.i = load i32, ptr %.1.i.i.i.i.i.i2107, align 4, !tbaa !189
  %i.bwb = icmp eq i32 %.1.val.i.i.i.i.i.i, -2
  br i1 %i.bwb, label %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i", label %bb.ub

bb.ub:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i
  %i.bwc = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i2107, i64 4
  br label %._crit_edge._crit_edge57.i.i.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i.i.i:             ; preds = %bb.ub, %._crit_edge.i.i.i.i.i.i2089
  %.2.i.i.i.i.i.i2091 = phi ptr [ %i.bwc, %bb.ub ], [ %.029.lcssa.i.i.i.i.i.i2090, %._crit_edge.i.i.i.i.i.i2089 ] ; 2 uses
  %.2.val.i.i.i.i.i.i = load i32, ptr %.2.i.i.i.i.i.i2091, align 4, !tbaa !189
  %i.bwd = icmp eq i32 %.2.val.i.i.i.i.i.i, -2
  br i1 %i.bwd, label %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i", label %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.thread.i.i"

"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit": ; preds = %bb.tv
  %i.bwe = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i.i, i64 4
  br label %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i"

"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit3468": ; preds = %bb.tw
  %i.bwf = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i.i, i64 8
  br label %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i"

"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit3470": ; preds = %bb.tx
  %i.bwg = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i.i, i64 12
  br label %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i"

"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i": ; preds = %bb.tu, %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit", %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit3468", %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit3470", %._crit_edge._crit_edge57.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i, %bb.tz
  %.028.i.i.i.i.i.i2106 = phi ptr [ %.1.i.i.i.i.i.i2107, %._crit_edge._crit_edge.i.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i.i2090, %bb.tz ], [ %.2.i.i.i.i.i.i2091, %._crit_edge._crit_edge57.i.i.i.i.i.i ], [ %i.bwg, %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit3470" ], [ %i.bwf, %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit3468" ], [ %i.bwe, %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit" ], [ %.02950.i.i.i.i.i.i, %bb.tu ]
  %.not126.i.i = icmp eq ptr %.028.i.i.i.i.i.i2106, %i.bvl
  br i1 %.not126.i.i, label %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.thread.i.i", label %.critedge366.i

"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.thread.i.i": ; preds = %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i", %._crit_edge._crit_edge57.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i2089
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #38
  %i.bwh = sext i32 %i.boa to i64                 ; 5 uses
  %i.bwi = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 5 uses
  store ptr %i.bwi, ptr %24, align 8, !tbaa !26
  %i.bwj = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 5 uses
  store i32 0, ptr %i.bwj, align 8, !tbaa !630
  %i.bwk = getelementptr inbounds nuw i8, ptr %24, i64 12
  store i32 32, ptr %i.bwk, align 4, !tbaa !631
  %i.bwl = icmp eq i32 %i.boa, 0                  ; 2 uses
  br i1 %i.bwl, label %_ZN4llvm11SmallVectorIiLj32EEC2Em.exit.i.i, label %bb.uc

bb.uc:                                            ; preds = %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.thread.i.i"
  %i.bwm = icmp ugt i32 %i.boa, 32
  br i1 %i.bwm, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i.i: ; preds = %bb.uc
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %24, ptr noundef nonnull %i.bwi, i64 noundef %i.bwh, i64 noundef 4) #38
  %.pre.i.i.i.i.i = load i32, ptr %i.bwj, align 8, !tbaa !630
  %.pre13.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i to i64 ; 2 uses
  %.not11.i.i.i.i.i = icmp samesign eq i64 %i.bwh, %.pre13.i.i.i.i.i
  %.pre792.pre.pre.i = load ptr, ptr %24, align 8, !tbaa !26 ; 2 uses
  br i1 %.not11.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i.i, %bb.uc
  %i.bwn = phi ptr [ %i.bwi, %bb.uc ], [ %.pre792.pre.pre.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i.i ] ; 2 uses
  %.pre-phi.i.i3.i.i.i = phi i64 [ 0, %bb.uc ], [ %.pre13.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i.i ] ; 2 uses
  %i.bwo = getelementptr [4 x i8], ptr %i.bwn, i64 %.pre-phi.i.i3.i.i.i
  %i.bwp = sub nsw i64 %i.bwh, %.pre-phi.i.i3.i.i.i
  %i.bwq = shl nsw i64 %i.bwp, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bwo, i8 0, i64 %i.bwq, i1 false), !tbaa !189
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i.i
  %.pre792.pre.i = phi ptr [ %i.bwn, %.lr.ph.preheader.i.i.i.i.i ], [ %.pre792.pre.pre.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i.i ]
  store i32 %i.boa, ptr %i.bwj, align 8, !tbaa !630
  br label %_ZN4llvm11SmallVectorIiLj32EEC2Em.exit.i.i

_ZN4llvm11SmallVectorIiLj32EEC2Em.exit.i.i:       ; preds = %.sink.split.i.i.i.i.i, %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.thread.i.i"
  %.pre792.i = phi ptr [ %.pre792.pre.i, %.sink.split.i.i.i.i.i ], [ %i.bwi, %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.thread.i.i" ] ; 15 uses
  %i.bwr = shl i32 %i.boh, 1                      ; 2 uses
  %i.bws = icmp ugt i32 %i.bwr, 64
  br i1 %i.bws, label %.loopexit132.i.i, label %.preheader129.lr.ph.i.i

.preheader129.lr.ph.i.i:                          ; preds = %_ZN4llvm11SmallVectorIiLj32EEC2Em.exit.i.i
  %.not593.i.i.i = icmp slt i32 %i.boa, 1         ; 2 uses
  %wide.trip.count.i.i.i2092 = and i64 %i.bob, 2147483647 ; 2 uses
  br label %.preheader129.i.i

.preheader129.i.i:                                ; preds = %.thread.i.i, %.preheader129.lr.ph.i.i
  %i.bwt = phi i32 [ %i.bwr, %.preheader129.lr.ph.i.i ], [ %i.cbl, %.thread.i.i ] ; 4 uses
  %.052161.i.i = phi i32 [ 2, %.preheader129.lr.ph.i.i ], [ %i.cbk, %.thread.i.i ] ; 6 uses
  %i.bwu = add i32 %.052161.i.i, %i.boa
  %174 = sext i32 %.052161.i.i to i64             ; 3 uses
  %.idx127.i.i = shl nsw i64 %174, 2              ; 5 uses
  %175 = zext i32 %.052161.i.i to i64
  %i.bwv = add nsw i64 %.idx127.i.i, -8
  %i.bww = add nsw i64 %.idx127.i.i, -4           ; 2 uses
  %i.bwx = lshr exact i64 %i.bww, 2
  %i.bwy = add nuw nsw i64 %i.bwx, 1              ; 2 uses
  %min.iters.check3761 = icmp ult i64 %i.bww, 28
  %n.vec3763 = and i64 %i.bwy, 9223372036854775800 ; 4 uses
  %i.bwz = trunc i64 %n.vec3763 to i32
  %i.bxa = shl i64 %n.vec3763, 2
  %cmp.n3775 = icmp eq i64 %i.bwy, %n.vec3763
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit96.i.i, %.preheader129.i.i
  %indvar = phi i64 [ %indvar.next, %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit96.i.i ], [ 0, %.preheader129.i.i ] ; 3 uses
  %indvars.iv192.i.i = phi i64 [ %indvars.iv.next193.i.i, %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit96.i.i ], [ 1, %.preheader129.i.i ] ; 4 uses
  %i.bxb = and i64 %indvar, 4611686018427387903   ; 2 uses
  %i.bxc = shl i64 %indvar, 2
  %i.bxd = sub i64 %i.bwv, %i.bxc                 ; 2 uses
  br i1 %i.bwl, label %._crit_edge.i442.i, label %.lr.ph.i439.i

.lr.ph.i439.i:                                    ; preds = %.preheader.i.i
  %.idx.i.i = shl nuw nsw i64 %indvars.iv192.i.i, 2 ; 2 uses
  %i.bxe = trunc nuw nsw i64 %indvars.iv192.i.i to i32
  %i.bxf = sub i32 %i.bwu, %i.bxe                 ; 2 uses
  %.not6.i68.i.i = icmp eq i64 %.idx.i.i, %.idx127.i.i
  br i1 %.not6.i68.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %.lr.ph.i439.i
  %i.bxg = add nuw nsw i64 %i.bxb, 1              ; 2 uses
  %min.iters.check3797 = icmp samesign ult i64 %i.bxb, 7
  %n.vec3799 = and i64 %i.bxg, 9223372036854775800 ; 4 uses
  %i.bxh = trunc i64 %n.vec3799 to i32
  %i.bxi = shl i64 %n.vec3799, 2
  %cmp.n3811 = icmp eq i64 %i.bxg, %n.vec3799
  %i.bxj = lshr exact i64 %i.bxd, 2
  %i.bxk = add nuw nsw i64 %i.bxj, 1              ; 2 uses
  %min.iters.check3779 = icmp ult i64 %i.bxd, 28
  %n.vec3781 = and i64 %i.bxk, 9223372036854775800 ; 4 uses
  %i.bxl = trunc i64 %n.vec3781 to i32
  %i.bxm = shl i64 %n.vec3781, 2
  %cmp.n3793 = icmp eq i64 %i.bxk, %n.vec3781
  br label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i439.i, %_ZSt4iotaIPiiEvT_S1_T0_.exit.us.i.i
  %indvars.iv188.i.i = phi i64 [ %indvars.iv.next189.i.i, %_ZSt4iotaIPiiEvT_S1_T0_.exit.us.i.i ], [ 0, %.lr.ph.i439.i ] ; 3 uses
  %i.bxn = getelementptr inbounds [4 x i8], ptr %.pre792.i, i64 %indvars.iv188.i.i ; 4 uses
  %i.bxo = getelementptr inbounds nuw i8, ptr %i.bxn, i64 %.idx127.i.i
  %i.bxp = trunc nsw i64 %indvars.iv188.i.i to i32
  %i.bxq = add i32 %i.bxf, %i.bxp                 ; 3 uses
  br i1 %min.iters.check3761, label %.lr.ph.i66.us.i.i.preheader, label %vector.ph3762

vector.ph3762:                                    ; preds = %.lr.ph.split.us.i.i
  %i.bxr = add i32 %i.bxq, %i.bwz
  %i.bxs = getelementptr i8, ptr %i.bxn, i64 %i.bxa
  %broadcast.splatinsert3764 = insertelement <4 x i32> poison, i32 %i.bxq, i64 0
  %broadcast.splat3765 = shufflevector <4 x i32> %broadcast.splatinsert3764, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction3766 = add nsw <4 x i32> %broadcast.splat3765, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body3767

vector.body3767:                                  ; preds = %vector.body3767, %vector.ph3762
  %index3768 = phi i64 [ 0, %vector.ph3762 ], [ %index.next3772, %vector.body3767 ] ; 2 uses
  %vec.ind3769 = phi <4 x i32> [ %induction3766, %vector.ph3762 ], [ %vec.ind.next3773, %vector.body3767 ] ; 3 uses
  %step.add3770 = add nsw <4 x i32> %vec.ind3769, splat (i32 4)
  %i.bxt = shl i64 %index3768, 2
  %next.gep3771 = getelementptr i8, ptr %i.bxn, i64 %i.bxt ; 2 uses
  %i.bxu = getelementptr i8, ptr %next.gep3771, i64 16
  store <4 x i32> %vec.ind3769, ptr %next.gep3771, align 4, !tbaa !189
  store <4 x i32> %step.add3770, ptr %i.bxu, align 4, !tbaa !189
  %index.next3772 = add nuw i64 %index3768, 8     ; 2 uses
  %vec.ind.next3773 = add nsw <4 x i32> %vec.ind3769, splat (i32 8)
  %i.bxv = icmp eq i64 %index.next3772, %n.vec3763
  br i1 %i.bxv, label %middle.block3774, label %vector.body3767, !llvm.loop !4998

middle.block3774:                                 ; preds = %vector.body3767
  br i1 %cmp.n3775, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.us.i.i, label %.lr.ph.i66.us.i.i.preheader

.lr.ph.i66.us.i.i.preheader:                      ; preds = %.lr.ph.split.us.i.i, %middle.block3774
  %.08.i.us.i.i.ph = phi i32 [ %i.bxq, %.lr.ph.split.us.i.i ], [ %i.bxr, %middle.block3774 ]
  %.057.i.us.i.i.ph = phi ptr [ %i.bxn, %.lr.ph.split.us.i.i ], [ %i.bxs, %middle.block3774 ]
  br label %.lr.ph.i66.us.i.i

.lr.ph.i66.us.i.i:                                ; preds = %.lr.ph.i66.us.i.i.preheader, %.lr.ph.i66.us.i.i
  %.08.i.us.i.i = phi i32 [ %i.bxw, %.lr.ph.i66.us.i.i ], [ %.08.i.us.i.i.ph, %.lr.ph.i66.us.i.i.preheader ] ; 2 uses
  %.057.i.us.i.i = phi ptr [ %i.bxx, %.lr.ph.i66.us.i.i ], [ %.057.i.us.i.i.ph, %.lr.ph.i66.us.i.i.preheader ] ; 2 uses
  store i32 %.08.i.us.i.i, ptr %.057.i.us.i.i, align 4, !tbaa !189
  %i.bxw = add nsw i32 %.08.i.us.i.i, 1
  %i.bxx = getelementptr inbounds nuw i8, ptr %.057.i.us.i.i, i64 4 ; 2 uses
  %.not.i67.us.i.i = icmp eq ptr %i.bxx, %i.bxo
  br i1 %.not.i67.us.i.i, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.us.i.i, label %.lr.ph.i66.us.i.i, !llvm.loop !4999

_ZSt4iotaIPiiEvT_S1_T0_.exit.us.i.i:              ; preds = %.lr.ph.i66.us.i.i, %middle.block3774
  %indvars.iv.next189.i.i = add nsw i64 %indvars.iv188.i.i, %174 ; 2 uses
  %i.bxy = icmp eq i64 %indvars.iv.next189.i.i, %i.bwh
  br i1 %i.bxy, label %._crit_edge.i442.i, label %.lr.ph.split.us.i.i, !llvm.loop !5000

._crit_edge.i442.i:                               ; preds = %_ZSt4iotaIPiiEvT_S1_T0_.exit73.loopexit.i.i, %_ZSt4iotaIPiiEvT_S1_T0_.exit.us.i.i, %.preheader.i.i
  %i.bxz = load i32, ptr %i.bwj, align 8, !tbaa !630 ; 8 uses
  %.not.i65.i.i = icmp eq i32 %i.bxz, %i.boa
  br i1 %.not.i65.i.i, label %.preheader.i.i.i, label %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit.i.i

.preheader.i.i.i:                                 ; preds = %._crit_edge.i442.i
  br i1 %.not593.i.i.i, label %.loopexit128.i.i, label %.lr.ph.i.i.i2099

.lr.ph.i.i.i2099:                                 ; preds = %.preheader.i.i.i, %.critedge.i.i.i
  %indvars.iv.i.i.i2100 = phi i64 [ %indvars.iv.next.i.i.i2102, %.critedge.i.i.i ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.bya = getelementptr inbounds nuw [4 x i8], ptr %i.bnz, i64 %indvars.iv.i.i.i2100
  %i.byb = load i32, ptr %i.bya, align 4, !tbaa !189 ; 2 uses
  %i.byc = getelementptr inbounds nuw [4 x i8], ptr %.pre792.i, i64 %indvars.iv.i.i.i2100
  %i.byd = load i32, ptr %i.byc, align 4, !tbaa !189
  %i.bye = icmp slt i32 %i.byb, 0
  %.not58.i.i.i = icmp eq i32 %i.byb, %i.byd
  %or.cond.i.i.i2101 = select i1 %i.bye, i1 true, i1 %.not58.i.i.i
  br i1 %or.cond.i.i.i2101, label %.critedge.i.i.i, label %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit.i.i

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i2099
  %indvars.iv.next.i.i.i2102 = add nuw nsw i64 %indvars.iv.i.i.i2100, 1 ; 2 uses
  %exitcond.not.i.i.i2103 = icmp eq i64 %indvars.iv.next.i.i.i2102, %wide.trip.count.i.i.i2092
  br i1 %exitcond.not.i.i.i2103, label %.loopexit128.i.i, label %.lr.ph.i.i.i2099, !llvm.loop !4117

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader, %_ZSt4iotaIPiiEvT_S1_T0_.exit73.loopexit.i.i
  %indvars.iv.i440.i = phi i64 [ %indvars.iv.next.i441.i, %_ZSt4iotaIPiiEvT_S1_T0_.exit73.loopexit.i.i ], [ 0, %.lr.ph.split.i.i.preheader ] ; 3 uses
  %i.byf = getelementptr inbounds [4 x i8], ptr %.pre792.i, i64 %indvars.iv.i440.i ; 5 uses
  %i.byg = getelementptr inbounds nuw i8, ptr %i.byf, i64 %.idx.i.i ; 4 uses
  %i.byh = trunc nsw i64 %indvars.iv.i440.i to i32 ; 4 uses
  %i.byi = add i32 %i.bxf, %i.byh                 ; 3 uses
  br i1 %min.iters.check3797, label %.lr.ph.i66.i.i.preheader, label %vector.ph3798

vector.ph3798:                                    ; preds = %.lr.ph.split.i.i
  %i.byj = add i32 %i.byi, %i.bxh
  %i.byk = getelementptr i8, ptr %i.byf, i64 %i.bxi
  %broadcast.splatinsert3800 = insertelement <4 x i32> poison, i32 %i.byi, i64 0
  %broadcast.splat3801 = shufflevector <4 x i32> %broadcast.splatinsert3800, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction3802 = add nsw <4 x i32> %broadcast.splat3801, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body3803

vector.body3803:                                  ; preds = %vector.body3803, %vector.ph3798
  %index3804 = phi i64 [ 0, %vector.ph3798 ], [ %index.next3808, %vector.body3803 ] ; 2 uses
  %vec.ind3805 = phi <4 x i32> [ %induction3802, %vector.ph3798 ], [ %vec.ind.next3809, %vector.body3803 ] ; 3 uses
  %step.add3806 = add nsw <4 x i32> %vec.ind3805, splat (i32 4)
  %i.byl = shl i64 %index3804, 2
  %next.gep3807 = getelementptr i8, ptr %i.byf, i64 %i.byl ; 2 uses
  %i.bym = getelementptr i8, ptr %next.gep3807, i64 16
  store <4 x i32> %vec.ind3805, ptr %next.gep3807, align 4, !tbaa !189
  store <4 x i32> %step.add3806, ptr %i.bym, align 4, !tbaa !189
  %index.next3808 = add nuw i64 %index3804, 8     ; 2 uses
  %vec.ind.next3809 = add nsw <4 x i32> %vec.ind3805, splat (i32 8)
  %i.byn = icmp eq i64 %index.next3808, %n.vec3799
  br i1 %i.byn, label %middle.block3810, label %vector.body3803, !llvm.loop !5001

middle.block3810:                                 ; preds = %vector.body3803
  br i1 %cmp.n3811, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.i.i, label %.lr.ph.i66.i.i.preheader

.lr.ph.i66.i.i.preheader:                         ; preds = %.lr.ph.split.i.i, %middle.block3810
  %.08.i.i.i.ph = phi i32 [ %i.byi, %.lr.ph.split.i.i ], [ %i.byj, %middle.block3810 ]
  %.057.i.i.i.ph = phi ptr [ %i.byf, %.lr.ph.split.i.i ], [ %i.byk, %middle.block3810 ]
  br label %.lr.ph.i66.i.i

.lr.ph.i66.i.i:                                   ; preds = %.lr.ph.i66.i.i.preheader, %.lr.ph.i66.i.i
  %.08.i.i.i = phi i32 [ %i.byo, %.lr.ph.i66.i.i ], [ %.08.i.i.i.ph, %.lr.ph.i66.i.i.preheader ] ; 2 uses
  %.057.i.i.i = phi ptr [ %i.byp, %.lr.ph.i66.i.i ], [ %.057.i.i.i.ph, %.lr.ph.i66.i.i.preheader ] ; 2 uses
  store i32 %.08.i.i.i, ptr %.057.i.i.i, align 4, !tbaa !189
  %i.byo = add nsw i32 %.08.i.i.i, 1
  %i.byp = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 4 ; 2 uses
  %.not.i67.i.i = icmp eq ptr %i.byp, %i.byg
  br i1 %.not.i67.i.i, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.i.i, label %.lr.ph.i66.i.i, !llvm.loop !5002

_ZSt4iotaIPiiEvT_S1_T0_.exit.i.i:                 ; preds = %.lr.ph.i66.i.i, %middle.block3810
  %i.byq = getelementptr inbounds i8, ptr %i.byf, i64 %.idx127.i.i
  br i1 %min.iters.check3779, label %.lr.ph.i69.i.i.preheader, label %vector.ph3780

vector.ph3780:                                    ; preds = %_ZSt4iotaIPiiEvT_S1_T0_.exit.i.i
  %i.byr = add i32 %i.byh, %i.bxl
  %i.bys = getelementptr i8, ptr %i.byg, i64 %i.bxm
  %broadcast.splatinsert3782 = insertelement <4 x i32> poison, i32 %i.byh, i64 0
  %broadcast.splat3783 = shufflevector <4 x i32> %broadcast.splatinsert3782, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction3784 = add nsw <4 x i32> %broadcast.splat3783, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body3785

vector.body3785:                                  ; preds = %vector.body3785, %vector.ph3780
  %index3786 = phi i64 [ 0, %vector.ph3780 ], [ %index.next3790, %vector.body3785 ] ; 2 uses
  %vec.ind3787 = phi <4 x i32> [ %induction3784, %vector.ph3780 ], [ %vec.ind.next3791, %vector.body3785 ] ; 3 uses
  %step.add3788 = add nsw <4 x i32> %vec.ind3787, splat (i32 4)
  %i.byt = shl i64 %index3786, 2
  %next.gep3789 = getelementptr i8, ptr %i.byg, i64 %i.byt ; 2 uses
  %i.byu = getelementptr i8, ptr %next.gep3789, i64 16
  store <4 x i32> %vec.ind3787, ptr %next.gep3789, align 4, !tbaa !189
  store <4 x i32> %step.add3788, ptr %i.byu, align 4, !tbaa !189
  %index.next3790 = add nuw i64 %index3786, 8     ; 2 uses
  %vec.ind.next3791 = add nsw <4 x i32> %vec.ind3787, splat (i32 8)
  %i.byv = icmp eq i64 %index.next3790, %n.vec3781
  br i1 %i.byv, label %middle.block3792, label %vector.body3785, !llvm.loop !5003

middle.block3792:                                 ; preds = %vector.body3785
  br i1 %cmp.n3793, label %_ZSt4iotaIPiiEvT_S1_T0_.exit73.loopexit.i.i, label %.lr.ph.i69.i.i.preheader

.lr.ph.i69.i.i.preheader:                         ; preds = %_ZSt4iotaIPiiEvT_S1_T0_.exit.i.i, %middle.block3792
  %.08.i70.i.i.ph = phi i32 [ %i.byh, %_ZSt4iotaIPiiEvT_S1_T0_.exit.i.i ], [ %i.byr, %middle.block3792 ]
  %.057.i71.i.i.ph = phi ptr [ %i.byg, %_ZSt4iotaIPiiEvT_S1_T0_.exit.i.i ], [ %i.bys, %middle.block3792 ]
  br label %.lr.ph.i69.i.i

.lr.ph.i69.i.i:                                   ; preds = %.lr.ph.i69.i.i.preheader, %.lr.ph.i69.i.i
  %.08.i70.i.i = phi i32 [ %i.byw, %.lr.ph.i69.i.i ], [ %.08.i70.i.i.ph, %.lr.ph.i69.i.i.preheader ] ; 2 uses
  %.057.i71.i.i = phi ptr [ %i.byx, %.lr.ph.i69.i.i ], [ %.057.i71.i.i.ph, %.lr.ph.i69.i.i.preheader ] ; 2 uses
  store i32 %.08.i70.i.i, ptr %.057.i71.i.i, align 4, !tbaa !189
  %i.byw = add nsw i32 %.08.i70.i.i, 1
  %i.byx = getelementptr inbounds nuw i8, ptr %.057.i71.i.i, i64 4 ; 2 uses
  %.not.i72.i.i = icmp eq ptr %i.byx, %i.byq
  br i1 %.not.i72.i.i, label %_ZSt4iotaIPiiEvT_S1_T0_.exit73.loopexit.i.i, label %.lr.ph.i69.i.i, !llvm.loop !5004

_ZSt4iotaIPiiEvT_S1_T0_.exit73.loopexit.i.i:      ; preds = %.lr.ph.i69.i.i, %middle.block3792
  %indvars.iv.next.i441.i = add nsw i64 %indvars.iv.i440.i, %174 ; 2 uses
  %i.byy = icmp eq i64 %indvars.iv.next.i441.i, %i.bwh
  br i1 %i.byy, label %._crit_edge.i442.i, label %.lr.ph.split.i.i, !llvm.loop !5000

.loopexit128.i.i:                                 ; preds = %.preheader.i.i.i, %.critedge.i.i.i
  %i.byz = call range(i32 0, 7) i32 @llvm.ctpop.i32(i32 %i.bwt)
  %i.bza = icmp eq i32 %i.byz, 1
  %i.bzb = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bwt, i1 true)
  %switch.idx.cast.i.i.i2104 = trunc nuw nsw i32 %i.bzb to i16
  %switch.offset.i.i.i2105 = add nuw nsw i16 %switch.idx.cast.i.i.i2104, 2
  %.sroa.0.0.i.i445.i = select i1 %i.bza, i16 %switch.offset.i.i.i2105, i16 0
  %i.bzc = sdiv i32 %i.boa, %.052161.i.i
  %i.bzd = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.i.i445.i, i32 noundef %i.bzc)
  store i16 %i.bzd, ptr %118, align 2, !tbaa !299
  br label %bb.ue

_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit.i.i: ; preds = %.lr.ph.i.i.i2099, %._crit_edge.i442.i
  %i.bze = zext i32 %i.bxz to i64                 ; 3 uses
  %.not17.i.i.i = icmp eq i32 %i.bxz, 0
  br i1 %.not17.i.i.i, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.i.i2097, label %.lr.ph.i75.preheader.i.i

.lr.ph.i75.preheader.i.i:                         ; preds = %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit.i.i
  %i.bzf = sub i32 0, %i.bxz                      ; 2 uses
  %min.iters.check3729 = icmp ult i32 %i.bxz, 8
  br i1 %min.iters.check3729, label %.lr.ph.i75.i.i.preheader, label %vector.ph3730

vector.ph3730:                                    ; preds = %.lr.ph.i75.preheader.i.i
  %n.vec3731 = and i64 %i.bze, 4294967288         ; 3 uses
  %broadcast.splatinsert3732 = insertelement <4 x i32> poison, i32 %i.bzf, i64 0
  %broadcast.splat3733 = shufflevector <4 x i32> %broadcast.splatinsert3732, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3734 = insertelement <4 x i32> poison, i32 %i.bxz, i64 0
  %broadcast.splat3735 = shufflevector <4 x i32> %broadcast.splatinsert3734, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body3736

vector.body3736:                                  ; preds = %pred.store.continue3755, %vector.ph3730
  %index3737 = phi i64 [ 0, %vector.ph3730 ], [ %index.next3756, %pred.store.continue3755 ] ; 9 uses
  %i.bzg = getelementptr inbounds nuw [4 x i8], ptr %.pre792.i, i64 %index3737 ; 3 uses
  %i.bzh = getelementptr inbounds nuw i8, ptr %i.bzg, i64 16
  %wide.load3738 = load <4 x i32>, ptr %i.bzg, align 4, !tbaa !189 ; 3 uses
  %wide.load3739 = load <4 x i32>, ptr %i.bzh, align 4, !tbaa !189 ; 3 uses
  %i.bzi = icmp sgt <4 x i32> %wide.load3738, splat (i32 -1) ; 4 uses
  %i.bzj = icmp sgt <4 x i32> %wide.load3739, splat (i32 -1) ; 4 uses
  %i.bzk = icmp slt <4 x i32> %wide.load3738, %broadcast.splat3735
  %i.bzl = icmp slt <4 x i32> %wide.load3739, %broadcast.splat3735
  %i.bzm = select <4 x i1> %i.bzk, <4 x i32> %broadcast.splat3735, <4 x i32> %broadcast.splat3733
  %i.bzn = select <4 x i1> %i.bzl, <4 x i32> %broadcast.splat3735, <4 x i32> %broadcast.splat3733
  %i.bzo = add <4 x i32> %i.bzm, %wide.load3738   ; 4 uses
  %i.bzp = add <4 x i32> %i.bzn, %wide.load3739   ; 4 uses
  %i.bzq = extractelement <4 x i1> %i.bzi, i64 0
  br i1 %i.bzq, label %pred.store.if3740, label %pred.store.continue3741

pred.store.if3740:                                ; preds = %vector.body3736
  %i.bzr = extractelement <4 x i32> %i.bzo, i64 0
  store i32 %i.bzr, ptr %i.bzg, align 4, !tbaa !189
  br label %pred.store.continue3741

pred.store.continue3741:                          ; preds = %pred.store.if3740, %vector.body3736
  %i.bzs = extractelement <4 x i1> %i.bzi, i64 1
  br i1 %i.bzs, label %pred.store.if3742, label %pred.store.continue3743

pred.store.if3742:                                ; preds = %pred.store.continue3741
  %i.bzt = getelementptr inbounds nuw [4 x i8], ptr %.pre792.i, i64 %index3737
  %i.bzu = getelementptr inbounds nuw i8, ptr %i.bzt, i64 4
  %i.bzv = extractelement <4 x i32> %i.bzo, i64 1
  store i32 %i.bzv, ptr %i.bzu, align 4, !tbaa !189
  br label %pred.store.continue3743

pred.store.continue3743:                          ; preds = %pred.store.if3742, %pred.store.continue3741
  %i.bzw = extractelement <4 x i1> %i.bzi, i64 2
  br i1 %i.bzw, label %pred.store.if3744, label %pred.store.continue3745

pred.store.if3744:                                ; preds = %pred.store.continue3743
  %i.bzx = getelementptr inbounds nuw [4 x i8], ptr %.pre792.i, i64 %index3737
  %i.bzy = getelementptr inbounds nuw i8, ptr %i.bzx, i64 8
  %i.bzz = extractelement <4 x i32> %i.bzo, i64 2
  store i32 %i.bzz, ptr %i.bzy, align 4, !tbaa !189
  br label %pred.store.continue3745

pred.store.continue3745:                          ; preds = %pred.store.if3744, %pred.store.continue3743
  %i.caa = extractelement <4 x i1> %i.bzi, i64 3
  br i1 %i.caa, label %pred.store.if3746, label %pred.store.continue3747

pred.store.if3746:                                ; preds = %pred.store.continue3745
  %i.cab = getelementptr inbounds nuw [4 x i8], ptr %.pre792.i, i64 %index3737
  %i.cac = getelementptr inbounds nuw i8, ptr %i.cab, i64 12
  %i.cad = extractelement <4 x i32> %i.bzo, i64 3
  store i32 %i.cad, ptr %i.cac, align 4, !tbaa !189
  br label %pred.store.continue3747

pred.store.continue3747:                          ; preds = %pred.store.if3746, %pred.store.continue3745
  %i.cae = extractelement <4 x i1> %i.bzj, i64 0
  br i1 %i.cae, label %pred.store.if3748, label %pred.store.continue3749

pred.store.if3748:                                ; preds = %pred.store.continue3747
  %i.caf = getelementptr inbounds nuw [4 x i8], ptr %.pre792.i, i64 %index3737
  %i.cag = getelementptr inbounds nuw i8, ptr %i.caf, i64 16
  %i.cah = extractelement <4 x i32> %i.bzp, i64 0
  store i32 %i.cah, ptr %i.cag, align 4, !tbaa !189
  br label %pred.store.continue3749

pred.store.continue3749:                          ; preds = %pred.store.if3748, %pred.store.continue3747
  %i.cai = extractelement <4 x i1> %i.bzj, i64 1
  br i1 %i.cai, label %pred.store.if3750, label %pred.store.continue3751

pred.store.if3750:                                ; preds = %pred.store.continue3749
  %i.caj = getelementptr inbounds nuw [4 x i8], ptr %.pre792.i, i64 %index3737
  %i.cak = getelementptr inbounds nuw i8, ptr %i.caj, i64 20
  %i.cal = extractelement <4 x i32> %i.bzp, i64 1
  store i32 %i.cal, ptr %i.cak, align 4, !tbaa !189
  br label %pred.store.continue3751

pred.store.continue3751:                          ; preds = %pred.store.if3750, %pred.store.continue3749
  %i.cam = extractelement <4 x i1> %i.bzj, i64 2
  br i1 %i.cam, label %pred.store.if3752, label %pred.store.continue3753

pred.store.if3752:                                ; preds = %pred.store.continue3751
  %i.can = getelementptr inbounds nuw [4 x i8], ptr %.pre792.i, i64 %index3737
  %i.cao = getelementptr inbounds nuw i8, ptr %i.can, i64 24
  %i.cap = extractelement <4 x i32> %i.bzp, i64 2
  store i32 %i.cap, ptr %i.cao, align 4, !tbaa !189
  br label %pred.store.continue3753

pred.store.continue3753:                          ; preds = %pred.store.if3752, %pred.store.continue3751
  %i.caq = extractelement <4 x i1> %i.bzj, i64 3
  br i1 %i.caq, label %pred.store.if3754, label %pred.store.continue3755

pred.store.if3754:                                ; preds = %pred.store.continue3753
  %i.car = getelementptr inbounds nuw [4 x i8], ptr %.pre792.i, i64 %index3737
  %i.cas = getelementptr inbounds nuw i8, ptr %i.car, i64 28
  %i.cat = extractelement <4 x i32> %i.bzp, i64 3
  store i32 %i.cat, ptr %i.cas, align 4, !tbaa !189
  br label %pred.store.continue3755

pred.store.continue3755:                          ; preds = %pred.store.if3754, %pred.store.continue3753
  %index.next3756 = add nuw i64 %index3737, 8     ; 2 uses
  %i.cau = icmp eq i64 %index.next3756, %n.vec3731
  br i1 %i.cau, label %middle.block3757, label %vector.body3736, !llvm.loop !5005

middle.block3757:                                 ; preds = %pred.store.continue3755
  %cmp.n3758 = icmp eq i64 %n.vec3731, %i.bze
  br i1 %cmp.n3758, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit.i.i2096, label %.lr.ph.i75.i.i.preheader

.lr.ph.i75.i.i.preheader:                         ; preds = %.lr.ph.i75.preheader.i.i, %middle.block3757
  %indvars.iv.i76.i.i.ph = phi i64 [ 0, %.lr.ph.i75.preheader.i.i ], [ %n.vec3731, %middle.block3757 ]
  br label %.lr.ph.i75.i.i

.lr.ph.i75.i.i:                                   ; preds = %.lr.ph.i75.i.i.preheader, %bb.ud
  %indvars.iv.i76.i.i = phi i64 [ %indvars.iv.next.i77.i.i, %bb.ud ], [ %indvars.iv.i76.i.i.ph, %.lr.ph.i75.i.i.preheader ] ; 2 uses
  %i.cav = getelementptr inbounds nuw [4 x i8], ptr %.pre792.i, i64 %indvars.iv.i76.i.i ; 2 uses
  %i.caw = load i32, ptr %i.cav, align 4, !tbaa !189 ; 3 uses
  %i.cax = icmp slt i32 %i.caw, 0
  br i1 %i.cax, label %bb.ud, label %.sink.split.i.i.i2093

.sink.split.i.i.i2093:                            ; preds = %.lr.ph.i75.i.i
  %i.cay = icmp slt i32 %i.caw, %i.bxz
  %.sink.p.i.i.i2094 = select i1 %i.cay, i32 %i.bxz, i32 %i.bzf
  %.sink.i.i.i2095 = add i32 %.sink.p.i.i.i2094, %i.caw
  store i32 %.sink.i.i.i2095, ptr %i.cav, align 4, !tbaa !189
  br label %bb.ud

bb.ud:                                            ; preds = %.sink.split.i.i.i2093, %.lr.ph.i75.i.i
  %indvars.iv.next.i77.i.i = add nuw nsw i64 %indvars.iv.i76.i.i, 1 ; 2 uses
  %.not.i78.i.i = icmp eq i64 %indvars.iv.next.i77.i.i, %i.bze
  br i1 %.not.i78.i.i, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit.i.i2096, label %.lr.ph.i75.i.i, !llvm.loop !5006

_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit.i.i2096: ; preds = %bb.ud, %middle.block3757
  %.pre196.i.i = load i32, ptr %i.bwj, align 8, !tbaa !630
  br label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.i.i2097

_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.i.i2097: ; preds = %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit.i.i2096, %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit.i.i
  %i.caz = phi i32 [ %.pre196.i.i, %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit.i.i2096 ], [ 0, %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit.i.i ]
  %.not.i79.i.i = icmp eq i32 %i.caz, %i.boa
  br i1 %.not.i79.i.i, label %.preheader.i81.i.i, label %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit96.i.i

.preheader.i81.i.i:                               ; preds = %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.i.i2097
  br i1 %.not593.i.i.i, label %.loopexit.i.i, label %.lr.ph.i85.i.i

.lr.ph.i85.i.i:                                   ; preds = %.preheader.i81.i.i, %.critedge.i93.i.i
  %indvars.iv.i86.i.i = phi i64 [ %indvars.iv.next.i94.i.i, %.critedge.i93.i.i ], [ 0, %.preheader.i81.i.i ] ; 3 uses
  %i.cba = getelementptr inbounds nuw [4 x i8], ptr %i.bnz, i64 %indvars.iv.i86.i.i
  %i.cbb = load i32, ptr %i.cba, align 4, !tbaa !189 ; 2 uses
  %i.cbc = getelementptr inbounds nuw [4 x i8], ptr %.pre792.i, i64 %indvars.iv.i86.i.i
  %i.cbd = load i32, ptr %i.cbc, align 4, !tbaa !189
  %i.cbe = icmp slt i32 %i.cbb, 0
  %.not58.i87.i.i = icmp eq i32 %i.cbb, %i.cbd
  %or.cond.i88.i.i = select i1 %i.cbe, i1 true, i1 %.not58.i87.i.i
  br i1 %or.cond.i88.i.i, label %.critedge.i93.i.i, label %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit96.i.i

.critedge.i93.i.i:                                ; preds = %.lr.ph.i85.i.i
  %indvars.iv.next.i94.i.i = add nuw nsw i64 %indvars.iv.i86.i.i, 1 ; 2 uses
  %exitcond.not.i95.i.i = icmp eq i64 %indvars.iv.next.i94.i.i, %wide.trip.count.i.i.i2092
  br i1 %exitcond.not.i95.i.i, label %.loopexit.i.i, label %.lr.ph.i85.i.i, !llvm.loop !4117

.loopexit.i.i:                                    ; preds = %.preheader.i81.i.i, %.critedge.i93.i.i
  %i.cbf = call range(i32 0, 7) i32 @llvm.ctpop.i32(i32 %i.bwt)
  %i.cbg = icmp eq i32 %i.cbf, 1
  %i.cbh = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bwt, i1 true)
  %switch.idx.cast.i100.i.i = trunc nuw nsw i32 %i.cbh to i16
  %switch.offset.i101.i.i = add nuw nsw i16 %switch.idx.cast.i100.i.i, 2
  %.sroa.0.0.i97.i.i = select i1 %i.cbg, i16 %switch.offset.i101.i.i, i16 0
  %i.cbi = sdiv i32 %i.boa, %.052161.i.i
  %i.cbj = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.i97.i.i, i32 noundef %i.cbi)
  store i16 %i.cbj, ptr %118, align 2, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(16) %140, i64 16, i1 false), !tbaa.struct !745
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %140, ptr noundef nonnull align 8 dereferenceable(12) %141, i64 12, i1 false), !tbaa.struct !745
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %141, ptr noundef nonnull align 8 dereferenceable(12) %23, i64 12, i1 false), !tbaa.struct !745
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  br label %bb.ue

_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit96.i.i: ; preds = %.lr.ph.i85.i.i, %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.i.i2097
  %indvars.iv.next193.i.i = add nuw nsw i64 %indvars.iv192.i.i, 1 ; 2 uses
  %.not.i443.i = icmp eq i64 %indvars.iv.next193.i.i, %175
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i443.i, label %.thread.i.i, label %.preheader.i.i, !llvm.loop !5007

bb.ue:                                            ; preds = %.loopexit.i.i, %.loopexit128.i.i
  %.053160169.i.i = trunc i64 %indvars.iv192.i.i to i32
  %.1.i.i2098 = mul i32 %.053160169.i.i, %i.boh
  %.pre791.i = load ptr, ptr %24, align 8, !tbaa !26
  br label %.loopexit132.i.i

.thread.i.i:                                      ; preds = %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit96.i.i
  %i.cbk = shl nuw nsw i32 %.052161.i.i, 1        ; 2 uses
  %i.cbl = mul i32 %i.cbk, %i.boh                 ; 2 uses
  %i.cbm = icmp ugt i32 %i.cbl, 64
  br i1 %i.cbm, label %.loopexit132.i.i, label %.preheader129.i.i, !llvm.loop !5008

.loopexit132.i.i:                                 ; preds = %.thread.i.i, %bb.ue, %_ZN4llvm11SmallVectorIiLj32EEC2Em.exit.i.i
  %i.cbn = phi ptr [ %.pre791.i, %bb.ue ], [ %.pre792.i, %_ZN4llvm11SmallVectorIiLj32EEC2Em.exit.i.i ], [ %.pre792.i, %.thread.i.i ] ; 2 uses
  %spec.select.i444.i = phi i32 [ %.1.i.i2098, %bb.ue ], [ -1, %_ZN4llvm11SmallVectorIiLj32EEC2Em.exit.i.i ], [ -1, %.thread.i.i ] ; 2 uses
  %i.cbo = icmp eq ptr %i.cbn, %i.bwi
  br i1 %i.cbo, label %_ZL19matchShuffleAsVSHLDRN4llvm3MVTERNS_7SDValueES3_jNS_8ArrayRefIiEE.exit.i, label %bb.uf

bb.uf:                                            ; preds = %.loopexit132.i.i
  call void @free(ptr noundef %i.cbn) #38
  br label %_ZL19matchShuffleAsVSHLDRN4llvm3MVTERNS_7SDValueES3_jNS_8ArrayRefIiEE.exit.i

_ZL19matchShuffleAsVSHLDRN4llvm3MVTERNS_7SDValueES3_jNS_8ArrayRefIiEE.exit.i: ; preds = %bb.uf, %.loopexit132.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  %i.cbp = icmp slt i32 %spec.select.i444.i, 1
  br i1 %i.cbp, label %.critedge366.i, label %bb.ug

bb.ug:                                            ; preds = %_ZL19matchShuffleAsVSHLDRN4llvm3MVTERNS_7SDValueES3_jNS_8ArrayRefIiEE.exit.i
  store i32 968, ptr %i.t, align 4, !tbaa !189
  store i32 %spec.select.i444.i, ptr %i.u, align 4, !tbaa !189
  br label %bb.xp

.critedge366.i:                                   ; preds = %_ZL19matchShuffleAsVSHLDRN4llvm3MVTERNS_7SDValueES3_jNS_8ArrayRefIiEE.exit.i, %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i", %.critedge363.i, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit.i2066
  %i.cbq = icmp ult i32 %i.boa, 9
  br i1 %i.cbq, label %bb.uh, label %.thread675.i

bb.uh:                                            ; preds = %.critedge366.i
  %i.cbr = getelementptr inbounds nuw i8, ptr %13, i64 360
  %i.cbs = load i32, ptr %i.cbr, align 8, !tbaa !297 ; 2 uses
  %i.cbt = icmp sgt i32 %i.cbs, 4
  br i1 %i.cbt, label %bb.ui, label %.thread675.i

bb.ui:                                            ; preds = %bb.uh
  br i1 %spec.select.i.i.i2027, label %_ZNK4llvm3MVT14is128BitVectorEv.exit448.i, label %.critedge13.i2069

_ZNK4llvm3MVT14is128BitVectorEv.exit448.i:        ; preds = %bb.ui
  br i1 %i.ary, label %.critedge.i2082.thread, label %_ZNK4llvm3MVT14is128BitVectorEv.exit448.thread.i

_ZNK4llvm3MVT14is128BitVectorEv.exit448.thread.i: ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit448.i
  %i.cbu = icmp samesign ugt i32 %i.cbs, 6
  %i.cbv = icmp eq i64 %.sroa.0.0.copyload.i.i2023, 256
  %or.cond2863 = select i1 %i.cbu, i1 %i.cbv, i1 false
  br i1 %or.cond2863, label %.critedge.i2082.thread, label %.thread675.i

.thread675.i:                                     ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit448.thread.i, %bb.uh, %.critedge366.i
  %i.cbw = icmp eq i16 %i.qv, 63
  br i1 %i.cbw, label %bb.uj, label %.critedge13.i2069

bb.uj:                                            ; preds = %.thread675.i
  %i.cbx = getelementptr inbounds nuw i8, ptr %13, i64 360
  %i.cby = load i32, ptr %i.cbx, align 8, !tbaa !297
  %i.cbz = icmp sgt i32 %i.cby, 7
  br i1 %i.cbz, label %.critedge.i2082, label %.critedge13.i2069

.critedge.i2082.thread:                           ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit448.thread.i, %_ZNK4llvm3MVT14is128BitVectorEv.exit448.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #38
  %i.cca = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  store ptr %i.cca, ptr %29, align 8, !tbaa !26
  %i.ccb = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store i32 0, ptr %i.ccb, align 8, !tbaa !630
  %i.ccc = getelementptr inbounds nuw i8, ptr %29, i64 12
  store i32 8, ptr %i.ccc, align 4, !tbaa !631
  %.idx.i452.i2808 = shl nuw nsw i64 %i.bob, 2
  br label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i

.critedge.i2082:                                  ; preds = %bb.uj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #38
  %i.ccd = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  store ptr %i.ccd, ptr %29, align 8, !tbaa !26
  %i.cce = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 4 uses
  store i32 0, ptr %i.cce, align 8, !tbaa !630
  %i.ccf = getelementptr inbounds nuw i8, ptr %29, i64 12
  store i32 8, ptr %i.ccf, align 4, !tbaa !631
  %.idx.i452.i = shl nuw nsw i64 %i.bob, 2        ; 2 uses
  %i.ccg = icmp ugt i32 %i.boa, 8
  br i1 %i.ccg, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i.i, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i.i: ; preds = %.critedge.i2082
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef nonnull %i.ccd, i64 noundef %i.bob, i64 noundef 4) #38
  %.pre8.pre.i.i.i = load i32, ptr %i.cce, align 8, !tbaa !630
  %i.cch = zext i32 %.pre8.pre.i.i.i to i64
  %.pre793.i = load ptr, ptr %29, align 8, !tbaa !26
  br label %bb.uk

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i: ; preds = %.critedge.i2082.thread, %.critedge.i2082
  %.idx.i452.i2810 = phi i64 [ %.idx.i452.i2808, %.critedge.i2082.thread ], [ %.idx.i452.i, %.critedge.i2082 ]
  %i.cci = phi ptr [ %i.ccb, %.critedge.i2082.thread ], [ %i.cce, %.critedge.i2082 ] ; 2 uses
  %i.ccj = phi ptr [ %i.cca, %.critedge.i2082.thread ], [ %i.ccd, %.critedge.i2082 ] ; 4 uses
  %.not.i.i.i.i2083 = icmp eq i32 %i.boa, 0
  br i1 %.not.i.i.i.i2083, label %_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit.i, label %bb.uk

bb.uk:                                            ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i.i
  %.idx.i452.i2809 = phi i64 [ %.idx.i452.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i.i ], [ %.idx.i452.i2810, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ]
  %i.cck = phi ptr [ %i.cce, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i.i ], [ %i.cci, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ] ; 2 uses
  %i.ccl = phi ptr [ %i.ccd, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i.i ], [ %i.ccj, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ]
  %i.ccm = phi ptr [ %.pre793.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i.i ], [ %i.ccj, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ]
  %.pre8.i5.i.i = phi i64 [ %i.cch, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ]
  %i.ccn = getelementptr inbounds nuw [4 x i8], ptr %i.ccm, i64 %.pre8.i5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ccn, ptr readonly align 4 %i.bnz, i64 %.idx.i452.i2809, i1 false)
  %.pre.i.i453.i = load i32, ptr %i.cck, align 8, !tbaa !630
  %.pre794.i = load ptr, ptr %29, align 8, !tbaa !26
  br label %_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit.i

_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit.i: ; preds = %bb.uk, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i
  %i.cco = phi ptr [ %i.cci, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ], [ %i.cck, %bb.uk ] ; 2 uses
  %i.ccp = phi ptr [ %i.ccj, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ], [ %i.ccl, %bb.uk ] ; 2 uses
  %i.ccq = phi ptr [ %i.ccj, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ], [ %.pre794.i, %bb.uk ]
  %i.ccr = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ], [ %.pre.i.i453.i, %bb.uk ]
  %i.ccs = add i32 %i.ccr, %i.boa                 ; 2 uses
  store i32 %i.ccs, ptr %i.cco, align 8, !tbaa !630
  %.sroa.0116.0.copyload.i = load ptr, ptr %140, align 8, !tbaa !449
  %.sroa.2117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %140, i64 8 ; 5 uses
  %.sroa.2117.0.copyload.i = load i32, ptr %.sroa.2117.0..sroa_idx.i, align 8, !tbaa !189
  %.sroa.0114.0.copyload.i = load ptr, ptr %141, align 8, !tbaa !449
  %.sroa.2115.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %141, i64 8 ; 5 uses
  %.sroa.2115.0.copyload.i = load i32, ptr %.sroa.2115.0..sroa_idx.i, align 8, !tbaa !189
  %i.cct = zext i32 %i.ccs to i64
  %i.ccu = call fastcc noundef zeroext i1 @_ZL19matchShuffleAsBlendN4llvm3MVTENS_7SDValueES1_NS_15MutableArrayRefIiEERKNS_5APIntERbS7_Rm(i16 %i.qv, ptr %.sroa.0116.0.copyload.i, i32 %.sroa.2117.0.copyload.i, ptr %.sroa.0114.0.copyload.i, i32 %.sroa.2115.0.copyload.i, ptr %i.ccq, i64 %i.cct, ptr noundef nonnull align 8 dereferenceable(12) %121, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.ccu, label %bb.ul, label %.critedge372.i

bb.ul:                                            ; preds = %_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit.i
  %i.ccv = icmp eq i16 %i.qv, 63
  br i1 %i.ccv, label %_ZL27isRepeatedTargetShuffleMaskjN4llvm3MVTENS_8ArrayRefIiEERNS_15SmallVectorImplIiEE.exit.i, label %bb.vi

_ZL27isRepeatedTargetShuffleMaskjN4llvm3MVTENS_8ArrayRefIiEERNS_15SmallVectorImplIiEE.exit.i: ; preds = %bb.ul
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #38
  %i.ccw = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 3 uses
  store ptr %i.ccw, ptr %30, align 8, !tbaa !26
  %i.ccx = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i32 0, ptr %i.ccx, align 8, !tbaa !630
  %i.ccy = getelementptr inbounds nuw i8, ptr %30, i64 12
  store i32 8, ptr %i.ccy, align 4, !tbaa !631
  %i.ccz = load ptr, ptr %29, align 8, !tbaa !26
  %i.cda = load i32, ptr %i.cco, align 8, !tbaa !630
  %i.cdb = zext i32 %i.cda to i64
  %i.cdc = call fastcc noundef zeroext i1 @_ZL27isRepeatedTargetShuffleMaskjjN4llvm8ArrayRefIiEERNS_15SmallVectorImplIiEE(i32 noundef 16, ptr readonly %i.ccz, i64 %i.cdb, ptr noundef nonnull align 8 dereferenceable(16) %30)
  br i1 %i.cdc, label %bb.um, label %.critedge370.i

bb.um:                                            ; preds = %_ZL27isRepeatedTargetShuffleMaskjN4llvm3MVTENS_8ArrayRefIiEERNS_15SmallVectorImplIiEE.exit.i
  store i32 0, ptr %i.u, align 4, !tbaa !189
  %i.cdd = load ptr, ptr %30, align 8, !tbaa !26  ; 8 uses
  %i.cde = load i32, ptr %i.cdd, align 4, !tbaa !189
  %i.cdf = icmp sgt i32 %i.cde, 7
  %spec.store.select.i = zext i1 %i.cdf to i32    ; 3 uses
  store i32 %spec.store.select.i, ptr %i.u, align 4
  %i.cdg = getelementptr inbounds nuw i8, ptr %i.cdd, i64 4
  %i.cdh = load i32, ptr %i.cdg, align 4, !tbaa !189
  %i.cdi = icmp sgt i32 %i.cdh, 7
  br i1 %i.cdi, label %bb.un, label %bb.uo

bb.un:                                            ; preds = %bb.um
  %i.cdj = or disjoint i32 %spec.store.select.i, 2 ; 2 uses
  store i32 %i.cdj, ptr %i.u, align 4, !tbaa !189
  br label %bb.uo

bb.uo:                                            ; preds = %bb.un, %bb.um
  %i.cdk = phi i32 [ %i.cdj, %bb.un ], [ %spec.store.select.i, %bb.um ] ; 2 uses
  %i.cdl = getelementptr inbounds nuw i8, ptr %i.cdd, i64 8
  %i.cdm = load i32, ptr %i.cdl, align 4, !tbaa !189
  %i.cdn = icmp sgt i32 %i.cdm, 7
  br i1 %i.cdn, label %bb.up, label %bb.uq

bb.up:                                            ; preds = %bb.uo
  %i.cdo = or i32 %i.cdk, 4                       ; 2 uses
  store i32 %i.cdo, ptr %i.u, align 4, !tbaa !189
  br label %bb.uq

bb.uq:                                            ; preds = %bb.up, %bb.uo
  %i.cdp = phi i32 [ %i.cdo, %bb.up ], [ %i.cdk, %bb.uo ] ; 2 uses
  %i.cdq = getelementptr inbounds nuw i8, ptr %i.cdd, i64 12
  %i.cdr = load i32, ptr %i.cdq, align 4, !tbaa !189
  %i.cds = icmp sgt i32 %i.cdr, 7
  br i1 %i.cds, label %bb.ur, label %bb.us

bb.ur:                                            ; preds = %bb.uq
  %i.cdt = or i32 %i.cdp, 8                       ; 2 uses
  store i32 %i.cdt, ptr %i.u, align 4, !tbaa !189
  br label %bb.us

bb.us:                                            ; preds = %bb.ur, %bb.uq
  %i.cdu = phi i32 [ %i.cdt, %bb.ur ], [ %i.cdp, %bb.uq ] ; 2 uses
end_hunk_0

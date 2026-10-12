Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ISelLowering?download=true
inline.NumInlined: 54009
inline.NumDeleted: 7556
loop-unroll.NumCompletelyUnrolled: 253
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 337
begin_hunk_0_@_ZL22combineX86ShuffleChainN4llvm8ArrayRefINS_7SDValueEEEjNS_3MVTENS0_IiEEiNS0_IPKNS_6SDNodeEEEbbbRNS_12SelectionDAGERKNS_5SDLocERKNS_12X86SubtargetE:bb.a
  %i.bsz = load i8, ptr %i.bsy, align 1, !tbaa !366, !range !79, !noundef !80
  %i.bta = trunc nuw i8 %i.bsz to i1
  br i1 %i.bta, label %bb.tp, label %.critedge363.i

bb.tp:                                            ; preds = %_ZNK4llvm3MVT14is512BitVectorEv.exit430.i.thread, %_ZNK4llvm3MVT14is256BitVectorEv.exit427.thread850.i, %_ZNK4llvm3MVT14is128BitVectorEv.exit424.thread843.i
  %.sroa.0.0.copyload.i431835.i = phi i32 [ 64, %_ZNK4llvm3MVT14is512BitVectorEv.exit430.i.thread ], [ 32, %_ZNK4llvm3MVT14is256BitVectorEv.exit427.thread850.i ], [ 16, %_ZNK4llvm3MVT14is128BitVectorEv.exit424.thread843.i ]
  %i.btb = call fastcc noundef i32 @_ZL24matchShuffleAsByteRotateN4llvm3MVTERNS_7SDValueES2_NS_8ArrayRefIiEE(i16 %i.qo, ptr noundef nonnull align 8 dereferenceable(12) %139, ptr noundef nonnull align 8 dereferenceable(12) %140, ptr readonly %i.blw, i64 %i.bly) ; 2 uses
  %i.btc = icmp slt i32 %i.btb, 1
  br i1 %i.btc, label %.critedge363.i, label %bb.tq

bb.tq:                                            ; preds = %bb.tp
  store i32 761, ptr %i.t, align 4, !tbaa !240
  %.sroa.2.0.copyload.i433.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i2024, align 8
  %i.btd = trunc nuw i8 %.sroa.2.0.copyload.i433.i to i1
  br i1 %i.btd, label %bb.tr, label %_ZNK4llvm8TypeSizecvmEv.exit436.i

bb.tr:                                            ; preds = %bb.tq
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #41
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit436.i:                ; preds = %bb.tq
  %i.bte = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 5, i32 noundef %.sroa.0.0.copyload.i431835.i)
  store i16 %i.bte, ptr %117, align 2, !tbaa !345
  store i32 %i.btb, ptr %i.u, align 4, !tbaa !240
  br label %bb.xo

.critedge363.i:                                   ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit424.i, %_ZNK4llvm3MVT14is128BitVectorEv.exit.i2108, %bb.tp, %_ZNK4llvm3MVT14is512BitVectorEv.exit430.i.thread, %_ZNK4llvm3MVT14is256BitVectorEv.exit427.thread850.i, %_ZNK4llvm3MVT14is128BitVectorEv.exit424.thread843.i, %.thread669.i, %bb.sg
  %i.btf = getelementptr inbounds nuw i8, ptr %13, i64 502
  %i.btg = load i8, ptr %i.btf, align 2, !tbaa !369, !range !79, !noundef !80
  %i.bth = trunc nuw i8 %i.btg to i1
  br i1 %i.bth, label %bb.ts, label %.critedge366.i

bb.ts:                                            ; preds = %.critedge363.i
  %.idx3.i.i437.i = shl nuw nsw i64 %i.bly, 2     ; 2 uses
  %i.bti = getelementptr inbounds nuw i8, ptr %i.blw, i64 %.idx3.i.i437.i
  %i.btj = lshr i64 %i.bly, 2                     ; 2 uses
  %.not.i.i438.i = icmp eq i64 %i.btj, 0
  br i1 %.not.i.i438.i, label %._crit_edge.i.i.i.i.i.i2089, label %.lr.ph.i.i.i.i.i.i2087

.lr.ph.i.i.i.i.i.i2087:                           ; preds = %bb.ts
  %i.btk = and i64 %.idx3.i.i437.i, 17179869168
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.blw, i64 %i.btk
  br label %bb.tt

bb.tt:                                            ; preds = %bb.tx, %.lr.ph.i.i.i.i.i.i2087
  %.051.i.i.i.i.i.i = phi i64 [ %i.btj, %.lr.ph.i.i.i.i.i.i2087 ], [ %i.btt, %bb.tx ] ; 2 uses
  %.02950.i.i.i.i.i.i = phi ptr [ %i.blw, %.lr.ph.i.i.i.i.i.i2087 ], [ %i.bts, %bb.tx ] ; 9 uses
  %.029.val39.i.i.i.i.i.i = load i32, ptr %.02950.i.i.i.i.i.i, align 4, !tbaa !240
  %i.btl = icmp eq i32 %.029.val39.i.i.i.i.i.i, -2
  br i1 %i.btl, label %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i", label %bb.tu

bb.tu:                                            ; preds = %bb.tt
  %i.btm = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i.i, i64 4
  %.val37.i.i.i.i.i.i = load i32, ptr %i.btm, align 4, !tbaa !240
  %i.btn = icmp eq i32 %.val37.i.i.i.i.i.i, -2
  br i1 %i.btn, label %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit", label %bb.tv

bb.tv:                                            ; preds = %bb.tu
  %i.bto = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i.i, i64 8
  %.val35.i.i.i.i.i.i = load i32, ptr %i.bto, align 4, !tbaa !240
  %i.btp = icmp eq i32 %.val35.i.i.i.i.i.i, -2
  br i1 %i.btp, label %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit3467", label %bb.tw

bb.tw:                                            ; preds = %bb.tv
  %i.btq = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i.i, i64 12
  %.val33.i.i.i.i.i.i = load i32, ptr %i.btq, align 4, !tbaa !240
  %i.btr = icmp eq i32 %.val33.i.i.i.i.i.i, -2
  br i1 %i.btr, label %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit3469", label %bb.tx

bb.tx:                                            ; preds = %bb.tw
  %i.bts = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i.i, i64 16
  %i.btt = add nsw i64 %.051.i.i.i.i.i.i, -1
  %i.btu = icmp sgt i64 %.051.i.i.i.i.i.i, 1
  br i1 %i.btu, label %bb.tt, label %._crit_edge.loopexit.i.i.i.i.i.i2088, !llvm.loop !5030

._crit_edge.loopexit.i.i.i.i.i.i2088:             ; preds = %bb.tx
  %i.btv = and i32 %i.blx, 3
  br label %._crit_edge.i.i.i.i.i.i2089

._crit_edge.i.i.i.i.i.i2089:                      ; preds = %._crit_edge.loopexit.i.i.i.i.i.i2088, %bb.ts
  %.pre-phi60.i.i.i.i.i.i = phi i32 [ %i.btv, %._crit_edge.loopexit.i.i.i.i.i.i2088 ], [ %i.blx, %bb.ts ]
  %.029.lcssa.i.i.i.i.i.i2090 = phi ptr [ %scevgep.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i2088 ], [ %i.blw, %bb.ts ] ; 5 uses
  switch i32 %.pre-phi60.i.i.i.i.i.i, label %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.thread.i.i" [
    i32 3, label %bb.ty
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i.i
    i32 1, label %._crit_edge._crit_edge57.i.i.i.i.i.i
  ]

bb.ty:                                            ; preds = %._crit_edge.i.i.i.i.i.i2089
  %.029.val.i.i.i.i.i.i = load i32, ptr %.029.lcssa.i.i.i.i.i.i2090, align 4, !tbaa !240
  %i.btw = icmp eq i32 %.029.val.i.i.i.i.i.i, -2
  br i1 %i.btw, label %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i", label %bb.tz

bb.tz:                                            ; preds = %bb.ty
  %i.btx = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i2090, i64 4
  br label %._crit_edge._crit_edge.i.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i:               ; preds = %bb.tz, %._crit_edge.i.i.i.i.i.i2089
  %.1.i.i.i.i.i.i2107 = phi ptr [ %i.btx, %bb.tz ], [ %.029.lcssa.i.i.i.i.i.i2090, %._crit_edge.i.i.i.i.i.i2089 ] ; 3 uses
  %.1.val.i.i.i.i.i.i = load i32, ptr %.1.i.i.i.i.i.i2107, align 4, !tbaa !240
  %i.bty = icmp eq i32 %.1.val.i.i.i.i.i.i, -2
  br i1 %i.bty, label %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i", label %bb.ua

bb.ua:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i
  %i.btz = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i2107, i64 4
  br label %._crit_edge._crit_edge57.i.i.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i.i.i:             ; preds = %bb.ua, %._crit_edge.i.i.i.i.i.i2089
  %.2.i.i.i.i.i.i2091 = phi ptr [ %i.btz, %bb.ua ], [ %.029.lcssa.i.i.i.i.i.i2090, %._crit_edge.i.i.i.i.i.i2089 ] ; 2 uses
  %.2.val.i.i.i.i.i.i = load i32, ptr %.2.i.i.i.i.i.i2091, align 4, !tbaa !240
  %i.bua = icmp eq i32 %.2.val.i.i.i.i.i.i, -2
  br i1 %i.bua, label %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i", label %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.thread.i.i"

"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit": ; preds = %bb.tu
  %i.bub = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i.i, i64 4
  br label %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i"

"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit3467": ; preds = %bb.tv
  %i.buc = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i.i, i64 8
  br label %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i"

"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit3469": ; preds = %bb.tw
  %i.bud = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i.i, i64 12
  br label %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i"

"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i": ; preds = %bb.tt, %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit", %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit3467", %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit3469", %._crit_edge._crit_edge57.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i, %bb.ty
  %.028.i.i.i.i.i.i2106 = phi ptr [ %.1.i.i.i.i.i.i2107, %._crit_edge._crit_edge.i.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i.i2090, %bb.ty ], [ %.2.i.i.i.i.i.i2091, %._crit_edge._crit_edge57.i.i.i.i.i.i ], [ %i.bud, %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit3469" ], [ %i.buc, %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit3467" ], [ %i.bub, %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit" ], [ %.02950.i.i.i.i.i.i, %bb.tt ]
  %.not126.i.i = icmp eq ptr %.028.i.i.i.i.i.i2106, %i.bti
  br i1 %.not126.i.i, label %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.thread.i.i", label %.critedge366.i

"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.thread.i.i": ; preds = %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.i.i", %._crit_edge._crit_edge57.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i2089
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #39
  %i.bue = sext i32 %i.blx to i64                 ; 5 uses
  %i.buf = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 5 uses
  store ptr %i.buf, ptr %24, align 8, !tbaa !83
  %i.bug = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 5 uses
  store i32 0, ptr %i.bug, align 8, !tbaa !633
  %i.buh = getelementptr inbounds nuw i8, ptr %24, i64 12
  store i32 32, ptr %i.buh, align 4, !tbaa !634
  %i.bui = icmp eq i32 %i.blx, 0                  ; 2 uses
  br i1 %i.bui, label %_ZN4llvm11SmallVectorIiLj32EEC2Em.exit.i.i, label %bb.ub

bb.ub:                                            ; preds = %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.thread.i.i"
  %i.buj = icmp ugt i32 %i.blx, 32
  br i1 %i.buj, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i.i: ; preds = %bb.ub
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %24, ptr noundef nonnull %i.buf, i64 noundef %i.bue, i64 noundef 4) #39
  %.pre.i.i.i.i.i = load i32, ptr %i.bug, align 8, !tbaa !633
  %.pre13.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i to i64 ; 2 uses
  %.not11.i.i.i.i.i = icmp samesign eq i64 %i.bue, %.pre13.i.i.i.i.i
  %.pre792.pre.pre.i = load ptr, ptr %24, align 8, !tbaa !83 ; 2 uses
  br i1 %.not11.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i.i, %bb.ub
  %i.buk = phi ptr [ %i.buf, %bb.ub ], [ %.pre792.pre.pre.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i.i ] ; 2 uses
  %.pre-phi.i.i3.i.i.i = phi i64 [ 0, %bb.ub ], [ %.pre13.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i.i ] ; 2 uses
  %i.bul = getelementptr [4 x i8], ptr %i.buk, i64 %.pre-phi.i.i3.i.i.i
  %i.bum = sub nsw i64 %i.bue, %.pre-phi.i.i3.i.i.i
  %i.bun = shl nsw i64 %i.bum, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bul, i8 0, i64 %i.bun, i1 false), !tbaa !240
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i.i
  %.pre792.pre.i = phi ptr [ %i.buk, %.lr.ph.preheader.i.i.i.i.i ], [ %.pre792.pre.pre.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i.i ]
  store i32 %i.blx, ptr %i.bug, align 8, !tbaa !633
  br label %_ZN4llvm11SmallVectorIiLj32EEC2Em.exit.i.i

_ZN4llvm11SmallVectorIiLj32EEC2Em.exit.i.i:       ; preds = %.sink.split.i.i.i.i.i, %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.thread.i.i"
  %.pre792.i = phi ptr [ %.pre792.pre.i, %.sink.split.i.i.i.i.i ], [ %i.buf, %"_ZN4llvm12is_containedIRNS_8ArrayRefIiEENS_3$_5EEEbOT_RKT0_.exit.thread.i.i" ] ; 11 uses
  %i.buo = shl i32 %i.bme, 1                      ; 2 uses
  %i.bup = icmp ugt i32 %i.buo, 64
  br i1 %i.bup, label %.loopexit132.i.i, label %.preheader129.lr.ph.i.i

.preheader129.lr.ph.i.i:                          ; preds = %_ZN4llvm11SmallVectorIiLj32EEC2Em.exit.i.i
  %.not593.i.i.i = icmp slt i32 %i.blx, 1         ; 2 uses
  %wide.trip.count.i.i.i2092 = and i64 %i.bly, 2147483647 ; 2 uses
  br label %.preheader129.i.i

.preheader129.i.i:                                ; preds = %.thread.i.i, %.preheader129.lr.ph.i.i
  %i.buq = phi i32 [ %i.buo, %.preheader129.lr.ph.i.i ], [ %i.bym, %.thread.i.i ] ; 4 uses
  %.052161.i.i = phi i32 [ 2, %.preheader129.lr.ph.i.i ], [ %i.byl, %.thread.i.i ] ; 6 uses
  %i.bur = add i32 %.052161.i.i, %i.blx
  %i.bus = sext i32 %.052161.i.i to i64           ; 3 uses
  %.idx127.i.i = shl nsw i64 %i.bus, 2            ; 5 uses
  %i.but = zext i32 %.052161.i.i to i64
  %i.buu = add nsw i64 %.idx127.i.i, -8
  %i.buv = add nsw i64 %.idx127.i.i, -4           ; 2 uses
  %i.buw = lshr exact i64 %i.buv, 2
  %i.bux = add nuw nsw i64 %i.buw, 1              ; 2 uses
  %min.iters.check3733 = icmp ult i64 %i.buv, 28
  %n.vec3735 = and i64 %i.bux, 9223372036854775800 ; 4 uses
  %i.buy = trunc i64 %n.vec3735 to i32
  %i.buz = shl i64 %n.vec3735, 2
  %cmp.n3747 = icmp eq i64 %i.bux, %n.vec3735
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit96.i.i, %.preheader129.i.i
  %indvar = phi i64 [ %indvar.next, %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit96.i.i ], [ 0, %.preheader129.i.i ] ; 3 uses
  %indvars.iv192.i.i = phi i64 [ %indvars.iv.next193.i.i, %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit96.i.i ], [ 1, %.preheader129.i.i ] ; 4 uses
  br i1 %i.bui, label %._crit_edge.i442.i, label %.lr.ph.i439.i

.lr.ph.i439.i:                                    ; preds = %.preheader.i.i
  %.idx.i.i = shl nuw nsw i64 %indvars.iv192.i.i, 2 ; 2 uses
  %i.bva = trunc nuw nsw i64 %indvars.iv192.i.i to i32
  %i.bvb = sub i32 %i.bur, %i.bva                 ; 2 uses
  %.not6.i68.i.i = icmp eq i64 %.idx.i.i, %.idx127.i.i
  br i1 %.not6.i68.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %.lr.ph.i439.i
  %170 = and i64 %indvar, 4611686018427387903     ; 2 uses
  %i.bvc = add nuw nsw i64 %170, 1                ; 2 uses
  %min.iters.check3769 = icmp samesign ult i64 %170, 7
  %n.vec3771 = and i64 %i.bvc, 9223372036854775800 ; 4 uses
  %i.bvd = trunc i64 %n.vec3771 to i32
  %i.bve = shl i64 %n.vec3771, 2
  %cmp.n3783 = icmp eq i64 %i.bvc, %n.vec3771
  %171 = shl i64 %indvar, 2
  %172 = sub i64 %i.buu, %171                     ; 2 uses
  %i.bvf = lshr exact i64 %172, 2
  %i.bvg = add nuw nsw i64 %i.bvf, 1              ; 2 uses
  %min.iters.check3751 = icmp ult i64 %172, 28
  %n.vec3753 = and i64 %i.bvg, 9223372036854775800 ; 4 uses
  %i.bvh = trunc i64 %n.vec3753 to i32
  %i.bvi = shl i64 %n.vec3753, 2
  %cmp.n3765 = icmp eq i64 %i.bvg, %n.vec3753
  br label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i439.i, %_ZSt4iotaIPiiEvT_S1_T0_.exit.us.i.i
  %indvars.iv188.i.i = phi i64 [ %indvars.iv.next189.i.i, %_ZSt4iotaIPiiEvT_S1_T0_.exit.us.i.i ], [ 0, %.lr.ph.i439.i ] ; 3 uses
  %i.bvj = getelementptr inbounds [4 x i8], ptr %.pre792.i, i64 %indvars.iv188.i.i ; 4 uses
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.bvj, i64 %.idx127.i.i
  %i.bvl = trunc nsw i64 %indvars.iv188.i.i to i32
  %i.bvm = add i32 %i.bvb, %i.bvl                 ; 3 uses
  br i1 %min.iters.check3733, label %.lr.ph.i66.us.i.i.preheader, label %vector.ph3734

vector.ph3734:                                    ; preds = %.lr.ph.split.us.i.i
  %i.bvn = add i32 %i.bvm, %i.buy
  %i.bvo = getelementptr i8, ptr %i.bvj, i64 %i.buz
  %broadcast.splatinsert3736 = insertelement <4 x i32> poison, i32 %i.bvm, i64 0
  %broadcast.splat3737 = shufflevector <4 x i32> %broadcast.splatinsert3736, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction3738 = add nsw <4 x i32> %broadcast.splat3737, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body3739

vector.body3739:                                  ; preds = %vector.body3739, %vector.ph3734
  %index3740 = phi i64 [ 0, %vector.ph3734 ], [ %index.next3744, %vector.body3739 ] ; 2 uses
  %vec.ind3741 = phi <4 x i32> [ %induction3738, %vector.ph3734 ], [ %vec.ind.next3745, %vector.body3739 ] ; 3 uses
  %step.add3742 = add nsw <4 x i32> %vec.ind3741, splat (i32 4)
  %i.bvp = shl i64 %index3740, 2
  %next.gep3743 = getelementptr i8, ptr %i.bvj, i64 %i.bvp ; 2 uses
  %i.bvq = getelementptr i8, ptr %next.gep3743, i64 16
  store <4 x i32> %vec.ind3741, ptr %next.gep3743, align 4, !tbaa !240
  store <4 x i32> %step.add3742, ptr %i.bvq, align 4, !tbaa !240
  %index.next3744 = add nuw i64 %index3740, 8     ; 2 uses
  %vec.ind.next3745 = add nsw <4 x i32> %vec.ind3741, splat (i32 8)
  %i.bvr = icmp eq i64 %index.next3744, %n.vec3735
  br i1 %i.bvr, label %middle.block3746, label %vector.body3739, !llvm.loop !5031

middle.block3746:                                 ; preds = %vector.body3739
  br i1 %cmp.n3747, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.us.i.i, label %.lr.ph.i66.us.i.i.preheader

.lr.ph.i66.us.i.i.preheader:                      ; preds = %.lr.ph.split.us.i.i, %middle.block3746
  %.08.i.us.i.i.ph = phi i32 [ %i.bvm, %.lr.ph.split.us.i.i ], [ %i.bvn, %middle.block3746 ]
  %.057.i.us.i.i.ph = phi ptr [ %i.bvj, %.lr.ph.split.us.i.i ], [ %i.bvo, %middle.block3746 ]
  br label %.lr.ph.i66.us.i.i

.lr.ph.i66.us.i.i:                                ; preds = %.lr.ph.i66.us.i.i.preheader, %.lr.ph.i66.us.i.i
  %.08.i.us.i.i = phi i32 [ %i.bvs, %.lr.ph.i66.us.i.i ], [ %.08.i.us.i.i.ph, %.lr.ph.i66.us.i.i.preheader ] ; 2 uses
  %.057.i.us.i.i = phi ptr [ %i.bvt, %.lr.ph.i66.us.i.i ], [ %.057.i.us.i.i.ph, %.lr.ph.i66.us.i.i.preheader ] ; 2 uses
  store i32 %.08.i.us.i.i, ptr %.057.i.us.i.i, align 4, !tbaa !240
  %i.bvs = add nsw i32 %.08.i.us.i.i, 1
  %i.bvt = getelementptr inbounds nuw i8, ptr %.057.i.us.i.i, i64 4 ; 2 uses
  %.not.i67.us.i.i = icmp eq ptr %i.bvt, %i.bvk
  br i1 %.not.i67.us.i.i, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.us.i.i, label %.lr.ph.i66.us.i.i, !llvm.loop !5032

_ZSt4iotaIPiiEvT_S1_T0_.exit.us.i.i:              ; preds = %.lr.ph.i66.us.i.i, %middle.block3746
  %indvars.iv.next189.i.i = add nsw i64 %indvars.iv188.i.i, %i.bus ; 2 uses
  %i.bvu = icmp eq i64 %indvars.iv.next189.i.i, %i.bue
  br i1 %i.bvu, label %._crit_edge.i442.i, label %.lr.ph.split.us.i.i, !llvm.loop !5033

._crit_edge.i442.i:                               ; preds = %_ZSt4iotaIPiiEvT_S1_T0_.exit73.loopexit.i.i, %_ZSt4iotaIPiiEvT_S1_T0_.exit.us.i.i, %.preheader.i.i
  %i.bvv = load i32, ptr %i.bug, align 8, !tbaa !633 ; 8 uses
  %.not.i65.i.i = icmp eq i32 %i.bvv, %i.blx
  br i1 %.not.i65.i.i, label %.preheader.i.i.i, label %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit.i.i

.preheader.i.i.i:                                 ; preds = %._crit_edge.i442.i
  br i1 %.not593.i.i.i, label %.loopexit128.i.i, label %.lr.ph.i.i.i2099

.lr.ph.i.i.i2099:                                 ; preds = %.preheader.i.i.i, %.critedge.i.i.i
  %indvars.iv.i.i.i2100 = phi i64 [ %indvars.iv.next.i.i.i2102, %.critedge.i.i.i ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.bvw = getelementptr inbounds nuw [4 x i8], ptr %i.blw, i64 %indvars.iv.i.i.i2100
  %i.bvx = load i32, ptr %i.bvw, align 4, !tbaa !240 ; 2 uses
  %i.bvy = getelementptr inbounds nuw [4 x i8], ptr %.pre792.i, i64 %indvars.iv.i.i.i2100
  %i.bvz = load i32, ptr %i.bvy, align 4, !tbaa !240
  %i.bwa = icmp slt i32 %i.bvx, 0
  %.not58.i.i.i = icmp eq i32 %i.bvx, %i.bvz
  %or.cond.i.i.i2101 = select i1 %i.bwa, i1 true, i1 %.not58.i.i.i
  br i1 %or.cond.i.i.i2101, label %.critedge.i.i.i, label %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit.i.i

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i2099
  %indvars.iv.next.i.i.i2102 = add nuw nsw i64 %indvars.iv.i.i.i2100, 1 ; 2 uses
  %exitcond.not.i.i.i2103 = icmp eq i64 %indvars.iv.next.i.i.i2102, %wide.trip.count.i.i.i2092
  br i1 %exitcond.not.i.i.i2103, label %.loopexit128.i.i, label %.lr.ph.i.i.i2099, !llvm.loop !39

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader, %_ZSt4iotaIPiiEvT_S1_T0_.exit73.loopexit.i.i
  %indvars.iv.i440.i = phi i64 [ %indvars.iv.next.i441.i, %_ZSt4iotaIPiiEvT_S1_T0_.exit73.loopexit.i.i ], [ 0, %.lr.ph.split.i.i.preheader ] ; 3 uses
  %i.bwb = getelementptr inbounds [4 x i8], ptr %.pre792.i, i64 %indvars.iv.i440.i ; 5 uses
  %i.bwc = getelementptr inbounds nuw i8, ptr %i.bwb, i64 %.idx.i.i ; 4 uses
  %i.bwd = trunc nsw i64 %indvars.iv.i440.i to i32 ; 4 uses
  %i.bwe = add i32 %i.bvb, %i.bwd                 ; 3 uses
  br i1 %min.iters.check3769, label %.lr.ph.i66.i.i.preheader, label %vector.ph3770

vector.ph3770:                                    ; preds = %.lr.ph.split.i.i
  %i.bwf = add i32 %i.bwe, %i.bvd
  %i.bwg = getelementptr i8, ptr %i.bwb, i64 %i.bve
  %broadcast.splatinsert3772 = insertelement <4 x i32> poison, i32 %i.bwe, i64 0
  %broadcast.splat3773 = shufflevector <4 x i32> %broadcast.splatinsert3772, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction3774 = add nsw <4 x i32> %broadcast.splat3773, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body3775

vector.body3775:                                  ; preds = %vector.body3775, %vector.ph3770
  %index3776 = phi i64 [ 0, %vector.ph3770 ], [ %index.next3780, %vector.body3775 ] ; 2 uses
  %vec.ind3777 = phi <4 x i32> [ %induction3774, %vector.ph3770 ], [ %vec.ind.next3781, %vector.body3775 ] ; 3 uses
  %step.add3778 = add nsw <4 x i32> %vec.ind3777, splat (i32 4)
  %i.bwh = shl i64 %index3776, 2
  %next.gep3779 = getelementptr i8, ptr %i.bwb, i64 %i.bwh ; 2 uses
  %i.bwi = getelementptr i8, ptr %next.gep3779, i64 16
  store <4 x i32> %vec.ind3777, ptr %next.gep3779, align 4, !tbaa !240
  store <4 x i32> %step.add3778, ptr %i.bwi, align 4, !tbaa !240
  %index.next3780 = add nuw i64 %index3776, 8     ; 2 uses
  %vec.ind.next3781 = add nsw <4 x i32> %vec.ind3777, splat (i32 8)
  %i.bwj = icmp eq i64 %index.next3780, %n.vec3771
  br i1 %i.bwj, label %middle.block3782, label %vector.body3775, !llvm.loop !5034

middle.block3782:                                 ; preds = %vector.body3775
  br i1 %cmp.n3783, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.i.i, label %.lr.ph.i66.i.i.preheader

.lr.ph.i66.i.i.preheader:                         ; preds = %.lr.ph.split.i.i, %middle.block3782
  %.08.i.i.i.ph = phi i32 [ %i.bwe, %.lr.ph.split.i.i ], [ %i.bwf, %middle.block3782 ]
  %.057.i.i.i.ph = phi ptr [ %i.bwb, %.lr.ph.split.i.i ], [ %i.bwg, %middle.block3782 ]
  br label %.lr.ph.i66.i.i

.lr.ph.i66.i.i:                                   ; preds = %.lr.ph.i66.i.i.preheader, %.lr.ph.i66.i.i
  %.08.i.i.i = phi i32 [ %i.bwk, %.lr.ph.i66.i.i ], [ %.08.i.i.i.ph, %.lr.ph.i66.i.i.preheader ] ; 2 uses
  %.057.i.i.i = phi ptr [ %i.bwl, %.lr.ph.i66.i.i ], [ %.057.i.i.i.ph, %.lr.ph.i66.i.i.preheader ] ; 2 uses
  store i32 %.08.i.i.i, ptr %.057.i.i.i, align 4, !tbaa !240
  %i.bwk = add nsw i32 %.08.i.i.i, 1
  %i.bwl = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 4 ; 2 uses
  %.not.i67.i.i = icmp eq ptr %i.bwl, %i.bwc
  br i1 %.not.i67.i.i, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.i.i, label %.lr.ph.i66.i.i, !llvm.loop !5035

_ZSt4iotaIPiiEvT_S1_T0_.exit.i.i:                 ; preds = %.lr.ph.i66.i.i, %middle.block3782
  %i.bwm = getelementptr inbounds i8, ptr %i.bwb, i64 %.idx127.i.i
  br i1 %min.iters.check3751, label %.lr.ph.i69.i.i.preheader, label %vector.ph3752

vector.ph3752:                                    ; preds = %_ZSt4iotaIPiiEvT_S1_T0_.exit.i.i
  %i.bwn = add i32 %i.bwd, %i.bvh
  %i.bwo = getelementptr i8, ptr %i.bwc, i64 %i.bvi
  %broadcast.splatinsert3754 = insertelement <4 x i32> poison, i32 %i.bwd, i64 0
  %broadcast.splat3755 = shufflevector <4 x i32> %broadcast.splatinsert3754, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction3756 = add nsw <4 x i32> %broadcast.splat3755, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body3757

vector.body3757:                                  ; preds = %vector.body3757, %vector.ph3752
  %index3758 = phi i64 [ 0, %vector.ph3752 ], [ %index.next3762, %vector.body3757 ] ; 2 uses
  %vec.ind3759 = phi <4 x i32> [ %induction3756, %vector.ph3752 ], [ %vec.ind.next3763, %vector.body3757 ] ; 3 uses
  %step.add3760 = add nsw <4 x i32> %vec.ind3759, splat (i32 4)
  %i.bwp = shl i64 %index3758, 2
  %next.gep3761 = getelementptr i8, ptr %i.bwc, i64 %i.bwp ; 2 uses
  %i.bwq = getelementptr i8, ptr %next.gep3761, i64 16
  store <4 x i32> %vec.ind3759, ptr %next.gep3761, align 4, !tbaa !240
  store <4 x i32> %step.add3760, ptr %i.bwq, align 4, !tbaa !240
  %index.next3762 = add nuw i64 %index3758, 8     ; 2 uses
  %vec.ind.next3763 = add nsw <4 x i32> %vec.ind3759, splat (i32 8)
  %i.bwr = icmp eq i64 %index.next3762, %n.vec3753
  br i1 %i.bwr, label %middle.block3764, label %vector.body3757, !llvm.loop !5036

middle.block3764:                                 ; preds = %vector.body3757
  br i1 %cmp.n3765, label %_ZSt4iotaIPiiEvT_S1_T0_.exit73.loopexit.i.i, label %.lr.ph.i69.i.i.preheader

.lr.ph.i69.i.i.preheader:                         ; preds = %_ZSt4iotaIPiiEvT_S1_T0_.exit.i.i, %middle.block3764
  %.08.i70.i.i.ph = phi i32 [ %i.bwd, %_ZSt4iotaIPiiEvT_S1_T0_.exit.i.i ], [ %i.bwn, %middle.block3764 ]
  %.057.i71.i.i.ph = phi ptr [ %i.bwc, %_ZSt4iotaIPiiEvT_S1_T0_.exit.i.i ], [ %i.bwo, %middle.block3764 ]
  br label %.lr.ph.i69.i.i

.lr.ph.i69.i.i:                                   ; preds = %.lr.ph.i69.i.i.preheader, %.lr.ph.i69.i.i
  %.08.i70.i.i = phi i32 [ %i.bws, %.lr.ph.i69.i.i ], [ %.08.i70.i.i.ph, %.lr.ph.i69.i.i.preheader ] ; 2 uses
  %.057.i71.i.i = phi ptr [ %i.bwt, %.lr.ph.i69.i.i ], [ %.057.i71.i.i.ph, %.lr.ph.i69.i.i.preheader ] ; 2 uses
  store i32 %.08.i70.i.i, ptr %.057.i71.i.i, align 4, !tbaa !240
  %i.bws = add nsw i32 %.08.i70.i.i, 1
  %i.bwt = getelementptr inbounds nuw i8, ptr %.057.i71.i.i, i64 4 ; 2 uses
  %.not.i72.i.i = icmp eq ptr %i.bwt, %i.bwm
  br i1 %.not.i72.i.i, label %_ZSt4iotaIPiiEvT_S1_T0_.exit73.loopexit.i.i, label %.lr.ph.i69.i.i, !llvm.loop !5037

_ZSt4iotaIPiiEvT_S1_T0_.exit73.loopexit.i.i:      ; preds = %.lr.ph.i69.i.i, %middle.block3764
  %indvars.iv.next.i441.i = add nsw i64 %indvars.iv.i440.i, %i.bus ; 2 uses
  %i.bwu = icmp eq i64 %indvars.iv.next.i441.i, %i.bue
  br i1 %i.bwu, label %._crit_edge.i442.i, label %.lr.ph.split.i.i, !llvm.loop !5033

.loopexit128.i.i:                                 ; preds = %.preheader.i.i.i, %.critedge.i.i.i
  %i.bwv = call range(i32 0, 7) i32 @llvm.ctpop.i32(i32 %i.buq)
  %i.bww = icmp eq i32 %i.bwv, 1
  %i.bwx = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.buq, i1 true)
  %switch.idx.cast.i.i.i2104 = trunc nuw nsw i32 %i.bwx to i16
  %switch.offset.i.i.i2105 = add nuw nsw i16 %switch.idx.cast.i.i.i2104, 2
  %.sroa.0.0.i.i445.i = select i1 %i.bww, i16 %switch.offset.i.i.i2105, i16 0
  %i.bwy = sdiv i32 %i.blx, %.052161.i.i
  %i.bwz = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.i.i445.i, i32 noundef %i.bwy)
  store i16 %i.bwz, ptr %117, align 2, !tbaa !345
  br label %bb.ud

_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit.i.i: ; preds = %.lr.ph.i.i.i2099, %._crit_edge.i442.i
  %i.bxa = zext i32 %i.bvv to i64                 ; 3 uses
  %.not17.i.i.i = icmp eq i32 %i.bvv, 0
  br i1 %.not17.i.i.i, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.i.i2097, label %.lr.ph.i75.preheader.i.i

.lr.ph.i75.preheader.i.i:                         ; preds = %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit.i.i
  %i.bxb = sub i32 0, %i.bvv                      ; 2 uses
  %min.iters.check3710 = icmp ult i32 %i.bvv, 4
end_hunk_0

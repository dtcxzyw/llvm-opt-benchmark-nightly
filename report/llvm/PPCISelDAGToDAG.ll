Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPCISelDAGToDAG?download=true
inline.NumInlined: 6481
inline.NumDeleted: 1616
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN12_GLOBAL__N_115PPCDAGToDAGISel18PostprocessISelDAGEv:bb.a
  %i.arx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ary = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 6 uses
  %i.asa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.asb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.asc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.asd = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.asf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.asg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ash = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.asi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.gr

bb.gr:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i12, %.lr.ph234.i
  %i.asm = phi ptr [ %i.art, %.lr.ph234.i ], [ %i.bak, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i12 ] ; 11 uses
  %.0232.i = phi i1 [ false, %.lr.ph234.i ], [ %.6.i, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i12 ] ; 16 uses
  %.sroa.0176.0231.i = phi ptr [ %i.aru, %.lr.ph234.i ], [ %i.asn, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i12 ]
  %i.asn = load ptr, ptr %.sroa.0176.0231.i, align 8, !tbaa !398 ; 6 uses
  %i.aso = getelementptr inbounds i8, ptr %i.asn, i64 -8
  %i.asp = getelementptr inbounds nuw i8, ptr %i.asn, i64 48
  %i.asq = load ptr, ptr %i.asp, align 8, !tbaa !408
  %i.asr = icmp eq ptr %i.asq, null
  br i1 %i.asr, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i12, label %bb.gs, !llvm.loop !838

bb.gs:                                            ; preds = %bb.gr
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asn, i64 16
  %i.ast = load i32, ptr %i.ass, align 8, !tbaa !409
  %.not.i11 = icmp eq i32 %i.ast, -1888
  br i1 %.not.i11, label %bb.gt, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i12, !llvm.loop !838

bb.gt:                                            ; preds = %bb.gs
  %i.asu = getelementptr inbounds nuw i8, ptr %i.asn, i64 32
  %i.asv = load ptr, ptr %i.asu, align 8, !tbaa !423 ; 4 uses
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asv, i64 40
  %i.asx = load ptr, ptr %i.asw, align 8, !tbaa !426
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asx, i64 88
  %i.asz = load ptr, ptr %i.asy, align 8, !tbaa !432 ; 2 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asz, i64 24 ; 2 uses
  %i.atb = getelementptr inbounds nuw i8, ptr %i.asz, i64 32
  %i.atc = load i32, ptr %i.atb, align 8, !tbaa !434
  %i.atd = icmp ult i32 %i.atc, 65
  %i.ate = load ptr, ptr %i.ata, align 8
  %spec.select.i.i.i.i.i13 = select i1 %i.atd, ptr %i.ata, ptr %i.ate
  %.0.i.i.i.i.i14 = load i64, ptr %spec.select.i.i.i.i.i13, align 8, !tbaa !47
  %.not70.i = icmp eq i64 %.0.i.i.i.i.i14, 0
  br i1 %.not70.i, label %bb.gu, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i12, !llvm.loop !838

bb.gu:                                            ; preds = %bb.gt
  %i.atf = getelementptr inbounds nuw i8, ptr %i.asv, i64 80
  %i.atg = load ptr, ptr %i.atf, align 8, !tbaa !426
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atg, i64 88
  %i.ati = load ptr, ptr %i.ath, align 8, !tbaa !432 ; 2 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ati, i64 24 ; 2 uses
  %i.atk = getelementptr inbounds nuw i8, ptr %i.ati, i64 32
  %i.atl = load i32, ptr %i.atk, align 8, !tbaa !434
  %i.atm = icmp ult i32 %i.atl, 65
  %i.atn = load ptr, ptr %i.atj, align 8
  %spec.select.i.i.i.i80.i = select i1 %i.atm, ptr %i.atj, ptr %i.atn
  %.0.i.i.i.i81.i = load i64, ptr %spec.select.i.i.i.i80.i, align 8, !tbaa !47
  %.not71.i = icmp eq i64 %.0.i.i.i.i81.i, 32
  br i1 %.not71.i, label %bb.gv, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i12, !llvm.loop !838

bb.gv:                                            ; preds = %bb.gu
  %.sroa.0165.0.copyload.i = load ptr, ptr %i.asv, align 8, !tbaa !420 ; 9 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.asv, i64 8
  %.sroa.13.0.copyload.i = load i32, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !421
  %i.ato = getelementptr inbounds nuw i8, ptr %.sroa.0165.0.copyload.i, i64 24
  %i.atp = load i32, ptr %i.ato, align 8, !tbaa !409
  %.not72.i = icmp eq i32 %i.atp, -10
  br i1 %.not72.i, label %bb.gw, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i12, !llvm.loop !838

bb.gw:                                            ; preds = %bb.gv
  %i.atq = getelementptr inbounds nuw i8, ptr %.sroa.0165.0.copyload.i, i64 56
  %.sroa.018.022.i.i.i15 = load ptr, ptr %i.atq, align 8, !tbaa !548 ; 2 uses
  %.not23.i.i.i16 = icmp eq ptr %.sroa.018.022.i.i.i15, null
  br i1 %.not23.i.i.i16, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i12, label %.lr.ph.i.i.i17

bb.gx:                                            ; preds = %.lr.ph.i.i.i17
  %.214.i.i.i21 = select i1 %i.atu, i32 %.01224.i.i.i19, i32 0 ; 2 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i18, i64 32
  %.sroa.018.0.i.i.i22 = load ptr, ptr %i.atr, align 8, !tbaa !548 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %.sroa.018.0.i.i.i22, null
  br i1 %.not.i.i.i23, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.i24, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %bb.gw, %bb.gx
  %.sroa.018.025.i.i.i18 = phi ptr [ %.sroa.018.0.i.i.i22, %bb.gx ], [ %.sroa.018.022.i.i.i15, %bb.gw ] ; 2 uses
  %.01224.i.i.i19 = phi i32 [ %.214.i.i.i21, %bb.gx ], [ 1, %bb.gw ] ; 2 uses
  %i.ats = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i18, i64 8
  %i.att = load i32, ptr %i.ats, align 8, !tbaa !436
  %i.atu = icmp ne i32 %i.att, %.sroa.13.0.copyload.i ; 2 uses
  %i.atv = icmp ne i32 %.01224.i.i.i19, 0
  %cond.i.i.i20 = select i1 %i.atu, i1 true, i1 %i.atv
  br i1 %cond.i.i.i20, label %bb.gx, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i12

_ZNK4llvm7SDValue9hasOneUseEv.exit.i24:           ; preds = %bb.gx
  %i.atw = icmp eq i32 %.214.i.i.i21, 0
  br i1 %i.atw, label %bb.gy, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i12, !llvm.loop !838

bb.gy:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit.i24
  %i.atx = getelementptr inbounds nuw i8, ptr %.sroa.0165.0.copyload.i, i64 40 ; 2 uses
  %i.aty = load ptr, ptr %i.atx, align 8, !tbaa !423 ; 3 uses
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aty, i64 80
  %i.aua = load ptr, ptr %i.atz, align 8, !tbaa !426
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aua, i64 88
  %i.auc = load ptr, ptr %i.aub, align 8, !tbaa !432 ; 2 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %i.auc, i64 24 ; 2 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %i.auc, i64 32
  %i.auf = load i32, ptr %i.aue, align 8, !tbaa !434
  %i.aug = icmp ult i32 %i.auf, 65
  %i.auh = load ptr, ptr %i.aud, align 8
  %spec.select.i.i.i.i.i.i25 = select i1 %i.aug, ptr %i.aud, ptr %i.auh
  %.0.i.i.i.i.i.i26 = load i64, ptr %spec.select.i.i.i.i.i.i25, align 8, !tbaa !47
  %.not73.i = icmp eq i64 %.0.i.i.i.i.i.i26, 1
  br i1 %.not73.i, label %bb.gz, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i12, !llvm.loop !838

bb.gz:                                            ; preds = %bb.gy
  %.sroa.0162.0.copyload.i = load ptr, ptr %i.aty, align 8, !tbaa !420
  %i.aui = getelementptr inbounds nuw i8, ptr %.sroa.0162.0.copyload.i, i64 24
  %i.auj = load i32, ptr %i.aui, align 8, !tbaa !409
  %.not74.i = icmp eq i32 %i.auj, -11
  br i1 %.not74.i, label %bb.ha, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i12, !llvm.loop !838

bb.ha:                                            ; preds = %bb.gz
  %i.auk = getelementptr inbounds nuw i8, ptr %i.aty, i64 40
  %.sroa.0160.0.copyload.i = load ptr, ptr %i.auk, align 8, !tbaa !420 ; 4 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %.sroa.0160.0.copyload.i, i64 24
  %i.aum = load i32, ptr %i.aul, align 8, !tbaa !409
  %i.aun = icmp slt i32 %i.aum, 0
  br i1 %i.aun, label %bb.hb, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i12, !llvm.loop !838

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  store ptr %i.arx, ptr %1, align 8, !tbaa !25
  store i32 16, ptr %i.ary, align 8, !tbaa !613
  store i32 0, ptr %i.arz, align 4, !tbaa !614
  store i8 1, ptr %i.asa, align 8, !tbaa !22
  %i.auo = call fastcc noundef zeroext i1 @_ZL23PeepholePPC64ZExtGatherN4llvm7SDValueERNS_15SmallPtrSetImplIPNS_6SDNodeEEE(ptr nonnull %.sroa.0160.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(17) %1)
  br i1 %i.auo, label %bb.hc, label %.thread191.i, !llvm.loop !838

bb.hc:                                            ; preds = %bb.hb
  %i.aup = load ptr, ptr %1, align 8, !tbaa !25   ; 5 uses
  %i.auq = load i8, ptr %i.asa, align 8, !tbaa !22, !range !23, !noundef !24
  %i.aur = trunc nuw i8 %i.auq to i1
  %i.aus = load i32, ptr %i.arz, align 4
  %i.aut = load i32, ptr %i.ary, align 8
  %.v.v.i.i.i.i = select i1 %i.aur, i32 %i.aus, i32 %i.aut ; 3 uses
  %.v.i.i.i.i = zext i32 %.v.v.i.i.i.i to i64     ; 3 uses
  %.idx.i.i27 = shl nuw nsw i64 %.v.i.i.i.i, 3    ; 2 uses
  %i.auu = getelementptr i8, ptr %i.aup, i64 %.idx.i.i27 ; 4 uses
  %.not1.i.i.i.i.i.i = icmp eq i32 %.v.v.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5beginEv.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.hc, %bb.hd
  %.sroa.0.0.i.i.i = phi ptr [ %i.aux, %bb.hd ], [ %i.aup, %bb.hc ] ; 3 uses
  %i.auv = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !29
  %i.auw = icmp eq ptr %i.auv, inttoptr (i64 -1 to ptr)
  br i1 %i.auw, label %bb.hd, label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5beginEv.exit.i

bb.hd:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aux = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aux, %i.auu
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5beginEv.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5beginEv.exit.i: ; preds = %bb.hd, %.lr.ph.i.i.i.i.i.i, %bb.hc
  %.sroa.0.1.i.i.i = phi ptr [ %i.aup, %bb.hc ], [ %i.auu, %bb.hd ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.auy = getelementptr inbounds nuw [8 x i8], ptr %i.aup, i64 %.v.i.i.i.i ; 2 uses
  %.not202212.i = icmp eq ptr %.sroa.0.1.i.i.i, %i.auy
  br i1 %.not202212.i, label %._crit_edge215.i, label %.lr.ph214.i

.lr.ph214.i:                                      ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5beginEv.exit.i, %_ZN4llvm19SmallPtrSetIteratorIPNS_6SDNodeEEppEv.exit.i
  %.sroa.0156.0213.i = phi ptr [ %.sroa.0156.2.i, %_ZN4llvm19SmallPtrSetIteratorIPNS_6SDNodeEEppEv.exit.i ], [ %.sroa.0.1.i.i.i, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5beginEv.exit.i ] ; 2 uses
  %i.auz = load ptr, ptr %.sroa.0156.0213.i, align 8, !tbaa !29
  %i.ava = getelementptr inbounds nuw i8, ptr %i.auz, i64 56
  %.sroa.0149.0209.i = load ptr, ptr %i.ava, align 8, !tbaa !548 ; 4 uses
  %.not205210.i = icmp eq ptr %.sroa.0149.0209.i, null
  br i1 %.not205210.i, label %._crit_edge.i29, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph214.i
  %i.avb = load i8, ptr %i.asa, align 8, !tbaa !22, !range !23, !noundef !24
  %i.avc = trunc nuw i8 %i.avb to i1
  br i1 %i.avc, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i28
  %i.avd = load ptr, ptr %1, align 8, !tbaa !25   ; 2 uses
  %i.ave = load i32, ptr %i.arz, align 4, !tbaa !614 ; 2 uses
  %i.avf = zext i32 %i.ave to i64
  %.idx.i.i.us.i = shl nuw nsw i64 %i.avf, 3
  %i.avg = getelementptr inbounds nuw i8, ptr %i.avd, i64 %.idx.i.i.us.i
  %.not17.i.i.us.i = icmp eq i32 %i.ave, 0
  br i1 %.not17.i.i.us.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread.us.us.i, label %.lr.ph.i.i87.preheader.us.i

_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread.us.us.i: ; preds = %.lr.ph.split.us.i, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread183.us.us.i
  %.sroa.0149.0211.us.us.i = phi ptr [ %.sroa.0149.0.us.us.i, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread183.us.us.i ], [ %.sroa.0149.0209.i, %.lr.ph.split.us.i ] ; 2 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %.sroa.0149.0211.us.us.i, i64 16
  %i.avi = load ptr, ptr %i.avh, align 8, !tbaa !440
  %.not76.old.us.us.i = icmp eq ptr %i.avi, %.sroa.0165.0.copyload.i
  br i1 %.not76.old.us.us.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread183.us.us.i, label %.thread191.i

_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread183.us.us.i: ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread.us.us.i
  %i.avj = getelementptr inbounds nuw i8, ptr %.sroa.0149.0211.us.us.i, i64 32
  %.sroa.0149.0.us.us.i = load ptr, ptr %i.avj, align 8, !tbaa !548 ; 2 uses
  %.not205.us.us.i = icmp eq ptr %.sroa.0149.0.us.us.i, null
  br i1 %.not205.us.us.i, label %._crit_edge.i29, label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread.us.us.i

.lr.ph.i.i87.preheader.us.i:                      ; preds = %.lr.ph.split.us.i, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread183.us.i
  %.sroa.0149.0211.us.i = phi ptr [ %.sroa.0149.0.us.i, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread183.us.i ], [ %.sroa.0149.0209.i, %.lr.ph.split.us.i ] ; 2 uses
  %i.avk = getelementptr inbounds nuw i8, ptr %.sroa.0149.0211.us.i, i64 16
  %i.avl = load ptr, ptr %i.avk, align 8, !tbaa !440 ; 2 uses
  br label %.lr.ph.i.i87.us.i

.lr.ph.i.i87.us.i:                                ; preds = %bb.he, %.lr.ph.i.i87.preheader.us.i
  %.01218.i.i.us.i = phi ptr [ %i.avn, %bb.he ], [ %i.avd, %.lr.ph.i.i87.preheader.us.i ] ; 2 uses
  %i.avm = load ptr, ptr %.01218.i.i.us.i, align 8, !tbaa !29
  %.not15.i.i.us.i = icmp eq ptr %i.avm, %i.avl
  br i1 %.not15.i.i.us.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread183.us.i, label %bb.he

bb.he:                                            ; preds = %.lr.ph.i.i87.us.i
  %i.avn = getelementptr inbounds nuw i8, ptr %.01218.i.i.us.i, i64 8 ; 2 uses
  %.not.i.i88.us.i = icmp eq ptr %i.avn, %i.avg
  br i1 %.not.i.i88.us.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread.loopexit.us.i, label %.lr.ph.i.i87.us.i

_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread183.us.i: ; preds = %.lr.ph.i.i87.us.i, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread.loopexit.us.i
  %i.avo = getelementptr inbounds nuw i8, ptr %.sroa.0149.0211.us.i, i64 32
  %.sroa.0149.0.us.i = load ptr, ptr %i.avo, align 8, !tbaa !548 ; 2 uses
  %.not205.us.i = icmp eq ptr %.sroa.0149.0.us.i, null
  br i1 %.not205.us.i, label %._crit_edge.i29, label %.lr.ph.i.i87.preheader.us.i

_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread.loopexit.us.i: ; preds = %bb.he
  %.not76.old.us.i = icmp eq ptr %i.avl, %.sroa.0165.0.copyload.i
  br i1 %.not76.old.us.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread183.us.i, label %.thread191.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i28, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread183.i
  %.sroa.0149.0211.i = phi ptr [ %.sroa.0149.0.i, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread183.i ], [ %.sroa.0149.0209.i, %.lr.ph.i28 ] ; 2 uses
  %i.avp = getelementptr inbounds nuw i8, ptr %.sroa.0149.0211.i, i64 16
  %i.avq = load ptr, ptr %i.avp, align 8, !tbaa !440 ; 4 uses
  %i.avr = load i8, ptr %i.asa, align 8, !tbaa !22, !range !23, !noundef !24
  %i.avs = trunc nuw i8 %i.avr to i1
  br i1 %i.avs, label %bb.hf, label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.i

bb.hf:                                            ; preds = %.lr.ph.split.i
  %i.avt = load ptr, ptr %1, align 8, !tbaa !25   ; 2 uses
  %i.avu = load i32, ptr %i.arz, align 4, !tbaa !614 ; 2 uses
  %i.avv = zext i32 %i.avu to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.avv, 3
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avt, i64 %.idx.i.i.i
  %.not17.i.i.i = icmp eq i32 %i.avu, 0
  br i1 %.not17.i.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread.i, label %.lr.ph.i.i87.i

bb.hg:                                            ; preds = %.lr.ph.i.i87.i
  %i.avx = getelementptr inbounds nuw i8, ptr %.01218.i.i.i, i64 8 ; 2 uses
  %.not.i.i88.i = icmp eq ptr %i.avx, %i.avw
  br i1 %.not.i.i88.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread.i, label %.lr.ph.i.i87.i

.lr.ph.i.i87.i:                                   ; preds = %bb.hf, %bb.hg
  %.01218.i.i.i = phi ptr [ %i.avx, %bb.hg ], [ %i.avt, %bb.hf ] ; 2 uses
  %i.avy = load ptr, ptr %.01218.i.i.i, align 8, !tbaa !29
  %.not15.i.i.i = icmp eq ptr %i.avy, %i.avq
  br i1 %.not15.i.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread183.i, label %bb.hg

_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.i: ; preds = %.lr.ph.split.i
  %i.avz = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef %i.avq) #32
  %i.awa = icmp ne ptr %i.avz, null
  %.not76.i = icmp eq ptr %i.avq, %.sroa.0165.0.copyload.i
  %or.cond200.i = select i1 %i.awa, i1 true, i1 %.not76.i
  br i1 %or.cond200.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread183.i, label %.thread191.i

_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread.i: ; preds = %bb.hg, %bb.hf
  %.not76.old.i = icmp eq ptr %i.avq, %.sroa.0165.0.copyload.i
  br i1 %.not76.old.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread183.i, label %.thread191.i

_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread183.i: ; preds = %.lr.ph.i.i87.i, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread.i, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.i
  %i.awb = getelementptr inbounds nuw i8, ptr %.sroa.0149.0211.i, i64 32
  %.sroa.0149.0.i = load ptr, ptr %i.awb, align 8, !tbaa !548 ; 2 uses
  %.not205.i = icmp eq ptr %.sroa.0149.0.i, null
  br i1 %.not205.i, label %._crit_edge.i29, label %.lr.ph.split.i, !llvm.loop !839

._crit_edge.i29:                                  ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread183.i, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread183.us.i, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread183.us.us.i, %.lr.ph214.i
  %i.awc = getelementptr inbounds nuw i8, ptr %.sroa.0156.0213.i, i64 8 ; 3 uses
  %.not1.i.i.i.i = icmp eq ptr %i.awc, %i.auu
  br i1 %.not1.i.i.i.i, label %_ZN4llvm19SmallPtrSetIteratorIPNS_6SDNodeEEppEv.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i29, %bb.hh
  %.sroa.0156.1.i = phi ptr [ %i.awf, %bb.hh ], [ %i.awc, %._crit_edge.i29 ] ; 3 uses
  %i.awd = load ptr, ptr %.sroa.0156.1.i, align 8, !tbaa !29
  %i.awe = icmp eq ptr %i.awd, inttoptr (i64 -1 to ptr)
  br i1 %i.awe, label %bb.hh, label %_ZN4llvm19SmallPtrSetIteratorIPNS_6SDNodeEEppEv.exit.i

bb.hh:                                            ; preds = %.lr.ph.i.i.i.i
  %i.awf = getelementptr inbounds nuw i8, ptr %.sroa.0156.1.i, i64 8 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.awf, %i.auu
  br i1 %.not.i.i.i.i, label %_ZN4llvm19SmallPtrSetIteratorIPNS_6SDNodeEEppEv.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZN4llvm19SmallPtrSetIteratorIPNS_6SDNodeEEppEv.exit.i: ; preds = %bb.hh, %.lr.ph.i.i.i.i, %._crit_edge.i29
  %.sroa.0156.2.i = phi ptr [ %i.awc, %._crit_edge.i29 ], [ %i.awf, %bb.hh ], [ %.sroa.0156.1.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %.not202.i.a = icmp eq ptr %.sroa.0156.2.i, %i.auy
  br i1 %.not202.i.a, label %._crit_edge215.loopexit.i, label %.lr.ph214.i

._crit_edge215.loopexit.i:                        ; preds = %_ZN4llvm19SmallPtrSetIteratorIPNS_6SDNodeEEppEv.exit.i
  %.pre.i30 = load ptr, ptr %1, align 8, !tbaa !25
  %.pre243.i.a = load i8, ptr %i.asa, align 8, !tbaa !22, !range !23
  %.pre244.i = load i32, ptr %i.arz, align 4
  %.pre245.i = load i32, ptr %i.ary, align 8
  %.pre251.i.a = trunc nuw i8 %.pre243.i.a to i1
  %.pre252.i.a = select i1 %.pre251.i.a, i32 %.pre244.i, i32 %.pre245.i ; 2 uses
  %.pre253.i = zext i32 %.pre252.i.a to i64       ; 2 uses
  %.pre254.i = shl nuw nsw i64 %.pre253.i, 3
  br label %._crit_edge215.i

._crit_edge215.i:                                 ; preds = %._crit_edge215.loopexit.i, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5beginEv.exit.i
  %.idx.i91.pre-phi.i = phi i64 [ %.pre254.i, %._crit_edge215.loopexit.i ], [ %.idx.i.i27, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5beginEv.exit.i ]
  %.v.i.i.i90.pre-phi.i = phi i64 [ %.pre253.i, %._crit_edge215.loopexit.i ], [ %.v.i.i.i.i, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5beginEv.exit.i ]
  %.v.v.i.i.i89.pre-phi.i = phi i32 [ %.pre252.i.a, %._crit_edge215.loopexit.i ], [ %.v.v.i.i.i.i, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5beginEv.exit.i ]
  %i.awg = phi ptr [ %.pre.i30, %._crit_edge215.loopexit.i ], [ %i.aup, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5beginEv.exit.i ] ; 4 uses
  %i.awh = getelementptr i8, ptr %i.awg, i64 %.idx.i91.pre-phi.i ; 4 uses
  %.not1.i.i.i.i.i92.i = icmp eq i32 %.v.v.i.i.i89.pre-phi.i, 0
  br i1 %.not1.i.i.i.i.i92.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5beginEv.exit99.i, label %.lr.ph.i.i.i.i.i93.i

.lr.ph.i.i.i.i.i93.i:                             ; preds = %._crit_edge215.i, %bb.hi
  %.sroa.0.0.i.i94.i = phi ptr [ %i.awk, %bb.hi ], [ %i.awg, %._crit_edge215.i ] ; 3 uses
  %i.awi = load ptr, ptr %.sroa.0.0.i.i94.i, align 8, !tbaa !29
  %i.awj = icmp eq ptr %i.awi, inttoptr (i64 -1 to ptr)
  br i1 %i.awj, label %bb.hi, label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5beginEv.exit99.i

bb.hi:                                            ; preds = %.lr.ph.i.i.i.i.i93.i
  %i.awk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i94.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i98.i = icmp eq ptr %i.awk, %i.awh
  br i1 %.not.i.i.i.i.i98.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5beginEv.exit99.i, label %.lr.ph.i.i.i.i.i93.i, !llvm.loop !1

_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5beginEv.exit99.i: ; preds = %bb.hi, %.lr.ph.i.i.i.i.i93.i, %._crit_edge215.i
  %.sroa.0.1.i.i95.i = phi ptr [ %i.awg, %._crit_edge215.i ], [ %i.awh, %bb.hi ], [ %.sroa.0.0.i.i94.i, %.lr.ph.i.i.i.i.i93.i ] ; 2 uses
  %i.awl = getelementptr inbounds nuw [8 x i8], ptr %i.awg, i64 %.v.i.i.i90.pre-phi.i ; 2 uses
  %.not203226.i = icmp eq ptr %.sroa.0.1.i.i95.i, %i.awl
  br i1 %.not203226.i, label %._crit_edge229.i, label %.lr.ph228.i

.lr.ph228.i:                                      ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5beginEv.exit99.i
  %i.awm = getelementptr inbounds nuw i8, ptr %.sroa.0165.0.copyload.i, i64 48
  %i.awn = getelementptr inbounds nuw i8, ptr %.sroa.0165.0.copyload.i, i64 66
  br label %bb.hj

._crit_edge229.i:                                 ; preds = %_ZN4llvm19SmallPtrSetIteratorIPNS_6SDNodeEEppEv.exit125.i, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5beginEv.exit99.i
  %i.awo = load ptr, ptr %i.f, align 8, !tbaa !396
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.awo, ptr noundef nonnull %i.aso, ptr noundef %.sroa.0160.0.copyload.i) #32
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %.sroa.0160.0.copyload.i) #32
  br label %.thread191.i

bb.hj:                                            ; preds = %_ZN4llvm19SmallPtrSetIteratorIPNS_6SDNodeEEppEv.exit125.i, %.lr.ph228.i
  %.sroa.0145.0227.i = phi ptr [ %.sroa.0.1.i.i95.i, %.lr.ph228.i ], [ %.sroa.0145.2.i, %_ZN4llvm19SmallPtrSetIteratorIPNS_6SDNodeEEppEv.exit125.i ] ; 2 uses
  %i.awp = load ptr, ptr %.sroa.0145.0227.i, align 8, !tbaa !29 ; 6 uses
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awp, i64 24
  %i.awr = load i32, ptr %i.awq, align 8, !tbaa !409
  switch i32 %i.awr, label %bb.hk [
    i32 -1903, label %bb.ic
    i32 -1907, label %bb.hl
    i32 -1959, label %bb.hm
    i32 -1991, label %bb.hn
    i32 -1419, label %bb.ho
    i32 -1421, label %bb.hp
    i32 -1404, label %bb.hq
    i32 -1448, label %bb.hr
    i32 -706, label %bb.hs
    i32 -713, label %bb.ht
    i32 -1899, label %bb.hu
    i32 -1633, label %bb.hv
    i32 -1928, label %bb.hw
    i32 -1640, label %bb.hx
    i32 -1642, label %bb.hy
    i32 -501, label %bb.hz
    i32 -511, label %bb.ia
    i32 -510, label %bb.ib
  ]

bb.hk:                                            ; preds = %bb.hj
  unreachable

bb.hl:                                            ; preds = %bb.hj
  br label %bb.ic

bb.hm:                                            ; preds = %bb.hj
  br label %bb.ic

bb.hn:                                            ; preds = %bb.hj
  br label %bb.ic

bb.ho:                                            ; preds = %bb.hj
  br label %bb.ic

bb.hp:                                            ; preds = %bb.hj
  br label %bb.ic

bb.hq:                                            ; preds = %bb.hj
  br label %bb.ic

bb.hr:                                            ; preds = %bb.hj
  br label %bb.ic

bb.hs:                                            ; preds = %bb.hj
  br label %bb.ic

bb.ht:                                            ; preds = %bb.hj
  br label %bb.ic

bb.hu:                                            ; preds = %bb.hj
  br label %bb.ic

bb.hv:                                            ; preds = %bb.hj
  br label %bb.ic

bb.hw:                                            ; preds = %bb.hj
  br label %bb.ic

bb.hx:                                            ; preds = %bb.hj
  br label %bb.ic

bb.hy:                                            ; preds = %bb.hj
  br label %bb.ic

bb.hz:                                            ; preds = %bb.hj
  br label %bb.ic

bb.ia:                                            ; preds = %bb.hj
  br label %bb.ic

bb.ib:                                            ; preds = %bb.hj
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu, %bb.ht, %bb.hs, %bb.hr, %bb.hq, %bb.hp, %bb.ho, %bb.hn, %bb.hm, %bb.hl, %bb.hj
  %.068.i = phi i32 [ 508, %bb.ib ], [ 1907, %bb.hl ], [ 1959, %bb.hm ], [ 1991, %bb.hn ], [ 1419, %bb.ho ], [ 1421, %bb.hp ], [ 1404, %bb.hq ], [ 1448, %bb.hr ], [ 706, %bb.hs ], [ 713, %bb.ht ], [ 1899, %bb.hu ], [ 1633, %bb.hv ], [ 1928, %bb.hw ], [ 1640, %bb.hx ], [ 1642, %bb.hy ], [ 501, %bb.hz ], [ 507, %bb.ia ], [ 1903, %bb.hj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %i.asb, ptr %2, align 8, !tbaa !27
  store i32 0, ptr %i.asc, align 8, !tbaa !45
  store i32 4, ptr %i.asd, align 4, !tbaa !65
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awp, i64 40
  %i.awt = load ptr, ptr %i.aws, align 8, !tbaa !423 ; 2 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awp, i64 64
  %i.awv = load i16, ptr %i.awu, align 8, !tbaa !424 ; 2 uses
  %i.aww = zext i16 %i.awv to i64
  %.idx.i = mul nuw nsw i64 %i.aww, 40
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awt, i64 %.idx.i
  %.not77216.i = icmp eq i16 %i.awv, 0
  br i1 %.not77216.i, label %._crit_edge220.i, label %.lr.ph219.i

._crit_edge220.i:                                 ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit121.i, %bb.ic
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  store ptr %i.asi, ptr %6, align 8, !tbaa !27
  store i32 0, ptr %i.asj, align 8, !tbaa !45
  store i32 2, ptr %i.ask, align 4, !tbaa !65
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awp, i64 48
  %i.awz = load ptr, ptr %i.awy, align 8, !tbaa !414
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awp, i64 66
  %i.axb = load i16, ptr %i.axa, align 2, !tbaa !615 ; 2 uses
  %.not78221.i = icmp eq i16 %i.axb, 0
  br i1 %.not78221.i, label %._crit_edge225.i, label %.lr.ph224.preheader.i

.lr.ph224.preheader.i:                            ; preds = %._crit_edge220.i
  %i.axc = zext i16 %i.axb to i64
  br label %.lr.ph224.i

.lr.ph219.i:                                      ; preds = %bb.ic, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit121.i
  %.069217.i = phi ptr [ %i.ayw, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit121.i ], [ %i.awt, %bb.ic ] ; 7 uses
  %i.axd = load ptr, ptr %.069217.i, align 8, !tbaa !426 ; 5 uses
  %i.axe = load i8, ptr %i.asa, align 8, !tbaa !22, !range !23, !noundef !24
  %i.axf = trunc nuw i8 %i.axe to i1
  br i1 %i.axf, label %bb.id, label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit113.i

bb.id:                                            ; preds = %.lr.ph219.i
  %i.axg = load ptr, ptr %1, align 8, !tbaa !25   ; 2 uses
  %i.axh = load i32, ptr %i.arz, align 4, !tbaa !614 ; 2 uses
  %i.axi = zext i32 %i.axh to i64
  %.idx.i.i107.i = shl nuw nsw i64 %i.axi, 3
end_hunk_0

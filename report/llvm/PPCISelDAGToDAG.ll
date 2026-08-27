Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPCISelDAGToDAG?download=true
inline.NumInlined: 6481
inline.NumDeleted: 1616
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN12_GLOBAL__N_115PPCDAGToDAGISel18PostprocessISelDAGEv:bb.a
  %i.aya = load i64, ptr %i.axz, align 8, !tbaa !446
  store i64 %i.aya, ptr %4, align 8, !tbaa !446
  %i.ayb = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload.i, i64 68
  %i.ayc = load i32, ptr %i.ayb, align 4, !tbaa !447
  store i32 %i.ayc, ptr %i.asf, align 8, !tbaa !448
  %i.ayd = load ptr, ptr %i.awl, align 8, !tbaa !451
  %i.aye = load i16, ptr %i.awm, align 2, !tbaa !667
  %i.ayf = zext i16 %i.aye to i32
  store ptr %3, ptr %5, align 8, !tbaa !488
  store i64 3, ptr %i.asg, align 8, !tbaa !491
  %i.ayg = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.axy, i32 noundef 9, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr %i.ayd, i32 %i.ayf, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %5) #32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.ayh = load i32, ptr %i.asb, align 8, !tbaa !54 ; 2 uses
  %i.ayi = load i32, ptr %i.asc, align 4, !tbaa !95
  %.not.i.i34 = icmp ult i32 %i.ayh, %i.ayi
  br i1 %.not.i.i34, label %bb.ii, label %bb.ih, !prof !96

bb.ih:                                            ; preds = %bb.ig
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %i.ayg, i32 0)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.i

bb.ii:                                            ; preds = %bb.ig
  %i.ayj = zext i32 %i.ayh to i64
  %i.ayk = load ptr, ptr %2, align 8, !tbaa !21
  %i.ayl = getelementptr inbounds nuw [16 x i8], ptr %i.ayk, i64 %i.ayj ; 2 uses
  store ptr %i.ayg, ptr %i.ayl, align 1
  %.sroa.32.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ayl, i64 8
  store i32 0, ptr %.sroa.32.0..sroa_idx.i.i, align 1
  %i.aym = load i32, ptr %i.asb, align 8, !tbaa !54
  %i.ayn = add i32 %i.aym, 1
  store i32 %i.ayn, ptr %i.asb, align 8, !tbaa !54
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.i: ; preds = %bb.ii, %bb.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit121.i

.critedge.i:                                      ; preds = %.lr.ph.i.i109.i, %bb.if, %bb.if, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit113.thread.i, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit113.i
  %.sroa.011.0.copyload.i = phi ptr [ %.sroa.011.0.copyload.pre.i, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit113.i ], [ %i.axm, %bb.if ], [ %i.axm, %bb.if ], [ %i.axm, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit113.thread.i ], [ %i.axc, %.lr.ph.i.i109.i ] ; 2 uses
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.069217.i, i64 8
  %.sroa.212.0.copyload.i = load i32, ptr %.sroa.212.0..sroa_idx.i, align 8, !tbaa !458 ; 2 uses
  %i.ayo = load i32, ptr %i.asb, align 8, !tbaa !54 ; 2 uses
  %i.ayp = load i32, ptr %i.asc, align 4, !tbaa !95
  %.not.i119.i = icmp ult i32 %i.ayo, %i.ayp
  br i1 %.not.i119.i, label %bb.ik, label %bb.ij, !prof !96

bb.ij:                                            ; preds = %.critedge.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.sroa.011.0.copyload.i, i32 %.sroa.212.0.copyload.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit121.i

bb.ik:                                            ; preds = %.critedge.i
  %i.ayq = zext i32 %i.ayo to i64
  %i.ayr = load ptr, ptr %2, align 8, !tbaa !21
  %i.ays = getelementptr inbounds nuw [16 x i8], ptr %i.ayr, i64 %i.ayq ; 2 uses
  store ptr %.sroa.011.0.copyload.i, ptr %i.ays, align 1
  %.sroa.32.0..sroa_idx.i120.i = getelementptr inbounds nuw i8, ptr %i.ays, i64 8
  store i32 %.sroa.212.0.copyload.i, ptr %.sroa.32.0..sroa_idx.i120.i, align 1
  %i.ayt = load i32, ptr %i.asb, align 8, !tbaa !54
  %i.ayu = add i32 %i.ayt, 1
  store i32 %i.ayu, ptr %i.asb, align 8, !tbaa !54
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit121.i

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit121.i: ; preds = %bb.ik, %bb.ij, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.i
  %i.ayv = getelementptr inbounds nuw i8, ptr %.069217.i, i64 40 ; 2 uses
  %.not77.i = icmp eq ptr %i.ayv, %i.aww
  br i1 %.not77.i, label %._crit_edge220.i, label %.lr.ph219.i

._crit_edge225.loopexit.i:                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_3EVTELb1EE9push_backES1_.exit.i
  %.pre248.i = load ptr, ptr %6, align 8, !tbaa !21
  %.pre249.i = load i32, ptr %i.asi, align 8, !tbaa !54
  %i.ayw = zext i32 %.pre249.i to i64
  br label %._crit_edge225.i

._crit_edge225.i:                                 ; preds = %._crit_edge225.loopexit.i, %._crit_edge220.i
  %i.ayx = phi i64 [ %i.ayw, %._crit_edge225.loopexit.i ], [ 0, %._crit_edge220.i ]
  %i.ayy = phi ptr [ %.pre248.i, %._crit_edge225.loopexit.i ], [ %i.ash, %._crit_edge220.i ]
  %i.ayz = load ptr, ptr %i.f, align 8, !tbaa !431 ; 2 uses
  %i.aza = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_8ArrayRefINS_3EVTEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.ayz, ptr %i.ayy, i64 %i.ayx) #32 ; 2 uses
  %i.azb = extractvalue { ptr, i32 } %i.aza, 0
  %i.azc = extractvalue { ptr, i32 } %i.aza, 1
  %i.azd = load ptr, ptr %2, align 8, !tbaa !21
  store ptr %i.azd, ptr %7, align 8, !tbaa !488
  %i.aze = load i32, ptr %i.asb, align 8, !tbaa !54
  %i.azf = zext i32 %i.aze to i64
  store i64 %i.azf, ptr %i.ask, align 8, !tbaa !491
  %i.azg = call noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.ayz, ptr noundef nonnull %i.awo, i32 noundef %.068.i, ptr %i.azb, i32 %i.azc, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %7) #32 ; 0 uses
  %i.azh = load ptr, ptr %6, align 8, !tbaa !21   ; 2 uses
  %i.azi = icmp eq ptr %i.azh, %i.ash
  br i1 %i.azi, label %_ZN4llvm11SmallVectorINS_3EVTELj2EED2Ev.exit.i, label %bb.il

bb.il:                                            ; preds = %._crit_edge225.i
  call void @free(ptr noundef %i.azh) #32
  br label %_ZN4llvm11SmallVectorINS_3EVTELj2EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_3EVTELj2EED2Ev.exit.i:   ; preds = %bb.il, %._crit_edge225.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.azj = load ptr, ptr %2, align 8, !tbaa !21   ; 2 uses
  %i.azk = icmp eq ptr %i.azj, %i.asa
  br i1 %i.azk, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit.i, label %bb.im

bb.im:                                            ; preds = %_ZN4llvm11SmallVectorINS_3EVTELj2EED2Ev.exit.i
  call void @free(ptr noundef %i.azj) #32
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit.i: ; preds = %bb.im, %_ZN4llvm11SmallVectorINS_3EVTELj2EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.azl = getelementptr inbounds nuw i8, ptr %.sroa.0145.0227.i, i64 8 ; 3 uses
  %.not1.i.i.i122.i = icmp eq ptr %i.azl, %i.awg
  br i1 %.not1.i.i.i122.i, label %_ZN4llvm19SmallPtrSetIteratorIPNS_6SDNodeEEppEv.exit125.i, label %.lr.ph.i.i.i123.i

.lr.ph.i.i.i123.i:                                ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit.i, %bb.in
  %.sroa.0145.1.i = phi ptr [ %i.azo, %bb.in ], [ %i.azl, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit.i ] ; 3 uses
  %i.azm = load ptr, ptr %.sroa.0145.1.i, align 8, !tbaa !24
  %i.azn = icmp eq ptr %i.azm, inttoptr (i64 -1 to ptr)
  br i1 %i.azn, label %bb.in, label %_ZN4llvm19SmallPtrSetIteratorIPNS_6SDNodeEEppEv.exit125.i

bb.in:                                            ; preds = %.lr.ph.i.i.i123.i
  %i.azo = getelementptr inbounds nuw i8, ptr %.sroa.0145.1.i, i64 8 ; 3 uses
  %.not.i.i.i124.i = icmp eq ptr %i.azo, %i.awg
  br i1 %.not.i.i.i124.i, label %_ZN4llvm19SmallPtrSetIteratorIPNS_6SDNodeEEppEv.exit125.i, label %.lr.ph.i.i.i123.i, !llvm.loop !664

_ZN4llvm19SmallPtrSetIteratorIPNS_6SDNodeEEppEv.exit125.i: ; preds = %bb.in, %.lr.ph.i.i.i123.i, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit.i
  %.sroa.0145.2.i = phi ptr [ %i.azl, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit.i ], [ %i.azo, %bb.in ], [ %.sroa.0145.1.i, %.lr.ph.i.i.i123.i ] ; 2 uses
  %.not203.i = icmp eq ptr %.sroa.0145.2.i, %i.awk
  br i1 %.not203.i, label %._crit_edge229.i, label %bb.hj

.lr.ph224.i:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_3EVTELb1EE9push_backES1_.exit.i, %.lr.ph224.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph224.preheader.i ], [ %indvars.iv.next.i, %_ZN4llvm23SmallVectorTemplateBaseINS_3EVTELb1EE9push_backES1_.exit.i ] ; 2 uses
  %i.azp = getelementptr inbounds nuw [16 x i8], ptr %i.awy, i64 %indvars.iv.i ; 2 uses
  %i.azq = load i16, ptr %i.azp, align 8, !tbaa !668 ; 3 uses
  %.not.i.i126.i = icmp eq i16 %i.azq, 7
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azp, i64 8
  %i.azs = load ptr, ptr %i.azr, align 8          ; 3 uses
  %i.azt = icmp eq ptr %i.azs, null
  %.not4.i127.i = select i1 %.not.i.i126.i, i1 %i.azt, i1 false
  %i.azu = load i32, ptr %i.asi, align 8, !tbaa !54 ; 3 uses
  %i.azv = load i32, ptr %i.asj, align 4, !tbaa !95
  %.not.i128.i = icmp ult i32 %i.azu, %i.azv      ; 2 uses
  br i1 %.not4.i127.i, label %bb.io, label %bb.ir

bb.io:                                            ; preds = %.lr.ph224.i
  br i1 %.not.i128.i, label %bb.iq, label %bb.ip, !prof !96

bb.ip:                                            ; preds = %bb.io
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_3EVTELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %6, i16 8, ptr null)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_3EVTELb1EE9push_backES1_.exit.i

bb.iq:                                            ; preds = %bb.io
  %i.azw = zext i32 %i.azu to i64
  %i.azx = load ptr, ptr %6, align 8, !tbaa !21
  %i.azy = getelementptr inbounds nuw [16 x i8], ptr %i.azx, i64 %i.azw ; 2 uses
  store i16 8, ptr %i.azy, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.azy, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %i.azz = load i32, ptr %i.asi, align 8, !tbaa !54
  %i.baa = add i32 %i.azz, 1
  store i32 %i.baa, ptr %i.asi, align 8, !tbaa !54
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_3EVTELb1EE9push_backES1_.exit.i

bb.ir:                                            ; preds = %.lr.ph224.i
  br i1 %.not.i128.i, label %bb.it, label %bb.is, !prof !96

bb.is:                                            ; preds = %bb.ir
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_3EVTELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %6, i16 %i.azq, ptr %i.azs)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_3EVTELb1EE9push_backES1_.exit.i

bb.it:                                            ; preds = %bb.ir
  %i.bab = zext i32 %i.azu to i64
  %i.bac = load ptr, ptr %6, align 8, !tbaa !21
  %i.bad = getelementptr inbounds nuw [16 x i8], ptr %i.bac, i64 %i.bab ; 2 uses
  store i16 %i.azq, ptr %i.bad, align 1
  %.sroa.4.0..sroa_idx.i130.i = getelementptr inbounds nuw i8, ptr %i.bad, i64 8
  store ptr %i.azs, ptr %.sroa.4.0..sroa_idx.i130.i, align 1
  %i.bae = load i32, ptr %i.asi, align 8, !tbaa !54
  %i.baf = add i32 %i.bae, 1
  store i32 %i.baf, ptr %i.asi, align 8, !tbaa !54
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_3EVTELb1EE9push_backES1_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_3EVTELb1EE9push_backES1_.exit.i: ; preds = %bb.it, %bb.is, %bb.iq, %bb.ip
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not78.i = icmp eq i64 %indvars.iv.next.i, %i.axb
  br i1 %.not78.i, label %._crit_edge225.loopexit.i, label %.lr.ph224.i, !llvm.loop !671

.thread191.i:                                     ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread.i, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.i, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread.loopexit.us.i, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread.us.us.i, %._crit_edge229.i, %bb.hb
  %.2.i = phi i1 [ %.0232.i, %bb.hb ], [ true, %._crit_edge229.i ], [ %.0232.i, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread.loopexit.us.i ], [ %.0232.i, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread.us.us.i ], [ %.0232.i, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.i ], [ %.0232.i, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread.i ]
  %i.bag = load i8, ptr %i.arz, align 8, !tbaa !14, !range !18, !noundef !19
  %i.bah = trunc nuw i8 %i.bag to i1
  br i1 %i.bah, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.iu

bb.iu:                                            ; preds = %.thread191.i
  %i.bai = load ptr, ptr %1, align 8, !tbaa !20
  call void @free(ptr noundef %i.bai) #32
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.iu, %.thread191.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  %.pre250.i = load ptr, ptr %i.f, align 8, !tbaa !431
  br label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i12

_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i12:    ; preds = %.lr.ph.i.i.i17, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.ha, %bb.gz, %bb.gy, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i24, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr
  %i.baj = phi ptr [ %i.asl, %bb.gt ], [ %i.asl, %bb.gr ], [ %.pre250.i, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i ], [ %i.asl, %bb.gs ], [ %i.asl, %bb.gu ], [ %i.asl, %bb.gv ], [ %i.asl, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i24 ], [ %i.asl, %bb.gy ], [ %i.asl, %bb.gw ], [ %i.asl, %bb.gz ], [ %i.asl, %bb.ha ], [ %i.asl, %.lr.ph.i.i.i17 ] ; 3 uses
  %.6.i = phi i1 [ %.0232.i, %bb.gt ], [ %.0232.i, %bb.gr ], [ %.2.i, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i ], [ %.0232.i, %bb.gs ], [ %.0232.i, %bb.gu ], [ %.0232.i, %bb.gv ], [ %.0232.i, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i24 ], [ %.0232.i, %bb.gy ], [ %.0232.i, %bb.gw ], [ %.0232.i, %bb.gz ], [ %.0232.i, %bb.ha ], [ %.0232.i, %.lr.ph.i.i.i17 ] ; 2 uses
  %i.bak = getelementptr inbounds nuw i8, ptr %i.baj, i64 400
  %i.bal = load ptr, ptr %i.bak, align 8, !tbaa !432
  %.not201.i = icmp eq ptr %i.asm, %i.bal
  br i1 %.not201.i, label %._crit_edge235.i, label %bb.gr

._crit_edge235.i:                                 ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i12
  br i1 %.6.i, label %bb.iv, label %_ZN12_GLOBAL__N_115PPCDAGToDAGISel17PeepholePPC64ZExtEv.exit

bb.iv:                                            ; preds = %._crit_edge235.i
  call void @_ZN4llvm12SelectionDAG15RemoveDeadNodesEv(ptr noundef nonnull align 8 dereferenceable(920) %i.baj) #32
  br label %_ZN12_GLOBAL__N_115PPCDAGToDAGISel17PeepholePPC64ZExtEv.exit

_ZN12_GLOBAL__N_115PPCDAGToDAGISel17PeepholePPC64ZExtEv.exit: ; preds = %_ZN12_GLOBAL__N_115PPCDAGToDAGISel13PeepholeCROpsEv.exit, %bb.gq, %._crit_edge235.i, %bb.iv
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.iw

bb.iw:                                            ; preds = %bb.a, %_ZN12_GLOBAL__N_115PPCDAGToDAGISel17PeepholePPC64ZExtEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_115PPCDAGToDAGISel6SelectEPN4llvm6SDNodeE(ptr noundef nonnull align 8 dereferenceable(980) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %i.b = alloca [1 x ptr], align 8                ; 4 uses
  %i.c = alloca [1 x ptr], align 8                ; 4 uses
  %i.d = alloca [1 x ptr], align 8                ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.(anonymous namespace)::IntegerCompareEliminator", align 8 ; 6 uses
  %3 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.(anonymous namespace)::BitPermutationSelector", align 8 ; 31 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 97 uses
  %6 = alloca %"class.llvm::SmallVector.461", align 8 ; 13 uses
  %.sroa.6749 = alloca [16 x i8], align 4         ; 3 uses
  %i.i = alloca i16, align 2                      ; 4 uses
  %i.j = alloca i16, align 2                      ; 4 uses
  %i.k = alloca i16, align 2                      ; 4 uses
  %7 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 8 uses
  %8 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %11 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 6 uses
  %12 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %13 = alloca [2 x %"struct.llvm::EVT"], align 16 ; 4 uses
  %14 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 7 uses
  %15 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %21 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %22 = alloca [4 x %"class.llvm::SDValue"], align 16 ; 12 uses
  %23 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %24 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %25 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %26 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %27 = alloca [2 x %"struct.llvm::EVT"], align 16 ; 4 uses
  %28 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %29 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %30 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %31 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %32 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %33 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %34 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %35 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %36 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %37 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %38 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %39 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %40 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %41 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %42 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %43 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %44 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %45 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 7 uses
  %46 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %47 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %48 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %49 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 7 uses
  %50 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %51 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %52 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %i.l = alloca i16, align 2                      ; 6 uses
  %53 = alloca %"struct.llvm::KnownBits", align 8 ; 9 uses
  %54 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %55 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %56 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 7 uses
  %57 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %58 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %59 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %60 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 7 uses
  %61 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %i.m = alloca i16, align 2                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %i.q = alloca i32, align 4                      ; 5 uses
  %62 = alloca [4 x %"class.llvm::SDValue"], align 16 ; 10 uses
  %63 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %i.r = alloca i32, align 4                      ; 5 uses
  %i.s = alloca i32, align 4                      ; 5 uses
  %i.t = alloca i32, align 4                      ; 5 uses
  %i.u = alloca i32, align 4                      ; 5 uses
  %64 = alloca [4 x %"class.llvm::SDValue"], align 16 ; 10 uses
  %65 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %66 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %67 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %68 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %69 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %70 = alloca [4 x %"class.llvm::SDValue"], align 16 ; 11 uses
  %71 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %72 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %73 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %74 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %75 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %76 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %77 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.v = alloca i8, align 1                       ; 6 uses
  %i.w = alloca i8, align 1                       ; 6 uses
  %78 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %79 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %80 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %81 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %82 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %83 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %84 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %85 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %i.x = alloca i8, align 1                       ; 4 uses
  %86 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %87 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %88 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %89 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %90 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %91 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %92 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %93 = alloca [4 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %94 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %95 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %96 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %97 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 6 uses
  %98 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %i.y = alloca [1 x ptr], align 8                ; 4 uses
  %99 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %100 = alloca %"class.llvm::ArrayRef", align 8  ; 3 uses
  %101 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 5 uses
  %102 = alloca %"class.llvm::ArrayRef", align 8  ; 3 uses
  %103 = alloca [5 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %104 = alloca %"class.llvm::ArrayRef", align 8  ; 3 uses
  %105 = alloca %"struct.llvm::EVT", align 8      ; 5 uses
  %106 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %107 = alloca %"class.llvm::SDValue", align 8   ; 2 uses
  %108 = alloca [4 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %109 = alloca %"class.llvm::ArrayRef", align 8  ; 3 uses
  %110 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %111 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %112 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %113 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %114 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %115 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %116 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %117 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %118 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %119 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %120 = alloca %"struct.llvm::EVT", align 8      ; 3 uses
  %121 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %122 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %123 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %124 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %125 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %126 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %127 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %128 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %129 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %130 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %131 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %132 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %133 = alloca %"struct.llvm::EVT", align 8      ; 3 uses
  %134 = alloca %"class.llvm::ArrayRef", align 8  ; 3 uses
  %135 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %136 = alloca %"struct.llvm::EVT", align 8      ; 3 uses
  %137 = alloca %"class.llvm::ArrayRef", align 8  ; 3 uses
  %138 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 8 uses
  %139 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %140 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %141 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %142 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %143 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %144 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !446
  store i64 %i.aa, ptr %5, align 8, !tbaa !446
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !447
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_115PPCDAGToDAGISel6SelectEPN4llvm6SDNodeE:bb.a
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !460
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 40
  %.sroa.01830.0.copyload = load ptr, ptr %i.su, align 8, !tbaa !456 ; 3 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %.sroa.01830.0.copyload, i64 24
  %i.sw = load i32, ptr %i.sv, align 8, !tbaa !445
  switch i32 %i.sw, label %.critedge1047 [
    i32 14, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 39, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 15, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 40, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 44, label %_ZN4llvm8dyn_castINS_20ExternalSymbolSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 19, label %_ZN4llvm8dyn_castINS_20ExternalSymbolSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.dn, %bb.dn, %bb.dn, %bb.dn
  %i.sx = getelementptr inbounds nuw i8, ptr %.sroa.01830.0.copyload, i64 104
  %i.sy = load i32, ptr %i.sx, align 8, !tbaa !596
  %i.sz = icmp eq i32 %i.sy, 1
  br i1 %i.sz, label %bb.do, label %.critedge1047

bb.do:                                            ; preds = %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.ta = call fastcc noundef ptr @_ZN12_GLOBAL__N_115PPCDAGToDAGISel16getGlobalBaseRegEv(ptr noundef nonnull align 8 dereferenceable(980) %0) ; 0 uses
  br label %.critedge1047

_ZN4llvm8dyn_castINS_20ExternalSymbolSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.dn, %bb.dn
  %i.tb = getelementptr inbounds nuw i8, ptr %.sroa.01830.0.copyload, i64 96
  %i.tc = load i32, ptr %i.tb, align 8, !tbaa !749
  %i.td = icmp eq i32 %i.tc, 1
  br i1 %i.td, label %bb.dp, label %.critedge1047

bb.dp:                                            ; preds = %_ZN4llvm8dyn_castINS_20ExternalSymbolSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.te = call fastcc noundef ptr @_ZN12_GLOBAL__N_115PPCDAGToDAGISel16getGlobalBaseRegEv(ptr noundef nonnull align 8 dereferenceable(980) %0) ; 0 uses
  br label %.critedge1047

bb.dq:                                            ; preds = %_ZN12_GLOBAL__N_115PPCDAGToDAGISel18tryIntCompareInGPREPN4llvm6SDNodeE.exit.thread
  %i.tf = call fastcc noundef ptr @_ZN12_GLOBAL__N_115PPCDAGToDAGISel16getGlobalBaseRegEv(ptr noundef nonnull align 8 dereferenceable(980) %0)
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr noundef %i.tf)
  br label %.critedge1045

bb.dr:                                            ; preds = %_ZN12_GLOBAL__N_115PPCDAGToDAGISel18tryIntCompareInGPREPN4llvm6SDNodeE.exit.thread
  call fastcc void @_ZN12_GLOBAL__N_115PPCDAGToDAGISel16selectFrameIndexEPN4llvm6SDNodeES3_l(ptr noundef nonnull align 8 dereferenceable(980) %0, ptr noundef nonnull %1, ptr noundef nonnull %1, i64 noundef 0)
  br label %.critedge1045

bb.ds:                                            ; preds = %_ZN12_GLOBAL__N_115PPCDAGToDAGISel18tryIntCompareInGPREPN4llvm6SDNodeE.exit.thread
  %i.tg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !460 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 40
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !431
  %i.tl = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.tk, i32 noundef 1519, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.th, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ti) #32
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr noundef %i.tl)
  br label %.critedge1045

bb.dt:                                            ; preds = %_ZN12_GLOBAL__N_115PPCDAGToDAGISel18tryIntCompareInGPREPN4llvm6SDNodeE.exit.thread
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !431
  store i16 7, ptr %33, align 8, !tbaa !751
  %i.to = getelementptr inbounds nuw i8, ptr %33, i64 8
  store ptr null, ptr %i.to, align 8, !tbaa !752
  store i16 1, ptr %34, align 8, !tbaa !751
  %i.tp = getelementptr inbounds nuw i8, ptr %34, i64 8
  store ptr null, ptr %i.tp, align 8, !tbaa !752
  %i.tq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !460
  store ptr %i.tr, ptr %35, align 8, !tbaa !488
  %i.ts = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 1, ptr %i.ts, align 8, !tbaa !491
  %i.tt = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTES4_S4_NS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.tn, i32 noundef 1910, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %33, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %34, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %35) #32
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr noundef %i.tt)
  br label %.critedge1045

bb.du:                                            ; preds = %_ZN12_GLOBAL__N_115PPCDAGToDAGISel18tryIntCompareInGPREPN4llvm6SDNodeE.exit.thread
  %i.tu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !460 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 8 dereferenceable(16) %i.tv, i64 16, i1 false)
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !431
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tv, i64 40
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !462
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 88
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !467
  %i.uc = load ptr, ptr %i.ai, align 8, !tbaa !451 ; 2 uses
  %.sroa.0.0.copyload.i1163 = load i16, ptr %i.uc, align 8, !tbaa !452
  %.sroa.21.0..sroa_idx.i1164 = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  %.sroa.21.0.copyload.i1165 = load ptr, ptr %.sroa.21.0..sroa_idx.i1164, align 8, !tbaa !454
  %i.ud = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantERKNS_11ConstantIntERKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.tx, ptr noundef nonnull align 8 dereferenceable(40) %i.ub, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.0.0.copyload.i1163, ptr %.sroa.21.0.copyload.i1165, i1 noundef zeroext true, i1 noundef zeroext false) #32 ; 2 uses
  %.fca.0.extract577 = extractvalue { ptr, i32 } %i.ud, 0 ; 2 uses
  %.fca.1.extract578 = extractvalue { ptr, i32 } %i.ud, 1 ; 2 uses
  %i.ue = load ptr, ptr %i.ai, align 8, !tbaa !451 ; 2 uses
  %.sroa.0.0.copyload.i1168 = load i16, ptr %i.ue, align 8, !tbaa !452
  %.sroa.21.0..sroa_idx.i1169 = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  %.sroa.21.0.copyload.i1170 = load ptr, ptr %.sroa.21.0..sroa_idx.i1169, align 8, !tbaa !454
  %.not.i.i1173 = icmp eq i16 %.sroa.0.0.copyload.i1168, 8
  %i.uf = icmp eq ptr %.sroa.21.0.copyload.i1170, null
  %.not4.i1174 = select i1 %.not.i.i1173, i1 %i.uf, i1 false
  %i.ug = load ptr, ptr %i.tw, align 8, !tbaa !431 ; 2 uses
  br i1 %.not4.i1174, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  store i16 249, ptr %37, align 8, !tbaa !751
  %i.uh = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr null, ptr %i.uh, align 8, !tbaa !752
  store ptr %.fca.0.extract577, ptr %38, align 8, !tbaa !456
  %.sroa.5585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i32 %.fca.1.extract578, ptr %.sroa.5585.0..sroa_idx, align 8, !tbaa !458
  %i.ui = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTES4_NS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.ug, i32 noundef 1976, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 8, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %37, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %36, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %38) #32 ; 2 uses
  %i.uj = load ptr, ptr %i.tw, align 8, !tbaa !431
  store ptr %i.ui, ptr %39, align 8, !tbaa !462
  %i.uk = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i32 0, ptr %i.uk, align 8, !tbaa !476
  store ptr %i.ui, ptr %40, align 8, !tbaa !462
  %i.ul = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i32 1, ptr %i.ul, align 8, !tbaa !476
  %i.um = call noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_3EVTENS_7SDValueES4_(ptr noundef nonnull align 8 dereferenceable(920) %i.uj, ptr noundef nonnull %1, i32 noundef 491, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %39, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %40) #32 ; 0 uses
  br label %.critedge1045

bb.dw:                                            ; preds = %bb.du
  store i16 249, ptr %41, align 8, !tbaa !751
  %i.un = getelementptr inbounds nuw i8, ptr %41, i64 8
  store ptr null, ptr %i.un, align 8, !tbaa !752
  store ptr %.fca.0.extract577, ptr %42, align 8, !tbaa !456
  %.sroa.5585.0..sroa_idx586 = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i32 %.fca.1.extract578, ptr %.sroa.5585.0..sroa_idx586, align 8, !tbaa !458
  %i.uo = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTES4_NS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.ug, i32 noundef 1983, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %41, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %36, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %42) #32 ; 2 uses
  %i.up = load ptr, ptr %i.tw, align 8, !tbaa !431
  store ptr %i.uo, ptr %43, align 8, !tbaa !462
  %i.uq = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i32 0, ptr %i.uq, align 8, !tbaa !476
  store ptr %i.uo, ptr %44, align 8, !tbaa !462
  %i.ur = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i32 1, ptr %i.ur, align 8, !tbaa !476
  %i.us = call noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_3EVTENS_7SDValueES4_(ptr noundef nonnull align 8 dereferenceable(920) %i.up, ptr noundef nonnull %1, i32 noundef 490, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %43, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %44) #32 ; 0 uses
  br label %.critedge1045

bb.dx:                                            ; preds = %_ZN12_GLOBAL__N_115PPCDAGToDAGISel18tryIntCompareInGPREPN4llvm6SDNodeE.exit.thread
  %i.ut = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL12EnableTLSOpt, i64 120), align 8, !tbaa !753, !range !18, !noundef !19
  %i.uu = trunc nuw i8 %i.ut to i1
  br i1 %i.uu, label %bb.dy, label %.critedge1047

bb.dy:                                            ; preds = %bb.dx
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !267
  %i.ux = call noundef zeroext i1 @_ZNK4llvm12PPCSubtarget10isELFv2ABIEv(ptr noundef nonnull align 8 dereferenceable(520296) %i.uw) #32
  br i1 %i.ux, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.uy = load ptr, ptr %i.uv, align 8, !tbaa !267
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 52
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !600
  %i.vb = icmp eq i32 %i.va, 19
  br i1 %i.vb, label %bb.ea, label %.critedge1047

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.vc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.vd = load i16, ptr %i.vc, align 8
  %i.ve = and i16 %i.vd, 896
  %.not1035 = icmp eq i16 %i.ve, 128
  br i1 %.not1035, label %.critedge1047, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.vf = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115PPCDAGToDAGISel16tryTLSXFormStoreEPN4llvm11StoreSDNodeE(ptr noundef nonnull align 8 dereferenceable(980) %0, ptr noundef nonnull %1)
  br i1 %i.vf, label %.critedge1045, label %.critedge1047

bb.ec:                                            ; preds = %_ZN12_GLOBAL__N_115PPCDAGToDAGISel18tryIntCompareInGPREPN4llvm6SDNodeE.exit.thread
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.0.0.copyload.i1175 = load i16, ptr %i.vg, align 8, !tbaa !452 ; 4 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.vi = load i16, ptr %i.vh, align 8            ; 2 uses
  %i.vj = and i16 %i.vi, 896
  %.not1034 = icmp eq i16 %i.vj, 128
  br i1 %.not1034, label %bb.eh, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.vk = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL12EnableTLSOpt, i64 120), align 8, !tbaa !753, !range !18, !noundef !19
  %i.vl = trunc nuw i8 %i.vk to i1
  br i1 %i.vl, label %bb.ee, label %.critedge1047

bb.ee:                                            ; preds = %bb.ed
  %i.vm = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !267
  %i.vo = call noundef zeroext i1 @_ZNK4llvm12PPCSubtarget10isELFv2ABIEv(ptr noundef nonnull align 8 dereferenceable(520296) %i.vn) #32
  br i1 %i.vo, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.vp = load ptr, ptr %i.vm, align 8, !tbaa !267
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 52
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !600
  %i.vs = icmp eq i32 %i.vr, 19
  br i1 %i.vs, label %bb.eg, label %.critedge1047

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %i.vt = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115PPCDAGToDAGISel15tryTLSXFormLoadEPN4llvm10LoadSDNodeE(ptr noundef nonnull align 8 dereferenceable(980) %0, ptr noundef nonnull %1)
  br i1 %i.vt, label %.critedge1045, label %.critedge1047

bb.eh:                                            ; preds = %bb.ec
  %i.vu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !460 ; 6 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 80
  %.sroa.01800.0.copyload = load ptr, ptr %i.vw, align 8, !tbaa !456 ; 3 uses
  %.sroa.71804.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vv, i64 88
  %i.vx = load i64, ptr %.sroa.71804.0..sroa_idx, align 8
  %.sroa.71804.sroa.0.0.extract.trunc = trunc i64 %i.vx to i32 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.sroa.01800.0.copyload, i64 24
  %i.vz = load i32, ptr %i.vy, align 8, !tbaa !445
  %i.wa = and i16 %i.vi, 3072
  %i.wb = icmp eq i16 %i.wa, 2048                 ; 5 uses
  %i.wc = load ptr, ptr %i.ai, align 8, !tbaa !451 ; 2 uses
  %.sroa.0.0.copyload.i1193 = load i16, ptr %i.wc, align 8, !tbaa !452 ; 3 uses
  %.sroa.21.0..sroa_idx.i1194 = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  %.sroa.21.0.copyload.i1195 = load ptr, ptr %.sroa.21.0..sroa_idx.i1194, align 8, !tbaa !454 ; 3 uses
  %.not.i1198 = icmp ne i16 %.sroa.0.0.copyload.i1193, 8
  %i.wd = icmp ne ptr %.sroa.21.0.copyload.i1195, null
  %i.we = select i1 %.not.i1198, i1 true, i1 %i.wd ; 2 uses
  switch i32 %i.vz, label %bb.ev [
    i32 37, label %bb.ei
    i32 39, label %bb.ei
  ]

bb.ei:                                            ; preds = %bb.eh, %bb.eh
  br i1 %i.we, label %bb.ej, label %bb.ep

bb.ej:                                            ; preds = %bb.ei
  switch i16 %.sroa.0.0.copyload.i1175, label %bb.ek [
    i16 15, label %bb.eu
    i16 14, label %bb.el
    i16 7, label %bb.em
    i16 6, label %bb.en
    i16 2, label %bb.eo
    i16 5, label %bb.eo
  ]

bb.ek:                                            ; preds = %bb.ej
  unreachable

bb.el:                                            ; preds = %bb.ej
  br label %bb.eu

bb.em:                                            ; preds = %bb.ej
  br label %bb.eu

bb.en:                                            ; preds = %bb.ej
  %i.wf = select i1 %i.wb, i32 1394, i32 1409
  br label %bb.eu

bb.eo:                                            ; preds = %bb.ej, %bb.ej
  br label %bb.eu

bb.ep:                                            ; preds = %bb.ei
  switch i16 %.sroa.0.0.copyload.i1175, label %bb.eq [
    i16 8, label %bb.eu
    i16 7, label %bb.er
    i16 6, label %bb.es
    i16 2, label %bb.et
    i16 5, label %bb.et
  ]

bb.eq:                                            ; preds = %bb.ep
  unreachable

bb.er:                                            ; preds = %bb.ep
  br label %bb.eu

bb.es:                                            ; preds = %bb.ep
  %i.wg = select i1 %i.wb, i32 1395, i32 1410
  br label %bb.eu

bb.et:                                            ; preds = %bb.ep, %bb.ep
  br label %bb.eu

bb.eu:                                            ; preds = %bb.ep, %bb.ej, %bb.er, %bb.es, %bb.et, %bb.el, %bb.em, %bb.en, %bb.eo
  %.01002 = phi i32 [ 1348, %bb.et ], [ 1385, %bb.el ], [ 1453, %bb.em ], [ %i.wf, %bb.en ], [ 1347, %bb.eo ], [ 1377, %bb.ej ], [ 1454, %bb.er ], [ %i.wg, %bb.es ], [ 1363, %bb.ep ]
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vv, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #32
  store ptr %.sroa.01800.0.copyload, ptr %45, align 16, !tbaa !456
  %.sroa.71804.0..sroa_idx1805 = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i32 %.sroa.71804.sroa.0.0.extract.trunc, ptr %.sroa.71804.0..sroa_idx1805, align 8, !tbaa !458
  %i.wi = getelementptr inbounds nuw i8, ptr %45, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.wi, ptr noundef nonnull align 8 dereferenceable(12) %i.wh, i64 12, i1 false)
  %i.wj = getelementptr inbounds nuw i8, ptr %45, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.wj, ptr noundef nonnull align 8 dereferenceable(12) %i.vv, i64 12, i1 false)
  %i.wk = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !431 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !268 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wl, i64 56
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !601
  %i.wq = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.wp) #32
  %i.wr = load ptr, ptr %i.wn, align 8, !tbaa !8
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 24
  %i.wt = load ptr, ptr %i.ws, align 8
  %i.wu = call i16 %i.wt(ptr noundef nonnull align 8 dereferenceable(518435) %i.wn, ptr noundef nonnull align 8 dereferenceable(912) %i.wq, i32 noundef 0) #32
  store i16 %i.wu, ptr %46, align 8, !tbaa !452
  %i.wv = getelementptr inbounds nuw i8, ptr %46, i64 8
  store ptr null, ptr %i.wv, align 8, !tbaa !752
  store i16 1, ptr %47, align 8, !tbaa !751
  %i.ww = getelementptr inbounds nuw i8, ptr %47, i64 8
  store ptr null, ptr %i.ww, align 8, !tbaa !752
  store ptr %45, ptr %48, align 8, !tbaa !488
  %i.wx = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i64 3, ptr %i.wx, align 8, !tbaa !491
  %i.wy = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTES4_S4_NS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.wl, i32 noundef %.01002, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.0.0.copyload.i1193, ptr %.sroa.21.0.copyload.i1195, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %46, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %47, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %48) #32 ; 2 uses
  %.val1126 = load ptr, ptr %i.wk, align 8, !tbaa !431
  %i.wz = getelementptr i8, ptr %1, i64 104
  %.val1127 = load i64, ptr %i.wz, align 8
  %i.xa = and i64 %.val1127, -5
  %i.xb = inttoptr i64 %i.xa to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  store ptr %i.xb, ptr %i.d, align 8, !tbaa !758
  call void @_ZN4llvm12SelectionDAG14setNodeMemRefsEPNS_13MachineSDNodeENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(920) %.val1126, ptr noundef %i.wy, ptr nonnull %i.d, i64 1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr noundef %i.wy)
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #32
  br label %.critedge1045

bb.ev:                                            ; preds = %bb.eh
  br i1 %i.we, label %bb.ew, label %bb.fc

bb.ew:                                            ; preds = %bb.ev
  switch i16 %.sroa.0.0.copyload.i1175, label %bb.ex [
    i16 15, label %bb.fh
    i16 14, label %bb.ey
    i16 7, label %bb.ez
    i16 6, label %bb.fa
    i16 2, label %bb.fb
    i16 5, label %bb.fb
  ]

bb.ex:                                            ; preds = %bb.ew
  unreachable

bb.ey:                                            ; preds = %bb.ew
  br label %bb.fh

bb.ez:                                            ; preds = %bb.ew
  br label %bb.fh

bb.fa:                                            ; preds = %bb.ew
  %i.xc = select i1 %i.wb, i32 1396, i32 1411
  br label %bb.fh

bb.fb:                                            ; preds = %bb.ew, %bb.ew
  br label %bb.fh

bb.fc:                                            ; preds = %bb.ev
  switch i16 %.sroa.0.0.copyload.i1175, label %bb.fd [
    i16 8, label %bb.fh
    i16 7, label %bb.fe
    i16 6, label %bb.ff
    i16 2, label %bb.fg
    i16 5, label %bb.fg
  ]

bb.fd:                                            ; preds = %bb.fc
  unreachable

bb.fe:                                            ; preds = %bb.fc
  %i.xd = select i1 %i.wb, i32 1440, i32 1456
  br label %bb.fh

bb.ff:                                            ; preds = %bb.fc
  %i.xe = select i1 %i.wb, i32 1397, i32 1412
  br label %bb.fh

bb.fg:                                            ; preds = %bb.fc, %bb.fc
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fc, %bb.ew, %bb.fe, %bb.ff, %bb.fg, %bb.ey, %bb.ez, %bb.fa, %bb.fb
  %.01003 = phi i32 [ 1350, %bb.fg ], [ 1386, %bb.ey ], [ 1455, %bb.ez ], [ %i.xc, %bb.fa ], [ 1349, %bb.fb ], [ 1378, %bb.ew ], [ %i.xd, %bb.fe ], [ %i.xe, %bb.ff ], [ 1364, %bb.fc ]
  %i.xf = getelementptr inbounds nuw i8, ptr %i.vv, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %49, ptr noundef nonnull align 8 dereferenceable(12) %i.xf, i64 12, i1 false)
  %i.xg = getelementptr inbounds nuw i8, ptr %49, i64 16
  store ptr %.sroa.01800.0.copyload, ptr %i.xg, align 16, !tbaa !456
  %.sroa.71804.0..sroa_idx1806 = getelementptr inbounds nuw i8, ptr %49, i64 24
  store i32 %.sroa.71804.sroa.0.0.extract.trunc, ptr %.sroa.71804.0..sroa_idx1806, align 8, !tbaa !458
  %i.xh = getelementptr inbounds nuw i8, ptr %49, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.xh, ptr noundef nonnull align 8 dereferenceable(12) %i.vv, i64 12, i1 false)
  %i.xi = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !431 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !268 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xj, i64 56
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !601
  %i.xo = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.xn) #32
  %i.xp = load ptr, ptr %i.xl, align 8, !tbaa !8
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 24
  %i.xr = load ptr, ptr %i.xq, align 8
  %i.xs = call i16 %i.xr(ptr noundef nonnull align 8 dereferenceable(518435) %i.xl, ptr noundef nonnull align 8 dereferenceable(912) %i.xo, i32 noundef 0) #32
  store i16 %i.xs, ptr %50, align 8, !tbaa !452
  %i.xt = getelementptr inbounds nuw i8, ptr %50, i64 8
  store ptr null, ptr %i.xt, align 8, !tbaa !752
  store i16 1, ptr %51, align 8, !tbaa !751
  %i.xu = getelementptr inbounds nuw i8, ptr %51, i64 8
  store ptr null, ptr %i.xu, align 8, !tbaa !752
  store ptr %49, ptr %52, align 8, !tbaa !488
  %i.xv = getelementptr inbounds nuw i8, ptr %52, i64 8
  store i64 3, ptr %i.xv, align 8, !tbaa !491
  %i.xw = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTES4_S4_NS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.xj, i32 noundef %.01003, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.0.0.copyload.i1193, ptr %.sroa.21.0.copyload.i1195, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %50, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %51, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %52) #32 ; 2 uses
  %.val1124 = load ptr, ptr %i.xi, align 8, !tbaa !431
  %i.xx = getelementptr i8, ptr %1, i64 104
  %.val1125 = load i64, ptr %i.xx, align 8
  %i.xy = and i64 %.val1125, -5
  %i.xz = inttoptr i64 %i.xy to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store ptr %i.xz, ptr %i.c, align 8, !tbaa !758
  call void @_ZN4llvm12SelectionDAG14setNodeMemRefsEPNS_13MachineSDNodeENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(920) %.val1124, ptr noundef %i.xw, ptr nonnull %i.c, i64 1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr noundef %i.xw)
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #32
  br label %.critedge1045

bb.fi:                                            ; preds = %_ZN12_GLOBAL__N_115PPCDAGToDAGISel18tryIntCompareInGPREPN4llvm6SDNodeE.exit.thread
  %i.ya = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115PPCDAGToDAGISel17tryAsSingleRLWINMEPN4llvm6SDNodeE(ptr noundef nonnull align 8 dereferenceable(980) %0, ptr noundef nonnull %1)
  br i1 %i.ya, label %.critedge1045, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.yb = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115PPCDAGToDAGISel17tryAsSingleRLWIMIEPN4llvm6SDNodeE(ptr noundef nonnull align 8 dereferenceable(980) %0, ptr noundef nonnull %1)
  br i1 %i.yb, label %.critedge1045, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.yc = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115PPCDAGToDAGISel16tryAsSingleRLDCLEPN4llvm6SDNodeE(ptr noundef nonnull align 8 dereferenceable(980) %0, ptr noundef nonnull %1)
  br i1 %i.yc, label %.critedge1045, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.yd = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115PPCDAGToDAGISel17tryAsSingleRLDICLEPN4llvm6SDNodeE(ptr noundef nonnull align 8 dereferenceable(980) %0, ptr noundef nonnull %1)
  br i1 %i.yd, label %.critedge1045, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.ye = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115PPCDAGToDAGISel17tryAsSingleRLDICREPN4llvm6SDNodeE(ptr noundef nonnull align 8 dereferenceable(980) %0, ptr noundef nonnull %1)
  br i1 %i.ye, label %.critedge1045, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.yf = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115PPCDAGToDAGISel18tryAsSingleRLWINM8EPN4llvm6SDNodeE(ptr noundef nonnull align 8 dereferenceable(980) %0, ptr noundef nonnull %1)
  br i1 %i.yf, label %.critedge1045, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.yg = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115PPCDAGToDAGISel17tryAsPairOfRLDICLEPN4llvm6SDNodeE(ptr noundef nonnull align 8 dereferenceable(980) %0, ptr noundef nonnull %1)
  br i1 %i.yg, label %.critedge1045, label %.critedge1047

bb.fp:                                            ; preds = %_ZN12_GLOBAL__N_115PPCDAGToDAGISel18tryIntCompareInGPREPN4llvm6SDNodeE.exit.thread
  %i.yh = load ptr, ptr %i.ai, align 8, !tbaa !451 ; 2 uses
  %.sroa.0.0.copyload.i1206 = load i16, ptr %i.yh, align 8, !tbaa !452
  %.sroa.21.0..sroa_idx.i1207 = getelementptr inbounds nuw i8, ptr %i.yh, i64 8
  %.sroa.21.0.copyload.i1208 = load ptr, ptr %.sroa.21.0..sroa_idx.i1207, align 8, !tbaa !454
  %.not.i.i1211 = icmp eq i16 %.sroa.0.0.copyload.i1206, 7
  %i.yi = icmp eq ptr %.sroa.21.0.copyload.i1208, null
  %.not4.i1212 = select i1 %.not.i.i1211, i1 %i.yi, i1 false
  br i1 %.not4.i1212, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.yj = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115PPCDAGToDAGISel17tryBitfieldInsertEPN4llvm6SDNodeE(ptr noundef nonnull align 8 dereferenceable(980) %0, ptr noundef nonnull %1)
  br i1 %i.yj, label %.critedge1045, label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #32
  %i.yk = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !460 ; 3 uses
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !462
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 24
  %i.yo = load i32, ptr %i.yn, align 8, !tbaa !445
  %i.yp = icmp eq i32 %i.yo, 16
  br i1 %i.yp, label %bb.fs, label %bb.fv

bb.fs:                                            ; preds = %bb.fr
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yl, i64 40
  %.sroa.0533.0.copyload = load ptr, ptr %i.yq, align 8, !tbaa !456
  %.sroa.2534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yl, i64 48
  %.sroa.2534.0.copyload = load i32, ptr %.sroa.2534.0..sroa_idx, align 8, !tbaa !458
  %i.yr = call noundef zeroext i1 @_ZN4llvm17isIntS16ImmediateENS_7SDValueERs(ptr %.sroa.0533.0.copyload, i32 %.sroa.2534.0.copyload, ptr noundef nonnull align 2 dereferenceable(2) %i.l) #32
  br i1 %i.yr, label %bb.ft, label %bb.fv

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #32
  %i.ys = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !431
  %i.yu = load ptr, ptr %i.yk, align 8, !tbaa !460 ; 2 uses
  %.sroa.0530.0.copyload = load ptr, ptr %i.yu, align 8, !tbaa !456
  %.sroa.2531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yu, i64 8
  %.sroa.2531.0.copyload = load i32, ptr %.sroa.2531.0..sroa_idx, align 8, !tbaa !458
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %53, ptr noundef nonnull align 8 dereferenceable(920) %i.yt, ptr %.sroa.0530.0.copyload, i32 %.sroa.2531.0.copyload, i32 noundef 0) #32
  %i.yv = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.yw = load i32, ptr %i.yv, align 8, !tbaa !470
  %i.yx = icmp ult i32 %i.yw, 65
  %i.yy = load ptr, ptr %53, align 8
  %spec.select.i = select i1 %i.yx, ptr %53, ptr %i.yy
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !64
  %i.yz = load i16, ptr %i.l, align 2, !tbaa !722 ; 2 uses
  %i.za = xor i16 %i.yz, -1
  %i.zb = sext i16 %i.za to i64
  %i.zc = or i64 %.0.i, %i.zb
  %.not = icmp eq i64 %i.zc, -1
  br i1 %.not, label %bb.fu, label %.critedge1055

bb.fu:                                            ; preds = %bb.ft
  %i.zd = load ptr, ptr %i.yk, align 8, !tbaa !460
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !462
  %i.zf = sext i16 %i.yz to i64
  call fastcc void @_ZN12_GLOBAL__N_115PPCDAGToDAGISel16selectFrameIndexEPN4llvm6SDNodeES3_l(ptr noundef nonnull align 8 dereferenceable(980) %0, ptr noundef nonnull %1, ptr noundef %i.ze, i64 noundef %i.zf)
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %53) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #32
  br label %.critedge1059

.critedge1055:                                    ; preds = %bb.ft
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %53) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #32
  br label %bb.fv

bb.fv:                                            ; preds = %.critedge1055, %bb.fs, %bb.fr
  %i.zg = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115PPCDAGToDAGISel17tryAsSingleRLDIMIEPN4llvm6SDNodeE(ptr noundef nonnull align 8 dereferenceable(980) %0, ptr noundef nonnull %1)
  br i1 %i.zg, label %.critedge1059, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.zh = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !267
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 538
  %i.zk = load i8, ptr %i.zj, align 2, !tbaa !660, !range !18, !noundef !19
  %i.zl = trunc nuw i8 %i.zk to i1
  br i1 %i.zl, label %bb.fx, label %.critedge1057

bb.fx:                                            ; preds = %bb.fw
  %i.zm = load ptr, ptr %i.yk, align 8, !tbaa !460 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 40
  %.sroa.0526.0.copyload = load ptr, ptr %i.zn, align 8, !tbaa !456 ; 3 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %.sroa.0526.0.copyload, i64 24
  %i.zp = load i32, ptr %i.zo, align 8, !tbaa !445
  %i.zq = icmp eq i32 %i.zp, 12
  br i1 %i.zq, label %bb.fy, label %.critedge1057

bb.fy:                                            ; preds = %bb.fx
  %i.zr = getelementptr inbounds nuw i8, ptr %.sroa.0526.0.copyload, i64 48
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !451 ; 2 uses
  %.sroa.0.0.copyload.i.i.i1214 = load i16, ptr %i.zs, align 8, !tbaa !452
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.zs, i64 8
  %.sroa.21.0.copyload.i.i.i1215 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !454
  %.not.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i1214, 8
  %i.zt = icmp eq ptr %.sroa.21.0.copyload.i.i.i1215, null
  %.not4.i.i.i = select i1 %.not.i.i.i.i, i1 %i.zt, i1 false
  br i1 %.not4.i.i.i, label %bb.fz, label %.critedge1057

bb.fz:                                            ; preds = %bb.fy
  %i.zu = getelementptr inbounds nuw i8, ptr %.sroa.0526.0.copyload, i64 88
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !467 ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 24 ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zv, i64 32
  %i.zy = load i32, ptr %i.zx, align 8, !tbaa !470
  %i.zz = icmp ult i32 %i.zy, 65
  %i.aaa = load ptr, ptr %i.zw, align 8
  %spec.select.i.i.i.i.i.i = select i1 %i.zz, ptr %i.zw, ptr %i.aaa
  %.0.i.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i.i, align 8, !tbaa !64 ; 3 uses
  %i.aab = icmp ult i64 %.0.i.i.i.i.i.i, 4294967296
  br i1 %i.aab, label %bb.ga, label %.critedge1057

bb.ga:                                            ; preds = %bb.fz
  %i.aac = lshr i64 %.0.i.i.i.i.i.i, 16           ; 2 uses
  %i.aad = and i64 %.0.i.i.i.i.i.i, 65535         ; 2 uses
  %i.aae = icmp eq i64 %i.aac, 0
  %i.aaf = icmp eq i64 %i.aad, 0
  %or.cond28.not = or i1 %i.aae, %i.aaf
  br i1 %or.cond28.not, label %.critedge1057, label %.critedge1045.critedge

.critedge1045.critedge:                           ; preds = %bb.ga
  %i.aag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !431 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %54, ptr noundef nonnull align 8 dereferenceable(16) %i.zm, i64 16, i1 false), !tbaa.struct !487
  %i.aai = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.aah, i64 noundef %i.aad, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 6, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #32 ; 2 uses
  %.fca.0.extract517 = extractvalue { ptr, i32 } %i.aai, 0
  %.fca.1.extract518 = extractvalue { ptr, i32 } %i.aai, 1
  store ptr %.fca.0.extract517, ptr %55, align 8
  %.sroa.2520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %55, i64 8
  store i32 %.fca.1.extract518, ptr %.sroa.2520.0..sroa_idx, align 8
  %i.aaj = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.aah, i32 noundef 1640, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %54, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %55) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #32
  store ptr %i.aaj, ptr %56, align 16, !tbaa !462
  %i.aak = getelementptr inbounds nuw i8, ptr %56, i64 8
  store i32 0, ptr %i.aak, align 8, !tbaa !476
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_115PPCDAGToDAGISel6SelectEPN4llvm6SDNodeE:bb.a
  %i.ayw = getelementptr inbounds nuw i8, ptr %127, i64 8
  store i32 0, ptr %i.ayw, align 8, !tbaa !476
  %i.ayx = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.ayu, i32 noundef %.01012, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.01483.0, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %126, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %127) #32
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr noundef %i.ayx)
  br label %.critedge1045

bb.kf:                                            ; preds = %bb.kd
  %i.ayy = add i64 %.0.i.i.i.i1412, 16
  %i.ayz = and i64 %i.ayy, 4294967295
  %i.aza = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val1091, i64 noundef %i.ayz, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #32 ; 2 uses
  %.fca.0.extract122 = extractvalue { ptr, i32 } %i.aza, 0
  %.fca.1.extract123 = extractvalue { ptr, i32 } %i.aza, 1
  %i.azb = load ptr, ptr %i.ayd, align 8, !tbaa !431
  store ptr %.fca.0.extract122, ptr %128, align 8, !tbaa !456
  %.sroa.6128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %128, i64 8
  store i32 %.fca.1.extract123, ptr %.sroa.6128.0..sroa_idx, align 8, !tbaa !458
  %i.azc = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.azb, i32 noundef %.01014, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.01483.0, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %128) #32
  %.val = load ptr, ptr %i.ayd, align 8, !tbaa !431
  %i.azd = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val, i64 noundef 4294967280, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #32 ; 2 uses
  %.fca.0.extract112 = extractvalue { ptr, i32 } %i.azd, 0
  %.fca.1.extract113 = extractvalue { ptr, i32 } %i.azd, 1
  %i.aze = load ptr, ptr %i.ayd, align 8, !tbaa !431
  store ptr %.fca.0.extract112, ptr %129, align 8, !tbaa !456
  %.sroa.6128.0..sroa_idx129 = getelementptr inbounds nuw i8, ptr %129, i64 8
  store i32 %.fca.1.extract113, ptr %.sroa.6128.0..sroa_idx129, align 8, !tbaa !458
  %i.azf = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.aze, i32 noundef %.01014, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.01483.0, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %129) #32
  %i.azg = load ptr, ptr %i.ayd, align 8, !tbaa !431
  store ptr %i.azc, ptr %130, align 8, !tbaa !462
  %i.azh = getelementptr inbounds nuw i8, ptr %130, i64 8
  store i32 0, ptr %i.azh, align 8, !tbaa !476
  store ptr %i.azf, ptr %131, align 8, !tbaa !462
  %i.azi = getelementptr inbounds nuw i8, ptr %131, i64 8
  store i32 0, ptr %i.azi, align 8, !tbaa !476
  %i.azj = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.azg, i32 noundef %.01013, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.01483.0, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %130, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %131) #32
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr noundef %i.azj)
  br label %.critedge1045

bb.kg:                                            ; preds = %_ZN12_GLOBAL__N_115PPCDAGToDAGISel18tryIntCompareInGPREPN4llvm6SDNodeE.exit.thread
  %i.azk = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 3 uses
  %i.azl = load ptr, ptr %i.azk, align 8, !tbaa !267 ; 2 uses
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azl, i64 472
  %i.azn = load i8, ptr %i.azm, align 8, !tbaa !770, !range !18, !noundef !19
  %i.azo = trunc nuw i8 %i.azn to i1
  br i1 %i.azo, label %bb.kh, label %.critedge1047

bb.kh:                                            ; preds = %bb.kg
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azl, i64 478
  %i.azq = load i8, ptr %i.azp, align 2, !tbaa !771, !range !18, !noundef !19
  %i.azr = trunc nuw i8 %i.azq to i1
  br i1 %i.azr, label %.critedge1047, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.azs = load ptr, ptr %i.ai, align 8, !tbaa !451 ; 2 uses
  %.sroa.0.0.copyload.i1415 = load i16, ptr %i.azs, align 8, !tbaa !452 ; 7 uses
  %.sroa.21.0..sroa_idx.i1416 = getelementptr inbounds nuw i8, ptr %i.azs, i64 8
  %.sroa.21.0.copyload.i1417 = load ptr, ptr %.sroa.21.0..sroa_idx.i1416, align 8, !tbaa !454
  %.not.i1420 = icmp ne i16 %.sroa.0.0.copyload.i1415, 48
  %i.azt = icmp ne ptr %.sroa.21.0.copyload.i1417, null
  %.not.i1421 = icmp ne i16 %.sroa.0.0.copyload.i1415, 62
  %i.azu = and i1 %.not.i1420, %.not.i1421
  %or.cond1926 = select i1 %i.azu, i1 true, i1 %i.azt
  br i1 %or.cond1926, label %.critedge1047, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.azv = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.azv, align 8
  %i.azw = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.azx = inttoptr i64 %i.azw to ptr
  %i.azy = call i8 @_ZNK4llvm17MachineMemOperand8getAlignEv(ptr noundef nonnull align 8 dereferenceable(88) %i.azx) #32
  %i.azz = icmp ugt i8 %i.azy, 3
  br i1 %i.azz, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.baa = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val1119 = load ptr, ptr %i.baa, align 8
  %i.bab = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_115PPCDAGToDAGISel18isOffsetMultipleOfEPN4llvm6SDNodeEj(ptr %.val1119, ptr noundef nonnull %1, i32 noundef 16)
  br i1 %i.bab, label %.critedge1047, label %bb.kl

bb.kl:                                            ; preds = %bb.kk, %bb.kj
  %i.bac = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %i.bad = load ptr, ptr %i.bac, align 8, !tbaa !431
  %i.bae = load ptr, ptr %i.azk, align 8, !tbaa !267
  %i.baf = getelementptr inbounds nuw i8, ptr %i.bae, i64 538
  %i.bag = load i8, ptr %i.baf, align 2, !tbaa !660, !range !18, !noundef !19
  %i.bah = trunc nuw i8 %i.bag to i1              ; 2 uses
  %i.bai = select i1 %i.bah, i32 563, i32 10
  %i.baj = select i1 %i.bah, i16 8, i16 7
  %i.bak = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.bad, i32 %i.bai, i16 %i.baj, ptr null) #32 ; 2 uses
  %.fca.0.extract95 = extractvalue { ptr, i32 } %i.bak, 0 ; 2 uses
  %.fca.1.extract96 = extractvalue { ptr, i32 } %i.bak, 1 ; 2 uses
  %i.bal = load ptr, ptr %i.azk, align 8, !tbaa !267 ; 2 uses
  %i.bam = getelementptr inbounds nuw i8, ptr %i.bal, i64 538
  %i.ban = load i8, ptr %i.bam, align 2, !tbaa !660, !range !18, !noundef !19
  %.not.i.i1422 = icmp eq i16 %.sroa.0.0.copyload.i1415, 48 ; 2 uses
  %i.bao = select i1 %.not.i.i1422, i32 2530, i32 2532
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bal, i64 556
  %i.baq = load i8, ptr %i.bap, align 4, !tbaa !767, !range !18, !noundef !19
  %i.bar = trunc nuw i8 %i.baq to i1              ; 2 uses
  %i.bas = select i1 %.not.i.i1422, i64 15, i64 7
  %spec.select1927 = select i1 %i.bar, i64 %i.bas, i64 0
  %i.bat = load ptr, ptr %i.bac, align 8, !tbaa !431
  %i.bau = select i1 %i.bar, i32 1432, i32 1431
  store ptr %.fca.0.extract95, ptr %132, align 8, !tbaa !456
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %132, i64 8
  store i32 %.fca.1.extract96, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !458
  %i.bav = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.baw = load ptr, ptr %i.bav, align 8, !tbaa !460
  %i.bax = getelementptr inbounds nuw i8, ptr %i.baw, i64 40
  %i.bay = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.bat, i32 noundef %i.bau, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.0.0.copyload.i1415, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %132, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.bax) #32
  %i.baz = load ptr, ptr %i.bac, align 8, !tbaa !431
  store i16 1, ptr %133, align 8, !tbaa !751
  %i.bba = getelementptr inbounds nuw i8, ptr %133, i64 8
  store ptr null, ptr %i.bba, align 8, !tbaa !752
  call void @llvm.lifetime.start.p0(ptr nonnull %135) #32
  store ptr %.fca.0.extract95, ptr %135, align 8, !tbaa !456
  %.sroa.5.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %135, i64 8
  store i32 %.fca.1.extract96, ptr %.sroa.5.0..sroa_idx102, align 8, !tbaa !458
  %i.bbb = getelementptr inbounds nuw i8, ptr %135, i64 16
  %i.bbc = load ptr, ptr %i.bav, align 8, !tbaa !460 ; 2 uses
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bbc, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bbb, ptr noundef nonnull align 8 dereferenceable(12) %i.bbd, i64 12, i1 false), !tbaa.struct !487
  %i.bbe = getelementptr inbounds nuw i8, ptr %135, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bbe, ptr noundef nonnull align 8 dereferenceable(12) %i.bbc, i64 12, i1 false), !tbaa.struct !487
  store ptr %135, ptr %134, align 8, !tbaa !488
  %i.bbf = getelementptr inbounds nuw i8, ptr %134, i64 8
  store i64 3, ptr %i.bbf, align 8, !tbaa !491
  %i.bbg = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTES4_NS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.baz, i32 noundef 1433, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 48, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %133, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %134) #32 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #32
  %.not.i.i1427 = icmp eq i16 %.sroa.0.0.copyload.i1415, 62
  br i1 %.not.i.i1427, label %bb.km, label %.critedge1083

bb.km:                                            ; preds = %bb.kl
  %i.bbh = trunc nuw i8 %i.ban to i1
  %i.bbi = select i1 %i.bbh, i32 1419, i32 1418
  %i.bbj = load ptr, ptr %i.bac, align 8, !tbaa !431 ; 3 uses
  store i16 1, ptr %136, align 8, !tbaa !751
  %i.bbk = getelementptr inbounds nuw i8, ptr %136, i64 8
  store ptr null, ptr %i.bbk, align 8, !tbaa !752
  call void @llvm.lifetime.start.p0(ptr nonnull %138) #32
  %i.bbl = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bbj, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 5, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #32 ; 2 uses
  %.fca.0.extract75 = extractvalue { ptr, i32 } %i.bbl, 0
  %.fca.1.extract76 = extractvalue { ptr, i32 } %i.bbl, 1
  store ptr %.fca.0.extract75, ptr %139, align 8
  %.sroa.278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %139, i64 8
  store i32 %.fca.1.extract76, ptr %.sroa.278.0..sroa_idx, align 8
  %i.bbm = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.bbj, i32 noundef %i.bbi, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %139) #32
  store ptr %i.bbm, ptr %138, align 8, !tbaa !462
  %i.bbn = getelementptr inbounds nuw i8, ptr %138, i64 8
  store i32 0, ptr %i.bbn, align 8, !tbaa !476
  %i.bbo = getelementptr inbounds nuw i8, ptr %138, i64 16
  %i.bbp = load ptr, ptr %i.bav, align 8, !tbaa !460
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbp, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bbo, ptr noundef nonnull align 8 dereferenceable(12) %i.bbq, i64 12, i1 false), !tbaa.struct !487
  %i.bbr = getelementptr inbounds nuw i8, ptr %138, i64 32
  store ptr %i.bbg, ptr %i.bbr, align 8, !tbaa !462
  %i.bbs = getelementptr inbounds nuw i8, ptr %138, i64 40
  store i32 1, ptr %i.bbs, align 8, !tbaa !476
  store ptr %138, ptr %137, align 8, !tbaa !488
  %i.bbt = getelementptr inbounds nuw i8, ptr %137, i64 8
  store i64 3, ptr %i.bbt, align 8, !tbaa !491
  %i.bbu = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTES4_NS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.bbj, i32 noundef 1433, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 48, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %136, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %137) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #32
  br label %.critedge1083

.critedge1083:                                    ; preds = %bb.km, %bb.kl
  %.0994 = phi ptr [ %i.bbu, %bb.km ], [ %i.bbg, %bb.kl ] ; 3 uses
  %i.bbv = load ptr, ptr %i.bac, align 8, !tbaa !431
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.bbv, ptr nonnull %1, i32 1, ptr %.0994, i32 1) #32
  %.val1120 = load ptr, ptr %i.bac, align 8, !tbaa !431
  %.val1121 = load i64, ptr %i.azv, align 8
  %i.bbw = and i64 %.val1121, -5
  %i.bbx = inttoptr i64 %i.bbw to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store ptr %i.bbx, ptr %i.a, align 8, !tbaa !758
  call void @_ZN4llvm12SelectionDAG14setNodeMemRefsEPNS_13MachineSDNodeENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(920) %.val1120, ptr noundef %.0994, ptr nonnull %i.a, i64 1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.bby = load ptr, ptr %i.bac, align 8, !tbaa !431
  store ptr %i.bbg, ptr %140, align 8, !tbaa !462
  %i.bbz = getelementptr inbounds nuw i8, ptr %140, i64 8
  store i32 0, ptr %i.bbz, align 8, !tbaa !476
  store ptr %.0994, ptr %141, align 8, !tbaa !462
  %i.bca = getelementptr inbounds nuw i8, ptr %141, i64 8
  store i32 0, ptr %i.bca, align 8, !tbaa !476
  store ptr %i.bay, ptr %142, align 8, !tbaa !462
  %i.bcb = getelementptr inbounds nuw i8, ptr %142, i64 8
  store i32 0, ptr %i.bcb, align 8, !tbaa !476
  %i.bcc = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.bby, i32 noundef 2471, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.0.0.copyload.i1415, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %140, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %141, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %142) #32
  %i.bcd = load ptr, ptr %i.bac, align 8, !tbaa !431 ; 2 uses
  %i.bce = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bcd, i64 noundef %spec.select1927, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 5, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #32 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.bce, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.bce, 1
  store ptr %.fca.0.extract, ptr %143, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %143, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %i.bcc, ptr %144, align 8, !tbaa !462
  %i.bcf = getelementptr inbounds nuw i8, ptr %144, i64 8
  store i32 0, ptr %i.bcf, align 8, !tbaa !476
  %i.bcg = call noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_3EVTENS_7SDValueES4_(ptr noundef nonnull align 8 dereferenceable(920) %i.bcd, ptr noundef nonnull %1, i32 noundef %i.bao, i16 %.sroa.0.0.copyload.i1415, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %143, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %144) #32 ; 0 uses
  br label %.critedge1045

.critedge1047:                                    ; preds = %bb.dc, %bb.do, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit, %_ZN4llvm8dyn_castINS_20ExternalSymbolSDNodeENS_7SDValueEEEDcRT0_.exit, %bb.dp, %bb.dn, %bb.ki, %bb.hy, %bb.gr, %bb.gc, %bb.gd, %.critedge34, %bb.gq, %bb.kk, %bb.jo, %bb.hx, %bb.gz, %bb.gs, %bb.gb, %bb.ge, %bb.gf, %bb.ed, %bb.ef, %bb.eg, %bb.dg, %bb.df, %bb.de, %.critedge1057, %bb.dx, %bb.dz, %bb.ea, %bb.eb, %bb.bg, %bb.jg, %bb.db, %bb.gp, %bb.gm, %bb.gj, %bb.di, %bb.dh, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit, %bb.kg, %bb.kh, %bb.gw, %bb.fo, %bb.dj, %bb.dk, %bb.dl, %bb.dm, %bb.dd, %bb.be, %_ZN12_GLOBAL__N_115PPCDAGToDAGISel18tryIntCompareInGPREPN4llvm6SDNodeE.exit.thread
  call void @_ZN4llvm16SelectionDAGISel16SelectCodeCommonEPNS_6SDNodeEPKhjS4_(ptr noundef nonnull align 8 dereferenceable(980) %0, ptr noundef nonnull %1, ptr noundef nonnull @_ZZN12_GLOBAL__N_115PPCDAGToDAGISel10SelectCodeEPN4llvm6SDNodeEE12MatcherTable, i32 noundef 274487, ptr noundef nonnull @_ZZN12_GLOBAL__N_115PPCDAGToDAGISel10SelectCodeEPN4llvm6SDNodeEE12OperandLists) #32
  br label %.critedge1045

.critedge1059:                                    ; preds = %bb.fu, %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #32
  br label %.critedge1045

.critedge1045:                                    ; preds = %bb.dv, %bb.dw, %bb.ij, %.critedge1079, %bb.eu, %bb.fh, %bb.kc, %bb.ke, %bb.kf, %bb.gv, %bb.gu, %bb.jj, %bb.jl, %bb.jm, %bb.jp, %bb.jw, %bb.hk, %.critedge44, %switch.lookup1997, %bb.he, %bb.eg, %_ZN12_GLOBAL__N_115PPCDAGToDAGISel18tryIntCompareInGPREPN4llvm6SDNodeE.exit, %.critedge1045.critedge, %switch.lookup, %bb.ck, %bb.da, %.critedge1083, %bb.iy, %bb.jb, %bb.ip, %bb.io, %.critedge1069, %.critedge1067, %.critedge1065, %bb.gg, %.critedge1059, %bb.fq, %bb.fi, %bb.fj, %bb.fk, %bb.fl, %bb.fm, %bb.fn, %bb.fo, %bb.eb, %bb.dd, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit, %_ZN12_GLOBAL__N_115PPCDAGToDAGISel17tryBitPermutationEPN4llvm6SDNodeE.exit, %.critedge1047, %bb.jx, %bb.jc, %bb.in, %bb.ik, %bb.gx, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.bf, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_115PPCDAGToDAGISel28SelectInlineAsmMemoryOperandERKN4llvm7SDValueENS1_9InlineAsm14ConstraintCodeERSt6vectorIS2_SaIS2_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(980) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  switch i32 %2, label %bb.b [
    i32 1, label %bb.c
    i32 4, label %bb.c
    i32 5, label %bb.c
    i32 8, label %bb.c
    i32 20, label %bb.c
    i32 23, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #32
  %i.b = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str.53)
  %i.c = tail call { ptr, i64 } @_ZN4llvm9InlineAsm20getMemConstraintNameENS0_14ConstraintCodeE(i32 noundef %2) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  %i.f = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr %i.d, i64 %i.e)
  %i.g = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull @.str.54) ; 0 uses
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !267  ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 200
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(520296) %i.i) #32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 320
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(316) %i.m, i32 noundef 1) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8, !tbaa !456 ; 2 uses
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload, i64 72
  %i.s = load i64, ptr %i.r, align 8, !tbaa !446
  store i64 %i.s, ptr %4, align 8, !tbaa !446
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload, i64 68
  %i.v = load i32, ptr %i.u, align 4, !tbaa !447
  store i32 %i.v, ptr %i.t, align 8, !tbaa !448
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !431
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.z = load i16, ptr %i.y, align 4, !tbaa !772
  %i.aa = zext i16 %i.z to i64
  %i.ab = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.x, i64 noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #32 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ab, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ab, 1
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !431
  %i.ad = load ptr, ptr %1, align 8, !tbaa !462
  %i.ae = load i32, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !476
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !451
  %i.ah = zext i32 %i.ae to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.ai, align 8, !tbaa !452
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !454
  store ptr %.fca.0.extract, ptr %5, align 8, !tbaa !456
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !458
  %i.aj = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.ac, i32 noundef 13, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %1, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5) #32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !774 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !776
  %.not.i = icmp eq ptr %i.al, %i.an
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !456
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !458
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !774
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.ap = load ptr, ptr %3, align 8, !tbaa !777   ; 5 uses
  %i.aq = ptrtoint ptr %i.al to i64
  %i.ar = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.as = sub i64 %i.aq, %i.ar                    ; 3 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775792
  br i1 %i.at, label %bb.f, label %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #33
  unreachable

_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.au = ashr exact i64 %i.as, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = call i64 @llvm.umin.i64(i64 %i.av, i64 576460752303423487)
  %i.ay = select i1 %i.aw, i64 576460752303423487, i64 %i.ax ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ay, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.az = shl nuw nsw i64 %i.ay, 4
  %i.ba = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #34 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.as ; 2 uses
  store ptr %i.aj, ptr %i.bb, align 8, !tbaa !456
  %.sroa.5.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx16, align 8, !tbaa !458
  %.not10.i.i.i.i.i = icmp eq ptr %i.ap, %i.al
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %i.ba, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %i.ap, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !487, !alias.scope !778
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, %i.al
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !782

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ba, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bd, %.lr.ph.i.i.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.bf = load ptr, ptr %i.am, align 8, !tbaa !776
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.bh) #35
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.ba, ptr %3, align 8, !tbaa !777
  store ptr %i.be, ptr %i.ak, align 8, !tbaa !774
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.ay
  store ptr %i.bi, ptr %i.am, align 8, !tbaa !776
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.d, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret i1 false
}

declare noundef zeroext i1 @_ZNK4llvm16SelectionDAGISel18IsProfitableToFoldENS_7SDValueEPNS_6SDNodeES3_(ptr noundef nonnull align 8 dereferenceable(952), ptr, i32, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN4llvm16SelectionDAGISel18getPatternForIndexEj(ptr noundef nonnull align 8 dereferenceable(952) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN4llvm16SelectionDAGISel22getIncludePathForIndexEj(ptr noundef nonnull align 8 dereferenceable(952) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_115PPCDAGToDAGISel21CheckPatternPredicateEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(980) %0, i32 noundef %1) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !267  ; 181 uses
  switch i32 %1, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.m
    i32 8, label %bb.o
    i32 9, label %bb.p
    i32 10, label %bb.t
    i32 11, label %bb.v
    i32 12, label %bb.x
    i32 13, label %bb.y
    i32 14, label %bb.aa
    i32 15, label %bb.ab
    i32 16, label %bb.ae
    i32 17, label %bb.ai
    i32 18, label %bb.al
    i32 19, label %bb.an
    i32 20, label %bb.ap
    i32 21, label %bb.aq
    i32 22, label %bb.ar
    i32 23, label %bb.au
    i32 24, label %bb.aw
    i32 25, label %bb.ax
    i32 26, label %bb.ba
    i32 27, label %bb.be
    i32 28, label %bb.bi
    i32 29, label %bb.bl
end_hunk_2
begin_hunk_3_@_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_:bb.a
  store ptr %1, ptr %i.g, align 1
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %2, ptr %.sroa.32.0..sroa_idx, align 1
  %i.h = load i32, ptr %i.a, align 8, !tbaa !54
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG16getAnyExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr) local_unnamed_addr #7

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8) local_unnamed_addr #7

declare { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920), i64 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i32 %2) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !54
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #32
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !54
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !54
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !54
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm12SelectionDAG17MaskedValueIsZeroENS_7SDValueERKNS_5APIntEj(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef) local_unnamed_addr #12

declare void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12), i64 noundef, i1 noundef zeroext) local_unnamed_addr #7

declare void @_ZN4llvm5APInt15setBitsSlowCaseEjj(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

declare { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920), i64 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #7

declare { ptr, i32 } @_ZN4llvm12SelectionDAG22FoldConstantArithmeticEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::ArrayRef") align 8, i32) local_unnamed_addr #7

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, i32) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #17

declare i8 @_ZNK4llvm5Value19getPointerAlignmentERKNS_10DataLayoutE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(912)) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm7SDValue9hasOneUseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !462
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !476
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.018.022.i = load ptr, ptr %i.d, align 8, !tbaa !595 ; 2 uses
  %.not23.i = icmp eq ptr %.sroa.018.022.i, null
  br i1 %.not23.i, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i, i64 32
  %.sroa.018.0.i = load ptr, ptr %i.e, align 8, !tbaa !595 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.018.0.i, null
  br i1 %.not.i, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.018.025.i = phi ptr [ %.sroa.018.0.i, %bb.b ], [ %.sroa.018.022.i, %bb.a ] ; 2 uses
  %.01224.i = phi i32 [ %.214.i, %bb.b ], [ 1, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !476
  %i.h = icmp ne i32 %i.g, %i.c                   ; 2 uses
  %i.i = icmp ne i32 %.01224.i, 0
  %.214.i = select i1 %i.h, i32 %.01224.i, i32 0  ; 2 uses
  %cond.i = select i1 %i.h, i1 true, i1 %i.i      ; 2 uses
  br i1 %cond.i, label %bb.b, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.loopexit

_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.loopexit: ; preds = %.lr.ph.i, %bb.b
  %i.j = icmp eq i32 %.214.i, 0
  %i.k = select i1 %cond.i, i1 %i.j, i1 false
  br label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit

_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit:        ; preds = %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.loopexit, %bb.a
  %.not.lcssa.i = phi i1 [ false, %bb.a ], [ %i.k, %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.loopexit ]
  ret i1 %.not.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL42isEligibleToFoldADDIForFasterLocalAccessesPN4llvm12SelectionDAGENS_7SDValueE(ptr nofree noundef readonly captures(none) %0, ptr nofree readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !445
  %.not = icmp eq i32 %i.b, -455
  br i1 %.not, label %bb.b, label %_ZL18hasAIXSmallTLSAttrN4llvm7SDValueE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !601
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !159, !nonnull !19, !align !52 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !460
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.023.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !456 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 467
  %i.k = load i8, ptr %i.j, align 1, !tbaa !818, !range !18, !noundef !19
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZL18hasAIXSmallTLSAttrN4llvm7SDValueE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 468
  %i.n = load i8, ptr %i.m, align 4, !tbaa !819, !range !18, !noundef !19
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZL18hasAIXSmallTLSAttrN4llvm7SDValueE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.023.0.copyload, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !445
  switch i32 %i.q, label %_ZL18hasAIXSmallTLSAttrN4llvm7SDValueE.exit.thread [
    i32 14, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit.i
    i32 39, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit.i
    i32 15, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit.i
    i32 40, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit.i
  ]

_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit.i: ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.023.0.copyload, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !599  ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !820
  %.not.i = icmp eq i8 %i.t, 17
  br i1 %.not.i, label %bb.e, label %_ZL18hasAIXSmallTLSAttrN4llvm7SDValueE.exit.thread

bb.e:                                             ; preds = %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.v = tail call noundef zeroext i1 @_ZNK4llvm12AttributeSet12hasAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr nonnull @.str.45, i64 13) #32
  br i1 %i.v, label %_ZL18hasAIXSmallTLSAttrN4llvm7SDValueE.exit, label %_ZL18hasAIXSmallTLSAttrN4llvm7SDValueE.exit.thread

_ZL18hasAIXSmallTLSAttrN4llvm7SDValueE.exit:      ; preds = %bb.e, %bb.c, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.023.0.copyload, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !445
  switch i32 %i.x, label %_ZL18hasAIXSmallTLSAttrN4llvm7SDValueE.exit.thread [
    i32 14, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 39, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 15, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 40, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %_ZL18hasAIXSmallTLSAttrN4llvm7SDValueE.exit, %_ZL18hasAIXSmallTLSAttrN4llvm7SDValueE.exit, %_ZL18hasAIXSmallTLSAttrN4llvm7SDValueE.exit, %_ZL18hasAIXSmallTLSAttrN4llvm7SDValueE.exit
  %i.y = load ptr, ptr %0, align 8, !tbaa !821, !nonnull !19, !align !52
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.023.0.copyload, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !599
  %i.ab = tail call noundef i32 @_ZNK4llvm13TargetMachine11getTLSModelEPKNS_11GlobalValueE(ptr noundef nonnull align 8 dereferenceable(1728) %i.y, ptr noundef %i.aa) #32
  %i.ac = icmp eq i32 %i.ab, 3
  br i1 %i.ac, label %bb.f, label %.critedge20

bb.f:                                             ; preds = %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !460
  %.sroa.022.0.copyload = load ptr, ptr %i.ad, align 8, !tbaa !456 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !445
  %i.ag = icmp ne i32 %i.af, 10
  %.not1834 = icmp eq ptr %.sroa.022.0.copyload, null
  %.not18 = or i1 %.not1834, %i.ag
  br i1 %.not18, label %_ZL18hasAIXSmallTLSAttrN4llvm7SDValueE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload, i64 88
  %.sroa.0.0.copyload.i = load i32, ptr %i.ah, align 8, !tbaa !458
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 538
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !660, !range !18, !noundef !19
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = select i1 %i.ak, i32 544, i32 264
  %.not35 = icmp eq i32 %.sroa.0.0.copyload.i, %i.al
  br i1 %.not35, label %.critedge20, label %_ZL18hasAIXSmallTLSAttrN4llvm7SDValueE.exit.thread

.critedge20:                                      ; preds = %bb.g, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.023.0.copyload, i64 104
  %i.an = load i32, ptr %i.am, align 8, !tbaa !596 ; 2 uses
  %i.ao = icmp eq i32 %i.an, 7
  %i.ap = icmp eq i32 %i.an, 9
  %or.cond = or i1 %i.ao, %i.ap
  br label %_ZL18hasAIXSmallTLSAttrN4llvm7SDValueE.exit.thread

_ZL18hasAIXSmallTLSAttrN4llvm7SDValueE.exit.thread: ; preds = %bb.g, %bb.f, %_ZL18hasAIXSmallTLSAttrN4llvm7SDValueE.exit, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit.i, %bb.e, %bb.d, %.critedge20, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ false, %_ZL18hasAIXSmallTLSAttrN4llvm7SDValueE.exit ], [ false, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit.i ], [ %or.cond, %.critedge20 ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.g ]
  ret i1 %.4
}

declare noundef ptr @_ZN4llvm12SelectionDAG18UpdateNodeOperandsEPNS_6SDNodeENS_7SDValueES3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef, ptr, i32, ptr, i32, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8) local_unnamed_addr #7

declare noundef ptr @_ZN4llvm12SelectionDAG18UpdateNodeOperandsEPNS_6SDNodeENS_7SDValueES3_S3_(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef, ptr, i32, ptr, i32, ptr noundef byval(%"class.llvm::SDValue") align 8) local_unnamed_addr #7

declare noundef ptr @_ZN4llvm12SelectionDAG18UpdateNodeOperandsEPNS_6SDNodeENS_7SDValueES3_(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef, ptr, i32, ptr, i32) local_unnamed_addr #7

declare void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef) local_unnamed_addr #7

declare noundef zeroext i1 @_ZNK4llvm6SDNode12isOnlyUserOfEPKS0_(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #7

declare noundef i32 @_ZNK4llvm13TargetMachine11getTLSModelEPKNS_11GlobalValueE(ptr noundef nonnull align 8 dereferenceable(1728), ptr noundef) local_unnamed_addr #7

declare noundef zeroext i1 @_ZNK4llvm12AttributeSet12hasAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #7

declare { ptr, i32 } @_ZN4llvm12SelectionDAG16getGlobalAddressEPKNS_11GlobalValueERKNS_5SDLocENS_3EVTElbj(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, i64 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #7

declare { ptr, i32 } @_ZN4llvm12SelectionDAG15getConstantPoolEPKNS_8ConstantENS_3EVTENS_10MaybeAlignEibj(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef, i16, ptr, i16, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #7

declare noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr) local_unnamed_addr #7

declare noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8) local_unnamed_addr #7

declare noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr, i32) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !54
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #32
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !54
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !54
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !54
  ret void
}

declare void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL23PeepholePPC64ZExtGatherN4llvm7SDValueERNS_15SmallPtrSetImplIPNS_6SDNodeEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(17) %1) unnamed_addr #3 {
bb.a:
  %2 = alloca %"struct.std::pair.469", align 8    ; 3 uses
  %3 = alloca %"struct.std::pair.469", align 8    ; 3 uses
  %4 = alloca %"class.llvm::SmallPtrSet.458", align 8 ; 10 uses
  %5 = alloca %"struct.std::pair.469", align 8    ; 3 uses
  %6 = alloca %"class.llvm::SmallPtrSet.458", align 8 ; 11 uses
  %7 = alloca %"struct.std::pair.469", align 8    ; 3 uses
  %8 = alloca %"class.llvm::SmallPtrSet.458", align 8 ; 10 uses
  %9 = alloca %"struct.std::pair.469", align 8    ; 3 uses
  %10 = alloca %"class.llvm::SmallPtrSet.458", align 8 ; 10 uses
  %11 = alloca %"class.llvm::SmallPtrSet.458", align 8 ; 10 uses
  %12 = alloca %"struct.std::pair.469", align 8   ; 3 uses
  %13 = alloca %"class.llvm::SmallPtrSet.458", align 8 ; 10 uses
  %14 = alloca %"struct.std::pair.469", align 8   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !445  ; 3 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4llvm15SmallPtrSetImplIPNS_6SDNodeEE6insertES2_.exit

bb.b:                                             ; preds = %bb.a
  switch i32 %i.b, label %_ZN4llvm15SmallPtrSetImplIPNS_6SDNodeEE6insertES2_.exit [
    i32 -1903, label %bb.c
    i32 -1907, label %bb.c
    i32 -1959, label %bb.g
    i32 -1991, label %bb.g
    i32 -1419, label %bb.j
    i32 -1421, label %bb.j
    i32 -1404, label %bb.n
    i32 -1448, label %bb.n
    i32 -706, label %bb.o
    i32 -713, label %bb.o
    i32 -1899, label %bb.p
    i32 -1633, label %bb.u
    i32 -1928, label %bb.u
    i32 -1640, label %bb.z
    i32 -1642, label %bb.z
    i32 -501, label %bb.ae
    i32 -511, label %bb.am
    i32 -510, label %bb.am
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !460  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !462
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !467  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !470
  %i.m = icmp ult i32 %i.l, 65
  %i.n = load ptr, ptr %i.j, align 8
  %spec.select.i.i.i.i.i = select i1 %i.m, ptr %i.j, ptr %i.n
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !64
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !462
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !467  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !470
  %i.v = icmp ult i32 %i.u, 65
  %i.w = load ptr, ptr %i.s, align 8
  %spec.select.i.i.i.i.i47 = select i1 %i.v, ptr %i.s, ptr %i.w
  %.0.i.i.i.i.i48 = load i64, ptr %spec.select.i.i.i.i.i47, align 8, !tbaa !64
  %.not = icmp ugt i64 %.0.i.i.i.i.i, %.0.i.i.i.i.i48
  br i1 %.not, label %_ZN4llvm15SmallPtrSetImplIPNS_6SDNodeEE6insertES2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i8, ptr %i.x, align 8, !tbaa !14, !range !18, !noalias !822, !noundef !19
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.e, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %1, align 8, !tbaa !20, !noalias !822 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !663, !noalias !822 ; 4 uses
  %i.ad = zext i32 %i.ac to i64
  %.idx.i.i = shl nuw nsw i64 %i.ad, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.i.i ; 2 uses
  %.not22.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.critedge.i.i
  %.023.i.i = phi ptr [ %i.ag, %.critedge.i.i ], [ %i.aa, %bb.e ] ; 2 uses
  %i.af = load ptr, ptr %.023.i.i, align 8, !tbaa !24, !noalias !822
  %.not15.i.i = icmp eq ptr %i.af, %0
  br i1 %.not15.i.i, label %_ZN4llvm15SmallPtrSetImplIPNS_6SDNodeEE6insertES2_.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, %i.ae
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !662, !noalias !822
  %i.aj = icmp ult i32 %i.ac, %i.ai
  br i1 %i.aj, label %bb.f, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ak = add nuw i32 %i.ac, 1
  store i32 %i.ak, ptr %i.ab, align 4, !tbaa !663, !noalias !822
  store ptr %0, ptr %i.ae, align 8, !tbaa !24, !noalias !822
  br label %_ZN4llvm15SmallPtrSetImplIPNS_6SDNodeEE6insertES2_.exit

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i: ; preds = %._crit_edge.i.i, %bb.d
  %i.al = tail call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef %0) #32, !noalias !822 ; 0 uses
  br label %_ZN4llvm15SmallPtrSetImplIPNS_6SDNodeEE6insertES2_.exit

bb.g:                                             ; preds = %bb.b, %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load i8, ptr %i.am, align 8, !tbaa !14, !range !18, !noalias !825, !noundef !19
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.h, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i49

bb.h:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr %1, align 8, !tbaa !20, !noalias !825 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !663, !noalias !825 ; 4 uses
  %i.as = zext i32 %i.ar to i64
  %.idx.i.i64 = shl nuw nsw i64 %i.as, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx.i.i64 ; 2 uses
  %.not22.i.i65 = icmp eq i32 %i.ar, 0
  br i1 %.not22.i.i65, label %._crit_edge.i.i71, label %.lr.ph.i.i66

.lr.ph.i.i66:                                     ; preds = %bb.h, %.critedge.i.i69
  %.023.i.i67 = phi ptr [ %i.av, %.critedge.i.i69 ], [ %i.ap, %bb.h ] ; 2 uses
  %i.au = load ptr, ptr %.023.i.i67, align 8, !tbaa !24, !noalias !825
  %.not15.i.i68 = icmp eq ptr %i.au, %0
  br i1 %.not15.i.i68, label %_ZN4llvm15SmallPtrSetImplIPNS_6SDNodeEE6insertES2_.exit, label %.critedge.i.i69

.critedge.i.i69:                                  ; preds = %.lr.ph.i.i66
  %i.av = getelementptr inbounds nuw i8, ptr %.023.i.i67, i64 8 ; 2 uses
  %.not.i.i70 = icmp eq ptr %i.av, %i.at
  br i1 %.not.i.i70, label %._crit_edge.i.i71, label %.lr.ph.i.i66

._crit_edge.i.i71:                                ; preds = %.critedge.i.i69, %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !662, !noalias !825
  %i.ay = icmp ult i32 %i.ar, %i.ax
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_115PPCDAGToDAGISel16tryTLSXFormStoreEPN4llvm11StoreSDNodeE:bb.a
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !431
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.as, ptr noundef nonnull %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %.0 = phi i1 [ true, %bb.h ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.1 = phi i1 [ %.0, %bb.i ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115PPCDAGToDAGISel15tryTLSXFormLoadEPN4llvm10LoadSDNodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(980) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %2 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %3 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 6 uses
  %4 = alloca %"class.llvm::ArrayRef", align 8    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !460  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.048.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !456 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !431  ; 2 uses
  %i.g = tail call fastcc noundef zeroext i1 @_ZL26canOptimizeTLSDFormToXFormPN4llvm12SelectionDAGENS_7SDValueE(ptr noundef %i.f, ptr %.sroa.048.0.copyload)
  br i1 %i.g, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !446
  store i64 %i.i, ptr %2, align 8, !tbaa !446
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.l = load i32, ptr %i.k, align 4, !tbaa !447
  store i32 %i.l, ptr %i.j, align 8, !tbaa !448
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.0.0.copyload.i = load i16, ptr %i.m, align 8, !tbaa !452
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !451  ; 3 uses
  %.sroa.0.0.copyload.i24 = load i16, ptr %i.o, align 8, !tbaa !452 ; 3 uses
  %.sroa.21.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.21.0.copyload.i26 = load ptr, ptr %.sroa.21.0..sroa_idx.i25, align 8, !tbaa !454 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load i16, ptr %i.p, align 8
  %i.r = and i16 %i.q, 3072
  %i.s = icmp eq i16 %i.r, 2048                   ; 4 uses
  switch i16 %.sroa.0.0.copyload.i, label %bb.m [
    i16 5, label %bb.c
    i16 6, label %bb.d
    i16 7, label %bb.g
    i16 8, label %bb.l
    i16 14, label %bb.j
    i16 15, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i24, 7
  %i.t = icmp eq ptr %.sroa.21.0.copyload.i26, null
  %.not4.i = select i1 %.not.i.i, i1 %i.t, i1 false
  %i.u = select i1 %.not4.i, i32 1355, i32 1353
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %.not.i.i30 = icmp eq i16 %.sroa.0.0.copyload.i24, 7
  %i.v = icmp eq ptr %.sroa.21.0.copyload.i26, null
  %.not4.i31 = select i1 %.not.i.i30, i1 %i.v, i1 false
  br i1 %.not4.i31, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = select i1 %i.s, i32 1402, i32 1417
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.x = select i1 %i.s, i32 1400, i32 1415
  br label %bb.l

bb.g:                                             ; preds = %bb.b
  %.not.i.i32 = icmp eq i16 %.sroa.0.0.copyload.i24, 7
  %i.y = icmp eq ptr %.sroa.21.0.copyload.i26, null
  %.not4.i33 = select i1 %.not.i.i32, i1 %i.y, i1 false
  br i1 %.not4.i33, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = select i1 %i.s, i32 1444, i32 1461
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.aa = select i1 %i.s, i32 1442, i32 1459
  br label %bb.l

bb.j:                                             ; preds = %bb.b
  br label %bb.l

bb.k:                                             ; preds = %bb.b
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.h, %bb.i, %bb.e, %bb.f, %bb.k, %bb.j, %bb.c
  %.022 = phi i32 [ %i.u, %bb.c ], [ %i.w, %bb.e ], [ %i.x, %bb.f ], [ %i.z, %bb.h ], [ %i.aa, %bb.i ], [ 1380, %bb.k ], [ 1388, %bb.j ], [ 1366, %bb.b ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !667
  %i.ad = zext i16 %i.ac to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.048.0.copyload, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !460 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.af, i64 12, i1 false), !tbaa.struct !487
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.ag, ptr noundef nonnull align 8 dereferenceable(12) %i.ah, i64 12, i1 false), !tbaa.struct !487
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.ai, ptr noundef nonnull align 8 dereferenceable(12) %i.c, i64 12, i1 false)
  store ptr %3, ptr %4, align 8, !tbaa !488
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 3, ptr %i.aj, align 8, !tbaa !491
  %i.ak = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i32 noundef %.022, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr nonnull %i.o, i32 %i.ad, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %4) #32 ; 3 uses
  %.val = load ptr, ptr %i.e, align 8, !tbaa !431
  %i.al = getelementptr i8, ptr %1, i64 104
  %.val23 = load i64, ptr %i.al, align 8
  %i.am = and i64 %.val23, -5
  %i.an = inttoptr i64 %i.am to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store ptr %i.an, ptr %i.a, align 8, !tbaa !758
  call void @_ZN4llvm12SelectionDAG14setNodeMemRefsEPNS_13MachineSDNodeENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(920) %.val, ptr noundef %i.ak, ptr nonnull %i.a, i64 1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !431
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.ao, ptr noundef nonnull %1, ptr noundef %i.ak) #32
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.ak) #32
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !431
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.ap, ptr noundef nonnull %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.l
  %.0 = phi i1 [ true, %bb.l ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  %.1 = phi i1 [ %.0, %bb.m ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115PPCDAGToDAGISel17tryAsSingleRLWINMEPN4llvm6SDNodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(980) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SDLoc", align 8       ; 10 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %3 = alloca [4 x %"class.llvm::SDValue"], align 16 ; 11 uses
  %4 = alloca %"class.llvm::ArrayRef", align 8    ; 3 uses
  %5 = alloca [4 x %"class.llvm::SDValue"], align 16 ; 11 uses
  %6 = alloca %"class.llvm::ArrayRef", align 8    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !460  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.031.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !456 ; 5 uses
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.031.0.copyload, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !445
  %i.i = icmp eq i32 %i.h, 12
  br i1 %i.i, label %bb.b, label %_ZL16isInt32ImmediateN4llvm7SDValueERj.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.031.0.copyload, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !451  ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.k, align 8, !tbaa !452
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !454
  %.not.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 7
  %i.l = icmp eq ptr %.sroa.21.0.copyload.i.i.i, null
  %.not4.i.i.i = select i1 %.not.i.i.i.i, i1 %i.l, i1 false
  br i1 %.not4.i.i.i, label %bb.c, label %_ZL16isInt32ImmediateN4llvm7SDValueERj.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.031.0.copyload, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !467  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !470
  %i.r = icmp ult i32 %i.q, 65
  %i.s = load ptr, ptr %i.o, align 8
  %spec.select.i.i.i.i.i.i = select i1 %i.r, ptr %i.o, ptr %i.s
  %.0.i.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i.i, align 8, !tbaa !64
  %i.t = trunc i64 %.0.i.i.i.i.i.i to i32         ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load i64, ptr %i.u, align 8, !tbaa !446
  store i64 %i.v, ptr %2, align 8, !tbaa !446
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.y = load i32, ptr %i.x, align 4, !tbaa !447
  store i32 %i.y, ptr %i.w, align 8, !tbaa !448
  %.sroa.058.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !456 ; 7 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.z = load i64, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.11.sroa.0.0.extract.trunc = trunc i64 %i.z to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  %i.aa = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115PPCDAGToDAGISel15isRotateAndMaskEPN4llvm6SDNodeEjbRjS4_S4_(ptr noundef %.sroa.058.0.copyload, i32 noundef %i.t, i1 noundef zeroext false, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.058.0.copyload, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !460 ; 2 uses
  %.sroa.058.0.copyload63 = load ptr, ptr %i.ac, align 8, !tbaa !456
  %.sroa.11.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ad = load i32, ptr %.sroa.11.0..sroa_idx66, align 8, !tbaa !458
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %.sroa.058.0.copyload63, ptr %3, align 16, !tbaa !456
  %.sroa.11.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.ad, ptr %.sroa.11.0..sroa_idx67, align 8, !tbaa !458
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = load i32, ptr %i.a, align 4, !tbaa !458
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %.val51 = load ptr, ptr %i.ag, align 8, !tbaa !431
  %i.ah = zext i32 %i.af to i64
  %i.ai = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val51, i64 noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #32 ; 2 uses
  %.fca.0.extract26 = extractvalue { ptr, i32 } %i.ai, 0
  %.fca.1.extract27 = extractvalue { ptr, i32 } %i.ai, 1
  store ptr %.fca.0.extract26, ptr %i.ae, align 16
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %.fca.1.extract27, ptr %.sroa.229.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ak = load i32, ptr %i.b, align 4, !tbaa !458
  %.val50 = load ptr, ptr %i.ag, align 8, !tbaa !431
  %i.al = zext i32 %i.ak to i64
  %i.am = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val50, i64 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #32 ; 2 uses
  %.fca.0.extract22 = extractvalue { ptr, i32 } %i.am, 0
  %.fca.1.extract23 = extractvalue { ptr, i32 } %i.am, 1
  store ptr %.fca.0.extract22, ptr %i.aj, align 16
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %.fca.1.extract23, ptr %.sroa.225.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ao = load i32, ptr %i.c, align 4, !tbaa !458
  %.val49 = load ptr, ptr %i.ag, align 8, !tbaa !431
  %i.ap = zext i32 %i.ao to i64
  %i.aq = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val49, i64 noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #32 ; 2 uses
  %.fca.0.extract18 = extractvalue { ptr, i32 } %i.aq, 0
  %.fca.1.extract19 = extractvalue { ptr, i32 } %i.aq, 1
  store ptr %.fca.0.extract18, ptr %i.an, align 16
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %.fca.1.extract19, ptr %.sroa.221.0..sroa_idx, align 8
  %i.ar = load ptr, ptr %i.ag, align 8, !tbaa !431
  store ptr %3, ptr %4, align 8, !tbaa !488
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %i.as, align 8, !tbaa !491
  %i.at = call noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.ar, ptr noundef nonnull %1, i32 noundef 1902, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %4) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.l, label %_ZN4llvm16isShiftedMask_32Ej.exit.i

_ZN4llvm16isShiftedMask_32Ej.exit.i:              ; preds = %bb.e
  %i.au = add i32 %i.t, -1                        ; 2 uses
  %i.av = or i32 %i.au, %i.t                      ; 2 uses
  %i.aw = add i32 %i.av, 1
  %i.ax = and i32 %i.aw, %i.av
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm16isShiftedMask_32Ej.exit.i
  %i.az = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.t, i1 true)
  %i.ba = xor i32 %i.au, %i.t
  %i.bb = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ba, i1 true)
  br label %_ZN4llvmL11isRunOfOnesEjRjS0_.exit

bb.g:                                             ; preds = %_ZN4llvm16isShiftedMask_32Ej.exit.i
  %i.bc = xor i32 %i.t, -1                        ; 3 uses
  %.not.i15.i = icmp eq i32 %i.t, -1
  br i1 %.not.i15.i, label %.thread, label %_ZN4llvm16isShiftedMask_32Ej.exit16.i

_ZN4llvm16isShiftedMask_32Ej.exit16.i:            ; preds = %bb.g
  %i.bd = sub nuw i32 -2, %i.t                    ; 2 uses
  %i.be = or i32 %i.bd, %i.bc                     ; 2 uses
  %i.bf = add i32 %i.be, 1
  %i.bg = and i32 %i.bf, %i.be
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.h, label %.thread

bb.h:                                             ; preds = %_ZN4llvm16isShiftedMask_32Ej.exit16.i
  %i.bi = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bc, i1 true)
  %i.bj = add nsw i32 %i.bi, -1
  %i.bk = xor i32 %i.bd, %i.bc
  %i.bl = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bk, i1 false)
  %i.bm = add nuw nsw i32 %i.bl, 1
  br label %_ZN4llvmL11isRunOfOnesEjRjS0_.exit

_ZN4llvmL11isRunOfOnesEjRjS0_.exit:               ; preds = %bb.h, %bb.f
  %i.bn = phi i32 [ %i.bj, %bb.h ], [ %i.bb, %bb.f ] ; 2 uses
  %i.bo = phi i32 [ %i.bm, %bb.h ], [ %i.az, %bb.f ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.058.0.copyload, i64 24
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !445
  switch i32 %i.bq, label %.fold.split [
    i32 201, label %.thread
    i32 49, label %bb.i
  ]

bb.i:                                             ; preds = %_ZN4llvmL11isRunOfOnesEjRjS0_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.058.0.copyload, i64 40
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !460
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !462
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 88
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !467 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !470
  %i.ca = icmp ult i32 %i.bz, 65
  %i.cb = load ptr, ptr %i.bx, align 8
  %spec.select.i.i.i.i.i = select i1 %i.ca, ptr %i.bx, ptr %i.cb
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !64
  switch i64 %.0.i.i.i.i.i, label %.fold.split [
    i64 11767, label %bb.k
    i64 11769, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.045 = phi i32 [ 24, %bb.i ], [ 16, %bb.j ]
  %i.cc = icmp eq i32 %.045, %i.bo
  %i.cd = icmp eq i32 %i.bn, 31
  %or.cond = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond, label %.critedge, label %.fold.split

.critedge:                                        ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !431
  tail call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.cf, ptr nonnull %1, i32 0, ptr nonnull %.sroa.058.0.copyload, i32 %.sroa.11.sroa.0.0.extract.trunc) #32
  tail call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef nonnull %.sroa.058.0.copyload) #32
  br label %.thread

.fold.split:                                      ; preds = %_ZN4llvmL11isRunOfOnesEjRjS0_.exit, %bb.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store ptr %.sroa.058.0.copyload, ptr %5, align 16, !tbaa !456
  %.sroa.11.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.sroa.11.sroa.0.0.extract.trunc, ptr %.sroa.11.0..sroa_idx68, align 8, !tbaa !458
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %.val48 = load ptr, ptr %i.ch, align 8, !tbaa !431
  %i.ci = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val48, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #32 ; 2 uses
  %.fca.0.extract8 = extractvalue { ptr, i32 } %i.ci, 0
  %.fca.1.extract9 = extractvalue { ptr, i32 } %i.ci, 1
  store ptr %.fca.0.extract8, ptr %i.cg, align 16
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %.fca.1.extract9, ptr %.sroa.211.0..sroa_idx, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.val47 = load ptr, ptr %i.ch, align 8, !tbaa !431
  %i.ck = zext nneg i32 %i.bo to i64
  %i.cl = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val47, i64 noundef %i.ck, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #32 ; 2 uses
  %.fca.0.extract4 = extractvalue { ptr, i32 } %i.cl, 0
  %.fca.1.extract5 = extractvalue { ptr, i32 } %i.cl, 1
  store ptr %.fca.0.extract4, ptr %i.cj, align 16
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %.fca.1.extract5, ptr %.sroa.27.0..sroa_idx, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.val = load ptr, ptr %i.ch, align 8, !tbaa !431
  %i.cn = zext i32 %i.bn to i64
  %i.co = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val, i64 noundef %i.cn, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #32 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.co, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.co, 1
  store ptr %.fca.0.extract, ptr %i.cm, align 16
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i32 %.fca.1.extract, ptr %.sroa.23.0..sroa_idx, align 8
  %i.cp = load ptr, ptr %i.ch, align 8, !tbaa !431
  store ptr %5, ptr %6, align 8, !tbaa !488
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 4, ptr %i.cq, align 8, !tbaa !491
  %i.cr = call noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.cp, ptr noundef nonnull %1, i32 noundef 1902, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %6) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %.thread

bb.l:                                             ; preds = %bb.e
  %.sroa.2.0.copyload = load i32, ptr %.sroa.232.0..sroa_idx, align 8, !tbaa !458
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !431
  tail call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.ct, ptr nonnull %1, i32 0, ptr nonnull %.sroa.031.0.copyload, i32 %.sroa.2.0.copyload) #32
  tail call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef nonnull %.sroa.031.0.copyload) #32
  br label %.thread

.thread:                                          ; preds = %_ZN4llvmL11isRunOfOnesEjRjS0_.exit, %bb.g, %_ZN4llvm16isShiftedMask_32Ej.exit16.i, %.fold.split, %.critedge, %bb.l, %bb.d
  %.2 = phi i1 [ true, %bb.d ], [ true, %.fold.split ], [ true, %bb.l ], [ true, %.critedge ], [ false, %_ZN4llvmL11isRunOfOnesEjRjS0_.exit ], [ false, %_ZN4llvm16isShiftedMask_32Ej.exit16.i ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %_ZL16isInt32ImmediateN4llvm7SDValueERj.exit.thread

_ZL16isInt32ImmediateN4llvm7SDValueERj.exit.thread: ; preds = %bb.a, %bb.b, %.thread
  %.3 = phi i1 [ %.2, %.thread ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115PPCDAGToDAGISel17tryAsSingleRLWIMIEPN4llvm6SDNodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(980) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SDLoc", align 8       ; 8 uses
  %3 = alloca [5 x %"class.llvm::SDValue"], align 16 ; 11 uses
  %4 = alloca %"class.llvm::ArrayRef", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !460  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.011.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !456 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !445
  %i.f = icmp eq i32 %i.e, 12
  br i1 %i.f, label %bb.b, label %_ZL16isInt32ImmediateN4llvm7SDValueERj.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !451  ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.h, align 8, !tbaa !452
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !454
  %.not.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 7
  %i.i = icmp eq ptr %.sroa.21.0.copyload.i.i.i, null
  %.not4.i.i.i = select i1 %.not.i.i.i.i, i1 %i.i, i1 false
  br i1 %.not4.i.i.i, label %bb.c, label %_ZL16isInt32ImmediateN4llvm7SDValueERj.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !467  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !470
  %i.o = icmp ult i32 %i.n, 65
  %i.p = load ptr, ptr %i.l, align 8
  %spec.select.i.i.i.i.i.i = select i1 %i.o, ptr %i.l, ptr %i.p
  %.0.i.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i.i, align 8, !tbaa !64
  %i.q = trunc i64 %.0.i.i.i.i.i.i to i32         ; 3 uses
  %.sroa.034.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !456 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !445
  %.not = icmp eq i32 %i.s, 194
  br i1 %.not, label %bb.d, label %_ZL16isInt32ImmediateN4llvm7SDValueERj.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !460  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  %.sroa.09.0.copyload = load ptr, ptr %i.v, align 8, !tbaa !456 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !445
  %i.y = icmp eq i32 %i.x, 12
  br i1 %i.y, label %bb.e, label %_ZL16isInt32ImmediateN4llvm7SDValueERj.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !451 ; 2 uses
  %.sroa.0.0.copyload.i.i.i23 = load i16, ptr %i.aa, align 8, !tbaa !452
  %.sroa.21.0..sroa_idx.i.i.i24 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.21.0.copyload.i.i.i25 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i24, align 8, !tbaa !454
  %.not.i.i.i.i26 = icmp eq i16 %.sroa.0.0.copyload.i.i.i23, 7
  %i.ab = icmp eq ptr %.sroa.21.0.copyload.i.i.i25, null
  %.not4.i.i.i27 = select i1 %.not.i.i.i.i26, i1 %i.ab, i1 false
  br i1 %.not4.i.i.i27, label %bb.f, label %_ZL16isInt32ImmediateN4llvm7SDValueERj.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 88
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !467 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !470
  %i.ah = icmp ult i32 %i.ag, 65
  %i.ai = load ptr, ptr %i.ae, align 8
  %spec.select.i.i.i.i.i.i28 = select i1 %i.ah, ptr %i.ae, ptr %i.ai
  %.0.i.i.i.i.i.i29 = load i64, ptr %spec.select.i.i.i.i.i.i28, align 8, !tbaa !64
  %i.aj = trunc i64 %.0.i.i.i.i.i.i29 to i32      ; 3 uses
  %i.ak = xor i32 %i.aj, %i.q                     ; 7 uses
  %i.al = xor i32 %i.ak, -1                       ; 3 uses
  %.not.i = icmp eq i32 %i.ak, -1
  br i1 %.not.i, label %_ZL16isInt32ImmediateN4llvm7SDValueERj.exit.thread, label %_ZN4llvm16isShiftedMask_32Ej.exit.i

_ZN4llvm16isShiftedMask_32Ej.exit.i:              ; preds = %bb.f
  %i.am = sub nuw i32 -2, %i.ak                   ; 2 uses
  %i.an = or i32 %i.am, %i.al                     ; 2 uses
  %i.ao = add i32 %i.an, 1
  %i.ap = and i32 %i.ao, %i.an
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm16isShiftedMask_32Ej.exit.i
  %i.ar = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.al, i1 true)
  %i.as = xor i32 %i.am, %i.al
  %i.at = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.as, i1 true)
  br label %_ZN4llvmL11isRunOfOnesEjRjS0_.exit

bb.h:                                             ; preds = %_ZN4llvm16isShiftedMask_32Ej.exit.i
  %.not.i15.i = icmp eq i32 %i.q, %i.aj
  br i1 %.not.i15.i, label %_ZL16isInt32ImmediateN4llvm7SDValueERj.exit.thread, label %_ZN4llvm16isShiftedMask_32Ej.exit16.i

_ZN4llvm16isShiftedMask_32Ej.exit16.i:            ; preds = %bb.h
  %i.au = add i32 %i.ak, -1                       ; 2 uses
  %i.av = or i32 %i.au, %i.ak                     ; 2 uses
  %i.aw = add i32 %i.av, 1
  %i.ax = and i32 %i.aw, %i.av
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.i, label %_ZL16isInt32ImmediateN4llvm7SDValueERj.exit.thread

bb.i:                                             ; preds = %_ZN4llvm16isShiftedMask_32Ej.exit16.i
  %i.az = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ak, i1 true)
  %i.ba = add nsw i32 %i.az, -1
  %i.bb = xor i32 %i.au, %i.ak
  %i.bc = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bb, i1 true)
  %i.bd = add nuw nsw i32 %i.bc, 1
  br label %_ZN4llvmL11isRunOfOnesEjRjS0_.exit

_ZN4llvmL11isRunOfOnesEjRjS0_.exit:               ; preds = %bb.i, %bb.g
  %.042 = phi i32 [ %i.bd, %bb.i ], [ %i.ar, %bb.g ]
  %.041 = phi i32 [ %i.ba, %bb.i ], [ %i.at, %bb.g ]
  %i.be = xor i32 %i.q, -1
  %i.bf = and i32 %i.aj, %i.be
  %.not19 = icmp eq i32 %i.bf, 0
  br i1 %.not19, label %bb.j, label %_ZL16isInt32ImmediateN4llvm7SDValueERj.exit.thread

bb.j:                                             ; preds = %_ZN4llvmL11isRunOfOnesEjRjS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !446
  store i64 %i.bh, ptr %2, align 8, !tbaa !446
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !447
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !448
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.u, i64 12, i1 false), !tbaa.struct !487
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.bl, ptr noundef nonnull align 8 dereferenceable(12) %i.v, i64 12, i1 false), !tbaa.struct !487
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %.val21 = load ptr, ptr %i.bn, align 8, !tbaa !431
  %i.bo = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val21, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #32 ; 2 uses
  %.fca.0.extract5 = extractvalue { ptr, i32 } %i.bo, 0
  %.fca.1.extract6 = extractvalue { ptr, i32 } %i.bo, 1
  store ptr %.fca.0.extract5, ptr %i.bm, align 16
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %.fca.1.extract6, ptr %.sroa.28.0..sroa_idx, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.val20 = load ptr, ptr %i.bn, align 8, !tbaa !431
  %i.bq = zext nneg i32 %.042 to i64
  %i.br = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val20, i64 noundef %i.bq, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #32 ; 2 uses
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.br, 0
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.br, 1
  store ptr %.fca.0.extract1, ptr %i.bp, align 16
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.val = load ptr, ptr %i.bn, align 8, !tbaa !431
  %i.bt = zext i32 %.041 to i64
  %i.bu = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val, i64 noundef %i.bt, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #32 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.bu, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.bu, 1
  store ptr %.fca.0.extract, ptr %i.bs, align 16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i32 %.fca.1.extract, ptr %.sroa.2.0..sroa_idx, align 8
  %i.bv = load ptr, ptr %i.bn, align 8, !tbaa !431
  store ptr %3, ptr %4, align 8, !tbaa !488
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 5, ptr %i.bw, align 8, !tbaa !491
  %i.bx = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.bv, i32 noundef 1898, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %4) #32 ; 2 uses
  %i.by = load ptr, ptr %i.bn, align 8, !tbaa !431
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.by, ptr noundef nonnull %1, ptr noundef %i.bx) #32
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.bx) #32
  %i.bz = load ptr, ptr %i.bn, align 8, !tbaa !431
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.bz, ptr noundef nonnull %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %_ZL16isInt32ImmediateN4llvm7SDValueERj.exit.thread

_ZL16isInt32ImmediateN4llvm7SDValueERj.exit.thread: ; preds = %bb.c, %_ZN4llvmL11isRunOfOnesEjRjS0_.exit, %bb.j, %bb.e, %bb.d, %bb.f, %_ZN4llvm16isShiftedMask_32Ej.exit16.i, %bb.h, %bb.a, %bb.b
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.j ], [ false, %_ZN4llvmL11isRunOfOnesEjRjS0_.exit ], [ false, %bb.e ], [ false, %bb.f ], [ false, %_ZN4llvm16isShiftedMask_32Ej.exit16.i ], [ false, %bb.h ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115PPCDAGToDAGISel16tryAsSingleRLDCLEPN4llvm6SDNodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(980) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %3 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 8 uses
  %4 = alloca %"class.llvm::ArrayRef", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !460  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !462  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !445
  %i.g = icmp eq i32 %i.f, 12
  br i1 %i.g, label %bb.b, label %_ZL16isInt64ImmediatePN4llvm6SDNodeERm.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !451  ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.i, align 8, !tbaa !452
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !454
  %.not.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 8
  %i.j = icmp eq ptr %.sroa.21.0.copyload.i.i, null
  %.not4.i.i = select i1 %.not.i.i.i, i1 %i.j, i1 false
  br i1 %.not4.i.i, label %bb.c, label %_ZL16isInt64ImmediatePN4llvm6SDNodeERm.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !467  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !470
  %i.p = icmp ult i32 %i.o, 65
  %i.q = load ptr, ptr %i.m, align 8
  %spec.select.i.i.i.i.i = select i1 %i.p, ptr %i.m, ptr %i.q
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !64 ; 4 uses
  %.not.i = icmp ne i64 %.0.i.i.i.i.i, 0
  %i.r = add i64 %.0.i.i.i.i.i, 1
  %i.s = and i64 %i.r, %.0.i.i.i.i.i
  %i.t = icmp eq i64 %i.s, 0
  %i.u = and i1 %.not.i, %i.t
  br i1 %i.u, label %bb.d, label %_ZL16isInt64ImmediatePN4llvm6SDNodeERm.exit.thread

bb.d:                                             ; preds = %bb.c
  %.sroa.09.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !456 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !445
  %.not = icmp eq i32 %i.w, 201
  br i1 %.not, label %bb.e, label %_ZL16isInt64ImmediatePN4llvm6SDNodeERm.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !460  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %.sroa.06.0.copyload = load ptr, ptr %i.z, align 8, !tbaa !456 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.06.0.copyload, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !445
  %.not15 = icmp eq i32 %i.ab, 12
  br i1 %.not15, label %_ZL16isInt64ImmediatePN4llvm6SDNodeERm.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ac = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.0.0.extract.trunc = trunc i64 %i.ac to i32
  %i.ad = xor i64 %.0.i.i.i.i.i, -1
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 false)
  %i.af = sub nuw nsw i64 64, %i.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !446
  store i64 %i.ah, ptr %2, align 8, !tbaa !446
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !447
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !448
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.y, i64 12, i1 false), !tbaa.struct !487
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.sroa.06.0.copyload, ptr %i.al, align 16, !tbaa !456
  %.sroa.5.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %.sroa.5.sroa.0.0.extract.trunc, ptr %.sroa.5.0..sroa_idx8, align 8, !tbaa !458
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.val = load ptr, ptr %i.an, align 8, !tbaa !431
  %i.ao = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val, i64 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #32 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ao, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ao, 1
  store ptr %.fca.0.extract, ptr %i.am, align 16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %.fca.1.extract, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !431
  store ptr %3, ptr %4, align 8, !tbaa !488
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 3, ptr %i.aq, align 8, !tbaa !491
  %i.ar = call noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.ap, ptr noundef nonnull %1, i32 noundef 1882, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %4) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %_ZL16isInt64ImmediatePN4llvm6SDNodeERm.exit.thread

_ZL16isInt64ImmediatePN4llvm6SDNodeERm.exit.thread: ; preds = %bb.f, %bb.e, %bb.d, %bb.a, %bb.b, %bb.c
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.e ], [ true, %bb.f ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115PPCDAGToDAGISel17tryAsSingleRLDICLEPN4llvm6SDNodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(980) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SDLoc", align 8       ; 9 uses
  %3 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 2 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %6 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %7 = alloca %"class.llvm::ArrayRef", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !460  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !462  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !445
  %i.g = icmp eq i32 %i.f, 12
  br i1 %i.g, label %bb.b, label %_ZL16isInt64ImmediatePN4llvm6SDNodeERm.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !451  ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.i, align 8, !tbaa !452
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !454
  %.not.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 8
  %i.j = icmp eq ptr %.sroa.21.0.copyload.i.i, null
  %.not4.i.i = select i1 %.not.i.i.i, i1 %i.j, i1 false
  br i1 %.not4.i.i, label %bb.c, label %_ZL16isInt64ImmediatePN4llvm6SDNodeERm.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !467  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !470
  %i.p = icmp ult i32 %i.o, 65
  %i.q = load ptr, ptr %i.m, align 8
  %spec.select.i.i.i.i.i = select i1 %i.p, ptr %i.m, ptr %i.q
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !64 ; 4 uses
  %.not.i = icmp ne i64 %.0.i.i.i.i.i, 0
  %i.r = add i64 %.0.i.i.i.i.i, 1
  %i.s = and i64 %i.r, %.0.i.i.i.i.i
  %i.t = icmp eq i64 %i.s, 0
  %i.u = and i1 %.not.i, %i.t
  br i1 %i.u, label %bb.d, label %_ZL16isInt64ImmediatePN4llvm6SDNodeERm.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.v = xor i64 %.0.i.i.i.i.i, -1
  %i.w = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.v, i1 false)
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = sub nuw nsw i32 64, %i.x                 ; 3 uses
  %.sroa.057.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !456 ; 8 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !458 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !446
  store i64 %i.aa, ptr %2, align 8, !tbaa !446
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !447
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !448
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.057.0.copyload, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !445 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 229
  br i1 %i.ag, label %bb.e, label %_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.057.0.copyload, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !460
  %.sroa.054.0.copyload = load ptr, ptr %i.ai, align 8, !tbaa !456 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.054.0.copyload, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !445
  %i.al = icmp eq i32 %i.ak, 200
  br i1 %i.al, label %bb.f, label %_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit49.thread

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.054.0.copyload, i64 40 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !460
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !462 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !445
  %i.as = icmp eq i32 %i.ar, 12
  br i1 %i.as, label %bb.g, label %_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit49.thread

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !451 ; 2 uses
  %.sroa.0.0.copyload.i.i34 = load i16, ptr %i.au, align 8, !tbaa !452
  %.sroa.21.0..sroa_idx.i.i35 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.21.0.copyload.i.i36 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i35, align 8, !tbaa !454
  %.not.i.i.i37 = icmp eq i16 %.sroa.0.0.copyload.i.i34, 7
  %i.av = icmp eq ptr %.sroa.21.0.copyload.i.i36, null
  %.not4.i.i38 = select i1 %.not.i.i.i37, i1 %i.av, i1 false
  br i1 %.not4.i.i38, label %_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit, label %_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit49.thread

_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit:      ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !467 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !470
  %i.bb = icmp ult i32 %i.ba, 65
  %i.bc = load ptr, ptr %i.ay, align 8
  %spec.select.i.i.i.i.i39 = select i1 %i.bb, ptr %i.ay, ptr %i.bc
  %.0.i.i.i.i.i40 = load i64, ptr %spec.select.i.i.i.i.i39, align 8, !tbaa !64
  %i.bd = trunc i64 %.0.i.i.i.i.i40 to i32        ; 2 uses
  %.not = icmp ult i32 %i.y, %i.bd
  br i1 %.not, label %_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit49.thread, label %bb.h

bb.h:                                             ; preds = %_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.057.0.copyload, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !451 ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.bf, align 8, !tbaa !452 ; 2 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !454 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !431
  %i.bi = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.bh, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i) #32
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !431 ; 2 uses
  store ptr %i.bi, ptr %3, align 8, !tbaa !456
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %.sroa.452.0..sroa_idx, align 8, !tbaa !458
  %i.bk = load ptr, ptr %i.am, align 8, !tbaa !460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i64 16, i1 false), !tbaa.struct !487
  %i.bl = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bj, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #32 ; 2 uses
  %.fca.0.extract5 = extractvalue { ptr, i32 } %i.bl, 0
  %.fca.1.extract6 = extractvalue { ptr, i32 } %i.bl, 1
  store ptr %.fca.0.extract5, ptr %5, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract6, ptr %.sroa.28.0..sroa_idx, align 8
  %i.bm = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.bj, i32 noundef 9, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %3, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5) #32 ; 2 uses
  %i.bn = sub nuw nsw i32 64, %i.bd
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !445
  br label %_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit.thread

_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit.thread: ; preds = %bb.h, %bb.d
  %i.bo = phi i32 [ %i.af, %bb.d ], [ %.pre, %bb.h ]
  %.sroa.057.1 = phi ptr [ %.sroa.057.0.copyload, %bb.d ], [ %i.bm, %bb.h ] ; 5 uses
  %.sroa.12.1 = phi i32 [ %.sroa.12.0.copyload, %bb.d ], [ 0, %bb.h ] ; 4 uses
  %.1 = phi i32 [ 0, %bb.d ], [ %i.bn, %bb.h ]    ; 4 uses
  %i.bp = icmp eq i32 %i.bo, 200
  br i1 %i.bp, label %bb.i, label %_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit49.thread

bb.i:                                             ; preds = %_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit.thread
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.057.1, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !460 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !462 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !445
  %i.bw = icmp eq i32 %i.bv, 12
  br i1 %i.bw, label %bb.j, label %_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit49.thread

bb.j:                                             ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !451 ; 2 uses
  %.sroa.0.0.copyload.i.i42 = load i16, ptr %i.by, align 8, !tbaa !452
  %.sroa.21.0..sroa_idx.i.i43 = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.21.0.copyload.i.i44 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i43, align 8, !tbaa !454
  %.not.i.i.i45 = icmp eq i16 %.sroa.0.0.copyload.i.i42, 7
  %i.bz = icmp eq ptr %.sroa.21.0.copyload.i.i44, null
  %.not4.i.i46 = select i1 %.not.i.i.i45, i1 %i.bz, i1 false
  br i1 %.not4.i.i46, label %_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit49, label %_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit49.thread

_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit49:    ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 88
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !467 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !470
  %i.cf = icmp ult i32 %i.ce, 65
  %i.cg = load ptr, ptr %i.cc, align 8
  %spec.select.i.i.i.i.i47 = select i1 %i.cf, ptr %i.cc, ptr %i.cg
  %.0.i.i.i.i.i48 = load i64, ptr %spec.select.i.i.i.i.i47, align 8, !tbaa !64
  %i.ch = trunc i64 %.0.i.i.i.i.i48 to i32        ; 2 uses
  %.not27 = icmp ult i32 %i.y, %i.ch
  br i1 %.not27, label %_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit49.thread, label %bb.k

bb.k:                                             ; preds = %_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit49
  %.sroa.057.0.copyload63 = load ptr, ptr %i.br, align 8, !tbaa !456
  %.sroa.12.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.12.0.copyload66 = load i32, ptr %.sroa.12.0..sroa_idx65, align 8, !tbaa !458
  %i.ci = sub nuw nsw i32 64, %i.ch
  br label %_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit49.thread

_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit49.thread: ; preds = %bb.f, %bb.g, %bb.e, %_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit, %bb.i, %bb.j, %bb.k, %_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit49, %_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit.thread
  %.sroa.057.2 = phi ptr [ %.sroa.057.1, %_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit49 ], [ %.sroa.057.0.copyload63, %bb.k ], [ %.sroa.057.1, %_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit.thread ], [ %.sroa.057.1, %bb.j ], [ %.sroa.057.1, %bb.i ], [ %.sroa.057.0.copyload, %_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit ], [ %.sroa.057.0.copyload, %bb.e ], [ %.sroa.057.0.copyload, %bb.g ], [ %.sroa.057.0.copyload, %bb.f ]
  %.sroa.12.2 = phi i32 [ %.sroa.12.1, %_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit49 ], [ %.sroa.12.0.copyload66, %bb.k ], [ %.sroa.12.1, %_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit.thread ], [ %.sroa.12.1, %bb.j ], [ %.sroa.12.1, %bb.i ], [ %.sroa.12.0.copyload, %_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit ], [ %.sroa.12.0.copyload, %bb.e ], [ %.sroa.12.0.copyload, %bb.g ], [ %.sroa.12.0.copyload, %bb.f ]
  %.2 = phi i32 [ %.1, %_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit49 ], [ %i.ci, %bb.k ], [ %.1, %_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit.thread ], [ %.1, %bb.j ], [ %.1, %bb.i ], [ 0, %_ZL16isInt32ImmediatePN4llvm6SDNodeERj.exit ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  store ptr %.sroa.057.2, ptr %6, align 16, !tbaa !456
  %.sroa.12.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.12.2, ptr %.sroa.12.0..sroa_idx67, align 8, !tbaa !458
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 16
end_hunk_4

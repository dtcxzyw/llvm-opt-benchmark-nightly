Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SelectionDAGBuilder?download=true
inline.NumInlined: 16572
inline.NumDeleted: 6374
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZNK4llvm14TargetLowering11LowerCallToERNS0_16CallLoweringInfoE:bb.a
  %.pre-phi.i.i = zext i32 %.pre-phi.i.i.in to i64 ; 2 uses
  %i.aal = getelementptr [16 x i8], ptr %i.aaj, i64 %.pre-phi.i.i ; 2 uses
  %i.aam = sub nsw i64 %i.aad, %.pre-phi.i.i
  %i.aan = shl nsw i64 %i.aam, 4
  call void @llvm.memset.p0.i64(ptr align 8 %i.aal, i8 0, i64 %i.aan, i1 false)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.012.i.i = phi ptr [ %i.aap, %.lr.ph.i.i ], [ %i.aal, %.lr.ph.preheader.i.i ] ; 3 uses
  store ptr null, ptr %.012.i.i, align 8, !tbaa !195
  %i.aao = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8
  store i32 0, ptr %i.aao, align 8, !tbaa !196
  %i.aap = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 16 ; 2 uses
  %.not.i.i610 = icmp eq ptr %i.aap, %i.aak
  br i1 %.not.i.i610, label %.sink.split.i.i, label %.lr.ph.i.i, !llvm.loop !1

.sink.split.i.i:                                  ; preds = %.lr.ph.i.i, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i, %bb.db
  store i32 %i.aac, ptr %i.zu, align 8, !tbaa !82
  br label %_ZN4llvm15SmallVectorImplINS_7SDValueEE6resizeEm.exit

_ZN4llvm15SmallVectorImplINS_7SDValueEE6resizeEm.exit: ; preds = %bb.da, %.sink.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #34
  %i.aaq = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  store ptr %i.aaq, ptr %22, align 8, !tbaa !54
  %i.aar = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 4 uses
  store i32 0, ptr %i.aar, align 8, !tbaa !82
  %i.aas = getelementptr inbounds nuw i8, ptr %22, i64 12
  store i32 4, ptr %i.aas, align 4, !tbaa !77
  %i.aat = icmp eq i32 %i.aac, 0
  br i1 %i.aat, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2Em.exit623.._crit_edge839_crit_edge, label %bb.de

bb.de:                                            ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE6resizeEm.exit
  %i.aau = icmp ugt i32 %i.aac, 4
  br i1 %i.aau, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i617, label %.lr.ph.preheader.i.i.i611

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i617: ; preds = %bb.de
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %22, ptr noundef nonnull %i.aaq, i64 noundef %i.aad, i64 noundef 16) #34
  %.pre.i.i.i618 = load i32, ptr %i.aar, align 8, !tbaa !82 ; 2 uses
  %.not11.i.i.i620 = icmp eq i32 %i.aac, %.pre.i.i.i618
  br i1 %.not11.i.i.i620, label %.lr.ph838, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i621

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i621: ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i617
  %.pre13.i.i.i619 = zext i32 %.pre.i.i.i618 to i64
  %.pre.i622 = load ptr, ptr %22, align 8, !tbaa !54
  br label %.lr.ph.preheader.i.i.i611

.lr.ph.preheader.i.i.i611:                        ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i621, %bb.de
  %i.aav = phi ptr [ %.pre.i622, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i621 ], [ %i.aaq, %bb.de ] ; 2 uses
  %.pre-phi.i.i3.i612 = phi i64 [ %.pre13.i.i.i619, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i621 ], [ 0, %bb.de ] ; 2 uses
  %i.aaw = getelementptr inbounds nuw [16 x i8], ptr %i.aav, i64 %i.aad
  %i.aax = getelementptr [16 x i8], ptr %i.aav, i64 %.pre-phi.i.i3.i612 ; 2 uses
  %i.aay = sub nsw i64 %i.aad, %.pre-phi.i.i3.i612
  %i.aaz = shl nsw i64 %i.aay, 4
  call void @llvm.memset.p0.i64(ptr align 8 %i.aax, i8 0, i64 %i.aaz, i1 false)
  br label %.lr.ph.i.i.i613

.lr.ph.i.i.i613:                                  ; preds = %.lr.ph.i.i.i613, %.lr.ph.preheader.i.i.i611
  %.012.i.i.i614 = phi ptr [ %i.abb, %.lr.ph.i.i.i613 ], [ %i.aax, %.lr.ph.preheader.i.i.i611 ] ; 3 uses
  store ptr null, ptr %.012.i.i.i614, align 8, !tbaa !195
  %i.aba = getelementptr inbounds nuw i8, ptr %.012.i.i.i614, i64 8
  store i32 0, ptr %i.aba, align 8, !tbaa !196
  %i.abb = getelementptr inbounds nuw i8, ptr %.012.i.i.i614, i64 16 ; 2 uses
  %.not.i.i.i615 = icmp eq ptr %i.abb, %i.aaw
  br i1 %.not.i.i.i615, label %.lr.ph838, label %.lr.ph.i.i.i613, !llvm.loop !1

_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2Em.exit623.._crit_edge839_crit_edge: ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE6resizeEm.exit
  %.pre874 = load ptr, ptr %22, align 8, !tbaa !54
  br label %._crit_edge839

.lr.ph838:                                        ; preds = %.lr.ph.i.i.i613, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i617
  store i32 %i.aac, ptr %i.aar, align 8, !tbaa !82
  %i.abc = load ptr, ptr %i.l, align 8, !tbaa !1102, !nonnull !51, !align !346
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 56
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !215
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 48
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !964 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 8
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !1114
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abg, i64 32
  %i.abk = load i32, ptr %i.abj, align 8, !tbaa !1115
  %i.abl = add i32 %i.abk, %.0496
  %i.abm = zext i32 %i.abl to i64
  %i.abn = getelementptr inbounds nuw [40 x i8], ptr %i.abi, i64 %i.abm
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 16
  %.sroa.0.0.copyload.i624 = load i8, ptr %i.abo, align 8, !tbaa !70
  %i.abp = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8
  %.sroa.0661.0.insert.ext = zext i8 %.sroa.0.0.copyload.i624 to i16
  %.sroa.0661.0.insert.insert = or disjoint i16 %.sroa.0661.0.insert.ext, 256
  br label %bb.dg

._crit_edge839.loopexit:                          ; preds = %_ZNK4llvm8TypeSizecvmEv.exit627
  %.pre875 = load i32, ptr %i.aar, align 8, !tbaa !82
  %i.abq = zext i32 %.pre875 to i64
  br label %._crit_edge839

._crit_edge839:                                   ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2Em.exit623.._crit_edge839_crit_edge, %._crit_edge839.loopexit
  %i.abr = phi i64 [ 0, %_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2Em.exit623.._crit_edge839_crit_edge ], [ %i.abq, %._crit_edge839.loopexit ]
  %i.abs = phi ptr [ %.pre874, %_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2Em.exit623.._crit_edge839_crit_edge ], [ %i.acw, %._crit_edge839.loopexit ]
  %i.abt = load ptr, ptr %i.l, align 8, !tbaa !1102, !nonnull !51, !align !346
  %i.abu = getelementptr inbounds nuw i8, ptr %2, i64 96
  store ptr %i.abs, ptr %26, align 8, !tbaa !199
  %i.abv = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %i.abr, ptr %i.abv, align 8, !tbaa !200
  %i.abw = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.abt, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %i.abu, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %26) #34 ; 2 uses
  %.fca.0.extract36 = extractvalue { ptr, i32 } %i.abw, 0
  %.fca.1.extract37 = extractvalue { ptr, i32 } %i.abw, 1
  store ptr %.fca.0.extract36, ptr %2, align 8, !tbaa !202
  store i32 %.fca.1.extract37, ptr %.sroa.496.0..sroa_idx, align 8, !tbaa !73
  %i.abx = load ptr, ptr %22, align 8, !tbaa !54  ; 2 uses
  %i.aby = icmp eq ptr %i.abx, %i.aaq
  br i1 %i.aby, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit625, label %bb.df

bb.df:                                            ; preds = %._crit_edge839
  call void @free(ptr noundef %i.abx) #34
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit625

_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit625: ; preds = %._crit_edge839, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #34
  br label %.critedge552

bb.dg:                                            ; preds = %.lr.ph838, %_ZNK4llvm8TypeSizecvmEv.exit627
  %indvars.iv865 = phi i64 [ 0, %.lr.ph838 ], [ %indvars.iv.next866, %_ZNK4llvm8TypeSizecvmEv.exit627 ] ; 6 uses
  %i.abz = load ptr, ptr %5, align 8, !tbaa !54
  %i.aca = getelementptr inbounds nuw [16 x i8], ptr %i.abz, i64 %indvars.iv865 ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 8
  %i.acc = load i8, ptr %i.acb, align 8, !tbaa !616, !range !50, !noundef !51
  %i.acd = trunc nuw i8 %i.acc to i1
  br i1 %i.acd, label %bb.dh, label %_ZNK4llvm8TypeSizecvmEv.exit626

bb.dh:                                            ; preds = %bb.dg
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.37) #36
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit626:                  ; preds = %bb.dg
  %i.ace = load ptr, ptr %i.l, align 8, !tbaa !1102, !nonnull !51, !align !346 ; 2 uses
  %i.acf = load i64, ptr %i.aca, align 8, !tbaa !617
  %i.acg = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ace, i64 noundef %i.acf, ptr noundef nonnull align 8 dereferenceable(12) %i.abp, i16 %i.aab, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #34 ; 2 uses
  %.fca.0.extract62 = extractvalue { ptr, i32 } %i.acg, 0
  %.fca.1.extract63 = extractvalue { ptr, i32 } %i.acg, 1
  %i.ach = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getMemBasePlusOffsetENS_7SDValueES1_RKNS_5SDLocENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.ace, ptr %.sroa.0766.0, i32 %.sroa.5767.0, ptr %.fca.0.extract62, i32 %.fca.1.extract63, ptr noundef nonnull align 8 dereferenceable(12) %i.abp, i32 1) #34 ; 2 uses
  %.fca.0.extract58 = extractvalue { ptr, i32 } %i.ach, 0
  %.fca.1.extract59 = extractvalue { ptr, i32 } %i.ach, 1
  %i.aci = load ptr, ptr %i.l, align 8, !tbaa !1102, !nonnull !51, !align !346 ; 2 uses
  %i.acj = load ptr, ptr %6, align 8, !tbaa !54
  %i.ack = getelementptr inbounds nuw [16 x i8], ptr %i.acj, i64 %indvars.iv865 ; 2 uses
  %.sroa.055.0.copyload = load i16, ptr %i.ack, align 8, !tbaa !79
  %.sroa.257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ack, i64 8
  %.sroa.257.0.copyload = load ptr, ptr %.sroa.257.0..sroa_idx, align 8, !tbaa !81
  %.sroa.053.0.copyload = load ptr, ptr %2, align 8, !tbaa !202
  %.sroa.254.0.copyload = load i32, ptr %.sroa.496.0..sroa_idx, align 8, !tbaa !73
  store ptr %.fca.0.extract58, ptr %23, align 8, !tbaa !202
  store i32 %.fca.1.extract59, ptr %.sroa.473.0..sroa_idx, align 8, !tbaa !73
  %i.acl = load ptr, ptr %5, align 8, !tbaa !54
  %i.acm = getelementptr inbounds nuw [16 x i8], ptr %i.acl, i64 %indvars.iv865 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 8
  %i.aco = load i8, ptr %i.acn, align 8, !tbaa !616, !range !50, !noundef !51
  %i.acp = trunc nuw i8 %i.aco to i1
  br i1 %i.acp, label %bb.di, label %_ZNK4llvm8TypeSizecvmEv.exit627

bb.di:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit626
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.37) #36
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit627:                  ; preds = %_ZNK4llvm8TypeSizecvmEv.exit626
  %i.acq = getelementptr inbounds nuw i8, ptr %i.aci, i64 56
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !215
  %i.acs = load i64, ptr %i.acm, align 8, !tbaa !617
  call void @_ZN4llvm18MachinePointerInfo13getFixedStackERNS_15MachineFunctionEil(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::MachinePointerInfo") align 8 %24, ptr noundef nonnull align 8 dereferenceable(1065) %i.acr, i32 noundef %.0496, i64 noundef %i.acs) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %25, i8 0, i64 40, i1 false)
  %i.act = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getLoadENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_18MachinePointerInfoENS_10MaybeAlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesEPKNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.aci, i16 %.sroa.055.0.copyload, ptr %.sroa.257.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %i.abp, ptr %.sroa.053.0.copyload, i32 %.sroa.254.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %23, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %24, i16 %.sroa.0661.0.insert.insert, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(40) %25, ptr noundef null) #34 ; 2 uses
  %.fca.0.extract48 = extractvalue { ptr, i32 } %i.act, 0 ; 2 uses
  %.fca.1.extract49 = extractvalue { ptr, i32 } %i.act, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #34
  %i.acu = load ptr, ptr %21, align 8, !tbaa !54
  %i.acv = getelementptr inbounds nuw [16 x i8], ptr %i.acu, i64 %indvars.iv865 ; 2 uses
  store ptr %.fca.0.extract48, ptr %i.acv, align 8, !tbaa !202
  %.sroa.5664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acv, i64 8
  store i32 %.fca.1.extract49, ptr %.sroa.5664.0..sroa_idx, align 8, !tbaa !73
  %i.acw = load ptr, ptr %22, align 8, !tbaa !54  ; 2 uses
  %i.acx = getelementptr inbounds nuw [16 x i8], ptr %i.acw, i64 %indvars.iv865 ; 2 uses
  store ptr %.fca.0.extract48, ptr %i.acx, align 8, !tbaa !202
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acx, i64 8
  store i32 1, ptr %.sroa.446.0..sroa_idx, align 8, !tbaa !73
  %indvars.iv.next866 = add nuw nsw i64 %indvars.iv865, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next866, %i.aad
  br i1 %exitcond.not, label %._crit_edge839.loopexit, label %bb.dg, !llvm.loop !2051

bb.dj:                                            ; preds = %bb.cz
  %i.acy = load ptr, ptr %6, align 8, !tbaa !54   ; 2 uses
  %i.acz = load i32, ptr %i.t, align 8, !tbaa !82 ; 2 uses
  %i.ada = zext i32 %i.acz to i64
  %.idx850 = shl nuw nsw i64 %i.ada, 4
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acy, i64 %.idx850
  %.not515840 = icmp eq i32 %i.acz, 0
  br i1 %.not515840, label %._crit_edge845.thread, label %.lr.ph844

.lr.ph844:                                        ; preds = %bb.dj
  %i.adc = load i16, ptr %i.fb, align 8           ; 2 uses
  %i.add = trunc i16 %i.adc to i1
  %i.ade = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sroa.6.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %27, i64 2
  %.sroa.8.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %27, i64 8
  %29 = and i16 %i.adc, 3
  %.not798 = icmp eq i16 %29, 0
  %.sroa.6654.0.insert.shift = select i1 %.not798, i64 0, i64 4294967296
  %.sroa.0652.0.insert.ext = select i1 %i.add, i64 3, i64 4
  %.sroa.0652.0.insert.insert = or disjoint i64 %.sroa.6654.0.insert.shift, %.sroa.0652.0.insert.ext
  br label %bb.dk

._crit_edge845:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit633
  %.pre876 = load i32, ptr %i.zu, align 8, !tbaa !82
  %i.adf = icmp eq i32 %.pre876, 0
  br i1 %i.adf, label %._crit_edge845.thread, label %.critedge552

bb.dk:                                            ; preds = %.lr.ph844, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit633
  %.0498842 = phi ptr [ %i.acy, %.lr.ph844 ], [ %i.aee, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit633 ] ; 4 uses
  %.0499841 = phi i32 [ 0, %.lr.ph844 ], [ %i.aed, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit633 ] ; 2 uses
  %.sroa.024.0.copyload = load i16, ptr %.0498842, align 8, !tbaa !79 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0498842, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6.0..sroa_idx26, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6.0..sroa_idx, i64 6, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0498842, i64 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !81 ; 3 uses
  %i.adg = load i32, ptr %i.ev, align 8, !tbaa !1075
  %i.adh = load ptr, ptr %1, align 8, !tbaa !42
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 736
  %i.adj = load ptr, ptr %i.adi, align 8
  %i.adk = call i16 %i.adj(ptr noundef nonnull align 8 dereferenceable(518435) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.adg, i16 %.sroa.024.0.copyload, ptr %.sroa.8.0.copyload) #34
  %i.adl = load i32, ptr %i.ev, align 8, !tbaa !1075
  %i.adm = load ptr, ptr %1, align 8, !tbaa !42
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 744
  %i.ado = load ptr, ptr %i.adn, align 8
  %i.adp = call noundef i32 %i.ado(ptr noundef nonnull align 8 dereferenceable(518435) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.adl, i16 %.sroa.024.0.copyload, ptr %.sroa.8.0.copyload) #34 ; 2 uses
  %i.adq = load ptr, ptr %i.l, align 8, !tbaa !1102, !nonnull !51, !align !346
  %i.adr = zext i32 %.0499841 to i64
  %i.ads = load ptr, ptr %20, align 8, !tbaa !54
  %i.adt = getelementptr inbounds nuw [16 x i8], ptr %i.ads, i64 %i.adr
  store i16 %.sroa.024.0.copyload, ptr %27, align 8, !tbaa !79
  store ptr %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx27, align 8, !tbaa !81
  %i.adu = load i32, ptr %i.ev, align 8, !tbaa !73
  %.sroa.0643.0.insert.ext = zext i32 %i.adu to i64
  %.sroa.0643.0.insert.insert = or disjoint i64 %.sroa.0643.0.insert.ext, 4294967296
  %i.adv = call fastcc { ptr, i32 } @_ZL16getCopyFromPartsRN4llvm12SelectionDAGERKNS_5SDLocEPKNS_7SDValueEjNS_3MVTENS_3EVTEPKNS_5ValueES5_St8optionalIjESD_INS_3ISD8NodeTypeEE(ptr noundef nonnull align 8 dereferenceable(920) %i.adq, ptr noundef nonnull align 8 dereferenceable(12) %i.ade, ptr noundef nonnull %i.adt, i32 noundef %i.adp, i16 %i.adk, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %27, ptr noundef null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %2, i64 %.sroa.0643.0.insert.insert, i64 %.sroa.0652.0.insert.insert) ; 2 uses
  %.fca.0.extract8 = extractvalue { ptr, i32 } %i.adv, 0 ; 2 uses
  %.fca.1.extract9 = extractvalue { ptr, i32 } %i.adv, 1 ; 2 uses
  %i.adw = load i32, ptr %i.zu, align 8, !tbaa !82 ; 2 uses
  %i.adx = load i32, ptr %i.zv, align 4, !tbaa !77
  %.not.i631 = icmp ult i32 %i.adw, %i.adx
  br i1 %.not.i631, label %bb.dm, label %bb.dl, !prof !89

bb.dl:                                            ; preds = %bb.dk
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr %.fca.0.extract8, i32 %.fca.1.extract9)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit633

bb.dm:                                            ; preds = %bb.dk
  %i.ady = zext i32 %i.adw to i64
  %i.adz = load ptr, ptr %21, align 8, !tbaa !54
  %i.aea = getelementptr inbounds nuw [16 x i8], ptr %i.adz, i64 %i.ady ; 2 uses
  store ptr %.fca.0.extract8, ptr %i.aea, align 1
  %.sroa.32.0..sroa_idx.i632 = getelementptr inbounds nuw i8, ptr %i.aea, i64 8
  store i32 %.fca.1.extract9, ptr %.sroa.32.0..sroa_idx.i632, align 1
  %i.aeb = load i32, ptr %i.zu, align 8, !tbaa !82
  %i.aec = add i32 %i.aeb, 1
  store i32 %i.aec, ptr %i.zu, align 8, !tbaa !82
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit633

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit633: ; preds = %bb.dl, %bb.dm
  %i.aed = add i32 %i.adp, %.0499841
  %i.aee = getelementptr inbounds nuw i8, ptr %.0498842, i64 16 ; 2 uses
  %.not515 = icmp eq ptr %i.aee, %i.adb
  br i1 %.not515, label %._crit_edge845, label %bb.dk

._crit_edge845.thread:                            ; preds = %bb.dj, %._crit_edge845
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.dn

.critedge552:                                     ; preds = %._crit_edge845, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit625
  %i.aef = load ptr, ptr %i.l, align 8, !tbaa !1102, !nonnull !51, !align !346 ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.aeh = load ptr, ptr %6, align 8, !tbaa !54
  %i.aei = load i32, ptr %i.t, align 8, !tbaa !82
  %i.aej = zext i32 %i.aei to i64
  %i.aek = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_8ArrayRefINS_3EVTEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.aef, ptr %i.aeh, i64 %i.aej) #34 ; 2 uses
  %i.ael = extractvalue { ptr, i32 } %i.aek, 0
  %i.aem = extractvalue { ptr, i32 } %i.aek, 1
  %i.aen = load ptr, ptr %21, align 8, !tbaa !54
  store ptr %i.aen, ptr %28, align 8, !tbaa !199
  %i.aeo = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.aep = load i32, ptr %i.zu, align 8, !tbaa !82
  %i.aeq = zext i32 %i.aep to i64
  store i64 %i.aeq, ptr %i.aeo, align 8, !tbaa !200
  %i.aer = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.aef, i32 noundef 58, ptr noundef nonnull align 8 dereferenceable(12) %i.aeg, ptr %i.ael, i32 %i.aem, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %28) #34 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.aer, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.aer, 1
  store ptr %.fca.0.extract, ptr %0, align 8, !tbaa !202
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !73
  br label %bb.dn

bb.dn:                                            ; preds = %._crit_edge845.thread, %.critedge552
  %.sink = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %i.aes = load ptr, ptr %21, align 8, !tbaa !54  ; 2 uses
  %i.aet = icmp eq ptr %i.aes, %i.zt
  br i1 %i.aet, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit634, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @free(ptr noundef %i.aes) #34
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit634

_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit634: ; preds = %bb.dn, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #34
  br label %bb.dp

bb.dp:                                            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit634, %_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit
  %i.aeu = load ptr, ptr %20, align 8, !tbaa !54  ; 2 uses
  %i.aev = icmp eq ptr %i.aeu, %i.na
  br i1 %i.aev, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit635, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void @free(ptr noundef %i.aeu) #34
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit635

_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit635: ; preds = %bb.dp, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  %i.aew = load ptr, ptr %10, align 8, !tbaa !54  ; 2 uses
  %i.aex = icmp eq ptr %i.aew, %i.es
  br i1 %i.aex, label %_ZN4llvm11SmallVectorINS_3ISD9OutputArgELj4EED2Ev.exit, label %bb.dr

bb.dr:                                            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit635
  call void @free(ptr noundef %i.aew) #34
  br label %_ZN4llvm11SmallVectorINS_3ISD9OutputArgELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_3ISD9OutputArgELj4EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit635, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.aey = load ptr, ptr %6, align 8, !tbaa !54   ; 2 uses
  %i.aez = icmp eq ptr %i.aey, %i.s
  br i1 %i.aez, label %_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit636, label %bb.ds

bb.ds:                                            ; preds = %_ZN4llvm11SmallVectorINS_3ISD9OutputArgELj4EED2Ev.exit
  call void @free(ptr noundef %i.aey) #34
  br label %_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit636

_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit636:  ; preds = %_ZN4llvm11SmallVectorINS_3ISD9OutputArgELj4EED2Ev.exit, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.afa = load ptr, ptr %5, align 8, !tbaa !54   ; 2 uses
  %i.afb = icmp eq ptr %i.afa, %i.i
  br i1 %i.afb, label %_ZN4llvm11SmallVectorINS_8TypeSizeELj4EED2Ev.exit637, label %bb.dt

bb.dt:                                            ; preds = %_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit636
  call void @free(ptr noundef %i.afa) #34
  br label %_ZN4llvm11SmallVectorINS_8TypeSizeELj4EED2Ev.exit637

_ZN4llvm11SmallVectorINS_8TypeSizeELj4EED2Ev.exit637: ; preds = %_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit636, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.afc = load ptr, ptr %4, align 8, !tbaa !54   ; 2 uses
  %i.afd = icmp eq ptr %i.afc, %i.f
  br i1 %i.afd, label %_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit638, label %bb.du

bb.du:                                            ; preds = %_ZN4llvm11SmallVectorINS_8TypeSizeELj4EED2Ev.exit637
  call void @free(ptr noundef %i.afc) #34
  br label %_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit638

_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit638: ; preds = %_ZN4llvm11SmallVectorINS_8TypeSizeELj4EED2Ev.exit637, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14TargetLowering16CallLoweringInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(4664) dereferenceable(4664) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4536
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #34
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2456
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2472
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4llvm11SmallVectorINS_3ISD8InputArgELj32EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit
  tail call void @free(ptr noundef %i.f) #34
  br label %_ZN4llvm11SmallVectorINS_3ISD8InputArgELj32EED2Ev.exit

_ZN4llvm11SmallVectorINS_3ISD8InputArgELj32EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !54   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN4llvm11SmallVectorINS_7SDValueELj32EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorINS_3ISD8InputArgELj32EED2Ev.exit
  tail call void @free(ptr noundef %i.j) #34
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj32EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj32EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_3ISD8InputArgELj32EED2Ev.exit, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54   ; 2 uses
end_hunk_0

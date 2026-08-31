Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SelectionDAGBuilder?download=true
inline.NumInlined: 16572
inline.NumDeleted: 6374
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZNK4llvm14TargetLowering11LowerCallToERNS0_16CallLoweringInfoE:bb.a
  %i.aai = sub nsw i64 %i.zz, %.pre-phi.i.i
  %i.aaj = shl nsw i64 %i.aai, 4
  call void @llvm.memset.p0.i64(ptr align 8 %i.aah, i8 0, i64 %i.aaj, i1 false)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.012.i.i = phi ptr [ %i.aal, %.lr.ph.i.i ], [ %i.aah, %.lr.ph.preheader.i.i ] ; 3 uses
  store ptr null, ptr %.012.i.i, align 8, !tbaa !168
  %i.aak = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8
  store i32 0, ptr %i.aak, align 8, !tbaa !169
  %i.aal = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 16 ; 2 uses
  %.not.i.i610 = icmp eq ptr %i.aal, %i.aag
  br i1 %.not.i.i610, label %.sink.split.i.i, label %.lr.ph.i.i, !llvm.loop !170

.sink.split.i.i:                                  ; preds = %.lr.ph.i.i, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i, %bb.db
  store i32 %i.zy, ptr %i.zq, align 8, !tbaa !54
  br label %_ZN4llvm15SmallVectorImplINS_7SDValueEE6resizeEm.exit

_ZN4llvm15SmallVectorImplINS_7SDValueEE6resizeEm.exit: ; preds = %bb.da, %.sink.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #34
  %i.aam = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  store ptr %i.aam, ptr %22, align 8, !tbaa !21
  %i.aan = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 4 uses
  store i32 0, ptr %i.aan, align 8, !tbaa !54
  %i.aao = getelementptr inbounds nuw i8, ptr %22, i64 12
  store i32 4, ptr %i.aao, align 4, !tbaa !49
  %i.aap = icmp eq i32 %i.zy, 0
  br i1 %i.aap, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2Em.exit623.._crit_edge840_crit_edge, label %bb.de

bb.de:                                            ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE6resizeEm.exit
  %i.aaq = icmp ugt i32 %i.zy, 4
  br i1 %i.aaq, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i617, label %.lr.ph.preheader.i.i.i611

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i617: ; preds = %bb.de
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %22, ptr noundef nonnull %i.aam, i64 noundef %i.zz, i64 noundef 16) #34
  %.pre.i.i.i618 = load i32, ptr %i.aan, align 8, !tbaa !54 ; 2 uses
  %.not11.i.i.i620 = icmp eq i32 %i.zy, %.pre.i.i.i618
  br i1 %.not11.i.i.i620, label %.lr.ph839, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i621

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i621: ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i617
  %.pre13.i.i.i619 = zext i32 %.pre.i.i.i618 to i64
  %.pre.i622 = load ptr, ptr %22, align 8, !tbaa !21
  br label %.lr.ph.preheader.i.i.i611

.lr.ph.preheader.i.i.i611:                        ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i621, %bb.de
  %i.aar = phi ptr [ %.pre.i622, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i621 ], [ %i.aam, %bb.de ] ; 2 uses
  %.pre-phi.i.i3.i612 = phi i64 [ %.pre13.i.i.i619, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i621 ], [ 0, %bb.de ] ; 2 uses
  %i.aas = getelementptr inbounds nuw [16 x i8], ptr %i.aar, i64 %i.zz
  %i.aat = getelementptr [16 x i8], ptr %i.aar, i64 %.pre-phi.i.i3.i612 ; 2 uses
  %i.aau = sub nsw i64 %i.zz, %.pre-phi.i.i3.i612
  %i.aav = shl nsw i64 %i.aau, 4
  call void @llvm.memset.p0.i64(ptr align 8 %i.aat, i8 0, i64 %i.aav, i1 false)
  br label %.lr.ph.i.i.i613

.lr.ph.i.i.i613:                                  ; preds = %.lr.ph.i.i.i613, %.lr.ph.preheader.i.i.i611
  %.012.i.i.i614 = phi ptr [ %i.aax, %.lr.ph.i.i.i613 ], [ %i.aat, %.lr.ph.preheader.i.i.i611 ] ; 3 uses
  store ptr null, ptr %.012.i.i.i614, align 8, !tbaa !168
  %i.aaw = getelementptr inbounds nuw i8, ptr %.012.i.i.i614, i64 8
  store i32 0, ptr %i.aaw, align 8, !tbaa !169
  %i.aax = getelementptr inbounds nuw i8, ptr %.012.i.i.i614, i64 16 ; 2 uses
  %.not.i.i.i615 = icmp eq ptr %i.aax, %i.aas
  br i1 %.not.i.i.i615, label %.lr.ph839, label %.lr.ph.i.i.i613, !llvm.loop !170

_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2Em.exit623.._crit_edge840_crit_edge: ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE6resizeEm.exit
  %.pre875.a = load ptr, ptr %22, align 8, !tbaa !21
  br label %._crit_edge840

.lr.ph839:                                        ; preds = %.lr.ph.i.i.i613, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i617
  store i32 %i.zy, ptr %i.aan, align 8, !tbaa !54
  %i.aay = load ptr, ptr %i.l, align 8, !tbaa !1822, !nonnull !19, !align !325
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 56
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !194
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 48
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !1683 ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 8
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !1847
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abc, i64 32
  %i.abg = load i32, ptr %i.abf, align 8, !tbaa !1848
  %i.abh = add i32 %i.abg, %.0496
  %i.abi = zext i32 %i.abh to i64
  %i.abj = getelementptr inbounds nuw [40 x i8], ptr %i.abe, i64 %i.abi
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 16
  %.sroa.0.0.copyload.i624 = load i8, ptr %i.abk, align 8, !tbaa !38
  %i.abl = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8
  %.sroa.0661.0.insert.ext = zext i8 %.sroa.0.0.copyload.i624 to i16
  %.sroa.0661.0.insert.insert = or disjoint i16 %.sroa.0661.0.insert.ext, 256
  br label %bb.dg

._crit_edge840.loopexit:                          ; preds = %_ZNK4llvm8TypeSizecvmEv.exit627
  %.pre876.a = load i32, ptr %i.aan, align 8, !tbaa !54
  %i.abm = zext i32 %.pre876.a to i64
  br label %._crit_edge840

._crit_edge840:                                   ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2Em.exit623.._crit_edge840_crit_edge, %._crit_edge840.loopexit
  %i.abn = phi i64 [ 0, %_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2Em.exit623.._crit_edge840_crit_edge ], [ %i.abm, %._crit_edge840.loopexit ]
  %i.abo = phi ptr [ %.pre875.a, %_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2Em.exit623.._crit_edge840_crit_edge ], [ %i.acs, %._crit_edge840.loopexit ]
  %i.abp = load ptr, ptr %i.l, align 8, !tbaa !1822, !nonnull !19, !align !325
  %i.abq = getelementptr inbounds nuw i8, ptr %2, i64 96
  store ptr %i.abo, ptr %26, align 8, !tbaa !171
  %i.abr = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %i.abn, ptr %i.abr, align 8, !tbaa !174
  %i.abs = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.abp, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %i.abq, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %26) #34 ; 2 uses
  %.fca.0.extract36 = extractvalue { ptr, i32 } %i.abs, 0
  %.fca.1.extract37 = extractvalue { ptr, i32 } %i.abs, 1
  store ptr %.fca.0.extract36, ptr %2, align 8, !tbaa !176
  store i32 %.fca.1.extract37, ptr %.sroa.496.0..sroa_idx, align 8, !tbaa !43
  %i.abt = load ptr, ptr %22, align 8, !tbaa !21  ; 2 uses
  %i.abu = icmp eq ptr %i.abt, %i.aam
  br i1 %i.abu, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit625, label %bb.df

bb.df:                                            ; preds = %._crit_edge840
  call void @free(ptr noundef %i.abt) #34
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit625

_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit625: ; preds = %._crit_edge840, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #34
  br label %.critedge552

bb.dg:                                            ; preds = %.lr.ph839, %_ZNK4llvm8TypeSizecvmEv.exit627
  %indvars.iv866 = phi i64 [ 0, %.lr.ph839 ], [ %indvars.iv.next867, %_ZNK4llvm8TypeSizecvmEv.exit627 ] ; 6 uses
  %i.abv = load ptr, ptr %5, align 8, !tbaa !21
  %i.abw = getelementptr inbounds nuw [16 x i8], ptr %i.abv, i64 %indvars.iv866 ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 8
  %i.aby = load i8, ptr %i.abx, align 8, !tbaa !876, !range !18, !noundef !19
  %i.abz = trunc nuw i8 %i.aby to i1
  br i1 %i.abz, label %bb.dh, label %_ZNK4llvm8TypeSizecvmEv.exit626

bb.dh:                                            ; preds = %bb.dg
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.37) #36
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit626:                  ; preds = %bb.dg
  %i.aca = load ptr, ptr %i.l, align 8, !tbaa !1822, !nonnull !19, !align !325 ; 2 uses
  %i.acb = load i64, ptr %i.abw, align 8, !tbaa !878
  %i.acc = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.aca, i64 noundef %i.acb, ptr noundef nonnull align 8 dereferenceable(12) %i.abl, i16 %i.zx, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #34 ; 2 uses
  %.fca.0.extract62 = extractvalue { ptr, i32 } %i.acc, 0
  %.fca.1.extract63 = extractvalue { ptr, i32 } %i.acc, 1
  %i.acd = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getMemBasePlusOffsetENS_7SDValueES1_RKNS_5SDLocENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.aca, ptr %.sroa.0766.0, i32 %.sroa.5767.0, ptr %.fca.0.extract62, i32 %.fca.1.extract63, ptr noundef nonnull align 8 dereferenceable(12) %i.abl, i32 1) #34 ; 2 uses
  %.fca.0.extract58 = extractvalue { ptr, i32 } %i.acd, 0
  %.fca.1.extract59 = extractvalue { ptr, i32 } %i.acd, 1
  %i.ace = load ptr, ptr %i.l, align 8, !tbaa !1822, !nonnull !19, !align !325 ; 2 uses
  %i.acf = load ptr, ptr %6, align 8, !tbaa !21
  %i.acg = getelementptr inbounds nuw [16 x i8], ptr %i.acf, i64 %indvars.iv866 ; 2 uses
  %.sroa.055.0.copyload = load i16, ptr %i.acg, align 8, !tbaa !50
  %.sroa.257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acg, i64 8
  %.sroa.257.0.copyload = load ptr, ptr %.sroa.257.0..sroa_idx, align 8, !tbaa !52
  %.sroa.053.0.copyload = load ptr, ptr %2, align 8, !tbaa !176
  %.sroa.254.0.copyload = load i32, ptr %.sroa.496.0..sroa_idx, align 8, !tbaa !43
  store ptr %.fca.0.extract58, ptr %23, align 8, !tbaa !176
  store i32 %.fca.1.extract59, ptr %.sroa.473.0..sroa_idx, align 8, !tbaa !43
  %i.ach = load ptr, ptr %5, align 8, !tbaa !21
  %i.aci = getelementptr inbounds nuw [16 x i8], ptr %i.ach, i64 %indvars.iv866 ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 8
  %i.ack = load i8, ptr %i.acj, align 8, !tbaa !876, !range !18, !noundef !19
  %i.acl = trunc nuw i8 %i.ack to i1
  br i1 %i.acl, label %bb.di, label %_ZNK4llvm8TypeSizecvmEv.exit627

bb.di:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit626
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.37) #36
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit627:                  ; preds = %_ZNK4llvm8TypeSizecvmEv.exit626
  %i.acm = getelementptr inbounds nuw i8, ptr %i.ace, i64 56
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !194
  %i.aco = load i64, ptr %i.aci, align 8, !tbaa !878
  call void @_ZN4llvm18MachinePointerInfo13getFixedStackERNS_15MachineFunctionEil(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::MachinePointerInfo") align 8 %24, ptr noundef nonnull align 8 dereferenceable(1065) %i.acn, i32 noundef %.0496, i64 noundef %i.aco) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %25, i8 0, i64 40, i1 false)
  %i.acp = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getLoadENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_18MachinePointerInfoENS_10MaybeAlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesEPKNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.ace, i16 %.sroa.055.0.copyload, ptr %.sroa.257.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %i.abl, ptr %.sroa.053.0.copyload, i32 %.sroa.254.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %23, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %24, i16 %.sroa.0661.0.insert.insert, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(40) %25, ptr noundef null) #34 ; 2 uses
  %.fca.0.extract48 = extractvalue { ptr, i32 } %i.acp, 0 ; 2 uses
  %.fca.1.extract49 = extractvalue { ptr, i32 } %i.acp, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #34
  %i.acq = load ptr, ptr %21, align 8, !tbaa !21
  %i.acr = getelementptr inbounds nuw [16 x i8], ptr %i.acq, i64 %indvars.iv866 ; 2 uses
  store ptr %.fca.0.extract48, ptr %i.acr, align 8, !tbaa !176
  %.sroa.5664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acr, i64 8
  store i32 %.fca.1.extract49, ptr %.sroa.5664.0..sroa_idx, align 8, !tbaa !43
  %i.acs = load ptr, ptr %22, align 8, !tbaa !21  ; 2 uses
  %i.act = getelementptr inbounds nuw [16 x i8], ptr %i.acs, i64 %indvars.iv866 ; 2 uses
  store ptr %.fca.0.extract48, ptr %i.act, align 8, !tbaa !176
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.act, i64 8
  store i32 1, ptr %.sroa.446.0..sroa_idx, align 8, !tbaa !43
  %indvars.iv.next867 = add nuw nsw i64 %indvars.iv866, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next867, %i.zz
  br i1 %exitcond.not, label %._crit_edge840.loopexit, label %bb.dg, !llvm.loop !1849

bb.dj:                                            ; preds = %bb.cz
  %i.acu = load ptr, ptr %6, align 8, !tbaa !21   ; 2 uses
  %i.acv = load i32, ptr %i.t, align 8, !tbaa !54 ; 2 uses
  %i.acw = zext i32 %i.acv to i64
  %.idx851 = shl nuw nsw i64 %i.acw, 4
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acu, i64 %.idx851
  %.not515841 = icmp eq i32 %i.acv, 0
  br i1 %.not515841, label %._crit_edge846.thread, label %.lr.ph845

.lr.ph845:                                        ; preds = %bb.dj
  %i.acy = load i16, ptr %i.ex, align 8           ; 2 uses
  %i.acz = lshr i16 %i.acy, 1
  %i.ada = and i16 %i.acz, 1
  %i.adb = trunc i16 %i.acy to i1                 ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sroa.6.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %27, i64 2
  %.sroa.8.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %27, i64 8
  %narrow = select i1 %i.adb, i16 1, i16 %i.ada
  %.sroa.6654.0.insert.ext = zext nneg i16 %narrow to i64
  %i.add = shl nuw nsw i64 %.sroa.6654.0.insert.ext, 32
  %.sroa.0652.0.insert.ext = select i1 %i.adb, i64 3, i64 4
  %.sroa.0652.0.insert.insert = or disjoint i64 %i.add, %.sroa.0652.0.insert.ext
  br label %bb.dk

._crit_edge846:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit633
  %.pre877 = load i32, ptr %i.zq, align 8, !tbaa !54
  %i.ade = icmp eq i32 %.pre877, 0
  br i1 %i.ade, label %._crit_edge846.thread, label %.critedge552

bb.dk:                                            ; preds = %.lr.ph845, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit633
  %.0498843 = phi ptr [ %i.acu, %.lr.ph845 ], [ %i.aed, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit633 ] ; 4 uses
  %.0499842 = phi i32 [ 0, %.lr.ph845 ], [ %i.aec, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit633 ] ; 2 uses
  %.sroa.024.0.copyload = load i16, ptr %.0498843, align 8, !tbaa !50 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0498843, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6.0..sroa_idx26, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6.0..sroa_idx, i64 6, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0498843, i64 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !52 ; 3 uses
  %i.adf = load i32, ptr %i.er, align 8, !tbaa !1794
  %i.adg = load ptr, ptr %1, align 8, !tbaa !8
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 736
  %i.adi = load ptr, ptr %i.adh, align 8
  %i.adj = call i16 %i.adi(ptr noundef nonnull align 8 dereferenceable(518435) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.adf, i16 %.sroa.024.0.copyload, ptr %.sroa.8.0.copyload) #34
  %i.adk = load i32, ptr %i.er, align 8, !tbaa !1794
  %i.adl = load ptr, ptr %1, align 8, !tbaa !8
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 744
  %i.adn = load ptr, ptr %i.adm, align 8
  %i.ado = call noundef i32 %i.adn(ptr noundef nonnull align 8 dereferenceable(518435) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.adk, i16 %.sroa.024.0.copyload, ptr %.sroa.8.0.copyload) #34 ; 2 uses
  %i.adp = load ptr, ptr %i.l, align 8, !tbaa !1822, !nonnull !19, !align !325
  %i.adq = zext i32 %.0499842 to i64
  %i.adr = load ptr, ptr %20, align 8, !tbaa !21
  %i.ads = getelementptr inbounds nuw [16 x i8], ptr %i.adr, i64 %i.adq
  store i16 %.sroa.024.0.copyload, ptr %27, align 8, !tbaa !50
  store ptr %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx27, align 8, !tbaa !52
  %i.adt = load i32, ptr %i.er, align 8, !tbaa !43
  %.sroa.0643.0.insert.ext = zext i32 %i.adt to i64
  %.sroa.0643.0.insert.insert = or disjoint i64 %.sroa.0643.0.insert.ext, 4294967296
  %i.adu = call fastcc { ptr, i32 } @_ZL16getCopyFromPartsRN4llvm12SelectionDAGERKNS_5SDLocEPKNS_7SDValueEjNS_3MVTENS_3EVTEPKNS_5ValueES5_St8optionalIjESD_INS_3ISD8NodeTypeEE(ptr noundef nonnull align 8 dereferenceable(920) %i.adp, ptr noundef nonnull align 8 dereferenceable(12) %i.adc, ptr noundef nonnull %i.ads, i32 noundef %i.ado, i16 %i.adj, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %27, ptr noundef null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %2, i64 %.sroa.0643.0.insert.insert, i64 %.sroa.0652.0.insert.insert) ; 2 uses
  %.fca.0.extract8 = extractvalue { ptr, i32 } %i.adu, 0 ; 2 uses
  %.fca.1.extract9 = extractvalue { ptr, i32 } %i.adu, 1 ; 2 uses
  %i.adv = load i32, ptr %i.zq, align 8, !tbaa !54 ; 2 uses
  %i.adw = load i32, ptr %i.zr, align 4, !tbaa !49
  %.not.i631 = icmp ult i32 %i.adv, %i.adw
  br i1 %.not.i631, label %bb.dm, label %bb.dl, !prof !61

bb.dl:                                            ; preds = %bb.dk
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr %.fca.0.extract8, i32 %.fca.1.extract9)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit633

bb.dm:                                            ; preds = %bb.dk
  %i.adx = zext i32 %i.adv to i64
  %i.ady = load ptr, ptr %21, align 8, !tbaa !21
  %i.adz = getelementptr inbounds nuw [16 x i8], ptr %i.ady, i64 %i.adx ; 2 uses
  store ptr %.fca.0.extract8, ptr %i.adz, align 1
  %.sroa.32.0..sroa_idx.i632 = getelementptr inbounds nuw i8, ptr %i.adz, i64 8
  store i32 %.fca.1.extract9, ptr %.sroa.32.0..sroa_idx.i632, align 1
  %i.aea = load i32, ptr %i.zq, align 8, !tbaa !54
  %i.aeb = add i32 %i.aea, 1
  store i32 %i.aeb, ptr %i.zq, align 8, !tbaa !54
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit633

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit633: ; preds = %bb.dl, %bb.dm
  %i.aec = add i32 %i.ado, %.0499842
  %i.aed = getelementptr inbounds nuw i8, ptr %.0498843, i64 16 ; 2 uses
  %.not515 = icmp eq ptr %i.aed, %i.acx
  br i1 %.not515, label %._crit_edge846, label %bb.dk

._crit_edge846.thread:                            ; preds = %bb.dj, %._crit_edge846
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.dn

.critedge552:                                     ; preds = %._crit_edge846, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit625
  %i.aee = load ptr, ptr %i.l, align 8, !tbaa !1822, !nonnull !19, !align !325 ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.aeg = load ptr, ptr %6, align 8, !tbaa !21
  %i.aeh = load i32, ptr %i.t, align 8, !tbaa !54
  %i.aei = zext i32 %i.aeh to i64
  %i.aej = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_8ArrayRefINS_3EVTEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.aee, ptr %i.aeg, i64 %i.aei) #34 ; 2 uses
  %i.aek = extractvalue { ptr, i32 } %i.aej, 0
  %i.ael = extractvalue { ptr, i32 } %i.aej, 1
  %i.aem = load ptr, ptr %21, align 8, !tbaa !21
  store ptr %i.aem, ptr %28, align 8, !tbaa !171
  %i.aen = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.aeo = load i32, ptr %i.zq, align 8, !tbaa !54
  %i.aep = zext i32 %i.aeo to i64
  store i64 %i.aep, ptr %i.aen, align 8, !tbaa !174
  %i.aeq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.aee, i32 noundef 58, ptr noundef nonnull align 8 dereferenceable(12) %i.aef, ptr %i.aek, i32 %i.ael, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %28) #34 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.aeq, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.aeq, 1
  store ptr %.fca.0.extract, ptr %0, align 8, !tbaa !176
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !43
  br label %bb.dn

bb.dn:                                            ; preds = %._crit_edge846.thread, %.critedge552
  %.sink = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %i.aer = load ptr, ptr %21, align 8, !tbaa !21  ; 2 uses
  %i.aes = icmp eq ptr %i.aer, %i.zp
  br i1 %i.aes, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit634, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @free(ptr noundef %i.aer) #34
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit634

_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit634: ; preds = %bb.dn, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #34
  br label %bb.dp

bb.dp:                                            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit634, %_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit
  %i.aet = load ptr, ptr %20, align 8, !tbaa !21  ; 2 uses
  %i.aeu = icmp eq ptr %i.aet, %i.mw
  br i1 %i.aeu, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit635, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void @free(ptr noundef %i.aet) #34
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit635

_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit635: ; preds = %bb.dp, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  %i.aev = load ptr, ptr %10, align 8, !tbaa !21  ; 2 uses
  %i.aew = icmp eq ptr %i.aev, %i.eo
  br i1 %i.aew, label %_ZN4llvm11SmallVectorINS_3ISD9OutputArgELj4EED2Ev.exit, label %bb.dr

bb.dr:                                            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit635
  call void @free(ptr noundef %i.aev) #34
  br label %_ZN4llvm11SmallVectorINS_3ISD9OutputArgELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_3ISD9OutputArgELj4EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit635, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.aex = load ptr, ptr %6, align 8, !tbaa !21   ; 2 uses
  %i.aey = icmp eq ptr %i.aex, %i.s
  br i1 %i.aey, label %_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit636, label %bb.ds

bb.ds:                                            ; preds = %_ZN4llvm11SmallVectorINS_3ISD9OutputArgELj4EED2Ev.exit
  call void @free(ptr noundef %i.aex) #34
  br label %_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit636

_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit636:  ; preds = %_ZN4llvm11SmallVectorINS_3ISD9OutputArgELj4EED2Ev.exit, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.aez = load ptr, ptr %5, align 8, !tbaa !21   ; 2 uses
  %i.afa = icmp eq ptr %i.aez, %i.i
  br i1 %i.afa, label %_ZN4llvm11SmallVectorINS_8TypeSizeELj4EED2Ev.exit637, label %bb.dt

bb.dt:                                            ; preds = %_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit636
  call void @free(ptr noundef %i.aez) #34
  br label %_ZN4llvm11SmallVectorINS_8TypeSizeELj4EED2Ev.exit637

_ZN4llvm11SmallVectorINS_8TypeSizeELj4EED2Ev.exit637: ; preds = %_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit636, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.afb = load ptr, ptr %4, align 8, !tbaa !21   ; 2 uses
  %i.afc = icmp eq ptr %i.afb, %i.f
  br i1 %i.afc, label %_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit638, label %bb.du

bb.du:                                            ; preds = %_ZN4llvm11SmallVectorINS_8TypeSizeELj4EED2Ev.exit637
  call void @free(ptr noundef %i.afb) #34
  br label %_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit638

_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit638: ; preds = %_ZN4llvm11SmallVectorINS_8TypeSizeELj4EED2Ev.exit637, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14TargetLowering16CallLoweringInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(4664) dereferenceable(4664) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4536
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #34
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2456
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2472
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4llvm11SmallVectorINS_3ISD8InputArgELj32EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit
  tail call void @free(ptr noundef %i.f) #34
  br label %_ZN4llvm11SmallVectorINS_3ISD8InputArgELj32EED2Ev.exit

_ZN4llvm11SmallVectorINS_3ISD8InputArgELj32EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN4llvm11SmallVectorINS_7SDValueELj32EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorINS_3ISD8InputArgELj32EED2Ev.exit
  tail call void @free(ptr noundef %i.j) #34
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj32EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj32EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_3ISD8InputArgELj32EED2Ev.exit, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = icmp eq ptr %i.n, %i.o
end_hunk_0

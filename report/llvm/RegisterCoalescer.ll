Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RegisterCoalescer?download=true
inline.NumInlined: 5517
inline.NumDeleted: 2347
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12_GLOBAL__N_117RegisterCoalescer8joinCopyEPN4llvm12MachineInstrERbRNS1_15SmallPtrSetImplIS3_EE:bb.a
bb.gn:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_117RegisterCoalescer9PHIValPosENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit.i.i
  %.sroa.03.0.copyload.i.i = load i64, ptr %i.bxv, align 8, !tbaa !63 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i277 = load i64, ptr %i.bxw, align 8 ; 2 uses
  %i.byc = and i64 %.0.copyload.i.i.i.i.i.i.i.i277, -8
  %i.byd = inttoptr i64 %i.byc to ptr
  %i.bye = getelementptr inbounds nuw i8, ptr %i.byd, i64 24
  %i.byf = load i32, ptr %i.bye, align 8, !tbaa !714
  %i.byg = trunc i64 %.0.copyload.i.i.i.i.i.i.i.i277 to i32
  %i.byh = lshr i32 %i.byg, 1
  %i.byi = and i32 %i.byh, 3
  %i.byj = or i32 %i.byi, %i.byf
  %i.byk = and i64 %.sroa.03.0.copyload.i.i, -8
  %i.byl = inttoptr i64 %i.byk to ptr
  %i.bym = getelementptr inbounds nuw i8, ptr %i.byl, i64 24
  %i.byn = load i32, ptr %i.bym, align 8, !tbaa !714
  %i.byo = trunc i64 %.sroa.03.0.copyload.i.i to i32
  %i.byp = lshr i32 %i.byo, 1
  %i.byq = and i32 %i.byp, 3
  %i.byr = or i32 %i.byn, %i.byq
  %i.bys = icmp ugt i32 %i.byj, %i.byr
  br i1 %i.bys, label %bb.gs, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.byt = load i32, ptr %i.bkk, align 4, !tbaa !186 ; 2 uses
  %.not128.i.i = icmp eq i32 %i.byt, 0
  %i.byu = load i32, ptr %i.blv, align 8
  %.not129.i.i = icmp eq i32 %i.byu, 0
  %or.cond404 = select i1 %.not128.i.i, i1 %.not129.i.i, i1 false
  br i1 %or.cond404, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.byv = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i, i64 20
  %i.byw = load i32, ptr %i.byv, align 4, !tbaa !615 ; 2 uses
  %.not130.i.i = icmp eq i32 %i.byw, 0
  %.not131.i.i = icmp eq i32 %i.byw, %i.byt
  %or.cond.i.i = or i1 %.not130.i.i, %.not131.i.i
  br i1 %or.cond.i.i, label %bb.gq, label %bb.gs

bb.gq:                                            ; preds = %bb.go, %bb.gp
  %.sroa.0.0.copyload.i238.i.i = load i32, ptr %i.e, align 8, !tbaa !188
  %i.byx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i, i64 16
  store i32 %.sroa.0.0.copyload.i238.i.i, ptr %i.byx, align 8, !tbaa !188
  %i.byy = load i32, ptr %i.bkk, align 4, !tbaa !186 ; 2 uses
  %.not132.i.i = icmp eq i32 %i.byy, 0
  br i1 %.not132.i.i, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.byz = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i, i64 20
  store i32 %i.byy, ptr %i.byz, align 4, !tbaa !615
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq, %bb.gp, %bb.gn, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_117RegisterCoalescer9PHIValPosENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit.i.i
  %i.bza = getelementptr inbounds nuw i8, ptr %.0121294.i.i, i64 4 ; 2 uses
  %.not127.i.i = icmp eq ptr %i.bza, %i.bvb
  br i1 %.not127.i.i, label %._crit_edge297.i.i, label %bb.gk

bb.gt:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_11SmallVectorIjLj2EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E4findERKS2_.exit.i
  %i.bzb = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8 ; 2 uses
  %i.bzc = load ptr, ptr %i.bzb, align 8, !tbaa !21
  %i.bzd = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 16
  %i.bze = load i32, ptr %i.bzd, align 8, !tbaa !281
  %i.bzf = zext i32 %i.bze to i64
  %i.bzg = getelementptr inbounds nuw [4 x i8], ptr %i.bzc, i64 %i.bzf
  %i.bzh = load ptr, ptr %14, align 8, !tbaa !21  ; 2 uses
  %i.bzi = load i32, ptr %i.bvh, align 8, !tbaa !281
  %i.bzj = zext i32 %i.bzi to i64
  %i.bzk = getelementptr inbounds nuw [4 x i8], ptr %i.bzh, i64 %i.bzj
  %i.bzl = call noundef ptr @_ZN4llvm15SmallVectorImplIjE6insertIPjvEES3_S3_T_S4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bzb, ptr noundef %i.bzg, ptr noundef %i.bzh, ptr noundef %i.bzk) ; 0 uses
  br label %bb.gw

bb.gu:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_11SmallVectorIjLj2EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E4findERKS2_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store i32 %.sroa.0.0.copyload.i237.i.i, ptr %16, align 4
  call void @_ZNSt4pairIN4llvm8RegisterENS0_11SmallVectorIjLj2EEEEC2IS1_RS3_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS8_S9_EEEbE4typeELb1EEEOS8_OS9_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 4 dereferenceable(4) %16, ptr noundef nonnull align 8 dereferenceable(24) %14)
  %i.bzm = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.bzn = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_11SmallVectorIjLj2EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E24lookupOrInsertIntoBucketIS2_JS4_EEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.btr, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(24) %i.bzm), !noalias !1027 ; 0 uses
  %i.bzo = load ptr, ptr %i.bzm, align 8, !tbaa !21 ; 2 uses
  %i.bzp = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.bzq = icmp eq ptr %i.bzo, %i.bzp
  br i1 %i.bzq, label %_ZNSt4pairIN4llvm8RegisterENS0_11SmallVectorIjLj2EEEED2Ev.exit.i.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  call void @free(ptr noundef %i.bzo) #22
  br label %_ZNSt4pairIN4llvm8RegisterENS0_11SmallVectorIjLj2EEEED2Ev.exit.i.i

_ZNSt4pairIN4llvm8RegisterENS0_11SmallVectorIjLj2EEEED2Ev.exit.i.i: ; preds = %bb.gv, %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.gw

bb.gw:                                            ; preds = %_ZNSt4pairIN4llvm8RegisterENS0_11SmallVectorIjLj2EEEED2Ev.exit.i.i, %bb.gt
  %i.bzr = load ptr, ptr %14, align 8, !tbaa !21  ; 2 uses
  %i.bzs = icmp eq ptr %i.bzr, %i.bvg
  br i1 %i.bzs, label %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit.i.i, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  call void @free(ptr noundef %i.bzr) #22
  br label %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIjLj2EED2Ev.exit.i.i:        ; preds = %bb.gx, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.gy

bb.gy:                                            ; preds = %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_11SmallVectorIjLj2EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E4findERKS2_.exit43.i
  %.val137.i.i = load ptr, ptr %i.bml, align 8, !tbaa !21
  %.val136.i.i = load ptr, ptr %i.bla, align 8, !tbaa !21
  call void @_ZN4llvm9LiveRange4joinERS0_PKiS3_RNS_15SmallVectorImplIPNS_6VNInfoEEE(ptr noundef nonnull align 8 dereferenceable(104) %.0.i158.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i21.i, ptr noundef %.val137.i.i, ptr noundef %.val136.i.i, ptr noundef nonnull align 8 dereferenceable(16) %9) #22
  %i.bzt = load ptr, ptr %i.bka, align 8, !tbaa !296
  %.sroa.0.0.copyload.i241.i.i = load i32, ptr %i.bng, align 8, !tbaa !188
  call void @_ZNK4llvm19MachineRegisterInfo14clearKillFlagsENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.bzt, i32 %.sroa.0.0.copyload.i241.i.i) #22
  %i.bzu = load ptr, ptr %i.bka, align 8, !tbaa !296
  %.sroa.0.0.copyload.i242.i.i = load i32, ptr %i.bnr, align 8, !tbaa !188
  call void @_ZNK4llvm19MachineRegisterInfo14clearKillFlagsENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.bzu, i32 %.sroa.0.0.copyload.i242.i.i) #22
  %i.bzv = load i32, ptr %i.bri, align 8, !tbaa !281 ; 2 uses
  %.not.i243.i.i = icmp eq i32 %i.bzv, 0
  br i1 %.not.i243.i.i, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.bzw = load ptr, ptr %i.bgy, align 8, !tbaa !219
  %i.bzx = load ptr, ptr %12, align 8, !tbaa !21
  %i.bzy = zext i32 %i.bzv to i64
  call void @_ZN4llvm13LiveIntervals15extendToIndicesERNS_9LiveRangeENS_8ArrayRefINS_9SlotIndexEEES5_(ptr noundef nonnull align 8 dereferenceable(424) %i.bzw, ptr noundef nonnull align 8 dereferenceable(104) %.0.i158.i.i, ptr %i.bzx, i64 %i.bzy, ptr null, i64 0) #22
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %i.bzz = load ptr, ptr %13, align 8, !tbaa !21  ; 2 uses
  %i.caa = icmp eq ptr %i.bzz, %i.brk
  br i1 %i.caa, label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit.i.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void @free(ptr noundef %i.bzz) #22
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit.i.i: ; preds = %bb.hb, %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.cab = load ptr, ptr %12, align 8, !tbaa !21  ; 2 uses
  %i.cac = icmp eq ptr %i.cab, %i.brh
  br i1 %i.cac, label %_ZN4llvm11SmallVectorINS_9SlotIndexELj8EED2Ev.exit.i.i, label %bb.hc

bb.hc:                                            ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit.i.i
  call void @free(ptr noundef %i.cab) #22
  br label %_ZN4llvm11SmallVectorINS_9SlotIndexELj8EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9SlotIndexELj8EED2Ev.exit.i.i: ; preds = %bb.hc, %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %_ZN12_GLOBAL__N_117RegisterCoalescer22isHighCostLiveIntervalERN4llvm12LiveIntervalE.exit.i.i

_ZN12_GLOBAL__N_117RegisterCoalescer22isHighCostLiveIntervalERN4llvm12LiveIntervalE.exit.i.i: ; preds = %bb.fe, %bb.fg, %_ZN4llvm11SmallVectorINS_9SlotIndexELj8EED2Ev.exit.i.i, %bb.fh, %.loopexit286.i.i, %bb.fa, %bb.ex
  %.0.i.i272 = phi i1 [ false, %.loopexit286.i.i ], [ true, %_ZN4llvm11SmallVectorINS_9SlotIndexELj8EED2Ev.exit.i.i ], [ false, %bb.fa ], [ false, %bb.ex ], [ false, %bb.fg ], [ false, %bb.fh ], [ false, %bb.fe ]
  %i.cad = load ptr, ptr %i.bmu, align 8, !tbaa !21 ; 2 uses
  %i.cae = icmp eq ptr %i.cad, %i.bmx
  br i1 %i.cae, label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_18JoinVals3ValELj8EED2Ev.exit.i.i.i, label %bb.hd

bb.hd:                                            ; preds = %_ZN12_GLOBAL__N_117RegisterCoalescer22isHighCostLiveIntervalERN4llvm12LiveIntervalE.exit.i.i
  call void @free(ptr noundef %i.cad) #22
  br label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_18JoinVals3ValELj8EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIN12_GLOBAL__N_18JoinVals3ValELj8EED2Ev.exit.i.i.i: ; preds = %bb.hd, %_ZN12_GLOBAL__N_117RegisterCoalescer22isHighCostLiveIntervalERN4llvm12LiveIntervalE.exit.i.i
  %i.caf = load ptr, ptr %i.bml, align 8, !tbaa !21 ; 2 uses
  %i.cag = icmp eq ptr %i.caf, %i.bmp
  br i1 %i.cag, label %_ZN12_GLOBAL__N_18JoinValsD2Ev.exit.i.i, label %bb.he

bb.he:                                            ; preds = %_ZN4llvm11SmallVectorIN12_GLOBAL__N_18JoinVals3ValELj8EED2Ev.exit.i.i.i
  call void @free(ptr noundef %i.caf) #22
  br label %_ZN12_GLOBAL__N_18JoinValsD2Ev.exit.i.i

_ZN12_GLOBAL__N_18JoinValsD2Ev.exit.i.i:          ; preds = %bb.he, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_18JoinVals3ValELj8EED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.cah = load ptr, ptr %i.blj, align 8, !tbaa !21 ; 2 uses
  %i.cai = icmp eq ptr %i.cah, %i.blm
  br i1 %i.cai, label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_18JoinVals3ValELj8EED2Ev.exit.i244.i.i, label %bb.hf

bb.hf:                                            ; preds = %_ZN12_GLOBAL__N_18JoinValsD2Ev.exit.i.i
  call void @free(ptr noundef %i.cah) #22
  br label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_18JoinVals3ValELj8EED2Ev.exit.i244.i.i

_ZN4llvm11SmallVectorIN12_GLOBAL__N_18JoinVals3ValELj8EED2Ev.exit.i244.i.i: ; preds = %bb.hf, %_ZN12_GLOBAL__N_18JoinValsD2Ev.exit.i.i
  %i.caj = load ptr, ptr %i.bla, align 8, !tbaa !21 ; 2 uses
  %i.cak = icmp eq ptr %i.caj, %i.ble
  br i1 %i.cak, label %_ZN12_GLOBAL__N_18JoinValsD2Ev.exit245.i.i, label %bb.hg

bb.hg:                                            ; preds = %_ZN4llvm11SmallVectorIN12_GLOBAL__N_18JoinVals3ValELj8EED2Ev.exit.i244.i.i
  call void @free(ptr noundef %i.caj) #22
  br label %_ZN12_GLOBAL__N_18JoinValsD2Ev.exit245.i.i

_ZN12_GLOBAL__N_18JoinValsD2Ev.exit245.i.i:       ; preds = %bb.hg, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_18JoinVals3ValELj8EED2Ev.exit.i244.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.cal = load ptr, ptr %9, align 8, !tbaa !21   ; 2 uses
  %i.cam = icmp eq ptr %i.cal, %i.bgv
  br i1 %i.cam, label %_ZN12_GLOBAL__N_117RegisterCoalescer13joinIntervalsERN4llvm13CoalescerPairE.exit, label %bb.hh

bb.hh:                                            ; preds = %_ZN12_GLOBAL__N_18JoinValsD2Ev.exit245.i.i
  call void @free(ptr noundef %i.cal) #22
  br label %_ZN12_GLOBAL__N_117RegisterCoalescer13joinIntervalsERN4llvm13CoalescerPairE.exit

_ZN12_GLOBAL__N_117RegisterCoalescer13joinIntervalsERN4llvm13CoalescerPairE.exit: ; preds = %_ZN12_GLOBAL__N_18JoinValsD2Ev.exit245.i.i, %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br i1 %.0.i.i272, label %bb.hq, label %_ZN12_GLOBAL__N_117RegisterCoalescer13joinIntervalsERN4llvm13CoalescerPairE.exit.thread

_ZN12_GLOBAL__N_117RegisterCoalescer13joinIntervalsERN4llvm13CoalescerPairE.exit.thread: ; preds = %_ZNK4llvm9LiveRange8overlapsERKS0_.exit.i.i, %bb.do, %bb.dn, %.lr.ph208.i.i, %bb.dz, %_ZN4llvm9BitVectorD2Ev.exit81.i.i, %bb.ea, %_ZN12_GLOBAL__N_117RegisterCoalescer13joinIntervalsERN4llvm13CoalescerPairE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.can = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_117RegisterCoalescer16reMaterializeDefERKN4llvm13CoalescerPairEPNS1_12MachineInstrERb(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  br i1 %i.can, label %bb.hp, label %bb.hi

bb.hi:                                            ; preds = %_ZN12_GLOBAL__N_117RegisterCoalescer13joinIntervalsERN4llvm13CoalescerPairE.exit.thread
  %i.cao = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 2 uses
  %i.cap = load i8, ptr %i.cao, align 8, !tbaa !65, !range !18, !noundef !19 ; 2 uses
  %i.caq = trunc nuw i8 %i.cap to i1
  %i.car = load ptr, ptr %i.f, align 8            ; 2 uses
  %.not.i299 = icmp eq ptr %i.car, null
  %or.cond405 = select i1 %i.caq, i1 true, i1 %.not.i299
  br i1 %or.cond405, label %.critedge99, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.cas = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_117RegisterCoalescer20adjustCopiesBackFromERKN4llvm13CoalescerPairEPNS1_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef %1)
  br i1 %i.cas, label %.thread397, label %bb.hk

.thread397:                                       ; preds = %bb.hj
  call fastcc void @_ZN12_GLOBAL__N_117RegisterCoalescer11deleteInstrEPN4llvm12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr noundef %1)
  br label %bb.hp

bb.hk:                                            ; preds = %bb.hj
  %i.cat = call fastcc i16 @_ZN12_GLOBAL__N_117RegisterCoalescer24removeCopyByCommutingDefERKN4llvm13CoalescerPairEPNS1_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef %1) ; 2 uses
  %i.cau = trunc i16 %i.cat to i1
  br i1 %i.cau, label %bb.hl, label %..critedge99_crit_edge

..critedge99_crit_edge:                           ; preds = %bb.hk
  %.pre533 = load i8, ptr %i.cao, align 8, !tbaa !65, !range !18
  %.pre534 = load ptr, ptr %i.f, align 8
  br label %.critedge99

bb.hl:                                            ; preds = %bb.hk
  call fastcc void @_ZN12_GLOBAL__N_117RegisterCoalescer11deleteInstrEPN4llvm12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr noundef %1)
  %.not407 = icmp samesign ult i16 %i.cat, 256
  br i1 %.not407, label %bb.hp, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.cav = getelementptr inbounds nuw i8, ptr %18, i64 26
  %i.caw = load i8, ptr %i.cav, align 2, !tbaa !42, !range !18, !noundef !19
  %i.cax = trunc nuw i8 %i.caw to i1
  %.sroa.0.0.copyload.i300 = load i32, ptr %i.xc, align 4
  %.sroa.0.0.copyload.i301 = load i32, ptr %i.e, align 8
  %.sroa.024.0 = select i1 %i.cax, i32 %.sroa.0.0.copyload.i300, i32 %.sroa.0.0.copyload.i301
  %i.cay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.caz = load ptr, ptr %i.cay, align 8, !tbaa !219
  %i.cba = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(424) %i.caz, i32 %.sroa.024.0)
  call fastcc void @_ZN12_GLOBAL__N_117RegisterCoalescer12shrinkToUsesEPN4llvm12LiveIntervalEPNS1_15SmallVectorImplIPNS1_12MachineInstrEEE(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr noundef %i.cba, ptr noundef null)
  br label %bb.hp

.critedge99:                                      ; preds = %..critedge99_crit_edge, %bb.hi
  %i.cbb = phi ptr [ %.pre534, %..critedge99_crit_edge ], [ %i.car, %bb.hi ]
  %i.cbc = phi i8 [ %.pre533, %..critedge99_crit_edge ], [ %i.cap, %bb.hi ]
  %i.cbd = trunc nuw i8 %i.cbc to i1
  %.not.i302 = icmp eq ptr %i.cbb, null
  %or.cond406 = select i1 %i.cbd, i1 true, i1 %.not.i302
  br i1 %or.cond406, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %.critedge99
  %i.cbe = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_117RegisterCoalescer23removePartialRedundancyERKN4llvm13CoalescerPairERNS1_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br i1 %i.cbe, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %.critedge99, %bb.hn
  store i8 1, ptr %2, align 1, !tbaa !484
  br label %bb.hp

bb.hp:                                            ; preds = %bb.hl, %bb.hm, %.thread397, %bb.hn, %_ZN12_GLOBAL__N_117RegisterCoalescer13joinIntervalsERN4llvm13CoalescerPairE.exit.thread, %bb.ho
  %.6 = phi i1 [ true, %bb.hn ], [ false, %bb.ho ], [ true, %_ZN12_GLOBAL__N_117RegisterCoalescer13joinIntervalsERN4llvm13CoalescerPairE.exit.thread ], [ true, %.thread397 ], [ true, %bb.hm ], [ true, %bb.hl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.im

bb.hq:                                            ; preds = %_ZN12_GLOBAL__N_117RegisterCoalescer13joinIntervalsERN4llvm13CoalescerPairE.exit.thread392, %_ZN12_GLOBAL__N_117RegisterCoalescer13joinIntervalsERN4llvm13CoalescerPairE.exit
  %i.cbf = getelementptr inbounds nuw i8, ptr %18, i64 25
  %i.cbg = load i8, ptr %i.cbf, align 1, !tbaa !41, !range !18, !noundef !19
  %i.cbh = trunc nuw i8 %i.cbg to i1
  br i1 %i.cbh, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %i.cbi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cbj = load ptr, ptr %i.cbi, align 8, !tbaa !296
  %.sroa.0.0.copyload.i303 = load i32, ptr %i.e, align 8, !tbaa !188
  %i.cbk = load ptr, ptr %i.f, align 8, !tbaa !36
  call void @_ZN4llvm19MachineRegisterInfo11setRegClassENS_8RegisterEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(520) %i.cbj, i32 %.sroa.0.0.copyload.i303, ptr noundef %i.cbk) #22
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %i.cbl = load ptr, ptr %i.f, align 8, !tbaa !36 ; 3 uses
  %.not.i304 = icmp eq ptr %i.cbl, null
  br i1 %.not.i304, label %bb.hw, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.cbm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cbn = getelementptr inbounds nuw i8, ptr %i.cbl, i64 20
  %i.cbo = load i16, ptr %i.cbn, align 4, !tbaa !782
  %i.cbp = zext i16 %i.cbo to i64
  %i.cbq = load ptr, ptr %i.cbm, align 8, !tbaa !663
  %i.cbr = getelementptr inbounds nuw [24 x i8], ptr %i.cbq, i64 %i.cbp ; 2 uses
  %i.cbs = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cbt = load i32, ptr %i.cbs, align 8, !tbaa !783
  %i.cbu = load i32, ptr %i.cbr, align 8, !tbaa !784
  %.not.i.i305 = icmp eq i32 %i.cbt, %i.cbu
  br i1 %.not.i.i305, label %_ZNK4llvm17RegisterClassInfo16isProperSubClassEPKNS_15MCRegisterClassE.exit, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  call void @_ZNK4llvm17RegisterClassInfo7computeEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(320) %i.cbm, ptr noundef nonnull %i.cbl) #22
  br label %_ZNK4llvm17RegisterClassInfo16isProperSubClassEPKNS_15MCRegisterClassE.exit

_ZNK4llvm17RegisterClassInfo16isProperSubClassEPKNS_15MCRegisterClassE.exit: ; preds = %bb.ht, %bb.hu
  %i.cbv = getelementptr inbounds nuw i8, ptr %i.cbr, i64 8
  %i.cbw = load i8, ptr %i.cbv, align 8, !tbaa !1032, !range !18, !noundef !19
  %i.cbx = trunc nuw i8 %i.cbw to i1
  br i1 %i.cbx, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %_ZNK4llvm17RegisterClassInfo16isProperSubClassEPKNS_15MCRegisterClassE.exit
  %i.cby = getelementptr inbounds nuw i8, ptr %0, i64 800
  %.sroa.0.0.copyload.i306 = load i32, ptr %i.e, align 8, !tbaa !188
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.cby, i32 %.sroa.0.0.copyload.i306)
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %_ZNK4llvm17RegisterClassInfo16isProperSubClassEPKNS_15MCRegisterClassE.exit, %bb.hs
  %i.cbz = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  %i.cca = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ccb = load i8, ptr %i.cca, align 8, !tbaa !14, !range !18, !noundef !19
  %i.ccc = trunc nuw i8 %i.ccb to i1
  br i1 %i.ccc, label %bb.hx, label %bb.hz

bb.hx:                                            ; preds = %bb.hw
  %i.ccd = load ptr, ptr %i.cbz, align 8, !tbaa !20 ; 3 uses
  %i.cce = getelementptr inbounds nuw i8, ptr %0, i64 644 ; 2 uses
  %i.ccf = load i32, ptr %i.cce, align 4, !tbaa !284 ; 3 uses
  %i.ccg = zext i32 %i.ccf to i64
  %.idx.i.i307 = shl nuw nsw i64 %i.ccg, 3
  %i.cch = getelementptr inbounds nuw i8, ptr %i.ccd, i64 %.idx.i.i307
  %.not1923.i.i = icmp eq i32 %i.ccf, 0
  br i1 %.not1923.i.i, label %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5eraseES2_.exit.thread, label %.lr.ph.i.i308

.lr.ph.i.i308:                                    ; preds = %bb.hx, %.critedge.i.i309
  %.01524.i.i = phi ptr [ %i.ccj, %.critedge.i.i309 ], [ %i.ccd, %bb.hx ] ; 3 uses
  %i.cci = load ptr, ptr %.01524.i.i, align 8, !tbaa !23
  %.not20.i.i = icmp eq ptr %i.cci, %1
  br i1 %.not20.i.i, label %bb.hy, label %.critedge.i.i309

.critedge.i.i309:                                 ; preds = %.lr.ph.i.i308
  %i.ccj = getelementptr inbounds nuw i8, ptr %.01524.i.i, i64 8 ; 2 uses
  %.not19.i.i = icmp eq ptr %i.ccj, %i.cch
  br i1 %.not19.i.i, label %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5eraseES2_.exit.thread, label %.lr.ph.i.i308

bb.hy:                                            ; preds = %.lr.ph.i.i308
  %i.cck = add i32 %i.ccf, -1                     ; 2 uses
  store i32 %i.cck, ptr %i.cce, align 4, !tbaa !284
  %i.ccl = zext i32 %i.cck to i64
  %i.ccm = getelementptr inbounds nuw [8 x i8], ptr %i.ccd, i64 %i.ccl
  %i.ccn = load ptr, ptr %i.ccm, align 8, !tbaa !23
  store ptr %i.ccn, ptr %.01524.i.i, align 8, !tbaa !23
  br label %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5eraseES2_.exit

bb.hz:                                            ; preds = %bb.hw
  %i.cco = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.cbz, ptr noundef %1) #22 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.cco, null
  br i1 %.not.not.i.i, label %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5eraseES2_.exit.thread, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  call void @_ZN4llvm19SmallPtrSetImplBase15eraseFromBucketEPPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.cbz, ptr noundef nonnull %i.cco) #22
  %i.ccp = getelementptr inbounds nuw i8, ptr %0, i64 644 ; 2 uses
  %i.ccq = load i32, ptr %i.ccp, align 4, !tbaa !284
  %i.ccr = add i32 %i.ccq, -1
  store i32 %i.ccr, ptr %i.ccp, align 4, !tbaa !284
  br label %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5eraseES2_.exit

_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5eraseES2_.exit: ; preds = %bb.ia, %bb.hy
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.331") align 8 %19, ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5eraseES2_.exit.thread

_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5eraseES2_.exit.thread: ; preds = %.critedge.i.i309, %bb.hx, %bb.hz, %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5eraseES2_.exit
  %i.ccs = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.cct = load i32, ptr %i.ccs, align 8, !tbaa !187 ; 2 uses
  %.not93 = icmp eq i32 %i.cct, 0
  br i1 %.not93, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5eraseES2_.exit.thread
  %.sroa.0.0.copyload.i310 = load i32, ptr %i.e, align 8, !tbaa !188 ; 2 uses
  call fastcc void @_ZN12_GLOBAL__N_117RegisterCoalescer17updateRegDefsUsesEN4llvm8RegisterES2_j(ptr noundef nonnull align 8 dereferenceable(896) %0, i32 %.sroa.0.0.copyload.i310, i32 %.sroa.0.0.copyload.i310, i32 noundef %i.cct)
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5eraseES2_.exit.thread
  %.sroa.0.0.copyload.i312 = load i32, ptr %i.xc, align 4, !tbaa !188
  %.sroa.0.0.copyload.i313 = load i32, ptr %i.e, align 8, !tbaa !188
  %i.ccu = getelementptr inbounds nuw i8, ptr %18, i64 20
  %i.ccv = load i32, ptr %i.ccu, align 4, !tbaa !186
  call fastcc void @_ZN12_GLOBAL__N_117RegisterCoalescer17updateRegDefsUsesEN4llvm8RegisterES2_j(ptr noundef nonnull align 8 dereferenceable(896) %0, i32 %.sroa.0.0.copyload.i312, i32 %.sroa.0.0.copyload.i313, i32 noundef %i.ccv)
  %i.ccw = load i64, ptr %i.arl, align 8, !tbaa !824
  %.not408 = icmp eq i64 %i.ccw, 0
  br i1 %.not408, label %bb.ih, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.ccx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ccy = load ptr, ptr %i.ccx, align 8, !tbaa !219
  %.sroa.0.0.copyload.i314 = load i32, ptr %i.e, align 8, !tbaa !188
  %i.ccz = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(424) %i.ccy, i32 %.sroa.0.0.copyload.i314) ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_117RegisterCoalescer16reMaterializeDefERKN4llvm13CoalescerPairEPNS1_12MachineInstrERb:bb.a
  %i.vb = getelementptr inbounds nuw [2 x i8], ptr %i.uq, i64 %i.va
  %i.vc = and i32 %i.uy, 4095
  br label %.lr.ph696

._crit_edge697:                                   ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit399, %bb.br
  %i.vd = getelementptr inbounds nuw i8, ptr %.sroa.0444.0699, i64 8 ; 2 uses
  %.not630 = icmp eq ptr %i.vd, %i.ui
  br i1 %.not630, label %._crit_edge702, label %bb.br

.lr.ph696:                                        ; preds = %.lr.ph696.preheader, %_ZN4llvm17MCRegUnitIteratorppEv.exit399
  %.sroa.5433.0694 = phi ptr [ %i.vm, %_ZN4llvm17MCRegUnitIteratorppEv.exit399 ], [ %i.vb, %.lr.ph696.preheader ] ; 2 uses
  %.sroa.9.0693 = phi i32 [ %i.vp, %_ZN4llvm17MCRegUnitIteratorppEv.exit399 ], [ %i.vc, %.lr.ph696.preheader ] ; 2 uses
  %i.ve = load ptr, ptr %i.m, align 8, !tbaa !219 ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 408
  %i.vg = zext i32 %.sroa.9.0693 to i64
  %i.vh = load ptr, ptr %i.vf, align 8, !tbaa !21
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %i.vh, i64 %i.vg
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !909 ; 2 uses
  %.not341 = icmp eq ptr %i.vj, null
  br i1 %.not341, label %_ZN4llvm17MCRegUnitIteratorppEv.exit399, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph696
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ve, i64 56
  %i.vl = call noundef ptr @_ZN4llvm9LiveRange13createDeadDefENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE(ptr noundef nonnull align 8 dereferenceable(104) %i.vj, i64 %i.uk, ptr noundef nonnull align 8 dereferenceable(80) %i.vk) #22 ; 0 uses
  br label %_ZN4llvm17MCRegUnitIteratorppEv.exit399

_ZN4llvm17MCRegUnitIteratorppEv.exit399:          ; preds = %bb.bs, %.lr.ph696
  %i.vm = getelementptr inbounds nuw i8, ptr %.sroa.5433.0694, i64 2
  %i.vn = load i16, ptr %.sroa.5433.0694, align 2, !tbaa !908 ; 2 uses
  %i.vo = sext i16 %i.vn to i32
  %i.vp = add i32 %.sroa.9.0693, %i.vo
  %.not.i.i398 = icmp eq i16 %i.vn, 0
  br i1 %.not.i.i398, label %._crit_edge697, label %.lr.ph696

bb.bt:                                            ; preds = %._crit_edge702
  %i.vq = load ptr, ptr %i.jp, align 8, !tbaa !296
  %i.vr = call { ptr, ptr } @_ZNK4llvm19MachineRegisterInfo12use_operandsENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.vq, i32 %.sroa.020.0.copyload) ; 2 uses
  %i.vs = extractvalue { ptr, ptr } %i.vr, 0      ; 2 uses
  %i.vt = extractvalue { ptr, ptr } %i.vr, 1      ; 2 uses
  %.not631703 = icmp eq ptr %i.vs, %i.vt
  br i1 %.not631703, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.bt
  %i.vu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i346, i64 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.bz
  %.sroa.0423.0704 = phi ptr [ %i.vs, %.preheader.lr.ph ], [ %storemerge.i.i.i.i, %bb.bz ] ; 4 uses
  br label %bb.bu

bb.bu:                                            ; preds = %.preheader, %bb.bv
  %.pn.i.i.i.i = phi ptr [ %storemerge.i.i.i.i, %bb.bv ], [ %.sroa.0423.0704, %.preheader ]
  %storemerge.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 24
  %storemerge.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i, align 8, !tbaa !63 ; 5 uses
  %.not.i.i.i.i404 = icmp eq ptr %storemerge.i.i.i.i, null
  br i1 %.not.i.i.i.i404, label %_ZN4llvm23early_inc_iterator_implINS_19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEEEdeEv.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.vv = load i32, ptr %storemerge.i.i.i.i, align 8
  %i.vw = and i32 %i.vv, 16777216
  %.not1.i.i.i.i = icmp eq i32 %i.vw, 0
  br i1 %.not1.i.i.i.i, label %_ZN4llvm23early_inc_iterator_implINS_19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEEEdeEv.exit, label %bb.bu, !llvm.loop !1112

_ZN4llvm23early_inc_iterator_implINS_19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEEEdeEv.exit: ; preds = %bb.bu, %bb.bv
  %i.vx = getelementptr inbounds nuw i8, ptr %.sroa.0423.0704, i64 8
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !750 ; 3 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 52
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !45
  %.off.i = add i32 %i.wa, -14
  %switch.i = icmp ult i32 %.off.i, 5
  br i1 %switch.i, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %_ZN4llvm23early_inc_iterator_implINS_19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEEEdeEv.exit
  br i1 %i.io, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.wb = load ptr, ptr %i.kd, align 8, !tbaa !298
  call void @_ZN4llvm14MachineOperand12substPhysRegENS_10MCRegisterERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0423.0704, i32 %storemerge325584, ptr noundef nonnull align 8 dereferenceable(316) %i.wb) #22
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

bb.by:                                            ; preds = %bb.bw
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0423.0704, i32 %storemerge325584) #22
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %bb.by, %bb.bx
  %i.wc = load ptr, ptr %i.vu, align 8, !tbaa !443
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vy, i64 24
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !753
  call void @_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_(ptr noundef nonnull align 8 dereferenceable(360) %i.jv, ptr %i.wc, ptr noundef %i.we, ptr nonnull %i.vy)
  br label %bb.bz

bb.bz:                                            ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, %_ZN4llvm23early_inc_iterator_implINS_19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEEEdeEv.exit
  %.not631 = icmp eq ptr %storemerge.i.i.i.i, %i.vt
  br i1 %.not631, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.bz, %bb.bt, %._crit_edge702
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  %i.wg = call noundef i32 @_ZNK4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5countERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.wf, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %.not340 = icmp eq i32 %i.wg, 0
  br i1 %.not340, label %bb.ca, label %bb.cf

bb.ca:                                            ; preds = %.loopexit
  %i.wh = load ptr, ptr %i.jp, align 8, !tbaa !296
  %.sroa.0.0.copyload = load i32, ptr %6, align 4, !tbaa !188
  %i.wi = call { ptr, ptr } @_ZNK4llvm19MachineRegisterInfo18use_nodbg_operandsENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.wh, i32 %.sroa.0.0.copyload) ; 2 uses
  %i.wj = extractvalue { ptr, ptr } %i.wi, 0      ; 2 uses
  %i.wk = extractvalue { ptr, ptr } %i.wi, 1      ; 2 uses
  %.not632705 = icmp eq ptr %i.wj, %i.wk
  br i1 %.not632705, label %._crit_edge710, label %.lr.ph709

._crit_edge710:                                   ; preds = %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb1ELb1ELb0EEppEv.exit, %bb.ca
  %.0289.lcssa = phi i32 [ 0, %bb.ca ], [ %spec.select, %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb1ELb1ELb0EEppEv.exit ]
  %i.wl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL24LateRematUpdateThreshold, i64 120), align 8, !tbaa !979
  %i.wm = icmp ult i32 %.0289.lcssa, %i.wl
  br i1 %i.wm, label %bb.cc, label %bb.ce

.lr.ph709:                                        ; preds = %bb.ca, %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb1ELb1ELb0EEppEv.exit
  %.0289707 = phi i32 [ %spec.select, %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb1ELb1ELb0EEppEv.exit ], [ 0, %bb.ca ]
  %.sroa.0415.0706 = phi ptr [ %storemerge.i.i, %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb1ELb1ELb0EEppEv.exit ], [ %i.wj, %bb.ca ] ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %.sroa.0415.0706, i64 8
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !750
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 52
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !45 ; 2 uses
  %i.wr = icmp eq i32 %i.wq, 20
  %i.ws = icmp eq i32 %i.wq, 12
  %spec.select.i407 = or i1 %i.wr, %i.ws
  %i.wt = zext i1 %spec.select.i407 to i32
  %spec.select = add i32 %.0289707, %i.wt         ; 2 uses
  br label %.critedge2.i.i

.critedge2.i.i:                                   ; preds = %bb.cb, %.lr.ph709
  %.pn.i.i = phi ptr [ %.sroa.0415.0706, %.lr.ph709 ], [ %storemerge.i.i, %bb.cb ]
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %storemerge.i.i = load ptr, ptr %storemerge.in.i.i, align 8, !tbaa !63 ; 5 uses
  %.not.i.i408 = icmp eq ptr %storemerge.i.i, null
  br i1 %.not.i.i408, label %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb1ELb1ELb0EEppEv.exit, label %bb.cb

bb.cb:                                            ; preds = %.critedge2.i.i
  %i.wu = load i32, ptr %storemerge.i.i, align 8
  %i.wv = and i32 %i.wu, -2130706432
  %or.cond.not.i.i = icmp eq i32 %i.wv, 0
  br i1 %or.cond.not.i.i, label %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb1ELb1ELb0EEppEv.exit, label %.critedge2.i.i, !llvm.loop !877

_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb1ELb1ELb0EEppEv.exit: ; preds = %.critedge2.i.i, %bb.cb
  %.not632 = icmp eq ptr %storemerge.i.i, %i.wk
  br i1 %.not632, label %._crit_edge710, label %.lr.ph709

bb.cc:                                            ; preds = %._crit_edge710
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  call fastcc void @_ZN12_GLOBAL__N_117RegisterCoalescer12shrinkToUsesEPN4llvm12LiveIntervalEPNS1_15SmallVectorImplIPNS1_12MachineInstrEEE(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr noundef %.0.i, ptr noundef nonnull %i.ww)
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.wy = load i32, ptr %i.wx, align 8, !tbaa !281
  %.not.i409 = icmp eq i32 %i.wy, 0
  br i1 %.not.i409, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN4llvm13LiveRangeEdit17eliminateDeadDefsERNS_15SmallVectorImplIPNS_12MachineInstrEEENS_8ArrayRefINS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(136) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.ww, ptr null, i64 0) #22
  br label %bb.cf

bb.ce:                                            ; preds = %._crit_edge710
  %i.wz = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.wf, ptr noundef nonnull align 4 dereferenceable(4) %6), !noalias !1113 ; 0 uses
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.cc, %.loopexit
  %i.xa = load ptr, ptr %12, align 8, !tbaa !21   ; 2 uses
  %i.xb = icmp eq ptr %i.xa, %i.ml
  br i1 %i.xb, label %_ZN4llvm11SmallVectorISt4pairIjNS_8RegisterEELj4EED2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @free(ptr noundef %i.xa) #22
  br label %_ZN4llvm11SmallVectorISt4pairIjNS_8RegisterEELj4EED2Ev.exit

_ZN4llvm11SmallVectorISt4pairIjNS_8RegisterEELj4EED2Ev.exit: ; preds = %bb.cf, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.xc = load ptr, ptr %10, align 8, !tbaa !21   ; 2 uses
  %i.xd = icmp eq ptr %i.xc, %i.lr
  br i1 %i.xd, label %_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairIjNS_8RegisterEELj4EED2Ev.exit
  call void @free(ptr noundef %i.xc) #22
  br label %_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairIjNS_8RegisterEELj4EED2Ev.exit, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @_ZN4llvm13LiveRangeEditD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.xe = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.xf = icmp eq ptr %i.xe, %i.jx
  br i1 %i.xf, label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit, label %bb.ci

bb.ci:                                            ; preds = %_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit
  call void @free(ptr noundef %i.xe) #22
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread: ; preds = %_ZN4llvm12is_containedINS_14iterator_rangeINS_17MCRegUnitIteratorEEENS_9MCRegUnitEEEbOT_RKT0_.exit.thread, %bb.q, %bb.y, %bb.z, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit, %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit, %bb.o, %bb.p, %_ZNK4llvm15TargetInstrInfo18isReMaterializableERKNS_12MachineInstrE.exit.thread
  %.10 = phi i1 [ false, %_ZNK4llvm15TargetInstrInfo18isReMaterializableERKNS_12MachineInstrE.exit.thread ], [ false, %bb.p ], [ false, %bb.o ], [ false, %bb.q ], [ false, %bb.z ], [ true, %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit ], [ false, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit ], [ false, %bb.y ], [ false, %_ZN4llvm12is_containedINS_14iterator_rangeINS_17MCRegUnitIteratorEEENS_9MCRegUnitEEEbOT_RKT0_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit.thread

_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit.thread: ; preds = %._crit_edge.i, %bb.g, %bb.n, %_ZNK4llvm13LiveIntervals19getInstructionIndexERKNS_12MachineInstrE.exit, %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit, %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit.thread772, %_ZNK4llvm15TargetInstrInfo18isReMaterializableERKNS_12MachineInstrE.exit, %bb.l, %bb.i, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread, %bb.k, %bb.a
  %.13 = phi i1 [ false, %bb.a ], [ false, %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit ], [ false, %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit.thread772 ], [ false, %bb.n ], [ false, %bb.k ], [ %.10, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread ], [ false, %bb.l ], [ false, %bb.i ], [ false, %_ZNK4llvm15TargetInstrInfo18isReMaterializableERKNS_12MachineInstrE.exit ], [ false, %_ZNK4llvm13LiveIntervals19getInstructionIndexERKNS_12MachineInstrE.exit ], [ false, %bb.g ], [ false, %._crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret i1 %.13
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_117RegisterCoalescer20adjustCopiesBackFromERKN4llvm13CoalescerPairEPNS1_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(896) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::LiveRange::Segment", align 8 ; 4 uses
  %4 = alloca %"struct.llvm::LiveRange::Segment", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !tbaa !42, !range !18, !noundef !19
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i150 = load i32, ptr %i.g, align 4
  %.sroa.0107.0 = select i1 %i.e, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i150 ; 3 uses
  %i.h = and i32 %.sroa.0107.0, 2147483647        ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !281  ; 4 uses
  %i.k = icmp ugt i32 %i.j, %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 3 uses
  br i1 %i.k, label %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i, label %bb.b

_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i: ; preds = %bb.a
  %i.m = zext nneg i32 %i.h to i64                ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !494  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i, label %_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit

bb.b:                                             ; preds = %bb.a
  %i.q = add nuw i32 %i.h, 1
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = zext nneg i32 %i.j to i64                ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !495  ; 2 uses
  %i.v = sub nuw nsw i64 %i.r, %i.s               ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.x = load i32, ptr %i.w, align 4, !tbaa !282
  %.not.i.i.i.i.i.not.i.i.i.i = icmp ult i32 %i.h, %i.x
  br i1 %.not.i.i.i.i.i.not.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i, label %bb.c, !prof !212

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(25) %i.l, ptr noundef nonnull %i.t, i64 noundef %i.r, i64 noundef 8) #22
  %.pre.i.i.i.i.i.i.i = load i32, ptr %i.i, align 8, !tbaa !281 ; 2 uses
  %.pre.i.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i.i.i to i64
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i.i.i = phi i64 [ %i.s, %bb.b ], [ %.pre.i.i.i.i.i.i, %bb.c ]
  %i.y = phi i32 [ %i.j, %bb.b ], [ %.pre.i.i.i.i.i.i.i, %bb.c ]
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.pre-phi.i.i.i.i.i.i ; 4 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.v, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.ac = and i32 %.sroa.0107.0, 2147483647
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = sub nsw i64 %i.ad, %i.s
  %i.af = and i64 %i.ae, 2305843009213693951      ; 2 uses
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i
  %n.vec = and i64 %i.ag, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3
  %i.ai = getelementptr i8, ptr %i.aa, i64 %i.ah
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.u, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8, !tbaa !494
  store <2 x ptr> %broadcast.splat, ptr %i.ak, align 8, !tbaa !494
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !1120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i, %middle.block
  %.07.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.aa, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store ptr %i.u, ptr %.07.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !494
  %i.am = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.ab
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1121

_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block
  %i.an = trunc nuw i64 %i.v to i32
  %i.ao = add i32 %i.y, %i.an
  store i32 %i.ao, ptr %i.i, align 8, !tbaa !281
  %.pre.i = zext nneg i32 %i.h to i64
  br label %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i

_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i: ; preds = %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i ], [ %i.m, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i ]
  %i.ap = phi ptr [ %i.z, %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i ], [ %i.n, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.pre-phi.i
  %i.ar = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4llvm13LiveIntervals14createIntervalENS_8RegisterE(i32 %.sroa.0107.0) #22 ; 3 uses
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !494
  %i.as = tail call noundef zeroext i1 @_ZN4llvm13LiveIntervals22computeVirtRegIntervalERNS_12LiveIntervalE(ptr noundef nonnull align 8 dereferenceable(424) %i.b, ptr noundef nonnull align 8 dereferenceable(120) %i.ar) #22 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !219 ; 2 uses
  %.pre271 = load i8, ptr %i.c, align 2, !tbaa !42, !range !18
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 144
  %.pre272 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !281
  %.pre276 = trunc nuw i8 %.pre271 to i1
  br label %_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit

_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit: ; preds = %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i, %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i
  %.pre-phi = phi i1 [ %i.e, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i ], [ %.pre276, %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i ]
  %i.at = phi i32 [ %i.j, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i ], [ %.pre272, %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i ] ; 3 uses
  %i.au = phi ptr [ %i.b, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i ], [ %.pre, %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i ] ; 6 uses
  %.0.i = phi ptr [ %i.p, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i ], [ %i.ar, %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i ] ; 6 uses
  %.sroa.097.0.in.v = select i1 %.pre-phi, i64 12, i64 8
  %.sroa.097.0.in = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.097.0.in.v
  %.sroa.097.0 = load i32, ptr %.sroa.097.0.in, align 4, !tbaa !188 ; 3 uses
  %i.av = and i32 %.sroa.097.0, 2147483647        ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 144 ; 2 uses
  %i.ax = icmp ugt i32 %i.at, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 136 ; 3 uses
  br i1 %i.ax, label %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i167, label %bb.d

_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i167: ; preds = %_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit
  %i.az = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !21 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.az
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !494 ; 2 uses
  %.not.i168 = icmp eq ptr %i.bc, null
  br i1 %.not.i168, label %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i164, label %_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit169

bb.d:                                             ; preds = %_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit
  %i.bd = add nuw i32 %i.av, 1
  %i.be = zext i32 %i.bd to i64                   ; 2 uses
  %i.bf = zext nneg i32 %i.at to i64              ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 152 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !495 ; 2 uses
  %i.bi = sub nuw nsw i64 %i.be, %i.bf            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 148
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !282
  %.not.i.i.i.i.i.not.i.i.i.i153 = icmp ult i32 %i.av, %i.bk
  br i1 %.not.i.i.i.i.i.not.i.i.i.i153, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i156, label %bb.e, !prof !212

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(25) %i.ay, ptr noundef nonnull %i.bg, i64 noundef %i.be, i64 noundef 8) #22
  %.pre.i.i.i.i.i.i.i154 = load i32, ptr %i.aw, align 8, !tbaa !281 ; 2 uses
  %.pre.i.i.i.i.i.i155 = zext i32 %.pre.i.i.i.i.i.i.i154 to i64
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i156

_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i156: ; preds = %bb.e, %bb.d
  %.pre-phi.i.i.i.i.i.i157 = phi i64 [ %i.bf, %bb.d ], [ %.pre.i.i.i.i.i.i155, %bb.e ]
  %i.bl = phi i32 [ %i.at, %bb.d ], [ %.pre.i.i.i.i.i.i.i154, %bb.e ]
  %i.bm = load ptr, ptr %i.ay, align 8, !tbaa !21 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.pre-phi.i.i.i.i.i.i157 ; 4 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i158 = shl nuw nsw i64 %i.bi, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i158
  %i.bp = and i32 %.sroa.097.0, 2147483647
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = sub nsw i64 %i.bq, %i.bf
  %i.bs = and i64 %i.br, 2305843009213693951      ; 2 uses
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check314 = icmp samesign ult i64 %i.bs, 3
  br i1 %min.iters.check314, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i159.preheader, label %vector.ph315

vector.ph315:                                     ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i156
  %n.vec316 = and i64 %i.bt, 4611686018427387900  ; 3 uses
  %i.bu = shl i64 %n.vec316, 3
  %i.bv = getelementptr i8, ptr %i.bn, i64 %i.bu
  %broadcast.splatinsert317 = insertelement <2 x ptr> poison, ptr %i.bh, i64 0
  %broadcast.splat318 = shufflevector <2 x ptr> %broadcast.splatinsert317, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body319

vector.body319:                                   ; preds = %vector.body319, %vector.ph315
  %index320 = phi i64 [ 0, %vector.ph315 ], [ %index.next322, %vector.body319 ] ; 2 uses
  %i.bw = shl i64 %index320, 3
  %next.gep321 = getelementptr i8, ptr %i.bn, i64 %i.bw ; 2 uses
  %i.bx = getelementptr i8, ptr %next.gep321, i64 16
  store <2 x ptr> %broadcast.splat318, ptr %next.gep321, align 8, !tbaa !494
  store <2 x ptr> %broadcast.splat318, ptr %i.bx, align 8, !tbaa !494
  %index.next322 = add nuw i64 %index320, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next322, %n.vec316
  br i1 %i.by, label %middle.block323, label %vector.body319, !llvm.loop !1122
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_18JoinVals17pruneSubRegValuesERN4llvm12LiveIntervalERNS1_11LaneBitmaskE:bb.a
  %i.ak = call noundef ptr @_ZN4llvm9LiveRange4findENS_9SlotIndexE(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.088.0138, i64 %i.ae) #22, !noalias !1312 ; 7 uses
  %i.al = load ptr, ptr %.sroa.088.0138, align 8, !tbaa !21, !noalias !1312
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.088.0138, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !281, !noalias !1312
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.ao ; 2 uses
  %i.aq = icmp eq ptr %i.ak, %i.ap
  br i1 %i.aq, label %_ZL13isLiveThroughN4llvm15LiveQueryResultE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ak, align 8, !noalias !1312 ; 2 uses
  %i.ar = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load i32, ptr %i.at, align 8, !tbaa !714, !noalias !1312 ; 3 uses
  %i.av = trunc i64 %.0.copyload.i.i.i.i.i.i.i to i32
  %i.aw = lshr i32 %i.av, 1
  %i.ax = and i32 %i.aw, 3
  %i.ay = or i32 %i.ax, %i.au
  %i.az = load i32, ptr %i.ag, align 8, !tbaa !714, !noalias !1312 ; 2 uses
  %.not.i = icmp ugt i32 %i.ay, %i.az
  br i1 %.not.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !829, !noalias !1312 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !63, !noalias !1312
  %i.be = xor i64 %i.bd, %.sroa.019.0.copyload
  %i.bf = icmp ult i64 %i.be, 8
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 3 uses
  %i.bh = icmp eq ptr %i.bg, %i.ap
  br i1 %i.bh, label %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit.thread, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.j
  %.sroa.01.0.copyload.pre.pre.i = load i64, ptr %i.bg, align 8, !tbaa !63, !noalias !1312
  %.pre46.i = and i64 %.sroa.01.0.copyload.pre.pre.i, -8
  %.pre.i = inttoptr i64 %.pre46.i to ptr
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %.pre.pre = load i32, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !714, !noalias !1312
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %bb.i
  %.pre = phi i32 [ %.pre.pre, %._crit_edge.i ], [ %i.au, %bb.i ]
  %.0.i = phi ptr [ %i.bg, %._crit_edge.i ], [ %i.ak, %bb.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.bi, align 8, !noalias !1312
  %i.bj = icmp eq i64 %.0.copyload.i.i.i.i.i, %i.ae
  %spec.select.i = select i1 %i.bj, ptr null, ptr %i.bb
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %i.bk = phi i32 [ %.pre, %bb.k ], [ %i.au, %bb.h ]
  %.026.i = phi ptr [ %spec.select.i, %bb.k ], [ null, %bb.h ] ; 5 uses
  %.1.i = phi ptr [ %.0.i, %bb.k ], [ %i.ak, %bb.h ] ; 2 uses
  %i.bl = icmp ult i32 %i.az, %i.bk
  br i1 %i.bl, label %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit.thread, label %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit

_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit:    ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !829, !noalias !1312 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !63, !noalias !1312 ; 2 uses
  %.not50 = icmp eq ptr %i.bn, null
  br i1 %.not50, label %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit
  %i.bq = icmp eq ptr %.026.i, null
  br i1 %i.bq, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = load i8, ptr %i.x, align 1, !tbaa !1311, !range !18, !noundef !19
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bt = load i32, ptr %i.j, align 8, !tbaa !986
  %i.bu = icmp eq i32 %i.bt, 1
  br i1 %i.bu, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.0.copyload.i.i.i.i = load i64, ptr %i.bv, align 8
  %i.bw = icmp eq i64 %.0.copyload.i.i.i.i, %.sroa.019.0.copyload
  br i1 %i.bw, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.m, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.e, ptr %3, align 8, !tbaa !21
  store i32 0, ptr %i.f, align 8, !tbaa !281
  store i32 8, ptr %i.g, align 4, !tbaa !282
  %i.bx = load ptr, ptr %i.h, align 8, !tbaa !976
  call void @_ZN4llvm13LiveIntervals10pruneValueERNS_9LiveRangeENS_9SlotIndexEPNS_15SmallVectorImplIS3_EE(ptr noundef nonnull align 8 dereferenceable(424) %i.bx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.088.0138, i64 %.sroa.019.0.copyload, ptr noundef nonnull %3) #22
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %.0.copyload.i.i.i.i56 = load i64, ptr %i.by, align 8
  %i.bz = icmp eq i64 %.0.copyload.i.i.i.i56, %.sroa.019.0.copyload
  br i1 %i.bz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i64 0, ptr %i.by, align 8, !tbaa !63
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ca = load i8, ptr %i.x, align 1, !tbaa !1311, !range !18, !noundef !19
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.cc = call noundef ptr @_ZN4llvm9LiveRange4findENS_9SlotIndexE(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.088.0138, i64 %i.ah) #22, !noalias !1315 ; 6 uses
  %i.cd = load ptr, ptr %.sroa.088.0138, align 8, !tbaa !21, !noalias !1315
  %i.ce = load i32, ptr %i.am, align 8, !tbaa !281, !noalias !1315
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.cf ; 2 uses
  %i.ch = icmp eq ptr %i.cc, %i.cg
  br i1 %i.ch, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.0.copyload.i.i.i.i.i.i.i57 = load i64, ptr %i.cc, align 8, !noalias !1315 ; 2 uses
  %i.ci = and i64 %.0.copyload.i.i.i.i.i.i.i57, -8
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !714, !noalias !1315 ; 3 uses
  %i.cm = trunc i64 %.0.copyload.i.i.i.i.i.i.i57 to i32
  %i.cn = lshr i32 %i.cm, 1
  %i.co = and i32 %i.cn, 3
  %i.cp = or i32 %i.co, %i.cl
  %i.cq = load i32, ptr %i.aj, align 8, !tbaa !714, !noalias !1315 ; 2 uses
  %.not.i58 = icmp ugt i32 %i.cp, %i.cq
  br i1 %.not.i58, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !63, !noalias !1315
  %i.ct = xor i64 %i.cs, %.sroa.092.0
  %i.cu = icmp ult i64 %i.ct, 8
  br i1 %i.cu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cc, i64 24 ; 3 uses
  %i.cw = icmp eq ptr %i.cv, %i.cg
  br i1 %i.cw, label %.critedge, label %._crit_edge.i70

._crit_edge.i70:                                  ; preds = %bb.w
  %.sroa.01.0.copyload.pre.pre.i71 = load i64, ptr %i.cv, align 8, !tbaa !63, !noalias !1315
  %.pre46.i72 = and i64 %.sroa.01.0.copyload.pre.pre.i71, -8
  %.pre.i73 = inttoptr i64 %.pre46.i72 to ptr
  %.phi.trans.insert145 = getelementptr inbounds nuw i8, ptr %.pre.i73, i64 24
  %.pre146 = load i32, ptr %.phi.trans.insert145, align 8, !tbaa !714, !noalias !1315
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %._crit_edge.i70, %bb.u
  %i.cx = phi i32 [ %i.cl, %bb.u ], [ %.pre146, %._crit_edge.i70 ], [ %i.cl, %bb.v ]
  %.1.i67 = phi ptr [ %i.cc, %bb.u ], [ %i.cv, %._crit_edge.i70 ], [ %i.cc, %bb.v ]
  %i.cy = icmp ult i32 %i.cq, %i.cx
  br i1 %i.cy, label %.critedge, label %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit74

_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit74:  ; preds = %bb.x
  %i.cz = getelementptr inbounds nuw i8, ptr %.1.i67, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !829, !noalias !1315
  %.not52 = icmp eq ptr %i.da, null
  br i1 %.not52, label %.critedge, label %bb.y

bb.y:                                             ; preds = %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit74
  %i.db = load ptr, ptr %i.h, align 8, !tbaa !976
  %i.dc = load ptr, ptr %3, align 8, !tbaa !21
  %i.dd = load i32, ptr %i.f, align 8, !tbaa !281
  %i.de = zext i32 %i.dd to i64
  call void @_ZN4llvm13LiveIntervals15extendToIndicesERNS_9LiveRangeENS_8ArrayRefINS_9SlotIndexEEES5_(ptr noundef nonnull align 8 dereferenceable(424) %i.db, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.088.0138, ptr %i.dc, i64 %i.de, ptr null, i64 0) #22
  br label %.critedge

.critedge:                                        ; preds = %bb.x, %bb.w, %bb.t, %bb.s, %bb.y, %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit74
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.by, align 8
  %i.df = and i64 %.0.copyload.i.i.i.i.i.i, 6
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.critedge
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.088.0138, i64 112
  %.sroa.01.0.copyload = load i64, ptr %i.dh, align 8, !tbaa !28
  %i.di = load i64, ptr %2, align 8, !tbaa !824
  %i.dj = or i64 %i.di, %.sroa.01.0.copyload
  store i64 %i.dj, ptr %2, align 8, !tbaa !824
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.critedge
  %i.dk = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.e
  br i1 %i.dl, label %_ZN4llvm11SmallVectorINS_9SlotIndexELj8EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef %i.dk) #22
  br label %_ZN4llvm11SmallVectorINS_9SlotIndexELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_9SlotIndexELj8EED2Ev.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZL13isLiveThroughN4llvm15LiveQueryResultE.exit.thread

_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit.thread: ; preds = %bb.j, %bb.l, %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit
  %.sroa.082.099 = phi ptr [ %.026.i, %bb.l ], [ %.026.i, %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit ], [ %i.bb, %bb.j ]
  %.not51 = icmp eq ptr %.sroa.082.099, null
  br i1 %.not51, label %_ZL13isLiveThroughN4llvm15LiveQueryResultE.exit.thread, label %.thread.thread

.thread:                                          ; preds = %bb.n, %bb.o, %bb.p
  %i.dm = and i64 %i.bp, 6
  %i.dn = icmp eq i64 %i.dm, 6
  br i1 %i.dn, label %.thread.thread, label %bb.ac

bb.ac:                                            ; preds = %.thread
  %i.do = load i32, ptr %i.j, align 8, !tbaa !986
  %.not165 = icmp eq i32 %i.do, 1
  br i1 %.not165, label %bb.ad, label %_ZL13isLiveThroughN4llvm15LiveQueryResultE.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.dp = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i77 = load i64, ptr %i.dp, align 8
  %i.dq = and i64 %.0.copyload.i.i.i.i.i.i.i77, 6
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %_ZL13isLiveThroughN4llvm15LiveQueryResultE.exit, label %_ZL13isLiveThroughN4llvm15LiveQueryResultE.exit.thread

_ZL13isLiveThroughN4llvm15LiveQueryResultE.exit:  ; preds = %bb.ad
  %i.ds = and i64 %i.bp, 6
  %i.dt = icmp eq i64 %i.ds, 6
  %i.du = select i1 %i.dt, ptr null, ptr %i.bn
  %i.dv = icmp eq ptr %.026.i, %i.du
  br i1 %i.dv, label %.thread.thread, label %_ZL13isLiveThroughN4llvm15LiveQueryResultE.exit.thread

.thread.thread:                                   ; preds = %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit.thread, %.thread, %_ZL13isLiveThroughN4llvm15LiveQueryResultE.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.088.0138, i64 112
  %.sroa.0.0.copyload = load i64, ptr %i.dw, align 8, !tbaa !28
  %i.dx = load i64, ptr %2, align 8, !tbaa !824
  %i.dy = or i64 %i.dx, %.sroa.0.0.copyload
  store i64 %i.dy, ptr %2, align 8, !tbaa !824
  br label %_ZL13isLiveThroughN4llvm15LiveQueryResultE.exit.thread

_ZL13isLiveThroughN4llvm15LiveQueryResultE.exit.thread: ; preds = %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit.thread, %bb.ac, %bb.g, %bb.ad, %_ZL13isLiveThroughN4llvm15LiveQueryResultE.exit, %.thread.thread, %_ZN4llvm11SmallVectorINS_9SlotIndexELj8EED2Ev.exit
  %.2 = phi i1 [ true, %_ZN4llvm11SmallVectorINS_9SlotIndexELj8EED2Ev.exit ], [ %.1137, %.thread.thread ], [ %.1137, %_ZL13isLiveThroughN4llvm15LiveQueryResultE.exit ], [ %.1137, %bb.ac ], [ %.1137, %bb.g ], [ %.1137, %bb.ad ], [ %.1137, %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit.thread ] ; 2 uses
  %.sroa.088.0.in = getelementptr inbounds nuw i8, ptr %.sroa.088.0138, i64 104
  %.sroa.088.0 = load ptr, ptr %.sroa.088.0.in, align 8, !tbaa !835 ; 2 uses
  %.not132 = icmp eq ptr %.sroa.088.0, null
  br i1 %.not132, label %.loopexit, label %bb.g

.loopexit:                                        ; preds = %_ZL13isLiveThroughN4llvm15LiveQueryResultE.exit.thread, %bb.f, %bb.c, %bb.b
  %.3 = phi i1 [ %.0141, %bb.c ], [ %.0141, %bb.b ], [ %.0141, %bb.f ], [ %.2, %_ZL13isLiveThroughN4llvm15LiveQueryResultE.exit.thread ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1318

bb.ae:                                            ; preds = %._crit_edge
  call void @_ZN4llvm12LiveInterval20removeEmptySubRangesEv(ptr noundef nonnull align 8 dereferenceable(120) %1) #22
  br label %.critedge144

.critedge144:                                     ; preds = %bb.a, %bb.ae, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_18JoinVals11pruneValuesERS0_RN4llvm15SmallVectorImplINS2_9SlotIndexEEEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(520) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(520) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !984, !nonnull !19, !align !44
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !281  ; 2 uses
  %.not3457 = icmp eq i32 %i.c, 0
  br i1 %.not3457, label %._crit_edge, label %.lr.ph59

.lr.ph59:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.j = zext i32 %i.c to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9SlotIndexELb1EE9push_backES1_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph59, %_ZN4llvm23SmallVectorTemplateBaseINS_9SlotIndexELb1EE9push_backES1_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseINS_9SlotIndexELb1EE9push_backES1_.exit ] ; 6 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !984, !nonnull !19, !align !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1173
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !63   ; 6 uses
  %.val39 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %.val39, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 8, !tbaa !986
  switch i32 %i.s, label %_ZN4llvm23SmallVectorTemplateBaseINS_9SlotIndexELb1EE9push_backES1_.exit [
    i32 2, label %bb.o
    i32 3, label %bb.c
    i32 1, label %bb.o
  ]

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !976
  %i.u = load ptr, ptr %1, align 8, !tbaa !984, !nonnull !19, !align !44
  tail call void @_ZN4llvm13LiveIntervals10pruneValueERNS_9LiveRangeENS_9SlotIndexEPNS_15SmallVectorImplIS3_EE(ptr noundef nonnull align 8 dereferenceable(424) %i.t, ptr noundef nonnull align 8 dereferenceable(104) %i.u, i64 %i.q, ptr noundef nonnull %2) #22
  %.val38 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %.val38, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1292
  %i.y = load i32, ptr %i.x, align 8, !tbaa !875
  %i.z = zext i32 %i.y to i64
  %.val37 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %.val37, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !1310, !range !18, !noundef !19
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = load i32, ptr %i.aa, align 8
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = select i1 %i.ad, i1 %i.af, i1 false     ; 2 uses
  %i.ah = and i64 %i.q, 6
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZN4llvm23SmallVectorTemplateBaseINS_9SlotIndexELb1EE9push_backES1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %3, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.aj = and i64 %i.q, -8
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !942 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !62, !noalias !1319 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.aq = load i24, ptr %i.ap, align 8, !noalias !1319 ; 2 uses
  %i.ar = zext i24 %i.aq to i64
  %.idx.i = shl nuw nsw i64 %i.ar, 5
  %i.as = getelementptr i8, ptr %i.ao, i64 %.idx.i ; 5 uses
  %.not1.i.i.i.i.i = icmp eq i24 %i.aq, 0
  br i1 %.not1.i.i.i.i.i, label %_ZN4llvm12MachineInstr8all_defsEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.sroa.011.0.i.i = phi ptr [ %i.aw, %bb.f ], [ %i.ao, %bb.e ] ; 3 uses
  %i.at = load i32, ptr %.sroa.011.0.i.i, align 8, !noalias !1322
  %i.au = and i32 %i.at, 16777471
  %i.av = icmp eq i32 %i.au, 16777216
  br i1 %i.av, label %_ZN4llvm12MachineInstr8all_defsEv.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, %i.as
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !842

_ZN4llvm12MachineInstr8all_defsEv.exit:           ; preds = %.lr.ph.i.i.i.i.i, %bb.e
  %.sroa.011.1.i.i = phi ptr [ %i.ao, %bb.e ], [ %.sroa.011.0.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.not5355 = icmp eq ptr %.sroa.011.1.i.i, %i.as
  br i1 %.not5355, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm12MachineInstr8all_defsEv.exit, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit
  %.sroa.041.056 = phi ptr [ %.sroa.041.1, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit ], [ %.sroa.011.1.i.i, %_ZN4llvm12MachineInstr8all_defsEv.exit ] ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.041.056, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !63
  %i.az = load i32, ptr %i.g, align 8, !tbaa !189
  %i.ba = icmp eq i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.lr.ph
  %i.bb = load i32, ptr %.sroa.041.056, align 8   ; 5 uses
  %i.bc = and i32 %i.bb, 1048320
  %.not35 = icmp eq i32 %i.bc, 0
  br i1 %.not35, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = and i32 %i.bb, 268435456
  %.not54 = icmp eq i32 %i.bd, 0
  %or.cond = select i1 %.not54, i1 true, i1 %i.ag
  %i.be = and i32 %i.bb, -268435457
  %spec.select = select i1 %or.cond, i32 %i.bb, i32 %i.be
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bf = phi i32 [ %i.bb, %bb.g ], [ %spec.select, %bb.h ]
  %i.bg = and i32 %i.bf, -67108865
  store i32 %i.bg, ptr %.sroa.041.056, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.041.056, i64 32 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.bh, %i.as
  br i1 %.not1.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.k
  %.sroa.041.1 = phi ptr [ %i.bl, %bb.k ], [ %i.bh, %bb.j ] ; 4 uses
  %i.bi = load i32, ptr %.sroa.041.1, align 8
  %i.bj = and i32 %i.bi, 16777471
  %i.bk = icmp eq i32 %i.bj, 16777216
  br i1 %i.bk, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.041.1, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, %i.as
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !842

_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit: ; preds = %.lr.ph.i.i
  %.not53 = icmp eq ptr %.sroa.041.1, %i.as
  br i1 %.not53, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.f, %bb.j, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit, %bb.k, %_ZN4llvm12MachineInstr8all_defsEv.exit, %bb.d
  br i1 %i.ag, label %_ZN4llvm23SmallVectorTemplateBaseINS_9SlotIndexELb1EE9push_backES1_.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.bm = load i32, ptr %i.h, align 8, !tbaa !281 ; 2 uses
  %i.bn = load i32, ptr %i.i, align 4, !tbaa !282
  %.not.i = icmp ult i32 %i.bm, %i.bn
  br i1 %.not.i, label %bb.n, label %bb.m, !prof !212

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9SlotIndexELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 %i.q)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9SlotIndexELb1EE9push_backES1_.exit

bb.n:                                             ; preds = %bb.l
  %i.bo = zext i32 %i.bm to i64
  %i.bp = load ptr, ptr %2, align 8, !tbaa !21
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo
  store i64 %i.q, ptr %i.bq, align 1
  %i.br = load i32, ptr %i.h, align 8, !tbaa !281
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.h, align 8, !tbaa !281
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9SlotIndexELb1EE9push_backES1_.exit

bb.o:                                             ; preds = %bb.b, %bb.b
  %i.bt = trunc nuw i64 %indvars.iv to i32
  %i.bu = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_18JoinVals13isPrunedValueEjRS0_(ptr noundef nonnull align 8 dereferenceable(520) %0, i32 noundef %i.bt, ptr noundef nonnull align 8 dereferenceable(520) %1)
  br i1 %i.bu, label %bb.p, label %_ZN4llvm23SmallVectorTemplateBaseINS_9SlotIndexELb1EE9push_backES1_.exit

bb.p:                                             ; preds = %bb.o
  %.val36 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bv = getelementptr inbounds nuw [48 x i8], ptr %.val36, i64 %indvars.iv
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1292
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !875
  %i.bz = zext i32 %i.by to i64
end_hunk_2

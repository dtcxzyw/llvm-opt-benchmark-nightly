Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachineBlockPlacement?download=true
inline.NumInlined: 4665
inline.NumDeleted: 2120
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN12_GLOBAL__N_121MachineBlockPlacement23maybeTailDuplicateBlockEPN4llvm17MachineBasicBlockES3_RNS_10BlockChainEPNS1_14SmallSetVectorIPKS2_Lj16EEERNS1_14ilist_iteratorINS1_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEERPKS8_Rb:bb.a
  %i.dp = load ptr, ptr %9, align 8, !tbaa !50    ; 2 uses
  %i.dq = load i32, ptr %i.bj, align 8, !tbaa !195 ; 2 uses
  %i.dr = zext i32 %i.dq to i64
  %.idx119.i = shl nuw nsw i64 %i.dr, 3
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.idx119.i
  %.not49115.i = icmp eq i32 %i.dq, 0
  br i1 %.not49115.i, label %._crit_edge.thread.i.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 572 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, null             ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  br label %bb.t

._crit_edge.i:                                    ; preds = %bb.az
  %i.dx = icmp eq ptr %.2.i, null
  br i1 %i.dx, label %._crit_edge.thread.i, label %._crit_edge.thread.i.thread

bb.t:                                             ; preds = %bb.az, %.lr.ph.i
  %.0118.i = phi ptr [ null, %.lr.ph.i ], [ %.2.i, %bb.az ] ; 4 uses
  %.043117.i = phi ptr [ %i.dh, %.lr.ph.i ], [ %.3.i, %bb.az ] ; 10 uses
  %.047116.i = phi ptr [ %i.dp, %.lr.ph.i ], [ %i.hu, %bb.az ] ; 2 uses
  %i.dy = load ptr, ptr %.047116.i, align 8, !tbaa !261 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %.val61.i = load ptr, ptr %i.dt, align 8        ; 2 uses
  %.val62.i = load i8, ptr %i.du, align 4, !tbaa !241, !range !46, !noundef !47
  %i.dz = trunc nuw i8 %.val62.i to i1
  br i1 %i.dz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ea = call { i64, i8 } @_ZNK4llvm11MBFIWrapper20getBlockProfileCountEPKNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(32) %.val61.i, ptr noundef %i.dy) #25 ; 2 uses
  %i.eb = extractvalue { i64, i8 } %i.ea, 0
  %i.ec = extractvalue { i64, i8 } %i.ea, 1
  %i.ed = trunc nuw i8 %i.ec to i1
  %spec.select.i.i = select i1 %i.ed, i64 %i.eb, i64 0
  br label %_ZN12_GLOBAL__N_121MachineBlockPlacement24getBlockCountOrFrequencyEPKN4llvm17MachineBasicBlockE.exit.i

bb.v:                                             ; preds = %bb.t
  %i.ee = call i64 @_ZNK4llvm11MBFIWrapper12getBlockFreqEPKNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(32) %.val61.i, ptr noundef %i.dy) #25
  br label %_ZN12_GLOBAL__N_121MachineBlockPlacement24getBlockCountOrFrequencyEPKN4llvm17MachineBasicBlockE.exit.i

_ZN12_GLOBAL__N_121MachineBlockPlacement24getBlockCountOrFrequencyEPKN4llvm17MachineBasicBlockE.exit.i: ; preds = %bb.v, %bb.u
  %.sroa.01.1.i.i = phi i64 [ %i.ee, %bb.v ], [ %spec.select.i.i, %bb.u ]
  store i64 %.sroa.01.1.i.i, ptr %11, align 8
  %i.ef = load ptr, ptr %i.c, align 8, !tbaa !261
  %i.eg = call noundef zeroext i1 @_ZN4llvm14TailDuplicator16canTailDuplicateEPNS_17MachineBasicBlockES2_(ptr noundef nonnull align 8 dereferenceable(168) %i.k, ptr noundef %i.ef, ptr noundef %i.dy) #25
  br i1 %i.eg, label %bb.as, label %bb.w

bb.w:                                             ; preds = %_ZN12_GLOBAL__N_121MachineBlockPlacement24getBlockCountOrFrequencyEPKN4llvm17MachineBasicBlockE.exit.i
  %.not52.i = icmp eq ptr %.0118.i, null
  br i1 %.not52.i, label %bb.x, label %bb.az

bb.x:                                             ; preds = %bb.w
  %i.eh = load ptr, ptr %i.c, align 8, !tbaa !261 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.dy, ptr %i.a, align 8, !tbaa !261
  %i.ei = icmp eq ptr %i.eh, %i.dy
  br i1 %i.ei, label %_ZN12_GLOBAL__N_121MachineBlockPlacement15isBestSuccessorEPN4llvm17MachineBasicBlockES3_PNS1_14SmallSetVectorIPKS2_Lj16EEE.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %.not.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ej = call noundef zeroext i1 @_ZNK4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj16EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj16EE8containsES3_(ptr noundef nonnull align 8 dereferenceable(168) %i.af, ptr noundef %i.dy)
  br i1 %i.ej, label %bb.aa, label %_ZN12_GLOBAL__N_121MachineBlockPlacement15isBestSuccessorEPN4llvm17MachineBasicBlockES3_PNS1_14SmallSetVectorIPKS2_Lj16EEE.exit.thread.i

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ek = call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEPN12_GLOBAL__N_110BlockChainENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_EixERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %i.dv, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !343 ; 3 uses
  %.not37.i.i = icmp eq ptr %i.el, null
  br i1 %.not37.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val44.i.i = load ptr, ptr %i.el, align 8, !tbaa !50
  %i.em = getelementptr i8, ptr %i.el, i64 8
  %.val45.i.i = load i32, ptr %i.em, align 8, !tbaa !195
  %i.en = zext i32 %.val45.i.i to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.val44.i.i, i64 %i.en
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !261
  %.not38.i.i = icmp eq ptr %i.dy, %i.eq
  br i1 %.not38.i.i, label %bb.ac, label %_ZN12_GLOBAL__N_121MachineBlockPlacement15isBestSuccessorEPN4llvm17MachineBasicBlockES3_PNS1_14SmallSetVectorIPKS2_Lj16EEE.exit.thread.i

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.er = getelementptr inbounds nuw i8, ptr %i.dy, i64 112
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !50 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.dy, i64 120
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !195 ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %.idx.i82.i = shl nuw nsw i64 %i.ev, 3
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 %.idx.i82.i ; 2 uses
  %.not3958.i.i = icmp eq i32 %i.eu, 0
  br i1 %.not3958.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ac
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.ag
  %.sroa.012.060.us.i.i = phi i32 [ %.sroa.012.4.us.i.i, %bb.ag ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %.02859.us.i.i = phi ptr [ %i.fd, %bb.ag ], [ %i.es, %.lr.ph.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.ex = load ptr, ptr %.02859.us.i.i, align 8, !tbaa !261 ; 4 uses
  store ptr %i.ex, ptr %i.b, align 8, !tbaa !261
  %.not40.us.i.i = icmp eq ptr %i.ex, %i.eh
  br i1 %.not40.us.i.i, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.split.us.i.i
  %i.ey = call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEPN12_GLOBAL__N_110BlockChainENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_EixERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %i.dv, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !343 ; 2 uses
  %.not42.us.i.i = icmp eq ptr %i.ez, null
  br i1 %.not42.us.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.val.us.i.i = load ptr, ptr %i.ez, align 8, !tbaa !50
  %i.fa = load ptr, ptr %.val.us.i.i, align 8, !tbaa !261
  %.not43.us.i.i = icmp eq ptr %i.ex, %i.fa
  br i1 %.not43.us.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fb = load ptr, ptr %i.dw, align 8, !tbaa !235
  %i.fc = call i32 @_ZNK4llvm28MachineBranchProbabilityInfo18getEdgeProbabilityEPKNS_17MachineBasicBlockES3_(ptr noundef nonnull align 1 dereferenceable(1) %i.fb, ptr noundef %i.dy, ptr noundef %i.ex) #25
  %spec.select.us.i.i = call i32 @llvm.umax.i32(i32 %.sroa.012.060.us.i.i, i32 %i.fc)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.lr.ph.split.us.i.i
  %.sroa.012.4.us.i.i = phi i32 [ %.sroa.012.060.us.i.i, %bb.ae ], [ %.sroa.012.060.us.i.i, %.lr.ph.split.us.i.i ], [ %spec.select.us.i.i, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.fd = getelementptr inbounds nuw i8, ptr %.02859.us.i.i, i64 8 ; 2 uses
  %.not39.us.i.i = icmp eq ptr %i.fd, %i.ew
  br i1 %.not39.us.i.i, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i

._crit_edge.i.i:                                  ; preds = %bb.al, %bb.ag, %bb.ac
  %.sroa.012.0.lcssa.i.i = phi i32 [ 0, %bb.ac ], [ %.sroa.012.4.us.i.i, %bb.ag ], [ %.sroa.012.4.i.i, %bb.al ] ; 2 uses
  %i.fe = load ptr, ptr %i.dw, align 8, !tbaa !235
  %i.ff = call i32 @_ZNK4llvm28MachineBranchProbabilityInfo18getEdgeProbabilityEPKNS_17MachineBasicBlockES3_(ptr noundef nonnull align 1 dereferenceable(1) %i.fe, ptr noundef %i.dy, ptr noundef %i.eh) #25 ; 2 uses
  %.not57.i.i = icmp ult i32 %.sroa.012.0.lcssa.i.i, %i.ff
  br i1 %.not57.i.i, label %bb.am, label %_ZN12_GLOBAL__N_121MachineBlockPlacement15isBestSuccessorEPN4llvm17MachineBasicBlockES3_PNS1_14SmallSetVectorIPKS2_Lj16EEE.exit.thread.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.al
  %.sroa.012.060.i.i = phi i32 [ %.sroa.012.4.i.i, %bb.al ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %.02859.i.i = phi ptr [ %i.fn, %bb.al ], [ %i.es, %.lr.ph.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.fg = load ptr, ptr %.02859.i.i, align 8, !tbaa !261 ; 5 uses
  store ptr %i.fg, ptr %i.b, align 8, !tbaa !261
  %.not40.i.i = icmp eq ptr %i.fg, %i.eh
  br i1 %.not40.i.i, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.split.i.i
  %i.fh = call noundef zeroext i1 @_ZNK4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj16EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj16EE8containsES3_(ptr noundef nonnull align 8 dereferenceable(168) %i.af, ptr noundef %i.fg)
  br i1 %i.fh, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.fi = call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEPN12_GLOBAL__N_110BlockChainENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_EixERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %i.dv, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !343 ; 2 uses
  %.not42.i.i = icmp eq ptr %i.fj, null
  br i1 %.not42.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.val.i.i = load ptr, ptr %i.fj, align 8, !tbaa !50
  %i.fk = load ptr, ptr %.val.i.i, align 8, !tbaa !261
  %.not43.i.i = icmp eq ptr %i.fg, %i.fk
  br i1 %.not43.i.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.fl = load ptr, ptr %i.dw, align 8, !tbaa !235
  %i.fm = call i32 @_ZNK4llvm28MachineBranchProbabilityInfo18getEdgeProbabilityEPKNS_17MachineBasicBlockES3_(ptr noundef nonnull align 1 dereferenceable(1) %i.fl, ptr noundef %i.dy, ptr noundef %i.fg) #25
  %spec.select.i85.i = call i32 @llvm.umax.i32(i32 %.sroa.012.060.i.i, i32 %i.fm)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ah, %.lr.ph.split.i.i
  %.sroa.012.4.i.i = phi i32 [ %.sroa.012.060.i.i, %bb.ah ], [ %.sroa.012.060.i.i, %.lr.ph.split.i.i ], [ %spec.select.i85.i, %bb.ak ], [ %.sroa.012.060.i.i, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.fn = getelementptr inbounds nuw i8, ptr %.02859.i.i, i64 8 ; 2 uses
  %.not39.i.i = icmp eq ptr %i.fn, %i.ew
  br i1 %.not39.i.i, label %._crit_edge.i.i, label %.lr.ph.split.i.i

bb.am:                                            ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %.val47.i.i = load ptr, ptr %i.dt, align 8      ; 2 uses
  %.val48.i.i = load i8, ptr %i.du, align 4, !tbaa !241, !range !46, !noundef !47
  %i.fo = trunc nuw i8 %.val48.i.i to i1
  br i1 %i.fo, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fp = call { i64, i8 } @_ZNK4llvm11MBFIWrapper20getBlockProfileCountEPKNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(32) %.val47.i.i, ptr noundef %i.dy) #25 ; 2 uses
  %i.fq = extractvalue { i64, i8 } %i.fp, 0
  %i.fr = extractvalue { i64, i8 } %i.fp, 1
  %i.fs = trunc nuw i8 %i.fr to i1
  %spec.select.i.i84.i = select i1 %i.fs, i64 %i.fq, i64 0
  br label %_ZN12_GLOBAL__N_121MachineBlockPlacement24getBlockCountOrFrequencyEPKN4llvm17MachineBasicBlockE.exit.i.i

bb.ao:                                            ; preds = %bb.am
  %i.ft = call i64 @_ZNK4llvm11MBFIWrapper12getBlockFreqEPKNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(32) %.val47.i.i, ptr noundef %i.dy) #25
  br label %_ZN12_GLOBAL__N_121MachineBlockPlacement24getBlockCountOrFrequencyEPKN4llvm17MachineBasicBlockE.exit.i.i

_ZN12_GLOBAL__N_121MachineBlockPlacement24getBlockCountOrFrequencyEPKN4llvm17MachineBasicBlockE.exit.i.i: ; preds = %bb.ao, %bb.an
  %.sroa.01.1.i.i.i = phi i64 [ %i.ft, %bb.ao ], [ %spec.select.i.i84.i, %bb.an ]
  store i64 %.sroa.01.1.i.i.i, ptr %8, align 8
  %spec.select.i.i58.i.i = sub nuw i32 %i.ff, %.sroa.012.0.lcssa.i.i
  %i.fu = call i64 @_ZNK4llvm14BlockFrequencymlENS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 %spec.select.i.i58.i.i) #25
  %.val46.i.i = load i64, ptr %i.ag, align 8, !tbaa !348
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eh, i64 56
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eh, i64 48 ; 2 uses
  %.sroa.06.09.i.i.i.i = load ptr, ptr %i.fv, align 8, !tbaa !278 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %.sroa.06.09.i.i.i.i, %i.fw
  br i1 %.not10.i.i.i.i, label %_ZN12_GLOBAL__N_121MachineBlockPlacement15isBestSuccessorEPN4llvm17MachineBasicBlockES3_PNS1_14SmallSetVectorIPKS2_Lj16EEE.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN12_GLOBAL__N_121MachineBlockPlacement24getBlockCountOrFrequencyEPKN4llvm17MachineBasicBlockE.exit.i.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i
  %.sroa.06.012.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i ], [ %.sroa.06.09.i.i.i.i, %_ZN12_GLOBAL__N_121MachineBlockPlacement24getBlockCountOrFrequencyEPKN4llvm17MachineBasicBlockE.exit.i.i ] ; 8 uses
  %.011.i.i.i.i = phi i64 [ %.1.i.i.i.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i ], [ 0, %_ZN12_GLOBAL__N_121MachineBlockPlacement24getBlockCountOrFrequencyEPKN4llvm17MachineBasicBlockE.exit.i.i ] ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i.i.i.i, i64 52
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !290
  switch i32 %i.fy, label %bb.ap [
    i32 74, label %bb.aq
    i32 0, label %bb.aq
  ]

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i.i.i.i, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !1206
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !1208
  %i.gd = lshr i64 %i.gc, 4
  %i.ge = and i64 %i.gd, 1
  %i.gf = xor i64 %i.ge, 1
  %spec.select.i.i50.i.i = add i64 %i.gf, %.011.i.i.i.i
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %.011.i.i.i.i, %.lr.ph.i.i.i.i ], [ %spec.select.i.i50.i.i, %bb.ap ], [ %.011.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.012.i.i.i.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.06.012.i.i.i.i, align 8
  %i.gg = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.gg, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i: ; preds = %bb.aq
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i.i.i.i, i64 44
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !1209
  %i.gj = and i32 %i.gi, 8
  %.not34.i.i.i.i.i.i.i = icmp eq i32 %i.gj, 0
  br i1 %.not34.i.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i.i.i = phi ptr [ %i.gl, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i ], [ %.sroa.06.012.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i.i, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !278 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 44
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !1209
  %i.go = and i32 %i.gn, 8
  %.not3.i.i.i.i.i.i.i = icmp eq i32 %i.go, 0
  br i1 %.not3.i.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i, !llvm.loop !1185

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i, %bb.aq
  %.sroa.0.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.012.i.i.i.i, %bb.aq ], [ %.sroa.06.012.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i ], [ %i.gl, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i.i.i, i64 8
  %.sroa.06.0.i.i.i.i = load ptr, ptr %i.gp, align 8, !tbaa !278 ; 2 uses
  %.not.i.i.i83.i = icmp eq ptr %.sroa.06.0.i.i.i.i, %i.fw
  br i1 %.not.i.i.i83.i, label %_ZL19countMBBInstructionPN4llvm17MachineBasicBlockE.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i

_ZL19countMBBInstructionPN4llvm17MachineBasicBlockE.exit.loopexit.i.i.i: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i
  %i.gq = mul i64 %.1.i.i.i.i, %.val46.i.i
  br label %_ZN12_GLOBAL__N_121MachineBlockPlacement15isBestSuccessorEPN4llvm17MachineBasicBlockES3_PNS1_14SmallSetVectorIPKS2_Lj16EEE.exit.i

_ZN12_GLOBAL__N_121MachineBlockPlacement15isBestSuccessorEPN4llvm17MachineBasicBlockES3_PNS1_14SmallSetVectorIPKS2_Lj16EEE.exit.thread.i: ; preds = %._crit_edge.i.i, %bb.ab, %bb.z, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.az

_ZN12_GLOBAL__N_121MachineBlockPlacement15isBestSuccessorEPN4llvm17MachineBasicBlockES3_PNS1_14SmallSetVectorIPKS2_Lj16EEE.exit.i: ; preds = %_ZL19countMBBInstructionPN4llvm17MachineBasicBlockE.exit.loopexit.i.i.i, %_ZN12_GLOBAL__N_121MachineBlockPlacement24getBlockCountOrFrequencyEPKN4llvm17MachineBasicBlockE.exit.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %_ZN12_GLOBAL__N_121MachineBlockPlacement24getBlockCountOrFrequencyEPKN4llvm17MachineBasicBlockE.exit.i.i ], [ %i.gq, %_ZL19countMBBInstructionPN4llvm17MachineBasicBlockE.exit.loopexit.i.i.i ]
  %i.gr = icmp ugt i64 %i.fu, %.0.lcssa.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.gr, label %bb.ar, label %bb.az

bb.ar:                                            ; preds = %_ZN12_GLOBAL__N_121MachineBlockPlacement15isBestSuccessorEPN4llvm17MachineBasicBlockES3_PNS1_14SmallSetVectorIPKS2_Lj16EEE.exit.i
  %i.gs = load ptr, ptr %10, align 8, !tbaa !50
  %i.gt = load i32, ptr %i.by, align 8, !tbaa !195
  %i.gu = zext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gu
  %.not53.i = icmp eq ptr %.043117.i, %i.gv
  %spec.select.idx.i = select i1 %.not53.i, i64 0, i64 8
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.043117.i, i64 %spec.select.idx.i
  br label %bb.az

bb.as:                                            ; preds = %_ZN12_GLOBAL__N_121MachineBlockPlacement24getBlockCountOrFrequencyEPKN4llvm17MachineBasicBlockE.exit.i
  %i.gw = call i64 @_ZNK4llvm14BlockFrequencymlENS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 %.sroa.032.0.i) #25
  %i.gx = load i64, ptr %11, align 8, !tbaa !348  ; 3 uses
  %spec.select.i.i86.i = call i64 @llvm.uadd.sat.i64(i64 %i.gw, i64 %i.gx)
  %i.gy = load ptr, ptr %10, align 8, !tbaa !50
  %i.gz = load i32, ptr %i.by, align 8, !tbaa !195 ; 2 uses
  %i.ha = zext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.ha
  %i.hc = icmp eq ptr %.043117.i, %i.hb
  br i1 %i.hc, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %.not54.i = icmp eq i32 %i.gz, 0
  %spec.select102.i = select i1 %.not54.i, i64 0, i64 %i.gx
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.hd = load ptr, ptr %i.dw, align 8, !tbaa !235
  %i.he = load ptr, ptr %i.c, align 8, !tbaa !261
  %i.hf = load ptr, ptr %.043117.i, align 8, !tbaa !261
  %i.hg = call i32 @_ZNK4llvm28MachineBranchProbabilityInfo18getEdgeProbabilityEPKNS_17MachineBasicBlockES3_(ptr noundef nonnull align 1 dereferenceable(1) %i.hd, ptr noundef %i.he, ptr noundef %i.hf) #25
  %i.hh = call i64 @_ZNK4llvm14BlockFrequencymlENS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 %i.hg) #25
  %storemerge.i.i = call i64 @llvm.usub.sat.i64(i64 %i.gx, i64 %i.hh)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.sroa.0.0.i = phi i64 [ %spec.select102.i, %bb.at ], [ %storemerge.i.i, %bb.au ]
  %storemerge.i89.i = call i64 @llvm.usub.sat.i64(i64 %spec.select.i.i86.i, i64 %.sroa.0.0.i)
  %i.hi = icmp ugt i64 %storemerge.i89.i, %.0.lcssa.i.i.i
  br i1 %i.hi, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.hj = load i32, ptr %i.x, align 8, !tbaa !195 ; 2 uses
  %i.hk = load i32, ptr %i.y, align 4, !tbaa !196
  %.not.i90.i = icmp ult i32 %i.hj, %i.hk
  br i1 %.not.i90.i, label %bb.ay, label %bb.ax, !prof !191

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef %i.dy)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit.i

bb.ay:                                            ; preds = %bb.aw
  %i.hl = zext i32 %i.hj to i64
  %i.hm = load ptr, ptr %15, align 8, !tbaa !50
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.hl
  store ptr %i.dy, ptr %i.hn, align 1
  %i.ho = load i32, ptr %i.x, align 8, !tbaa !195
  %i.hp = add i32 %i.ho, 1
  store i32 %i.hp, ptr %i.x, align 8, !tbaa !195
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit.i: ; preds = %bb.ay, %bb.ax
  %i.hq = load ptr, ptr %10, align 8, !tbaa !50
  %i.hr = load i32, ptr %i.by, align 8, !tbaa !195
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.hs
  %.not55.i = icmp eq ptr %.043117.i, %i.ht
  %spec.select56.idx.i = select i1 %.not55.i, i64 0, i64 8
  %spec.select56.i = getelementptr inbounds nuw i8, ptr %.043117.i, i64 %spec.select56.idx.i
  br label %bb.az

bb.az:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit.i, %bb.av, %bb.ar, %_ZN12_GLOBAL__N_121MachineBlockPlacement15isBestSuccessorEPN4llvm17MachineBasicBlockES3_PNS1_14SmallSetVectorIPKS2_Lj16EEE.exit.i, %_ZN12_GLOBAL__N_121MachineBlockPlacement15isBestSuccessorEPN4llvm17MachineBasicBlockES3_PNS1_14SmallSetVectorIPKS2_Lj16EEE.exit.thread.i, %bb.w
  %.3.i = phi ptr [ %.043117.i, %_ZN12_GLOBAL__N_121MachineBlockPlacement15isBestSuccessorEPN4llvm17MachineBasicBlockES3_PNS1_14SmallSetVectorIPKS2_Lj16EEE.exit.thread.i ], [ %.043117.i, %bb.w ], [ %.043117.i, %_ZN12_GLOBAL__N_121MachineBlockPlacement15isBestSuccessorEPN4llvm17MachineBasicBlockES3_PNS1_14SmallSetVectorIPKS2_Lj16EEE.exit.i ], [ %spec.select.i, %bb.ar ], [ %.043117.i, %bb.av ], [ %spec.select56.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit.i ]
  %.2.i = phi ptr [ null, %_ZN12_GLOBAL__N_121MachineBlockPlacement15isBestSuccessorEPN4llvm17MachineBasicBlockES3_PNS1_14SmallSetVectorIPKS2_Lj16EEE.exit.thread.i ], [ %.0118.i, %bb.w ], [ null, %_ZN12_GLOBAL__N_121MachineBlockPlacement15isBestSuccessorEPN4llvm17MachineBasicBlockES3_PNS1_14SmallSetVectorIPKS2_Lj16EEE.exit.i ], [ %i.dy, %bb.ar ], [ %.0118.i, %bb.av ], [ %.0118.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.hu = getelementptr inbounds nuw i8, ptr %.047116.i, i64 8 ; 2 uses
  %.not49.i = icmp eq ptr %i.hu, %i.ds
  br i1 %.not49.i, label %._crit_edge.i, label %bb.t

._crit_edge.thread.i:                             ; preds = %._crit_edge.i
  %.pre115 = load i32, ptr %i.bj, align 8, !tbaa !195
  %i.hv = load i32, ptr %i.x, align 8, !tbaa !195 ; 4 uses
  %i.hw = icmp uge i32 %i.hv, %.pre115
  %.not51.i = icmp eq i32 %i.hv, 0
  %or.cond.i = or i1 %.not51.i, %i.hw
  br i1 %or.cond.i, label %._crit_edge.thread.i.thread, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.thread.i
  %i.hx = zext i32 %i.hv to i64
  %i.hy = load ptr, ptr %15, align 8, !tbaa !50   ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.hx
  %i.ia = getelementptr inbounds i8, ptr %i.hz, i64 -8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !261
  store ptr %i.ib, ptr %i.hy, align 8, !tbaa !261
  %i.ic = add i32 %i.hv, -1
  store i32 %i.ic, ptr %i.x, align 8, !tbaa !195
  br label %._crit_edge.thread.i.thread

._crit_edge.thread.i.thread:                      ; preds = %bb.s, %bb.ba, %._crit_edge.thread.i, %._crit_edge.i
  %i.id = load ptr, ptr %10, align 8, !tbaa !50   ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.bx
  br i1 %i.ie, label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj8EED2Ev.exit.i, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.thread.i.thread
  call void @free(ptr noundef %i.id) #25
  br label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj8EED2Ev.exit.i

_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj8EED2Ev.exit.i: ; preds = %bb.bb, %._crit_edge.thread.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.if = load ptr, ptr %9, align 8, !tbaa !50    ; 2 uses
  %i.ig = icmp eq ptr %i.if, %i.bi
  br i1 %i.ig, label %_ZN12_GLOBAL__N_121MachineBlockPlacement23findDuplicateCandidatesERN4llvm15SmallVectorImplIPNS1_17MachineBasicBlockEEES4_PNS1_14SmallSetVectorIPKS3_Lj16EEE.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj8EED2Ev.exit.i
  call void @free(ptr noundef %i.if) #25
  br label %_ZN12_GLOBAL__N_121MachineBlockPlacement23findDuplicateCandidatesERN4llvm15SmallVectorImplIPNS1_17MachineBasicBlockEEES4_PNS1_14SmallSetVectorIPKS3_Lj16EEE.exit

_ZN12_GLOBAL__N_121MachineBlockPlacement23findDuplicateCandidatesERN4llvm15SmallVectorImplIPNS1_17MachineBasicBlockEEES4_PNS1_14SmallSetVectorIPKS3_Lj16EEE.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj8EED2Ev.exit.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ih = load i32, ptr %i.x, align 8, !tbaa !195 ; 2 uses
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %bb.cc, label %bb.bd

bb.bd:                                            ; preds = %_ZN12_GLOBAL__N_121MachineBlockPlacement23findDuplicateCandidatesERN4llvm15SmallVectorImplIPNS1_17MachineBasicBlockEEES4_PNS1_14SmallSetVectorIPKS3_Lj16EEE.exit
end_hunk_0

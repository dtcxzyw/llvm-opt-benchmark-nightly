Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachineBlockPlacement?download=true
inline.NumInlined: 4665
inline.NumDeleted: 2120
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN12_GLOBAL__N_121MachineBlockPlacement3runERN4llvm15MachineFunctionE:_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.aqn = zext i32 %i.aql to i64
  %i.aqo = load ptr, ptr %15, align 8, !tbaa !50
  %i.aqp = getelementptr inbounds nuw [24 x i8], ptr %i.aqo, i64 %i.aqn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aqp, ptr noundef nonnull align 8 dereferenceable(24) %20, i64 24, i1 false)
  %i.aqq = add nuw i32 %i.aql, 1
  store i32 %i.aqq, ptr %i.xt, align 8, !tbaa !195
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_10codelayout9EdgeCountELb1EE9push_backERKS2_.exit119.i

_ZN4llvm23SmallVectorTemplateBaseINS_10codelayout9EdgeCountELb1EE9push_backERKS2_.exit119.i: ; preds = %bb.dc, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  %i.aqr = getelementptr inbounds nuw i8, ptr %.050296.i, i64 8 ; 2 uses
  %.not.i71 = icmp eq ptr %i.aqr, %i.ajt
  br i1 %.not.i71, label %.loopexit.i72, label %bb.cs

.loopexit.sink.split.i:                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_10codelayout9EdgeCountELb1EE9push_backERKS2_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_17MachineBasicBlockELb1EE9push_backES3_.exit112.i, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25
  br label %.loopexit.i72

.loopexit.i72:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_10codelayout9EdgeCountELb1EE9push_backERKS2_.exit119.i, %.loopexit.sink.split.i, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  %i.aqs = getelementptr inbounds nuw i8, ptr %.sroa.0225.0305.i, i64 8
  %.sroa.0225.0.i = load ptr, ptr %i.aqs, align 8, !tbaa !244 ; 2 uses
  %.not262.i = icmp eq ptr %.sroa.0225.0.i, %i.yc
  br i1 %.not262.i, label %._crit_edge308.loopexit.i, label %bb.bu

._crit_edge318.loopexit.i:                        ; preds = %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE9push_backERKS3_.exit.i
  %.pre383.i = load ptr, ptr %21, align 8, !tbaa !716
  %.pre384.i = load ptr, ptr %i.aal, align 8, !tbaa !717
  br label %._crit_edge318.i

._crit_edge318.i:                                 ; preds = %._crit_edge318.loopexit.i, %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE7reserveEm.exit103.i
  %.sroa.6.2 = phi ptr [ %.sroa.6.0, %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE7reserveEm.exit103.i ], [ %.sroa.6.1, %._crit_edge318.loopexit.i ]
  %i.aqt = phi ptr [ %i.aak, %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE7reserveEm.exit103.i ], [ %.pre384.i, %._crit_edge318.loopexit.i ]
  %i.aqu = phi ptr [ %i.aak, %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE7reserveEm.exit103.i ], [ %.pre383.i, %._crit_edge318.loopexit.i ] ; 2 uses
  %i.aqv = phi ptr [ %.sroa.6.0, %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE7reserveEm.exit103.i ], [ %i.avw, %._crit_edge318.loopexit.i ] ; 4 uses
  %i.aqw = phi ptr [ %.promoted309.i, %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE7reserveEm.exit103.i ], [ %i.avx, %._crit_edge318.loopexit.i ]
  %i.aqx = ptrtoint ptr %i.aqt to i64
  %i.aqy = ptrtoint ptr %i.aqu to i64
  %i.aqz = sub i64 %i.aqx, %i.aqy
  %i.ara = ashr exact i64 %i.aqz, 3
  %i.arb = load ptr, ptr %14, align 8, !tbaa !50
  %i.arc = load i32, ptr %i.xq, align 8, !tbaa !195
  %i.ard = zext i32 %i.arc to i64
  %i.are = load ptr, ptr %15, align 8, !tbaa !50
  %i.arf = load i32, ptr %i.xt, align 8, !tbaa !195
  %i.arg = zext i32 %i.arf to i64
  %i.arh = call noundef double @_ZN4llvm10codelayout15calcExtTspScoreENS_8ArrayRefImEES2_NS1_INS0_9EdgeCountEEE(ptr %i.aqu, i64 %i.ara, ptr %i.arb, i64 %i.ard, ptr %i.are, i64 %i.arg) #25
  %i.ari = fcmp ogt double %i.zo, %i.arh
  %or.cond63.i = and i1 %.034, %i.ari             ; 2 uses
  %i.arj = load ptr, ptr %i.u, align 8, !tbaa !245
  call void @_ZN4llvm15MachineFunction14RenumberBlocksEPNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(1065) %i.arj, ptr noundef null) #25
  %.sroa.speculated = select i1 %or.cond63.i, ptr %.sroa.9.2, ptr %.sroa.6.2 ; 3 uses
  %.sroa.speculated128 = select i1 %or.cond63.i, ptr %.lcssa288.i, ptr %i.aqv ; 4 uses
  %.not72.i102 = icmp eq ptr %.sroa.speculated, %.sroa.speculated128
  br i1 %.not72.i102, label %_ZN12_GLOBAL__N_121MachineBlockPlacement16assignBlockOrderERKSt6vectorIPKN4llvm17MachineBasicBlockESaIS5_EE.exit, label %.lr.ph.i103

.lr.ph.i103:                                      ; preds = %._crit_edge318.i
  %i.ark = ptrtoint ptr %.sroa.speculated to i64
  %i.arl = ptrtoint ptr %.sroa.speculated128 to i64
  %i.arm = sub i64 %i.ark, %i.arl
  %i.arn = ashr exact i64 %i.arm, 3
  %i.aro = load ptr, ptr %i.u, align 8, !tbaa !245 ; 3 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aro, i64 88
  %i.arq = load ptr, ptr %i.arp, align 8, !tbaa !262 ; 2 uses
  br label %bb.de

bb.dd:                                            ; preds = %bb.de
  %i.arr = add nuw i64 %.03158.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.arr, %i.arn
  br i1 %exitcond.not.i, label %_ZN12_GLOBAL__N_121MachineBlockPlacement16assignBlockOrderERKSt6vectorIPKN4llvm17MachineBasicBlockESaIS5_EE.exit, label %bb.de, !llvm.loop !527

bb.de:                                            ; preds = %bb.dd, %.lr.ph.i103
  %.03158.i = phi i64 [ 0, %.lr.ph.i103 ], [ %i.arr, %bb.dd ] ; 3 uses
  %i.ars = getelementptr inbounds nuw [8 x i8], ptr %.sroa.speculated128, i64 %.03158.i
  %i.art = load ptr, ptr %i.ars, align 8, !tbaa !261
  %i.aru = and i64 %.03158.i, 4294967295
  %i.arv = getelementptr inbounds nuw [8 x i8], ptr %i.arq, i64 %i.aru
  %i.arw = load ptr, ptr %i.arv, align 8, !tbaa !261
  %.not.i104 = icmp eq ptr %i.art, %i.arw
  br i1 %.not.i104, label %bb.dd, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.arx = getelementptr inbounds nuw i8, ptr %i.aro, i64 96
  %i.ary = load ptr, ptr %i.arx, align 8, !tbaa !263
  %i.arz = ptrtoint ptr %i.ary to i64
  %i.asa = ptrtoint ptr %i.arq to i64
  %i.asb = sub i64 %i.arz, %i.asa
  %i.asc = lshr exact i64 %i.asb, 3               ; 2 uses
  %i.asd = trunc i64 %i.asc to i32
  %i.ase = and i64 %i.asc, 4294967295             ; 5 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.asf, ptr %2, align 8, !tbaa !50
  %i.asg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 0, ptr %i.asg, align 8, !tbaa !195
  %i.ash = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 4, ptr %i.ash, align 4, !tbaa !196
  %i.asi = icmp eq i64 %i.ase, 0
  br i1 %i.asi, label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EEC2Em.exit.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.asj = icmp samesign ugt i64 %i.ase, 4
  br i1 %i.asj, label %_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE7reserveEm.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i105

_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE7reserveEm.exit.i.i.i.i: ; preds = %bb.dg
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %i.asf, i64 noundef %i.ase, i64 noundef 8) #25
  %.pre.i.i.i.i113 = load i32, ptr %i.asg, align 8, !tbaa !195
  %.pre13.i.i.i.i114 = zext i32 %.pre.i.i.i.i113 to i64 ; 2 uses
  %.not11.i.i.i.i115 = icmp samesign eq i64 %i.ase, %.pre13.i.i.i.i114
  br i1 %.not11.i.i.i.i115, label %.sink.split.i.i.i.i106, label %_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i

_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i: ; preds = %_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE7reserveEm.exit.i.i.i.i
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !50
  br label %.lr.ph.preheader.i.i.i.i105

.lr.ph.preheader.i.i.i.i105:                      ; preds = %_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i, %bb.dg
  %i.ask = phi ptr [ %.pre.i.i, %_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i ], [ %i.asf, %bb.dg ]
  %.pre-phi.i.i3.i.i = phi i64 [ %.pre13.i.i.i.i114, %_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i ], [ 0, %bb.dg ] ; 2 uses
  %i.asl = getelementptr [8 x i8], ptr %i.ask, i64 %.pre-phi.i.i3.i.i
  %i.asm = sub nsw i64 %i.ase, %.pre-phi.i.i3.i.i
  %i.asn = shl nsw i64 %i.asm, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.asl, i8 0, i64 %i.asn, i1 false), !tbaa !261
  br label %.sink.split.i.i.i.i106

.sink.split.i.i.i.i106:                           ; preds = %.lr.ph.preheader.i.i.i.i105, %_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE7reserveEm.exit.i.i.i.i
  store i32 %i.asd, ptr %i.asg, align 8, !tbaa !195
  %.pre.i107 = load ptr, ptr %i.u, align 8, !tbaa !245
  br label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EEC2Em.exit.i

_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EEC2Em.exit.i: ; preds = %.sink.split.i.i.i.i106, %bb.df
  %i.aso = phi ptr [ %i.aro, %bb.df ], [ %.pre.i107, %.sink.split.i.i.i.i106 ] ; 2 uses
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aso, i64 304
  %i.asq = getelementptr inbounds nuw i8, ptr %i.aso, i64 296 ; 2 uses
  %.sroa.047.059.i = load ptr, ptr %i.asp, align 8, !tbaa !244 ; 2 uses
  %.not5160.i = icmp eq ptr %.sroa.047.059.i, %i.asq
  br i1 %.not5160.i, label %.lr.ph66.i, label %.lr.ph62.i

.lr.ph66.i:                                       ; preds = %.lr.ph62.i, %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EEC2Em.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.asr = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.dh

.lr.ph62.i:                                       ; preds = %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EEC2Em.exit.i, %.lr.ph62.i
  %.sroa.047.061.i = phi ptr [ %.sroa.047.0.i, %.lr.ph62.i ], [ %.sroa.047.059.i, %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EEC2Em.exit.i ] ; 3 uses
  %i.ass = call noundef ptr @_ZN4llvm17MachineBasicBlock14getFallThroughEb(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.047.061.i, i1 noundef zeroext true) #25
  %i.ast = getelementptr inbounds nuw i8, ptr %.sroa.047.061.i, i64 24
  %i.asu = load i32, ptr %i.ast, align 8, !tbaa !334
  %i.asv = sext i32 %i.asu to i64
  %i.asw = load ptr, ptr %2, align 8, !tbaa !50
  %i.asx = getelementptr inbounds nuw [8 x i8], ptr %i.asw, i64 %i.asv
  store ptr %i.ass, ptr %i.asx, align 8, !tbaa !261
  %i.asy = getelementptr inbounds nuw i8, ptr %.sroa.047.061.i, i64 8
  %.sroa.047.0.i = load ptr, ptr %i.asy, align 8, !tbaa !244 ; 2 uses
  %.not51.i108 = icmp eq ptr %.sroa.047.0.i, %i.asq
  br i1 %.not51.i108, label %.lr.ph66.i, label %.lr.ph62.i

._crit_edge67.i:                                  ; preds = %bb.dh
  %i.asz = load ptr, ptr %i.u, align 8, !tbaa !245
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asz, i64 296
  call fastcc void @"_ZN4llvm12simple_ilistINS_17MachineBasicBlockEJEE4sortIZN12_GLOBAL__N_121MachineBlockPlacement16assignBlockOrderERKSt6vectorIPKS1_SaIS8_EEE3$_0EEvT_"(ptr noundef nonnull align 8 dereferenceable(16) %i.ata, ptr nonnull %3)
  %i.atb = load ptr, ptr %i.u, align 8, !tbaa !245
  %i.atc = getelementptr inbounds nuw i8, ptr %i.atb, i64 16
  %i.atd = load ptr, ptr %i.atc, align 8, !tbaa !646, !nonnull !47, !align !187 ; 2 uses
  %i.ate = load ptr, ptr %i.atd, align 8, !tbaa !38
  %i.atf = getelementptr inbounds nuw i8, ptr %i.ate, i64 128
  %i.atg = load ptr, ptr %i.atf, align 8
  %i.ath = call noundef ptr %i.atg(ptr noundef nonnull align 8 dereferenceable(344) %i.atd) #25, !inline_history !528 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ati = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ati, ptr %4, align 8, !tbaa !50
  %i.atj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.atj, align 8, !tbaa !195
  %i.atk = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 4, ptr %i.atk, align 4, !tbaa !196
  %i.atl = load ptr, ptr %i.u, align 8, !tbaa !245 ; 2 uses
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atl, i64 304
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atl, i64 296 ; 2 uses
  %.sroa.039.068.i = load ptr, ptr %i.atm, align 8, !tbaa !244 ; 2 uses
  %.not5369.i = icmp eq ptr %.sroa.039.068.i, %i.atn
  br i1 %.not5369.i, label %_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit.i112, label %.preheader.i

bb.dh:                                            ; preds = %bb.dh, %.lr.ph66.i
  %.sroa.043.064.i = phi ptr [ %.sroa.speculated128, %.lr.ph66.i ], [ %i.att, %bb.dh ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ato = load ptr, ptr %.sroa.043.064.i, align 8, !tbaa !261
  store ptr %i.ato, ptr %i.a, align 8, !tbaa !261
  %i.atp = load i32, ptr %i.asr, align 8, !tbaa !296
  %i.atq = zext i32 %i.atp to i64
  %i.atr = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i110 = extractvalue { ptr, i8 } %i.atr, 0
  %i.ats = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i110, i64 8
  store i64 %i.atq, ptr %i.ats, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.att = getelementptr inbounds nuw i8, ptr %.sroa.043.064.i, i64 8 ; 2 uses
  %.not52.i = icmp eq ptr %i.att, %.sroa.speculated
  br i1 %.not52.i, label %._crit_edge67.i, label %bb.dh

.preheader.i:                                     ; preds = %._crit_edge67.i, %bb.dp
  %.sroa.039.070.i = phi ptr [ %.sroa.039.0.i, %bb.dp ], [ %.sroa.039.068.i, %._crit_edge67.i ] ; 7 uses
  %27 = getelementptr inbounds nuw i8, ptr %.sroa.039.070.i, i64 8 ; 2 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %.sroa.039.070.i, i64 24
  %i.atv = load i32, ptr %i.atu, align 8, !tbaa !334
  %i.atw = sext i32 %i.atv to i64
  %i.atx = load ptr, ptr %2, align 8, !tbaa !50
  %i.aty = getelementptr inbounds nuw [8 x i8], ptr %i.atx, i64 %i.atw
  %i.atz = load ptr, ptr %i.aty, align 8, !tbaa !261 ; 4 uses
  %.not34.i = icmp eq ptr %i.atz, null
  br i1 %.not34.i, label %bb.dn, label %bb.dl

._crit_edge71.i:                                  ; preds = %bb.dp
  %.pre73.i = load ptr, ptr %4, align 8, !tbaa !50 ; 2 uses
  %i.aua = icmp eq ptr %.pre73.i, %i.ati
  br i1 %i.aua, label %_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit.i112, label %bb.di

bb.di:                                            ; preds = %._crit_edge71.i
  call void @free(ptr noundef %.pre73.i) #25
  br label %_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit.i112

_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit.i112: ; preds = %bb.di, %._crit_edge71.i, %._crit_edge67.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.aub = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.auc = load i32, ptr %i.aub, align 4, !tbaa !295 ; 2 uses
  %i.aud = icmp eq i32 %i.auc, 0
  br i1 %i.aud, label %_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEED2Ev.exit.i, label %bb.dj

bb.dj:                                            ; preds = %_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit.i112
  %i.aue = load ptr, ptr %3, align 8, !tbaa !293
  %i.auf = zext i32 %i.auc to i64                 ; 2 uses
  %i.aug = shl nuw nsw i64 %i.auf, 4
  %i.auh = add nuw nsw i64 %i.auf, 31
  %i.aui = lshr i64 %i.auh, 3
  %i.auj = and i64 %i.aui, 1073741820
  %i.auk = add nuw nsw i64 %i.auj, %i.aug
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aue, i64 noundef %i.auk, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEED2Ev.exit.i

_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEED2Ev.exit.i: ; preds = %bb.dj, %_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.aul = load ptr, ptr %2, align 8, !tbaa !50   ; 2 uses
  %i.aum = icmp eq ptr %i.aul, %i.asf
  br i1 %i.aum, label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EED2Ev.exit.i, label %bb.dk

bb.dk:                                            ; preds = %_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEED2Ev.exit.i
  call void @free(ptr noundef %i.aul) #25
  br label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EED2Ev.exit.i: ; preds = %bb.dk, %_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN12_GLOBAL__N_121MachineBlockPlacement16assignBlockOrderERKSt6vectorIPKN4llvm17MachineBasicBlockESaIS5_EE.exit

bb.dl:                                            ; preds = %.preheader.i
  %i.aun = load ptr, ptr %27, align 8, !tbaa !244 ; 2 uses
  %i.auo = getelementptr inbounds nuw i8, ptr %.sroa.039.070.i, i64 32
  %i.aup = load ptr, ptr %i.auo, align 8, !tbaa !335
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aup, i64 296
  %i.aur = icmp ne ptr %i.aun, %i.auq
  %.not35.i = icmp eq ptr %i.aun, %i.atz
  %or.cond.i111 = and i1 %.not35.i, %i.aur
  br i1 %or.cond.i111, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.aus = call ptr @_ZN4llvm17MachineBasicBlock18findBranchDebugLocEv(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.039.070.i) #25
  store ptr %i.aus, ptr %5, align 8
  %i.aut = load ptr, ptr %i.ath, align 8, !tbaa !38
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aut, i64 320
  %i.auv = load ptr, ptr %i.auu, align 8
  %i.auw = call noundef i32 %i.auv(ptr noundef nonnull align 8 dereferenceable(112) %i.ath, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.039.070.i, ptr noundef nonnull %i.atz, ptr noundef null, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null) #25, !inline_history !529 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl, %.preheader.i
  store i32 0, ptr %i.atj, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store ptr null, ptr %i.b, align 8, !tbaa !261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store ptr null, ptr %i.c, align 8, !tbaa !261
  %i.aux = load ptr, ptr %i.ath, align 8, !tbaa !38
  %i.auy = getelementptr inbounds nuw i8, ptr %i.aux, i64 296
  %i.auz = load ptr, ptr %i.auy, align 8
  %i.ava = call noundef zeroext i1 %i.auz(ptr noundef nonnull align 8 dereferenceable(112) %i.ath, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.039.070.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext false) #25, !inline_history !528
  br i1 %i.ava, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @_ZN4llvm17MachineBasicBlock16updateTerminatorEPS0_(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.039.070.i, ptr noundef %i.atz) #25
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %.sroa.039.0.i = load ptr, ptr %27, align 8, !tbaa !244 ; 2 uses
  %.not53.i = icmp eq ptr %.sroa.039.0.i, %i.atn
  br i1 %.not53.i, label %._crit_edge71.i, label %.preheader.i

_ZN12_GLOBAL__N_121MachineBlockPlacement16assignBlockOrderERKSt6vectorIPKN4llvm17MachineBasicBlockESaIS5_EE.exit: ; preds = %bb.dd, %._crit_edge318.i, %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EED2Ev.exit.i
  %.not.i.i.i122.i = icmp eq ptr %i.aqv, null
  br i1 %.not.i.i.i122.i, label %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EED2Ev.exit.i, label %bb.dv

.lr.ph317.i:                                      ; preds = %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE7reserveEm.exit103.i, %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE9push_backERKS3_.exit.i
  %i.avb = phi ptr [ %.sroa.6.1, %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE9push_backERKS3_.exit.i ], [ %.sroa.6.0, %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE7reserveEm.exit103.i ] ; 4 uses
  %.sroa.0190.0316.i = phi ptr [ %i.avy, %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE9push_backERKS3_.exit.i ], [ %i.aak, %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE7reserveEm.exit103.i ] ; 2 uses
  %i.avc = phi ptr [ %i.avx, %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE9push_backERKS3_.exit.i ], [ %.promoted309.i, %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE7reserveEm.exit103.i ] ; 2 uses
  %i.avd = phi ptr [ %i.avw, %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE9push_backERKS3_.exit.i ], [ %.sroa.6.0, %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE7reserveEm.exit103.i ] ; 5 uses
  %i.ave = load i64, ptr %.sroa.0190.0316.i, align 8, !tbaa !57
  %i.avf = getelementptr inbounds nuw [8 x i8], ptr %.lcssa288.i, i64 %i.ave ; 2 uses
  %.not.i120.i = icmp eq ptr %i.avb, %i.avc
  br i1 %.not.i120.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %.lr.ph317.i
  %i.avg = load ptr, ptr %i.avf, align 8, !tbaa !261
  store ptr %i.avg, ptr %i.avb, align 8, !tbaa !261
  br label %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE9push_backERKS3_.exit.i

bb.dr:                                            ; preds = %.lr.ph317.i
  %i.avh = ptrtoint ptr %i.avb to i64
  %i.avi = ptrtoint ptr %i.avd to i64
  %i.avj = sub i64 %i.avh, %i.avi                 ; 6 uses
  %i.avk = icmp eq i64 %i.avj, 9223372036854775800
  br i1 %i.avk, label %bb.ds, label %_ZNKSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ds:                                            ; preds = %bb.dr
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #26
  unreachable

_ZNKSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.dr
  %i.avl = ashr exact i64 %i.avj, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.avl, i64 1)
  %i.avm = add nsw i64 %.sroa.speculated.i.i.i.i, %i.avl ; 2 uses
  %i.avn = icmp ult i64 %i.avm, %i.avl
  %i.avo = call i64 @llvm.umin.i64(i64 %i.avm, i64 1152921504606846975)
  %i.avp = select i1 %i.avn, i64 1152921504606846975, i64 %i.avo ; 3 uses
  %.not.i.i.i121.i = icmp ne i64 %i.avp, 0
  call void @llvm.assume(i1 %.not.i.i.i121.i)
  %i.avq = shl nuw nsw i64 %i.avp, 3
  %i.avr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.avq) #27 ; 4 uses
  %i.avs = getelementptr inbounds i8, ptr %i.avr, i64 %i.avj ; 2 uses
  %i.avt = load ptr, ptr %i.avf, align 8, !tbaa !261
  store ptr %i.avt, ptr %i.avs, align 8, !tbaa !261
  %i.avu = icmp sgt i64 %i.avj, 0
  br i1 %i.avu, label %bb.dt, label %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.dt:                                            ; preds = %_ZNKSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.avr, ptr align 8 %i.avd, i64 %i.avj, i1 false)
  br label %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.dt, %_ZNKSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.not.i17.i.i.i = icmp eq ptr %i.avd, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.du

bb.du:                                            ; preds = %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.avd, i64 noundef %i.avj) #28
  br label %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.du, %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.avv = getelementptr inbounds nuw [8 x i8], ptr %i.avr, i64 %i.avp
  br label %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE9push_backERKS3_.exit.i

_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE9push_backERKS3_.exit.i: ; preds = %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.dq
  %.pn139 = phi ptr [ %i.avs, %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.avb, %bb.dq ]
  %i.avw = phi ptr [ %i.avr, %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.avd, %bb.dq ] ; 2 uses
  %i.avx = phi ptr [ %i.avv, %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.avc, %bb.dq ] ; 2 uses
  %.sroa.6.1 = getelementptr inbounds nuw i8, ptr %.pn139, i64 8 ; 2 uses
  %i.avy = getelementptr inbounds nuw i8, ptr %.sroa.0190.0316.i, i64 8 ; 2 uses
  %.not263.i = icmp eq ptr %i.avy, %i.aam
  br i1 %.not263.i, label %._crit_edge318.loopexit.i, label %.lr.ph317.i

bb.dv:                                            ; preds = %_ZN12_GLOBAL__N_121MachineBlockPlacement16assignBlockOrderERKSt6vectorIPKN4llvm17MachineBasicBlockESaIS5_EE.exit
  %i.avz = ptrtoint ptr %i.aqw to i64
  %i.awa = ptrtoint ptr %i.aqv to i64
  %i.awb = sub i64 %i.avz, %i.awa
  call void @_ZdlPvm(ptr noundef nonnull %i.aqv, i64 noundef %i.awb) #28
  br label %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EED2Ev.exit.i

_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EED2Ev.exit.i: ; preds = %bb.dv, %_ZN12_GLOBAL__N_121MachineBlockPlacement16assignBlockOrderERKSt6vectorIPKN4llvm17MachineBasicBlockESaIS5_EE.exit
  %i.awc = load ptr, ptr %21, align 8, !tbaa !716 ; 3 uses
  %.not.i.i.i123.i = icmp eq ptr %i.awc, null
  br i1 %.not.i.i.i123.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.dw

bb.dw:                                            ; preds = %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EED2Ev.exit.i
  %i.awd = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.awe = load ptr, ptr %i.awd, align 8, !tbaa !718
  %i.awf = ptrtoint ptr %i.awe to i64
  %i.awg = ptrtoint ptr %i.awc to i64
  %i.awh = sub i64 %i.awf, %i.awg
  call void @_ZdlPvm(ptr noundef nonnull %i.awc, i64 noundef %i.awh) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.dw, %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  %i.awi = load ptr, ptr %17, align 8, !tbaa !50  ; 2 uses
  %i.awj = icmp eq ptr %i.awi, %i.xy
  br i1 %i.awj, label %_ZN4llvm11SmallVectorIPKNS_17MachineBasicBlockELj4EED2Ev.exit.i, label %bb.dx

bb.dx:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  call void @free(ptr noundef %i.awi) #25
  br label %_ZN4llvm11SmallVectorIPKNS_17MachineBasicBlockELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorIPKNS_17MachineBasicBlockELj4EED2Ev.exit.i: ; preds = %bb.dx, %_ZNSt6vectorImSaImEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %i.awk = load ptr, ptr %16, align 8, !tbaa !50  ; 2 uses
  %i.awl = icmp eq ptr %i.awk, %i.xv
  br i1 %i.awl, label %_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit.i, label %bb.dy

bb.dy:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_17MachineBasicBlockELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.awk) #25
  br label %_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit.i: ; preds = %bb.dy, %_ZN4llvm11SmallVectorIPKNS_17MachineBasicBlockELj4EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  %i.awm = load ptr, ptr %15, align 8, !tbaa !50  ; 2 uses
  %i.awn = icmp eq ptr %i.awm, %i.xs
  br i1 %i.awn, label %_ZN4llvm11SmallVectorINS_10codelayout9EdgeCountELj0EED2Ev.exit.i, label %bb.dz

bb.dz:                                            ; preds = %_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.awm) #25
  br label %_ZN4llvm11SmallVectorINS_10codelayout9EdgeCountELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_10codelayout9EdgeCountELj0EED2Ev.exit.i: ; preds = %bb.dz, %_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.awo = load ptr, ptr %14, align 8, !tbaa !50  ; 2 uses
  %i.awp = icmp eq ptr %i.awo, %i.xr
  br i1 %i.awp, label %_ZN4llvm11SmallVectorImLj0EED2Ev.exit.i, label %bb.ea

bb.ea:                                            ; preds = %_ZN4llvm11SmallVectorINS_10codelayout9EdgeCountELj0EED2Ev.exit.i
  call void @free(ptr noundef %i.awo) #25
  br label %_ZN4llvm11SmallVectorImLj0EED2Ev.exit.i

_ZN4llvm11SmallVectorImLj0EED2Ev.exit.i:          ; preds = %bb.ea, %_ZN4llvm11SmallVectorINS_10codelayout9EdgeCountELj0EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.awq = load ptr, ptr %13, align 8, !tbaa !50  ; 2 uses
  %i.awr = icmp eq ptr %i.awq, %i.wv
  br i1 %i.awr, label %_ZN4llvm11SmallVectorImLj0EED2Ev.exit124.i, label %bb.eb

bb.eb:                                            ; preds = %_ZN4llvm11SmallVectorImLj0EED2Ev.exit.i
  call void @free(ptr noundef %i.awq) #25
  br label %_ZN4llvm11SmallVectorImLj0EED2Ev.exit124.i

_ZN4llvm11SmallVectorImLj0EED2Ev.exit124.i:       ; preds = %bb.eb, %_ZN4llvm11SmallVectorImLj0EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %.not.i.i.i125.i = icmp eq ptr %.lcssa288.i, null
  br i1 %.not.i.i.i125.i, label %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EED2Ev.exit126.i, label %bb.ec

bb.ec:                                            ; preds = %_ZN4llvm11SmallVectorImLj0EED2Ev.exit124.i
  %i.aws = ptrtoint ptr %.lcssa285.i to i64
  %i.awt = ptrtoint ptr %.lcssa288.i to i64
  %i.awu = sub i64 %i.aws, %i.awt
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa288.i, i64 noundef %i.awu) #28
  br label %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EED2Ev.exit126.i

_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EED2Ev.exit126.i: ; preds = %bb.ec, %_ZN4llvm11SmallVectorImLj0EED2Ev.exit124.i
  %i.awv = getelementptr inbounds nuw i8, ptr %12, i64 20
  %i.aww = load i32, ptr %i.awv, align 4, !tbaa !295 ; 2 uses
  %i.awx = icmp eq i32 %i.aww, 0
  br i1 %i.awx, label %_ZN12_GLOBAL__N_121MachineBlockPlacement11applyExtTspEb.exit, label %bb.ed

bb.ed:                                            ; preds = %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EED2Ev.exit126.i
  %i.awy = load ptr, ptr %12, align 8, !tbaa !293
  %i.awz = zext i32 %i.aww to i64                 ; 2 uses
  %i.axa = shl nuw nsw i64 %i.awz, 4
  %i.axb = add nuw nsw i64 %i.awz, 31
  %i.axc = lshr i64 %i.axb, 3
  %i.axd = and i64 %i.axc, 1073741820
  %i.axe = add nuw nsw i64 %i.axd, %i.axa
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.awy, i64 noundef %i.axe, i64 noundef 8) #25
  br label %_ZN12_GLOBAL__N_121MachineBlockPlacement11applyExtTspEb.exit

_ZN12_GLOBAL__N_121MachineBlockPlacement11applyExtTspEb.exit: ; preds = %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EED2Ev.exit126.i, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  %i.axf = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 3 uses
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEPN12_GLOBAL__N_110BlockChainENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E5clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.axf)
  %i.axg = getelementptr inbounds nuw i8, ptr %0, i64 288
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_121MachineBlockPlacement21BlockAndTailDupResultENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E5clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.axg)
  %i.axh = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  call fastcc void @_ZN4llvm24SpecificBumpPtrAllocatorIN12_GLOBAL__N_110BlockChainEE10DestroyAllEv(ptr noundef nonnull align 8 dereferenceable(80) %i.axh)
  %i.axi = load ptr, ptr %i.u, align 8, !tbaa !245
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axi, i64 304
  %i.axk = load ptr, ptr %i.axj, align 8, !tbaa !244 ; 3 uses
  %i.axl = load ptr, ptr %i.axh, align 8, !tbaa !336 ; 2 uses
  %i.axm = ptrtoint ptr %i.axl to i64
  %i.axn = add i64 %i.axm, 64                     ; 2 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.axp = load i64, ptr %i.axo, align 8, !tbaa !337
  %i.axq = icmp ult i64 %i.axn, %i.axp
  br i1 %i.axq, label %bb.ee, label %bb.ef, !prof !191

bb.ee:                                            ; preds = %_ZN12_GLOBAL__N_121MachineBlockPlacement11applyExtTspEb.exit
  %i.axr = inttoptr i64 %i.axn to ptr
  store ptr %i.axr, ptr %i.axh, align 8, !tbaa !336
  br label %_ZN4llvm24SpecificBumpPtrAllocatorIN12_GLOBAL__N_110BlockChainEE8AllocateEm.exit.i

end_hunk_0

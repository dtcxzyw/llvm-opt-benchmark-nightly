Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstructionSelect?download=true
inline.NumInlined: 992
inline.NumDeleted: 640
begin_hunk_0_@_ZN4llvm17InstructionSelect21selectMachineFunctionERNS_15MachineFunctionE:_ZN4llvm20GISelObserverWrapper11addObserverEPNS_19GISelChangeObserverE.exit
  br i1 %.not.i.i.i94, label %_ZN4llvm17MachineBasicBlock5clearEv.exit, label %.lr.ph.i.i.i93, !llvm.loop !449

_ZNK4llvm6detail12DenseSetImplIPNS_17MachineBasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE8containsEPKS2_.exit: ; preds = %.lr.ph.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eu) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i96 = load i64, ptr %i.eu, align 8
  %i.gn = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i96, 4
  %.not.i.i.i.i97 = icmp eq i64 %i.gn, 0
  br i1 %.not.i.i.i.i97, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i99, label %_ZN4llvm17MachineBasicBlock6rbeginEv.exit105

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i99: ; preds = %_ZNK4llvm6detail12DenseSetImplIPNS_17MachineBasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE8containsEPKS2_.exit
  %i.go = getelementptr inbounds nuw i8, ptr %i.eu, i64 44
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !304
  %i.gq = and i32 %i.gp, 4
  %.not45.i.i.i.i100 = icmp eq i32 %i.gq, 0
  br i1 %.not45.i.i.i.i100, label %_ZN4llvm17MachineBasicBlock6rbeginEv.exit105, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i101

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i101: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i99, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i101
  %.sroa.0.06.i.i.i.i102 = phi ptr [ %i.gs, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i101 ], [ %i.eu, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i99 ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i103 = load i64, ptr %.sroa.0.06.i.i.i.i102, align 8
  %i.gr = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i103, -8
  %i.gs = inttoptr i64 %i.gr to ptr               ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 44
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !304
  %i.gv = and i32 %i.gu, 4
  %.not4.i.i.i.i104 = icmp eq i32 %i.gv, 0
  br i1 %.not4.i.i.i.i104, label %_ZN4llvm17MachineBasicBlock6rbeginEv.exit105, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i101, !llvm.loop !0

_ZN4llvm17MachineBasicBlock6rbeginEv.exit105:     ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i101, %_ZNK4llvm6detail12DenseSetImplIPNS_17MachineBasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE8containsEPKS2_.exit, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i99
  %.sroa.0.1.i.i.i.i98 = phi ptr [ %i.eu, %_ZNK4llvm6detail12DenseSetImplIPNS_17MachineBasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE8containsEPKS2_.exit ], [ %i.eu, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i99 ], [ %i.gs, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i101 ] ; 2 uses
  %.not175191 = icmp eq ptr %.sroa.0.1.i.i.i.i98, %i.es
  br i1 %.not175191, label %_ZN4llvm17MachineBasicBlock5clearEv.exit, label %.lr.ph193

.lr.ph193:                                        ; preds = %_ZN4llvm17MachineBasicBlock6rbeginEv.exit105, %bb.v
  %.sroa.0148.0192 = phi ptr [ %.sroa.0.1.i.i.i.i110, %bb.v ], [ %.sroa.0.1.i.i.i.i98, %_ZN4llvm17MachineBasicBlock6rbeginEv.exit105 ] ; 4 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i107 = load i64, ptr %.sroa.0148.0192, align 8
  %i.gw = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i107, -8
  %i.gx = inttoptr i64 %i.gw to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gx) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i108 = load i64, ptr %i.gx, align 8
  %i.gy = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i108, 4
  %.not.i.i.i.i109 = icmp eq i64 %i.gy, 0
  br i1 %.not.i.i.i.i109, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i111, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit117

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i111: ; preds = %.lr.ph193
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 44
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !304
  %i.hb = and i32 %i.ha, 4
  %.not45.i.i.i.i112 = icmp eq i32 %i.hb, 0
  br i1 %.not45.i.i.i.i112, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit117, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i113

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i113: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i111, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i113
  %.sroa.0.06.i.i.i.i114 = phi ptr [ %i.hd, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i113 ], [ %i.gx, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i111 ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i115 = load i64, ptr %.sroa.0.06.i.i.i.i114, align 8
  %i.hc = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i115, -8
  %i.hd = inttoptr i64 %i.hc to ptr               ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 44
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !304
  %i.hg = and i32 %i.hf, 4
  %.not4.i.i.i.i116 = icmp eq i32 %i.hg, 0
  br i1 %.not4.i.i.i.i116, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit117, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i113, !llvm.loop !0

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit117: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i113, %.lr.ph193, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i111
  %.sroa.0.1.i.i.i.i110 = phi ptr [ %i.gx, %.lr.ph193 ], [ %i.gx, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i111 ], [ %i.hd, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i113 ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0148.0192, i64 52
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !306
  %.not76 = icmp eq i32 %i.hi, 20
  br i1 %.not76, label %bb.r, label %bb.v, !llvm.loop !450

bb.r:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit117
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0148.0192, i64 32
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !307 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 36
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !308 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !308 ; 3 uses
  %i.hp = icmp slt i32 %i.hm, 0
  br i1 %i.hp, label %bb.s, label %bb.v, !llvm.loop !450

bb.s:                                             ; preds = %bb.r
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  %i.hr = load i32, ptr %i.hq, align 8
  %i.hs = icmp slt i32 %i.ho, 0
  %i.ht = and i32 %i.hr, 1048320
  %i.hu = icmp eq i32 %i.ht, 0
  %or.cond.not = and i1 %i.hs, %i.hu
  br i1 %or.cond.not, label %bb.t, label %bb.v, !llvm.loop !450

bb.t:                                             ; preds = %bb.s
  %i.hv = and i32 %i.hm, 2147483647
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = load ptr, ptr %i.eo, align 8, !tbaa !12 ; 2 uses
  %i.hy = getelementptr inbounds nuw [16 x i8], ptr %i.hx, i64 %i.hw
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.hy, align 8
  %i.hz = and i32 %i.ho, 2147483647
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [16 x i8], ptr %i.hx, i64 %i.ia
  %.0.copyload.i.i.i.i.i.i118 = load i64, ptr %i.ib, align 8
  %i.ic = xor i64 %.0.copyload.i.i.i.i.i.i118, %.0.copyload.i.i.i.i.i.i
  %i.id = and i64 %i.ic, -5
  %i.ie = icmp eq i64 %i.id, 0
  br i1 %i.ie, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @_ZN4llvm19MachineRegisterInfo14replaceRegWithENS_8RegisterES1_(ptr noundef nonnull align 8 dereferenceable(520) %i.q, i32 %i.ho, i32 %i.hm) #21
  %i.if = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0148.0192) #21 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.r, %bb.u, %bb.t, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit117
  %.not175 = icmp eq ptr %.sroa.0.1.i.i.i.i110, %i.es
  br i1 %.not175, label %_ZN4llvm17MachineBasicBlock5clearEv.exit, label %.lr.ph193

_ZN4llvm17MachineBasicBlock5clearEv.exit:         ; preds = %bb.v, %.lr.ph.i.i.i93, %_ZN4llvm17MachineBasicBlock6rbeginEv.exit105, %.loopexit, %bb.n
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0151.0196, i64 8
  %.sroa.0151.0 = load ptr, ptr %i.ig, align 8, !tbaa !467 ; 2 uses
  %.not170 = icmp eq ptr %.sroa.0151.0, %i.el
  br i1 %.not170, label %._crit_edge, label %bb.n

bb.w:                                             ; preds = %_ZN4llvm12DebugCounter13shouldExecuteERNS0_11CounterInfoE.exit
  %i.ih = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4dbgsEv() #21 ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !477
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 32 ; 3 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !478 ; 2 uses
  %i.im = ptrtoint ptr %i.ij to i64
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = sub i64 %i.im, %i.in
  %i.ip = icmp ult i64 %i.io, 26
  br i1 %i.ip, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.iq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ih, ptr noundef nonnull @.str.5, i64 noundef 26) #21
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.il, ptr noundef nonnull align 1 dereferenceable(26) @.str.5, i64 26, i1 false)
  %i.ir = load ptr, ptr %i.ik, align 8, !tbaa !478
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 26
  store ptr %i.is, ptr %i.ik, align 8, !tbaa !478
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.x, %bb.y
  %.0.i.i119 = phi ptr [ %i.iq, %bb.x ], [ %i.ih, %bb.y ] ; 5 uses
  %i.it = call { ptr, i64 } @_ZNK4llvm15MachineFunction7getNameEv(ptr noundef nonnull align 8 dereferenceable(1065) %1) #21 ; 2 uses
  %i.iu = extractvalue { ptr, i64 } %i.it, 0      ; 2 uses
  %i.iv = extractvalue { ptr, i64 } %i.it, 1      ; 5 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.0.i.i119, i64 24
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !477
  %i.iy = getelementptr inbounds nuw i8, ptr %.0.i.i119, i64 32 ; 3 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !478 ; 3 uses
  %i.ja = ptrtoint ptr %i.ix to i64
  %i.jb = ptrtoint ptr %i.iz to i64
  %i.jc = sub i64 %i.ja, %i.jb
  %i.jd = icmp ugt i64 %i.iv, %i.jc
  br i1 %i.jd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.je = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i119, ptr noundef %i.iu, i64 noundef %i.iv) #21 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.je, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !478
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.aa:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %.not.i = icmp eq i64 %i.iv, 0
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iz, ptr align 1 %i.iu, i64 %i.iv, i1 false)
  %i.jf = load ptr, ptr %i.iy, align 8, !tbaa !478
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.iv ; 2 uses
  store ptr %i.jg, ptr %i.iy, align 8, !tbaa !478
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.z, %bb.aa, %bb.ab
  %i.jh = phi ptr [ %.pre, %bb.z ], [ %i.jg, %bb.ab ], [ %i.iz, %bb.aa ] ; 2 uses
  %.0.i120 = phi ptr [ %i.je, %bb.z ], [ %.0.i.i119, %bb.ab ], [ %.0.i.i119, %bb.aa ] ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.0.i120, i64 24
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !477
  %i.jk = icmp eq ptr %i.jj, %i.jh
  br i1 %i.jk, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.jl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i120, ptr noundef nonnull @.str.6, i64 noundef 1) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit123

bb.ad:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.jm = getelementptr inbounds nuw i8, ptr %.0.i120, i64 32 ; 2 uses
  store i8 10, ptr %i.jh, align 1
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !478
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 1
  store ptr %i.jo, ptr %i.jm, align 8, !tbaa !478
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit123

_ZN4llvm11raw_ostreamlsEPKc.exit123:              ; preds = %bb.ac, %bb.ad
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !18
  %i.jr = or i64 %i.jq, 16
  store i64 %i.jr, ptr %i.jp, align 8, !tbaa !18
  br label %bb.ao

_ZN4llvm12DebugCounter13shouldExecuteERNS0_11CounterInfoE.exit.thread: ; preds = %._crit_edge, %_ZN4llvm12DebugCounter13shouldExecuteERNS0_11CounterInfoE.exit
  %.sroa.0138.0203 = load ptr, ptr %i.aq, align 8, !tbaa !467 ; 2 uses
  %.not171204 = icmp eq ptr %.sroa.0138.0203, %i.el
  br i1 %.not171204, label %._crit_edge207, label %.lr.ph206

.lr.ph206:                                        ; preds = %_ZN4llvm12DebugCounter13shouldExecuteERNS0_11CounterInfoE.exit.thread
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !479
  %9 = getelementptr inbounds nuw i8, ptr %i.jt, i64 66 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 318 ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph206, %.critedge79
  %.sroa.0138.0205 = phi ptr [ %.sroa.0138.0203, %.lr.ph206 ], [ %.sroa.0138.0, %.critedge79 ] ; 3 uses
  %i.jv = load i8, ptr %9, align 2, !tbaa !499, !range !268, !noundef !156
  %i.jw = trunc nuw i8 %i.jv to i1
  br i1 %i.jw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.jx = load i8, ptr %i.ju, align 2, !tbaa !500, !range !268, !noundef !156
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %._crit_edge207, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.0138.0205, i64 56
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.0138.0205, i64 48 ; 2 uses
  %.sroa.0135.0198 = load ptr, ptr %i.jz, align 8, !tbaa !473 ; 2 uses
  %.not172199 = icmp eq ptr %.sroa.0135.0198, %i.ka
  br i1 %.not172199, label %.critedge79, label %.lr.ph202

.critedge79:                                      ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit, %bb.ag
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.0138.0205, i64 8
  %.sroa.0138.0 = load ptr, ptr %i.kb, align 8, !tbaa !467 ; 2 uses
  %.not171 = icmp eq ptr %.sroa.0138.0, %i.el
  br i1 %.not171, label %._crit_edge207, label %bb.ae

.lr.ph202:                                        ; preds = %bb.ag, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit
  %.sroa.0135.0200 = phi ptr [ %.sroa.0135.0, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit ], [ %.sroa.0135.0198, %bb.ag ] ; 12 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.0135.0200, i64 44 ; 3 uses
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !304 ; 3 uses
  %i.ke = and i32 %i.kd, 12                       ; 2 uses
  %i.kf = icmp eq i32 %i.ke, 0
  %i.kg = and i32 %i.kd, 4
  %i.kh = icmp ne i32 %i.kg, 0
  %or.cond.i.i = or i1 %i.kf, %i.kh
  br i1 %or.cond.i.i, label %.split167, label %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit

.split167:                                        ; preds = %.lr.ph202
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.0135.0200, i64 16
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !501
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !504
  %i.km = and i64 %i.kl, 128
  %.not173 = icmp eq i64 %i.km, 0
  br i1 %.not173, label %bb.ai, label %bb.ah

_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit: ; preds = %.lr.ph202
  %i.kn = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0135.0200, i64 noundef 128, i32 noundef 1) #21
  br i1 %i.kn, label %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit._crit_edge, label %bb.ai

_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit._crit_edge: ; preds = %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit
  %.pre216 = load i32, ptr %i.kc, align 4, !tbaa !304 ; 2 uses
  %.pre217 = and i32 %.pre216, 12
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit._crit_edge, %.split167
  %.pre-phi = phi i32 [ %.pre217, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit._crit_edge ], [ %i.ke, %.split167 ]
  %i.ko = phi i32 [ %.pre216, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit._crit_edge ], [ %i.kd, %.split167 ]
  %i.kp = icmp eq i32 %.pre-phi, 0
  %i.kq = and i32 %i.ko, 4
  %i.kr = icmp ne i32 %i.kq, 0
  %or.cond.i.i125 = or i1 %i.kp, %i.kr
  br i1 %or.cond.i.i125, label %.split168, label %_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit

.split168:                                        ; preds = %bb.ah
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.0135.0200, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !501
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !504
  %i.kw = and i64 %i.kv, 32
  %.not174 = icmp eq i64 %i.kw, 0
  br i1 %.not174, label %bb.aj, label %bb.ai

_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit: ; preds = %bb.ah
  %i.kx = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0135.0200, i64 noundef 32, i32 noundef 1) #21
  br i1 %i.kx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.split168, %.split167, %_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit
  %i.ky = call noundef zeroext i1 @_ZNK4llvm12MachineInstr24isStackAligningInlineAsmEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0135.0200) #21
  br i1 %i.ky, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.split168, %bb.ai, %_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit
  store i8 1, ptr %9, align 2, !tbaa !499
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.0135.0200, i64 52
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !306
  %i.lb = add i32 %i.la, -1
  %spec.select.i = icmp ult i32 %i.lb, 2
  br i1 %spec.select.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i8 1, ptr %i.ju, align 2, !tbaa !500
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0135.0200) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i128 = load i64, ptr %.sroa.0135.0200, align 8
  %i.lc = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i128, 4
  %.not.i.i.i129 = icmp eq i64 %i.lc, 0
  br i1 %.not.i.i.i129, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i: ; preds = %bb.am
  %i.ld = load i32, ptr %i.kc, align 4, !tbaa !304
  %i.le = and i32 %i.ld, 8
  %.not34.i.i.i = icmp eq i32 %i.le, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.lg, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i ], [ %.sroa.0135.0200, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i ]
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !473 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 44
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !304
  %i.lj = and i32 %i.li, 8
  %.not3.i.i.i = icmp eq i32 %i.lj, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i, !llvm.loop !451

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i, %bb.am, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.0135.0200, %bb.am ], [ %.sroa.0135.0200, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i ], [ %i.lg, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i ]
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %.sroa.0135.0 = load ptr, ptr %i.lk, align 8, !tbaa !473 ; 2 uses
  %.not172 = icmp eq ptr %.sroa.0135.0, %i.ka
  br i1 %.not172, label %.critedge79, label %.lr.ph202

._crit_edge207:                                   ; preds = %.critedge79, %bb.af, %_ZN4llvm12DebugCounter13shouldExecuteERNS0_11CounterInfoE.exit.thread
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !155, !nonnull !156, !align !157 ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !26
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 144
  %i.lp = load ptr, ptr %i.lo, align 8
  %i.lq = call noundef ptr %i.lp(ptr noundef nonnull align 8 dereferenceable(344) %i.lm) #21 ; 3 uses
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !26
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 1816
  %i.lt = load ptr, ptr %i.ls, align 8
  call void %i.lt(ptr noundef nonnull align 8 dereferenceable(518435) %i.lq, ptr noundef nonnull align 8 dereferenceable(1065) %1) #21
  %i.lu = load ptr, ptr @_ZL14CoveragePrefixB5cxx11, align 8, !tbaa !505
  %i.lv = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CoveragePrefixB5cxx11, i64 8), align 8, !tbaa !327
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !530, !nonnull !156, !align !157
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !531, !nonnull !156, !align !157
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 32
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !533 ; 3 uses
  %.not.i130 = icmp eq ptr %i.mb, null
  br i1 %.not.i130, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.an

bb.an:                                            ; preds = %._crit_edge207
  %i.mc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.mb) #21
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %._crit_edge207, %bb.an
  %.sroa.0.0.i131 = phi i64 [ %i.mc, %bb.an ], [ 0, %._crit_edge207 ]
  %i.md = call noundef zeroext i1 @_ZNK4llvm15CodeGenCoverage4emitENS_9StringRefES1_(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr %i.lu, i64 %i.lv, ptr %i.mb, i64 %.sroa.0.0.i131) #21 ; 0 uses
  call void @_ZN4llvm19MachineRegisterInfo17clearVirtRegTypesEv(ptr noundef nonnull align 8 dereferenceable(520) %i.q) #21
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm20GISelObserverWrapperD2Ev.exit, %_ZN4llvm9StringRefC2EPKc.exit, %_ZN4llvm11raw_ostreamlsEPKc.exit123
  %.5 = phi i1 [ true, %_ZN4llvm9StringRefC2EPKc.exit ], [ false, %_ZN4llvm11raw_ostreamlsEPKc.exit123 ], [ false, %_ZN4llvm20GISelObserverWrapperD2Ev.exit ]
  %i.me = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !323 ; 2 uses
  %i.mg = icmp eq i32 %i.mf, 0
  br i1 %i.mg, label %_ZN4llvm6detail12DenseSetImplIPNS_17MachineBasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.mh = load ptr, ptr %4, align 8, !tbaa !321
  %i.mi = zext i32 %i.mf to i64                   ; 2 uses
  %i.mj = shl nuw nsw i64 %i.mi, 3
  %i.mk = add nuw nsw i64 %i.mi, 31
  %i.ml = lshr i64 %i.mk, 3
  %i.mm = and i64 %i.ml, 1073741820
  %i.mn = add nuw nsw i64 %i.mm, %i.mj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.mh, i64 noundef %i.mn, i64 noundef 8) #21
  br label %_ZN4llvm6detail12DenseSetImplIPNS_17MachineBasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplIPNS_17MachineBasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.mo = load ptr, ptr %2, align 8, !tbaa !12    ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.mq = icmp eq ptr %i.mo, %i.mp
  br i1 %i.mq, label %_ZN4llvm15CodeGenCoverageD2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_17MachineBasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit
  call void @free(ptr noundef %i.mo) #21
  br label %_ZN4llvm15CodeGenCoverageD2Ev.exit

_ZN4llvm15CodeGenCoverageD2Ev.exit:               ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_17MachineBasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret i1 %.5
}

declare void @_ZN4llvm15CodeGenCoverageC1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #5

declare void @_ZN4llvm21RAIIDelegateInstallerC1ERNS_15MachineFunctionEPNS1_8DelegateE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm17InstructionSelect11selectInstrERNS_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !158
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !305
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !279  ; 6 uses
  %i.g = tail call noundef zeroext i1 @_ZN4llvm15isTriviallyDeadERKNS_12MachineInstrERKNS_19MachineRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(520) %i.f) #21
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm16salvageDebugInfoERKNS_19MachineRegisterInfoERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(520) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %1) #21
  %i.h = tail call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #21 ; 0 uses
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.j = load i32, ptr %i.i, align 4, !tbaa !306
  switch i32 %i.j, label %bb.j [
    i32 90, label %bb.d
    i32 54, label %bb.d
    i32 53, label %bb.d
    i32 52, label %bb.d
    i32 138, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !307, !noalias !536 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !308, !noalias !536 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !308, !noalias !536 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.r = and i32 %i.n, 2147483647
  %i.s = zext nneg i32 %i.r to i64
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !12   ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.s
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.u, align 8 ; 2 uses
  %i.v = and i64 %.sroa.0.0.copyload.i.i.i.i, 4
  %i.w = icmp eq i64 %i.v, 0
  %i.x = and i64 %.sroa.0.0.copyload.i.i.i.i, -5  ; 2 uses
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %i.z = and i32 %i.p, 2147483647
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.aa
  %.sroa.0.0.copyload.i.i.i.i40 = load i64, ptr %i.ab, align 8 ; 2 uses
  %i.ac = and i64 %.sroa.0.0.copyload.i.i.i.i40, 4
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = and i64 %.sroa.0.0.copyload.i.i.i.i40, -5
  %i.af = icmp ne i64 %i.x, 0
  %i.ag = and i1 %i.w, %i.af                      ; 2 uses
  %i.ah = icmp ne i64 %i.ae, 0
  %i.ai = and i1 %i.ad, %i.ah
  %or.cond = and i1 %i.ag, %i.ai
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = tail call noundef ptr @_ZN4llvm19MachineRegisterInfo17constrainRegClassENS_8RegisterEPKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(520) %i.f, i32 %i.p, ptr noundef nonnull %i.y, i32 noundef 0) #21 ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4llvm19MachineRegisterInfo11setRegClassENS_8RegisterEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(520) %i.f, i32 %i.p, ptr noundef nonnull %i.y) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ak = tail call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #21 ; 0 uses
  tail call void @_ZN4llvm19MachineRegisterInfo14replaceRegWithENS_8RegisterES1_(ptr noundef nonnull align 8 dereferenceable(520) %i.f, i32 %i.n, i32 %i.p) #21
  br label %bb.k

bb.i:                                             ; preds = %bb.c
  %i.al = tail call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #21 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.c
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !158 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !26
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(72) %i.am, ptr noundef nonnull align 8 dereferenceable(80) %1) #21
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ true, %bb.h ], [ true, %bb.i ], [ %i.aq, %bb.j ]
  ret i1 %.0
}

declare void @_ZN4llvm18reportGISelFailureERNS_15MachineFunctionERNS_32MachineOptimizationRemarkEmitterEPKcNS_9StringRefERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr, i64, ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

end_hunk_0
